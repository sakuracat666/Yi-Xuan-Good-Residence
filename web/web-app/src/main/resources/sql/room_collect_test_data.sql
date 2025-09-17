-- 为room_collect表添加测试数据的SQL脚本
-- 用户收藏记录（有效收藏）
INSERT INTO room_collect (user_id, room_id, collect_status) VALUES 
(1, 2, 1),
(1, 3, 1),
(8, 2, 1),
(8, 8, 1);

-- 用户收藏记录（已取消的收藏）
INSERT INTO room_collect (user_id, room_id, collect_status) VALUES 
(1, 8, 0),
(8, 3, 0);

-- 说明：
-- user_id 1 和 8 是从 user_info 表中获取的有效用户ID
-- room_id 2, 3, 8 等是从 room_info 表中获取的有效房间ID
-- collect_status: 1表示已收藏，0表示已取消收藏