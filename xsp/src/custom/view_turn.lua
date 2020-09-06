local vt = {}

--vt[0] 				= {view_sample}
--vt[view_sample] 	= {view_sample}
vt[view_pjjc]	= {
	view_pjjc
	,view_pjjc_team
}

vt[view_pjjc_team]	= {
	view_pjjc_team
	,view_pjjc
	,view_slc_team
}

vt[view_slc_team]	= {
	view_slc_team
	,view_pjjc_team
}

vt[0] = {
	view_pjjc
	,view_pjjc_team
	,view_slc_team
}

return vt