require "util.private_util"

--dlog("A = %d\nB = %d",123,321)	格式化打印（首参数是带格式字符串）
--dlog("A = ",123,"\nB = ",321)		拼接打印
function dlog(...)
	if not debug_mode then
		return false
	end
	local t = {...}
	if #t < 1 then
		return false
	end
	if type(t[1]) == "string" then
		local str,cnt = string.gsub(t[1],"%%%%","")
		str,cnt = string.gsub(str,"%%","")
		if #t == cnt + 1 then
			print("[debug] "..string.format(...))
			return true
		end
	end
	local str = ""
	for i,v in ipairs(t) do
		str = str .. tostring(v)
	end
	print("[debug] "..str)
	return true
end

--sleep()		按sleep_time[state.view]配置区间随机等待
--sleep(T)		固定等待T时间
--sleep(L,R)	按[L,R]区间随机等待
function sleep(L,R)
	if not L then
		if sleep_time[state.view] then
			L = sleep_time[state.view][1] or 1000
			R = sleep_time[state.view][2] or 1000
		elseif sleep_time_default then
			L = sleep_time_default[1] or 1000
			R = sleep_time_default[2] or 1000
		else
			L,R = 1000,1000
		end
		return sleep(L,R)
	end
	assert(type(L)=="number")
	R = R or L
	local T = math.random(L,R)
	mSleep(T)
	return true
end

--in_table(element,table)	element是否在table内
function in_table(E,t)
	assert(type(t)=="table")
	if #t == 0 then
		return false
	end
	for i,v in ipairs(t) do
		if eq(v,E) then
			return true
		end
	end
	return false
end

--timeout(function,args...)			首参数为函数
--timeout(count,function,args...)	首参数为超时计数，直到function返回真为止执行最多count次
function timeout(T,F,...)
	if type(T) == "function" then
		return timeout(timeout_count_default,T,F,...)
	end
	assert(type(F)=="function")
	local ret = F(...)
	if ret then
		return ret
	end
	if T <= 1 then
		dlog("timeout")
		return false
	end
	mSleep(sleep_time_timeout)
	return timeout(T-1,F,...)
end

--set_ts(time_sleep)		设置timeout内的休眠时间
function set_ts(Ts)
	assert(type(Ts) == "number")
	sleep_time_timeout = Ts
end

-------------------------------button---------------------------------
function click_btn(name)
	assert(btn[name])
	if btn[name].view and #(btn[name].view) ~= 0 and not in_table(state.view, btn[name].view) then
		dlog("界面不符 btn.name = ",name)
		return false
	end
	if not check_feature(btn[name]) then
		dlog("特征不符 btn.name = ",name)
		return false
	end
	click(btn[name].body)
	return true
end

-------------------------------item---------------------------------
item_positions = {}
items_positions = {}

function find_item(name)
	assert(item[name])
	local x,y = check_feature_pos(item[name])
	if not x then
		return false
	end
	item_positions[name] = {x,y}
	return true
end

function click_item(name)
	assert(item_positions[name])
	local x,y = item_positions[name][1],item_positions[name][2]
	click({
	item[name].body[1]+x,
	item[name].body[2]+y,
	item[name].body[3]+x,
	item[name].body[4]+y
	})
	return true
end

function find_items(name)
	assert(item[name])
	local mp = check_feature_poss(item[name])
	if not mp then
		return false
	end
	items_pos[name] = erase_near(mp)
	return #(items_pos[name])
end

function click_items(name)
	assert(items_positions[name])
	for i,v in pairs(items_positions[name]) do
		local x, y = v.x, v.y
		click({
		item[name].body[1]+x,
		item[name].body[2]+y,
		item[name].body[3]+x,
		item[name].body[4]+y
		})
		sleep()
	end
	return true
end

-------------------------------slider--------------------------------
function drag(name)
	assert(sld[name])
	local lx,ly
	local A = { math.random(sld[name].from[1],sld[name].from[3]), math.random(sld[name].from[2],sld[name].from[4]) }
	local B = { math.random(sld[name].to[1],sld[name].to[3]), math.random(sld[name].to[2],sld[name].to[4]) }
	touchDown(1, A[1], A[2])
	for i,v in ipairs(mapping(A,B,sld[name].len)) do
		sleep(8,13)
		touchMove(1, v[1], v[2])
		lx,ly = v[1],v[2]
	end
	touchUp(1, lx, ly)
	return true
end

-------------------------------switch--------------------------------
function swc_on(name)
	assert(swc[name])
	if swc[name].view and #(swc[name].view) ~= 0 and not in_table(state.view, swc[name].view) then
		dlog("界面不符 swc.name = ",name)
		return false
	end
	if check_feature(swc[name].feature) then
		dlog("已经开启 swc.name = ",name)
		return true
	end
	if check_feature(swc[name].feature_off) then
		dlog("特征不符 swc.name = ",name)
		return false
	end
	click(swc[name].body)
	return false
end

function swc_off(name)
	assert(swc[name])
	if swc[name].view and #(swc[name].view) ~= 0 and not in_table(state.view, swc[name].view) then
		dlog("界面不符 swc.name = ",name)
		return false
	end
	if check_feature(swc[name].feature_off) then
		dlog("已经关闭 swc.name = ",name)
		return true
	end
	if check_feature(swc[name].feature) then
		dlog("特征不符 swc.name = ",name)
		return false
	end
	click(swc[name].body)
	return false
end

-------------------------------text--------------------------------
function get_text(name)
	assert(text[name])
	if text[name].view and #(text[name].view) ~= 0 and not in_table(state.view, text[name].view) then
		dlog("界面不符 text.name = ",name)
		return false
	end
	local ocr, msg = createOCR({type = "tesseract",mode = 2})
	if ocr then
		local code,text = ocr:getText({
				rect = text[name].area,
				diff = text[name].diff,
				whitelist = text[name].whitelist
			})
		dlog("[code = ", code, " txt = ", text, "]")
		ocr:release()
		return code == 0 and text or false
	else
		dlog("createOCR failed: ", tostring(msg))
		return false
	end
end

-------------------------------view--------------------------------
function in_view(name)
	assert(view[name] and view[name].feature)
	if not check_feature(view[name]) then
		return false
	end
	if view[name].items and #(view[name].items) ~= 0 then
		for i,v in ipairs(view[name].items) do
			if not check_feature(v) then
				return false
			end
		end
	end
	return true
end

function check_view()
	assert(view_turn[state.view])
	for i,v in ipairs(view_turn[state.view]) do
		if in_view(v) then
			return v
		end
	end
	return false
end

function update_view()
	set_ts(400)
	local v = timeout(check_view)
	if v then
		state.view = v
		return true
	end
	dlog("更新view超时，重新检测全部view")
	state.view = 0
	local v = timeout(1,check_view)
	if v then
		state.view = v
		return true
	end
	dlog("未检测到view，将执行默认操作：点击返回")
	click_btn(btn_back_any)	--默认操作
	return false
end