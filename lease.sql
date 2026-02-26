create table apartment_facility
(
    id           bigint auto_increment
        primary key,
    apartment_id bigint            null comment '公寓id',
    facility_id  bigint            null comment '设施id',
    create_time  timestamp         null comment '创建时间',
    update_time  timestamp         null comment '更新时间',
    is_deleted   tinyint default 0 null comment '是否删除'
)
    comment '公寓&配套关联表' row_format = DYNAMIC;

create table apartment_fee_value
(
    id           bigint auto_increment
        primary key,
    apartment_id bigint            null comment '公寓id',
    fee_value_id bigint            null comment '收费项value_id',
    create_time  timestamp         null comment '创建时间',
    update_time  timestamp         null comment '更新时间',
    is_deleted   tinyint default 0 null comment '是否删除'
)
    comment '公寓&杂费关联表' row_format = DYNAMIC;

create table apartment_info
(
    id             bigint auto_increment comment '公寓id'
        primary key,
    name           varchar(64)       null comment '公寓名称',
    introduction   varchar(255)      null comment '公寓介绍',
    district_id    bigint            null comment '所处区域id',
    district_name  varchar(16)       null comment '区域名称',
    city_id        bigint            null comment '所处城市id',
    city_name      varchar(16)       null comment '城市名称',
    province_id    bigint            null comment '所处省份id',
    province_name  varchar(16)       null comment '省份名称',
    address_detail varchar(255)      null comment '详细地址',
    latitude       varchar(16)       null comment '经度',
    longitude      varchar(16)       null comment '纬度',
    phone          varchar(11)       null comment '公寓前台电话',
    is_release     tinyint           null comment '是否发布（1:发布，0:未发布）',
    create_time    timestamp         null comment '创建时间',
    update_time    timestamp         null comment '更新时间',
    is_deleted     tinyint default 0 null comment '是否删除'
)
    comment '公寓信息表' row_format = DYNAMIC;

create table apartment_info_backup
(
    id             bigint  default 0 not null comment '公寓id',
    name           varchar(64)       null comment '公寓名称',
    introduction   varchar(255)      null comment '公寓介绍',
    district_id    bigint            null comment '所处区域id',
    district_name  varchar(16)       null comment '区域名称',
    city_id        bigint            null comment '所处城市id',
    city_name      varchar(16)       null comment '城市名称',
    province_id    bigint            null comment '所处省份id',
    province_name  varchar(16)       null comment '省份名称',
    address_detail varchar(255)      null comment '详细地址',
    latitude       varchar(16)       null comment '经度',
    longitude      varchar(16)       null comment '纬度',
    phone          varchar(11)       null comment '公寓前台电话',
    is_release     tinyint           null comment '是否发布（1:发布，0:未发布）',
    create_time    timestamp         null comment '创建时间',
    update_time    timestamp         null comment '更新时间',
    is_deleted     tinyint default 0 null comment '是否删除'
);

create table apartment_label
(
    id           bigint auto_increment
        primary key,
    apartment_id bigint            null comment '公寓id',
    label_id     bigint            null comment '标签id',
    create_time  timestamp         null comment '创建时间',
    update_time  timestamp         null comment '更新时间',
    is_deleted   tinyint default 0 null comment '是否删除'
)
    comment '公寓标签关联表' row_format = DYNAMIC;

