# AGENTS.md

## 项目概述

易选好寓（Lease Platform）—— 面向长租公寓业务的前后端分离解决方案，提供租客端（web-app）与管理端（web-admin）两套后端服务。

## 常用命令

```bash
# 构建整个项目（首次或依赖变更后必须执行）
mvn clean install

# 启动租客端服务（端口 8082）
mvn spring-boot:run -pl web/web-app -am

# 启动管理端服务（端口 8081）
mvn spring-boot:run -pl web/web-admin -am

# 打包可执行 JAR
mvn package
java -jar web/web-app/target/web-app-*.jar
java -jar web/web-admin/target/web-admin-*.jar

# 运行单个模块的测试
mvn test -pl web/web-app
mvn test -pl web/web-admin
mvn test -pl common
mvn test -pl model

# 运行单个测试类
mvn test -pl web/web-app -Dtest=SomeTestClass

# 跳过测试构建
mvn clean install -DskipTests
```

## 技术栈与版本

| 组件 | 版本 |
|------|------|
| JDK | 17 |
| Spring Boot | 3.3.8 |
| MyBatis-Plus | 3.5.6 |
| Knife4j (OpenAPI 3) | 4.1.0 |
| JJWT | 0.11.2 |
| MinIO SDK | 8.2.0 |
| Spring AI (DeepSeek) | 1.0.0-M5 |
| 阿里云短信 SDK | 2.0.23 |
| EasyCaptcha | 1.6.2 |

## 模块架构

```
lease (父工程, pom packaging)
├── common        —— 公共组件：异常处理、Result封装、Redis/MinIO/SMS配置、JWT工具、验证码工具
├── model         —— 领域模型：entity（实体）、enums（枚举）、dto、vo
└── web           —— 业务模块聚合 (pom packaging)
    ├── web-admin —— 管理端后端：公寓/房源维护、租约审核、账单管理、定时任务
    └── web-app   —— 租客端后端：登录认证、房源浏览、预约看房、合同管理、AI咨询
```

**依赖关系**：`web-admin` / `web-app` → `common` + `model` → Spring Boot Parent

## 包结构约定

- 基础包名：`com.atguigu.lease`
- 实体类：`com.atguigu.lease.model.entity`
- 枚举类：`com.atguigu.lease.model.enums`（实现 `BaseEnum` 接口，使用 `@EnumValue` 注解标记数据库存储值）
- 登录用户：`com.atguigu.lease.common.login.LoginUser` / `LoginUserHolder`（基于 ThreadLocal）
- 统一返回：`com.atguigu.lease.common.result.Result` + `ResultCodeEnum`
- 自定义异常：`com.atguigu.lease.common.exception.LeaseException`，由 `GlobalExceptionHandler` 统一处理

## 配置文件

- 租客端：`web/web-app/src/main/resources/application.yml`（端口 8082）
- 管理端：`web/web-admin/src/main/resources/application.yml`（端口 8081）
- 数据库初始化脚本：项目根目录 `lease.sql`

两个服务共享同一 MySQL 数据库（`lease`）、Redis 实例和 MinIO bucket。

## 关键设计要点

- **ORM 层**：使用 MyBatis-Plus，实体继承 `BaseEntity`（含 id、create_time、update_time、is_deleted），自动填充由 `MybatisMetaObjectHandler` 处理，逻辑删除字段为 `is_deleted`。
- **认证**：管理端使用账号密码 + 图形验证码登录；租客端使用手机号 + 短信验证码登录。均通过 JWT Token 鉴权，Token 存放在 Redis 中。
- **AI 集成**：通过 Spring AI OpenAI 协议对接 DeepSeek（`deepseek-chat` 模型），仅在 web-app 中使用。
- **接口文档**：启动后访问 `http://localhost:<port>/doc.html` 查看 Knife4j 文档。
- **枚举处理**：MyBatis-Plus 通过 `default-enum-type-handler` 配置自动转换，枚举类使用 `@EnumValue` 标注存储值字段。

## 编码规范

- 新增模块或接口时，严格遵循现有 CRUD 编码风格，优先使用 MyBatis-Plus 的 `BaseMapper` / `IService` / `LambdaQueryWrapper`。
- 枚举值涉及多个状态/类型/动作时，统一封装为枚举类，使用 `switch case` 分支处理而非循环硬编码。
- Service 层优先复用已有方法，抽取公共方法的阈值为复用次数 >= 2。
- SQL 变更需同步更新实体类、DTO、VO 及各层代码。
- Mapper XML 中的 SQL 语句需保持格式化美化。
