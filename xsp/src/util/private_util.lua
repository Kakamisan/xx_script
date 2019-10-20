--click({1,2,3,4})
--click({1,2})
function click(body)
	if not body[4] then
		return click2(body)
	end
	local x,y = math.random(body[1],body[3]),math.random(body[2],body[4])
	touchDown(1,x,y)
	sleep(34,54)
	touchUp(1,x,y)
end
function click2(body)
	assert(body[2])
	local x,y = body[1],body[2]
	touchDown(1,x,y)
	sleep(34,54)
	touchUp(1,x,y)
end

--check_feature(E)
function check_feature(area,feature,degree)
	if not degree then
		return check_feature(area.area or pos.cs,area.feature,area.degree or 100)
	end
	if not feature then
		return true
	end
	local x = findColor(area,feature,degree)
	return x ~= -1
end

--check_feature_pos(E)
--查找item用
function check_feature_pos(area,feature,degree)
	if not degree then
		return check_feature_pos(area.area or pos.cs,area.feature,area.degree or 100)
	end
	assert(feature)
	local x,y = findColor(area,feature,degree)
	if x ~= -1 then
		return x,y
	end
	return false
end

--check_feature_poss(E)
--查找items用
function check_feature_poss(area,feature,degree)
	if not degree then
		return check_feature_poss(area.area or pos.cs,area.feature,area.degree or 100)
	end
	assert(feature)
	local mp = findColors(area,feature,degree)
	if #mp ~= 0 then
		return mp
	end
	return false
end

--eq(val1,val2)		判断val1和val2是否值相等
function eq(V1,V2)
	if type(V1) == "table" and "table" == type(V2) then
		if #V1 ~= #V2 then
			return false
		end
		for i,v in ipairs(V1) do
			if not V2[i] then
				return false
			end
			if not eq(v,V2[i]) then
				return false
			end
		end
		return true
	elseif V1 == V2 then
		return true
	end
	return false
end

--mapping({x,y},{x,y},Len)	生成A到B之间的平滑曲线，点个数为N
function mapping(A,B,N)
	local x1,y1,x2,y2 = A[1],A[2],B[1],B[2]
	if x2 == x1 then
		x2 = x1+1
	end
	if y2 == y1 then
		y2 = y1+1
	end
	local k = (y2-y1)/(x2-x1)
	local a = y1-k*x1
	local Tab = {}
	local xL,yL = x2-x1,y2-y1
	local yOffset = math.abs(yL)/8
	for i = 1,N,1 do
		local t = (i/N)^2
		local tx = xL*t+x1			--用于计算y，防止斜率过大时坐标产生断崖
		local x = math.ceil(tx)+math.random(-1,1)
		local y = math.ceil(k*tx+a)+math.ceil((1-t)^2*yOffset-yOffset)+math.random(-1,1)
		table.insert(Tab,{x,y})
	end
	return Tab
end

--erase_near({{x,y},...},Distance)	返回点集中去除相近点之后的点集
function erase_near(mp,D)
	if not mp or #mp == 0 then
		return {}
	end
	if not D then
		D = 25
	end
	local ret = {}
	local flag = true
	while(flag) do
		--取第一个点
		local p = mp[1]
		--p点插入到返回
		table.insert(ret,p)
		--删除全部与p相近的点
		for i=#mp,1,-1 do
			if ((mp[i].x-p.x)^2+(mp[i].y-p.y)^2)^0.5 <= D then
				table.remove(mp,i)
			end
		end
		--如果mp空了，退出循环
		if #mp == 0 then
			flag = false
		end
	end
	return ret
end