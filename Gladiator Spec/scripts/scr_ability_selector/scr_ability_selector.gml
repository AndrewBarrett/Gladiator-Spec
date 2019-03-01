var ability = argument0;

switch (ability)
{
	case "scharge":
	scr_warrior_glad_scharge()
	break;

	case "riposte":
	scr_warrior_glad_riposte()
	scr_combo_handler(ability);
	break;

	case "execute":
	scr_warrior_glad_execute()
	scr_combo_handler(ability);
	break;
	
	case "scrash":
	scr_warrior_glad_scrash();
	break;
	
	case "cleave":
	scr_warrior_glad_cleave();
	scr_combo_handler(ability);
	break;
	
	case "impale":
	scr_warrior_glad_impale();
	break;
	
	case "decapitate":
	scr_warrior_glad_decapitate();
	break;
	
	case "hstrike":
	scr_warrior_glad_hstrike();
	break;
	
	case "devastate":
	scr_warrior_glad_devastate();
	break;
	
	case "charge":
	scr_warrior_glad_charge();
	break;
}

