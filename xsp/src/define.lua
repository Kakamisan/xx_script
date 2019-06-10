btn_sample		= 1
btn_back_any	= 1		--默认的返回键按钮位置
btn_world		= 2		--主页-world
btn_main_story	= 3		--选副本类型-主线
btn_normal		= 4 	--常规点屏幕
btn_bt_next		= 5		--战斗中-下一波
btn_ctn_mission	= 6		--继续远征
btn_back_info	= 7		--个人信息的返回键
btn_check_fb_state=8	--进入副本详情
btn_stop_repeat	= 9		--停止反复刷图
btn_enter_bt	= 10	--进入战斗
btn_start_turn	= 11	--开始回合
btn_enter_reback= 12	--主页-进入分解
btn_to_reback	= 13	--转到分解中心
btn_reback_start= 14	--开始分解
btn_reback_enter= 15	--分解中心进入老婆分解
btn_reback_slc_ok=16	--老婆分解-确定选择
btn_ack1		= 17	--通用弹窗-左取消右确定-点确定（分解二次确认）
btn_ack_get		= 18	--分解得资源-点确定



item_sample			= 1
item_mission_over	= 1		--停止反复战斗-远征完成
item_mission_over2	= 2		--主页-远征完成
item_mission_over3	= 3		--选择队伍-远征完成
item_A_waifu		= 4		--A级老婆
item_B_waifu		= 5		--B级老婆
item_reback_scroll	= 6		--分解滚动条




sld_sample		= 1




swc_sample		= 1
swc_chapter1	= 1		--主线章节1
swc_chapter2	= 2		--主线章节2
swc_chapter3	= 3		--主线章节3
swc_chapter4	= 4		--主线章节4
swc_chapter5	= 5		--主线章节5
swc_chapter6	= 6		--主线章节6

swc_fb_1		= 7		--主线副本1
swc_fb_2		= 8		--主线副本2
swc_fb_3		= 9		--主线副本3
swc_fb_4		= 10	--主线副本4
swc_fb_5		= 11	--主线副本5
swc_fb_6		= 12	--主线副本6
swc_fb_7		= 13	--主线副本7
swc_fb_8		= 14	--主线副本8

swc_fb_1b		= 15	--主线副本1b
swc_fb_2b		= 16	--主线副本2b
swc_fb_3b		= 17	--主线副本3b
swc_fb_4b		= 18	--主线副本4b
swc_fb_5b		= 19	--主线副本5b
swc_fb_6b		= 20	--主线副本6b
swc_fb_7b		= 21	--主线副本7b
swc_fb_8b		= 22	--主线副本8b

swc_fb_1e		= 23	--主线副本1e
swc_fb_2e		= 24	--主线副本2e
swc_fb_3e		= 25	--主线副本3e
swc_fb_4e		= 26	--主线副本4e
swc_fb_5e		= 27	--主线副本5e
swc_fb_6e		= 28	--主线副本6e
swc_fb_7e		= 29	--主线副本7e
swc_fb_8e		= 30	--主线副本8e

swc_team_sld_up = 31	--选择队伍-上半部分
swc_team_sld_down = 32	--选择队伍-下半部分

swc_team_1		= 33	--选择队伍-1
swc_team_2		= 34	--选择队伍-2
swc_team_3		= 35	--选择队伍-3
swc_team_4		= 36	--选择队伍-4

swc_auto_atk	= 37	--选择队伍-自动
swc_repeat		= 38	--选择队伍-反复战斗

swc_mission_open1= 39	--主页-远征-橙色
swc_mission_open2= 40	--主页-远征-绿色

swc_reback_ss	= 41	--分解-筛选ss
swc_reback_s	= 42	--分解-筛选s
swc_reback_a	= 43	--分解-筛选a
swc_reback_b	= 44	--分解-筛选b







text_sample			= 1
text_reback_gain	= 1		--分解获得资源数






