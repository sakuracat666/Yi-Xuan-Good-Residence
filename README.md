# 易选好寓（Lease Platform）

面向长租公寓业务的前后端分离解决方案，基于 **Spring Boot 3 + Vue** 构建。项目提供租客端（App Web）与管理端（Admin Web）两套应用，实现房源展示、预约签约、账单支付及后台运营管理。

## 目录
- [项目特点](#项目特点)
- [软件架构](#软件架构)
- [模块说明](#模块说明)
- [快速开始](#快速开始)
- [安装与部署](#安装与部署)
- [使用说明](#使用说明)
- [开发 & 调试指南](#开发--调试指南)
- [常见问题](#常见问题)
- [更多文档](#更多文档)
- [参与贡献](#参与贡献)
- [许可证](#许可证)

## 项目特点
- 🌐 **前后端分离**：租客端与管理端独立构建，灵活扩展。
- 🧩 **多模块架构**：`common` 公共能力、`model` 领域模型、`web` 业务服务清晰拆分。
- 📦 **业务场景丰富**：房源管理、租约流程、账单管理、AI 咨询、对象存储上传等场景覆盖。
- ☁️ **云原生准备**：支持 MinIO、Redis、阿里云短信、Spring AI DeepSeek 等外部组件集成。
- 🧪 **可测试性**：预留单元、集成、性能测试策略，配套 Knife4j/OpenAPI 接口文档。

## 软件架构
```mermaid
graph LR
    subgraph Frontend
        A[租客端 App Web (Vue)]
        B[管理端 Admin Web (Vue)]
    end

    subgraph Backend
        C[web-app 模块]
        D[web-admin 模块]
        E[common 模块]
        F[model 模块]
    end

    A -->|REST / JWT| C
    B -->|REST / JWT| D
    C --> F
    D --> F
    C --> E
    D --> E

    subgraph Infrastructure
        G[(MySQL)]
        H[(Redis)]
        I[(MinIO)]
        J[(阿里云短信)]
        K[(DeepSeek / Spring AI)]
    end

    C --> G
    C --> H
    C --> I
    C --> J
    C --> K
    D --> G
    D --> H
    D --> I
```

### 技术栈
- **后端**：Spring Boot 3.3.8、Spring Web、Spring Data Redis、Spring AI、MyBatis-Plus 3.5.6
- **数据库**：MySQL 8.x
- **缓存**：Redis 6.x
- **对象存储**：MinIO 8.x（S3 兼容）
- **消息 & 通知**：阿里云短信（验证码）
- **AI 能力**：DeepSeek（OpenAI 协议）
- **构建工具**：Maven（多模块）、JDK 17

## 模块说明
| 模块 | 说明 |
| ---- | ---- |
| `pom.xml` | 父工程，统一依赖与插件管理，聚合子模块。 |
| `common` | 公共组件：异常、返回体、Redis/MinIO/SMS 封装、工具类等。 |
| `model` | 实体与枚举定义，供业务模块共享。 |
| `web` | 业务模块聚合（`web-app`、`web-admin`），分别构建租客端与管理端服务。 |
| `web/web-app` | 租客端后端服务：登录、房源、预约、合同、AI 咨询等接口。 |
| `web/web-admin` | 管理端后端服务：房源/公寓维护、租约审核、账单管理、定时任务等。 |

## 快速开始
### 环境准备
- JDK 17+
- Maven 3.9+
- MySQL 8.x（创建 `lease` 数据库并导入初始化脚本/数据）
- Redis 6.x
- MinIO 服务器（可选：S3 兼容存储）
- 阿里云短信、DeepSeek API Key（如使用相关能力）

### 代码获取
```bash
git clone <repo-url>
cd lease
```

### 构建
```bash
mvn clean install
```
> 首次构建会在父工程下载依赖，并构建 `common`、`model`、`web` 等子模块。

## 安装与部署
### 1. 配置修改
根据部署环境调整以下文件：
- `web/web-app/src/main/resources/application.yml`
- `web/web-admin/src/main/resources/application.yml`

建议通过 **环境变量 / 配置中心** 注入敏感信息（数据库账号、Redis、MinIO、API Key 等）。

### 2. 数据库初始化
1. 创建数据库 `lease`。
2. 导入结构与初始数据脚本（位于 `docs/sql`，若暂无请根据实体自行生成）。

### 3. 启动服务
租客端：
```bash
mvn spring-boot:run -pl web/web-app -am
```
管理端：
```bash
mvn spring-boot:run -pl web/web-admin -am
```
或使用 `mvn package` 生成可执行 Jar 后运行：
```bash
java -jar web/web-app/target/web-app-*.jar
java -jar web/web-admin/target/web-admin-*.jar
```

> 默认端口：租客端 `8081`，管理端 `8080`。可在配置文件或启动参数中调整。

## 使用说明
### 租客端（App Web）
1. **登录/注册**：输入手机号获取短信验证码登录。
2. **房源浏览**：搜索/筛选房源，查看详情。
3. **预约看房**：提交预约单，等待后台确认。
4. **在线租赁**：提交租约申请，查看合同与账单。
5. **个人中心**：查看收藏、浏览记录、个人信息等。

### 管理端（Admin Web）
1. **管理员登录**：账号密码 + 图形验证码。
2. **公寓 & 房源管理**：维护公寓信息、房间属性、配套设施。
3. **租约与账单**：审核租约、管理合同状态、处理账单。
4. **文件上传**：上传房源图片/合同附件至 MinIO。
5. **用户管理**：查看租客信息、禁用异常账号。
6. **运营任务**：定时任务处理账单、到期提醒等（EnableScheduling）。

## 开发 & 调试指南
- 推荐使用 IntelliJ IDEA 或 VS Code（需 Maven 支持）。
- MyBatis-Plus 日志：在 `application.yml` 中启用 `StdOutImpl` 便于调试。
- 接口文档：启动后访问 `http://localhost:<port>/doc.html`（Knife4j）。
- JWT 调试：登录接口返回 Token，后续接口在 `Authorization: Bearer <token>` 头中携带。
- 单元测试：在各模块 `src/test/java` 编写并运行 JUnit 测试。

## 常见问题
1. **验证码发送失败？**
   - 检查阿里云短信配置、网络连通性，确认 Redis 正常可用。
2. **MinIO 上传报错？**
   - 确认 bucket、AccessKey/Secret 以及公网访问策略。
3. **AI 咨询不响应？**
   - 检查 Spring AI 配置、DeepSeek API Key 及调用额度。
4. **如何修改默认端口？**
   - 在对应 `application.yml` 中调整 `server.port`，或通过启动参数 `--server.port=` 指定。

## 更多文档
- [需求规格说明书](./需求规格说明书.txt)
- [项目设计文档](./项目设计文档.txt)
- [用户文档说明书](./用户文档说明书.txt)

## 参与贡献
1. Fork 本仓库。
2. 创建特性分支：`git checkout -b feat/<feature-name>`。
3. 提交代码：`git commit -m "feat: add xxx"`。
4. 推送分支：`git push origin feat/<feature-name>`。
5. 发起 Pull Request，描述修改内容与影响。

欢迎提交 Issue / PR，一起完善易选好寓平台！

## 许可证
本项目遵循企业内部或自定义许可证（可根据需求填写）。若需开源，请补充许可证信息（如 MIT、Apache 2.0 等）。
