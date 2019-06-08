local readme--[[

- body = {x1,y1,x2,y2} 可点区域，代表实际点击的区域
	其中item中的body为偏移值，实际点击时会加上检测feature的第一个点的坐标

- area = {x1,y1,x2,y2} 检测区域，代表检测feature的区域

- feature = {{x=v1,y=v2,color=v3},...} 特征
	v1,v2为坐标 v3为RGB值
	检测区域为area，特别的，在view时检测区域是全屏
	
- items = {item,...}(默认可不填)，用于view
	此时检测中必须feature和items全部符合才返回true

- disable = {{x=v1,y=v2,color=v3},...}(默认可不填) 反特征，用于view
	同feature，当该点符合时，表明不是该view

- feature_off = {{x=v1,y=v2,color=v3},...} 特征(关闭时)
	switch专用，代表按钮为关闭状态时的特征

- anchor = {v1,v2} 锚点类型
	v1为水平方向：
		-1	居左
		0	居中
		1	居右
	v2为垂直方向：
		-1	居上
		0	居中
		1	居下

- pivot = {v1,v2}(默认可不填) 中心，{v1,v2}含义与 anchor 相同
	表示body或area内部的锚点，用于与 anchor 配合来确定在不同分辨率下坐标缩放和平移
	由于多数情况下都是和anchor值相同，所以该字段默认可不填

- degree = v1(默认可不填) 模糊度
	该字段代表模糊匹配的值，具体可参考findColor内的degree说明


]]

return readme