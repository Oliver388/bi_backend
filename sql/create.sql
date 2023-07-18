-- 图表信息表
create table if not exists `chart`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `goal` text null comment '分析目标',
    `chartData` text null comment '图表数据',
    `chartType` varchar(128) null comment '图表类型',
    `genChart` text null comment '生成的图表数据',
    `genResult` text null comment '生成的图表类型',
    `userId` bigint null comment '创建用户 id',
    createTime   datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime   datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint      default 0                 not null comment '是否删除'
) comment '图表信息表' collate = utf8mb4_unicode_ci;