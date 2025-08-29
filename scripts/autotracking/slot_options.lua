function get_slot_options(slot_data)

    if slot_data["randomizeGems"] ~= nil then
		local obj = Tracker:FindObjectForCode('opt_gems')
		local stage = slot_data["randomizeGems"]
		
		if stage >= 1 then
			stage = 1
		end
		if obj then
			obj.CurrentStage = stage
		end
	end

    if slot_data["treasureSword"] ~= nil then
		local obj = Tracker:FindObjectForCode('opt_sword')
		local stage = slot_data["treasureSword"]
		
		if stage >= 1 then
			stage = 1
		end
		if obj then
			obj.CurrentStage = stage
		end
	end

    if slot_data["hardjumps"] ~= nil then
		local obj = Tracker:FindObjectForCode('opt_jumps')
		local stage = slot_data["hardjumps"]
		
		if stage >= 1 then
			stage = 1
		end
		if obj then
			obj.CurrentStage = stage
		end
	end
	
    if slot_data["hardcombat"] ~= nil then
		local obj = Tracker:FindObjectForCode('opt_combat')
		local stage = slot_data["hardcombat"]
		
		if stage >= 1 then
			stage = 1
		end
		if obj then
			obj.CurrentStage = stage
		end
	end

    if slot_data["endings"] ~= nil then
		Tracker:FindObjectForCode('opt_endings_req').AcquiredCount = slot_data["endings"]
	end
	
    if slot_data["gemsRequired"] ~= nil and slot_data["randomizeGems"] ~= nil and slot_data["gemsInPool"] ~= nil then
	
		local total = slot_data["gemsInPool"]
		local percent = slot_data["gemsRequired"]
	
		if slot_data["randomizeGems"] == 0 then
			Tracker:FindObjectForCode('opt_gems_req').AcquiredCount = 0
		elseif slot_data["randomizeGems"] == 1 then
			gem_req = (percent / 100) * total
			Tracker:FindObjectForCode('opt_gems_req').AcquiredCount = gem_req
		end
		
	end
	
-- called onClear, slot_data:
-- {
--         ["randomizeGems"] = 1,
--         ["gemsRequired"] = 75,
--         ["treasureSword"] = 0,
--         ["hardjumps"] = 0,
--         ["endings"] = 40,
--         ["gemsInPool"] = 4,
--         ["hardcombat"] = 0,
-- }


end