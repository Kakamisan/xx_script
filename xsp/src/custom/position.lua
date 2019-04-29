local pos = {}

pos.rotate			= 1								--参考init的说明
pos.dw,pos.dh		= 540,960						--开发环境分辨率(需按自适应UI的基准比例开发)
pos.cw,pos.ch 		= getScreenSize()				--当前设备分辨率

pos.dx,pos.dy		= (function()					--开发环境下横轴坐标最大值
		if rotate == 0 then return pos.dw,pos.dh	--竖屏下横坐标最大为w
		else return pos.dh,pos.dw end				--横屏下横坐标最大为h
	end)()
pos.ds				= {0,0,pos.dx,pos.dy}			--开发环境下的屏幕区域

pos.cx,pos.cy		= (function()					--当前设备下横轴坐标最大值
		if rotate == 0 then return pos.cw,pos.ch	--竖屏下横坐标最大为sw
		else return pos.ch,pos.cw end				--横屏下横坐标最大为sh
	end)()
pos.cs				= {0,0,pos.cx,pos.cy}			--当前设备下的屏幕区域

pos.xscl,pos.yscl	= (function()					--缩放比例(需要按原分辨率比例缩放)
		local scale = math.min(pos.cx/pos.dx,pos.cy/pos.dy)	--按小的那个来缩放
		return scale,scale							--(特殊情况下可特殊处理)
	end)()

init("0",pos.rotate)								--按rotate初始化脚本




----------------------------------坐标自适应函数----------------------------------------

function scale_init()
	local list = {btn,item,sld,switch,text,view}	--需要适配分辨率的物件种类列表
	for i,v in ipairs(list) do
		for k,E in pairs(v) do
			E = do_scale(E)							--对每个物件执行
		end
	end
end

function do_scale(E)
	E.anchor 	= (E.body or R.area) and (E.anchor or {0,0})	--有body或area时anchor默认居中
	E.pivot		= E.pivot or E.anchor							--pivot默认与anchor相同
	
	E.body		= E.body and zoom_area(E.body,E.anchor,E.pivot)
	E.area		= E.area and zoom_area(E.area,E,anchor,E.pivot)
	E.from		= E.from and zoom_area(E.from,E,anchor,E.pivot)	
	E.to		= E.to   and zoom_area(E.to,E,anchor,E.pivot)
	E.feature		= E.feature		and zoom_feature(E.feature)
	E.feature_off	= E.feature_off	and zoom_feature(E.feature_off)
	E.items	= E.items and (function()
		for i,v in ipairs(E.items) do
			v.area = zoom_area(v.area,v.anchor or {-1,-1},v.pivot or v.anchor or {-1,-1})
			v.feature = zoom_feature(v.feature)
		end
		return E.items
	end)()
	return E
end

--根据anchor和pivot将area自适应
--外部参数为pos.ds pos.cs
function zoom_area(area,anchor,pivot)
	local dev_anchor = {}
	dev_anchor.x,dev_anchor.y = get_anchor_pos(pos.ds,anchor)						--获取开发环境下anchor真实坐标
	assert(dev_anchor.x and dev_anchor.y)
	
	local cur_anchor = {}
	cur_anchor.x,cur_anchor.y = get_anchor_pos(pos.cs,anchor)						--获取当前设备下anchor真实坐标
	assert(cur_anchor.x and cur_anchor.y)
	
	local dev_pivot = {}
	dev_pivot.x,dev_pivot.y = get_anchor_pos(area,pivot)							--获取开发环境下pivot真实坐标
	assert(dev_pivot.x and dev_pivot.y)
	
	local relative_x,relative_y = dev_anchor.x-dev_pivot.x,dev_anchor.y-dev_pivot.y	--计算相对位置的值
	relative_x,relative_y = relative_x*pos.xscl,relative_y*pos.yscl					--缩放相对位置的值
	local cur_pivot = {}
	cur_pivot.x,cur_pivot.y = cur_anchor.x-relative_x,cur_anchor.y-relative_y		--缩放后的pivot值
	
	return	{																		--返回自适应后的area
		math.ceil((area[1]-dev_pivot.x)*pos.xscl+cur_pivot.x),
		math.ceil((area[2]-dev_pivot.y)*pos.yscl+cur_pivot.y),
		math.ceil((area[3]-dev_pivot.x)*pos.xscl+cur_pivot.x),
		math.ceil((area[4]-dev_pivot.y)*pos.yscl+cur_pivot.y)}
end

--变换feature
function zoom_feature(feature)
	for i,v in ipairs(feature) do
		if v.anchor then
			v.x,v.y = zoom_pos(v.x,v.y,v.anchor)
		else
			v.x,v.y = math.ceil(v.x*pos.xscl),math.ceil(v.y*pos.yscl)
		end
	end
	return feature
end

--变换position
--外部参数为pos.ds pos.cs
function zoom_pos(x,y,anchor)
	local dev_anchor = {}
	dev_anchor.x,dev_anchor.y = get_anchor_pos(pos.ds,anchor)						--获取开发环境下anchor真实坐标
	assert(dev_anchor.x and dev_anchor.y)
	
	local cur_anchor = {}
	cur_anchor.x,cur_anchor.y = get_anchor_pos(pos.cs,anchor)						--获取当前设备下anchor真实坐标
	assert(cur_anchor.x and cur_anchor.y)
	
	local relative_x,relative_y = dev_anchor.x-x,dev_anchor.y-y						--计算相对位置的值
	relative_x,relative_y = relative_x*pos.xscl,relative_y*pos.yscl					--缩放相对位置的值
	
	return math.ceil(cur_anchor.x-relative_x),math.ceil(cur_anchor.y-relative_y)
end

--根据anchor类型在area中找到anchor真实坐标
function get_anchor_pos(area,anchor)
	local xL,xR,xM = area[1],area[3],(area[1]+area[3])/2
	local yT,yB,yM = area[2],area[4],(area[2]+area[4])/2
	return
	anchor[1]==-1 and xL or anchor[1]==0 and xM or anchor[1]==1 and xR,
	anchor[2]==-1 and yT or anchor[2]==0 and yM or anchor[2]==1 and yB
end

return pos