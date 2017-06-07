-- 数据库初始化脚本

-- 创建数据库
--create database seckill;
-- 使用数据库
--use seckill;

-- 创建秒杀库存表
create table seckill(
'seckill_id' bigint not null AUTO_INCREMENT comment '商品库存ID',
'name' varchar(120) not null comment '商品名称',
'number' int not null comment '库存数量',
'start_time' timestamp not null comment '秒杀开始时间',
'end_time' timestamp not null,
'create_time' timestamp not null default CURRENT_TIMESTAMP comment '创建时间',
primary key (seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 default charset=utf8 comment='秒杀库存表';

-- 初始化数据
insert into
    seckill(name, number, start_time, end_time)
values('1000员秒', 100, '2015-11-01 00:00:00');

---- 秒杀成功明显表
--create table success_killed(
--'create_time' timestamp not null,
--primary key(seckill_id, user_phone),
--key idx_create_time(create_time)
--)ENGINE=InnoDB default charset=utf8 comment '秒杀成功明细表';
--

-- 连接数据库控制台
--mysql -uroot -p

--show tables
--show create table seckill\G