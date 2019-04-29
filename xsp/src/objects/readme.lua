local readme--[[

- body 可点区域 = {x1,y1,x2,y2}，代表实际点击的区域
	其中item中的body为偏移值，实际点击时会加上检测feature的第一个点的坐标

- area 检测区域 = {x1,y1,x2,y2}，代表检测feature的区域

- feature 特征 = {x=v1,y=v2,color=v3}的集合
	v1,v2为坐标 v3为RGB值
	检测区域为area，特别的，在view时检测区域是全屏
	
- items(默认可不填) = item的集合，用于view
	此时检测中必须feature和items全部符合才返回true

- feature_off 特征(关闭时)
	switch专用，代表按钮为关闭状态时的特征

- anchor 锚点类型 = {v1,v2}
	v1为水平方向：
		-1	居左
		0	居中
		1	居右
	v2为垂直方向：
		-1	居上
		0	居中
		1	居下

- pivot 中心(默认可不填) = {v1,v2}，含义与 anchor 相同
	表示body或area内部的锚点，用于与 anchor 配合来确定在不同分辨率下坐标缩放和平移
	由于多数情况下都是和anchor值相同，所以该字段默认可不填

- degree 模糊度(默认可不填) = v1
	该字段代表模糊匹配的值，具体可参考findColor内的degree说明


]]

return readme