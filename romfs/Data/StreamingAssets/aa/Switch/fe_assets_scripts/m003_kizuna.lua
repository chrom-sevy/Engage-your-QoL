Include("Common")
Include("Hub_Common")

-- -----------------------------------

function Startup()
	
	Log("Startup")
	
end

function Cleanup()
	
	Log("Cleanup")
	
end

-- -----------------------------------

function Opening()
	
	Log("Opening")
	
	-- PuppetDemo("M003", "MID_ED4")
	
end

function MapOpening()
	
	Log("MapOpening")
	
	-- シグルド加入
	GodUnitCreate("GID_シグルド")

	-- somniel preps

		--[[
			I usually get around 150 bondfragments
			but I am really not sure how consistent it is, so I'll just give 100
		]]
		ItemGain("IID_絆のかけら100")

		-- very likely to get a pretty pebble in the somniel
		ItemGain("IID_綺麗な石ころ")


end

function MapEnding()
	
	Log("MapEnding")
	
end

function Ending()
	
	Log("Ending")
	
	-- PuppetDemo("M003", "MID_ED5")
	-- PuppetDemo("M003", "MID_ED6")
end