create table attr_key
(
    id          bigint auto_increment
        primary key,
    name        varchar(16)       null comment '属性key',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    comment '房间基本属性表' row_format = DYNAMIC;

create table attr_value
(
    id          bigint auto_increment
        primary key,
    name        varchar(16)       null comment '属性value',
    attr_key_id bigint            null comment '对应的属性key_id',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '修改时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    comment '房间基本属性值表' row_format = DYNAMIC;

create table balance_transaction
(
    id               bigint auto_increment comment '主键ID'
        primary key,
    user_id          bigint                              not null comment '用户ID',
    transaction_no   varchar(64)                         not null comment '交易流水号',
    type             tinyint                             not null comment '交易类型：1充值 2消费 3退款 4冻结 5解冻',
    amount           decimal(16, 2)                      not null comment '交易金额（元）',
    balance_before   decimal(16, 2)                      not null comment '交易前余额',
    balance_after    decimal(16, 2)                      not null comment '交易后余额',
    related_order_no varchar(64)                         null comment '关联订单号',
    remark           varchar(255)                        null comment '备注说明',
    create_time      timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    update_time      timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted       tinyint   default 0                 null comment '逻辑删除标记',
    constraint uk_transaction_no
        unique (transaction_no) comment '交易流水号唯一索引'
)
    comment '余额变动记录表' charset = utf8mb4;

create index idx_related_order
    on balance_transaction (related_order_no)
    comment '关联订单索引';

create index idx_user_id
    on balance_transaction (user_id)
    comment '用户ID索引';

create table browsing_history
(
    id          bigint auto_increment
        primary key,
    user_id     bigint            null comment '用户id',
    room_id     bigint            null comment '浏览房间id',
    browse_time timestamp         null,
    create_time timestamp         null,
    update_time timestamp         null,
    is_deleted  tinyint default 0 null
)
    comment '浏览历史' row_format = DYNAMIC;

create table city_info
(
    id          int auto_increment comment '城市id'
        primary key,
    name        varchar(16)       null comment '城市名称',
    province_id int               null comment '所属省份id',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    row_format = DYNAMIC;

create table district_info
(
    id          int auto_increment comment '区域id'
        primary key,
    name        varchar(255)      null comment '区域名称',
    city_id     int               null comment '所属城市id',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    row_format = DYNAMIC;

create table facility_info
(
    id          bigint auto_increment comment '自增逐渐'
        primary key,
    type        tinyint           null comment '类型（1:公寓图片,2:房间图片）',
    name        varchar(16)       null comment '名称',
    icon        varchar(64)       null,
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    comment '配套信息表' row_format = DYNAMIC;

create table fee_key
(
    id          bigint auto_increment
        primary key,
    name        varchar(16)       null comment '付款项key',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    comment '杂项费用名称表' row_format = DYNAMIC;

create table fee_value
(
    id          bigint auto_increment
        primary key,
    name        varchar(255)      null comment '费用value',
    unit        varchar(255)      null comment '收费单位',
    fee_key_id  bigint            null comment '费用所对的fee_key',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    comment '杂项费用值表' row_format = DYNAMIC;

create table graph_info
(
    id          bigint auto_increment comment '图片id'
        primary key,
    name        varchar(128)      null comment '图片名称',
    item_type   tinyint           null comment '图片所属对象类型（1:apartment,2:room）',
    item_id     bigint            null comment '图片所有对象id',
    url         varchar(255)      null comment '图片地址',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    comment '图片信息表' row_format = DYNAMIC;

create table label_info
(
    id          bigint auto_increment
        primary key,
    type        tinyint           null comment '类型（1:公寓标签,2:房间标签）',
    name        varchar(255)      null comment '标签名称',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    comment '标签信息表' row_format = DYNAMIC;

create table lease_agreement
(
    id                    bigint auto_increment comment '租约id'
        primary key,
    phone                 varchar(11)       null comment '承租人手机号码',
    name                  varchar(50)       null comment '承租人姓名',
    identification_number varchar(18)       null comment '承租人身份证号码',
    apartment_id          bigint            null comment '签约公寓id',
    room_id               bigint unsigned   null comment '签约房间id',
    lease_start_date      date              null comment '租约开始日期',
    lease_end_date        date              null comment '租约结束日期',
    lease_term_id         bigint            null comment '租期id',
    rent                  decimal(16, 2)    null comment '租金（元/月）',
    deposit               decimal(16, 2)    null comment '押金（元）',
    payment_type_id       bigint            null comment '支付类型id
',
    payment_order_id      bigint            null comment '支付订单ID',
    payment_status        tinyint default 0 null comment '支付状态：0待支付 1已支付 2已关闭 3已退款',
    status                tinyint           null comment '租约状态（1:签约待确认，2:已签约，3:已取消，4:已到期，5:退租待确认，6:已退租，7:续约待确认）',
    source_type           tinyint           null comment '租约来源（1:新签，2:续约）',
    additional_info       varchar(255)      null comment '备注信息',
    create_time           timestamp         null comment '创建时间',
    update_time           timestamp         null comment '更新时间',
    is_deleted            tinyint default 0 null comment '是否删除'
)
    comment '租约信息表' row_format = DYNAMIC;

create index idx_lease_payment_order
    on lease_agreement (payment_order_id);

create table lease_term
(
    id          bigint auto_increment
        primary key,
    month_count int               null comment '租期',
    unit        varchar(16)       null comment '租期单位',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    comment '租期' row_format = DYNAMIC;

create table payment_detail
(
    id               bigint auto_increment comment '主键ID'
        primary key,
    payment_order_id bigint                                   not null comment '支付订单ID（关联payment_order表）',
    pay_method       tinyint                                  not null comment '支付方式：1余额 2微信',
    amount           decimal(16, 2)                           not null comment '支付金额（元）',
    status           tinyint        default 0                 not null comment '支付状态：0待支付 1已支付 2已关闭 3已退款',
    transaction_no   varchar(64)                              null comment '交易流水号（余额为balance_transaction的流水号，微信为微信交易号）',
    pay_time         datetime                                 null comment '支付成功时间',
    refund_amount    decimal(16, 2) default 0.00              null comment '已退款金额',
    refund_time      datetime                                 null comment '退款时间',
    create_time      timestamp      default CURRENT_TIMESTAMP null comment '创建时间',
    update_time      timestamp      default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted       tinyint        default 0                 null comment '逻辑删除标记'
)
    comment '支付明细表' charset = utf8mb4;

create index idx_payment_order
    on payment_detail (payment_order_id)
    comment '支付订单ID索引';

create index idx_transaction_no
    on payment_detail (transaction_no)
    comment '交易流水号索引';

create table payment_order
(
    id                    bigint auto_increment comment '主键'
        primary key,
    order_no              varchar(64)                              not null comment '商户订单号',
    lease_agreement_id    bigint                                   not null comment '关联租约ID',
    term_start_date       date                                     null comment '租约周期开始日期',
    subject               varchar(128)                             not null comment '订单标题',
    amount_total          decimal(10, 2)                           not null comment '支付金额（元）',
    status                tinyint        default 0                 not null comment '支付状态：0待支付 1已支付 2已关闭 3已退款',
    pay_channel           varchar(32)                              not null comment '支付渠道（如 WECHAT_H5）',
    pay_method            tinyint        default 1                 null comment '支付方式：1支付宝支付 2微信支付 3混合支付',
    biz_type              tinyint        default 3                 null comment '业务类型：1押金 2租金 3押金+租金',
    deposit_amount        decimal(16, 2) default 0.00              null comment '押金金额',
    rent_amount           decimal(16, 2) default 0.00              null comment '租金金额',
    balance_amount        decimal(16, 2) default 0.00              null comment '支付宝支付金额',
    wechat_amount         decimal(16, 2) default 0.00              null comment '微信支付金额',
    wechat_transaction_id varchar(64)                              null comment '微信支付交易号',
    refund_status         tinyint        default 0                 null comment '退款状态：0无退款 1退款中 2已退款 3退款失败',
    refunded_amount       decimal(16, 2) default 0.00              null comment '已退款金额',
    refund_amount         decimal(16, 2) default 0.00              null comment '已退款金额',
    refund_time           datetime                                 null comment '退款时间',
    h5_url                varchar(255)                             null comment 'H5 支付跳转链接',
    code_url              varchar(255)                             null comment '二维码链接',
    success_time          datetime                                 null comment '支付成功时间',
    notify_payload        text                                     null comment '回调报文',
    create_time           datetime       default CURRENT_TIMESTAMP null comment '创建时间',
    update_time           datetime       default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted            tinyint        default 0                 null comment '逻辑删除标记',
    constraint uk_payment_order_no
        unique (order_no)
)
    comment '支付订单信息表';

create index idx_payment_order_agreement
    on payment_order (lease_agreement_id);

create table payment_type
(
    id              bigint auto_increment
        primary key,
    name            varchar(16)       null comment '付款方式名称',
    pay_month_count int               null comment '每次支付租期数',
    additional_info varchar(255)      null comment '付费说明',
    create_time     timestamp         null comment '创建时间',
    update_time     timestamp         null comment '更新时间',
    is_deleted      tinyint default 0 null comment '是否删除'
)
    comment '支付方式表' row_format = DYNAMIC;

create table province_info
(
    id          bigint auto_increment comment '省份id'
        primary key,
    name        varchar(16)       null comment '省份名称',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    row_format = DYNAMIC;

create table refund_record
(
    id                 bigint auto_increment comment '主键ID'
        primary key,
    refund_no          varchar(64)                              not null comment '退款单号',
    payment_order_id   bigint                                   not null comment '原支付订单ID',
    lease_agreement_id bigint                                   not null comment '租约ID',
    refund_amount      decimal(16, 2)                           not null comment '退款总金额（元）',
    balance_refund     decimal(16, 2) default 0.00              null comment '余额退款金额',
    wechat_refund      decimal(16, 2) default 0.00              null comment '微信退款金额',
    status             tinyint        default 0                 not null comment '退款状态：0处理中 1成功 2失败',
    reason             varchar(255)                             null comment '退款原因',
    operator_id        bigint                                   null comment '操作人ID',
    success_time       datetime                                 null comment '退款成功时间',
    fail_reason        varchar(255)                             null comment '失败原因',
    create_time        timestamp      default CURRENT_TIMESTAMP null comment '创建时间',
    update_time        timestamp      default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted         tinyint        default 0                 null comment '逻辑删除标记',
    constraint uk_refund_no
        unique (refund_no) comment '退款单号唯一索引'
)
    comment '退款记录表' charset = utf8mb4;

create index idx_lease_agreement
    on refund_record (lease_agreement_id)
    comment '租约ID索引';

create index idx_payment_order
    on refund_record (payment_order_id)
    comment '支付订单ID索引';

create table repair_attachment
(
    id          bigint auto_increment comment '报修附件ID'
        primary key,
    request_id  bigint                      not null comment '报修单ID',
    url         varchar(255)                not null comment '附件访问地址',
    type        varchar(20) default 'image' null comment '附件类别（默认图片）',
    create_time timestamp                   null comment '创建时间',
    update_time timestamp                   null comment '更新时间',
    is_deleted  tinyint     default 0       null comment '逻辑删除标记'
)
    comment '报修附件表';

create index idx_ra_request
    on repair_attachment (request_id)
    comment '报修单ID索引';

create table repair_progress
(
    id            bigint auto_increment comment '报修进度ID'
        primary key,
    request_id    bigint            not null comment '报修单ID',
    status        tinyint           not null comment '当前进度状态枚举',
    content       varchar(255)      not null comment '进度描述',
    operator_id   bigint            not null comment '操作人ID',
    operator_role varchar(20)       not null comment '操作人角色（如租客/管理员）',
    create_time   timestamp         null comment '创建时间',
    update_time   timestamp         null comment '更新时间',
    is_deleted    tinyint default 0 null comment '逻辑删除标记'
)
    comment '报修进度表';

create index idx_rp_request
    on repair_progress (request_id)
    comment '报修单ID索引';

create table repair_request
(
    id               bigint auto_increment comment '报修单ID'
        primary key,
    user_id          bigint            not null comment '报修人ID（关联用户表）',
    room_id          bigint            not null comment '房间ID（关联房间表）',
    title            varchar(100)      not null comment '报修标题',
    description      text              not null comment '报修描述',
    priority         tinyint           not null comment '报修优先级枚举',
    status           tinyint           not null comment '报修状态枚举',
    appointment_time datetime          null comment '预约上门时间',
    contact_phone    varchar(20)       null comment '联系电话',
    handler_id       bigint            null comment '处理人ID（后台指派）',
    finish_time      datetime          null comment '完成/取消时间',
    remark           varchar(255)      null comment '备注信息',
    create_time      timestamp         null comment '创建时间',
    update_time      timestamp         null comment '更新时间',
    is_deleted       tinyint default 0 null comment '逻辑删除标记'
)
    comment '报修单表';

create index idx_rr_room
    on repair_request (room_id)
    comment '房间ID索引';

create index idx_rr_user
    on repair_request (user_id)
    comment '用户ID索引';

create table room_attr_value
(
    id            bigint auto_increment
        primary key,
    room_id       bigint            null comment '房间id',
    attr_value_id bigint            null comment '属性值id',
    create_time   timestamp         null comment '创建时间',
    update_time   timestamp         null comment '更新时间',
    is_deleted    tinyint default 0 null comment '是否删除'
)
    comment '房间&基本属性值关联表' row_format = DYNAMIC;

create table room_collect
(
    id             bigint auto_increment comment '主键'
        primary key,
    user_id        bigint                               not null comment '用户ID',
    room_id        bigint                               not null comment '房间ID',
    collect_status tinyint(1) default 1                 not null comment '收藏状态：1-已收藏，0-已取消收藏',
    create_time    timestamp  default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time    timestamp  default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted     tinyint(1) default 0                 not null comment '逻辑删除：0-未删除，1-已删除',
    constraint uk_user_room
        unique (user_id, room_id) comment '用户房间唯一索引'
)
    comment '房间收藏表' collate = utf8mb4_unicode_ci;

create index idx_create_time
    on room_collect (create_time)
    comment '创建时间索引';

create index idx_room_id
    on room_collect (room_id)
    comment '房间ID索引';

create index idx_user_id
    on room_collect (user_id)
    comment '用户ID索引';

create table room_facility
(
    id          bigint auto_increment
        primary key,
    room_id     bigint            null comment '房间id',
    facility_id bigint            null comment '房间设施id',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    comment '房间&配套关联表' row_format = DYNAMIC;

create table room_info
(
    id           bigint auto_increment comment '房间id'
        primary key,
    room_number  varchar(16)       null comment '房间号',
    rent         decimal(16, 2)    null comment '租金（元/月）',
    apartment_id bigint            null comment '所属公寓id',
    is_release   tinyint           null comment '是否发布',
    create_time  timestamp         null comment '创建时间',
    update_time  timestamp         null comment '更新时间',
    is_deleted   tinyint default 0 null comment '是否删除'
)
    comment '房间信息表' row_format = DYNAMIC;

create table room_label
(
    id          bigint auto_increment
        primary key,
    room_id     bigint            null comment '房间id',
    label_id    bigint            null comment '标签id',
    create_time timestamp         null comment '创建时间',
    update_time timestamp         null comment '更新时间',
    is_deleted  tinyint default 0 null comment '是否删除'
)
    comment '房间&标签关联表' row_format = DYNAMIC;

create table room_lease_term
(
    id            bigint auto_increment
        primary key,
    room_id       bigint            null comment '房间id',
    lease_term_id bigint            null comment '租期id',
    create_time   timestamp         null comment '创建时间',
    update_time   timestamp         null comment '更新时间',
    is_deleted    tinyint default 0 null comment '是否删除'
)
    comment '房间租期管理表' row_format = DYNAMIC;

create table room_payment_type
(
    id              bigint auto_increment
        primary key,
    room_id         bigint            null comment '房间id',
    payment_type_id bigint            null comment '支付类型id',
    create_time     timestamp         null comment '创建时间',
    update_time     timestamp         null comment '更新时间',
    is_deleted      tinyint default 0 null comment '是否删除'
)
    comment '房间&支付方式关联表' row_format = DYNAMIC;

create table system_post
(
    id          bigint auto_increment comment '岗位ID'
        primary key,
    code        varchar(64)                            not null comment '岗位编码',
    name        varchar(50)  default ''                not null comment '岗位名称',
    description varchar(255) default ''                not null comment '描述',
    status      tinyint(1)   default 1                 not null comment '状态（1正常 0停用）',
    create_time timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    update_time timestamp                              null on update CURRENT_TIMESTAMP,
    is_deleted  tinyint      default 0                 not null comment '删除标记（0:可用 1:已删除）'
)
    comment '岗位信息表' charset = utf8mb3
                         row_format = DYNAMIC;

create table system_user
(
    id              bigint auto_increment comment '员工id'
        primary key,
    username        varchar(30)       null comment '用户名',
    password        varchar(100)      null comment '密码',
    name            varchar(50)       null comment '姓名',
    type            tinyint           null comment '用户类型',
    phone           varchar(11)       null comment '手机号码',
    avatar_url      varchar(255)      null comment '头像地址',
    additional_info varchar(255)      null comment '备注信息',
    post_id         bigint            null comment '岗位id',
    status          tinyint           null comment '账号状态',
    create_time     timestamp         null comment '创建时间',
    update_time     timestamp         null comment '更新时间',
    is_deleted      tinyint default 0 null comment '是否删除'
)
    comment '员工信息表' row_format = DYNAMIC;

create table tenant_profile_features
(
    user_id               bigint                              not null comment '租户ID'
        primary key,
    phone                 varchar(11)                         null comment '租户手机号',
    nickname              varchar(20)                         null comment '租户昵称',
    agreement_id          bigint                              null comment '关联合同ID',
    apartment_id          bigint                              null comment '公寓ID',
    room_id               bigint                              null comment '房间ID',
    lease_start_date      date                                null comment '租期开始日期',
    lease_end_date        date                                null comment '租期结束日期',
    lease_term_months     int                                 null comment '租期长度（月）',
    rent_amount           decimal(16, 2)                      null comment '月租金金额',
    deposit_amount        decimal(16, 2)                      null comment '押金金额',
    payment_type_id       bigint                              null comment '付款方式ID',
    browse_cnt_30d        int       default 0                 null comment '近30天浏览次数',
    last_browse_time      datetime                            null comment '最近一次浏览时间',
    appointment_cnt_30d   int       default 0                 null comment '近30天预约次数',
    last_appointment_time datetime                            null comment '最近一次预约时间',
    activity_level_tag    varchar(16)                         null comment '活跃度标签',
    intention_tag         varchar(16)                         null comment '租赁意向标签',
    value_level_tag       varchar(16)                         null comment '客单价值标签',
    payment_behavior_tag  varchar(16)                         null comment '付款行为标签',
    data_date             date                                not null comment '数据对应日期（批次）',
    created_at            timestamp default CURRENT_TIMESTAMP not null comment '记录创建时间',
    updated_at            timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '记录更新时间'
)
    comment '租户行为画像标签宽表' charset = utf8mb4;

create table user_balance
(
    id             bigint auto_increment comment '主键ID'
        primary key,
    user_id        bigint                                   not null comment '用户ID（关联user_info表）',
    balance        decimal(16, 2) default 0.00              not null comment '当前余额（元）',
    frozen_amount  decimal(16, 2) default 0.00              not null comment '冻结金额（元）',
    total_recharge decimal(16, 2) default 0.00              not null comment '累计充值金额（元）',
    total_consume  decimal(16, 2) default 0.00              not null comment '累计消费金额（元）',
    total_refund   decimal(16, 2) default 0.00              not null comment '累计退款金额（元）',
    version        int            default 0                 not null comment '乐观锁版本号',
    create_time    timestamp      default CURRENT_TIMESTAMP null comment '创建时间',
    update_time    timestamp      default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    is_deleted     tinyint        default 0                 null comment '逻辑删除标记',
    constraint uk_user_id
        unique (user_id) comment '用户ID唯一索引'
)
    comment '用户余额表' charset = utf8mb4;

create table user_info
(
    id          bigint auto_increment comment '用户id'
        primary key,
    phone       varchar(11)          null comment '手机号码（用做登录用户名）',
    password    varchar(50)          null comment '密码',
    avatar_url  varchar(500)         null,
    nickname    varchar(20)          null comment '昵称',
    status      tinyint    default 1 null comment '账号状态',
    gender      tinyint(1) default 0 null comment '性别：0-保密 1-男 2-女',
    signature   varchar(255)         null comment '个性签名',
    create_time timestamp            null comment '创建时间',
    update_time timestamp            null comment '更新时间',
    is_deleted  tinyint    default 0 null comment '是否删除'
)
    comment '用户信息表' row_format = DYNAMIC;

create table view_appointment
(
    id                 bigint auto_increment comment '预约id'
        primary key,
    user_id            bigint            null comment '用户id',
    name               varchar(16)       null comment '用户姓名',
    phone              varchar(16)       null comment '用户手机号码',
    apartment_id       int               null comment '公寓id',
    appointment_time   timestamp         null comment '预约时间',
    additional_info    varchar(255)      null comment '备注信息',
    appointment_status tinyint           null comment '预约状态（1:待看房，2:已取消，3已看房）',
    create_time        timestamp         null comment '创建时间',
    update_time        timestamp         null comment '更新时间',
    is_deleted         tinyint default 0 null comment '是否删除'
)
    comment '预约看房信息表' row_format = DYNAMIC;

create definer = root@`%` view tenant_profile_base as
select `u`.`id`                AS `user_id`,
       `u`.`phone`             AS `phone`,
       `u`.`nickname`          AS `nickname`,
       `la`.`id`               AS `agreement_id`,
       `la`.`apartment_id`     AS `apartment_id`,
       `la`.`room_id`          AS `room_id`,
       `la`.`lease_start_date` AS `lease_start_date`,
       `la`.`lease_end_date`   AS `lease_end_date`,
       `la`.`rent`             AS `rent`,
       `la`.`deposit`          AS `deposit`,
       `la`.`payment_type_id`  AS `payment_type_id`
from (`lease`.`user_info` `u` left join `lease`.`lease_agreement` `la`
      on (((`u`.`phone` = `la`.`phone`) and (`la`.`is_deleted` = 0) and (`la`.`status` = 1))));

-- comment on column tenant_profile_base.user_id not supported: 用户id

-- comment on column tenant_profile_base.phone not supported: 手机号码（用做登录用户名）

-- comment on column tenant_profile_base.nickname not supported: 昵称

-- comment on column tenant_profile_base.agreement_id not supported: 租约id

-- comment on column tenant_profile_base.apartment_id not supported: 签约公寓id

-- comment on column tenant_profile_base.room_id not supported: 签约房间id

-- comment on column tenant_profile_base.lease_start_date not supported: 租约开始日期

-- comment on column tenant_profile_base.lease_end_date not supported: 租约结束日期

-- comment on column tenant_profile_base.rent not supported: 租金（元/月）

-- comment on column tenant_profile_base.deposit not supported: 押金（元）

-- comment on column tenant_profile_base.payment_type_id not supported: 支付类型id

