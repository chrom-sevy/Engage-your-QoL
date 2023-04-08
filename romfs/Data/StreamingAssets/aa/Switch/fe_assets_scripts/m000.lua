Include("Common")
g_pid_lueur				= "PID_M000_リュール"

g_key_attack			= "攻撃しよう_済"
g_key_go_closer			= "早く敵に近づこう_済"
g_key_go_attack			= "早く攻撃しよう_済"
g_key_engage			= "エンゲージしよう_済"
g_key_engage_attack		= "エンゲージ技使おう_済"
g_key_battle			= "戦闘前会話_リュール_ソンブル_済"

-- -----------------------------------

function Startup()
	
	Log("Startup")
	
	VariableSet( "禁止_持ち物", 2 )
	VariableSet( "禁止_直接ターゲット選択", 1 )
	VariableSet( "禁止_チェインアタック", 1 )
	VariableSet( "禁止_チェインガード", 1 )
	VariableSet( "禁止_ブレイク", 1 )
	VariableSet( "禁止_エンゲージキャンセル", 1 )
	
	-- 勝利条件の設定
	WinRuleSetDestroyBoss( true )	-- 敵将撃破
	WinRuleSetMID("MID_RULE_M000_WIN")
	LoseRuleSetMID( "MID_RULE_COMMON_LOSE" )

	ConfigSetSupportScene( CONFIG_ANIM_OFF )
	ConfigSetBattleScene( CONFIG_ANIM_OFF )

	フラグ登録()
end

function フラグ登録()
	VariableEntry(g_key_go_closer,			0)
	VariableEntry(g_key_attack,				0)
	VariableEntry(g_key_go_attack,			0)
	VariableEntry(g_key_engage,				0)
	VariableEntry(g_key_engage_attack,		0)
	VariableEntry(g_key_battle,				0)
end

function Cleanup()
	
	Log("Cleanup")
	
end

-- -----------------------------------

function Opening()
	
	Log("Opening")
	
end

function MapOpening()
	
	Log("MapOpening")
	
	
	-- マルスとシンクロ
	UnitCreateGodUnit(g_pid_lueur, "GID_M000_マルス")
	UnitSetEngageCount(g_pid_lueur, 3)
	
	
	CursorSetPos(5, 4)
	CursorSetDistanceMode(CURSOR_DISTANCE_NEAR)
	
	UnitMovePos(g_pid_lueur, 5, 4, MOVE_FLAG_NONE)
	UnitMoveWait()
end

-- -----------------------------------

function MapEnding()
	
	Log("MapEnding")
	
end

function Ending()
	
	Log("Ending")
	
end

function GameOver()
	
	Log("GameOver")
	
end