-- 自动表格加载
function csv_read()
	local file_list = getenvirfilelist()
	for i=1,#file_list do
		if string.find(file_list[i], ".csv") then
			newreadcsv(file_list[i])
--			sendmsg_0(actor,file_list[i])
		end
	end
end


function getitemattrself(actor,itemname)
	local res_tbl = {}
	local itemid = getstditeminfo(itemname,0)

	-- 物防
	local itemac = getstditematt(itemid,9)
	table.insert(res_tbl,itemac)
	table.insert(res_tbl,"_")
	local item2ac = getstditematt(itemid,10)
	table.insert(res_tbl,item2ac)
	table.insert(res_tbl,"_")

	-- 攻击
	local itemdc = getstditematt(itemid,3)
	table.insert(res_tbl,itemdc)
	table.insert(res_tbl,"_")
	local itemmdc = getstditematt(itemid,4)
	table.insert(res_tbl,itemmdc)
	table.insert(res_tbl,"_")
	-- 魔法
	local itemmc = getstditematt(itemid,5)
	table.insert(res_tbl,itemmc)
	table.insert(res_tbl,"_")
	local itemmmc = getstditematt(itemid,6)
	table.insert(res_tbl,itemmmc)
	table.insert(res_tbl,"_")
	-- 道术
	local itemsc = getstditematt(itemid,7)
	table.insert(res_tbl,itemsc)
	table.insert(res_tbl,"_")
	local itemmsc = getstditematt(itemid,8)
	table.insert(res_tbl,itemmsc)
	table.insert(res_tbl,"_")

	-- 魔防 
	local itemmac = getstditematt(itemid,11)
	table.insert(res_tbl,itemmac)
	table.insert(res_tbl,"_")
	local itemmmac = getstditematt(itemid,12)
	table.insert(res_tbl,itemmmac)
	table.insert(res_tbl,"_")

	-- 攻击伤害
	local gjsh = getstditematt(itemid,25)
	table.insert(res_tbl,gjsh)
	table.insert(res_tbl,"_")
	-- 物理伤害减少
	local wlshjs = getstditematt(itemid,26)
	table.insert(res_tbl,wlshjs)
	table.insert(res_tbl,"_")
	-- 暴击几率增加
	local bjjlzj = getstditematt(itemid,21)
	table.insert(res_tbl,bjjlzj)
	table.insert(res_tbl,"_")
	-- 人物体力增加
	local rwtlzj = getstditematt(itemid,30)
	table.insert(res_tbl,rwtlzj)

	-- 人物魔力增加
	-- local rwmlzj = getstditematt(itemid,31)
	
	local res = table.concat(res_tbl)
	return res
end