view_default		= 0
view_sample			= 1		--示例
view_home			= 1		--主页
view_slc_dg_type	= 2		--选择副本类型：每日，主线，活动等
view_slc_dg_main	= 3		--选择主线副本，6-8，5-8e等
view_slc_team		= 4		--选择队伍，队伍1，队伍5等
view_bt_slc_acn		= 5		--战斗中-选择行动
view_bt_playing		= 6		--战斗中-播报中-下面是绿色点
view_bt_playing2	= 7		--战斗中-播报中-下面是蓝色点
view_bt_report		= 8		--战斗中-战斗经验结算
view_bt_waiting		= 9		--战斗中-打捞老婆
view_bt_get_waifu	= 10	--战斗中-捞到老婆
view_bt_next		= 11	--战斗中-下一波
view_bt_moving		= 12	--战斗中-赶路到下一波
view_bt_over		= 13	--战斗中-总结算界面
view_stop_repeat	= 14	--选择是否停止反复战斗
view_ctn_mission	= 15	--主页-继续远征
view_player_info	= 16	--主页-玩家信息
view_sys_online		= 17	--载入
view_bt_enemy_acn	= 18	--战斗中-敌方行动
view_creator		= 19	--建造中心
view_reback			= 20	--分解中心
view_reback_waifu	= 21	--老婆分解
view_reback_waifu_al= 22	--老婆分解-分A级以上弹窗警告
view_reback_waifu_ac= 23	--老婆分解-确定分解
view_reback_get		= 24	--老婆分解-获得物品




to_view_desc = {
	[0] = "默认"
	,[view_home] = "主页"
	,[view_slc_dg_type] = "副本类型"
	,[view_slc_dg_main] = "主线副本"
	,[view_slc_team] = "选择队伍"
	,[view_bt_slc_acn] = "战斗中-选择行动"
	,[view_bt_playing] = "战斗中-播报中-下面是绿色点"
	,[view_bt_playing2] = "战斗中-播报中-下面是蓝色点"
	,[view_bt_report] = "战斗中-战斗经验结算"
	,[view_bt_waiting] = "战斗中-打捞老婆"
	,[view_bt_get_waifu] = "战斗中-捞到老婆"
	,[view_bt_next] = "战斗中-下一波"
	,[view_bt_moving] = "战斗中-赶路到下一波"
	,[view_bt_over] = "战斗中-总结算界面"
	,[view_stop_repeat] = "是否停止反复战斗"
	,[view_ctn_mission] = "主页-继续远征"
	,[view_player_info] = "主页-玩家信息"
	,[view_sys_online] = "载入"
	,[view_bt_enemy_acn] = "战斗中-敌方行动"
	,[view_creator] = "建造中心"
	,[view_reback] = "分解中心"
	,[view_reback_waifu] = "老婆分解"
	,[view_reback_waifu_al] = "老婆分解-分A级以上弹窗警告"
	,[view_reback_waifu_ac] = "老婆分解-确定分解"
	,[view_reback_get] = "老婆分解-获得物品"
}



target_default	= 0		--默认target
target_sample	= 1		--示例
target_wait		= 1		--等待-什么都不做-直到target改变
target_back		= 2		--返回主页
target_atk		= 3		--主线出击
target_mission	= 4		--远征
target_reback	= 5		--分解

to_target_desc = {
	[0] = "默认"
	,[target_wait] = "等待"
	,[target_back] = "返回主页"
	,[target_atk] = "主线出击"
	,[target_mission] = "远征"
	,[target_reback] = "分解"
}



fmain_auto		= 1		--自动模式
fmain_alarm		= 2		--闹钟模式
fmain_repeat	= 3		--复读模式
fmain_mission	= 4		--远征模式
fmain_test		= 5		--测试坐标模式




fextra_mission	= 0		--自动远征
fextra_reback	= 1		--自动分解



freback_A_waifu	= 0		--A级老婆
freback_B_waifu	= 1		--B级老婆
--freback_A_eqm	= 2		--A级装备
--freback_B_eqm	= 3		--B级装备


--------------------------------------default--------------------------------------
default = 0

timeout_opt_default	= {
	count	= 10		--默认执行10次超时
	,sleep	= 400		--默认每次等待400毫秒
}

timeout_opt_update_view1 = {
	count = 16
	,sleep = 500
}

timeout_opt_update_view2 = {
	count = 8
	,sleep = 1000
}