	function BuildSoundsTable(custom_name)
	{
		local sounds = 
		{
			// biker.txt ====================================================================================================
			_PlayerInfoRemarkableBlankBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"
			],
			C6M3PlayerNiceShotBiker = [
				"player/survivor/voice/" + custom_name + "/niceshot01.wav",  //Nice shot.
				"player/survivor/voice/" + custom_name + "/niceshot02.wav",  //Nice shot.
				"player/survivor/voice/" + custom_name + "/niceshot03.wav",  //Good shot.
				"player/survivor/voice/" + custom_name + "/niceshot04.wav",  //Good shot.
				"player/survivor/voice/" + custom_name + "/niceshot07.wav",  //Whoah. Nice shot.
				"player/survivor/voice/" + custom_name + "/niceshot08.wav",  //Good shot!
				"player/survivor/voice/" + custom_name + "/niceshot09.wav",  //Great shot!
				"player/survivor/voice/" + custom_name + "/niceshot10.wav"  //Good one!
			],
			L4D1PlayerRemarkFarm05_path09BBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0105.wav"  //Shit. Never thought I'd go lookin' for the military.
			],
			L4D1PlayerRemarkFarm05_path09CBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0105.wav"  //Shit. Never thought I'd go lookin' for the military.
			],
			L4D1ReviveMeInterruptedMinorBiker = [
				"player/survivor/voice/" + custom_name + "/hurtminor01.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor02.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor03.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor04.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor05.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor06.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor07.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor08.wav"  //[Pain noise - short minor pain]
			],
			L4D1ReviveMeInterruptedMajorBiker = [
				"player/survivor/voice/" + custom_name + "/hurtmajor01.wav",  //[Pain noise - ahh]
				"player/survivor/voice/" + custom_name + "/hurtmajor02.wav",  //[Pain noise - huh]
				"player/survivor/voice/" + custom_name + "/hurtmajor03.wav",  //[Pain noise - oy]
				"player/survivor/voice/" + custom_name + "/hurtmajor04.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor05.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor06.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor07.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor08.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor09.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor10.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor11.wav"  //[Pain noise - ugh]
			],
			L4D1ReviveMeInterruptedCriticalBiker = [
				"player/survivor/voice/" + custom_name + "/hurtcritical01.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical02.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical03.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical04.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical05.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical06.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical07.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical08.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical09.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical10.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical11.wav"  //[Pain noise - loud major pain]
			],
			L4D1SurvivorMournBillBiker = [
				"player/survivor/voice/" + custom_name + "/griefvet01.wav",  //Bill's gone!
				"player/survivor/voice/" + custom_name + "/griefvet02.wav",  //Rest in peace, old man.
				"player/survivor/voice/" + custom_name + "/griefvet03.wav"  //Shit, I'm gonna miss the old guy.
			],
			L4D1SurvivorMournLouisBiker = [
				"player/survivor/voice/" + custom_name + "/griefmanager01.wav",  //Ahhh. the manager's down for the count.
				"player/survivor/voice/" + custom_name + "/griefmanager02.wav",  //Ah shit, I was just starting to like that guy.
				"player/survivor/voice/" + custom_name + "/griefmanager03.wav",  //Damn it, he didn't deserve this.
				"player/survivor/voice/" + custom_name + "/griefmanager04.wav",  //The manager's down for the count.
				"player/survivor/voice/" + custom_name + "/griefmanager05.wav"  //Shit, I was just starting to like that guy.
			],
			L4D1SurvivorMournZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/grieffemalegeneric03.wav",  //Ah hell, she's dead.
				"player/survivor/voice/" + custom_name + "/griefteengirl01.wav",  //Ahh Zoey. No.
				"player/survivor/voice/" + custom_name + "/griefteengirl02.wav"  //Ahh damnit, not Zoey.
			],
			PlayerRelaxedSighBiker = [
				"player/survivor/voice/" + custom_name + "/painreliefsigh02.wav",  //ah
				"player/survivor/voice/" + custom_name + "/painreliefsigh03.wav",  //ah
				"player/survivor/voice/" + custom_name + "/painreliefsigh04.wav"  //ohh
			],
			PlayerUseAdrenalineBiker = [
				"player/survivor/voice/" + custom_name + "/painreliefsigh01.wav",  //Ahhh
				"player/survivor/voice/" + custom_name + "/painreliefsigh05.wav"  //ohh
			],
			L4D1ThanksGotItemBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			L4D1RescuedSurvivorBiker = [
				"player/survivor/voice/" + custom_name + "/scenariojoin01.wav",  //I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin02.wav",  //Hey, I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin03.wav",  //Hey, I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin04.wav"  //Hello!
			],
			PlayerGivenItemBiker = [
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks11.wav",  //Thanks, dude.
				"player/survivor/voice/" + custom_name + "/thanks12.wav",  //Thanks for that.
				"player/survivor/voice/" + custom_name + "/thanks04.wav"  //Thanks. [noise you make gun clicking your mouth twice]
			],
			ItemDonorProducerBiker = [
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks12.wav",  //Thanks for that.
				"player/survivor/voice/" + custom_name + "/thanks04.wav"  //Thanks. [noise you make gun clicking your mouth twice]
			],
			ItemDonorCoachBiker = [
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks11.wav",  //Thanks, dude.
				"player/survivor/voice/" + custom_name + "/thanks12.wav"  //Thanks for that.
			],
			ItemDonorGamblerBiker = [
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks11.wav",  //Thanks, dude.
				"player/survivor/voice/" + custom_name + "/thanks12.wav"  //Thanks for that.
			],
			ItemDonorMechanicBiker = [
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks11.wav",  //Thanks, dude.
				"player/survivor/voice/" + custom_name + "/thanks12.wav"  //Thanks for that.
			],
			ItemDonorManagerBiker = [
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks11.wav",  //Thanks, dude.
				"player/survivor/voice/" + custom_name + "/thanks12.wav"  //Thanks for that.
			],
			ItemDonorTeenGirlBiker = [
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks12.wav"  //Thanks for that.
			],
			ItemDonorNamVetBiker = [
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks11.wav",  //Thanks, dude.
				"player/survivor/voice/" + custom_name + "/thanks12.wav"  //Thanks for that.
			],
			L4D1HealThanksBiker = [
				"player/survivor/voice/" + custom_name + "/thanks03.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks04.wav",  //Thanks [noise you make gun clicking your mouth twice]
				"player/survivor/voice/" + custom_name + "/thanks05.wav",  //Thanks, man.
				"player/survivor/voice/" + custom_name + "/thanks06.wav",  //Hey, thanks man.
				"player/survivor/voice/" + custom_name + "/thanks09.wav"  //Thanks, I owe ya.
			],
			L4D1ReviveThanksBillBiker = [
				"player/survivor/voice/" + custom_name + "/thanks14.wav",  //Thanks brother.
				"player/survivor/voice/" + custom_name + "/thanks16.wav"  //Thanks, Bill.
			],
			L4D1ReviveThanksLouisBiker = [
				"player/survivor/voice/" + custom_name + "/thanks13.wav",  //Thanks bro.
				"player/survivor/voice/" + custom_name + "/thanks18.wav",  //Thanks, Louis.
				"player/survivor/voice/" + custom_name + "/thanks19.wav",  //Thanks, Louis. I owe you one
				"player/survivor/voice/" + custom_name + "/totherescuethanks03.wav",  //Hey, thanks for not forgettin' me.
				"player/survivor/voice/" + custom_name + "/totherescuethanks05.wav"  //Hell, I guess that's one I owe YOU.
			],
			L4D1ReviveThanksZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/thanks17.wav",  //Thanks, Zoey.
				"player/survivor/voice/" + custom_name + "/totherescuethanks04.wav"  //I owe you one.
			],
			BotHurrahAlsoBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah11.wav",  //YEAH!
				"player/survivor/voice/" + custom_name + "/hurrah20.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive06.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive10.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/taunt02.wav"  //HELL YEAH!
			],
			L4D1AutoYouAreWelcomeBiker = [
				"player/survivor/voice/" + custom_name + "/youarewelcome02.wav",  //I got your back.
				"player/survivor/voice/" + custom_name + "/youarewelcome04.wav",  //Hey, no problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome05.wav",  //No problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome06.wav",  //Sure.
				"player/survivor/voice/" + custom_name + "/youarewelcome07.wav",  //I told ya I'd take care of ya.
				"player/survivor/voice/" + custom_name + "/youarewelcome08.wav",  //No, thank YOU!
				"player/survivor/voice/" + custom_name + "/youarewelcome09.wav",  //Yer welcome.
				"player/survivor/voice/" + custom_name + "/youarewelcome10.wav",  //Yea, I�m pretty awesome.
				"player/survivor/voice/" + custom_name + "/youarewelcome11.wav",  //No problemo, pal.
				"player/survivor/voice/" + custom_name + "/youarewelcome12.wav",  //It's all good.
				"player/survivor/voice/" + custom_name + "/youarewelcome13.wav",  //Gotcha.
				"player/survivor/voice/" + custom_name + "/youarewelcome14.wav"  //Whatever, whenever, man.
			],
			L4D1BotAttentionBattleBiker = [
				"player/survivor/voice/" + custom_name + "/answerready05.wav",  //Let's go kill somethin'!
				"player/survivor/voice/" + custom_name + "/answerready04.wav",  //Let's go break stuff!
				"player/survivor/voice/" + custom_name + "/answerready03.wav",  //Yeah, let's do it.
				"player/survivor/voice/" + custom_name + "/generic65.wav",  //What?
				"player/survivor/voice/" + custom_name + "/imwithyou07.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/moveon01.wav",  //Allright, let's go
				"player/survivor/voice/" + custom_name + "/moveon02.wav",  //Come on, we ain't got all day.
				"player/survivor/voice/" + custom_name + "/moveon03.wav",  //Let's go.
				"player/survivor/voice/" + custom_name + "/moveon04.wav",  //Let's get moving.
				"player/survivor/voice/" + custom_name + "/moveon05.wav",  //Let's move.
				"player/survivor/voice/" + custom_name + "/moveon07.wav",  //Time to go, ladies.
				"player/survivor/voice/" + custom_name + "/moveon08.wav",  //Let's go.
				"player/survivor/voice/" + custom_name + "/moveon09.wav",  //I'm tired of waitin' around here. Come on, let's go.
				"player/survivor/voice/" + custom_name + "/moveon10.wav",  //Come on, let's go.
				"player/survivor/voice/" + custom_name + "/moveon11.wav",  //Come on, let's move.
				"player/survivor/voice/" + custom_name + "/moveon12.wav",  //Come on,come on, let's go.
				"player/survivor/voice/" + custom_name + "/leadon01.wav",  //I'll follow you.
				"player/survivor/voice/" + custom_name + "/leadon02.wav",  //You go ahead, I'll follow you.
				"player/survivor/voice/" + custom_name + "/leadon03.wav",  //You take the lead.
				"player/survivor/voice/" + custom_name + "/leadon04.wav",  //Go ahead.
				"player/survivor/voice/" + custom_name + "/leadon05.wav",  //Go ahead.
				"player/survivor/voice/" + custom_name + "/leadon06.wav",  //After you.
				"player/survivor/voice/" + custom_name + "/imwithyou01.wav",  //Right behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou02.wav",  //I've got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou03.wav",  //I've got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou04.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou05.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou06.wav",  //Right behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou07.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou08.wav",  //I got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou09.wav",  //Behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou10.wav"  //I'm here!
			],
			L4D1BotNoteHumanAttentionBiker = [
				"player/survivor/voice/" + custom_name + "/askready01.wav",  //Ready for this?
				"player/survivor/voice/" + custom_name + "/askready02.wav",  //Ready for this?
				"player/survivor/voice/" + custom_name + "/askready03.wav",  //Ready?
				"player/survivor/voice/" + custom_name + "/askready04.wav",  //Ready?
				"player/survivor/voice/" + custom_name + "/askready05.wav",  //Ready for some fun?
				"player/survivor/voice/" + custom_name + "/askready06.wav",  //Everybody ready?
				"player/survivor/voice/" + custom_name + "/askready07.wav",  //You ready to roll?
				"player/survivor/voice/" + custom_name + "/askready08.wav",  //We ready?
				"player/survivor/voice/" + custom_name + "/askready09.wav",  //Everyone ready?
				"player/survivor/voice/" + custom_name + "/askready10.wav",  //You ladies ready for this?
				"player/survivor/voice/" + custom_name + "/generic65.wav"  //What?
			],
			L4D1BotPlayer_YourWelcomeBiker = [
				"player/survivor/voice/" + custom_name + "/youarewelcome02.wav",  //I got your back.
				"player/survivor/voice/" + custom_name + "/youarewelcome04.wav",  //Hey, no problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome05.wav",  //No problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome06.wav",  //Sure.
				"player/survivor/voice/" + custom_name + "/youarewelcome07.wav",  //I told ya I'd take care of ya.
				"player/survivor/voice/" + custom_name + "/youarewelcome08.wav",  //No, thank YOU!
				"player/survivor/voice/" + custom_name + "/youarewelcome09.wav",  //Yer welcome.
				"player/survivor/voice/" + custom_name + "/youarewelcome10.wav",  //Yea, I�m pretty awesome.
				"player/survivor/voice/" + custom_name + "/youarewelcome11.wav",  //No problemo, pal.
				"player/survivor/voice/" + custom_name + "/youarewelcome12.wav",  //It's all good.
				"player/survivor/voice/" + custom_name + "/youarewelcome13.wav",  //Gotcha.
				"player/survivor/voice/" + custom_name + "/youarewelcome14.wav"  //Whatever, whenever, man.
			],
			L4D1BotReassureComingBiker = [
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes02.wav",  //Okay.
				"player/survivor/voice/" + custom_name + "/yes03.wav",  //Yep.
				"player/survivor/voice/" + custom_name + "/yes04.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes05.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes06.wav"  //Roger that good buddy.
			],
			L4D1BotReassureNearbyBiker = [
				"player/survivor/voice/" + custom_name + "/imwithyou01.wav",  //Right behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou02.wav",  //I've got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou03.wav",  //I've got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou04.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou05.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou06.wav",  //Right behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou07.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou08.wav",  //I got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou09.wav",  //Behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou10.wav"  //I'm here!
			],
			L4D1BotYesReadyBiker = [
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes02.wav",  //Okay.
				"player/survivor/voice/" + custom_name + "/yes03.wav",  //Yep.
				"player/survivor/voice/" + custom_name + "/yes04.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes05.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes06.wav"  //Roger that good buddy.
			],
			C6M1Intro_01bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting02.wav",  //Nope!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting03.wav",  //Nope, not a chance.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting05.wav"  //Nope, no way in hell.
			],
			C6M1Intro_01Biker01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting33.wav"  //And I'm telling you: I can't lower the bridge, you'll have to get around to the other side.
			],
			C6M1Intro_01Biker01CoachBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting39.wav"  //Are any of you vampires?
			],
			C6M1Intro_01Biker01ProducerBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting10.wav",  //Ma'am uhh Miss? I'm sorry but I can't lower the bridge myself. If you can get to the other side I can help you lower it.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting39.wav"  //Are any of you vampires?
			],
			C6M1Intro_01Biker01MechanicBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting01.wav",  //Heyyy! Nice ride!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting07.wav",  //Heyyy! Nice ride!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting08.wav"  //Heyy! Are you a racecar driver?
			],
			C6M1Intro_01Biker01GamblerBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting33.wav"  //And I'm telling you, I can't lower the bridge. You gotta get around to the other side.
			],
			C6M1Intro_01Biker01GamblerProducerBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting20.wav",  //Hey!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting27.wav",  //Hey!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting28.wav",  //Hey!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting19.wav",  //You down there, be calm. We're cops.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting30.wav"  //Brother, that's what I'm trying to tell ya. We can't get this thing down ourselves. You have to get to the other side.
			],
			C6M1Intro_01dBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting04.wav",  //Generator's out. Get to the other side and we'll help you get this thing down!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting06.wav"  //Can't generator's out
			],
			C6M1Intro_02bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting09.wav"  //Can't! Generator's out. Get to the other side and fill it up! We'll cover ya!
			],
			C6M1Intro_05bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting11.wav"  //Ahh sorry, No Ma'am.
			],
			C6M1Intro_05dBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting12.wav",  //No ma'am.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting14.wav"  //No ma'am.
			],
			C6M1Intro_06aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting13.wav"  //If I could, I would. Can't. Get to the other side and we can lower it together.
			],
			C6M1Intro_06cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting15.wav",  //(fumbling) Uhhh yyyeaaah.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting16.wav"  //Yeah.
			],
			C6M1Intro_06eBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting17.wav"  //HELL YEAH!
			],
			C6M1Intro_07aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting18.wav"  //If you want to keep going this way, you're gonna have to walk to the other side of this bridge and then me and an some uhh other cops up here can help you lower the bridge.
			],
			C6M1Intro_09cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting21.wav"  //I was talking to the little lady.
			],
			C6M1Intro_09gBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting22.wav"  //Ahh shit. Nooo. But if you can get to the other side we can help you lower it.
			],
			C6M1Intro_10aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting23.wav",  //Go to hell suit.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting24.wav",  //Bite me Colonel Sanders.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting25.wav"  //Bite me Colonel Sanders.
			],
			C6M1Intro_10cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting26.wav"  //Hell yeah, I'll help *YOU*.
			],
			C6M1Intro_14bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting29.wav",  //Hey! I heard that.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting33.wav",  //And I'm telling you: I can't lower the bridge, you'll have to get around to the other side.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting31.wav"  //Is there anyone of you four who isn't an asshole?
			],
			C6M1Intro_16bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting32.wav",  //Look, I don't love this bridge. But we just lost a man and� Sorry brother, but you are on your own.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting34.wav"  //Brother, I don't love this bridge, but right now we just lost a man and got a man down. Sorry, you are on your own.
			],
			C6M1Intro_18aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting35.wav"  //Okay! Bridge is down! That's as far as it goes.
			],
			C6M1Intro_18cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting36.wav"  //Really, this is as far as it goes. Never saw it any lower.
			],
			C6M1Intro_18eBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting37.wav"  //Oh yeah... uh, yeah it is.
			],
			C6M1Intro_19aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting38.wav"  //Kick ASS! Now all you gotta do is go back into town, find some way to cross the river, fight your way to the other side of this bridge, refuel the generator and get it back going. Then its kissing time!
			],
			C6M1Intro_20cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting40.wav"  //Sorry, can't.
			],
			C6M1Intro_20eBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting41.wav",  //Louis! I told you, there were vampires!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting41.wav"  //Louis! I told you, there were vampires!
			],
			C6M1Intro_20fBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting42.wav"  //I'm not talking to any goddamn vampires.
			],
			C6M1Intro_24bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting43.wav"  //Yeah! Yeah! That's what I've been saying.
			],
			C6M1Intro_24dBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting44.wav"  //Sorry brother. Like I've been telling you. This bridge is up until the generator gets refueled.
			],
			C6M3_BridgeDownBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav",  //
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun01.wav",  //Don't just stand there! HAUL ASS!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun02.wav"  //Don't just stand there! HAUL ASS!
			],
			c6m3_outroBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav",  //
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			c6m3_outroL4D1Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic13.wav"  //I hate goodbyes.
			],
			c6m3_outroL4D1010aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic19.wav"  //Yeah.
			],
			c6m3_outroL4D104bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic09.wav"  //What? Seriously, what?
			],
			c6m3_outroL4D108aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic12.wav"  //No, I haven't heard that one.
			],
			c6m3_outroL4D1AllBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic01.wav",  //You know, they were all right.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic02.wav"  //I'm gonna miss them.
			],
			c6m3_outroL4D1CoachBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic10.wav"  //Bye Coach! Keep the pedal to the metal!
			],
			c6m3_outroL4D1CopGibbsBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic14.wav",  //I really am a cop you know!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic15.wav",  //I really am a cop!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic03.wav",  //I love that car.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic04.wav"  //Look at that car go!
			],
			c6m3_outroL4D1GamblerBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic05.wav"  //Nick! Good luck, my brother!
			],
			c6m3_outroL4D1MechanicBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic11.wav",  //See Ya Ellis! Keep the pedal to the metal!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun06.wav"  //Hey Ellis, I HATE YOUR HAT! [laughs]
			],
			c6m3_outroL4D1ProducerBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic07.wav",  //Bye-bye RO! My lovely little angel.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic08.wav",  //I'm gonna miss Ro.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic16.wav",  //Bye RO! I love you!!!!!!!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic17.wav",  //Bye RO! I love you!!!!!!! (sobbing) I love you!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic18.wav"  //Go, Ro, go!
			],
			IncapBounce2Biker = [
				"player/survivor/voice/" + custom_name + "/staytogether03.wav",  //Keep together!
				"player/survivor/voice/" + custom_name + "/staytogether04.wav",  //Stay together!
				"player/survivor/voice/" + custom_name + "/staytogether05.wav",  //Don't split up!
				"player/survivor/voice/" + custom_name + "/staytogether09.wav",  //Stay together!
				"player/survivor/voice/" + custom_name + "/staytogether12.wav"  //Keep together!
			],
			L4D1_NiceJobPourBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob03.wav"  //Nice job.
			],
			L4D1_AttractPlayerForThrowBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_finalel4d1throwitems01.wav",  //Hey come over here.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_finalel4d1throwitems02.wav",  //Take this!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_finalel4d1throwitems03.wav"  //You can have this.
			],
			L4D1_SurvivorBotTakeThisItemBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalefinalgas02.wav",  //Here, you're gonna need this.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalefinalgas04.wav",  //You lookin' for this?
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalefinalgas01.wav",  //Here, you're gonna need this.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalefinalgas03.wav"  //Take this, now be safe.
			],
			WorldC6M3_ByBridge01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun03.wav"  //Get to your car, we'll hold them off!
			],
			C6M3_BridgeGettoCarBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun04.wav",  //Get your asses to your car!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun05.wav"  //Get your goddamn asses to your car!
			],
			WorldC6M3Loss2Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_loss01.wav",  //There's not many of us left, brother.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_loss02.wav"  //
			],
			C7M1_saferoom01Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro01.wav"  //Is this the Keys? Because I don't wanna live here.
			],
			C7M1_saferoom04Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro02.wav",  //And why don't we want any of these perfectly good boats?
				"player/survivor/voice/" + custom_name + "/c6dlc3intro03.wav"  //And why don't we want any of these boats?  They look cool.
			],
			C7M1_saferoom05Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro04.wav"  //Louis. Tell Zoey I don't know what's going on.
			],
			C7M1_saferoom06Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro05.wav",  //Found one.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro06.wav",  //Found one.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro09.wav",  //Found one.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro10.wav",  //Found one.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro11.wav",  //Found one.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro12.wav"  //Hey! Found one!
			],
			C7M1_saferoom07aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro13.wav"  //What? We're not even gonna try driving it on the ground?
			],
			C7M1_saferoom12aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro15.wav"  //Really? This is you pissed?
			],
			C7M1_saferoom13Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro17.wav"  //I think those are Bill's tears.
			],
			C7M1_saferoom14aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro18.wav"  //Hey, I ain't the one that thought we could drive a frickin'  train through the ocean.
			],
			C7M1_saferoom15bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro19.wav",  //Wow, I never thought I'd say this, but I think I wanna hang out with Louis.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro20.wav"  //Louis, I never thought I'd say this, but I think I wanna hang out with you.
			],
			C7M1_saferoom16Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro21.wav"  //Hey Bill, I think I mighta missed the finer points of your plan. I caught all the train stuff. Something about a boat to an island paradise. But I missed the part where we're stranded in the middle of goddamn nowhere.
			],
			C7M1_saferoom16bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro22.wav"  //I'm goin', I'm goin'.
			],
			C7M1_saferoom17Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro23.wav"  //Yeah! Sandy beaches. Coconuts. Sand. Beaches. Sand... Wait a minute, I hate islands.
			],
			C7M1_saferoom18aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro24.wav"  //Okay. I vote for the island paradise where we don't have to fight any more zombies.
			],
			C7M1_saferoom21Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro25.wav",  //Aye, Aye Captain!
				"player/survivor/voice/" + custom_name + "/c6dlc3intro27.wav"  //Bill, when you sailed ships were they all still made of wood?
			],
			C7M1_saferoom21aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro26.wav"  //Nah, don't worry, I hate boats too.
			],
			C7M1OpenTankDoorBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor01.wav",  //Get ready with some fire.
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor02.wav",  //Alright, alright, I'll be the brave one.
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor03.wav",  //Oh shit. There is a tank in here.
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor04.wav"  //Hey, remember who letcha out of here.
			],
			C7M1OpenTankDoorTieBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor05.wav",  //Go for the one with the tie.
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor06.wav"  //Psst! Go for the one with the tie.
			],
			C7M1IntroBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro07.wav",  //Why'd we stop?
				"player/survivor/voice/" + custom_name + "/c6dlc3intro08.wav",  //Holy shit! Did that truck have a head-on collision with a boat? Man, I wish I could have seen that.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro14.wav",  //Man, Zoey is pissed.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro16.wav",  //So this is the Florida Keys. Crazy how it looks like some shithole in the middle of nowhere.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro28.wav"  //I was getting' tired of being cooped up, lookin' forward to some walking.
			],
			InfoRemc7m1_pretank01Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard04.wav"  //Fine with me.
			],
			InfoRemc7m1_pretank03Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard09.wav",  //What?
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard10.wav"  //What?
			],
			InfoRemc7m1_pretank04BillBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard11.wav"  //Hey, Bill. Zoey said you should open the door.
			],
			InfoRemc7m1_pretank04Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard12.wav"  //No pro-- Hey... Hey! Wait a minute!
			],
			InfoRemc7m1_tankcar01Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intanktraincar01.wav"  //Tanks?
			],
			C7M2_saferoom02aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom02.wav"  //Whoa. How'd you do that?
			],
			C7M2_saferoom02cBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom03.wav"  //Bullshit. Say "Bill's an idiot" in Japanese.
			],
			C7M2_saferoom02eBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom04.wav"  //Nice.
			],
			C7M2_saferoom03Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom05.wav"  //Louis, if you don't stop being positive, I'm gonna sink the boat just to make you sad.
			],
			C7M2_saferoom03bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom06.wav"  //About to die in a brick factory? Cause I'm about to do that too. And I got to complain about shit the whole time.
			],
			C7M2_saferoom05aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom09.wav",  //Okay. But why didn't we drive one of those boats to look for a sail boat?
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom10.wav"  //Okay. But why didn't we drive one of the other boats to look for a sail boat?
			],
			C7M2SafeRoomBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom01.wav",  //What the hell does this mean?
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom07.wav",  //Hey, Louis. We been through the whole goddamn country, and it's all one big shithole. Still think it's going back to normal?
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom08.wav",  //Okay. Explain to me again why we didn't take any one of the perfectly good boats we passed?
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom11.wav"  //I'm still not seeing a boat. Why don't we head back and see if the train floats?
			],
			Player_WarnMegaMobc7m201Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill04.wav",  //Into the chute!
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill05.wav"  //Get into the chute!
			],
			C7M3_saferoom001Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom01.wav"  //I wish I was heading to a deserted island. Can we each get our own?
			],
			C7M3_saferoom002Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom02.wav"  //I hate your good feelings.
			],
			C7M3_saferoom004bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom03.wav",  //Why aren't I allowed to shoot you again?
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom04.wav",  //Yeah, I get it, Louis. Bill gets it for chrissake, and he can't even work a flush toilet.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom06.wav",  //Louis, you're such a nerd.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom07.wav",  //Nerd.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom08.wav"  //You're such a nerd.
			],
			C7M3_saferoom006aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom05.wav"  //No more vampires.
			],
			C7M3_saferoom008Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom09.wav"  //Why don't we just live on the boat?
			],
			C7M3_saferoom008bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom10.wav"  //Well� there was that ship back there.
			],
			C7M3_saferoom012aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom12.wav"  //Jesus, have you ever been to an island? They're goddamn horrible.
			],
			C7M3_saferoom012cBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom13.wav"  //They're not the only ones...
			],
			C7M3_saferoom012eBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom14.wav",  //I hate this plan.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom15.wav"  //I hate this plan.
			],
			C7M3_saferoom013Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom16.wav"  //Start hating it.
			],
			C7M3_saferoom013bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom17.wav",  //I hate it now too.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom19.wav"  //Yeah, I guess I hate it now, too.
			],
			C7M3_saferoom013dBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom18.wav"  //I seriously doubt it.
			],
			C7M3_saferoom014Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom20.wav"  //I hate fish.
			],
			C7M3_saferoom014bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom21.wav"  //Oh no, I like eating them. That's one of the ways I let fish know how much I hate them.
			],
			C7M3_saferoom015Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom22.wav"  //The vampires want to kill us, the army wants to kill us. With our luck, Zoey probably crossed the mob. What the hell makes you think we're gonna live to see Bill's horrible goddamn island in the keys?
			],
			C7M3_saferoom016aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom23.wav",  //That's the spirit allright - of insanity.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom26.wav"  //I mean, I'd like to hear your reasons why Louis isn't some sort of lunatic. For all we know, he's a serial killer.
			],
			C7M3_saferoom016cBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom25.wav"  //See? I'm serious. Given, you know, current goddamn events, that's not optimism, it's mental illness.
			],
			C7M3_saferoom017aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom28.wav"  //No, I'm being serious. I really hate islands. I have insulaphobia - I'm afraid of islands.
			],
			C7M3_saferoom017cBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom29.wav"  //No, man. It's a medical condition. Just my goddamn luck...
			],
			C7M3_saferoom017eBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom30.wav"  //Stupid island...
			],
			C7M3_saferoom017gBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom31.wav"  //Dumbass island shithole...
			],
			C7M3_saferoom017hBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom32.wav"  //Damn right.
			],
			C7M3BridgeBreaksBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgestops01.wav",  //Goddamn it, who broke the bridge?
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgestops02.wav",  //Someone's gotta restart that generator.
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgestops03.wav"  //Do you think that generator might restart itself?
			],
			C7M3FinalPressManagerBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3louisdies01.wav",  //I could have predicted that.
				"player/survivor/voice/" + custom_name + "/c6dlc3louisdies02.wav",  //Louis is dead.
				"player/survivor/voice/" + custom_name + "/c6dlc3louisdies03.wav",  //Louis little buddy, you did it!
				"player/survivor/voice/" + custom_name + "/c6dlc3louisdies04.wav",  //Louis, the island won't be the same without you.
				"player/survivor/voice/" + custom_name + "/c6dlc3louisdies05.wav",  //Thanks Louis!
				"player/survivor/voice/" + custom_name + "/c6dlc3louisdies06.wav"  //LOUUUUUIIIISSSS!
			],
			C7M3FinalPressNamVetBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies01.wav",  //Bill! It should have been Louis! It should have been Louis!
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies02.wav",  //Bill did it!
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies03.wav",  //Bill restarted the generator!
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies04.wav",  //The bridge is going up
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies05.wav",  //We're safe! We're safe!
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies06.wav",  //Thanks Bill, I owe you one. You old bastard...
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies07.wav"  //Bill, you did it, buddy! You really did it!
			],
			C7M3FinalPressTeenGirlBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3zoeydies01.wav",  //Noooo! You monsters! Take Louis instead!
				"player/survivor/voice/" + custom_name + "/c6dlc3zoeydies02.wav",  //Not ZOEY!
				"player/survivor/voice/" + custom_name + "/c6dlc3zoeydies03.wav",  //SHIT ZOEY!
				"player/survivor/voice/" + custom_name + "/c6dlc3zoeydies04.wav"  //I hate this!
			],
			C7M3GeneratorPress01Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3prestart1stgen01.wav",  //Let's start these generators.
				"player/survivor/voice/" + custom_name + "/c6dlc3prestart1stgen02.wav"  //We gotta start these generators.
			],
			C7M3GeneratorPress02Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3prestart2ndgen01.wav"  //Everyone ready to start this one?
			],
			C7M3GeneratorPress03Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3prestartlastgen01.wav",  //I hate these stupid generators.
				"player/survivor/voice/" + custom_name + "/c6dlc3prestartlastgen02.wav"  //Last generator.
			],
			C7M3PlayerGetToRescueVehicleBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgeavailable01.wav"  //All aboard! The bridge�
			],
			C7M3PlayerGetToRescueVehicleNagBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgeavailable02.wav",  //Everyone to the bridge!
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgeavailable03.wav"  //Get to the bridge!
			],
			C7M3PlayerIsInRescueVehicleNagBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgeavailable04.wav",  //Get on the bridge!
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgeavailable05.wav",  //Get to the bridge! Get to the bridge!
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgeavailable06.wav"  //Get to the bridge! Get to the bridge, come on! Get to the bridge!
			],
			C7M3PlayerRaiseBridgeNagBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3hittingbridgebutton01.wav",  //We need to raise the bridge.
				"player/survivor/voice/" + custom_name + "/c6dlc3hittingbridgebutton02.wav",  //Let's hit the button already.
				"player/survivor/voice/" + custom_name + "/c6dlc3hittingbridgebutton03.wav"  //I think this bridge can go higher.
			],
			C7M3BridgeButtonSpeakBiker = [
				"player/survivor/voice/" + custom_name + "/killconfirmation01.wav",  //Got it!
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen202.wav",  //Come on, let's go, COME ON!
				"player/survivor/voice/" + custom_name + "/finaleahead03.wav",  //Now there's a sight for sore eyes. Looks like we're gonna make it, kids.
				"player/survivor/voice/" + custom_name + "/finaleahead04.wav",  //Hey, we're almost outta this shithole. I told you I'd get you here.
				"player/survivor/voice/" + custom_name + "/hurryup09.wav"  //Come on, let's go!
			],
			C7M3SafeRoomBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom11.wav",  //Bill, I just wanna make it clear - in front of everyone - that I am against the island plan.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom24.wav",  //Hey, um... Louis... did I ever mention how I feel about islands?
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom27.wav"  //Hey, um... Louis... did I ever mention how I feel about islands?
			],
			C7M3WaveOverGen1Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firsteventover01.wav",  //Okay, its done let's go!
				"player/survivor/voice/" + custom_name + "/c6dlc3firsteventover02.wav"  //Why are we still here? To the next generator!
			],
			C7M3WaveOverGen2Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondeventover01.wav",  //You think that last generator is going to start itself?
				"player/survivor/voice/" + custom_name + "/c6dlc3secondeventover02.wav"  //One more!
			],
			CrashWarnMegaMobBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2incoming01.wav"  //Here they come! Zoey, just pretend they're all helicopter pilots!
			],
			HowitzerBurnEnd00Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1gunend01.wav",  //Fire's out.
				"player/survivor/voice/" + custom_name + "/dlc2bridgeclear01.wav"  //Bridge is clear!
			],
			HowitzerBurnEnd01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1gunend02.wav"  //Everybody across the bridge!
			],
			L4D1crashHowitzerNagBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1gunnag02.wav"  //Somebody fire the goddamn cannon!
			],
			L4D1HowitzerFiredBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah20.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/taunt02.wav",  //HELL YEAH!
				"player/survivor/voice/" + custom_name + "/taunt03.wav",  //OH YEAH!
				"player/survivor/voice/" + custom_name + "/taunt04.wav",  //Oh yeah!
				"player/survivor/voice/" + custom_name + "/taunt08.wav",  //YEAH! YEAH!
				"player/survivor/voice/" + custom_name + "/taunt09.wav",  //Damn straight!
				"player/survivor/voice/" + custom_name + "/taunt10.wav"  //HELL YEAH!
			],
			CrashFinaleGenerator2OnSpkBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpresslift01.wav"  //Alright, it's moving!
			],
			CrashFinaleGenerator2SpeakBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen201.wav",  //Come on, you stupid generator, COME ON!
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen202.wav",  //Come on, let's go, COME ON!
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen203.wav",  //Goddamn generator. Come ON, let's GO!
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen301.wav",  //Goddamn it. Piece a shit generator...
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen302.wav",  //I'm gettin' so sick of this goddamn generator...
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen303.wav"  //Soon as we get the truck moving, I am going to RUN YOU OVER. You goddamn piece of shit.
			],
			CrashFinaleGeneratorBreakSpkBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebreak101.wav",  //POWER'S OUT! We gotta kickstart the generator!
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebreak102.wav"  //POWER'S OUT!
			],
			CrashFinaleGeneratorSpeakBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen101.wav",  //Everybody hang on. This'll just take a second.
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen102.wav"  //Get in position, this'll only take a sec.
			],
			CrashFinaleGenerator1NagBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalesetup03.wav",  //Someone wanna power up the generator?
				"player/survivor/voice/" + custom_name + "/dlc2m2finalesetup201.wav",  //Somebody should activate the lift.
				"player/survivor/voice/" + custom_name + "/dlc2m2finalesetup202.wav"  //Somebody wanna activate the generator?
			],
			CrashFinaleTruckNagBiker = [
				"player/survivor/voice/" + custom_name + "/arrivetruck01.wav"  //Run to the truck! Go go go!
			],
			CrashFinaleInsideTruckNagBiker = [
				"player/survivor/voice/" + custom_name + "/arrivetruck02.wav",  //To the truck!
				"player/survivor/voice/" + custom_name + "/arrivetruck03.wav"  //Get to the truck!
			],
			CrashFinaleTruckResp01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalesetup01.wav",  //We gotta lower that lift!
				"player/survivor/voice/" + custom_name + "/dlc2m2finalesetup02.wav"  //That lift won't come down till we power up the generator.
			],
			CrashFinaleTruckRespZombieBiker = [
				"player/survivor/voice/" + custom_name + "/dlczombietruck01.wav",  //Hey, Zoey-when I drive us outta here, don't SHOOT me, alright?
				"player/survivor/voice/" + custom_name + "/dlczombietruck02.wav"  //I'm not driving. I don't wanna get shot.
			],
			CrashYerKiddingBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2genericresponses03.wav"  //Yer kidding, right?
			],
			L4D1CrashFinaleGeneratorNagBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebreak103.wav",  //We gotta kickstart the generator!
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebreak202.wav"  //Someone needs to restart the generator!
			],
			L4D1CrashFinaleGenUnPressSpeakBiker = [
				"player/survivor/voice/" + custom_name + "/swear15.wav",  //Son of a bitch.
				"player/survivor/voice/" + custom_name + "/swear17.wav"  //Dammit.
			],
			L4D1CrashFinaleGen2UnPressSpeakBiker = [
				"player/survivor/voice/" + custom_name + "/swear01.wav",  //Goddammit.
				"player/survivor/voice/" + custom_name + "/swear02.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/swear03.wav",  //Ah shit.
				"player/survivor/voice/" + custom_name + "/swear04.wav",  //Ah hell.
				"player/survivor/voice/" + custom_name + "/swear08.wav",  //Ah bullshit.
				"player/survivor/voice/" + custom_name + "/swear09.wav",  //Dammit.
				"player/survivor/voice/" + custom_name + "/swear10.wav"  //Bullshit.
			],
			L4D1CrashFinaleTruckReadySpkBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finaletruckdown01.wav"  //Lift's down! Get in the goddamn truck!
			],
			L4D1CrashFinaleTruckReadyRespBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finaletruckend01.wav"  //Thank god, I hate walking.
			],
			L4D1PlayerRemarkcrashcourse02_path14Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2directional04.wav",  //Let's get in that truck, step on the gas, and not stop till we see the army.
				"player/survivor/voice/" + custom_name + "/dlc2m2directional05.wav"  //I got an idea. Let's steal that truck.
			],
			CrashCourseR02Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2magazinerack01.wav"  //I hate latest issues.
			],
			CrashCourseR09Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2alley01.wav"  //Yeah ha ha ha. This the one you wanna die in?
			],
			CrashCourseR10Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2gastanks04.wav"  //Nice one.
			],
			CrashCourseR13Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2steam03.wav",  //Yeah... steam's alright, I guess.
				"player/survivor/voice/" + custom_name + "/dlc2steam04.wav"  //Oh, I love steam. I just hate the pipes..
			],
			L4D1PlayerRemarkcrashcourse01_path02Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2birdhate01.wav"  //I hate birds.
			],
			L4D1PlayerRemarkcrashcourse01_path05Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1directional02.wav",  //Truck's blocking the whole goddamn road...
				"player/survivor/voice/" + custom_name + "/dlc2m1directional10.wav"  //Sayyy. An alley!
			],
			L4D1PlayerRemarkcrashcourse01_path06Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1searching01.wav",  //Might be something in this warehouse.
				"player/survivor/voice/" + custom_name + "/dlc2m1searching02.wav"  //Probably some free crap in these buildings.
			],
			L4D1PlayerRemarkcrashcourse01_path07Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2hersch01.wav"  //I drove for Hersch once. Till some guy laughed at my little brown shorts. And I beat him to death.
			],
			L4D1PlayerRemarkcrashcourse01_path11Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2armytruck01.wav",  //Huh. The army. Fat lotta help they've been to US.
				"player/survivor/voice/" + custom_name + "/dlc2armytruck02.wav"  //Huh. The army. They're about as much help as the cops.
			],
			L4D1PlayerRemarkcrashcourse01_path12Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2trainwreck01.wav"  //Whoa. Zoey must have shot the train conductor!
			],
			L4D1PlayerRemarkcrashcourse01_path13Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1goal02.wav",  //Let's follow that bridge. Might be a way outta this dump.
				"player/survivor/voice/" + custom_name + "/dlc2m1directional05.wav"  //Let's get across the river.
			],
			L4D1PlayerRemarkcrashcourse01_path14Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1directional07.wav"  //We can get back up over here!
			],
			L4D1PlayerRemarkcrashcourse01_path17Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2barricade01.wav",  //We gotta get over this bridge.
				"player/survivor/voice/" + custom_name + "/dlc2m1directional08.wav"  //Ah hell, the bridge is blocked.
			],
			L4D1PlayerRemarkcrashcourse01_path18Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1gunnag01.wav"  //We need to shoot that barricade down.
			],
			L4D1PlayerRemarkcrashcourse01_path19Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2forlease01.wav",  //'For...lease.'  Anybody got a pen? I wanna write this number down.
				"player/survivor/voice/" + custom_name + "/dlc2forlease02.wav"  //'For...lease.'
			],
			L4D1PlayerRemarkcrashcourse01_path24Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1directional09.wav"  //The safehouse is down there!
			],
			L4D1PlayerRemarkcrashcourse02_path05Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2container01.wav"  //Through this container!
			],
			L4D1PlayerRemarkcrashcourse02_path06ZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2gastanks01.wav"  //Hey, Zoey, look! We're 'passing gas'... [chuckles]
			],
			L4D1PlayerRemarkcrashcourse02_path06LouisBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2gastanks02.wav"  //Hey, Louis, look! We're 'passing gas'... [chuckles]
			],
			L4D1PlayerRemarkcrashcourse02_path06BillBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2gastanks03.wav"  //Hey, Bill, look! We're 'passing gas'... [chuckles]
			],
			L4D1PlayerRemarkcrashcourse01_path26Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2bulletinboard01.wav"  //This sign says 'I hate Mondays'! Man, tell me about it.
			],
			L4D1PlayerRemarkcrashcourse01_path26SelfBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2bulletinboard01.wav"  //This sign says 'I hate Mondays'! Man, tell me about it.
			],
			CrashCourseR11Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2bulletinboard02.wav"  //Unless it's Lasagna Mondays. I love lasagna.
			],
			L4D1PlayerRemarkcrashcourse02_path08Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2steam02.wav",  //Hey, watch out for that goddamn steam pipe.
				"player/survivor/voice/" + custom_name + "/dlc2steam01.wav"  //I hate steam... pipes.
			],
			L4D1PlayerRemarkcrashcourse02_path10Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2directional03.wav"  //Over that truck!
			],
			L4D1PlayerRemarkcrashcourse02_path11Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2recycling01.wav",  //Thanks for saving the planet, recyclers. Mission accomplished.
				"player/survivor/voice/" + custom_name + "/dlc2recycling02.wav"  //Copper... aluminum... brass... those guys recycle everything!
			],
			L4D1PlayerRemarkcrashcourse02_path12Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2directional01.wav"  //Through the truck yard!
			],
			PlayerRemarkcrashcourse01_path21Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2waterworks01.wav"  //Waterworks. That where you pick up your crying supplies, Bill? Ah ha ha, I'm hilarious.
			],
			IntroCrashR02Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro18.wav"  //I guess I DID tell ya.
			],
			IntroCrashR04Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro08.wav"  //Alright. I'll give ya that.
			],
			IntroCrashR06Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro25.wav"  //Well, it's pretty complicated. I don't wanna bore you with a lotta... complex... fractions. But step one is we walk THAT way.
			],
			IntroCrashR08Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro21.wav"  //Whoah. Musta hit my head in the crash. I'm okay now. I hate helicopters.
			],
			IntroCrashR10Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro30.wav",  //Let's just hike the hell out of here.
				"player/survivor/voice/" + custom_name + "/dlc2intro31.wav",  //Looks like we're walking again.
				"player/survivor/voice/" + custom_name + "/dlc2m1goal01.wav"  //I already hate this place. Let's get outta here.
			],
			IntroCrashR12Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro16.wav"  //Yeah! Stupid helicopter.
			],
			IntroCrashR14Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro14.wav"  //Terrific. Looks like we're walkin, then.
			],
			IntroCrashR16Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro11.wav"  //That's what I thought...
			],
			IntroCrashR18Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro06.wav"  //'Cause it's money in the bank. Remind me to explain gambling to you sometime.
			],
			IntroCrashR20Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro02.wav"  //[pouty] Well, I guess NOW we'll never know, will we?
			],
			IntroCrashR21Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro22.wav"  //I hate walking.
			],
			IntroCrashR23Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro23.wav"  //And it turns out I was right about that.
			],
			IntroCrashR26Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro27.wav",  //[grumbling under breath]...Don't see what's wrong with vests...
				"player/survivor/voice/" + custom_name + "/dlc2intro28.wav",  //[grumbling under breath]...not even WEARING chaps...
				"player/survivor/voice/" + custom_name + "/dlc2intro29.wav"  //[grumbling under breath]... I HATE parades.
			],
			IntroCrashR27Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro12.wav"  //Yeah, well--Next time someone offers us a ride, don't SHOOT him.
			],
			IntroCrashR29Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro04.wav"  //[confused] Wait, WHAT happened?
			],
			IntroCrashR31Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro03.wav"  //Or, in this case, a vampire.
			],
			L4D1PlayerCrashCourseIntroBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro01.wav",  //I still can't believe you shot the pilot!
				"player/survivor/voice/" + custom_name + "/dlc2intro05.wav",  //See? I TOLD ya. Helicopter crashed. We're not saved, we're all gonna die. Pay up.
				"player/survivor/voice/" + custom_name + "/dlc2intro07.wav",  //Hey, Mr. Positive! We just CRASHED. You got somethin' positive to say about that?
				"player/survivor/voice/" + custom_name + "/dlc2intro09.wav",  //Hey. Sunshine Beams. We just CRASHED. You got somethin' positive to say about that?
				"player/survivor/voice/" + custom_name + "/dlc2intro10.wav",  //Is that how helicopters are supposed to land?
				"player/survivor/voice/" + custom_name + "/dlc2intro13.wav",  //Hey Louis. That fancy college of yours teach ya how to fix a helicopter?
				"player/survivor/voice/" + custom_name + "/dlc2intro15.wav",  //Goddamnit, where'd they buy this helicopter? At the ... uh... um... hold on...
				"player/survivor/voice/" + custom_name + "/dlc2intro17.wav",  //I ever tell you how I feel about helicopters?
				"player/survivor/voice/" + custom_name + "/dlc2intro19.wav",  //Guys. Everyone. I wanna say something: I. hate. helicopters.
				"player/survivor/voice/" + custom_name + "/dlc2intro20.wav",  //[sincere] Wow! I love helicopters! I love 'em so much.
				"player/survivor/voice/" + custom_name + "/dlc2intro24.wav",  //Alright, nobody panic. I have a plan.
				"player/survivor/voice/" + custom_name + "/dlc2intro26.wav"  //You still wearin' that tie, Louis? What, you got a meeting? Bah ha ha.
			],
			CrashCourseI01Biker = [
				"player/survivor/voice/" + custom_name + "/answerready03.wav"  //Yeah, let's do it.
			],
			CrashCourseB02Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2canadahate01.wav",  //Oh my god, I hate Canada so much.
				"player/survivor/voice/" + custom_name + "/dlc2riverside04.wav"  //Guess I've been hatin' Riverside all this time for nothin' then.
			],
			CrashCourseC01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2riverside01.wav"  //Ahhhh, I doubt it.
			],
			L4D1C9M2SafeRoomBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2saferoom01.wav",  //Looks like we should check out that truck depot.
				"player/survivor/voice/" + custom_name + "/dlc2m1goal03.wav",  //Riverside! Ain't that where the army's holed up?
				"player/survivor/voice/" + custom_name + "/dlc2riverside03.wav"  //Riverside? Aww, I hate Canada.
			],
			L4D1IntroFarm4Biker = [
				"player/survivor/voice/" + custom_name + "/answerready03.wav"  //Yeah, let's do it.
			],
			L4D1SurvivorBoomerBlunderBiker = [
				"player/survivor/voice/" + custom_name + "/sorry02.wav",  //Sorry about that.
				"player/survivor/voice/" + custom_name + "/sorry10.wav",  //Sorry, man, shit happens.
				"player/survivor/voice/" + custom_name + "/sorry14.wav",  //Uh, yeah, sorry.
				"player/survivor/voice/" + custom_name + "/reactionnegative06.wav",  //Ah shit.
				"player/survivor/voice/" + custom_name + "/sorry07.wav",  //Yeah, guess that was my fault.
				"player/survivor/voice/" + custom_name + "/sorry08.wav",  //Yeah, guess that was my fault. Again.
				"player/survivor/voice/" + custom_name + "/swear03.wav"  //Ah shit.
			],
			L4D1SurvivorFinaleTriggeredBoatBiker = [
				"player/survivor/voice/" + custom_name + "/radiousedboat01.wav"  //We got a boat coming!
			],
			L4D1SurvivorFinaleTriggeredFarmBiker = [
				"player/survivor/voice/" + custom_name + "/radiousedgeneric02.wav",  //Help'll be here soon! You ladies ready for some fun until they show up?
				"player/survivor/voice/" + custom_name + "/radiousedtruck01.wav"  //A truck should be here soon - we just gotta hold out until it shows.
			],
			L4D1SurvivorFinaleTriggeredRooftopBiker = [
				"player/survivor/voice/" + custom_name + "/radiousedchopper01.wav",  //Chopper's on its way!
				"player/survivor/voice/" + custom_name + "/radiousedgeneric03.wav",  //We got some help comin'. Let's get ready!
				"player/survivor/voice/" + custom_name + "/radiousedgeneric05.wav",  //Help's on its way. Let's have some fun while we wait.
				"player/survivor/voice/" + custom_name + "/radiousedgeneric08.wav"  //Help is on the way!
			],
			L4D1SurvivorFinalVehicleBoatBiker = [
				"player/survivor/voice/" + custom_name + "/arriveboat02.wav"  //Everyone to the boat!
			],
			L4D1SurvivorFinalVehicleInsideBoatBiker = [
				"player/survivor/voice/" + custom_name + "/arriveboat01.wav",  //Get to the boat!
				"player/survivor/voice/" + custom_name + "/arriveboat03.wav"  //Get your asses on that boat!
			],
			L4D1SurvivorFinalVehicleFarmBiker = [
				"player/survivor/voice/" + custom_name + "/arrivetruck01.wav"  //Run to the truck! Go go go!
			],
			L4D1SurvivorFinalVehicleInsideFarmBiker = [
				"player/survivor/voice/" + custom_name + "/arrivetruck02.wav",  //To the truck!
				"player/survivor/voice/" + custom_name + "/arrivetruck03.wav"  //Get to the truck!
			],
			L4D1SurvivorFinalVehicleFarmSpottedBiker = [
				"player/survivor/voice/" + custom_name + "/arrivetruckinitial01.wav",  //C'mon, that's the last truck outta this shithole. LET'S GO!
				"player/survivor/voice/" + custom_name + "/arrivetruckinitial02.wav"  //The truck's here! Let's go!
			],
			L4D1SurvivorFinalVehicleRooftopBiker = [
				"player/survivor/voice/" + custom_name + "/arrivechopper01.wav"  //Everybody to the chopper!
			],
			L4D1SurvivorFinalVehicleInsideRooftopBiker = [
				"player/survivor/voice/" + custom_name + "/arrivechopper02.wav"  //Get to the chopper!
			],
			L4D1SurvivorFinalVehicleRunwayBiker = [
				"player/survivor/voice/" + custom_name + "/arriveplane01.wav",  //Get to the plane. Let's go!
				"player/survivor/voice/" + custom_name + "/arriveplaneinitial01.wav"  //This is the last flight out of here! Let's go
			],
			L4D1SurvivorFinalVehicleInsideRunwayBiker = [
				"player/survivor/voice/" + custom_name + "/arriveplane02.wav"  //Get to the plane!
			],
			L4D1SurvivorFinalVehicleSpottedBoatBiker = [
				"player/survivor/voice/" + custom_name + "/arriveboatinitial01.wav",  //Our boat's here, all aboard!
				"player/survivor/voice/" + custom_name + "/arriveboatinitial02.wav"  //Our boat's here! Let's go!
			],
			L4D1SurvivorFinalVehicleSpottedRooftopBiker = [
				"player/survivor/voice/" + custom_name + "/arrivechopperinitial01.wav",  //The chopper's here! Let's go!
				"player/survivor/voice/" + custom_name + "/arrivechopperinitial02.wav"  //The chopper's here! About time, too...
			],
			L4D1PlayerShotCarNotBiker = [
				"player/survivor/voice/" + custom_name + "/swear03.wav",  //Ah shit.
				"player/survivor/voice/" + custom_name + "/swear04.wav",  //Ah hell.
				"player/survivor/voice/" + custom_name + "/swear08.wav"  //Ah bullshit.
			],
			L4D1PlayerShotCarBiker = [
				"player/survivor/voice/" + custom_name + "/swear01.wav",  //Goddammit.
				"player/survivor/voice/" + custom_name + "/swear02.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/swear09.wav",  //Dammit.
				"player/survivor/voice/" + custom_name + "/swear10.wav"  //Bullshit.
			],
			L4D1ResponseSoftDispleasureSwearBiker = [
				"player/survivor/voice/" + custom_name + "/negativenoise06.wav",  //[Improv non-verbal displeasure & frustration sounds]
				"player/survivor/voice/" + custom_name + "/reactionapprehensive03.wav",  //I don't like ths one damn bit.
				"player/survivor/voice/" + custom_name + "/reactionnegative05.wav",  //Shit
				"player/survivor/voice/" + custom_name + "/reactionnegative09.wav",  //Ahhhhh.
				"player/survivor/voice/" + custom_name + "/swear12.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/swear14.wav",  //Ah hell.
				"player/survivor/voice/" + custom_name + "/swear15.wav",  //Son of a bitch.
				"player/survivor/voice/" + custom_name + "/swear16.wav",  //Ah bullshit.
				"player/survivor/voice/" + custom_name + "/swear17.wav",  //Dammit.
				"player/survivor/voice/" + custom_name + "/swear19.wav"  //Ah bullshit.
			],
			L4D1SurvivorAskBillForHealthBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific05.wav",  //Bill, could I borrow your med kit? I just wanna look at it.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific07.wav",  //Bill, you got a med kit I could have?
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific11.wav"  //Old man, you forget you have a health pack, or you  saving that for me?
			],
			L4D1SurvivorAskForHealthBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			L4D1SurvivorAskLouisForHealthBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific06.wav",  //Louis, you got a med kit I could have?
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific08.wav",  //Louis, don't bogard that med kit, man. I'm hurt.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific10.wav",  //Louis, while I hate to break that ensemble and all, can I have your health pack?
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific12.wav"  //Louis, gimme your health pack.
			],
			L4D1SurvivorAskZoeyForHealthBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific04.wav",  //Zoey, you got a health kit for me?
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific09.wav"  //Hey little lady, if you ain't gonna use that health kit I could use it.
			],
			L4D1SurvivorSpottedBillCloseBiker = [
				"player/survivor/voice/" + custom_name + "/namebill03.wav"  //Bill (quiet)
			],
			L4D1SurvivorSpottedBillFarBiker = [
				"player/survivor/voice/" + custom_name + "/namebill02.wav",  //Billllll! (loud)
				"player/survivor/voice/" + custom_name + "/namebill01.wav"  //Bill! (loud)
			],
			L4D1SurvivorSpottedLouisCloseBiker = [
				"player/survivor/voice/" + custom_name + "/namelouis03.wav"  //Louis (quiet)
			],
			L4D1SurvivorSpottedLouisFarBiker = [
				"player/survivor/voice/" + custom_name + "/namelouis01.wav",  //Louis! (loud)
				"player/survivor/voice/" + custom_name + "/namelouis02.wav"  //Louissss! (loud)
			],
			L4D1SurvivorSpottedWorldCloseBiker = [
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere02.wav",  //Look at this.
				"player/survivor/voice/" + custom_name + "/lookhere03.wav",  //Look at this.
				"player/survivor/voice/" + custom_name + "/lookhere04.wav",  //Well, hell, look at this.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere06.wav",  //Somebody better check this out.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			L4D1SurvivorSpottedZoeyCloseBiker = [
				"player/survivor/voice/" + custom_name + "/namezoey03.wav"  //Zoey (quite)
			],
			L4D1SurvivorSpottedZoeyClose2Biker = [
				"player/survivor/voice/" + custom_name + "/namezoey03.wav"  //Zoey (quite)
			],
			L4D1SurvivorSpottedZoeyFarBiker = [
				"player/survivor/voice/" + custom_name + "/namezoey01.wav",  //Zoey! (loud)
				"player/survivor/voice/" + custom_name + "/namezoey02.wav"  //Zoeyyyyy! (loud)
			],
			SurvivorSpottedAmmoBiker = [
				"player/survivor/voice/" + custom_name + "/spotammo01.wav"  //Ammo here!
			],
			SurvivorSpottedGrenadeBiker = [
				"player/survivor/voice/" + custom_name + "/spotgrenades03.wav",  //There's a pipebomb here.
				"player/survivor/voice/" + custom_name + "/spotgrenades05.wav",  //There's a pipe bomb here.
				"player/survivor/voice/" + custom_name + "/spotgrenades06.wav"  //Pipe bombs!
			],
			SurvivorSpottedHealthBiker = [
				"player/survivor/voice/" + custom_name + "/spotfirstaid01.wav",  //First Aid Kit here!
				"player/survivor/voice/" + custom_name + "/spotfirstaid02.wav",  //First Aid kit here!
				"player/survivor/voice/" + custom_name + "/spotfirstaid03.wav",  //First Aid here!
				"player/survivor/voice/" + custom_name + "/spotfirstaid04.wav",  //First aid kits over here.
				"player/survivor/voice/" + custom_name + "/spotfirstaid05.wav",  //There's a first aid kit here.
				"player/survivor/voice/" + custom_name + "/spotfirstaid06.wav",  //First aid kits over here.
				"player/survivor/voice/" + custom_name + "/spotfirstaid07.wav"  //First aid kit over here.
			],
			SurvivorSpottedMolotovBiker = [
				"player/survivor/voice/" + custom_name + "/spotgrenades02.wav",  //Molotov's over here.
				"player/survivor/voice/" + custom_name + "/spotgrenades04.wav",  //Molotov's over here.
				"player/survivor/voice/" + custom_name + "/spotgrenades07.wav"  //Molotovs!
			],
			SurvivorSpottedVomitJarBiker = [
				"player/survivor/voice/" + custom_name + "/spotgrenades01.wav"  //Grenades here.
			],
			SurvivorSpottedPillsBiker = [
				"player/survivor/voice/" + custom_name + "/spotpills01.wav"  //Pills here!
			],
			SurvivorSpottedAdrenalineBiker = [
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere04.wav",  //Well, hell, look at this.
				"player/survivor/voice/" + custom_name + "/lookhere06.wav"  //Somebody better check this out.
			],
			L4D1SurvivorMovingToBattleStationBiker = [
				"player/survivor/voice/" + custom_name + "/answerready01.wav",  //Ready.
				"player/survivor/voice/" + custom_name + "/answerready03.wav",  //Yeah, let's do it.
				"player/survivor/voice/" + custom_name + "/genericresponses09.wav",  //Allright, then, let's do it.
				"player/survivor/voice/" + custom_name + "/genericresponses13.wav"  //I say we just do it.
			],
			L4D1SurvivorSpottedCreshendoBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			L4D1SpottedBoomerBiker = [
				"player/survivor/voice/" + custom_name + "/warnboomer01.wav",  //BOOMER!
				"player/survivor/voice/" + custom_name + "/warnboomer02.wav",  //BOOMER!
				"player/survivor/voice/" + custom_name + "/warnboomer03.wav"  //BOOMER!
			],
			L4D1SpottedHunterBiker = [
				"player/survivor/voice/" + custom_name + "/warnhunter01.wav",  //HUNTER!
				"player/survivor/voice/" + custom_name + "/warnhunter02.wav",  //HUNTER!
				"player/survivor/voice/" + custom_name + "/warnhunter03.wav"  //HUNTER!
			],
			L4D1SpottedCanadianHunterBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2canadaspecial02.wav"  //HUNTER! It looked Canadian!
			],
			L4D1SpottedSmokerBiker = [
				"player/survivor/voice/" + custom_name + "/warnsmoker01.wav",  //SMOKER!
				"player/survivor/voice/" + custom_name + "/warnsmoker02.wav",  //SMOKER!
				"player/survivor/voice/" + custom_name + "/warnsmoker03.wav"  //SMOKER!
			],
			L4D1SpottedChargerBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1charger01.wav",  //CHARGER!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1charger02.wav",  //CHARGER!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1charger03.wav"  //CHARGER!
			],
			L4D1SpottedJockeyBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1jockey01.wav",  //JOCKEY!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1jockey02.wav",  //JOCKEY!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1jockey03.wav",  //JOCKEY!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d11stspot04.wav",  //Little guy!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d11stspot05.wav"  //Little vampire!
			],
			L4D1SpottedSpitterBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1spitter01.wav",  //SPITTER!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1spitter02.wav",  //SPITTER!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1spitter03.wav"  //SPITTER!
			],
			L4D1SurvivorSpottedInfectedBiker = [
				"player/survivor/voice/" + custom_name + "/incoming01.wav",  //Here they come!
				"player/survivor/voice/" + custom_name + "/incoming02.wav",  //Holy shit, here they come!
				"player/survivor/voice/" + custom_name + "/incoming03.wav",  //They're coming!
				"player/survivor/voice/" + custom_name + "/incoming04.wav",  //Incoming!
				"player/survivor/voice/" + custom_name + "/incoming05.wav",  //Get ready ladies!
				"player/survivor/voice/" + custom_name + "/incoming06.wav",  //INCOMING!
				"player/survivor/voice/" + custom_name + "/incoming07.wav",  //This is gonna be good.
				"player/survivor/voice/" + custom_name + "/incoming08.wav"  //Shit, Get ready!
			],
			SurvivorSpottedTankBiker = [
				"player/survivor/voice/" + custom_name + "/warntank01.wav",  //TANK!
				"player/survivor/voice/" + custom_name + "/warntank02.wav",  //TANK!
				"player/survivor/voice/" + custom_name + "/warntank03.wav"  //TANK!
			],
			L4D1SpottedTankBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1tank01.wav",  //Lead 'em over here!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1tank02.wav",  //Oh shit, two tanks!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1tank03.wav"  //TWO TANKS! I HATE THE SOUTH!
			],
			SurvivorSpottedWitchBiker = [
				"player/survivor/voice/" + custom_name + "/warnwitch01.wav",  //WITCH!
				"player/survivor/voice/" + custom_name + "/warnwitch02.wav",  //WITCH!
				"player/survivor/voice/" + custom_name + "/warnwitch03.wav"  //WITCH!
			],
			L4D1EmphaticArriveRunBiker = [
				"player/survivor/voice/" + custom_name + "/emphaticrun01.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun02.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun03.wav",  //HOLY SHIT! Run!
				"player/survivor/voice/" + custom_name + "/emphaticrun04.wav",  //LET'S BEAT IT!
				"player/survivor/voice/" + custom_name + "/emphaticrun05.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun06.wav",  //SHIT! Run!
				"player/survivor/voice/" + custom_name + "/emphaticrun09.wav",  //Get the lead out!
				"player/survivor/voice/" + custom_name + "/emphaticrun10.wav"  //Haul Ass!
			],
			L4D1PlayerAlertGiveItemBiker = [
				"player/survivor/voice/" + custom_name + "/alertgiveitem01.wav",  //Here, take this.
				"player/survivor/voice/" + custom_name + "/alertgiveitem02.wav",  //I got something for you.
				"player/survivor/voice/" + custom_name + "/alertgiveitem03.wav",  //Take this.
				"player/survivor/voice/" + custom_name + "/alertgiveitem04.wav",  //Merry Christmas.
				"player/survivor/voice/" + custom_name + "/alertgiveitem05.wav",  //Share the wealth, brother.
				"player/survivor/voice/" + custom_name + "/alertgiveitem06.wav",  //Hold up I got something for you.
				"player/survivor/voice/" + custom_name + "/alertgiveitem07.wav"  //Take it. Hell, I don't need it.
			],
			L4D1PlayerFriendlyFireBiker = [
				"player/survivor/voice/" + custom_name + "/friendlyfire01.wav",  //That hurt.
				"player/survivor/voice/" + custom_name + "/friendlyfire02.wav",  //Dammit! Will you knock it off!
				"player/survivor/voice/" + custom_name + "/friendlyfire03.wav",  //Will you knock it off!
				"player/survivor/voice/" + custom_name + "/friendlyfire04.wav",  //Do I look like a target?
				"player/survivor/voice/" + custom_name + "/friendlyfire05.wav",  //You know I would appreciate it, IF YOU'D STOP SHOOTING ME.
				"player/survivor/voice/" + custom_name + "/friendlyfire06.wav",  //Watch where the hell you're shooting.
				"player/survivor/voice/" + custom_name + "/friendlyfire07.wav",  //Watch where you're shooting!
				"player/survivor/voice/" + custom_name + "/friendlyfire08.wav",  //Stop. Shooting. Me.
				"player/survivor/voice/" + custom_name + "/friendlyfire09.wav",  //Hey! Stop. Shooting. Me.
				"player/survivor/voice/" + custom_name + "/friendlyfire10.wav",  //Watch where you're shooting!
				"player/survivor/voice/" + custom_name + "/friendlyfire11.wav",  //Don't shoot me!
				"player/survivor/voice/" + custom_name + "/friendlyfire12.wav",  //Watch where you point that thing
				"player/survivor/voice/" + custom_name + "/friendlyfire13.wav",  //Dammit! Watch where you're shooting!
				"player/survivor/voice/" + custom_name + "/friendlyfire14.wav",  //Don't shoot me!
				"player/survivor/voice/" + custom_name + "/friendlyfire15.wav",  //Monsters all over the damn place, and you gotta shoot me.
				"player/survivor/voice/" + custom_name + "/friendlyfire16.wav",  //Quit freaking shooting me!
				"player/survivor/voice/" + custom_name + "/friendlyfire18.wav",  //Shoot me again, I'm gonna kick your ass.
				"player/survivor/voice/" + custom_name + "/friendlyfire19.wav"  //Do that again, and you're gonna be firing that thing outta your ass.
			],
			L4D1PlayerFriendlyFire2Biker = [
				"player/survivor/voice/" + custom_name + "/teamkillaccident04.wav",  //Pull yer head outta yer ass.
				"player/survivor/voice/" + custom_name + "/teamkillaccident05.wav",  //Careful!
				"player/survivor/voice/" + custom_name + "/teamkillaccident06.wav"  //Hey! Careful!
			],
			L4D1PlayerFriendlyFireFromBillBiker = [
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirebill01.wav",  //AH! You havin' some kinda flashback Old Man?
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirebill02.wav",  //God DAMMIT, Bill.
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirebill03.wav",  //Bill, quit shootin' me.
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirebill04.wav",  //Watch yer fire, Old Man.
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirebill05.wav"  //Nice Shot, Bill.That was my ass.
			],
			L4D1PlayerFriendlyFireFromLouisBiker = [
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirelouis03.wav",  //OW! Louis!
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirelouis04.wav",  //GODDAMN IT LOUIS! Stop shootin' me.
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirelouis06.wav"  //LOU-IS  STOP SHOOTING ME (Snarled)
			],
			L4D1PlayerFriendlyFireFromZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirezoey02.wav",  //Knock it off, Zoey.
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirezoey05.wav"  //Zoey! Stop shooting me.
			],
			L4D1PlayerFriendlyFireNoBulletBiker = [
				"player/survivor/voice/" + custom_name + "/friendlyfire01.wav",  //That hurt.
				"player/survivor/voice/" + custom_name + "/friendlyfire02.wav",  //Dammit! Will you knock it off!
				"player/survivor/voice/" + custom_name + "/friendlyfire03.wav"  //Will you knock it off!
			],
			L4D1PlayerToTheRescueBiker = [
				"player/survivor/voice/" + custom_name + "/totherescue01.wav",  //Hang on, I'm on my way!
				"player/survivor/voice/" + custom_name + "/totherescue02.wav",  //I'm coming!
				"player/survivor/voice/" + custom_name + "/totherescue03.wav",  //Hang in there buddy, I'm comin.
				"player/survivor/voice/" + custom_name + "/totherescue04.wav",  //I'm coming for ya!
				"player/survivor/voice/" + custom_name + "/totherescue05.wav",  //Hang on I'm coming!
				"player/survivor/voice/" + custom_name + "/totherescue06.wav",  //Hang in there, I'm comin!
				"player/survivor/voice/" + custom_name + "/totherescue07.wav",  //Hang on, hang on, I'm comin!
				"player/survivor/voice/" + custom_name + "/totherescue08.wav"  //I heard ya, I'm comin'!
			],
			L4D1SurvivorTauntResponseBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah01.wav",  //All right.
				"player/survivor/voice/" + custom_name + "/hurrah02.wav",  //Aw riiiight.
				"player/survivor/voice/" + custom_name + "/hurrah03.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/hurrah04.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/hurrah16.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/hurrah17.wav",  //Aw riiiight.
				"player/survivor/voice/" + custom_name + "/hurrah18.wav",  //Aw riiiight.
				"player/survivor/voice/" + custom_name + "/hurrah19.wav",  //Goddamn right!
				"player/survivor/voice/" + custom_name + "/hurrah20.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/taunt01.wav",  //That's right!
				"player/survivor/voice/" + custom_name + "/taunt02.wav",  //HELL YEAH!
				"player/survivor/voice/" + custom_name + "/taunt03.wav",  //OH YEAH!
				"player/survivor/voice/" + custom_name + "/taunt04.wav",  //Oh yeah!
				"player/survivor/voice/" + custom_name + "/taunt05.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt06.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt07.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt08.wav",  //YEAH! YEAH!
				"player/survivor/voice/" + custom_name + "/taunt09.wav",  //Damn straight!
				"player/survivor/voice/" + custom_name + "/taunt10.wav"  //HELL YEAH!
			],
			PlayerToTheRescueRosBiker = [
				"player/survivor/voice/" + custom_name + "/totherescue01.wav",  //Hang on, I'm on my way!
				"player/survivor/voice/" + custom_name + "/totherescue02.wav",  //I'm coming!
				"player/survivor/voice/" + custom_name + "/totherescue03.wav",  //Hang in there buddy, I'm comin.
				"player/survivor/voice/" + custom_name + "/totherescue04.wav",  //I'm coming for ya!
				"player/survivor/voice/" + custom_name + "/totherescue05.wav",  //Hang on I'm coming!
				"player/survivor/voice/" + custom_name + "/totherescue06.wav",  //Hang in there, I'm comin!
				"player/survivor/voice/" + custom_name + "/totherescue07.wav",  //Hang on, hang on, I'm comin!
				"player/survivor/voice/" + custom_name + "/totherescue08.wav"  //I heard ya, I'm comin'!
			],
			L4D1EmphaticArriveRunFarm2Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0523.wav",  //I forgive you, Army. I love you guys!
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0528.wav"  //I LOVE the goddamn army!
			],
			L4D1PlayerChokeResponseBiker = [
				"player/survivor/voice/" + custom_name + "/choke01.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke02.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke03.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke04.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke05.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke06.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke07.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke08.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke09.wav"  //[Choking]
			],
			PlayerWitchChasingBiker = [
				"player/survivor/voice/" + custom_name + "/help03.wav",  //I'm in trouble!
				"player/survivor/voice/" + custom_name + "/help08.wav",  //I'm in some trouble!
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury03.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury04.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury05.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury06.wav"  //[Ahhhh - terrified yell]
			],
			PlayerWitchStartAttackBiker = [
				"player/survivor/voice/" + custom_name + "/fallshort01.wav",  //Oh no.
				"player/survivor/voice/" + custom_name + "/reactionnegative05.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/reactionnegative06.wav",  //Ah shit.
				"player/survivor/voice/" + custom_name + "/reactionnegative07.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/reactionnegative08.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/swear01.wav",  //Goddammit.
				"player/survivor/voice/" + custom_name + "/swear06.wav"  //Crap.
			],
			L4D1SurvivorCriticalHurtBiker = [
				"player/survivor/voice/" + custom_name + "/hurtcritical01.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical02.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical03.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical04.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical05.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical06.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical07.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical08.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical09.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical10.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical11.wav"  //[Pain noise - loud major pain]
			],
			L4D1SurvivorIncapacitatedHurtBiker = [
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury01.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury02.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury03.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury04.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury05.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury06.wav"  //[Ahhhh - terrified yell]
			],
			L4D1SurvivorMajorHurtBiker = [
				"player/survivor/voice/" + custom_name + "/hurtmajor01.wav",  //[Pain noise - ahh]
				"player/survivor/voice/" + custom_name + "/hurtmajor02.wav",  //[Pain noise - huh]
				"player/survivor/voice/" + custom_name + "/hurtmajor03.wav",  //[Pain noise - oy]
				"player/survivor/voice/" + custom_name + "/hurtmajor04.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor05.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor06.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor07.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor08.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor09.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor10.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor11.wav"  //[Pain noise - ugh]
			],
			L4D1SurvivorMinorHurtBiker = [
				"player/survivor/voice/" + custom_name + "/hurtminor01.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor02.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor03.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor04.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor05.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor06.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor07.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor08.wav"  //[Pain noise - short minor pain]
			],
			L4D1SurvivorReloadingBiker = [
				"player/survivor/voice/" + custom_name + "/reloading01.wav",  //Reloading!
				"player/survivor/voice/" + custom_name + "/reloading02.wav",  //Reloading!
				"player/survivor/voice/" + custom_name + "/reloading03.wav"  //Reloading!
			],
			SurvivorJockeyHurtMajorBiker = [
				"player/survivor/voice/" + custom_name + "/gettingrevived03.wav",  //[groan]
				"player/survivor/voice/" + custom_name + "/gettingrevived06.wav",  //[groan2]
				"player/survivor/voice/" + custom_name + "/hurtcritical02.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical05.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical08.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtmajor02.wav",  //[Pain noise - huh]
				"player/survivor/voice/" + custom_name + "/hurtmajor03.wav",  //[Pain noise - oy]
				"player/survivor/voice/" + custom_name + "/hurtminor01.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor03.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/screamwhilepounced01.wav",  //GET IT OFF!
				"player/survivor/voice/" + custom_name + "/screamwhilepounced02.wav",  //GET IT OFF! [angry]
				"player/survivor/voice/" + custom_name + "/screamwhilepounced03.wav",  //GET IT OFF
				"player/survivor/voice/" + custom_name + "/screamwhilepounced04.wav",  //GET IT OFF GET IT OFF
				"player/survivor/voice/" + custom_name + "/shoved05.wav"  //[Reaction to body hits - uhs ahs]
			],
			L4D1PlayerHelpIncappedBiker = [
				"player/survivor/voice/" + custom_name + "/help01.wav",  //Help!
				"player/survivor/voice/" + custom_name + "/help05.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help06.wav",  //Help!
				"player/survivor/voice/" + custom_name + "/help07.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help12.wav"  //Help me!
			],
			L4D1PlayerHelpIncappedBleedingBiker = [
				"player/survivor/voice/" + custom_name + "/help02.wav",  //I need some help over here.
				"player/survivor/voice/" + custom_name + "/help03.wav",  //I'm in trouble!
				"player/survivor/voice/" + custom_name + "/help08.wav",  //I'm in some trouble!
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle04.wav",  //I'm not screwing around, I really need some help over here!
				"player/survivor/voice/" + custom_name + "/help02.wav",  //I need some help over here.
				"player/survivor/voice/" + custom_name + "/help03.wav",  //I'm in trouble!
				"player/survivor/voice/" + custom_name + "/help04.wav",  //Dammit, I need some help
				"player/survivor/voice/" + custom_name + "/help08.wav",  //I'm in some trouble!
				"player/survivor/voice/" + custom_name + "/help09.wav",  //I need some help over here.
				"player/survivor/voice/" + custom_name + "/help10.wav",  //Hey! I need some help!
				"player/survivor/voice/" + custom_name + "/help11.wav",  //Hey! I need some help!
				"player/survivor/voice/" + custom_name + "/help13.wav",  //I need a hand over here
				"player/survivor/voice/" + custom_name + "/help14.wav",  //I'm in a little trouble over here
				"player/survivor/voice/" + custom_name + "/help15.wav",  //Dammit, I need some help.
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle04.wav",  //I'm not screwing around, I really need some help over here!
				"player/survivor/voice/" + custom_name + "/ledgehangstart01.wav",  //Hey, I could use a hand.
				"player/survivor/voice/" + custom_name + "/ledgehangstart02.wav",  //Get your ass over here and help me up.
				"player/survivor/voice/" + custom_name + "/ledgehangstart03.wav",  //Someone want to help me out here?
				"player/survivor/voice/" + custom_name + "/ledgehangstart04.wav",  //Hello. I could use a hand.
				"player/survivor/voice/" + custom_name + "/ledgehangstart05.wav",  //Someone wannna give me a hand?
				"player/survivor/voice/" + custom_name + "/ledgehangstart08.wav",  //Hey, I really need a hand.
				"player/survivor/voice/" + custom_name + "/ledgehangstart09.wav"  //Could use a hand here.
			],
			L4D1PlayerHelpIncappedLethargicBiker = [
				"player/survivor/voice/" + custom_name + "/dying01.wav",  //I need help NOW!
				"player/survivor/voice/" + custom_name + "/dying02.wav"  //This is it, I need help now!
			],
			L4D1HelpResponseBillBiker = [
				"player/survivor/voice/" + custom_name + "/insidesaferoom02.wav",  //Are we just gonna leave someone behind?
				"player/survivor/voice/" + custom_name + "/insidesaferoom06.wav",  //That old man wouldn't leave one of US out there.
				"player/survivor/voice/" + custom_name + "/insidesaferoom10.wav",  //Ahh shit, I just can't sit here and wait for them to die.
				"player/survivor/voice/" + custom_name + "/insidesaferoom19.wav"  //We just leavin' Bill out there?
			],
			L4D1HelpResponseLouisBiker = [
				"player/survivor/voice/" + custom_name + "/insidesaferoom02.wav",  //Are we just gonna leave someone behind?
				"player/survivor/voice/" + custom_name + "/insidesaferoom10.wav",  //Ahh shit, I just can't sit here and wait for them to die.
				"player/survivor/voice/" + custom_name + "/insidesaferoom18.wav",  //We should maybe go get Louis. I'm just sayin'...
				"player/survivor/voice/" + custom_name + "/insidesaferoom21.wav"  //We just leavin' Louis out there?
			],
			L4D1HelpResponseLouisBBiker = [
				"player/survivor/voice/" + custom_name + "/insidesaferoom21.wav"  //We just leavin' Louis out there?
			],
			L4D1HelpResponseLouisB2Biker = [
				"player/survivor/voice/" + custom_name + "/insidesaferoom22.wav"  //I mean, I'm cool with that if everyone else is.
			],
			L4D1HelpResponseZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/insidesaferoom02.wav",  //Are we just gonna leave someone behind?
				"player/survivor/voice/" + custom_name + "/insidesaferoom05.wav"  //We can't leave Zoey out there.
			],
			L4D1PlayeGoingToDie3VampirebBiker = [
				"player/survivor/voice/" + custom_name + "/generic33.wav"  //Call these freaks whatever you want.
			],
			L4D1PlayerAirport02CraneStartedBiker = [
				"player/survivor/voice/" + custom_name + "/genericresponses11.wav",  //Ah shit, here we go again.
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			L4D1PlayerAirport02DumpsterDownBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0209.wav",  //It's down! Let's move!
				"player/survivor/voice/" + custom_name + "/worldairport0210.wav",  //Our dumpster has arrived! Let's go!
				"player/survivor/voice/" + custom_name + "/worldairport0231.wav"  //Our dumpster has arrived! Let's go, girls!
			],
			L4D1Playerairport03_barrieraBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0302.wav"  //It figures the only thing in the damn city not on fire is the one thing we need burned down.
			],
			L4D1PlayerAirport03FirePathClearaBiker = [
				"player/survivor/voice/" + custom_name + "/arrivegeneric01.wav"  //Lets get out of here. Go go go!
			],
			L4D1PlayerAirport03FirePathClearXBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0309.wav",  //The path is clear!
				"player/survivor/voice/" + custom_name + "/worldairport0310.wav"  //We burned a path!
			],
			L4D1PlayerAirport03FireStartedXBiker = [
				"player/survivor/voice/" + custom_name + "/swearcoupdegrace01.wav",  //Burn you son of a bitch.
				"player/survivor/voice/" + custom_name + "/worldairport0322.wav",  //Heh heh, hot shot.
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			L4D1Playerairport04_05aBiker = [
				"player/survivor/voice/" + custom_name + "/laughter07.wav",  //<Short laugh>
				"player/survivor/voice/" + custom_name + "/reactionpositive01.wav"  //[laugh]
			],
			L4D1Playerairport04_08aBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0410.wav"  //Bill? I was the one that said that.
			],
			L4D1Playerairport04_08bBiker = [
				"player/survivor/voice/" + custom_name + "/genericresponses08.wav",  //That sounds about right.
				"player/survivor/voice/" + custom_name + "/violenceawe05.wav"  //Holy shit...
			],
			L4D1Playerairport04_08cBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0419.wav",  //We need to get out to the runway.
				"player/survivor/voice/" + custom_name + "/worldairport0420.wav"  //We gotta get to the runway.
			],
			L4D1Playerairport04_vanaBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0425.wav"  //I hate vans.
			],
			L4D1PlayerRemarkairport02_creshendo01aBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0205.wav",  //The crane'll lower that dumpster, then we can jump across.
				"player/survivor/voice/" + custom_name + "/worldairport0206.wav",  //We can get across on that dumpster.
				"player/survivor/voice/" + custom_name + "/worldairport0207.wav",  //Somebody wanna lower that dumpster so we can get across?
				"player/survivor/voice/" + custom_name + "/worldairport0208.wav",  //Somebody start the crane.
				"player/survivor/voice/" + custom_name + "/worldairport0229.wav"  //Don't everybody start the crane at once.
			],
			L4D1PlayerRemarkairport02_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0201.wav",  //We can get back to the rooftops.
				"player/survivor/voice/" + custom_name + "/worldairport0202.wav",  //Let's head back up.
				"player/survivor/voice/" + custom_name + "/worldairport0203.wav"  //We oughtta get back on the rooftops.
			],
			L4D1PlayerRemarkairport02_path02Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0511.wav",  //I hate lawyers
				"player/survivor/voice/" + custom_name + "/worldsmalltown0512.wav"  //I hate boat lawyers. When are they gonna get done practicing law?
			],
			L4D1PlayerRemarkairport02_path03Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0320.wav"  //Hey suit, this look familiar? tch tck?
			],
			L4D1PlayerRemarkairport02_path04Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0215.wav",  //Down the stairs!
				"player/survivor/voice/" + custom_name + "/worldairport0216.wav",  //Let's head down the stairs.
				"player/survivor/voice/" + custom_name + "/worldairport0224.wav",  //Looks like we take the stairs.
				"player/survivor/voice/" + custom_name + "/worldairport0224.wav"  //Looks like we take the stairs.
			],
			L4D1PlayerRemarkairport02_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0221.wav",  //We're getting close the airport!
				"player/survivor/voice/" + custom_name + "/worldairport0222.wav"  //We're almost to the airport!
			],
			L4D1PlayerRemarkairport03_01Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0311.wav",  //This better not be the plane we saw.
				"player/survivor/voice/" + custom_name + "/worldairport0315.wav",  //What idiot bombed the airport?
				"player/survivor/voice/" + custom_name + "/worldairport0317.wav"  //Ah shit, that half a plane ain't real encouraging.
			],
			L4D1PlayerRemarkairport03_02Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0303.wav",  //THE AIRPORT!
				"player/survivor/voice/" + custom_name + "/worldairport0304.wav",  //HELL YES, IT'S THE AIRPORT!
				"player/survivor/voice/" + custom_name + "/worldairport0306.wav",  //What the hell happened to the airport?
				"player/survivor/voice/" + custom_name + "/worldairport0319.wav",  //THE AIRPORT! Told ya I'd get us here.
				"player/survivor/voice/" + custom_name + "/worldairport0321.wav"  //What friggin' idiot bombed the airport?
			],
			L4D1PlayerRemarkairport03_03Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0308.wav"  //The doors are all blocked!
			],
			L4D1PlayerRemarkairport03_04Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0312.wav",  //We can get inside over the skybridge.
				"player/survivor/voice/" + custom_name + "/worldairport0313.wav"  //There's the skybridge!
			],
			L4D1PlayerRemarkairport03_05Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0323.wav"  //Never a cop when you need one.
			],
			L4D1PlayerRemarkairport03_06Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0316.wav"  //Let's go through here.
			],
			L4D1PlayerRemarkairport03_barrierBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0301.wav",  //Let's burn down this barricade.
				"player/survivor/voice/" + custom_name + "/worldairport0318.wav"  //Let's burn this pile a' crap.
			],
			L4D1PlayerRemarkairport04_01Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0402.wav"  //Let's go through the offices!
			],
			L4D1PlayerRemarkairport04_03Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0426.wav"  //God's dead, huh? Well, join the damn club.
			],
			L4D1PlayerRemarkairport04_07Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0416.wav",  //I hate Ayn Rand.
				"player/survivor/voice/" + custom_name + "/worldairport0421.wav"  //This is the most sober I've ever been in an airport.
			],
			L4D1PlayerRemarkairport04_08Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0412.wav",  //There's the plane we saw!
				"player/survivor/voice/" + custom_name + "/worldairport0413.wav",  //Let's get down to that plane!
				"player/survivor/voice/" + custom_name + "/worldairport0414.wav",  //There's the plane! How the hell do to it?
				"player/survivor/voice/" + custom_name + "/worldairport0423.wav"  //There's the plane!
			],
			L4D1PlayerRemarkairport04_vanBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0403.wav",  //We can send the van through that pile a' crap.
				"player/survivor/voice/" + custom_name + "/worldairport0404.wav"  //We gotta get through that pile a' junk.
			],
			L4D1PlayerRemarkcrashcourse01_path01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2pilotcomment01.wav"  //Hey, Zoey, here's the pilot. Case you wanna shoot him again.
			],
			L4D1PlayerRemarkFarm01_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0112.wav"  //I hate the woods.
			],
			L4D1PlayerRemarkFarm01_path02Biker = [
				"player/survivor/voice/" + custom_name + "/followme04.wav"  //This way.
			],
			L4D1PlayerRemarkFarm01_path03Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0107.wav"  //Nice place.
			],
			L4D1PlayerRemarkFarm01_path04Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0108.wav"  //There's the tracks. Now we just need to get to 'em.
			],
			L4D1PlayerRemarkFarm02_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0214.wav",  //The tracks should just be downstairs.
				"player/survivor/voice/" + custom_name + "/worldhospital0410.wav"  //I hate stairs.
			],
			L4D1PlayerRemarkFarm02_path02Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0318.wav"  //There's the tracks!
			],
			L4D1PlayerRemarkFarm02_path02bBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0406.wav"  //The tracks!
			],
			L4D1PlayerRemarkFarm02_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0114.wav"  //Down here!
			],
			L4D1PlayerRemarkFarm02_path08Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0204.wav"  //This tunnel heads the right way.
			],
			L4D1PlayerRemarkFarm02_path09Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections03.wav"  //Let's get up that ladder!
			],
			L4D1PlayerRemarkFarm03_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0302.wav"  //This better go through.
			],
			L4D1PlayerRemarkFarm03_path03aBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0109.wav"  //Bet we can get to the tracks from that building.
			],
			L4D1PlayerRemarkFarm03_path04Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0406.wav"  //The tracks!
			],
			L4D1PlayerRemarkFarm03_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0207.wav"  //Well, goddamnit, the tracks are blocked.
			],
			L4D1PlayerRemarkFarm03_path07Biker = [
				"player/survivor/voice/" + custom_name + "/reactiondisgusted03.wav"  //Yech...
			],
			L4D1PlayerRemarkFarm03_path08Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0326.wav"  //You know - I bet we could knock that bridge down.
			],
			L4D1PlayerRemarkFarm03_path10Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0314.wav"  //Up there!
			],
			L4D1PlayerRemarkFarm04_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0403.wav"  //Let's check out the barn.
			],
			L4D1PlayerRemarkFarm04_path02Biker = [
				"player/survivor/voice/" + custom_name + "/generic26.wav"  //There's the tracks!
			],
			L4D1PlayerRemarkFarm04_path04Biker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			L4D1PlayerRemarkFarm04_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0412.wav"  //We can get around down here.
			],
			L4D1PlayerRemarkFarm04_path07Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections01.wav"  //Up the stairs!
			],
			L4D1PlayerRemarkFarm04_path08Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav"  //Through here!
			],
			L4D1PlayerRemarkFarm04_path10Biker = [
				"player/survivor/voice/" + custom_name + "/violenceawe04.wav",  //Whoa.
				"player/survivor/voice/" + custom_name + "/violenceawe05.wav"  //Holy shit...
			],
			L4D1PlayerRemarkFarm05_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0501.wav"  //Get to the farm house!
			],
			L4D1PlayerRemarkFarm05_path07Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0526.wav"  //Goddamn tape loop piece of shit.
			],
			L4D1PlayerRemarkFarm05_path07VampiresBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0525.wav"  //You got to be shittin me.  We walk a hundred miles, fight 5 million vampires -
			],
			L4D1PlayerRemarkFarm05_path07VampirescBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0527.wav"  //-whatever. And all they got is a goddamn tape loop? Screw the goddamn army.
			],
			L4D1PlayerRemarkFarm05_path08Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0502.wav",  //An outpost!
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0503.wav"  //Yeah, we made it!
			],
			L4D1PlayerRemarkhospital03_path03Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0305.wav"  //Get on the lift!
			],
			L4D1PlayerRemarkhospital03_path04Biker = [
				"player/survivor/voice/" + custom_name + "/followme09.wav"  //This way, kids.
			],
			L4D1PlayerRemarkhospital03_path07Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0308.wav"  //I hate sewers.
			],
			L4D1PlayerRemarkhospital03_path08Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0306.wav"  //Now this is some shit.
			],
			L4D1PlayerRemarkhospital03_path08a2Biker = [
				"player/survivor/voice/" + custom_name + "/generic04.wav",  //Oh hey, that is uncalled for!
				"player/survivor/voice/" + custom_name + "/teamkillonpurpose09.wav"  //Hey! hey!
			],
			L4D1PlayerRemarkhospital04_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0404.wav",  //I hate hospitals.  And doctors and lawyers and cops...
				"player/survivor/voice/" + custom_name + "/worldhospital0408.wav"  //I hate hospitals.
			],
			L4D1PlayerRemarkhospital04_path02Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0410.wav"  //I hate stairs.
			],
			L4D1PlayerRemarkhospital04_path04Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0406.wav",  //Elevator's here!
				"player/survivor/voice/" + custom_name + "/worldhospital0407.wav"  //Get on the elevator!
			],
			L4D1PlayerRemarkhospital04_path04aBiker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0406.wav",  //Elevator's here!
				"player/survivor/voice/" + custom_name + "/worldhospital0407.wav"  //Get on the elevator!
			],
			L4D1PlayerRemarkhospital05_path01aBiker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0401.wav"  //If he ain't, at least we'll die with a nice view of the city.
			],
			L4D1PlayerRemarkhospital05_path02Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldairport0305.wav"  //Through here!
			],
			L4D1PlayerAirport04VanStartedXBiker = [
				"player/survivor/voice/" + custom_name + "/answerready04.wav",  //Let's go break stuff!
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			L4D1PlayerRemarkPathClearVanBiker = [
				"player/survivor/voice/" + custom_name + "/arrivegeneric04.wav",  //Let's get out of here. GoGoGO!
				"player/survivor/voice/" + custom_name + "/moveon01.wav",  //Allright, let's go
				"player/survivor/voice/" + custom_name + "/moveon07.wav",  //Time to go, ladies.
				"player/survivor/voice/" + custom_name + "/moveon10.wav",  //Come on, let's go.
				"player/survivor/voice/" + custom_name + "/pathclear01.wav",  //Path's clear! Let's go!
				"player/survivor/voice/" + custom_name + "/worldairport0309.wav"  //The path is clear!
			],
			L4D1PlayerRemarkSmalltown01_path03Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections03.wav"  //Let's get up that ladder!
			],
			L4D1PlayerRemarkSmalltown01_path05Biker = [
				"player/survivor/voice/" + custom_name + "/generic60.wav",  //Fan-tastic. A tunnel.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0203.wav",  //Looks like this tunnel heads the right way.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0208.wav"  //Let's try this tunnel.
			],
			L4D1PlayerRemarkSmalltown01_path06Biker = [
				"player/survivor/voice/" + custom_name + "/reactionapprehensive03.wav",  //I don't like ths one damn bit.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0212.wav"  //I hate tunnels.
			],
			L4D1PlayerRemarkSmalltown01_path08Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldairport0305.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldairport0316.wav"  //Let's go through here.
			],
			L4D1PlayerRemarkSmalltown01_path10Biker = [
				"player/survivor/voice/" + custom_name + "/generic16.wav"  //Uh oh. Watch out. There might be *deer* around here.
			],
			L4D1PlayerRemarksmalltown02_path01aBiker = [
				"player/survivor/voice/" + custom_name + "/generic19.wav"  //How the hell do you know *that*?
			],
			L4D1PlayerRemarksmalltown02_path01cBiker = [
				"player/survivor/voice/" + custom_name + "/generic20.wav"  //Know what? I just realized I don't care. Lead on.
			],
			L4D1PlayerRemarksmalltown02_path02Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav"  //Through here!
			],
			L4D1PlayerRemarksmalltown02_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0201.wav"  //We gotta activate that bridge.
			],
			L4D1PlayerRemarksmalltown02_path07aBiker = [
				"player/survivor/voice/" + custom_name + "/laughter09.wav"  //<Short laugh>
			],
			L4D1PlayerRemarksmalltown02_path08Biker = [
				"player/survivor/voice/" + custom_name + "/positivenoise05.wav"  //[Improv non-verbal pleasure & interest sounds]
			],
			L4D1PlayerRemarkSmalltown03_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0204.wav"  //I hate trainyards.
			],
			L4D1PlayerRemarkSmalltown03_path03Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections11.wav"  //We gotta get over this thing.
			],
			L4D1PlayerRemarkSmalltown03_path04Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections01.wav"  //Up the stairs!
			],
			L4D1PlayerRemarkSmalltown03_path06Biker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			L4D1PlayerRemarkSmalltown03_path08Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0302.wav",  //Almost to Riverside.
				"player/survivor/voice/" + custom_name + "/worldsmalltown0308.wav"  //Riverside ain't too far from here.
			],
			L4D1PlayerRemarkSmalltown03_path10Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0316.wav",  //There might be supplies in that house.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0317.wav",  //Let's check this house.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0524.wav"  //That is one creepy ass house.
			],
			L4D1PlayerRemarkSmalltown03_path11Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0303.wav"  //The town's pretty quiet...
			],
			L4D1PlayerRemarkSmalltown03_path12Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0309.wav"  //There's lights on in that church!
			],
			L4D1PlayerRemarkSmalltown04_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0306.wav",  //Looks like Riverside couldn't hold it together.
				"player/survivor/voice/" + custom_name + "/worldsmalltown0401.wav"  //Riverside's a bust. Let's just get to the river and steal a boat.
			],
			L4D1PlayerRemarkSmalltown04_path05Biker = [
				"player/survivor/voice/" + custom_name + "/followme04.wav"  //This way.
			],
			L4D1PlayerRemarkSmalltown04_path05aBiker = [
				"player/survivor/voice/" + custom_name + "/generic07.wav"  //I'm comin' Bill. Keep yer beard on.
			],
			L4D1PlayerRemarkSmalltown04_path10Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections01.wav",  //Up the stairs!
				"player/survivor/voice/" + custom_name + "/worldairport0202.wav",  //Let's head back up.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0327.wav",  //We need to get up there.
				"player/survivor/voice/" + custom_name + "/worldsmalltown0116.wav"  //We can take these stairs!
			],
			L4D1PlayerRemarkSmalltown05_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0316.wav",  //There might be supplies in that house.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0317.wav"  //Let's check this house.
			],
			L4D1PlayerRemarkSmalltown05_path02Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0311.wav"  //I hate small towns.
			],
			L4D1PlayerRemarkSmalltown05_path03Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0402.wav"  //We can get to the river through here.
			],
			L4D1PlayerRemarkSmalltown05_path03aBiker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0509.wav"  //I hate the water.
			],
			L4D1PlayerRemarkSmalltown05_path04Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0425.wav"  //I hate vans.
			],
			L4D1PlayerRemarkSmalltown05_path05Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0425.wav"  //I hate vans.
			],
			L4D1PlayerRemarkSmalltown05_path06Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav"  //Through here!
			],
			L4D1PlayerRemarkThroughHereBiker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0206.wav"  //Through here!
			],
			L4D1PlayerRemarkUpThatLadderBiker = [
				"player/survivor/voice/" + custom_name + "/genericdirections03.wav"  //Let's get up that ladder!
			],
			L4D1PlayerZoeySuggestsCraneBiker = [
				"player/survivor/voice/" + custom_name + "/genericresponses04.wav",  //Sure, why not?
				"player/survivor/voice/" + custom_name + "/genericresponses08.wav",  //That sounds about right.
				"player/survivor/voice/" + custom_name + "/genericresponses10.wav",  //Good thinking.
				"player/survivor/voice/" + custom_name + "/worldairport0217.wav",  //Good thinking!
				"player/survivor/voice/" + custom_name + "/worldairport0227.wav"  //Good thinking, Zoey!
			],
			L4D1RespondAffirmativeBiker = [
				"player/survivor/voice/" + custom_name + "/yes02.wav",  //Okay.
				"player/survivor/voice/" + custom_name + "/yes05.wav"  //Yeah.
			],
			L4D1RiversideIsDeadPlanBiker = [
				"player/survivor/voice/" + custom_name + "/genericresponses10.wav",  //Good thinking.
				"player/survivor/voice/" + custom_name + "/worldairport0112.wav"  //That's better than my plan.
			],
			L4D1RiversideIsDeadSpecial1BBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0113.wav"  //I didn't have one.
			],
			PlayerRemarkc7m1_bricktopBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3generic05.wav"  //On top the bricks.
			],
			PlayerRemarkc7m1_pastbricksBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3generic06.wav"  //Past the bricks.
			],
			PlayerRemarkc7m1_pretankBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard01.wav",  //Do we really want to open that door? Please say no.
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard03.wav"  //Okay. So, I'm not opening the door. You guys work it out and let me know when the door's open.
			],
			PlayerRemarkc7m1_pretankBillBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard02.wav"  //Hey, Bill, I think there's a sailboat in the train.
			],
			PlayerRemarkc7m1_pretankLouisBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard05.wav",  //Hey Louis, I don't think it's a tank in there.  It sounds like a puppy.  You should stand closer.
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard08.wav"  //Louis, you gonna open that door or what?
			],
			PlayerRemarkc7m1_tankcarBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intanktraincar02.wav",  //Hey, Bill. Your sailboat smells like shit.
				"player/survivor/voice/" + custom_name + "/c6dlc3intanktraincar03.wav"  //God. Smells like Bill's beard in here
			],
			PlayerRemarkc7m2_climbupcrapBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1directional07.wav",  //We can get back up over here!
				"player/survivor/voice/" + custom_name + "/dlc2m2directional02.wav"  //Up that fence!
			],
			PlayerRemarkc7m2_gravelhillBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill06.wav",  //Get up this pile of crap!
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill07.wav"  //Anyone wanna guess what I'm hatin' right now?
			],
			PlayerRemarkc7m2_gravelhillBillBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill03.wav"  //Nesting birds, Bill! Watch your beard?
			],
			PlayerRemarkc7m2_listingtugBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats09.wav"  //Hey, here's a boat.
			],
			PlayerRemarkc7m2_overboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3generic01.wav"  //Over the ship!
			],
			PlayerRemarkc7m2_seebargeBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3seeingbigship01.wav"  //Yo, Captain Bill, can we take this ship?
			],
			PlayerRemarkc7m2_throughhereBiker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0206.wav"  //Through here!
			],
			PlayerRemarkc7m3_seesailboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3spottingsailboat01.wav",  //That boat'll do. We better lift the bridge so we can head out.
				"player/survivor/voice/" + custom_name + "/c6dlc3spottingsailboat04.wav"  //We're gonna need to raise that bridge.
			],
			PlayerRemarkc7m3_seesailboatBillBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3spottingsailboat02.wav",  //There's your sailboat Bill, by the bridge.
				"player/survivor/voice/" + custom_name + "/c6dlc3spottingsailboat03.wav"  //Bill, is that a sailboat by the bridge?  WHY YES IT IS!
			],
			PlayerRemarkinfo_carboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats08.wav"  //I think this car will float.
			],
			PlayerRemarkinfo_carnotboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats11.wav"  //Boat! Hop in, let's get outta here!
			],
			PlayerRemarkInfo_powerboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats01.wav",  //There's a boat.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats02.wav",  //How about this boat?
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats04.wav",  //Hey, there's a boat.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats05.wav",  //That boat?
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats10.wav"  //BOAT!
			],
			PlayerRemarkinfo_powerboat4Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats03.wav",  //There's a boat.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats07.wav"  //Will that boat work?
			],
			PlayerRemarkinfo_sunkboatthereBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats06.wav"  //Bill, there's a boat.
			],
			PlayerRemarkinfo_trailerboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats13.wav"  //Look Bill, this boat has wheels.
			],
			PlayerRemarkinfo_trailerboatruckBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats12.wav"  //What about this one? It comes with a truck!
			],
			L4D1SurvivorNearFinaleBiker = [
				"player/survivor/voice/" + custom_name + "/finaleahead01.wav",  //We're almost there!
				"player/survivor/voice/" + custom_name + "/finaleahead02.wav",  //We're almost out of here!
				"player/survivor/voice/" + custom_name + "/finaleahead03.wav",  //Now there's a sight for sore eyes. Looks like we're gonna make it, kids.
				"player/survivor/voice/" + custom_name + "/finaleahead04.wav"  //Hey, we're almost outta this shithole. I told you I'd get you here.
			],
			L4D1PlayerNearFinaleC7M3Biker = [
				"player/survivor/voice/" + custom_name + "/answerready05.wav",  //Let's go kill somethin'!
				"player/survivor/voice/" + custom_name + "/hurryup08.wav",  //Let's go, let's go!
				"player/survivor/voice/" + custom_name + "/moveon03.wav",  //Let's go.
				"player/survivor/voice/" + custom_name + "/moveon09.wav",  //I'm tired of waitin' around here. Come on, let's go.
				"player/survivor/voice/" + custom_name + "/moveon10.wav"  //Come on, let's go.
			],
			L4D1PlayerNearFinaleC11M5Biker = [
				"player/survivor/voice/" + custom_name + "/look04.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/look05.wav"  //Look!
			],
			L4D1PlayerNearFinaleC12M5Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill07.wav",  //Anyone wanna guess what I'm hatin' right now?'
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill01.wav"  //Shut up, you stupid birds.
			],
			L4D1C11M5NearFinale2Biker = [
				"player/survivor/voice/" + custom_name + "/incoming07.wav"  //This is gonna be good.
			],
			SurvivorNearCheckpointBiker = [
				"player/survivor/voice/" + custom_name + "/safespotahead06.wav",  //Safe house ahead!
				"player/survivor/voice/" + custom_name + "/safespotahead07.wav",  //Safe house!
				"player/survivor/voice/" + custom_name + "/safespotahead08.wav",  //Safe house, let's go!
				"player/survivor/voice/" + custom_name + "/safespotahead03.wav"  //We're near a safe spot.
			],
			SurvivorNearCheckpointC8M3Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0301.wav",  //We've got to get to the hospital.
				"player/survivor/voice/" + custom_name + "/worldhospital0302.wav",  //Into the hospital!
				"player/survivor/voice/" + custom_name + "/worldhospital0303.wav"  //There's a safe house in the hospital!
			],
			SurvivorNearCheckpointC10M1Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0315.wav",  //Safe house up there!
				"player/survivor/voice/" + custom_name + "/worldsmalltown0117.wav"  //Safe house up there!
			],
			SurvivorNearCheckpointC11M2Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0223.wav"  //Safe house in that storage place!
			],
			SurvivorNearCheckpointC11M3Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0314.wav"  //There's a safe house across the skybridge!
			],
			SurvivorNearCheckpointC11M4Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0424.wav"  //The sad thing is this is only the second worst time I've ever had in an airport.
			],
			SurvivorNearCheckpointC12M4Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0416.wav"  //Run for the train car!
			],
			SurvivorNearCheckpointC10M4Biker = [
				"player/survivor/voice/" + custom_name + "/hurryup04.wav",  //MOVE.
				"player/survivor/voice/" + custom_name + "/hurryup05.wav",  //Let's go ladies!
				"player/survivor/voice/" + custom_name + "/hurryup06.wav",  //Put your rear in gear!
				"player/survivor/voice/" + custom_name + "/hurryup08.wav",  //Let's go, let's go!
				"player/survivor/voice/" + custom_name + "/hurryup09.wav"  //Come on, let's go!
			],
			SafeSpotAheadResponseBiker = [
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction01.wav",  //Finally!
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction02.wav",  //A-men to that!
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool!
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction04.wav",  //Well, all right!
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction05.wav",  //Finally.
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction07.wav"  //A-frickin'-men.
			],
			L4D1AynRandResponseBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0416.wav"  //I hate Ayn Rand.
			],
			L4D1PlayerCoverMeBiker = [
				"player/survivor/voice/" + custom_name + "/coverme01.wav",  //Cover me!
				"player/survivor/voice/" + custom_name + "/coverme02.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme03.wav",  //Watch my back
				"player/survivor/voice/" + custom_name + "/coverme04.wav",  //Cover me!
				"player/survivor/voice/" + custom_name + "/coverme05.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme06.wav"  //Watch my back
			],
			L4D1PlayerFollowMeBiker = [
				"player/survivor/voice/" + custom_name + "/followme01.wav",  //Come on, this way.
				"player/survivor/voice/" + custom_name + "/followme02.wav",  //Follow me!
				"player/survivor/voice/" + custom_name + "/followme03.wav",  //Follow me.
				"player/survivor/voice/" + custom_name + "/followme04.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme05.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme06.wav",  //I got the lead - follow me.
				"player/survivor/voice/" + custom_name + "/followme07.wav",  //I got the lead.
				"player/survivor/voice/" + custom_name + "/followme08.wav",  //Well, hell, let's all follow me.
				"player/survivor/voice/" + custom_name + "/followme09.wav"  //This way, kids.
			],
			L4D1PlayerHelpBiker = [
				"player/survivor/voice/" + custom_name + "/help01.wav",  //Help!
				"player/survivor/voice/" + custom_name + "/help02.wav",  //I need some help over here.
				"player/survivor/voice/" + custom_name + "/help03.wav",  //I'm in trouble!
				"player/survivor/voice/" + custom_name + "/help05.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help06.wav",  //Help!
				"player/survivor/voice/" + custom_name + "/help07.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help08.wav",  //I'm in some trouble!
				"player/survivor/voice/" + custom_name + "/help09.wav",  //I need some help over here.
				"player/survivor/voice/" + custom_name + "/help10.wav",  //Hey! I need some help!
				"player/survivor/voice/" + custom_name + "/help11.wav",  //Hey! I need some help!
				"player/survivor/voice/" + custom_name + "/help12.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help13.wav",  //I need a hand over here
				"player/survivor/voice/" + custom_name + "/help14.wav"  //I'm in a little trouble over here
			],
			L4D1PlayerHurryUpBiker = [
				"player/survivor/voice/" + custom_name + "/hurryup01.wav",  //Hurry up!
				"player/survivor/voice/" + custom_name + "/hurryup02.wav",  //Hurry up!
				"player/survivor/voice/" + custom_name + "/hurryup03.wav",  //Hurry!
				"player/survivor/voice/" + custom_name + "/hurryup04.wav",  //MOVE.
				"player/survivor/voice/" + custom_name + "/hurryup05.wav",  //Let's go ladies!
				"player/survivor/voice/" + custom_name + "/hurryup06.wav",  //Put your rear in gear!
				"player/survivor/voice/" + custom_name + "/hurryup08.wav",  //Let's go, let's go!
				"player/survivor/voice/" + custom_name + "/hurryup09.wav"  //Come on, let's go!
			],
			L4D1PlayerKillThatLightBiker = [
				"player/survivor/voice/" + custom_name + "/killthatlight01.wav",  //Kill that light!
				"player/survivor/voice/" + custom_name + "/killthatlight02.wav",  //Kill that light!
				"player/survivor/voice/" + custom_name + "/killthatlight03.wav",  //Kill that light!
				"player/survivor/voice/" + custom_name + "/killthatlight04.wav",  //Turn your light off!
				"player/survivor/voice/" + custom_name + "/killthatlight05.wav",  //Lights off!
				"player/survivor/voice/" + custom_name + "/killthatlight06.wav",  //Flashlights off!
				"player/survivor/voice/" + custom_name + "/killthatlight07.wav",  //Kill that light!
				"player/survivor/voice/" + custom_name + "/killthatlight08.wav",  //Shut off your flashlight, they'll see us!
				"player/survivor/voice/" + custom_name + "/killthatlight09.wav",  //Turn off your light.
				"player/survivor/voice/" + custom_name + "/killthatlight10.wav"  //No lights!
			],
			L4D1PlayerLeadOnBiker = [
				"player/survivor/voice/" + custom_name + "/leadon01.wav",  //I'll follow you.
				"player/survivor/voice/" + custom_name + "/leadon02.wav",  //You go ahead, I'll follow you.
				"player/survivor/voice/" + custom_name + "/leadon03.wav",  //You take the lead.
				"player/survivor/voice/" + custom_name + "/leadon04.wav",  //Go ahead.
				"player/survivor/voice/" + custom_name + "/leadon05.wav",  //Go ahead.
				"player/survivor/voice/" + custom_name + "/leadon06.wav",  //After you.
				"player/survivor/voice/" + custom_name + "/leadon07.wav"  //After you, ladies.
			],
			L4D1PlayerMoveOnBiker = [
				"player/survivor/voice/" + custom_name + "/moveon01.wav",  //Allright, let's go
				"player/survivor/voice/" + custom_name + "/moveon02.wav",  //Come on, we ain't got all day.
				"player/survivor/voice/" + custom_name + "/moveon03.wav",  //Let's go.
				"player/survivor/voice/" + custom_name + "/moveon04.wav",  //Let's get moving.
				"player/survivor/voice/" + custom_name + "/moveon05.wav",  //Let's move.
				"player/survivor/voice/" + custom_name + "/moveon07.wav",  //Time to go, ladies.
				"player/survivor/voice/" + custom_name + "/moveon08.wav",  //Let's go.
				"player/survivor/voice/" + custom_name + "/moveon09.wav",  //I'm tired of waitin' around here. Come on, let's go.
				"player/survivor/voice/" + custom_name + "/moveon10.wav",  //Come on, let's go.
				"player/survivor/voice/" + custom_name + "/moveon11.wav",  //Come on, let's move.
				"player/survivor/voice/" + custom_name + "/moveon12.wav"  //Come on,come on, let's go.
			],
			L4D1PlayerStayTogetherBiker = [
				"player/survivor/voice/" + custom_name + "/staytogether01.wav",  //Stay close!
				"player/survivor/voice/" + custom_name + "/staytogether02.wav",  //We gotta stay together.
				"player/survivor/voice/" + custom_name + "/staytogether03.wav",  //Keep together!
				"player/survivor/voice/" + custom_name + "/staytogether04.wav",  //Stay together!
				"player/survivor/voice/" + custom_name + "/staytogether05.wav",  //Don't split up!
				"player/survivor/voice/" + custom_name + "/staytogether06.wav",  //Don't nobody wander off.
				"player/survivor/voice/" + custom_name + "/staytogether07.wav",  //Stay close.
				"player/survivor/voice/" + custom_name + "/staytogether08.wav",  //Don't get split up!
				"player/survivor/voice/" + custom_name + "/staytogether09.wav",  //Stay together!
				"player/survivor/voice/" + custom_name + "/staytogether11.wav",  //Don't stray!
				"player/survivor/voice/" + custom_name + "/staytogether12.wav"  //Keep together!
			],
			L4D1PlayerWatchOutBehindBiker = [
				"player/survivor/voice/" + custom_name + "/watchoutbehind01.wav",  //Behind us!
				"player/survivor/voice/" + custom_name + "/watchoutbehind02.wav",  //They're behind us!
				"player/survivor/voice/" + custom_name + "/watchoutbehind03.wav"  //Behind us!
			],
			L4D1PlayerAskReadyBiker = [
				"player/survivor/voice/" + custom_name + "/askready01.wav",  //Ready for this?
				"player/survivor/voice/" + custom_name + "/askready02.wav",  //Ready for this?
				"player/survivor/voice/" + custom_name + "/askready03.wav",  //Ready?
				"player/survivor/voice/" + custom_name + "/askready04.wav",  //Ready?
				"player/survivor/voice/" + custom_name + "/askready05.wav",  //Ready for some fun?
				"player/survivor/voice/" + custom_name + "/askready06.wav",  //Everybody ready?
				"player/survivor/voice/" + custom_name + "/askready07.wav",  //You ready to roll?
				"player/survivor/voice/" + custom_name + "/askready08.wav",  //We ready?
				"player/survivor/voice/" + custom_name + "/askready09.wav",  //Everyone ready?
				"player/survivor/voice/" + custom_name + "/askready10.wav"  //You ladies ready for this?
			],
			L4D1PlayerImWithYouBiker = [
				"player/survivor/voice/" + custom_name + "/imwithyou01.wav",  //Right behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou02.wav",  //I've got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou03.wav",  //I've got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou04.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou05.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou06.wav",  //Right behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou07.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou08.wav",  //I got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou09.wav",  //Behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou10.wav"  //I'm here!
			],
			L4D1PlayerLaughBiker = [
				"player/survivor/voice/" + custom_name + "/laughter01.wav",  //<Short Laugh>
				"player/survivor/voice/" + custom_name + "/laughter04.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter05.wav",  //<Short Laugh>
				"player/survivor/voice/" + custom_name + "/laughter07.wav",  //<Short Laugh>
				"player/survivor/voice/" + custom_name + "/laughter08.wav",  //<Short Laugh>
				"player/survivor/voice/" + custom_name + "/laughter09.wav",  //<Short Laugh>
				"player/survivor/voice/" + custom_name + "/laughter11.wav",  //<Short Laugh>
				"player/survivor/voice/" + custom_name + "/laughter12.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter13.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter14.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter15.wav"  //<Hearty Laugh>
			],
			L4D1PlayerLostCallBiker = [
				"player/survivor/voice/" + custom_name + "/lostcall01.wav",  //Hello
				"player/survivor/voice/" + custom_name + "/lostcall04.wav",  //Is anyone there?
				"player/survivor/voice/" + custom_name + "/lostcall05.wav",  //Marco!
				"player/survivor/voice/" + custom_name + "/lostcall08.wav"  //Hello? Where dija go?
			],
			L4D1PlayerNiceJobResponseBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob01.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob02.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob03.wav",  //Nice job.
				"player/survivor/voice/" + custom_name + "/nicejob04.wav",  //Shit, that was all right
				"player/survivor/voice/" + custom_name + "/nicejob05.wav",  //Damn, not bad.
				"player/survivor/voice/" + custom_name + "/nicejob06.wav",  //Nice job.
				"player/survivor/voice/" + custom_name + "/nicejob07.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob08.wav",  //Nice job.
				"player/survivor/voice/" + custom_name + "/nicejob09.wav",  //Nice job.
				"player/survivor/voice/" + custom_name + "/nicejob10.wav",  //Nice work.
				"player/survivor/voice/" + custom_name + "/nicejob11.wav",  //Well, shit, that was all right
				"player/survivor/voice/" + custom_name + "/nicejob12.wav",  //Nice damn job.
				"player/survivor/voice/" + custom_name + "/nicejob13.wav",  //Damn, not bad.
				"player/survivor/voice/" + custom_name + "/nicejob14.wav",  //Shiiiit.
				"player/survivor/voice/" + custom_name + "/nicejob15.wav",  //Hey, nice work.
				"player/survivor/voice/" + custom_name + "/nicejob16.wav",  //Well whaddya know. Good job!
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/nicejob18.wav",  //You suprised me. Nice job.
				"player/survivor/voice/" + custom_name + "/nicejob19.wav"  //I knew you had it in ya.
			],
			L4D1PlayerNoBiker = [
				"player/survivor/voice/" + custom_name + "/no01.wav",  //No
				"player/survivor/voice/" + custom_name + "/no02.wav",  //No way.
				"player/survivor/voice/" + custom_name + "/no03.wav",  //Um, no.
				"player/survivor/voice/" + custom_name + "/no04.wav",  //No way, jose.
				"player/survivor/voice/" + custom_name + "/no05.wav",  //Hell no.
				"player/survivor/voice/" + custom_name + "/no06.wav",  //Hell no.
				"player/survivor/voice/" + custom_name + "/no07.wav",  //Nope.
				"player/survivor/voice/" + custom_name + "/no08.wav",  //Nope.
				"player/survivor/voice/" + custom_name + "/no09.wav",  //No way, jose
				"player/survivor/voice/" + custom_name + "/no11.wav",  //Negatory.
				"player/survivor/voice/" + custom_name + "/no12.wav",  //Negatory.
				"player/survivor/voice/" + custom_name + "/no13.wav",  //Uh, no.
				"player/survivor/voice/" + custom_name + "/no14.wav",  //No way.
				"player/survivor/voice/" + custom_name + "/no15.wav",  //No.
				"player/survivor/voice/" + custom_name + "/no16.wav",  //Nope.
				"player/survivor/voice/" + custom_name + "/no17.wav",  //No siree bob.
				"player/survivor/voice/" + custom_name + "/no18.wav"  //Not a chance.
			],
			L4D1PlayerAnswerLostCallBiker = [
				"player/survivor/voice/" + custom_name + "/scenariojoin01.wav",  //I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin02.wav",  //Hey, I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin03.wav"  //Hey, I'm here!
			],
			L4D1PlayerSorryBiker = [
				"player/survivor/voice/" + custom_name + "/sorry01.wav",  //Sorry.
				"player/survivor/voice/" + custom_name + "/sorry04.wav",  //Aww, man, sorry.
				"player/survivor/voice/" + custom_name + "/sorry05.wav",  //Sorry.
				"player/survivor/voice/" + custom_name + "/sorry09.wav",  //Sorry.
				"player/survivor/voice/" + custom_name + "/sorry15.wav"  //Sorry.
			],
			L4D1PlayerSorryFFBiker = [
				"player/survivor/voice/" + custom_name + "/sorry02.wav",  //Sorry about that.
				"player/survivor/voice/" + custom_name + "/sorry03.wav",  //Sorry about that.
				"player/survivor/voice/" + custom_name + "/sorry06.wav",  //Sorry about that.
				"player/survivor/voice/" + custom_name + "/sorry07.wav",  //Yeah, guess that was my fault.
				"player/survivor/voice/" + custom_name + "/sorry08.wav",  //Yeah, guess that was my fault. Again.
				"player/survivor/voice/" + custom_name + "/sorry10.wav",  //Sorry, man. Shit happens.
				"player/survivor/voice/" + custom_name + "/sorry12.wav",  //My bad.
				"player/survivor/voice/" + custom_name + "/sorry13.wav",  //Whoopsie.
				"player/survivor/voice/" + custom_name + "/sorry14.wav",  //Uh, yeah, sorry.
				"player/survivor/voice/" + custom_name + "/sorry16.wav",  //oopsy daisy
				"player/survivor/voice/" + custom_name + "/sorry17.wav",  //That was my fault.
				"player/survivor/voice/" + custom_name + "/sorry18.wav"  //My bad.
			],
			L4D1PlayerThanksBiker = [
				"player/survivor/voice/" + custom_name + "/thanks01.wav",  //I owe you one.
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks03.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks04.wav",  //Thanks [noise you make gun clicking your mouth twice]
				"player/survivor/voice/" + custom_name + "/thanks05.wav",  //Thanks, man.
				"player/survivor/voice/" + custom_name + "/thanks06.wav",  //Hey, thanks man.
				"player/survivor/voice/" + custom_name + "/thanks07.wav",  //Yeah, thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks10.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks11.wav",  //Thanks, dude.
				"player/survivor/voice/" + custom_name + "/thanks12.wav",  //Thanks for that.
				"player/survivor/voice/" + custom_name + "/thanks15.wav"  //Thanks.
			],
			L4D1PlayerYesBiker = [
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes02.wav",  //Okay.
				"player/survivor/voice/" + custom_name + "/yes03.wav",  //Yep.
				"player/survivor/voice/" + custom_name + "/yes04.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes05.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes06.wav"  //Roger that good buddy.
			],
			L4D1PlayerYouAreWelcomeBiker = [
				"player/survivor/voice/" + custom_name + "/youarewelcome02.wav",  //I got your back.
				"player/survivor/voice/" + custom_name + "/youarewelcome04.wav",  //Hey, no problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome05.wav",  //No problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome06.wav",  //Sure.
				"player/survivor/voice/" + custom_name + "/youarewelcome07.wav",  //I told ya I'd take care of ya.
				"player/survivor/voice/" + custom_name + "/youarewelcome08.wav",  //No, thank YOU!
				"player/survivor/voice/" + custom_name + "/youarewelcome09.wav",  //Yer welcome.
				"player/survivor/voice/" + custom_name + "/youarewelcome10.wav",  //Yea, I�m pretty awesome.
				"player/survivor/voice/" + custom_name + "/youarewelcome11.wav",  //No problemo, pal.
				"player/survivor/voice/" + custom_name + "/youarewelcome12.wav",  //It's all good.
				"player/survivor/voice/" + custom_name + "/youarewelcome13.wav",  //Gotcha.
				"player/survivor/voice/" + custom_name + "/youarewelcome14.wav"  //Whatever, whenever, man.
			],
			PlayerYellRunBiker = [
				"player/survivor/voice/" + custom_name + "/emphaticrun01.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun02.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun03.wav",  //HOLY SHIT! Run!
				"player/survivor/voice/" + custom_name + "/emphaticrun04.wav",  //LET'S BEAT IT!
				"player/survivor/voice/" + custom_name + "/emphaticrun05.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun06.wav",  //SHIT! Run!
				"player/survivor/voice/" + custom_name + "/emphaticrun09.wav",  //Get the lead out!
				"player/survivor/voice/" + custom_name + "/emphaticrun10.wav"  //Haul Ass!
			],
			L4D1PlayerNegativeBiker = [
				"player/survivor/voice/" + custom_name + "/reactionnegative02.wav",  //That's bad.
				"player/survivor/voice/" + custom_name + "/reactionnegative03.wav",  //Damn.
				"player/survivor/voice/" + custom_name + "/reactionnegative04.wav",  //Holy Jesus.
				"player/survivor/voice/" + custom_name + "/reactionnegative05.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/reactionnegative06.wav",  //Ah shit.
				"player/survivor/voice/" + custom_name + "/reactionnegative09.wav",  //Ahhhhh.
				"player/survivor/voice/" + custom_name + "/reactionnegative07.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/reactionnegative08.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/reactionnegative10.wav"  //Effin hell.
			],
			L4D1PlayerAreaClearBiker = [
				"player/survivor/voice/" + custom_name + "/areaclear01.wav",  //Clear.
				"player/survivor/voice/" + custom_name + "/areaclear02.wav",  //It's clear.
				"player/survivor/voice/" + custom_name + "/areaclear03.wav",  //Nothin' in here.
				"player/survivor/voice/" + custom_name + "/areaclear04.wav",  //Clear, sir.
				"player/survivor/voice/" + custom_name + "/areaclear05.wav",  //Clear.
				"player/survivor/voice/" + custom_name + "/areaclear06.wav",  //Nothin' in here.
				"player/survivor/voice/" + custom_name + "/areaclear07.wav",  //blph... Looks empty.
				"player/survivor/voice/" + custom_name + "/areaclear08.wav",  //Looks empty.
				"player/survivor/voice/" + custom_name + "/areaclear09.wav",  //I don't see anything here
				"player/survivor/voice/" + custom_name + "/areaclear10.wav"  //I got nothin' here.
			],
			L4D1SurvivorSpottedWorldFarBiker = [
				"player/survivor/voice/" + custom_name + "/look01.wav",  //Over there!
				"player/survivor/voice/" + custom_name + "/look02.wav",  //Over there!
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/look04.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/look05.wav"  //Look!
			],
			PlayerHurrahBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah05.wav",  //We just might make it out of here after all.
				"player/survivor/voice/" + custom_name + "/hurrah06.wav",  //We're gonna be okay.
				"player/survivor/voice/" + custom_name + "/hurrah07.wav",  //I think we're gonna make it.
				"player/survivor/voice/" + custom_name + "/hurrah08.wav",  //They can't stop us.
				"player/survivor/voice/" + custom_name + "/hurrah09.wav",  //Nothing can stop us.
				"player/survivor/voice/" + custom_name + "/hurrah10.wav",  //We are unstoppable!
				"player/survivor/voice/" + custom_name + "/hurrah11.wav",  //YEAH!
				"player/survivor/voice/" + custom_name + "/hurrah12.wav",  //Everybody havin' as much fun as me?
				"player/survivor/voice/" + custom_name + "/hurrah13.wav",  //Everyone havin' fun?
				"player/survivor/voice/" + custom_name + "/hurrah14.wav",  //You know all those monsters? I don't think they're gonna make it.
				"player/survivor/voice/" + custom_name + "/hurrah15.wav",  //We just might make it out of here after all.
				"player/survivor/voice/" + custom_name + "/hurrah21.wav",  //You guys are all right.
				"player/survivor/voice/" + custom_name + "/hurrah22.wav",  //I think we gotta chance
				"player/survivor/voice/" + custom_name + "/hurrah23.wav",  //lookin good
				"player/survivor/voice/" + custom_name + "/hurrah24.wav"  //Hey, this is just gettin fun.
			],
			PlayerWarnCarefulBiker = [
				"player/survivor/voice/" + custom_name + "/warncareful01.wav",  //Careful...
				"player/survivor/voice/" + custom_name + "/warncareful02.wav",  //Be careful...
				"player/survivor/voice/" + custom_name + "/warncareful03.wav",  //Take it easy...
				"player/survivor/voice/" + custom_name + "/warncareful04.wav",  //Take er easy...
				"player/survivor/voice/" + custom_name + "/warncareful05.wav",  //Watch yourself, now...
				"player/survivor/voice/" + custom_name + "/warncareful06.wav",  //Careful now...
				"player/survivor/voice/" + custom_name + "/warncareful07.wav",  //Watch it...
				"player/survivor/voice/" + custom_name + "/warncareful08.wav",  //Carrrefullll...
				"player/survivor/voice/" + custom_name + "/warncareful09.wav"  //Careful, kids...
			],
			GasPourDoneSCBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah19.wav",  //Goddamn right!
				"player/survivor/voice/" + custom_name + "/hurrah20.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/taunt01.wav",  //That's right!
				"player/survivor/voice/" + custom_name + "/taunt02.wav",  //HELL YEAH!
				"player/survivor/voice/" + custom_name + "/taunt03.wav",  //OH YEAH!
				"player/survivor/voice/" + custom_name + "/taunt04.wav",  //Oh yeah!
				"player/survivor/voice/" + custom_name + "/taunt05.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt06.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt07.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt08.wav",  //YEAH! YEAH!
				"player/survivor/voice/" + custom_name + "/taunt09.wav",  //Damn straight!
				"player/survivor/voice/" + custom_name + "/taunt10.wav",  //HELL YEAH!
				"player/survivor/voice/" + custom_name + "/hurrah08.wav",  //They can't stop us.
				"player/survivor/voice/" + custom_name + "/hurrah09.wav",  //Nothing can stop us.
				"player/survivor/voice/" + custom_name + "/hurrah10.wav",  //We are unstoppable!
				"player/survivor/voice/" + custom_name + "/hurrah11.wav",  //YEAH!
				"player/survivor/voice/" + custom_name + "/hurrah12.wav",  //Everybody havin' as much fun as me?
				"player/survivor/voice/" + custom_name + "/hurrah13.wav",  //Everyone havin' fun?
				"player/survivor/voice/" + custom_name + "/hurrah14.wav",  //You know all those monsters? I don't think they're gonna make it.
				"player/survivor/voice/" + custom_name + "/hurrah21.wav",  //You guys are all right.
				"player/survivor/voice/" + custom_name + "/hurrah23.wav",  //lookin good
				"player/survivor/voice/" + custom_name + "/hurrah24.wav"  //Hey, this is just gettin fun.
			],
			GasPourSCBiker = [
				"player/survivor/voice/" + custom_name + "/coverme01.wav",  //Cover me!
				"player/survivor/voice/" + custom_name + "/coverme02.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme03.wav",  //Watch my back
				"player/survivor/voice/" + custom_name + "/coverme04.wav",  //Cover me!
				"player/survivor/voice/" + custom_name + "/coverme05.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme06.wav",  //Watch my back
				"player/survivor/voice/" + custom_name + "/coverme10.wav"  //Cover my ass.
			],
			GrabbingGasSCBiker = [
				"player/survivor/voice/" + custom_name + "/killconfirmation01.wav"  //Got it!
			],
			PlayerShotGasCanBiker = [
				"player/survivor/voice/" + custom_name + "/reactionnegative05.wav",  //Shit
				"player/survivor/voice/" + custom_name + "/reactionnegative07.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/reactionnegative08.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/swear03.wav",  //Ah shit.
				"player/survivor/voice/" + custom_name + "/swear08.wav",  //Ah bullshit.
				"player/survivor/voice/" + custom_name + "/swear17.wav",  //Dammit.
				"player/survivor/voice/" + custom_name + "/swear18.wav"  //Bullshit.
			],
			ScavengeStartBiker = [
				"player/survivor/voice/" + custom_name + "/moveon04.wav",  //Let's get moving.
				"player/survivor/voice/" + custom_name + "/moveon05.wav",  //Let's move.
				"player/survivor/voice/" + custom_name + "/moveon07.wav",  //Time to go, ladies.
				"player/survivor/voice/" + custom_name + "/moveon10.wav"  //Come on, let's go.
			],
			L4D1IntroSmalltown3Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0105.wav"  //Sounds good to me. Let's head to Riverside.
			],
			L4D1IntroSmalltownEasterEggBiker = [
				"player/survivor/voice/" + custom_name + "/heardboomer04.wav"  //Watch it, we got a Boomer.
			],
			L4D1IntroSmalltownEasterEgg2Biker = [
				"player/survivor/voice/" + custom_name + "/laughter04.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter12.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter13.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter14.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter15.wav"  //<Hearty Laugh>
			],
			L4D1SurvivorSpawnBiker = [
				"player/survivor/voice/" + custom_name + "/scenariojoin01.wav",  //I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin02.wav",  //Hey, I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin03.wav",  //Hey, I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin04.wav"  //Hello!
			],
			PlayerCommentJockeyBiker = [
				"player/survivor/voice/" + custom_name + "/reactiondisgusted10.wav",  //Oh, that's disgusting.
				"player/survivor/voice/" + custom_name + "/violenceawe02.wav",  //Jee-zus...
				"player/survivor/voice/" + custom_name + "/violenceawe06.wav"  //Did you see that?
			],
			L4D1PlayerBillPouncedBiker = [
				"player/survivor/voice/" + custom_name + "/hunterbillpounced01.wav",  //Hunter's got Bill!
				"player/survivor/voice/" + custom_name + "/hunterbillpounced02.wav"  //Hunter's on Bill!
			],
			L4D1PlayerEatPillsBiker = [
				"player/survivor/voice/" + custom_name + "/painreliefsigh01.wav",  //Ahhh
				"player/survivor/voice/" + custom_name + "/painreliefsigh05.wav"  //ohh
			],
			L4D1PlayerGetInsideCheckPointBiker = [
				"player/survivor/voice/" + custom_name + "/staytogetherinside01.wav",  //Get your asses in here!
				"player/survivor/voice/" + custom_name + "/staytogetherinside02.wav",  //Come on ladies, everyone inside!
				"player/survivor/voice/" + custom_name + "/staytogetherinside03.wav",  //Get in here!
				"player/survivor/voice/" + custom_name + "/staytogetherinside04.wav",  //Everyone inside!
				"player/survivor/voice/" + custom_name + "/staytogetherinside05.wav"  //Quit pissin' around and get in here!
			],
			L4D1PlayerGrenadeBiker = [
				"player/survivor/voice/" + custom_name + "/grenade01.wav",  //GRENADE!
				"player/survivor/voice/" + custom_name + "/grenade02.wav",  //GRENADE!
				"player/survivor/voice/" + custom_name + "/grenade03.wav",  //FIRE IN THE HOLE!!
				"player/survivor/voice/" + custom_name + "/grenade04.wav",  //GRENADE!
				"player/survivor/voice/" + custom_name + "/grenade05.wav",  //FIRE IN THE HOLE!!
				"player/survivor/voice/" + custom_name + "/grenade06.wav"  //FIRE IN THE HOLE!!
			],
			L4D1PlayerIncapacitatedInitialBiker = [
				"player/survivor/voice/" + custom_name + "/incapacitatedinitial01.wav",  //I'm down!
				"player/survivor/voice/" + custom_name + "/incapacitatedinitial02.wav",  //Damnit, I'm down.
				"player/survivor/voice/" + custom_name + "/incapacitatedinitial03.wav"  //Shit, I need some help.
			],
			L4D1PlayerKillConfirmationBiker = [
				"player/survivor/voice/" + custom_name + "/killconfirmation01.wav",  //Got it!
				"player/survivor/voice/" + custom_name + "/killconfirmation02.wav",  //Nailed it!
				"player/survivor/voice/" + custom_name + "/killconfirmation03.wav",  //Down!
				"player/survivor/voice/" + custom_name + "/killconfirmation04.wav",  //That's mine.
				"player/survivor/voice/" + custom_name + "/killconfirmation05.wav",  //Dead!
				"player/survivor/voice/" + custom_name + "/killconfirmation06.wav",  //Popped it!
				"player/survivor/voice/" + custom_name + "/killconfirmation07.wav"  //Popped a cap in his ass!
			],
			PlayerKillTankConfirmationBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank01.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank02.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank03.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/killconfirmation01.wav",  //Got it!
				"player/survivor/voice/" + custom_name + "/killconfirmation02.wav",  //Nailed it!
				"player/survivor/voice/" + custom_name + "/killconfirmation03.wav",  //Down!
				"player/survivor/voice/" + custom_name + "/killconfirmation04.wav",  //That's mine.
				"player/survivor/voice/" + custom_name + "/killconfirmation05.wav"  //Dead!
			],
			PlayerKillTankNotHealthyBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill07.wav",  //Anyone wanna guess what I'm hatin' right now?
				"player/survivor/voice/" + custom_name + "/playertransitionclose06.wav",  //Killin' vampires looked easier in the brochure, dinnit?
				"player/survivor/voice/" + custom_name + "/playertransitionclose04.wav",  //Thought we were goners (lauging)
				"player/survivor/voice/" + custom_name + "/playertransitionclose05.wav",  //This shit ain't easy.
				"player/survivor/voice/" + custom_name + "/playertransitionclose03.wav"  //That was close!
			],
			L4D1PlayerKillConfirmationTankBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank01.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank02.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank03.wav"  //I hate tanks.
			],
			L4D1C9M2KillTankBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalewaiting01.wav"  //Jesus, this thing takes forever.
			],
			L4D1PlayerLockTheDoorCheckPointBiker = [
				"player/survivor/voice/" + custom_name + "/closethedoor01.wav",  //Lock the damn door.
				"player/survivor/voice/" + custom_name + "/closethedoor02.wav",  //Lock the door.
				"player/survivor/voice/" + custom_name + "/closethedoor03.wav",  //Lock that door!
				"player/survivor/voice/" + custom_name + "/closethedoor04.wav",  //You born in a barn? Lock the goddamn door.
				"player/survivor/voice/" + custom_name + "/closethedoor05.wav",  //Lock the door.
				"player/survivor/voice/" + custom_name + "/closethedoor06.wav",  //Lock the freakin' door.
				"player/survivor/voice/" + custom_name + "/closethedoor07.wav",  //Personally, I'm happy to keep fighting. But YOU ladies might want to lock the door.
				"player/survivor/voice/" + custom_name + "/closethedoor08.wav",  //Someone gonna lock that door?
				"player/survivor/voice/" + custom_name + "/closethedoor09.wav",  //Get that lock.
				"player/survivor/voice/" + custom_name + "/closethedoor10.wav",  //Lock the goddamn door.
				"player/survivor/voice/" + custom_name + "/closethedoor11.wav",  //Would you lock that sucker?
				"player/survivor/voice/" + custom_name + "/closethedoor12.wav"  //Keep 'em out! Lock that door!
			],
			L4D1PlayerLouisPouncedBiker = [
				"player/survivor/voice/" + custom_name + "/hunterlouispounced01.wav",  //Hunter's got Louis!
				"player/survivor/voice/" + custom_name + "/hunterlouispounced02.wav"  //Hunter on Louis!
			],
			L4D1PlayerRemarkairport01_burningBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0105.wav",  //The whole damn city's on fire.
				"player/survivor/voice/" + custom_name + "/worldairport0115.wav"  //Holy shit, the whole damn city's on fire.
			],
			L4D1PlayerRemarkfarm01_campingBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0101.wav"  //Yer tellin' me people camp for fun?
			],
			L4D1PlayerSuggestHealthBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealth04.wav",  //You should heal up.
				"player/survivor/voice/" + custom_name + "/playersuggesthealth05.wav"  //Someone should use their health pack...
			],
			L4D1PlayerSuggestHealthBillBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealthbill01.wav",  //Old man - use your health kit.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthbill02.wav",  //Bill, man, heal up
				"player/survivor/voice/" + custom_name + "/playersuggesthealthbill03.wav"  //Bro, heal up.
			],
			L4D1PlayerSuggestHealthLouisBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealthlouis01.wav",  //Hey Louie, use your first aid kit.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthlouis02.wav",  //Louis, you gotta heal up, man.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthlouis03.wav"  //Louis, heal fer chrissake.
			],
			L4D1PlayerSuggestHealthZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealthzoey01.wav",  //Zoey, heal up.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthzoey02.wav",  //Zoey darlin', heal up.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthzoey03.wav",  //Zoey, patch yerself up.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthzoey04.wav"  //Hey Zoey, you oughtta heal.
			],
			L4D1PlayerTransitionBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah24.wav",  //Hey, this is just gettin fun.
				"player/survivor/voice/" + custom_name + "/nicejob04.wav",  //Shit, that was all right
				"player/survivor/voice/" + custom_name + "/nicejob11.wav",  //Well, shit, that was all right
				"player/survivor/voice/" + custom_name + "/reactionpositive03.wav",  //Rock-n-roll!
				"player/survivor/voice/" + custom_name + "/reactionpositive06.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive08.wav",  //Yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive09.wav",  //Yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive10.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive11.wav",  //All right!
				"player/survivor/voice/" + custom_name + "/taunt02.wav"  //HELL YEAH!
			],
			L4D1PlayerTransitionCloseBiker = [
				"player/survivor/voice/" + custom_name + "/playertransitionclose01.wav",  //Any zombie fight you can crawl away from means you won it.
				"player/survivor/voice/" + custom_name + "/playertransitionclose02.wav",  //Heh heh, well all right!
				"player/survivor/voice/" + custom_name + "/playertransitionclose03.wav",  //That was close!
				"player/survivor/voice/" + custom_name + "/playertransitionclose04.wav",  //Thought we were goners (lauging)
				"player/survivor/voice/" + custom_name + "/playertransitionclose05.wav",  //This shit ain't easy.
				"player/survivor/voice/" + custom_name + "/playertransitionclose06.wav"  //Killin' vampires looked easier in the brochure, dinnit?
			],
			L4D1PlayerWarnHeardBoomerBiker = [
				"player/survivor/voice/" + custom_name + "/heardboomer01.wav",  //I hear a Boomer out there.
				"player/survivor/voice/" + custom_name + "/heardboomer02.wav",  //Careful, I hear a Boomer.
				"player/survivor/voice/" + custom_name + "/heardboomer03.wav",  //There's a Boomer around here.
				"player/survivor/voice/" + custom_name + "/heardboomer04.wav",  //Watch it, we got a Boomer.
				"player/survivor/voice/" + custom_name + "/heardboomer05.wav",  //Hear that Boomer? I'm gonna kill its ass.
				"player/survivor/voice/" + custom_name + "/heardboomer06.wav"  //I hear a Boomer.
			],
			L4D1PlayerWarnHeardCanadianBoomerBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2canadaspecial01.wav"  //I HEAR A BOOMER! And it sounded Canadian!
			],
			L4D1PlayerWarnHeardHunterBiker = [
				"player/survivor/voice/" + custom_name + "/heardhunter01.wav",  //There's a hunter out there.
				"player/survivor/voice/" + custom_name + "/heardhunter02.wav",  //Careful, there's a Hunter around here.
				"player/survivor/voice/" + custom_name + "/heardhunter03.wav",  //I hear a Hunter.
				"player/survivor/voice/" + custom_name + "/heardhunter04.wav",  //Careful, there's a Hunter around here.
				"player/survivor/voice/" + custom_name + "/heardhunter05.wav",  //Sounds like a freakin' Hunter.
				"player/survivor/voice/" + custom_name + "/heardhunter06.wav",  //Hunter out there.
				"player/survivor/voice/" + custom_name + "/heardhunter07.wav",  //There's a Hunter someplace around here.
				"player/survivor/voice/" + custom_name + "/heardhunter08.wav",  //I hear a Hunter. COME ON OUT, WUSSY!
				"player/survivor/voice/" + custom_name + "/heardhunter09.wav"  //YEAH, YOU BETTER HIDE! Sweathshirt wearin' little wuss.
			],
			L4D1PlayerWarnHeardSmokerBiker = [
				"player/survivor/voice/" + custom_name + "/heardsmoker01.wav",  //Man, there's a Smoker around here.
				"player/survivor/voice/" + custom_name + "/heardsmoker02.wav",  //Smell that Smoker?
				"player/survivor/voice/" + custom_name + "/heardsmoker03.wav",  //Smoker. Hear it?
				"player/survivor/voice/" + custom_name + "/heardsmoker04.wav",  //I hear a smoker.
				"player/survivor/voice/" + custom_name + "/heardsmoker05.wav",  //Sounds like a Smoker.
				"player/survivor/voice/" + custom_name + "/heardsmoker06.wav",  //Smoker. He's gonna have to use that tongue to choke my foot out of his ass.
				"player/survivor/voice/" + custom_name + "/heardsmoker07.wav"  //Sounds like a Smoker.
			],
			L4D1PlayerWarnHeardWitchBiker = [
				"player/survivor/voice/" + custom_name + "/heardwitch01.wav",  //I hear a Witch.
				"player/survivor/voice/" + custom_name + "/heardwitch02.wav",  //Witch, and she's close!
				"player/survivor/voice/" + custom_name + "/heardwitch03.wav",  //There's a Witch around here.
				"player/survivor/voice/" + custom_name + "/heardwitch04.wav",  //Witch, and she's close!
				"player/survivor/voice/" + custom_name + "/heardwitch05.wav",  //Hear that Witch? I'm gonna give her something to cry about.
				"player/survivor/voice/" + custom_name + "/heardwitch06.wav",  //Shhh, I hear a Witch.
				"player/survivor/voice/" + custom_name + "/heardwitch07.wav",  //There's a Witch around here.
				"player/survivor/voice/" + custom_name + "/heardwitch08.wav"  //I hear a Witch.
			],
			PlayerHeardWitchBiker = [
				"player/survivor/voice/" + custom_name + "/heardwitch01.wav",  //I hear a Witch.
				"player/survivor/voice/" + custom_name + "/heardwitch02.wav",  //Witch, and she's close!
				"player/survivor/voice/" + custom_name + "/heardwitch03.wav",  //There's a Witch around here.
				"player/survivor/voice/" + custom_name + "/heardwitch04.wav",  //Witch, and she's close!
				"player/survivor/voice/" + custom_name + "/heardwitch05.wav",  //Hear that Witch? I'm gonna give her something to cry about.
				"player/survivor/voice/" + custom_name + "/heardwitch06.wav",  //Shhh, I hear a Witch.
				"player/survivor/voice/" + custom_name + "/heardwitch07.wav",  //There's a Witch around here.
				"player/survivor/voice/" + custom_name + "/heardwitch08.wav"  //I hear a Witch.
			],
			L4D1PlayerWarnMegaMobBiker = [
				"player/survivor/voice/" + custom_name + "/incoming01.wav",  //Here they come!
				"player/survivor/voice/" + custom_name + "/incoming02.wav",  //Holy shit, here they come!
				"player/survivor/voice/" + custom_name + "/incoming03.wav",  //They're coming!
				"player/survivor/voice/" + custom_name + "/incoming04.wav",  //Incoming!
				"player/survivor/voice/" + custom_name + "/incoming05.wav",  //Get ready ladies!
				"player/survivor/voice/" + custom_name + "/incoming06.wav",  //INCOMING!
				"player/survivor/voice/" + custom_name + "/incoming07.wav",  //This is gonna be good.
				"player/survivor/voice/" + custom_name + "/incoming08.wav",  //Shit, Get ready!
				"player/survivor/voice/" + custom_name + "/minifinalegetready01.wav",  //Get ready!
				"player/survivor/voice/" + custom_name + "/minifinalegetready02.wav",  //Bring it on!
				"player/survivor/voice/" + custom_name + "/minifinalegetready03.wav",  //Here they come!
				"player/survivor/voice/" + custom_name + "/minifinalegetready04.wav"  //They're coming!
			],
			L4D1PlayerWarnWitchAngryBiker = [
				"player/survivor/voice/" + custom_name + "/witchgettingangry01.wav",  //You got a death wish? Leave that witch alone!
				"player/survivor/voice/" + custom_name + "/witchgettingangry02.wav",  //Stop spookin' the effin witch!
				"player/survivor/voice/" + custom_name + "/witchgettingangry03.wav",  //Oh shit, the witch's gettin' riled up!
				"player/survivor/voice/" + custom_name + "/witchgettingangry04.wav"  //Watch it, that witch is gettin' pissed!
			],
			L4D1PlayerZoeyPouncedBiker = [
				"player/survivor/voice/" + custom_name + "/hunterzoeypounced01.wav",  //Hunter's got Zoey!
				"player/survivor/voice/" + custom_name + "/hunterzoeypounced02.wav",  //Hunter on  Zoey!
				"player/survivor/voice/" + custom_name + "/hunterzoeypounced03.wav"  //Hey, hunter's got Zoey!
			],
			L4D1SurvivorCaughtVomitBiker = [
				"player/survivor/voice/" + custom_name + "/generic03.wav",  //He puked on me!
				"player/survivor/voice/" + custom_name + "/reactionboomervomit01.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/reactionboomervomit02.wav",  //Ah, ewww, ah, yuck.
				"player/survivor/voice/" + custom_name + "/reactionboomervomit03.wav",  //Holy Jesus! That's bad!
				"player/survivor/voice/" + custom_name + "/reactionboomervomit04.wav",  //Eh, yech...
				"player/survivor/voice/" + custom_name + "/reactionboomervomit05.wav",  //Ewwww...ah shit! Yech...
				"player/survivor/voice/" + custom_name + "/reactiondisgusted01.wav",  //Ewwww...
				"player/survivor/voice/" + custom_name + "/reactiondisgusted02.wav",  //Blecch..
				"player/survivor/voice/" + custom_name + "/reactiondisgusted03.wav",  //Yecch...
				"player/survivor/voice/" + custom_name + "/reactiondisgusted04.wav",  //Eh...
				"player/survivor/voice/" + custom_name + "/reactiondisgusted05.wav",  //Blecch...
				"player/survivor/voice/" + custom_name + "/reactiondisgusted06.wav",  //Yech...
				"player/survivor/voice/" + custom_name + "/reactiondisgusted07.wav",  //Ah, ewww, ah, yuck.
				"player/survivor/voice/" + custom_name + "/reactiondisgusted08.wav",  //Sick...
				"player/survivor/voice/" + custom_name + "/reactiondisgusted09.wav",  //Ohhh...
				"player/survivor/voice/" + custom_name + "/reactiondisgusted10.wav"  //Oh, that's disgusting.
			],
			L4D1SurvivorCoughingBiker = [
				"player/survivor/voice/" + custom_name + "/cough01.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough02.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough03.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough04.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough05.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough06.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough07.wav"  //[Coughing from smoke]
			],
			L4D1SurvivorDeathBiker = [
				"player/survivor/voice/" + custom_name + "/deathscream01.wav",  //[Death rattle]
				"player/survivor/voice/" + custom_name + "/deathscream02.wav",  //[Death rattle]
				"player/survivor/voice/" + custom_name + "/deathscream03.wav",  //[Death rattle]
				"player/survivor/voice/" + custom_name + "/deathscream04.wav",  //[Death rattle]
				"player/survivor/voice/" + custom_name + "/deathscream05.wav",  //[Death rattle] Mama...
				"player/survivor/voice/" + custom_name + "/deathscream06.wav",  //[Short quick death scream]
				"player/survivor/voice/" + custom_name + "/deathscream07.wav",  //[Short quick death scream]
				"player/survivor/voice/" + custom_name + "/deathscream08.wav",  //[Loud painful death scream]
				"player/survivor/voice/" + custom_name + "/deathscream09.wav",  //[Loud painful death scream]
				"player/survivor/voice/" + custom_name + "/deathscream10.wav"  //[Short quick death scream]
			],
			L4D1SurvivorGrabbedByTongueBiker = [
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker01a.wav",  //no, No, NO, NOOOOOOO!!!!!!!!!
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker02a.wav",  //no, No, NO, NOOOOOOO!!!!!!!!!
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker03.wav"  //no, No, NO, NO!!!
			],
			L4D1SurvivorTankPoundBiker = [
				"player/survivor/voice/" + custom_name + "/tankpound01.wav",  //Get this thing off me!
				"player/survivor/voice/" + custom_name + "/tankpound02.wav",  //This thing's poundin the hell outta me!
				"player/survivor/voice/" + custom_name + "/tankpound03.wav",  //This thing's killing me!
				"player/survivor/voice/" + custom_name + "/tankpound04.wav"  //I gotta Tank on me!
			],
			L4D1SurvivorVocalizeBackUpBiker = [
				"player/survivor/voice/" + custom_name + "/backup01.wav",  //BackBackBack!
				"player/survivor/voice/" + custom_name + "/backup02.wav",  //Back up!
				"player/survivor/voice/" + custom_name + "/backup03.wav",  //Back up!
				"player/survivor/voice/" + custom_name + "/backup04.wav",  //Get the hell back!
				"player/survivor/voice/" + custom_name + "/backup05.wav"  //Back it up!
			],
			L4D1SurvivorVocalizeEmphaticGoBiker = [
				"player/survivor/voice/" + custom_name + "/emphaticgo01.wav",  //GET MOVING!
				"player/survivor/voice/" + custom_name + "/emphaticgo02.wav",  //MOVE!
				"player/survivor/voice/" + custom_name + "/emphaticgo03.wav",  //Go go go!
				"player/survivor/voice/" + custom_name + "/emphaticgo04.wav",  //GO!
				"player/survivor/voice/" + custom_name + "/emphaticgo05.wav",  //Get your rear in gear!
				"player/survivor/voice/" + custom_name + "/emphaticgo06.wav"  //Get your rear in gear!
			],
			L4D1SurvivorVocalizeGoingToDieBiker = [
				"player/survivor/voice/" + custom_name + "/goingtodie01.wav",  //I don't feel so good.
				"player/survivor/voice/" + custom_name + "/goingtodie03.wav",  //Man, I feel like you guys look.
				"player/survivor/voice/" + custom_name + "/goingtodie04.wav",  //I've, I've felt better.
				"player/survivor/voice/" + custom_name + "/goingtodie05.wav",  //This is turning into one of those days
				"player/survivor/voice/" + custom_name + "/goingtodie06.wav",  //I have definitely felt better.
				"player/survivor/voice/" + custom_name + "/goingtodie08.wav",  //Even my ass hurts.
				"player/survivor/voice/" + custom_name + "/goingtodie09.wav",  //This is startin' to get to me.
				"player/survivor/voice/" + custom_name + "/goingtodie11.wav",  //I don't wanna sound like a sissy, but I'm hurt bad.
				"player/survivor/voice/" + custom_name + "/goingtodie12.wav",  //I think I'm pretty screwed up.
				"player/survivor/voice/" + custom_name + "/goingtodie13.wav",  //I'm hurtin'.
				"player/survivor/voice/" + custom_name + "/goingtodie14.wav",  //Damnit, I am messed up.
				"player/survivor/voice/" + custom_name + "/goingtodie15.wav",  //Shit, this just hurts.
				"player/survivor/voice/" + custom_name + "/goingtodie16.wav",  //Oooh mama, this hurts.
				"player/survivor/voice/" + custom_name + "/goingtodie17.wav",  //I feel terrible.
				"player/survivor/voice/" + custom_name + "/goingtodie18.wav",  //God, I feel awful.
				"player/survivor/voice/" + custom_name + "/goingtodie19.wav",  //I think I'm gonna puke.
				"player/survivor/voice/" + custom_name + "/goingtodie20.wav",  //I'm feelin' pretty shitty and a little woozy, the woozy is kinda fun
				"player/survivor/voice/" + custom_name + "/goingtodie22.wav",  //Shit, I just hurt.
				"player/survivor/voice/" + custom_name + "/goingtodie23.wav",  //I feel like shit.
				"player/survivor/voice/" + custom_name + "/goingtodie24.wav",  //I ain't doing so good.
				"player/survivor/voice/" + custom_name + "/goingtodie25.wav",  //I feel pretty crappy.
				"player/survivor/voice/" + custom_name + "/goingtodie26.wav",  //I feel like guys look after I've punched them in the face
				"player/survivor/voice/" + custom_name + "/goingtodielight04.wav",  //Ah christ this hurts like hell.
				"player/survivor/voice/" + custom_name + "/goingtodielight07.wav",  //Goddammit, this hurts.
				"player/survivor/voice/" + custom_name + "/goingtodielight13.wav",  //Ah man, somethin' don't feel right
				"player/survivor/voice/" + custom_name + "/goingtodielight14.wav"  //This [cough] hurts.
			],
			L4D1SurvivorVocalizeGoingToDie3Biker = [
				"player/survivor/voice/" + custom_name + "/goingtodielight01.wav",  //[loud exhale] Shit... [blows air through pursed lips]
				"player/survivor/voice/" + custom_name + "/goingtodielight15.wav",  //I'm pretty hosed.
				"player/survivor/voice/" + custom_name + "/goingtodielight16.wav",  //Killed by vampires. What a goddamn disgrace.
				"player/survivor/voice/" + custom_name + "/goingtodie02.wav",  //I don't, I don't know if I am going to make it.
				"player/survivor/voice/" + custom_name + "/goingtodie07.wav",  //I need to get patched up.
				"player/survivor/voice/" + custom_name + "/goingtodie10.wav",  //I ain't gonna make it much further.
				"player/survivor/voice/" + custom_name + "/goingtodie21.wav",  //Sheeet, I ain't gonna make it.
				"player/survivor/voice/" + custom_name + "/goingtodielight11.wav"  //I ain't gonna let these goddamn vampires beat me.
			],
			L4D1SurvivorVocalizeGoingToDieAloneBiker = [
				"player/survivor/voice/" + custom_name + "/nervoushumming01.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming02.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming03.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming04.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming05.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming06.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming07.wav"  //[Not-So-Nervous Humming with lame zombie lyrics]
			],
			L4D1SurvivorVocalizeLookOutBiker = [
				"player/survivor/voice/" + custom_name + "/lookout01.wav",  //Look out!
				"player/survivor/voice/" + custom_name + "/lookout02.wav",  //Look out!
				"player/survivor/voice/" + custom_name + "/lookout03.wav",  //Watch out!
				"player/survivor/voice/" + custom_name + "/lookout04.wav",  //Watch out!
				"player/survivor/voice/" + custom_name + "/lookout05.wav",  //Watch your ass!
				"player/survivor/voice/" + custom_name + "/lookout06.wav"  //Heads up!
			],
			L4D1SurvivorVocalizeThisWayBiker = [
				"player/survivor/voice/" + custom_name + "/followme01.wav",  //Come on, this way.
				"player/survivor/voice/" + custom_name + "/followme02.wav",  //Follow me!
				"player/survivor/voice/" + custom_name + "/followme03.wav",  //Follow me.
				"player/survivor/voice/" + custom_name + "/followme04.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme05.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme06.wav",  //I got the lead - follow me.
				"player/survivor/voice/" + custom_name + "/followme07.wav",  //I got the lead.
				"player/survivor/voice/" + custom_name + "/followme09.wav"  //This way, kids.
			],
			L4D1SurvivorVocalizeWaitHereBiker = [
				"player/survivor/voice/" + custom_name + "/waithere01.wav",  //Everyone stop!
				"player/survivor/voice/" + custom_name + "/waithere02.wav",  //Stop for a second!
				"player/survivor/voice/" + custom_name + "/waithere04.wav",  //Hold up a minute!
				"player/survivor/voice/" + custom_name + "/waithere05.wav",  //Hold up!
				"player/survivor/voice/" + custom_name + "/waithere06.wav",  //Everyone stop!
				"player/survivor/voice/" + custom_name + "/waithere07.wav",  //Hold up - I'm tired of runnin from these pussies.
				"player/survivor/voice/" + custom_name + "/waithere08.wav"  //Park your ass for a sec.
			],
			Player_C7M2CrowsFlyBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill01.wav",  //Shut up, you stupid birds.
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill02.wav"  //Nice rockpile, birds! Ha ha, hold on, do you hear a zombie?
			],
			Player_C7M3BridgeLeapBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge01.wav",  //Jesus, I'm brave.
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge02.wav",  //Guess I better save everybody.
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge05.wav",  //Stay there! God damn it, I don't wanna die�
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge06.wav",  //Stay there! Oh my god, I'm an idiot�
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge07.wav",  //Stay there! Oh god, it shoulda been Louis.
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge08.wav",  //Nobody try to help me! Unless you want!
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge09.wav"  //Don't try to talk me out of this! Anyone?
			],
			SacrificeSuccessfulBiker = [
				"player/survivor/voice/" + custom_name + "/deathscream06.wav",  //[Short quick death scream]
				"player/survivor/voice/" + custom_name + "/deathscream07.wav",  //[Short quick death scream]
				"player/survivor/voice/" + custom_name + "/deathscream08.wav",  //[Loud painful death scream]
				"player/survivor/voice/" + custom_name + "/deathscream09.wav",  //[Loud painful death scream]
				"player/survivor/voice/" + custom_name + "/deathscream10.wav"  //[Short quick death scream]
			],
			SacrificeFailedBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge03.wav",  //I hate suicide missions.
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge10.wav"  //Don't move! I have a plan!
			],
			PlayerGrabbedByJockeyBiker = [
				"player/survivor/voice/" + custom_name + "/gettingrevived03.wav",  //[groan]
				"player/survivor/voice/" + custom_name + "/gettingrevived06.wav",  //[groan2]
				"player/survivor/voice/" + custom_name + "/hurtcritical02.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical05.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical08.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtmajor02.wav",  //[Pain noise - huh]
				"player/survivor/voice/" + custom_name + "/hurtmajor03.wav",  //[Pain noise - oy]
				"player/survivor/voice/" + custom_name + "/hurtminor01.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor03.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/screamwhilepounced01.wav",  //GET IT OFF!
				"player/survivor/voice/" + custom_name + "/screamwhilepounced02.wav",  //GET IT OFF! [angry]
				"player/survivor/voice/" + custom_name + "/screamwhilepounced03.wav",  //GET IT OFF
				"player/survivor/voice/" + custom_name + "/screamwhilepounced04.wav",  //GET IT OFF GET IT OFF
				"player/survivor/voice/" + custom_name + "/shoved05.wav"  //[Reaction to body hits - uhs ahs]
			],
			PlayerRevivedByDefibrillatorBiker = [
				"player/survivor/voice/" + custom_name + "/reactionstartled01.wav",  //Whoah!
				"player/survivor/voice/" + custom_name + "/reactionstartled02.wav",  //AHHHH!
				"player/survivor/voice/" + custom_name + "/reactionstartled03.wav",  //Whoah! Jesus...
				"player/survivor/voice/" + custom_name + "/reactionstartled04.wav"  //What the?
			],
			PlayerRevivedByDefibrillator2Biker = [
				"player/survivor/voice/" + custom_name + "/hurrah02.wav",  //Aw riiiight.
				"player/survivor/voice/" + custom_name + "/hurrah04.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/nicejob04.wav",  //Shit, that was all right
				"player/survivor/voice/" + custom_name + "/playertransitionclose02.wav",  //Heh heh, well all right!
				"player/survivor/voice/" + custom_name + "/playertransitionclose03.wav",  //That was close!
				"player/survivor/voice/" + custom_name + "/violenceawe07.wav"  //<laugh>Whoa-ho-ho, YEAH!
			],
			PlayerUsingDefibrillatorBiker = [
				"player/survivor/voice/" + custom_name + "/areaclear01.wav",  //Clear.
				"player/survivor/voice/" + custom_name + "/areaclear05.wav",  //Clear.
				"player/survivor/voice/" + custom_name + "/hurryup08.wav",  //Let's go, let's go!
				"player/survivor/voice/" + custom_name + "/hurryup09.wav",  //Come on, let's go!
				"player/survivor/voice/" + custom_name + "/revivefrienda04.wav",  //You gonna make it?
				"player/survivor/voice/" + custom_name + "/revivefriendloud12.wav"  //Come on, come on! Get up!
			],
			SurvivorchargerpoundBiker = [
				"player/survivor/voice/" + custom_name + "/tankpound01.wav",  //Get this thing off me!
				"player/survivor/voice/" + custom_name + "/tankpound02.wav",  //This thing's poundin the hell outta me!
				"player/survivor/voice/" + custom_name + "/tankpound03.wav"  //This thing's killing me!
			],
			SurvivorGooedBySpitterBiker = [
				"player/survivor/voice/" + custom_name + "/emphaticgo02.wav",  //MOVE!
				"player/survivor/voice/" + custom_name + "/reactiondisgusted01.wav",  //Ewwww...
				"player/survivor/voice/" + custom_name + "/reactiondisgusted06.wav",  //Yech...
				"player/survivor/voice/" + custom_name + "/swear01.wav",  //Goddammit.
				"player/survivor/voice/" + custom_name + "/swear02.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/swear08.wav",  //Ah bullshit.
				"player/survivor/voice/" + custom_name + "/swear12.wav"  //Shit.
			],
			SurvivorPouncedByHunterBiker = [
				"player/survivor/voice/" + custom_name + "/screamwhilepounced01.wav",  //GET IT OFF!
				"player/survivor/voice/" + custom_name + "/screamwhilepounced02.wav",  //GET IT OFF! [angry]
				"player/survivor/voice/" + custom_name + "/screamwhilepounced03.wav",  //GET IT OFF
				"player/survivor/voice/" + custom_name + "/screamwhilepounced04.wav"  //GET IT OFF GET IT OFF
			],
			SurvivorWarnSpitterIncomingBiker = [
				"player/survivor/voice/" + custom_name + "/incoming04.wav",  //Incoming!
				"player/survivor/voice/" + custom_name + "/incoming04.wav",  //Incoming!
				"player/survivor/voice/" + custom_name + "/incoming06.wav",  //INCOMING!
				"player/survivor/voice/" + custom_name + "/lookout01.wav",  //Look out!
				"player/survivor/voice/" + custom_name + "/lookout02.wav",  //Look out!
				"player/survivor/voice/" + custom_name + "/lookout03.wav",  //Watch out!
				"player/survivor/voice/" + custom_name + "/lookout06.wav"  //Heads up!
			],
			L4D1PlayerLedgeHangEndBiker = [
				"player/survivor/voice/" + custom_name + "/ledgehangend01.wav",  //I'M SLIPPING! PULL ME UP!
				"player/survivor/voice/" + custom_name + "/ledgehangend02.wav",  //GET OVER HERE OR I'M GONNA FALL!
				"player/survivor/voice/" + custom_name + "/ledgehangend03.wav",  //I CAN'T HOLD ON - I'M GONNA FALL!
				"player/survivor/voice/" + custom_name + "/ledgehangend04.wav",  //SHIT...I'M GONNA FALL!
				"player/survivor/voice/" + custom_name + "/ledgehangend05.wav",  //I'M GONNA FALL!
				"player/survivor/voice/" + custom_name + "/ledgehangend06.wav"  //I CAN'T HOLD ON!
			],
			L4D1PlayerLedgeHangMiddleBiker = [
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle01.wav",  //Okay, joke's over, get your ass over here and pull me up!
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle02.wav",  //Someone pull me up already!
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle03.wav",  //I ain't gonna last hanging here much longer.
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle04.wav",  //I'm not screwing around, I really need some help over here!
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle05.wav"  //For chrissake, pull me up already.
			],
			L4D1PlayerLedgeHangStartBiker = [
				"player/survivor/voice/" + custom_name + "/ledgehangstart01.wav",  //Hey, I could use a hand.
				"player/survivor/voice/" + custom_name + "/ledgehangstart02.wav",  //Get your ass over here and help me up.
				"player/survivor/voice/" + custom_name + "/ledgehangstart03.wav",  //Someone want to help me out here?
				"player/survivor/voice/" + custom_name + "/ledgehangstart04.wav",  //Hello. I could use a hand.
				"player/survivor/voice/" + custom_name + "/ledgehangstart05.wav",  //Someone wannna give me a hand?
				"player/survivor/voice/" + custom_name + "/ledgehangstart06.wav",  //I'm hanging here.
				"player/survivor/voice/" + custom_name + "/ledgehangstart07.wav",  //I ain't hangin' here for fun, get over here and help me.
				"player/survivor/voice/" + custom_name + "/ledgehangstart08.wav",  //Hey, I really need a hand.
				"player/survivor/voice/" + custom_name + "/ledgehangstart09.wav"  //Could use a hand here.
			],
			L4D1DoubleDeathBiker = [
				"player/survivor/voice/" + custom_name + "/doubledeathresponse01.wav",  // Two left. Allright. We can still do this.
				"player/survivor/voice/" + custom_name + "/doubledeathresponse02.wav",  // Just two of us left. Shit.
				"player/survivor/voice/" + custom_name + "/doubledeathresponse03.wav"  // You and me gotta find some tougher friends.
			],
			L4D1DeathOneBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3zoeydies04.wav"  //I hate this!
			],
			L4D1TeamKillBiker = [
				"player/survivor/voice/" + custom_name + "/teamkillaccident01.wav",  //Be careful!
				"player/survivor/voice/" + custom_name + "/teamkillaccident02.wav",  //That was not cool.
				"player/survivor/voice/" + custom_name + "/teamkillaccident03.wav"  //That was not cool.
			],
			L4D1PickupAutoShotgunGroovyLouisBiker = [
				"player/survivor/voice/" + custom_name + "/generic63.wav"  //Groovy.
			],
			L4D1PickupAutoShotgunGroovyZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/generic63.wav"  //Groovy.
			],
			L4D1SurvivorPickupAutoShotgunBiker = [
				"player/survivor/voice/" + custom_name + "/takeautoshotgun01.wav",  //Got an auto shotgun.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun02.wav",  //Come to daddy my sweet shotgun.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun03.wav",  //Now this is a shotgun I can love.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun05.wav",  //Got an auto shotgun.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun06.wav",  //Come to daddy my sweet shotgun.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun07.wav",  //Now this is a shotgun I can love.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun08.wav"  //Huh, this shotgun is more my style.
			],
			L4D1SurvivorPickupFirstAidKitBiker = [
				"player/survivor/voice/" + custom_name + "/takefirstaid01.wav",  //Ho oh, some first aid.
				"player/survivor/voice/" + custom_name + "/takefirstaid02.wav",  //Grabbing First Aid.
				"player/survivor/voice/" + custom_name + "/takefirstaid03.wav",  //Grabbing First Aid.
				"player/survivor/voice/" + custom_name + "/takefirstaid04.wav"  //Might need these.
			],
			L4D1SurvivorPickupHuntingRifleBiker = [
				"player/survivor/voice/" + custom_name + "/takesniper01.wav",  //A hunting rifle. Nice.
				"player/survivor/voice/" + custom_name + "/takesniper02.wav"  //Now that is a sweet ass scope.
			],
			L4D1SurvivorPickupMilitarySniperBiker = [
				"player/survivor/voice/" + custom_name + "/takesniper02.wav"  //Now that is a sweet ass scope.
			],
			L4D1SurvivorPickupMolotovBiker = [
				"player/survivor/voice/" + custom_name + "/takemolotov01.wav",  //Allright, cocktails! [to self]
				"player/survivor/voice/" + custom_name + "/takemolotov02.wav"  //Grabbing a Molotov. [to self]
			],
			L4D1SurvivorPickupPainPillsBiker = [
				"player/survivor/voice/" + custom_name + "/takepills01.wav",  //Might need these.
				"player/survivor/voice/" + custom_name + "/takepills02.wav",  //Grabbing pills
				"player/survivor/voice/" + custom_name + "/takepills03.wav"  //Hey, a little pick me up.
			],
			L4D1SurvivorPickupAdrenalineBiker = [
				"player/survivor/voice/" + custom_name + "/takepills01.wav"  //Might need these.
			],
			L4D1SurvivorPickupPipeBombBiker = [
				"player/survivor/voice/" + custom_name + "/takepipebomb01.wav",  //Ah great, homemade explosives.
				"player/survivor/voice/" + custom_name + "/takepipebomb02.wav",  //Grabbing a pipe bomb.
				"player/survivor/voice/" + custom_name + "/takepipebomb03.wav",  //Grabbing a pipe bomb.
				"player/survivor/voice/" + custom_name + "/takepipebomb04.wav",  //This'll blow some shit up.
				"player/survivor/voice/" + custom_name + "/takepipebomb05.wav"  //This'll blow the crap outta something.
			],
			L4D1SurvivorPickupPumpShotgunBiker = [
				"player/survivor/voice/" + custom_name + "/takeshotgun01.wav",  //Shotgun! Allright folks, I'm on crowd control.
				"player/survivor/voice/" + custom_name + "/takeshotgun02.wav",  //Grabbing a shotgun.
				"player/survivor/voice/" + custom_name + "/takeshotgun03.wav",  //Grabbing a shotgun.
				"player/survivor/voice/" + custom_name + "/takeshotgun04.wav"  //I'll take this room sweeper.
			],
			L4D1SurvivorPickupRifleBiker = [
				"player/survivor/voice/" + custom_name + "/takeassaultrifle02.wav",  //Gonna rack some up with this assault rifle.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle03.wav",  //This assault rifle should help.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle04.wav",  //This assault rifle should help.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle05.wav",  //I'm grabbing this rifle.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle07.wav",  //Gonna rack some up with this assault rifle.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle08.wav"  //This assault rifle should help.
			],
			L4D1SurvivorPickupSMGBiker = [
				"player/survivor/voice/" + custom_name + "/takesubmachinegun01.wav",  //Full auto - right on.
				"player/survivor/voice/" + custom_name + "/takesubmachinegun02.wav",  //Whoah, full auto. Everybody stand back.
				"player/survivor/voice/" + custom_name + "/takesubmachinegun03.wav"  //Grabbing a machinegun
			],
			L4D1TakeShotgunGroovyZoey2Biker = [
				"player/survivor/voice/" + custom_name + "/genericresponses09.wav",  //Allright, then, let's do it.
				"player/survivor/voice/" + custom_name + "/reactionpositive08.wav",  //Yeah!
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction07.wav"  //A-frickin'-men.
			],
			SurvivorDeployUpExplosivesBiker = [
				"player/survivor/voice/" + custom_name + "/waithere04.wav",  //Hold up a minute!
				"player/survivor/voice/" + custom_name + "/waithere05.wav",  //Hold up!
				"player/survivor/voice/" + custom_name + "/spotammo01.wav"  //Ammo here!
			],
			SurvivorPickupSecondPistolBiker = [
				"player/survivor/voice/" + custom_name + "/takepistol01.wav",  //A little double pistol action.
				"player/survivor/voice/" + custom_name + "/takepistol02.wav",  //I'm taking an extra pistol.
				"player/survivor/voice/" + custom_name + "/takepistol03.wav",  //Double my fun.
				"player/survivor/voice/" + custom_name + "/takepistol04.wav"  //Two pistols. Hell yeah.
			],
			L4D1SurvivorPickupM60Biker = [
				"player/survivor/voice/" + custom_name + "/takeautoshotgun04.wav",  //Those bastards think they're sick now, wait'll they get a taste of this.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle01.wav",  //This oughtta put the fear a' God into 'em.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle06.wav"  //This oughtta put the fear a' God into 'em.
			],
			L4D1SurvivorPickupMeleeBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob01.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob02.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob07.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob14.wav",  //Shiiiit.
				"player/survivor/voice/" + custom_name + "/nicejob17.wav"  //Cool.
			],
			L4D1SurvivorPickupChainsawBiker = [
				"player/survivor/voice/" + custom_name + "/taunt05.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt06.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt07.wav"  //[Loud, evil laugh]
			],
			L4D1PlayerChainSawUsedBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah19.wav",  //Goddamn right!
				"player/survivor/voice/" + custom_name + "/hurrah20.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/taunt01.wav",  //That's right!
				"player/survivor/voice/" + custom_name + "/taunt02.wav",  //HELL YEAH!
				"player/survivor/voice/" + custom_name + "/taunt03.wav",  //OH YEAH!
				"player/survivor/voice/" + custom_name + "/taunt04.wav",  //Oh yeah!
				"player/survivor/voice/" + custom_name + "/taunt08.wav",  //YEAH! YEAH!
				"player/survivor/voice/" + custom_name + "/taunt09.wav",  //Damn straight!
				"player/survivor/voice/" + custom_name + "/taunt10.wav"  //HELL YEAH!
			],
			L4D1SurvivorPickupUpIncendiaryAmmoBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob01.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob02.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob07.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob14.wav",  //Shiiiit.
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/takemolotov03.wav"  //Fire! (to self)
			],
			L4D1SurvivorPickupUpExplosivesBiker = [
				"player/survivor/voice/" + custom_name + "/takepipebomb04.wav",  //This'll blow some shit up.
				"player/survivor/voice/" + custom_name + "/takepipebomb05.wav"  //This'll blow the crap outta something.
			],
			L4D1PlayerGettingRevivedBiker = [
				"player/survivor/voice/" + custom_name + "/gettingrevived01.wav",  //I'm okay.
				"player/survivor/voice/" + custom_name + "/gettingrevived02.wav",  //No, no, I'm allright.
				"player/survivor/voice/" + custom_name + "/gettingrevived03.wav",  //[groan]
				"player/survivor/voice/" + custom_name + "/gettingrevived04.wav",  //Hell if I know.
				"player/survivor/voice/" + custom_name + "/gettingrevived05.wav",  //Ah, hey, is this my blood?
				"player/survivor/voice/" + custom_name + "/gettingrevived06.wav",  //[groan2]
				"player/survivor/voice/" + custom_name + "/gettingrevived07.wav",  //I'll make it.
				"player/survivor/voice/" + custom_name + "/gettingrevived08.wav",  //I'll live, I'll live.
				"player/survivor/voice/" + custom_name + "/gettingrevived09.wav",  //Uh, how's my face?
				"player/survivor/voice/" + custom_name + "/gettingrevived10.wav",  //I've been better.
				"player/survivor/voice/" + custom_name + "/gettingrevived13.wav",  //Shit. I hope I don't NEED all that blood.
				"player/survivor/voice/" + custom_name + "/gettingrevived14.wav",  //Good thing I'm indestructible.
				"player/survivor/voice/" + custom_name + "/gettingrevived15.wav",  //You... should see the other hundred guys.
				"player/survivor/voice/" + custom_name + "/gettingrevived16.wav"  //You think they'll call us heroes someday?
			],
			L4D1PlayerHealOtherBiker = [
				"player/survivor/voice/" + custom_name + "/healother01.wav",  //Lemme patch you up.
				"player/survivor/voice/" + custom_name + "/healother02.wav",  //Hold on, lemme patch you up.
				"player/survivor/voice/" + custom_name + "/healother03.wav",  //Stand still, I'm gonna fix ya.
				"player/survivor/voice/" + custom_name + "/healother04.wav",  //Don't move, I'm healin' ya.
				"player/survivor/voice/" + custom_name + "/healother05.wav",  //C'mon. lemme heal ya up.
				"player/survivor/voice/" + custom_name + "/healother06.wav",  //Quit fidgitin' and let me heal ya.
				"player/survivor/voice/" + custom_name + "/healother07.wav"  //Goddamit, quit fussin and let me heal ya.
			],
			L4D1PlayerHealOtherCombatBiker = [
				"player/survivor/voice/" + custom_name + "/healothercombat01.wav",  //Hold on! Hold on!
				"player/survivor/voice/" + custom_name + "/healothercombat02.wav",  //Hold on! I'm gonna patch ya up!
				"player/survivor/voice/" + custom_name + "/healothercombat03.wav",  //Don't move, I'm healin ya!
				"player/survivor/voice/" + custom_name + "/healothercombat04.wav",  //Don't go nowhere, I gotta heal ya.
				"player/survivor/voice/" + custom_name + "/healothercombat05.wav",  //Lemme heal ya!
				"player/survivor/voice/" + custom_name + "/healothercombat06.wav",  //Hang on. I got ya!
				"player/survivor/voice/" + custom_name + "/healothercombat07.wav"  //Stand still, I'm healin' ya!
			],
			L4D1PlayerReviveFriendBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriend01.wav",  //Hang on, hang on, I'm here. Relax, I gotcha. Get up. Get up now. We gotta move.
				"player/survivor/voice/" + custom_name + "/revivefriend02.wav",  //Woah, I thought you were hosed for sure, but I think I can get you back on your feet.
				"player/survivor/voice/" + custom_name + "/revivefriend03.wav",  //Come on, lazy - can't have ya laying around all day. We gotta get moving.  Let me get you up.
				"player/survivor/voice/" + custom_name + "/revivefriend04.wav",  //You look like shit, but I think I can get you up on your feet enough to keep moving.
				"player/survivor/voice/" + custom_name + "/revivefriend05.wav",  //C'mon, let's get you on your feet. You look pretty messed up, but that might help you out a little if you know what I mean.
				"player/survivor/voice/" + custom_name + "/revivefriend06.wav",  //Don't worry, don't worry, we all go down sometime. Lemme get you up.
				"player/survivor/voice/" + custom_name + "/revivefriend07.wav",  //Didn't think you were gettin' back up.
				"player/survivor/voice/" + custom_name + "/revivefrienda01.wav",  // You okay?
				"player/survivor/voice/" + custom_name + "/revivefrienda02.wav",  // How d'ya feel?
				"player/survivor/voice/" + custom_name + "/revivefrienda03.wav",  // Can you make it?
				"player/survivor/voice/" + custom_name + "/revivefrienda04.wav",  // You gonna make it?
				"player/survivor/voice/" + custom_name + "/revivefrienda05.wav",  // How bad are you?
				"player/survivor/voice/" + custom_name + "/revivefrienda07.wav"  // How ya doin'?
			],
			L4D1PlayerReviveFriendCriticalBiker = [
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend01.wav",  //I gotcha, I gotcha. Man, you took a real beatin'. We gotta find you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend02.wav",  //No worries - I gotcha, I gotcha. Man, you took a real beatin'. We gotta find you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend03.wav",  //Okay, okay.  Come on.  Man, you are on death's door.  We gotta get you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend04.wav",  //Ah shit, I can't lie, you are messed up bad. We gotta get you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend05.wav",  //I can help you up, but you ain't gonna last.  We gotta get you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend06.wav",  //Okay, let's get you - Oh, man, they really tore you up.  We gotta get you some first aid,  cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend07.wav",  //I can get you up, but oh shit, We gotta get you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend08.wav"  //Relax, I gotcha.  But, shit, we gotta get you some first aid, cuz you go down like this again and it's over.
			],
			L4D1PlayerReviveFriendLoudBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendloud01.wav",  //Hold on. I'm gonna get you up!
				"player/survivor/voice/" + custom_name + "/revivefriendloud10.wav",  //Come on, come on! Get up!
				"player/survivor/voice/" + custom_name + "/revivefriendloud11.wav",  //Get your ass up, let's go!
				"player/survivor/voice/" + custom_name + "/revivefriendloud12.wav"  //Come on, come on! Get up!
			],
			L4D1PlayerReviveFriendLoudBillBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendloud02.wav",  //Get the hell up, Bill!
				"player/survivor/voice/" + custom_name + "/revivefriendloud04.wav",  //C'mon Bill, get up!
				"player/survivor/voice/" + custom_name + "/revivefriendloud08.wav",  //I ain't gonna carry you, Bill. Get the hell up!
				"player/survivor/voice/" + custom_name + "/revivefriendloud09.wav"  //Let's go, Bill. Up an' at 'em!
			],
			L4D1PlayerReviveFriendLoudLouisBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendloud05.wav",  //Get up, Louis!
				"player/survivor/voice/" + custom_name + "/revivefriendloud07.wav"  //Let's go, Louis. Get up!
			],
			L4D1PlayerReviveFriendLoudZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendloud03.wav",  //Zoey, let's go, get up!
				"player/survivor/voice/" + custom_name + "/revivefriendloud06.wav"  //C'mon Zoey, get the hell up!
			],
			L4D1ReviveFriendDownFinalBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendb01.wav",  //Up and at 'em.
				"player/survivor/voice/" + custom_name + "/revivefriendb02.wav",  //Come on up!
				"player/survivor/voice/" + custom_name + "/revivefriendb03.wav",  //Up ya go.
				"player/survivor/voice/" + custom_name + "/revivefriendb04.wav",  //You'll be okay.
				"player/survivor/voice/" + custom_name + "/revivefriendb05.wav",  //I got ya.
				"player/survivor/voice/" + custom_name + "/revivefriendb06.wav",  //Up we go.
				"player/survivor/voice/" + custom_name + "/revivefriendb07.wav",  //Hell, you're fine.
				"player/survivor/voice/" + custom_name + "/revivefriendb08.wav",  //It don't look bad.
				"player/survivor/voice/" + custom_name + "/revivefriendb09.wav",  //Come on up.
				"player/survivor/voice/" + custom_name + "/revivefriendb10.wav",  //Let's move!
				"player/survivor/voice/" + custom_name + "/revivefriendb11.wav"  //You're fine.
			],
			L4D1ReviveFriendDownFinalManagerBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendb12.wav"  // Let's get to it, Louis.
			],
			L4D1ReviveFriendDownFinalNamVetBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendb13.wav"  // Back to the fight, Billy.
			],
			L4D1ReviveFriendDownFinalTeenGirlBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendb14.wav"  // You're fine, Zoey.
			],
			PlayerLedgeSaveBiker = [
				"player/survivor/voice/" + custom_name + "/ledgesave01.wav",  //Come on, don't worry, I gotcha.  Up you go.
				"player/survivor/voice/" + custom_name + "/ledgesave02.wav",  //You think I was gonna let you just hang around all day?  Get your ass up here.
				"player/survivor/voice/" + custom_name + "/ledgesave03.wav",  //You think I was gonna let you just hang around all day?  Get your ass up here.
				"player/survivor/voice/" + custom_name + "/ledgesave04.wav",  //Come on, don't worry, I gotcha.  Up you go.
				"player/survivor/voice/" + custom_name + "/ledgesave05.wav",  //You ain't gonna fall, I gotcha. Quit blubberin' ya little baby, now get your ass back up here.
				"player/survivor/voice/" + custom_name + "/ledgesave06.wav",  //You ain't gonna fall, I gotcha. Get yer ass up here!
				"player/survivor/voice/" + custom_name + "/ledgesave07.wav"  //You ain't gonna fall, I gotcha. Quit blubberin and get back up here.
			],
			L4D1PlayerAirportIntroBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0102.wav",  //Working plane means working airport. I say we head there.
				"player/survivor/voice/" + custom_name + "/worldairport0104.wav",  //That plane's headed right for the airport. I say we head there too.
				"player/survivor/voice/" + custom_name + "/worldairport0106.wav",  //I sure as hell wouldn't mind flyin' outta here. Let's head to the airport.
				"player/survivor/voice/" + custom_name + "/worldairport0107.wav",  //That plane's headed for the airport and the airport ain't far from here. If nobody's got a better idea, I say we head for the airport too.
				"player/survivor/voice/" + custom_name + "/worldairport0114.wav"  //That plane's headed right for the airport. I say we head there too.
			],
			L4D1PlayerAirportIntrobcBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0513.wav"  //I hate planes.
			],
			L4D1PlayerAirportIntrofbBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0102.wav"  //Working plane means working airport. I say we head there.
			],
			L4D1PlayerFarmHouseIntroBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouseintro01.wav",  //I heard the military's got a safe zone north of here. We just gotta follow the train tracks.
				"player/survivor/voice/" + custom_name + "/worldfarmhouseintro05.wav"  //We ain't gonna survive on our own forever. I heard the military's got a safe zone north of here. We just gotta follow the train tracks.
			],
			L4D1PlayerFarmHouseIntro2Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouseintro03.wav"  //Yeah, I heard that, too.
			],
			L4D1PlayerHospitalIntro02Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0201.wav"  //I hate subways.
			],
			InfoReminfo_powerboat4aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats14.wav",  //Quiet Zoey.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats15.wav"  //Quiet Zoey.
			],
			L4D1PlayerCoverMeHealBiker = [
				"player/survivor/voice/" + custom_name + "/coverme01.wav",  //Cover me!
				"player/survivor/voice/" + custom_name + "/coverme02.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme03.wav",  //Watch my back
				"player/survivor/voice/" + custom_name + "/coverme04.wav",  //Cover me!
				"player/survivor/voice/" + custom_name + "/coverme05.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme06.wav",  //Watch my back
				"player/survivor/voice/" + custom_name + "/coverme08.wav",  //Watch my back! But don't stare at my ass.
				"player/survivor/voice/" + custom_name + "/coverme09.wav",  //Watch my back! But don't stare at my ass.
				"player/survivor/voice/" + custom_name + "/coverme10.wav",  //Cover my ass.
				"player/survivor/voice/" + custom_name + "/coverme11.wav",  //Healing, cover me.
				"player/survivor/voice/" + custom_name + "/coverme12.wav",  //Wait up, I'm healing.
				"player/survivor/voice/" + custom_name + "/coverme13.wav",  //Hold on, gotta heal.
				"player/survivor/voice/" + custom_name + "/coverme14.wav"  //I'm healing.
			],
			AutoPlayerLostCallBiker = [
				"player/survivor/voice/" + custom_name + "/lostcall01.wav",  //Hello
				"player/survivor/voice/" + custom_name + "/lostcall04.wav",  //Is anyone there?
				"player/survivor/voice/" + custom_name + "/lostcall05.wav",  //Marco!
				"player/survivor/voice/" + custom_name + "/lostcall08.wav"  //Hello? Where dija go?
			],
			SurvivorSpottedChainsawBiker = [
				"player/survivor/voice/" + custom_name + "/generic63.wav"  //Groovy.
			],
			SurvivorSpottedWeaponBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons03.wav",  //Buncha guns over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedMeleeWeaponBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav",  //We got weapons over here.
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			L4D1PlayerLighthouseIntroBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_communityl4d106.wav"  //Goddamn it, where did you learn to drive?
			],
			L4D1PlayerLighthouseIntro01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2riverside01.wav"  //Ehh, I doubt it.
			],
			L4D1PlayerLighthouseIntro03Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro22.wav"  //I hate walking.
			],
			L4D1PlayerLighthouseIntro03bBiker = [
				"player/survivor/voice/" + custom_name + "/vampires10.wav"  //*What*ever.
			],
			L4D1PlayerLighthouseIntro04aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro30.wav",  //Let's just hike the hell out of here.
				"player/survivor/voice/" + custom_name + "/dlc2intro31.wav"  //Looks like we're walking again.
			],
			L4D1RemarkC14M1HumveeBiker = [
				"player/survivor/voice/" + custom_name + "/followme04.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme09.wav"  //This way, kids.
			],
			L4D1C14M1PlaneFlyByBiker = [
				"player/survivor/voice/" + custom_name + "/look04.wav",  //Look
				"player/survivor/voice/" + custom_name + "/look05.wav"  //Look!
			],
			L4D1C14M1EngineBrokeBiker = [
				"player/survivor/voice/" + custom_name + "/swear03.wav",  //Ah shit.
				"player/survivor/voice/" + custom_name + "/swear09.wav"  //Dammit.
			],
			L4D1RemarkC14M1CabinUpstairsBiker = [
				"player/survivor/voice/" + custom_name + "/genericdirections01.wav",  //Up the stairs!
				"player/survivor/voice/" + custom_name + "/worldsmalltown0116.wav"  //We can take these stairs!
			],
			L4D1RemarkC14M1JunkyardEntranceBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0305.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldairport0316.wav"  //Let's go through here.
			],
			L4D1RemarkC14M1TraincarBiker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav"  //Through here!
			],
			L4D1RemarkC14M1PrePanicBiker = [
				"player/survivor/voice/" + custom_name + "/askready05.wav"  //Ready for some fun?
			],
			L4D1C14M1PanicSpeakQuickReadyBiker = [
				"player/survivor/voice/" + custom_name + "/killconfirmation01.wav"  //Got it!
			],
			L4D1C14M1PanicSpeakBiker = [
				"player/survivor/voice/" + custom_name + "/answerready05.wav",  //Let's go kill somethin'!
				"player/survivor/voice/" + custom_name + "/answerready04.wav",  //Let's go break stuff!
				"player/survivor/voice/" + custom_name + "/answerready03.wav"  //Yeah, let's do it.
			],
			L4D1C14M1GeneratorActivatedSpeakBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firsteventover02.wav"  //Why are we still here? To the next generator!
			],
			L4D1C14M1ThirdGeneratorActivatedSpeakBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondeventover01.wav",  //You think that last generator is going to start itself?
				"player/survivor/voice/" + custom_name + "/c6dlc3secondeventover02.wav"  //One more!
			],
			L4D1C14M1PathClearBiker = [
				"player/survivor/voice/" + custom_name + "/emphaticrun04.wav"  //LET'S BEAT IT!
			],
			L4D1RemarkC14M1DownCliffBiker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0114.wav"  //Down here!
			],
			L4D1C14M2RadioSpeakBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhousenpc01.wav"  // Uh, hello?
			],
			L4D1C14M2RadioDestroyedBiker = [
				"player/survivor/voice/" + custom_name + "/swear15.wav",  //Son of a bitch.
				"player/survivor/voice/" + custom_name + "/swear17.wav"  //Dammit.
			],
			L4D1RemarkC14M2DropBiker = [
				"player/survivor/voice/" + custom_name + "/askready07.wav"  //You ready to roll?
			],
			L4D1RemarkC14M2NoteLighthouseBiker = [
				"player/survivor/voice/" + custom_name + "/lookhere05.wav"  //Look here.
			],
			L4D1C14M2NoteLighthouse2Biker = [
				"player/survivor/voice/" + custom_name + "/reactionapprehensive03.wav"  //I don't like ths one damn bit.
			],
			L4D1C14M2PowerOutAgainBiker = [
				"player/survivor/voice/" + custom_name + "/swear01.wav",  //Goddammit.
				"player/survivor/voice/" + custom_name + "/swear08.wav",  //Ah bullshit.
				"player/survivor/voice/" + custom_name + "/swear10.wav"  //Bullshit.
			],
			L4D1SurvivorFinalVehicleSpottedBoatC14M2Biker = [
				"player/survivor/voice/" + custom_name + "/arriveboatinitial01.wav",  //Our boat's here, all aboard!
				"player/survivor/voice/" + custom_name + "/arriveboatinitial02.wav"  //Our boat's here! Let's go!
			],
			// biker_dlc1.txt ====================================================================================================
			L4D1PlayerNiceShotBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob03.wav",  //Nice job.
				"player/survivor/voice/" + custom_name + "/niceshot07.wav",  //Whoah. Nice shot.
				"player/survivor/voice/" + custom_name + "/niceshot10.wav"  //Good one!
			],
			C6M1Intro_01bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting02.wav",  //Nope!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting03.wav",  //Nope, not a chance.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting05.wav"  //Nope, no way in hell.
			],
			C6M1Intro_01Biker01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting01.wav",  //Heyyy! Nice ride!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting07.wav",  //Heyyy! Nice ride!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting08.wav"  //Heyy! Are you a racecar driver?
			],
			C6M1Intro_01Biker03Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting10.wav"  //Ma'am uhh Miss? I'm sorry but I can't lower the bridge myself. If you can get to the other side I can help you lower it.
			],
			C6M1Intro_01Biker05Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting30.wav",  //Brother, that's what I'm trying to tell ya. We can't get this thing down ourselves. You have to get to the other side.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting33.wav"  //And I'm telling you, I can't lower the bridge. You gotta get around to the other side.
			],
			C6M1Intro_01Biker06Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting19.wav"  //You down there, be calm. We're cops.
			],
			C6M1Intro_01Biker07Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting20.wav"  //Hey!
			],
			C6M1Intro_01Biker08Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting39.wav",  //Are any of you vampires?
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting39.wav"  //Are any of you vampires?
			],
			C6M1Intro_01dBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting04.wav",  //Generator's out. Get to the other side and we'll help you get this thing down!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting06.wav"  //Can't generator's out
			],
			C6M1Intro_02bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting09.wav"  //Can't! Generator's out. Get to the other side and fill it up! We'll cover ya!
			],
			C6M1Intro_05bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting11.wav"  //Ahh sorry, No Ma'am.
			],
			C6M1Intro_05dBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting12.wav",  //No ma'am.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting14.wav"  //No ma'am.
			],
			C6M1Intro_06aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting13.wav"  //If I could, I would. Can't. Get to the other side and we can lower it together.
			],
			C6M1Intro_06cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting15.wav",  //(fumbling) Uhhh yyyeaaah.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting16.wav"  //Yeah.
			],
			C6M1Intro_06eBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting17.wav"  //HELL YEAH!
			],
			C6M1Intro_07aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting18.wav"  //If you want to keep going this way, you're gonna have to walk to the other side of this bridge and then me and an some uhh other cops up here can help you lower the bridge.
			],
			C6M1Intro_09cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting21.wav"  //I was talking to the little lady.
			],
			C6M1Intro_09gBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting22.wav"  //Ahh shit. Nooo. But if you can get to the other side we can help you lower it.
			],
			C6M1Intro_10aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting23.wav",  //Go to hell suit.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting24.wav",  //Bite me Colonel Sanders.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting25.wav"  //Bite me Colonel Sanders.
			],
			C6M1Intro_10cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting26.wav"  //Hell yeah, I'll help *YOU*.
			],
			C6M1Intro_14bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting31.wav"  //Is there anyone of you four who isn't an asshole?
			],
			C6M1Intro_16bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting32.wav",  //Look, I don't love this bridge. But we just lost a man and� Sorry brother, but you are on your own.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting34.wav"  //Brother, I don't love this bridge, but right now we just lost a man and got a man down. Sorry, you are on your own.
			],
			C6M1Intro_18aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting35.wav"  //Okay! Bridge is down! That's as far as it goes.
			],
			C6M1Intro_18cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting36.wav"  //Really, this is as far as it goes. Never saw it any lower.
			],
			C6M1Intro_18eBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting37.wav"  //Oh yeah... uh, yeah it is.
			],
			C6M1Intro_19aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting38.wav"  //Kick ASS! Now all you gotta do is go back into town, find some way to cross the river, fight your way to the other side of this bridge, refuel the generator and get it back going. Then its kissing time!
			],
			C6M1Intro_20cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting40.wav"  //Sorry, can't.
			],
			C6M1Intro_20eBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting41.wav"  //Louis! I told you, there were vampires!
			],
			C6M1Intro_20fBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting42.wav"  //I'm not talking to any goddamn vampires.
			],
			C6M1Intro_21cBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting40.wav"  //Sorry, can't.
			],
			C6M1Intro_21eBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting41.wav"  //Louis! I told you, there were vampires!
			],
			C6M1Intro_21fBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting42.wav"  //I'm not talking to any goddamn vampires.
			],
			C6M1Intro_24bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting43.wav"  //Yeah! Yeah! That's what I've been saying.
			],
			C6M1Intro_24dBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m1_initialmeeting44.wav"  //Sorry brother. Like I've been telling you. This bridge is up until the generator gets refueled.
			],
			c6m3_outroBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			c6m3_outroL4D1Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic13.wav"  //I hate goodbyes.
			],
			c6m3_outroL4D1010aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic19.wav"  //Yeah.
			],
			c6m3_outroL4D104bBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic09.wav"  //What? Seriously, what?
			],
			c6m3_outroL4D108aBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic12.wav"  //No, I haven't heard that one.
			],
			c6m3_outroL4D1AllBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic01.wav",  //You know, they were all right.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic02.wav"  //I'm gonna miss them.
			],
			c6m3_outroL4D1CoachBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic10.wav"  //Bye Coach! Keep the pedal to the metal!
			],
			c6m3_outroL4D1CopBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic14.wav",  //I really am a cop you know!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic15.wav"  //I really am a cop!
			],
			c6m3_outroL4D1GamblerBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic05.wav"  //Nick! Good luck, my brother!
			],
			c6m3_outroL4D1GibbsBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic03.wav",  //I love that car.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic04.wav"  //Look at that car go!
			],
			c6m3_outroL4D1MechanicBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic11.wav"  //See Ya Ellis! Keep the pedal to the metal!
			],
			c6m3_outroL4D1ProducerBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic07.wav",  //Bye-bye RO! My lovely little angel.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic08.wav",  //I'm gonna miss Ro.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic16.wav",  //Bye RO! I love you!!!!!!!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic17.wav",  //Bye RO! I love you!!!!!!! (sobbing) I love you!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalecinematic18.wav"  //Go, Ro, go!
			],
			C6M3VocalizeLookOutBiker = [
				"player/survivor/voice/" + custom_name + "/lookout01.wav",  //Look out!
				"player/survivor/voice/" + custom_name + "/lookout02.wav",  //Look out!
				"player/survivor/voice/" + custom_name + "/lookout03.wav",  //Watch out!
				"player/survivor/voice/" + custom_name + "/lookout04.wav",  //Watch out!
				"player/survivor/voice/" + custom_name + "/lookout05.wav",  //Watch your ass!
				"player/survivor/voice/" + custom_name + "/lookout06.wav"  //Heads up!
			],
			IncapBounce2Biker = [
				"player/survivor/voice/" + custom_name + "/staytogether03.wav",  //Keep together!
				"player/survivor/voice/" + custom_name + "/staytogether04.wav",  //Stay together!
				"player/survivor/voice/" + custom_name + "/staytogether05.wav",  //Don't split up!
				"player/survivor/voice/" + custom_name + "/staytogether09.wav",  //Stay together!
				"player/survivor/voice/" + custom_name + "/staytogether12.wav"  //Keep together!
			],
			L4D1_AttractPlayerForThrowBiker = [
				"player/survivor/voice/" + custom_name + "/alertgiveitem06.wav",  //Hold up I got something for you.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_finalel4d1throwitems01.wav",  //Hey come over here.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalefinalgas02.wav",  //Here, you're gonna need this.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalefinalgas04.wav",  //You lookin' for this?
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere02.wav",  //Look at this.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lostcall01.wav"  //Hello
			],
			L4D1_SurvivorBotTakeThisItemBiker = [
				"player/survivor/voice/" + custom_name + "/alertgiveitem01.wav",  //Here, take this.
				"player/survivor/voice/" + custom_name + "/alertgiveitem07.wav",  //Take it. Hell, I don't need it.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_finalel4d1throwitems02.wav",  //Take this!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_finalel4d1throwitems03.wav",  //You can have this.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalefinalgas01.wav",  //Here, you're gonna need this.
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalefinalgas03.wav"  //Take this, now be safe.
			],
			WorldC6M3_ByBridge01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun01.wav",  //Don't just stand there! HAUL ASS!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun02.wav",  //Don't just stand there! HAUL ASS!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun03.wav",  //Get to your car, we'll hold them off!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun04.wav",  //Get your asses to your car!
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun05.wav"  //Get your goddamn asses to your car!
			],
			WorldC6M3_ByBridge01EllisBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d1finalebridgerun06.wav"  //Hey Ellis, I HATE YOUR HAT! [laughs]
			],
			L4D1AlsoSpottedBoomerBiker = [
				"player/survivor/voice/" + custom_name + "/warnboomer01.wav",  //BOOMER!
				"player/survivor/voice/" + custom_name + "/warnboomer02.wav",  //BOOMER!
				"player/survivor/voice/" + custom_name + "/warnboomer03.wav"  //BOOMER!
			],
			L4D1AlsoSpottedHunterBiker = [
				"player/survivor/voice/" + custom_name + "/warnhunter01.wav",  //HUNTER!
				"player/survivor/voice/" + custom_name + "/warnhunter02.wav",  //HUNTER!
				"player/survivor/voice/" + custom_name + "/warnhunter03.wav"  //HUNTER!
			],
			L4D1AlsoSpottedSmokerBiker = [
				"player/survivor/voice/" + custom_name + "/warnsmoker01.wav",  //SMOKER!
				"player/survivor/voice/" + custom_name + "/warnsmoker02.wav",  //SMOKER!
				"player/survivor/voice/" + custom_name + "/warnsmoker03.wav"  //SMOKER!
			],
			L4D1AlsoSpottedTankBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1tank01.wav",  //Lead 'em over here!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1tank02.wav",  //Oh shit, two tanks!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1tank03.wav"  //TWO TANKS! I HATE THE SOUTH!
			],
			L4D1SpottedBoomerBiker = [
				"player/survivor/voice/" + custom_name + "/warnboomer01.wav",  //BOOMER!
				"player/survivor/voice/" + custom_name + "/warnboomer02.wav",  //BOOMER!
				"player/survivor/voice/" + custom_name + "/warnboomer03.wav"  //BOOMER!
			],
			L4D1SpottedChargerBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1charger01.wav",  //CHARGER!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1charger02.wav",  //CHARGER!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1charger03.wav"  //CHARGER!
			],
			L4D1SpottedHunterBiker = [
				"player/survivor/voice/" + custom_name + "/warnhunter01.wav",  //HUNTER!
				"player/survivor/voice/" + custom_name + "/warnhunter02.wav",  //HUNTER!
				"player/survivor/voice/" + custom_name + "/warnhunter03.wav"  //HUNTER!
			],
			L4D1SpottedJockeyBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1jockey01.wav",  //JOCKEY!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1jockey02.wav",  //JOCKEY!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1jockey03.wav"  //JOCKEY!
			],
			L4D1SpottedSmokerBiker = [
				"player/survivor/voice/" + custom_name + "/warnsmoker01.wav",  //SMOKER!
				"player/survivor/voice/" + custom_name + "/warnsmoker02.wav",  //SMOKER!
				"player/survivor/voice/" + custom_name + "/warnsmoker03.wav"  //SMOKER!
			],
			L4D1SpottedSpitterBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1spitter01.wav",  //SPITTER!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1spitter02.wav",  //SPITTER!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1spitter03.wav"  //SPITTER!
			],
			L4D1SpottedTankBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1tank01.wav",  //Lead 'em over here!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1tank02.wav",  //Oh shit, two tanks!
				"player/survivor/voice/" + custom_name + "/dlc1_l4d1tank03.wav"  //TWO TANKS! I HATE THE SOUTH!
			],
			L4D1_ReloadingBiker = [
				"player/survivor/voice/" + custom_name + "/reloading01.wav",  //Reloading!
				"player/survivor/voice/" + custom_name + "/reloading02.wav",  //Reloading!
				"player/survivor/voice/" + custom_name + "/reloading03.wav"  //Reloading!
			],
			L4D1PlayerKillConfirmationBiker = [
				"player/survivor/voice/" + custom_name + "/killconfirmation01.wav",  //Got it!
				"player/survivor/voice/" + custom_name + "/killconfirmation02.wav",  //Nailed it!
				"player/survivor/voice/" + custom_name + "/killconfirmation03.wav",  //Down!
				"player/survivor/voice/" + custom_name + "/killconfirmation04.wav",  //That's mine.
				"player/survivor/voice/" + custom_name + "/killconfirmation05.wav",  //Dead!
				"player/survivor/voice/" + custom_name + "/killconfirmation06.wav",  //Popped it!
				"player/survivor/voice/" + custom_name + "/killconfirmation07.wav"  //Popped a cap in his ass!
			],
			L4D1PlayerKillConfirmationTankBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank01.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank01.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank02.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank02.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank02.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank02.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank03.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank03.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank03.wav",  //I hate tanks.
				"player/survivor/voice/" + custom_name + "/dlc1_killfinaltank03.wav"  //I hate tanks.
			],
			L4D1PlayerWarnMegaMobBiker = [
				"player/survivor/voice/" + custom_name + "/incoming02.wav",  //Holy shit, here they come!
				"player/survivor/voice/" + custom_name + "/incoming03.wav",  //They're coming!
				"player/survivor/voice/" + custom_name + "/incoming04.wav",  //Incoming!
				"player/survivor/voice/" + custom_name + "/incoming05.wav",  //Get ready ladies!
				"player/survivor/voice/" + custom_name + "/incoming07.wav"  //This is gonna be good.
			],
			// biker_dlc2.txt ====================================================================================================
			_PlayerInfoRemarkableBlankBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"
			],
			PlayerNiceShotBiker = [
				"player/survivor/voice/" + custom_name + "/niceshot01.wav",  //Nice shot!
				"player/survivor/voice/" + custom_name + "/niceshot02.wav",  //Nice shot!
				"player/survivor/voice/" + custom_name + "/niceshot03.wav",  //Good shot!
				"player/survivor/voice/" + custom_name + "/niceshot04.wav",  //Good shot!
				"player/survivor/voice/" + custom_name + "/niceshot07.wav",  //Whoah. Nice shot.
				"player/survivor/voice/" + custom_name + "/niceshot08.wav",  //Good shot. [laughing]
				"player/survivor/voice/" + custom_name + "/niceshot09.wav",  //Great shot [laughing]
				"player/survivor/voice/" + custom_name + "/niceshot10.wav",  //Good one!
				"player/survivor/voice/" + custom_name + "/worldairport05npc10.wav"  //Yeah, yeah, we get it.  You're a hero.
			],
			PlayerRemarkFarm05_path09BBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0105.wav",  //Shit. Never thought I'd go lookin' for the military.
				"player/survivor/voice/" + custom_name + "/blank.wav",  //
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerRemarkFarm05_path09CBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0105.wav"  //Shit. Never thought I'd go lookin' for the military.
			],
			ReviveMeINterruptedBiker = [
				"player/survivor/voice/" + custom_name + "/reactionstartled01.wav",  //Whoah!
				"player/survivor/voice/" + custom_name + "/reactionstartled02.wav",  //AHHHH!
				"player/survivor/voice/" + custom_name + "/reactionstartled03.wav",  //Whoah! Jesus...
				"player/survivor/voice/" + custom_name + "/reactionstartled04.wav",  //What the?
				"player/survivor/voice/" + custom_name + "/swear01.wav",  //Goddammit.
				"player/survivor/voice/" + custom_name + "/swear12.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/swear17.wav"  //Dammit.
			],
			SurvivorMournBillBiker = [
				"player/survivor/voice/" + custom_name + "/griefvet01.wav",  //Bill's gone!
				"player/survivor/voice/" + custom_name + "/griefvet02.wav",  //Rest in peace, old man.
				"player/survivor/voice/" + custom_name + "/griefvet03.wav"  //Shit, I'm gonna miss the old guy.
			],
			SurvivorMournLouisBiker = [
				"player/survivor/voice/" + custom_name + "/griefmanager01.wav",  //Ahhh. the manager's down for the count.
				"player/survivor/voice/" + custom_name + "/griefmanager02.wav",  //Ah shit, I was just starting to like that guy.
				"player/survivor/voice/" + custom_name + "/griefmanager03.wav",  //Damn it, he didn't deserve this.
				"player/survivor/voice/" + custom_name + "/griefmanager04.wav",  //The manager's down for the count.
				"player/survivor/voice/" + custom_name + "/griefmanager05.wav"  //Shit, I was just starting to like that guy.
			],
			SurvivorMournZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/grieffemalegeneric03.wav",  //Ah hell, she's dead.
				"player/survivor/voice/" + custom_name + "/griefteengirl01.wav",  //Ahh Zoey. No.
				"player/survivor/voice/" + custom_name + "/griefteengirl02.wav"  //Ahh damnit, not Zoey.
			],
			PlayerRemarkFarm01_path09Biker = [
				"player/survivor/voice/" + custom_name + "/safespotahead06.wav",  //Safe house ahead!
				"player/survivor/voice/" + custom_name + "/safespotahead08.wav"  //Safe house, let's go!
			],
			PlayerRemarkSmalltown03_path14Biker = [
				"player/survivor/voice/" + custom_name + "/safespotahead03.wav"  //We're near a safe spot.
			],
			ThanksGotItemBiker = [
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks11.wav",  //Thanks, dude.
				"player/survivor/voice/" + custom_name + "/thanks12.wav"  //Thanks for that.
			],
			HealThanksBiker = [
				"player/survivor/voice/" + custom_name + "/thanks03.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks04.wav",  //Thanks [noise you make gun clicking your mouth twice]
				"player/survivor/voice/" + custom_name + "/thanks05.wav",  //Thanks, man.
				"player/survivor/voice/" + custom_name + "/thanks06.wav",  //Hey, thanks man.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks09.wav"  //Thanks, I owe ya.
			],
			ReviveThanksBiker = [
				"player/survivor/voice/" + custom_name + "/thanks03.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks04.wav",  //Thanks [noise you make gun clicking your mouth twice]
				"player/survivor/voice/" + custom_name + "/thanks05.wav",  //Thanks, man.
				"player/survivor/voice/" + custom_name + "/thanks06.wav",  //Hey, thanks man.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks09.wav"  //Thanks, I owe ya.
			],
			ReviveThanksBillBiker = [
				"player/survivor/voice/" + custom_name + "/thanks14.wav",  //Thanks brother.
				"player/survivor/voice/" + custom_name + "/thanks16.wav"  //Thanks, Bill.
			],
			ReviveThanksLouisBiker = [
				"player/survivor/voice/" + custom_name + "/thanks13.wav",  //Thanks bro.
				"player/survivor/voice/" + custom_name + "/thanks18.wav",  //Thanks, Louis.
				"player/survivor/voice/" + custom_name + "/thanks19.wav",  //Thanks, Louis. I owe you one
				"player/survivor/voice/" + custom_name + "/totherescuethanks03.wav",  //Hey, thanks for not forgettin' me.
				"player/survivor/voice/" + custom_name + "/totherescuethanks05.wav"  //Hell, I guess that's one I owe YOU.
			],
			ReviveThanksZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/thanks17.wav",  //Thanks, Zoey.
				"player/survivor/voice/" + custom_name + "/totherescuethanks04.wav"  //I owe you one.
			],
			AutoYouAreWelcomeBiker = [
				"player/survivor/voice/" + custom_name + "/youarewelcome02.wav",  //I got your back.
				"player/survivor/voice/" + custom_name + "/youarewelcome04.wav",  //Hey, no problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome05.wav",  //No problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome06.wav",  //Sure.
				"player/survivor/voice/" + custom_name + "/youarewelcome07.wav",  //I told ya I'd take care of ya.
				"player/survivor/voice/" + custom_name + "/youarewelcome08.wav",  //No, thank YOU!
				"player/survivor/voice/" + custom_name + "/youarewelcome09.wav",  //Yer welcome.
				"player/survivor/voice/" + custom_name + "/youarewelcome10.wav",  //Yea, I�m pretty awesome.
				"player/survivor/voice/" + custom_name + "/youarewelcome11.wav",  //No problemo, pal.
				"player/survivor/voice/" + custom_name + "/youarewelcome12.wav",  //It's all good.
				"player/survivor/voice/" + custom_name + "/youarewelcome13.wav",  //Gotcha.
				"player/survivor/voice/" + custom_name + "/youarewelcome14.wav"  //Whatever, whenever, man.
			],
			BotAttentionBattleBiker = [
				"player/survivor/voice/" + custom_name + "/answerready03.wav",  //Yeah, let's do it.
				"player/survivor/voice/" + custom_name + "/askready01.wav",  //Ready for this?
				"player/survivor/voice/" + custom_name + "/askready06.wav",  //Everybody ready?
				"player/survivor/voice/" + custom_name + "/askready08.wav"  //We ready?
			],
			BotHurrahAlsoBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah11.wav",  //YEAH!
				"player/survivor/voice/" + custom_name + "/hurrah20.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive06.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive10.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/taunt02.wav"  //HELL YEAH!
			],
			BotPlayer_YourWelcomeBiker = [
				"player/survivor/voice/" + custom_name + "/youarewelcome02.wav",  //I got your back.
				"player/survivor/voice/" + custom_name + "/youarewelcome04.wav",  //Hey, no problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome05.wav",  //No problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome06.wav",  //Sure.
				"player/survivor/voice/" + custom_name + "/youarewelcome07.wav",  //I told ya I'd take care of ya.
				"player/survivor/voice/" + custom_name + "/youarewelcome08.wav",  //No, thank YOU!
				"player/survivor/voice/" + custom_name + "/youarewelcome09.wav",  //Yer welcome.
				"player/survivor/voice/" + custom_name + "/youarewelcome10.wav",  //Yea, I�m pretty awesome.
				"player/survivor/voice/" + custom_name + "/youarewelcome11.wav",  //No problemo, pal.
				"player/survivor/voice/" + custom_name + "/youarewelcome12.wav",  //It's all good.
				"player/survivor/voice/" + custom_name + "/youarewelcome13.wav",  //Gotcha.
				"player/survivor/voice/" + custom_name + "/youarewelcome14.wav"  //Whatever, whenever, man.
			],
			BotReassureComingBiker = [
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes02.wav",  //Okay.
				"player/survivor/voice/" + custom_name + "/yes03.wav",  //Yep.
				"player/survivor/voice/" + custom_name + "/yes04.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes05.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes06.wav"  //Roger that good buddy.
			],
			BotReassureNearbyBiker = [
				"player/survivor/voice/" + custom_name + "/imwithyou01.wav",  //Right behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou02.wav",  //I've got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou03.wav",  //I've got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou04.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou05.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou06.wav",  //Right behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou07.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou08.wav",  //I got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou09.wav",  //Behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou10.wav"  //I'm here!
			],
			BotYesReadyBiker = [
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes02.wav",  //Okay.
				"player/survivor/voice/" + custom_name + "/yes03.wav",  //Yep.
				"player/survivor/voice/" + custom_name + "/yes04.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes05.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes06.wav"  //Roger that good buddy.
			],
			crashHowitzerNagBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1gunnag02.wav"  //Somebody fire the goddamn cannon!
			],
			CrashWarnMegaMobBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2incoming01.wav"  //Here they come! Zoey, just pretend they're all helicopter pilots!
			],
			HowitzerBurnEnd00Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1gunend01.wav"  //Fire's out.
			],
			HowitzerBurnEnd01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1gunend02.wav"  //Everybody across the bridge!
			],
			CrashFinaleGenerator2OnSpkBiker = [
				"player/survivor/voice/" + custom_name + "/reactionpositive10.wav"  //Hell yeah!
			],
			CrashFinaleGenerator2SpeakBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen203.wav",  //Goddamn generator. Come ON, let's GO!
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen301.wav",  //Goddamn it. Piece a shit generator...
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen302.wav",  //I'm gettin' so sick of this goddamn generator...
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen303.wav"  //Soon as we get the truck moving, I am going to RUN YOU OVER. Stupid generator.
			],
			CrashFinaleGeneratorBreakSpkBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebreak101.wav",  //POWER'S OUT! We gotta kicktsart the generator!
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebreak102.wav"  //POWER'S OUT!
			],
			CrashFinaleGeneratorNagBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebreak103.wav",  //We gotta kickstart the generator!
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebreak202.wav"  //Someone needs to restart the generator!
			],
			CrashFinaleGeneratorSpeakBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen101.wav",  //Everybody hang on. This'll just take a second.
				"player/survivor/voice/" + custom_name + "/dlc2m2finalebuttonpressgen102.wav"  //Get in position, this'll only take a sec.
			],
			CrashFinaleGenUnPressSpeakBiker = [
				"player/survivor/voice/" + custom_name + "/swear17.wav"  //Dammit.
			],
			CrashFinaleTruckNagBiker = [
				"player/survivor/voice/" + custom_name + "/arrivetruck01.wav",  //Run to the truck! Go go go!
				"player/survivor/voice/" + custom_name + "/arrivetruck02.wav",  //To the truck!
				"player/survivor/voice/" + custom_name + "/arrivetruck03.wav"  //Get to the truck!
			],
			CrashFinaleTruckReadySpkBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finaletruckdown01.wav"  //Lift's down! Get in the goddamn truck!
			],
			CrashFinaleTruckResp01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2finalesetup02.wav"  //That lift won't come down till we power up the generator.
			],
			CrashYerKiddingBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2genericresponses03.wav"  //Yer kidding, right?
			],
			PlayerRemarkcrashcourse02_path14Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2directional04.wav",  //Let's get in that truck, step on the gas, and not stop till we see the army.
				"player/survivor/voice/" + custom_name + "/dlc2m2directional05.wav"  //I got an idea. Let's steal that truck.
			],
			CrashCourseR02Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2magazinerack01.wav"  //I hate latest issues.
			],
			CrashCourseR07Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2canadahate01.wav",  //Oh my god, I hate Canada so much.
				"player/survivor/voice/" + custom_name + "/dlc2riverside04.wav"  //Guess I've been hatin' Riverside all this time for nothin' then.
			],
			CrashCourseR08Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2riverside01.wav"  //Ahhhh, I doubt it.
			],
			CrashCourseR09Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2alley01.wav"  //Yeah ha ha ha. This the one you wanna die in?
			],
			CrashCourseR10Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2gastanks04.wav"  //Nice one.
			],
			CrashCourseR13Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2steam03.wav"  //Yeah... steam's alright, I guess.
			],
			PlayerRemarkcrashcourse01_path02Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2birdhate01.wav"  //I hate birds.
			],
			PlayerRemarkcrashcourse01_path05Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1directional02.wav"  //Truck's blocking the whole goddamn road...
			],
			PlayerRemarkcrashcourse01_path06Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1searching01.wav",  //Might be something in this warehouse.
				"player/survivor/voice/" + custom_name + "/dlc2m1searching02.wav"  //Probably some free crap in these buildings.
			],
			PlayerRemarkcrashcourse01_path07Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2hersch01.wav"  //I drove for Hersch once. Till some guy laughed at my little brown shorts. And I beat him to death.
			],
			PlayerRemarkcrashcourse01_path08Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1directional10.wav"  //Sayyy. An alley!
			],
			PlayerRemarkcrashcourse01_path11Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2armytruck01.wav",  //Huh. The army. Fat lotta help they've been to US.
				"player/survivor/voice/" + custom_name + "/dlc2armytruck02.wav"  //Huh. The army. They're about as much help as the cops.
			],
			PlayerRemarkcrashcourse01_path12Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2trainwreck01.wav"  //Whoa. Zoey must have shot the train conductor!
			],
			PlayerRemarkcrashcourse01_path13Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1goal02.wav"  //Let's follow that bridge. Might be a way outta this dump.
			],
			PlayerRemarkcrashcourse01_path14Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1directional07.wav"  //We can get back up over here!
			],
			PlayerRemarkcrashcourse01_path17Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1gunnag01.wav"  //We need to shoot that barricade down.
			],
			PlayerRemarkcrashcourse01_path18Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1gunnag01.wav"  //We need to shoot that barricade down.
			],
			PlayerRemarkcrashcourse01_path19Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2forlease02.wav"  //'For...lease.'
			],
			PlayerRemarkcrashcourse01_path20Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1goal03.wav",  //Riverside! Ain't that where the army's holed up?
				"player/survivor/voice/" + custom_name + "/dlc2riverside03.wav"  //Riverside? Aww, I hate Canada.
			],
			PlayerRemarkcrashcourse01_path21Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2waterworks01.wav"  //Waterworks. That where you pick up your crying supplies, Bill? Ah ha ha, I'm hilarious.
			],
			PlayerRemarkcrashcourse01_path24Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1directional09.wav"  //The safehouse is down there!
			],
			PlayerRemarkcrashcourse01_path25Biker = [
				"player/survivor/voice/" + custom_name + "/safespotahead08.wav"  //Safe house, let's go!
			],
			PlayerRemarkcrashcourse02_path05Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2container01.wav"  //Through this container!
			],
			PlayerRemarkcrashcourse02_path06Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2gastanks01.wav"  //Hey, Zoey, look! We're 'passing gas'... [chuckles]
			],
			PlayerRemarkcrashcourse02_path07Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2bulletinboard01.wav"  //This sign says 'I hate Mondays'! Man, tell me about it.
			],
			PlayerRemarkcrashcourse02_path08Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2steam02.wav"  //Hey, watch out for that goddamn steam pipe.
			],
			PlayerRemarkcrashcourse02_path10Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2directional03.wav"  //Over that truck!
			],
			PlayerRemarkcrashcourse02_path11Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2recycling01.wav",  //Thanks for saving the planet, recyclers. Mission accomplished.
				"player/survivor/voice/" + custom_name + "/dlc2recycling02.wav"  //Copper... aluminum... brass... those guys recycle everything!
			],
			PlayerRemarkcrashcourse02_path12Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2directional01.wav"  //Through the truck yard!
			],
			IntroCrashR02Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro18.wav"  //I guess I DID tell ya.
			],
			IntroCrashR04Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro08.wav"  //Alright. I'll give ya that.
			],
			IntroCrashR06Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro25.wav"  //Well, it's pretty complicated. I don't wanna bore you with a lotta... complex... fractions. But step one is we walk THAT way.
			],
			IntroCrashR08Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro21.wav"  //Whoah. Musta hit my head in the crash. I'm okay now. I hate helicopters.
			],
			IntroCrashR10Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro30.wav",  //Let's just hike the hell out of here.
				"player/survivor/voice/" + custom_name + "/dlc2intro31.wav",  //Looks like we're walking again.
				"player/survivor/voice/" + custom_name + "/dlc2m1goal01.wav"  //I already hate this place. Let's get outta here.
			],
			IntroCrashR12Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro16.wav"  //Yeah! Stupid helicopter.
			],
			IntroCrashR14Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro14.wav"  //Terrific. Looks like we're walkin, then.
			],
			IntroCrashR16Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro11.wav"  //That's what I thought...
			],
			IntroCrashR18Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro06.wav"  //'Cause it's money in the bank. Remind me to explain gambling to you sometime.
			],
			IntroCrashR20Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro02.wav"  //[pouty] Well, I guess NOW we'll never know, will we?
			],
			IntroCrashR21Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro22.wav"  //I hate walking.
			],
			IntroCrashR23Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro23.wav"  //And it turns out I was right about that.
			],
			IntroCrashR26Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro27.wav"  //[grumbling under breath]...Don't see what's wrong with vests...
			],
			IntroCrashR27Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro12.wav"  //Yeah, well--Next time someone offers us a ride, don't SHOOT him.
			],
			IntroCrashR29Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro04.wav"  //[confused] Wait, WHAT happened?
			],
			IntroCrashR31Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro03.wav"  //Or, in this case, a vampire.
			],
			PlayerCrashCourseIntroBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2intro01.wav",  //I still can't believe you shot the pilot!
				"player/survivor/voice/" + custom_name + "/dlc2intro05.wav",  //See? I TOLD ya. Helicopter crashed. We're not saved, we're all gonna die. Pay up.
				"player/survivor/voice/" + custom_name + "/dlc2intro07.wav",  //Hey. Sunshine Beams. We just CRASHED. You got somethin' positive to say about that?
				"player/survivor/voice/" + custom_name + "/dlc2intro07.wav",  //Hey. Sunshine Beams. We just CRASHED. You got somethin' positive to say about that?
				"player/survivor/voice/" + custom_name + "/dlc2intro10.wav",  //Is that how helicopters are supposed to land?
				"player/survivor/voice/" + custom_name + "/dlc2intro13.wav",  //Hey Louis. That fancy college of yours teach ya how to fix a helicopter?
				"player/survivor/voice/" + custom_name + "/dlc2intro15.wav",  //Goddamnit, where'd they buy this helicopter? At the ... uh... um... hold on...
				"player/survivor/voice/" + custom_name + "/dlc2intro17.wav",  //I ever tell you how I feel about helicopters?
				"player/survivor/voice/" + custom_name + "/dlc2intro19.wav",  //Guys. Everyone. I wanna say something: I. hate. helicopters.
				"player/survivor/voice/" + custom_name + "/dlc2intro20.wav",  //[sincere] Wow! I love helicopters! I love 'em so much.
				"player/survivor/voice/" + custom_name + "/dlc2intro24.wav",  //Alright, nobody panic. I have a plan.
				"player/survivor/voice/" + custom_name + "/dlc2intro26.wav",  //You still wearin' that tie, Louis? What, you got a meeting? Bah ha ha.
				"player/survivor/voice/" + custom_name + "/blank.wav",  //
				"player/survivor/voice/" + custom_name + "/blank.wav",  //
				"player/survivor/voice/" + custom_name + "/blank.wav",  //
				"player/survivor/voice/" + custom_name + "/blank.wav",  //
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			CrashCourseI01Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0111.wav"  //It's worth a try.
			],
			PlayerRemarkcrashcourse02_introBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m2saferoom01.wav"  //Looks like we should check out that truck depot.
			],
			PlayerRemarkcrashcourse02_startaBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			IntroFarm4Biker = [
				"player/survivor/voice/" + custom_name + "/answerready03.wav"  //Yeah, let's do it.
			],
			SurvivorBoomerBlunderBiker = [
				"player/survivor/voice/" + custom_name + "/sorry02.wav",  //Sorry about that.
				"player/survivor/voice/" + custom_name + "/sorry10.wav",  //Sorry, man, shit happens.
				"player/survivor/voice/" + custom_name + "/sorry14.wav"  //Uh, yeah, sorry.
			],
			SurvivorFinaleTriggeredBoatBiker = [
				"player/survivor/voice/" + custom_name + "/radiousedboat01.wav"  //We got a boat coming!
			],
			SurvivorFinaleTriggeredFarmBiker = [
				"player/survivor/voice/" + custom_name + "/radiousedgeneric02.wav",  //Help'll be here soon! You ladies ready for some fun until they show up?
				"player/survivor/voice/" + custom_name + "/radiousedtruck01.wav"  //A truck should be here soon - we just gotta hold out until it shows.
			],
			SurvivorFinaleTriggeredRooftopBiker = [
				"player/survivor/voice/" + custom_name + "/radiousedchopper01.wav",  //Chopper's on its way!
				"player/survivor/voice/" + custom_name + "/radiousedgeneric03.wav",  //We got some help comin'. Let's get ready!
				"player/survivor/voice/" + custom_name + "/radiousedgeneric05.wav",  //Help's on its way. Let's have some fun while we wait.
				"player/survivor/voice/" + custom_name + "/radiousedgeneric08.wav"  //Help is on the way!
			],
			SurvivorFinalVehicleBoatBiker = [
				"player/survivor/voice/" + custom_name + "/arriveboat01.wav",  //Get to the boat!
				"player/survivor/voice/" + custom_name + "/arriveboat02.wav",  //Everyone to the boat!
				"player/survivor/voice/" + custom_name + "/arriveboat03.wav"  //Get your asses on that boat!
			],
			SurvivorFinalVehicleFarmBiker = [
				"player/survivor/voice/" + custom_name + "/arrivetruck01.wav",  //Run to the truck! Go go go!
				"player/survivor/voice/" + custom_name + "/arrivetruck02.wav",  //To the truck!
				"player/survivor/voice/" + custom_name + "/arrivetruck03.wav"  //Get to the truck!
			],
			SurvivorFinalVehicleFarmSpottedBiker = [
				"player/survivor/voice/" + custom_name + "/arrivetruckinitial01.wav",  //C'mon, that's the last truck outta this shithole. LET'S GO!
				"player/survivor/voice/" + custom_name + "/arrivetruckinitial02.wav"  //The truck's here! Let's go!
			],
			SurvivorFinalVehicleRooftopBiker = [
				"player/survivor/voice/" + custom_name + "/arrivechopper01.wav",  //Everybody to the chopper!
				"player/survivor/voice/" + custom_name + "/arrivechopper02.wav"  //Get to the chopper!
			],
			SurvivorFinalVehicleRunwayBiker = [
				"player/survivor/voice/" + custom_name + "/arriveplane01.wav",  //Get to the plane. Let's go!
				"player/survivor/voice/" + custom_name + "/arriveplane01.wav",  //Get to the plane. Let's go!
				"player/survivor/voice/" + custom_name + "/arriveplane02.wav",  //Get to the plane!
				"player/survivor/voice/" + custom_name + "/arriveplane02.wav",  //Get to the plane!
				"player/survivor/voice/" + custom_name + "/arriveplaneinitial01.wav"  //This is the last flight out of here! Let's go
			],
			SurvivorFinalVehicleSpottedBoatBiker = [
				"player/survivor/voice/" + custom_name + "/arriveboatinitial01.wav",  //Our boat's here, all aboard!
				"player/survivor/voice/" + custom_name + "/arriveboatinitial02.wav"  //Our boat's here! Let's go!
			],
			SurvivorFinalVehicleSpottedRooftopBiker = [
				"player/survivor/voice/" + custom_name + "/arrivechopperinitial01.wav",  //The chopper's here! Let's go!
				"player/survivor/voice/" + custom_name + "/arrivechopperinitial02.wav"  //The chopper's here! About time, too...
			],
			SurvivorFinalVehicleSpottedRunwayBiker = [
				"player/survivor/voice/" + custom_name + "/arriveplane01.wav",  //Get to the plane. Let's go!
				"player/survivor/voice/" + custom_name + "/arriveplaneinitial01.wav"  //This is the last flight out of here! Let's go
			],
			ResponseLoudDispleasureSwearBiker = [
				"player/survivor/voice/" + custom_name + "/swear01.wav",  //Goddammit.
				"player/survivor/voice/" + custom_name + "/swear02.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/swear03.wav",  //Ah shit.
				"player/survivor/voice/" + custom_name + "/swear04.wav",  //Ah hell.
				"player/survivor/voice/" + custom_name + "/swear08.wav",  //Ah bullshit.
				"player/survivor/voice/" + custom_name + "/swear09.wav",  //Dammit.
				"player/survivor/voice/" + custom_name + "/swear10.wav"  //Bullshit.
			],
			ResponseSoftDispleasureSwearBiker = [
				"player/survivor/voice/" + custom_name + "/negativenoise06.wav",  //[Improv non-verbal displeasure & frustration sounds]
				"player/survivor/voice/" + custom_name + "/reactionapprehensive03.wav",  //I don't like ths one damn bit.
				"player/survivor/voice/" + custom_name + "/reactionnegative05.wav",  //Shit
				"player/survivor/voice/" + custom_name + "/reactionnegative09.wav",  //Ahhhhh.
				"player/survivor/voice/" + custom_name + "/swear12.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/swear14.wav",  //Ah hell.
				"player/survivor/voice/" + custom_name + "/swear15.wav",  //Son of a bitch.
				"player/survivor/voice/" + custom_name + "/swear16.wav",  //Ah bullshit.
				"player/survivor/voice/" + custom_name + "/swear17.wav",  //Dammit.
				"player/survivor/voice/" + custom_name + "/swear19.wav"  //Ah bullshit.
			],
			SurvivorAskBillForHealthBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific05.wav",  //Bill, could I borrow your med kit? I just wanna look at it.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific07.wav",  //Bill, you got a med kit I could have?
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific11.wav"  //Old man, you forget you have a health pack, or you  saving that for me?
			],
			SurvivorAskForHealthBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			SurvivorAskLouisForHealthBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific06.wav",  //Louis, you got a med kit I could have?
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific08.wav",  //Louis, don't bogard that med kit, man. I'm hurt.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific10.wav",  //Louis, while I hate to break that ensemble and all, can I have your health pack?
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific12.wav"  //Louis, gimme your health pack.
			],
			SurvivorAskZoeyForHealthBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific04.wav",  //Zoey, you got a health kit for me?
				"player/survivor/voice/" + custom_name + "/playersuggesthealthspecific09.wav"  //Hey little lady, if you ain't gonna use that health kit I could use it.
			],
			SurvivorFrancisHealthHereBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			SurvivorSpottedAmmoBiker = [
				"player/survivor/voice/" + custom_name + "/spotammo01.wav"  //Ammo here!
			],
			SurvivorSpottedBillCloseBiker = [
				"player/survivor/voice/" + custom_name + "/namebill03.wav"  //Bill (quiet)
			],
			SurvivorSpottedBillClose2Biker = [
				"player/survivor/voice/" + custom_name + "/namebill03.wav"  //Bill (quiet)
			],
			SurvivorSpottedBillFarBiker = [
				"player/survivor/voice/" + custom_name + "/namebill01.wav"  //Bill! (loud)
			],
			SurvivorSpottedGrenadeBiker = [
				"player/survivor/voice/" + custom_name + "/spotgrenades03.wav",  //There's a pipebomb here.
				"player/survivor/voice/" + custom_name + "/spotgrenades05.wav",  //There's a pipe bomb here.
				"player/survivor/voice/" + custom_name + "/spotgrenades06.wav"  //Pipe bombs!
			],
			SurvivorSpottedGrenadeAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotgrenades03.wav",  //There's a pipebomb here.
				"player/survivor/voice/" + custom_name + "/spotgrenades05.wav",  //There's a pipe bomb here.
				"player/survivor/voice/" + custom_name + "/spotgrenades06.wav"  //Pipe bombs!
			],
			SurvivorSpottedHealthBiker = [
				"player/survivor/voice/" + custom_name + "/spotfirstaid01.wav",  //First Aid Kit here!
				"player/survivor/voice/" + custom_name + "/spotfirstaid02.wav",  //First Aid kit here!
				"player/survivor/voice/" + custom_name + "/spotfirstaid03.wav",  //First Aid here!
				"player/survivor/voice/" + custom_name + "/spotfirstaid04.wav",  //First aid kits over here.
				"player/survivor/voice/" + custom_name + "/spotfirstaid05.wav",  //There's a first aid kit here.
				"player/survivor/voice/" + custom_name + "/spotfirstaid06.wav",  //First aid kits over here.
				"player/survivor/voice/" + custom_name + "/spotfirstaid07.wav"  //First aid kit over here.
			],
			SurvivorSpottedHealthAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotfirstaid01.wav",  //First Aid Kit here!
				"player/survivor/voice/" + custom_name + "/spotfirstaid02.wav",  //First Aid kit here!
				"player/survivor/voice/" + custom_name + "/spotfirstaid03.wav",  //First Aid here!
				"player/survivor/voice/" + custom_name + "/spotfirstaid04.wav",  //First aid kits over here.
				"player/survivor/voice/" + custom_name + "/spotfirstaid05.wav",  //There's a first aid kit here.
				"player/survivor/voice/" + custom_name + "/spotfirstaid06.wav",  //First aid kits over here.
				"player/survivor/voice/" + custom_name + "/spotfirstaid07.wav"  //First aid kit over here.
			],
			SurvivorSpottedLouisCloseBiker = [
				"player/survivor/voice/" + custom_name + "/namelouis03.wav"  //Louis (quiet)
			],
			SurvivorSpottedLouisClose2Biker = [
				"player/survivor/voice/" + custom_name + "/namelouis03.wav"  //Louis (quiet)
			],
			SurvivorSpottedLouisFarBiker = [
				"player/survivor/voice/" + custom_name + "/namelouis01.wav",  //Louis! (loud)
				"player/survivor/voice/" + custom_name + "/namelouis02.wav"  //Louissss! (loud)
			],
			SurvivorSpottedMolotovBiker = [
				"player/survivor/voice/" + custom_name + "/spotgrenades02.wav",  //Molotov's over here.
				"player/survivor/voice/" + custom_name + "/spotgrenades04.wav",  //Molotov's over here.
				"player/survivor/voice/" + custom_name + "/spotgrenades07.wav"  //Molotovs!
			],
			SurvivorSpottedMolotovAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotgrenades02.wav",  //Molotov's over here.
				"player/survivor/voice/" + custom_name + "/spotgrenades04.wav",  //Molotov's over here.
				"player/survivor/voice/" + custom_name + "/spotgrenades07.wav"  //Molotovs!
			],
			SurvivorSpottedPillsBiker = [
				"player/survivor/voice/" + custom_name + "/spotpills01.wav"  //Pills here!
			],
			SurvivorSpottedPillsAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotpills01.wav"  //Pills here!
			],
			SurvivorSpottedWorldCloseBiker = [
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere02.wav",  //Look at this.
				"player/survivor/voice/" + custom_name + "/lookhere03.wav",  //Look at this.
				"player/survivor/voice/" + custom_name + "/lookhere04.wav",  //Well, hell, look at this.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere06.wav",  //Somebody better check this out.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedZoeyCloseBiker = [
				"player/survivor/voice/" + custom_name + "/namezoey03.wav"  //Zoey (quite)
			],
			SurvivorSpottedZoeyClose2Biker = [
				"player/survivor/voice/" + custom_name + "/namezoey03.wav"  //Zoey (quite)
			],
			SurvivorSpottedZoeyFarBiker = [
				"player/survivor/voice/" + custom_name + "/namezoey01.wav",  //Zoey! (loud)
				"player/survivor/voice/" + custom_name + "/namezoey02.wav"  //Zoeyyyyy! (loud)
			],
			SurvivorMovingToBattleStationBiker = [
				"player/survivor/voice/" + custom_name + "/answerready01.wav",  //Ready.
				"player/survivor/voice/" + custom_name + "/answerready03.wav",  //Yeah, let's do it.
				"player/survivor/voice/" + custom_name + "/genericresponses09.wav",  //Allright, then, let's do it.
				"player/survivor/voice/" + custom_name + "/genericresponses13.wav"  //I say we just do it.
			],
			SurvivorSpottedBoomerBiker = [
				"player/survivor/voice/" + custom_name + "/warnboomer01.wav",  //BOOMER!
				"player/survivor/voice/" + custom_name + "/warnboomer02.wav",  //BOOMER!
				"player/survivor/voice/" + custom_name + "/warnboomer03.wav"  //BOOMER!
			],
			SurvivorSpottedHunterBiker = [
				"player/survivor/voice/" + custom_name + "/warnhunter01.wav",  //HUNTER!
				"player/survivor/voice/" + custom_name + "/warnhunter02.wav",  //HUNTER!
				"player/survivor/voice/" + custom_name + "/warnhunter03.wav"  //HUNTER!
			],
			SurvivorSpottedInfectedBiker = [
				"player/survivor/voice/" + custom_name + "/incoming01.wav",  //Here they come!
				"player/survivor/voice/" + custom_name + "/incoming02.wav",  //Holy shit, here they come!
				"player/survivor/voice/" + custom_name + "/incoming03.wav",  //They're coming!
				"player/survivor/voice/" + custom_name + "/incoming04.wav",  //Incoming!
				"player/survivor/voice/" + custom_name + "/incoming05.wav",  //Get ready ladies!
				"player/survivor/voice/" + custom_name + "/incoming06.wav",  //INCOMING!
				"player/survivor/voice/" + custom_name + "/incoming07.wav",  //This is gonna be good.
				"player/survivor/voice/" + custom_name + "/incoming08.wav"  //Shit, Get ready!
			],
			SurvivorSpottedSmokerBiker = [
				"player/survivor/voice/" + custom_name + "/warnsmoker01.wav",  //SMOKER!
				"player/survivor/voice/" + custom_name + "/warnsmoker02.wav",  //SMOKER!
				"player/survivor/voice/" + custom_name + "/warnsmoker03.wav"  //SMOKER!
			],
			SurvivorSpottedTankBiker = [
				"player/survivor/voice/" + custom_name + "/warntank01.wav",  //TANK!
				"player/survivor/voice/" + custom_name + "/warntank02.wav",  //TANK!
				"player/survivor/voice/" + custom_name + "/warntank03.wav"  //TANK!
			],
			SurvivorSpottedWitchBiker = [
				"player/survivor/voice/" + custom_name + "/warnwitch01.wav",  //WITCH!
				"player/survivor/voice/" + custom_name + "/warnwitch02.wav",  //WITCH!
				"player/survivor/voice/" + custom_name + "/warnwitch03.wav"  //WITCH!
			],
			EmphaticArriveRunBiker = [
				"player/survivor/voice/" + custom_name + "/emphaticrun01.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun02.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun03.wav",  //HOLY SHIT! Run!
				"player/survivor/voice/" + custom_name + "/emphaticrun04.wav",  //LET'S BEAT IT!
				"player/survivor/voice/" + custom_name + "/emphaticrun05.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun06.wav",  //SHIT! Run!
				"player/survivor/voice/" + custom_name + "/emphaticrun09.wav",  //Get the lead out!
				"player/survivor/voice/" + custom_name + "/emphaticrun10.wav"  //Haul Ass!
			],
			PlayerAlertGiveItemBiker = [
				"player/survivor/voice/" + custom_name + "/alertgiveitem01.wav",  //Here, take this.
				"player/survivor/voice/" + custom_name + "/alertgiveitem02.wav",  //I got something for you.
				"player/survivor/voice/" + custom_name + "/alertgiveitem03.wav",  //Take this.
				"player/survivor/voice/" + custom_name + "/alertgiveitem04.wav",  //Merry Christmas.
				"player/survivor/voice/" + custom_name + "/alertgiveitem05.wav",  //Share the wealth, brother.
				"player/survivor/voice/" + custom_name + "/alertgiveitem06.wav",  //Hold up I got something for you.
				"player/survivor/voice/" + custom_name + "/alertgiveitem07.wav"  //Take it. Hell, I don't need it.
			],
			PlayerFriendlyFireBiker = [
				"player/survivor/voice/" + custom_name + "/friendlyfire01.wav",  //That hurt.
				"player/survivor/voice/" + custom_name + "/friendlyfire02.wav",  //Dammit! Will you knock it off!
				"player/survivor/voice/" + custom_name + "/friendlyfire03.wav",  //Will you knock it off!
				"player/survivor/voice/" + custom_name + "/friendlyfire04.wav",  //Do I look like a target?
				"player/survivor/voice/" + custom_name + "/friendlyfire05.wav",  //You know I would appreciate it, IF YOU'D STOP SHOOTING ME.
				"player/survivor/voice/" + custom_name + "/friendlyfire06.wav",  //Watch where the hell you're shooting.
				"player/survivor/voice/" + custom_name + "/friendlyfire07.wav",  //Watch where you're shooting!
				"player/survivor/voice/" + custom_name + "/friendlyfire08.wav",  //Stop. Shooting. Me.
				"player/survivor/voice/" + custom_name + "/friendlyfire09.wav",  //Hey! Stop. Shooting. Me.
				"player/survivor/voice/" + custom_name + "/friendlyfire10.wav",  //Watch where you're shooting!
				"player/survivor/voice/" + custom_name + "/friendlyfire11.wav",  //Don't shoot me!
				"player/survivor/voice/" + custom_name + "/friendlyfire12.wav",  //Watch where you point that thing
				"player/survivor/voice/" + custom_name + "/friendlyfire13.wav",  //Dammit! Watch where you're shooting!
				"player/survivor/voice/" + custom_name + "/friendlyfire14.wav",  //Don't shoot me!
				"player/survivor/voice/" + custom_name + "/friendlyfire15.wav",  //Monsters all over the damn place, and you gotta shoot me.
				"player/survivor/voice/" + custom_name + "/friendlyfire16.wav",  //Quit freaking shooting me!
				"player/survivor/voice/" + custom_name + "/friendlyfire18.wav",  //Shoot me again, I'm gonna kick your ass.
				"player/survivor/voice/" + custom_name + "/friendlyfire19.wav"  //Do that again, and you're gonna be firing that thing outta your ass.
			],
			PlayerFriendlyFire2Biker = [
				"player/survivor/voice/" + custom_name + "/teamkillaccident01.wav",  //Be careful!
				"player/survivor/voice/" + custom_name + "/teamkillaccident02.wav",  //That was not cool.
				"player/survivor/voice/" + custom_name + "/teamkillaccident03.wav",  //That was not cool.
				"player/survivor/voice/" + custom_name + "/teamkillaccident04.wav",  //Pull yer head outta yer ass.
				"player/survivor/voice/" + custom_name + "/teamkillaccident05.wav",  //Careful!
				"player/survivor/voice/" + custom_name + "/teamkillaccident06.wav"  //Hey! Careful!
			],
			PlayerFriendlyFireFromBillBiker = [
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirebill01.wav",  //AH! You havin' some kinda flashback Old Man?
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirebill02.wav",  //God DAMMIT, Bill.
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirebill03.wav",  //Bill, quit shootin' me.
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirebill04.wav",  //Watch yer fire, Old Man.
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirebill05.wav"  //Nice Shot, Bill.That was my ass.
			],
			PlayerFriendlyFireFromLouisBiker = [
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirelouis03.wav",  //OW! Louis!
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirelouis04.wav",  //GODDAMN IT LOUIS! Stop shootin' me.
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirelouis06.wav",  //LOU-IS  STOP SHOOTING ME (Snarled)
				"player/survivor/voice/" + custom_name + "/friendlyfire01.wav",  //That hurt.
				"player/survivor/voice/" + custom_name + "/friendlyfire03.wav",  //Will you knock it off!
				"player/survivor/voice/" + custom_name + "/namelouis01.wav",  //Louis! (loud)
				"player/survivor/voice/" + custom_name + "/namelouis02.wav",  //Louissss! (loud)
				"player/survivor/voice/" + custom_name + "/swear02.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/swear12.wav",  //Shit.
				"player/survivor/voice/" + custom_name + "/swear18.wav"  //Bullshit.
			],
			PlayerFriendlyFireFromZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirezoey02.wav",  //Knock it off, Zoey.
				"player/survivor/voice/" + custom_name + "/biker_friendlyfirezoey05.wav"  //Zoey! Stop shooting me.
			],
			PlayerFriendlyFireNoBulletBiker = [
				"player/survivor/voice/" + custom_name + "/friendlyfire01.wav",  //That hurt.
				"player/survivor/voice/" + custom_name + "/friendlyfire02.wav",  //Dammit! Will you knock it off!
				"player/survivor/voice/" + custom_name + "/friendlyfire03.wav"  //Will you knock it off!
			],
			PlayerToTheRescueBiker = [
				"player/survivor/voice/" + custom_name + "/totherescue01.wav",  //Hang on, I'm on my way!
				"player/survivor/voice/" + custom_name + "/totherescue02.wav",  //I'm coming!
				"player/survivor/voice/" + custom_name + "/totherescue03.wav",  //Hang in there buddy, I'm comin.
				"player/survivor/voice/" + custom_name + "/totherescue04.wav",  //I'm coming for ya!
				"player/survivor/voice/" + custom_name + "/totherescue05.wav",  //Hang on I'm coming!
				"player/survivor/voice/" + custom_name + "/totherescue06.wav",  //Hang in there, I'm comin!
				"player/survivor/voice/" + custom_name + "/totherescue07.wav",  //Hang on, hang on, I'm comin!
				"player/survivor/voice/" + custom_name + "/totherescue08.wav"  //I heard ya, I'm comin'!
			],
			SurvivorTauntResponseBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah01.wav",  //All right.
				"player/survivor/voice/" + custom_name + "/hurrah02.wav",  //Aw riiiight.
				"player/survivor/voice/" + custom_name + "/hurrah03.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/hurrah04.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/hurrah16.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/hurrah17.wav",  //Aw riiiight.
				"player/survivor/voice/" + custom_name + "/hurrah18.wav",  //Aw riiiight.
				"player/survivor/voice/" + custom_name + "/hurrah19.wav",  //Goddamn right!
				"player/survivor/voice/" + custom_name + "/hurrah20.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/taunt01.wav",  //That's right!
				"player/survivor/voice/" + custom_name + "/taunt02.wav",  //HELL YEAH!
				"player/survivor/voice/" + custom_name + "/taunt03.wav",  //OH YEAH!
				"player/survivor/voice/" + custom_name + "/taunt04.wav",  //Oh yeah!
				"player/survivor/voice/" + custom_name + "/taunt05.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt06.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt07.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt08.wav",  //YEAH! YEAH!
				"player/survivor/voice/" + custom_name + "/taunt09.wav",  //Damn straight!
				"player/survivor/voice/" + custom_name + "/taunt10.wav"  //HELL YEAH!
			],
			EmphaticArriveRunFarm2Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0523.wav",  //I forgive you, Army. I love you guys!
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0528.wav"  //I LOVE the goddamn army!
			],
			PlayerChokeResponseBiker = [
				"player/survivor/voice/" + custom_name + "/choke01.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke02.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke03.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke04.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke05.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke06.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke07.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke08.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/choke09.wav",  //[Choking]
				"player/survivor/voice/" + custom_name + "/help01.wav",  //Help!
				"player/survivor/voice/" + custom_name + "/help05.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help06.wav",  //Help!
				"player/survivor/voice/" + custom_name + "/help07.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help12.wav"  //Help me!
			],
			PlayerTonguePullStartResponseBiker = [
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker01a.wav",  //no, No, NO, NOOOOOOO!!!!!!!!!
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker01a.wav",  //no, No, NO, NOOOOOOO!!!!!!!!!
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker02a.wav",  //no, No, NO, NOOOOOOO!!!!!!!!!
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker02b.wav",  //no, No, NO, NOOOOOOO!!!!!!!!!
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker03.wav"  //no, No, NO, NO!!!
			],
			SurvivorCriticalHurtBiker = [
				"player/survivor/voice/" + custom_name + "/hurtcritical01.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical02.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical03.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical04.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical05.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical06.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical07.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical08.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical09.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical10.wav",  //[Pain noise - loud major pain]
				"player/survivor/voice/" + custom_name + "/hurtcritical11.wav"  //[Pain noise - loud major pain]
			],
			SurvivorIncapacitatedHurtBiker = [
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury01.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury02.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury03.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury04.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury05.wav",  //[Ahhhh - terrified yell]
				"player/survivor/voice/" + custom_name + "/incapacitatedinjury06.wav"  //[Ahhhh - terrified yell]
			],
			SurvivorMajorHurtBiker = [
				"player/survivor/voice/" + custom_name + "/hurtmajor01.wav",  //[Pain noise - ahh]
				"player/survivor/voice/" + custom_name + "/hurtmajor02.wav",  //[Pain noise - huh]
				"player/survivor/voice/" + custom_name + "/hurtmajor03.wav",  //[Pain noise - oy]
				"player/survivor/voice/" + custom_name + "/hurtmajor04.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor05.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor06.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor07.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor08.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor09.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor10.wav",  //[Pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtmajor11.wav"  //[Pain noise - ugh]
			],
			SurvivorMinorHurtBiker = [
				"player/survivor/voice/" + custom_name + "/hurtminor01.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor02.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor03.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor04.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor05.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor06.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor07.wav",  //[Pain noise - short minor pain]
				"player/survivor/voice/" + custom_name + "/hurtminor08.wav"  //[Pain noise - short minor pain]
			],
			SurvivorReloadingBiker = [
				"player/survivor/voice/" + custom_name + "/reloading01.wav",  //Reloading!
				"player/survivor/voice/" + custom_name + "/reloading02.wav",  //Reloading!
				"player/survivor/voice/" + custom_name + "/reloading03.wav"  //Reloading!
			],
			PlayerHelpIncappedBiker = [
				"player/survivor/voice/" + custom_name + "/help01.wav",  //Help!
				"player/survivor/voice/" + custom_name + "/help02.wav",  //I need some help over here.
				"player/survivor/voice/" + custom_name + "/help03.wav",  //I'm in trouble!
				"player/survivor/voice/" + custom_name + "/help05.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help06.wav",  //Help!
				"player/survivor/voice/" + custom_name + "/help07.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help08.wav",  //I'm in some trouble!
				"player/survivor/voice/" + custom_name + "/help12.wav"  //Help me!
			],
			HelpResponseBillBiker = [
				"player/survivor/voice/" + custom_name + "/insidesaferoom02.wav",  //Are we just gonna leave someone behind?
				"player/survivor/voice/" + custom_name + "/insidesaferoom06.wav",  //That old man wouldn't leave one of US out there.
				"player/survivor/voice/" + custom_name + "/insidesaferoom10.wav",  //Ahh shit, I just can't sit here and wait for them to die.
				"player/survivor/voice/" + custom_name + "/insidesaferoom19.wav"  //We just leavin' Bill out there?
			],
			HelpResponseLouisBiker = [
				"player/survivor/voice/" + custom_name + "/insidesaferoom02.wav",  //Are we just gonna leave someone behind?
				"player/survivor/voice/" + custom_name + "/insidesaferoom10.wav",  //Ahh shit, I just can't sit here and wait for them to die.
				"player/survivor/voice/" + custom_name + "/insidesaferoom18.wav",  //We should maybe go get Louis. I'm just sayin'...
				"player/survivor/voice/" + custom_name + "/insidesaferoom21.wav"  //We just leavin' Louis out there?
			],
			HelpResponseLouisBBiker = [
				"player/survivor/voice/" + custom_name + "/insidesaferoom21.wav"  //We just leavin' Louis out there?
			],
			HelpResponseLouisB2Biker = [
				"player/survivor/voice/" + custom_name + "/insidesaferoom22.wav"  //I mean, I'm cool with that if everyone else is.
			],
			HelpResponseZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/insidesaferoom02.wav",  //Are we just gonna leave someone behind?
				"player/survivor/voice/" + custom_name + "/insidesaferoom05.wav"  //We can't leave Zoey out there.
			],
			PlayeGoingToDie3VampirebBiker = [
				"player/survivor/voice/" + custom_name + "/generic33.wav"  //Call these freaks whatever you want.
			],
			PlayerAirport02CraneStartedBiker = [
				"player/survivor/voice/" + custom_name + "/genericresponses11.wav",  //Ah shit, here we go again.
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerAirport02DumpsterDownBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0209.wav",  //It's down! Let's move!
				"player/survivor/voice/" + custom_name + "/worldairport0210.wav",  //Our dumpster has arrived! Let's go!
				"player/survivor/voice/" + custom_name + "/worldairport0231.wav"  //Our dumpster has arrived! Let's go, girls!
			],
			Playerairport03_barrieraBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0302.wav",  //It figures the only thing in the damn city not on fire is the one thing we need burned down.
				"player/survivor/voice/" + custom_name + "/worldairport0302.wav"  //It figures the only thing in the damn city not on fire is the one thing we need burned down.
			],
			PlayerAirport03FirePathClearaBiker = [
				"player/survivor/voice/" + custom_name + "/arrivegeneric01.wav"  //Lets get out of here. Go go go!
			],
			PlayerAirport03FirePathClearXBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0309.wav",  //The path is clear!
				"player/survivor/voice/" + custom_name + "/worldairport0310.wav"  //We burned a path!
			],
			PlayerAirport03FireStartedXBiker = [
				"player/survivor/voice/" + custom_name + "/swearcoupdegrace01.wav",  //Burn you son of a bitch.
				"player/survivor/voice/" + custom_name + "/worldairport0322.wav",  //Heh heh, hot shot.
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			Playerairport04_05aBiker = [
				"player/survivor/voice/" + custom_name + "/laughter07.wav",  //<Short laugh>
				"player/survivor/voice/" + custom_name + "/reactionpositive01.wav"  //[laugh]
			],
			Playerairport04_08aBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0410.wav"  //Bill? I was the one that said that.
			],
			Playerairport04_08bBiker = [
				"player/survivor/voice/" + custom_name + "/genericresponses08.wav",  //That sounds about right.
				"player/survivor/voice/" + custom_name + "/violenceawe05.wav"  //Holy shit...
			],
			Playerairport04_08cBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0419.wav",  //We need to get out to the runway.
				"player/survivor/voice/" + custom_name + "/worldairport0420.wav"  //We gotta get to the runway.
			],
			Playerairport04_vanaBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0425.wav"  //I hate vans.
			],
			PlayerRemarkairport02_creshendo01aBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerRemarkairport02_creshendo01bBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0205.wav",  //The crane'll lower that dumpster, then we can jump across.
				"player/survivor/voice/" + custom_name + "/worldairport0206.wav",  //We can get across on that dumpster.
				"player/survivor/voice/" + custom_name + "/worldairport0207.wav",  //Somebody wanna lower that dumpster so we can get across?
				"player/survivor/voice/" + custom_name + "/worldairport0208.wav",  //Somebody start the crane.
				"player/survivor/voice/" + custom_name + "/worldairport0229.wav"  //Don't everybody start the crane at once.
			],
			PlayerRemarkairport02_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0201.wav",  //We can get back to the rooftops.
				"player/survivor/voice/" + custom_name + "/worldairport0202.wav",  //Let's head back up.
				"player/survivor/voice/" + custom_name + "/worldairport0203.wav"  //We oughtta get back on the rooftops.
			],
			PlayerRemarkairport02_path02Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0511.wav",  //I hate lawyers
				"player/survivor/voice/" + custom_name + "/worldsmalltown0512.wav"  //I hate boat lawyers. When are they gonna get done practicing law?
			],
			PlayerRemarkairport02_path03Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0320.wav"  //Hey suit, this look familiar? tch tck?
			],
			PlayerRemarkairport02_path04Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0215.wav",  //Down the stairs!
				"player/survivor/voice/" + custom_name + "/worldairport0216.wav",  //Let's head down the stairs.
				"player/survivor/voice/" + custom_name + "/worldairport0224.wav",  //Looks like we take the stairs.
				"player/survivor/voice/" + custom_name + "/worldairport0224.wav"  //Looks like we take the stairs.
			],
			PlayerRemarkairport02_path05Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0223.wav"  //Safe house in that storage place!
			],
			PlayerRemarkairport02_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0221.wav",  //We're getting close the airport!
				"player/survivor/voice/" + custom_name + "/worldairport0222.wav"  //We're almost to the airport!
			],
			PlayerRemarkairport03_01Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0311.wav",  //This better not be the plane we saw.
				"player/survivor/voice/" + custom_name + "/worldairport0315.wav",  //What idiot bombed the airport?
				"player/survivor/voice/" + custom_name + "/worldairport0317.wav"  //Ah shit, that half a plane ain't real encouraging.
			],
			PlayerRemarkairport03_02aBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0303.wav",  //THE AIRPORT!
				"player/survivor/voice/" + custom_name + "/worldairport0304.wav",  //HELL YES, IT'S THE AIRPORT!
				"player/survivor/voice/" + custom_name + "/worldairport0306.wav",  //What the hell happened to the airport?
				"player/survivor/voice/" + custom_name + "/worldairport0319.wav",  //THE AIRPORT! Told ya I'd get us here.
				"player/survivor/voice/" + custom_name + "/worldairport0321.wav"  //What friggin' idiot bombed the airport?
			],
			PlayerRemarkairport03_02bBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0303.wav",  //THE AIRPORT!
				"player/survivor/voice/" + custom_name + "/worldairport0304.wav",  //HELL YES, IT'S THE AIRPORT!
				"player/survivor/voice/" + custom_name + "/worldairport0306.wav",  //What the hell happened to the airport?
				"player/survivor/voice/" + custom_name + "/worldairport0319.wav",  //THE AIRPORT! Told ya I'd get us here.
				"player/survivor/voice/" + custom_name + "/worldairport0321.wav"  //What friggin' idiot bombed the airport?
			],
			PlayerRemarkairport03_03aBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0308.wav"  //The doors are all blocked!
			],
			PlayerRemarkairport03_03bBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0308.wav"  //The doors are all blocked!
			],
			PlayerRemarkairport03_03cBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0308.wav"  //The doors are all blocked!
			],
			PlayerRemarkairport03_04Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0312.wav",  //We can get inside over the skybridge.
				"player/survivor/voice/" + custom_name + "/worldairport0313.wav"  //There's the skybridge!
			],
			PlayerRemarkairport03_05Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0323.wav"  //Never a cop when you need one.
			],
			PlayerRemarkairport03_06Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0316.wav"  //Let's go through here.
			],
			PlayerRemarkairport03_07Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0314.wav"  //There's a safe house across the skybridge!
			],
			PlayerRemarkairport03_barrierBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0301.wav",  //Let's burn down this barricade.
				"player/survivor/voice/" + custom_name + "/worldairport0318.wav"  //Let's burn this pile a' crap.
			],
			PlayerRemarkairport04_01Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0402.wav"  //Let's go through the offices!
			],
			PlayerRemarkairport04_03Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0426.wav"  //God's dead, huh? Well, join the damn club.
			],
			PlayerRemarkairport04_07Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0416.wav",  //I hate Ayn Rand.
				"player/survivor/voice/" + custom_name + "/worldairport0421.wav"  //This is the most sober I've ever been in an airport.
			],
			PlayerRemarkairport04_08aBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0412.wav",  //There's the plane we saw!
				"player/survivor/voice/" + custom_name + "/worldairport0413.wav",  //Let's get down to that plane!
				"player/survivor/voice/" + custom_name + "/worldairport0414.wav",  //There's the plane! How the hell do to it?
				"player/survivor/voice/" + custom_name + "/worldairport0423.wav"  //There's the plane!
			],
			PlayerRemarkairport04_08bBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0412.wav",  //There's the plane we saw!
				"player/survivor/voice/" + custom_name + "/worldairport0413.wav",  //Let's get down to that plane!
				"player/survivor/voice/" + custom_name + "/worldairport0414.wav",  //There's the plane! How the hell do to it?
				"player/survivor/voice/" + custom_name + "/worldairport0423.wav"  //There's the plane!
			],
			PlayerRemarkairport04_08cBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0412.wav",  //There's the plane we saw!
				"player/survivor/voice/" + custom_name + "/worldairport0413.wav",  //Let's get down to that plane!
				"player/survivor/voice/" + custom_name + "/worldairport0414.wav",  //There's the plane! How the hell do to it?
				"player/survivor/voice/" + custom_name + "/worldairport0423.wav"  //There's the plane!
			],
			PlayerRemarkairport04_08dBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0412.wav",  //There's the plane we saw!
				"player/survivor/voice/" + custom_name + "/worldairport0413.wav",  //Let's get down to that plane!
				"player/survivor/voice/" + custom_name + "/worldairport0414.wav",  //There's the plane! How the hell do to it?
				"player/survivor/voice/" + custom_name + "/worldairport0423.wav"  //There's the plane!
			],
			PlayerRemarkairport04_08eBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0412.wav",  //There's the plane we saw!
				"player/survivor/voice/" + custom_name + "/worldairport0413.wav",  //Let's get down to that plane!
				"player/survivor/voice/" + custom_name + "/worldairport0414.wav",  //There's the plane! How the hell do to it?
				"player/survivor/voice/" + custom_name + "/worldairport0423.wav"  //There's the plane!
			],
			PlayerRemarkairport04_08fBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0412.wav",  //There's the plane we saw!
				"player/survivor/voice/" + custom_name + "/worldairport0413.wav",  //Let's get down to that plane!
				"player/survivor/voice/" + custom_name + "/worldairport0414.wav",  //There's the plane! How the hell do to it?
				"player/survivor/voice/" + custom_name + "/worldairport0423.wav"  //There's the plane!
			],
			PlayerRemarkairport04_09Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0424.wav"  //The sad thing is this is only the second worst time I've ever had in an airport.
			],
			PlayerRemarkairport04_vanBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0403.wav",  //We can send the van through that pile a' crap.
				"player/survivor/voice/" + custom_name + "/worldairport0404.wav"  //We gotta get through that pile a' junk.
			],
			PlayerRemarkcrashcourse01_path01Biker = [
				"player/survivor/voice/" + custom_name + "/dlc2pilotcomment01.wav"  //Hey, Zoey, here's the pilot. Case you wanna shoot him again.
			],
			PlayerRemarkFarm01_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0112.wav"  //I hate the woods.
			],
			PlayerRemarkFarm01_path02Biker = [
				"player/survivor/voice/" + custom_name + "/followme04.wav"  //This way.
			],
			PlayerRemarkFarm01_path03Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0107.wav"  //Nice place.
			],
			PlayerRemarkFarm01_path04Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0108.wav"  //There's the tracks. Now we just need to get to 'em.
			],
			PlayerRemarkFarm02_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0214.wav",  //The tracks should just be downstairs.
				"player/survivor/voice/" + custom_name + "/worldhospital0410.wav"  //I hate stairs.
			],
			PlayerRemarkFarm02_path02Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0318.wav"  //There's the tracks!
			],
			PlayerRemarkFarm02_path02bBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0406.wav"  //The tracks!
			],
			PlayerRemarkFarm02_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0114.wav"  //Down here!
			],
			PlayerRemarkFarm02_path08Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0204.wav"  //This tunnel heads the right way.
			],
			PlayerRemarkFarm02_path09Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections03.wav"  //Let's get up that ladder!
			],
			PlayerRemarkFarm03_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0302.wav"  //This better go through.
			],
			PlayerRemarkFarm03_path03aBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0109.wav"  //Bet we can get to the tracks from that building.
			],
			PlayerRemarkFarm03_path04Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0406.wav"  //The tracks!
			],
			PlayerRemarkFarm03_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0207.wav"  //Well, goddamnit, the tracks are blocked.
			],
			PlayerRemarkFarm03_path07Biker = [
				"player/survivor/voice/" + custom_name + "/reactiondisgusted03.wav"  //Yech...
			],
			PlayerRemarkFarm03_path08Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0326.wav"  //You know - I bet we could knock that bridge down.
			],
			PlayerRemarkFarm03_path10Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0314.wav"  //Up there!
			],
			PlayerRemarkFarm04_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0403.wav"  //Let's check out the barn.
			],
			PlayerRemarkFarm04_path01aBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0403.wav"  //Let's check out the barn.
			],
			PlayerRemarkFarm04_path02Biker = [
				"player/survivor/voice/" + custom_name + "/generic26.wav"  //There's the tracks!
			],
			PlayerRemarkFarm04_path04Biker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerRemarkFarm04_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0412.wav"  //We can get around down here.
			],
			PlayerRemarkFarm04_path07Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections01.wav"  //Up the stairs!
			],
			PlayerRemarkFarm04_path08Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav"  //Through here!
			],
			PlayerRemarkFarm04_path09Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0416.wav"  //Run for the train car!
			],
			PlayerRemarkFarm04_path10Biker = [
				"player/survivor/voice/" + custom_name + "/violenceawe04.wav",  //Whoa.
				"player/survivor/voice/" + custom_name + "/violenceawe05.wav"  //Holy shit...
			],
			PlayerRemarkFarm05_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0501.wav"  //Get to the farm house!
			],
			PlayerRemarkFarm05_path07Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0526.wav"  //Goddamn tape loop piece of shit.
			],
			PlayerRemarkFarm05_path07VampiresBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0525.wav"  //You got to be shittin me.  We walk a hundred miles, fight 5 million vampires -
			],
			PlayerRemarkFarm05_path07VampirescBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0527.wav"  //-whatever. And all they got is a goddamn tape loop? Screw the goddamn army.
			],
			PlayerRemarkFarm05_path08Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0502.wav",  //An outpost!
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0503.wav"  //Yeah, we made it!
			],
			PlayerRemarkhospital01_path03Biker = [
				"player/survivor/voice/" + custom_name + "/safespotahead06.wav",  //Safe house ahead!
				"player/survivor/voice/" + custom_name + "/safespotahead07.wav",  //Safe house!
				"player/survivor/voice/" + custom_name + "/safespotahead08.wav"  //Safe house, let's go!
			],
			PlayerRemarkhospital02_safehouseBiker = [
				"player/survivor/voice/" + custom_name + "/safespotahead06.wav",  //Safe house ahead!
				"player/survivor/voice/" + custom_name + "/safespotahead07.wav",  //Safe house!
				"player/survivor/voice/" + custom_name + "/safespotahead08.wav"  //Safe house, let's go!
			],
			PlayerRemarkhospital03_path03Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0305.wav"  //Get on the lift!
			],
			PlayerRemarkhospital03_path04Biker = [
				"player/survivor/voice/" + custom_name + "/followme09.wav"  //This way, kids.
			],
			PlayerRemarkhospital03_path07Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0308.wav"  //I hate sewers.
			],
			PlayerRemarkhospital03_path08Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0306.wav"  //Now this is some shit.
			],
			PlayerRemarkhospital03_path08a2Biker = [
				"player/survivor/voice/" + custom_name + "/generic04.wav",  //Oh hey, that is uncalled for!
				"player/survivor/voice/" + custom_name + "/teamkillonpurpose09.wav"  //Hey! hey!
			],
			PlayerRemarkhospital03_path11Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0301.wav",  //We've got to get to the hospital.
				"player/survivor/voice/" + custom_name + "/worldhospital0302.wav",  //Into the hospital!
				"player/survivor/voice/" + custom_name + "/worldhospital0303.wav"  //There's a safe house in the hospital!
			],
			PlayerRemarkhospital04_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0404.wav",  //I hate hospitals.  And doctors and lawyers and cops...
				"player/survivor/voice/" + custom_name + "/worldhospital0408.wav"  //I hate hospitals.
			],
			PlayerRemarkhospital04_path02Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0410.wav"  //I hate stairs.
			],
			PlayerRemarkhospital04_path04Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0406.wav",  //Elevator's here!
				"player/survivor/voice/" + custom_name + "/worldhospital0407.wav"  //Get on the elevator!
			],
			PlayerRemarkhospital04_path04aBiker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0406.wav",  //Elevator's here!
				"player/survivor/voice/" + custom_name + "/worldhospital0407.wav"  //Get on the elevator!
			],
			PlayerRemarkhospital05_path01aBiker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0401.wav"  //If he ain't, at least we'll die with a nice view of the city.
			],
			PlayerRemarkhospital05_path02Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldairport0305.wav"  //Through here!
			],
			PlayerRemarkPathClearVanBiker = [
				"player/survivor/voice/" + custom_name + "/arrivegeneric04.wav",  //Let's get out of here. GoGoGO!
				"player/survivor/voice/" + custom_name + "/moveon01.wav",  //Allright, let's go
				"player/survivor/voice/" + custom_name + "/moveon07.wav",  //Time to go, ladies.
				"player/survivor/voice/" + custom_name + "/moveon10.wav",  //Come on, let's go.
				"player/survivor/voice/" + custom_name + "/pathclear01.wav",  //Path's clear! Let's go!
				"player/survivor/voice/" + custom_name + "/worldairport0309.wav"  //The path is clear!
			],
			PlayerRemarkSmalltown01_path03Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections03.wav"  //Let's get up that ladder!
			],
			PlayerRemarkSmalltown01_path05Biker = [
				"player/survivor/voice/" + custom_name + "/generic60.wav",  //Fan-tastic. A tunnel.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0203.wav",  //Looks like this tunnel heads the right way.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0208.wav"  //Let's try this tunnel.
			],
			PlayerRemarkSmalltown01_path06Biker = [
				"player/survivor/voice/" + custom_name + "/reactionapprehensive03.wav",  //I don't like ths one damn bit.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0212.wav"  //I hate tunnels.
			],
			PlayerRemarkSmalltown01_path08Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldairport0305.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldairport0316.wav"  //Let's go through here.
			],
			PlayerRemarkSmalltown01_path09Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0315.wav",  //Safe house up there!
				"player/survivor/voice/" + custom_name + "/worldsmalltown0117.wav"  //Safe house up there!
			],
			PlayerRemarkSmalltown01_path10Biker = [
				"player/survivor/voice/" + custom_name + "/generic16.wav"  //Uh oh. Watch out. There might be *deer* around here.
			],
			PlayerRemarksmalltown02_path01aBiker = [
				"player/survivor/voice/" + custom_name + "/generic19.wav"  //How the hell do you know *that*?
			],
			PlayerRemarksmalltown02_path01cBiker = [
				"player/survivor/voice/" + custom_name + "/generic20.wav"  //Know what? I just realized I don't care. Lead on.
			],
			PlayerRemarksmalltown02_path02Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav"  //Through here!
			],
			PlayerRemarksmalltown02_path03Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav"  //Through here!
			],
			PlayerRemarksmalltown02_path04Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav"  //Through here!
			],
			PlayerRemarksmalltown02_path06Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0201.wav"  //We gotta activate that bridge.
			],
			PlayerRemarksmalltown02_path07aBiker = [
				"player/survivor/voice/" + custom_name + "/laughter09.wav"  //<Short laugh>
			],
			PlayerRemarksmalltown02_path08Biker = [
				"player/survivor/voice/" + custom_name + "/positivenoise05.wav"  //[Improv non-verbal pleasure & interest sounds]
			],
			PlayerRemarkSmalltown02_path09Biker = [
				"player/survivor/voice/" + custom_name + "/safespotahead06.wav",  //Safe house ahead!
				"player/survivor/voice/" + custom_name + "/safespotahead08.wav",  //Safe house, let's go!
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0315.wav"  //Safe house up there!
			],
			PlayerRemarkSmalltown03_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0204.wav"  //I hate trainyards.
			],
			PlayerRemarkSmalltown03_path02Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0204.wav"  //I hate trainyards.
			],
			PlayerRemarkSmalltown03_path03Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections11.wav"  //We gotta get over this thing.
			],
			PlayerRemarkSmalltown03_path04Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections01.wav"  //Up the stairs!
			],
			PlayerRemarkSmalltown03_path05Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections01.wav"  //Up the stairs!
			],
			PlayerRemarkSmalltown03_path06Biker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerRemarkSmalltown03_path08Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0302.wav",  //Almost to Riverside.
				"player/survivor/voice/" + custom_name + "/worldsmalltown0308.wav"  //Riverside ain't too far from here.
			],
			PlayerRemarkSmalltown03_path10Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0316.wav",  //There might be supplies in that house.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0317.wav",  //Let's check this house.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0524.wav"  //That is one creepy ass house.
			],
			PlayerRemarkSmalltown03_path11Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0303.wav"  //The town's pretty quiet...
			],
			PlayerRemarkSmalltown03_path12Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0309.wav"  //There's lights on in that church!
			],
			PlayerRemarkSmalltown03_path13Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0309.wav"  //There's lights on in that church!
			],
			PlayerRemarkSmalltown04_path01Biker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerRemarkSmalltown04_path02Biker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerRemarkSmalltown04_path05Biker = [
				"player/survivor/voice/" + custom_name + "/followme04.wav"  //This way.
			],
			PlayerRemarkSmalltown04_path05aBiker = [
				"player/survivor/voice/" + custom_name + "/generic07.wav"  //I'm comin' Bill. Keep yer beard on.
			],
			PlayerRemarkSmalltown04_path10Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections01.wav",  //Up the stairs!
				"player/survivor/voice/" + custom_name + "/worldairport0202.wav",  //Let's head back up.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0327.wav",  //We need to get up there.
				"player/survivor/voice/" + custom_name + "/worldsmalltown0116.wav"  //We can take these stairs!
			],
			PlayerRemarkSmalltown05_path01Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0316.wav",  //There might be supplies in that house.
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0317.wav"  //Let's check this house.
			],
			PlayerRemarkSmalltown05_path02Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0311.wav"  //I hate small towns.
			],
			PlayerRemarkSmalltown05_path03Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0402.wav"  //We can get to the river through here.
			],
			PlayerRemarkSmalltown05_path03aBiker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0509.wav"  //I hate the water.
			],
			PlayerRemarkSmalltown05_path04Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0425.wav"  //I hate vans.
			],
			PlayerRemarkSmalltown05_path05Biker = [
				"player/survivor/voice/" + custom_name + "/worldairport0425.wav"  //I hate vans.
			],
			PlayerRemarkSmalltown05_path06Biker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav"  //Through here!
			],
			PlayerRemarkThroughHereBiker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0206.wav"  //Through here!
			],
			PlayerRemarkUpThatLadderBiker = [
				"player/survivor/voice/" + custom_name + "/genericdirections03.wav"  //Let's get up that ladder!
			],
			PlayerZoeySuggestsCraneBiker = [
				"player/survivor/voice/" + custom_name + "/genericresponses04.wav",  //Sure, why not?
				"player/survivor/voice/" + custom_name + "/genericresponses08.wav",  //That sounds about right.
				"player/survivor/voice/" + custom_name + "/genericresponses10.wav",  //Good thinking.
				"player/survivor/voice/" + custom_name + "/worldairport0217.wav",  //Good thinking!
				"player/survivor/voice/" + custom_name + "/worldairport0227.wav"  //Good thinking, Zoey!
			],
			RespondAffirmativeBiker = [
				"player/survivor/voice/" + custom_name + "/yes02.wav",  //Okay.
				"player/survivor/voice/" + custom_name + "/yes05.wav"  //Yeah.
			],
			RiversideIsDeadBiker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0306.wav",  //Looks like Riverside couldn't hold it together.
				"player/survivor/voice/" + custom_name + "/worldsmalltown0401.wav"  //Riverside's a bust. Let's just get to the river and steal a boat.
			],
			RiversideIsDeadPlanBiker = [
				"player/survivor/voice/" + custom_name + "/genericresponses10.wav"  //Good thinking.
			],
			RiversideIsDeadSpecial1ABiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0112.wav"  //That's better than my plan.
			],
			RiversideIsDeadSpecial1CBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0113.wav"  //I didn't have one.
			],
			PlayerNearFinaleFarmBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			AynRandResponseBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0416.wav"  //I hate Ayn Rand.
			],
			PlayerCoverMeBiker = [
				"player/survivor/voice/" + custom_name + "/coverme01.wav",  //Cover me!
				"player/survivor/voice/" + custom_name + "/coverme02.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme03.wav",  //Watch my back
				"player/survivor/voice/" + custom_name + "/coverme04.wav",  //Cover me!
				"player/survivor/voice/" + custom_name + "/coverme05.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme06.wav"  //Watch my back
			],
			PlayerFollowMeBiker = [
				"player/survivor/voice/" + custom_name + "/followme01.wav",  //Come on, this way.
				"player/survivor/voice/" + custom_name + "/followme02.wav",  //Follow me!
				"player/survivor/voice/" + custom_name + "/followme03.wav",  //Follow me.
				"player/survivor/voice/" + custom_name + "/followme04.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme05.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme06.wav",  //I got the lead - follow me.
				"player/survivor/voice/" + custom_name + "/followme07.wav",  //I got the lead.
				"player/survivor/voice/" + custom_name + "/followme09.wav"  //This way, kids.
			],
			PlayerHelpBiker = [
				"player/survivor/voice/" + custom_name + "/help01.wav",  //Help!
				"player/survivor/voice/" + custom_name + "/help02.wav",  //I need some help over here.
				"player/survivor/voice/" + custom_name + "/help03.wav",  //I'm in trouble!
				"player/survivor/voice/" + custom_name + "/help05.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help06.wav",  //Help!
				"player/survivor/voice/" + custom_name + "/help07.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help08.wav",  //I'm in some trouble!
				"player/survivor/voice/" + custom_name + "/help09.wav",  //I need some help over here.
				"player/survivor/voice/" + custom_name + "/help10.wav",  //Hey! I need some help!
				"player/survivor/voice/" + custom_name + "/help11.wav",  //Hey! I need some help!
				"player/survivor/voice/" + custom_name + "/help12.wav",  //Help me!
				"player/survivor/voice/" + custom_name + "/help13.wav",  //I need a hand over here
				"player/survivor/voice/" + custom_name + "/help14.wav"  //I'm in a little trouble over here
			],
			PlayerHurryUpBiker = [
				"player/survivor/voice/" + custom_name + "/hurryup01.wav",  //Hurry up!
				"player/survivor/voice/" + custom_name + "/hurryup02.wav",  //Hurry up!
				"player/survivor/voice/" + custom_name + "/hurryup03.wav",  //Hurry!
				"player/survivor/voice/" + custom_name + "/hurryup04.wav",  //MOVE.
				"player/survivor/voice/" + custom_name + "/hurryup05.wav",  //Let's go ladies!
				"player/survivor/voice/" + custom_name + "/hurryup06.wav",  //Put your rear in gear!
				"player/survivor/voice/" + custom_name + "/hurryup08.wav",  //Let's go, let's go!
				"player/survivor/voice/" + custom_name + "/hurryup09.wav"  //Come on, let's go!
			],
			PlayerKillThatLightBiker = [
				"player/survivor/voice/" + custom_name + "/killthatlight01.wav",  //Kill that light!
				"player/survivor/voice/" + custom_name + "/killthatlight02.wav",  //Kill that light!
				"player/survivor/voice/" + custom_name + "/killthatlight03.wav",  //Kill that light!
				"player/survivor/voice/" + custom_name + "/killthatlight04.wav",  //Turn your light off!
				"player/survivor/voice/" + custom_name + "/killthatlight05.wav",  //Lights off!
				"player/survivor/voice/" + custom_name + "/killthatlight06.wav",  //Flashlights off!
				"player/survivor/voice/" + custom_name + "/killthatlight07.wav",  //Kill that light!
				"player/survivor/voice/" + custom_name + "/killthatlight08.wav",  //Shut off your flashlight, they'll see us!
				"player/survivor/voice/" + custom_name + "/killthatlight09.wav",  //Turn off your light.
				"player/survivor/voice/" + custom_name + "/killthatlight10.wav"  //No lights!
			],
			PlayerLeadOnBiker = [
				"player/survivor/voice/" + custom_name + "/leadon01.wav",  //I'll follow you.
				"player/survivor/voice/" + custom_name + "/leadon02.wav",  //You go ahead, I'll follow you.
				"player/survivor/voice/" + custom_name + "/leadon03.wav",  //You take the lead.
				"player/survivor/voice/" + custom_name + "/leadon04.wav",  //Go ahead.
				"player/survivor/voice/" + custom_name + "/leadon05.wav",  //Go ahead.
				"player/survivor/voice/" + custom_name + "/leadon06.wav",  //After you.
				"player/survivor/voice/" + custom_name + "/leadon07.wav"  //After you, ladies.
			],
			PlayerMoveOnBiker = [
				"player/survivor/voice/" + custom_name + "/moveon01.wav",  //Allright, let's go
				"player/survivor/voice/" + custom_name + "/moveon02.wav",  //Come on, we ain't got all day.
				"player/survivor/voice/" + custom_name + "/moveon03.wav",  //Let's go.
				"player/survivor/voice/" + custom_name + "/moveon04.wav",  //Let's get moving.
				"player/survivor/voice/" + custom_name + "/moveon05.wav",  //Let's move.
				"player/survivor/voice/" + custom_name + "/moveon07.wav",  //Time to go, ladies.
				"player/survivor/voice/" + custom_name + "/moveon08.wav",  //Let's go.
				"player/survivor/voice/" + custom_name + "/moveon09.wav",  //I'm tired of waitin' around here. Come on, let's go.
				"player/survivor/voice/" + custom_name + "/moveon10.wav",  //Come on, let's go.
				"player/survivor/voice/" + custom_name + "/moveon11.wav",  //Come on, let's move.
				"player/survivor/voice/" + custom_name + "/moveon12.wav"  //Come on,come on, let's go.
			],
			PlayerStayTogetherBiker = [
				"player/survivor/voice/" + custom_name + "/staytogether01.wav",  //Stay close!
				"player/survivor/voice/" + custom_name + "/staytogether02.wav",  //We gotta stay together.
				"player/survivor/voice/" + custom_name + "/staytogether03.wav",  //Keep together!
				"player/survivor/voice/" + custom_name + "/staytogether04.wav",  //Stay together!
				"player/survivor/voice/" + custom_name + "/staytogether05.wav",  //Don't split up!
				"player/survivor/voice/" + custom_name + "/staytogether06.wav",  //Don't nobody wander off.
				"player/survivor/voice/" + custom_name + "/staytogether07.wav",  //Stay close.
				"player/survivor/voice/" + custom_name + "/staytogether08.wav",  //Don't get split up!
				"player/survivor/voice/" + custom_name + "/staytogether09.wav",  //Stay together!
				"player/survivor/voice/" + custom_name + "/staytogether11.wav",  //Don't stray!
				"player/survivor/voice/" + custom_name + "/staytogether12.wav"  //Keep together!
			],
			PlayerWatchOutBehindBiker = [
				"player/survivor/voice/" + custom_name + "/watchoutbehind01.wav",  //Behind us!
				"player/survivor/voice/" + custom_name + "/watchoutbehind02.wav",  //They're behind us!
				"player/survivor/voice/" + custom_name + "/watchoutbehind03.wav"  //Behind us!
			],
			PlayerAskReadyBiker = [
				"player/survivor/voice/" + custom_name + "/askready01.wav",  //Ready for this?
				"player/survivor/voice/" + custom_name + "/askready02.wav",  //Ready for this?
				"player/survivor/voice/" + custom_name + "/askready03.wav",  //Ready?
				"player/survivor/voice/" + custom_name + "/askready04.wav",  //Ready?
				"player/survivor/voice/" + custom_name + "/askready05.wav",  //Ready for some fun?
				"player/survivor/voice/" + custom_name + "/askready06.wav",  //Everybody ready?
				"player/survivor/voice/" + custom_name + "/askready07.wav",  //You ready to roll?
				"player/survivor/voice/" + custom_name + "/askready08.wav",  //We ready?
				"player/survivor/voice/" + custom_name + "/askready09.wav",  //Everyone ready?
				"player/survivor/voice/" + custom_name + "/askready10.wav"  //You ladies ready for this?
			],
			PlayerImWithYouBiker = [
				"player/survivor/voice/" + custom_name + "/imwithyou01.wav",  //Right behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou02.wav",  //I've got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou03.wav",  //I've got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou04.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou05.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou06.wav",  //Right behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou07.wav",  //I'm with ya!
				"player/survivor/voice/" + custom_name + "/imwithyou08.wav",  //I got your back!
				"player/survivor/voice/" + custom_name + "/imwithyou09.wav",  //Behind you!
				"player/survivor/voice/" + custom_name + "/imwithyou10.wav"  //I'm here!
			],
			PlayerLaughBiker = [
				"player/survivor/voice/" + custom_name + "/laughter04.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter12.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter13.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter14.wav",  //<Hearty Laugh>
				"player/survivor/voice/" + custom_name + "/laughter15.wav"  //<Hearty Laugh>
			],
			PlayerLostCallBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerNiceJobResponseBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob01.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob02.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob03.wav",  //Nice job.
				"player/survivor/voice/" + custom_name + "/nicejob04.wav",  //Shit, that was all right
				"player/survivor/voice/" + custom_name + "/nicejob05.wav",  //Damn, not bad.
				"player/survivor/voice/" + custom_name + "/nicejob06.wav",  //Nice job.
				"player/survivor/voice/" + custom_name + "/nicejob07.wav",  //Nice.
				"player/survivor/voice/" + custom_name + "/nicejob08.wav",  //Nice job.
				"player/survivor/voice/" + custom_name + "/nicejob09.wav",  //Nice job.
				"player/survivor/voice/" + custom_name + "/nicejob10.wav",  //Nice work.
				"player/survivor/voice/" + custom_name + "/nicejob11.wav",  //Well, shit, that was all right
				"player/survivor/voice/" + custom_name + "/nicejob12.wav",  //Nice damn job.
				"player/survivor/voice/" + custom_name + "/nicejob13.wav",  //Damn, not bad.
				"player/survivor/voice/" + custom_name + "/nicejob14.wav",  //Shiiiit.
				"player/survivor/voice/" + custom_name + "/nicejob15.wav",  //Hey, nice work.
				"player/survivor/voice/" + custom_name + "/nicejob16.wav",  //Well whaddya know. Good job!
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/nicejob18.wav",  //You suprised me. Nice job.
				"player/survivor/voice/" + custom_name + "/nicejob19.wav"  //I knew you had it in ya.
			],
			PlayerNoBiker = [
				"player/survivor/voice/" + custom_name + "/no01.wav",  //No
				"player/survivor/voice/" + custom_name + "/no02.wav",  //No way.
				"player/survivor/voice/" + custom_name + "/no03.wav",  //Um, no.
				"player/survivor/voice/" + custom_name + "/no04.wav",  //No way, jose.
				"player/survivor/voice/" + custom_name + "/no05.wav",  //Hell no.
				"player/survivor/voice/" + custom_name + "/no06.wav",  //Hell no.
				"player/survivor/voice/" + custom_name + "/no07.wav",  //Nope.
				"player/survivor/voice/" + custom_name + "/no08.wav",  //Nope.
				"player/survivor/voice/" + custom_name + "/no09.wav",  //No way, jose
				"player/survivor/voice/" + custom_name + "/no11.wav",  //Negatory.
				"player/survivor/voice/" + custom_name + "/no12.wav",  //Negatory.
				"player/survivor/voice/" + custom_name + "/no13.wav",  //Uh, no.
				"player/survivor/voice/" + custom_name + "/no14.wav",  //No way.
				"player/survivor/voice/" + custom_name + "/no15.wav",  //No.
				"player/survivor/voice/" + custom_name + "/no16.wav",  //Nope.
				"player/survivor/voice/" + custom_name + "/no17.wav",  //No siree bob.
				"player/survivor/voice/" + custom_name + "/no18.wav"  //Not a chance.
			],
			PlayerProfanityBiker = [
				"player/survivor/voice/" + custom_name + "/negativenoise07.wav",  //[Improv non-verbal displeasure & frustration sounds]
				"player/survivor/voice/" + custom_name + "/negativenoise08.wav",  //[Improv non-verbal displeasure & frustration sounds]
				"player/survivor/voice/" + custom_name + "/reactionnegative02.wav",  //That's bad.
				"player/survivor/voice/" + custom_name + "/reactionnegative03.wav",  //damn
				"player/survivor/voice/" + custom_name + "/reactionnegative07.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/reactionnegative07.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/reactionnegative08.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/reactionnegative08.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/reactionnegative09.wav",  //Ahhhhh.
				"player/survivor/voice/" + custom_name + "/swear06.wav",  //Crap.
				"player/survivor/voice/" + custom_name + "/swear14.wav",  //Ah hell.
				"player/survivor/voice/" + custom_name + "/swear17.wav",  //Dammit.
				"player/survivor/voice/" + custom_name + "/violenceawe02.wav"  //Jee-zus...
			],
			PlayerSorryBiker = [
				"player/survivor/voice/" + custom_name + "/sorry01.wav",  //Sorry.
				"player/survivor/voice/" + custom_name + "/sorry02.wav",  //Sorry about that.
				"player/survivor/voice/" + custom_name + "/sorry03.wav",  //Sorry about that.
				"player/survivor/voice/" + custom_name + "/sorry04.wav",  //Aww, man, sorry.
				"player/survivor/voice/" + custom_name + "/sorry05.wav",  //Sorry.
				"player/survivor/voice/" + custom_name + "/sorry06.wav",  //Sorry about that.
				"player/survivor/voice/" + custom_name + "/sorry07.wav",  //Yeah, guess that was my fault.
				"player/survivor/voice/" + custom_name + "/sorry08.wav",  //Yeah, guess that was my fault. Again.
				"player/survivor/voice/" + custom_name + "/sorry09.wav",  //Sorry.
				"player/survivor/voice/" + custom_name + "/sorry12.wav",  //My bad.
				"player/survivor/voice/" + custom_name + "/sorry13.wav",  //Whoopsie.
				"player/survivor/voice/" + custom_name + "/sorry14.wav",  //Uh, yeah, sorry.
				"player/survivor/voice/" + custom_name + "/sorry15.wav",  //Sorry.
				"player/survivor/voice/" + custom_name + "/sorry16.wav",  //oopsy daisy
				"player/survivor/voice/" + custom_name + "/sorry17.wav",  //That was my fault.
				"player/survivor/voice/" + custom_name + "/sorry18.wav"  //My bad.
			],
			PlayerThanksBiker = [
				"player/survivor/voice/" + custom_name + "/thanks01.wav",  //I owe you one.
				"player/survivor/voice/" + custom_name + "/thanks02.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks03.wav",  //Thanks.
				"player/survivor/voice/" + custom_name + "/thanks04.wav",  //Thanks [noise you make gun clicking your mouth twice]
				"player/survivor/voice/" + custom_name + "/thanks05.wav",  //Thanks, man.
				"player/survivor/voice/" + custom_name + "/thanks06.wav",  //Hey, thanks man.
				"player/survivor/voice/" + custom_name + "/thanks07.wav",  //Yeah, thanks.
				"player/survivor/voice/" + custom_name + "/thanks08.wav",  //Thank you.
				"player/survivor/voice/" + custom_name + "/thanks09.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks10.wav",  //Thanks, I owe ya.
				"player/survivor/voice/" + custom_name + "/thanks11.wav",  //Thanks, dude.
				"player/survivor/voice/" + custom_name + "/thanks12.wav",  //Thanks for that.
				"player/survivor/voice/" + custom_name + "/thanks15.wav"  //Thanks.
			],
			PlayerYesBiker = [
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes02.wav",  //Okay.
				"player/survivor/voice/" + custom_name + "/yes03.wav",  //Yep.
				"player/survivor/voice/" + custom_name + "/yes04.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes05.wav",  //Yeah.
				"player/survivor/voice/" + custom_name + "/yes06.wav"  //Roger that good buddy.
			],
			PlayerYouAreWelcomeBiker = [
				"player/survivor/voice/" + custom_name + "/youarewelcome02.wav",  //I got your back.
				"player/survivor/voice/" + custom_name + "/youarewelcome04.wav",  //Hey, no problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome05.wav",  //No problem.
				"player/survivor/voice/" + custom_name + "/youarewelcome06.wav",  //Sure.
				"player/survivor/voice/" + custom_name + "/youarewelcome07.wav",  //I told ya I'd take care of ya.
				"player/survivor/voice/" + custom_name + "/youarewelcome08.wav",  //No, thank YOU!
				"player/survivor/voice/" + custom_name + "/youarewelcome09.wav",  //Yer welcome.
				"player/survivor/voice/" + custom_name + "/youarewelcome10.wav",  //Yea, I�m pretty awesome.
				"player/survivor/voice/" + custom_name + "/youarewelcome11.wav",  //No problemo, pal.
				"player/survivor/voice/" + custom_name + "/youarewelcome12.wav",  //It's all good.
				"player/survivor/voice/" + custom_name + "/youarewelcome13.wav",  //Gotcha.
				"player/survivor/voice/" + custom_name + "/youarewelcome14.wav"  //Whatever, whenever, man.
			],
			PlayerNegativeBiker = [
				"player/survivor/voice/" + custom_name + "/laughter08.wav",  //<Short laugh>
				"player/survivor/voice/" + custom_name + "/negativenoise08.wav",  //[Improv non-verbal displeasure & frustration sounds]
				"player/survivor/voice/" + custom_name + "/reactionnegative02.wav"  //That's bad.
			],
			PlayerAreaClearBiker = [
				"player/survivor/voice/" + custom_name + "/areaclear01.wav",  //Clear.
				"player/survivor/voice/" + custom_name + "/areaclear02.wav",  //It's clear.
				"player/survivor/voice/" + custom_name + "/areaclear03.wav",  //Nothin' in here.
				"player/survivor/voice/" + custom_name + "/areaclear04.wav",  //Clear, sir.
				"player/survivor/voice/" + custom_name + "/areaclear05.wav",  //Clear.
				"player/survivor/voice/" + custom_name + "/areaclear06.wav",  //Nothin' in here.
				"player/survivor/voice/" + custom_name + "/areaclear07.wav",  //blph... Looks empty.
				"player/survivor/voice/" + custom_name + "/areaclear08.wav",  //Looks empty.
				"player/survivor/voice/" + custom_name + "/areaclear09.wav",  //I don't see anything here
				"player/survivor/voice/" + custom_name + "/areaclear10.wav"  //I got nothin' here.
			],
			PlayerHeardBoomerBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerHeardHunterBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerHeardSmokerBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerHeardTankBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerHeardWitchBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerHurrahBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah05.wav",  //We just might make it out of here after all.
				"player/survivor/voice/" + custom_name + "/hurrah06.wav",  //We're gonna be okay.
				"player/survivor/voice/" + custom_name + "/hurrah07.wav",  //I think we're gonna make it.
				"player/survivor/voice/" + custom_name + "/hurrah08.wav",  //They can't stop us.
				"player/survivor/voice/" + custom_name + "/hurrah09.wav",  //Nothing can stop us.
				"player/survivor/voice/" + custom_name + "/hurrah10.wav",  //We are unstoppable!
				"player/survivor/voice/" + custom_name + "/hurrah11.wav",  //YEAH!
				"player/survivor/voice/" + custom_name + "/hurrah12.wav",  //Everybody havin' as much fun as me?
				"player/survivor/voice/" + custom_name + "/hurrah13.wav",  //Everyone havin' fun?
				"player/survivor/voice/" + custom_name + "/hurrah14.wav",  //You know all those monsters? I don't think they're gonna make it.
				"player/survivor/voice/" + custom_name + "/hurrah15.wav",  //We just might make it out of here after all.
				"player/survivor/voice/" + custom_name + "/hurrah21.wav",  //You guys are all right.
				"player/survivor/voice/" + custom_name + "/hurrah22.wav",  //I think we gotta chance
				"player/survivor/voice/" + custom_name + "/hurrah23.wav",  //lookin good
				"player/survivor/voice/" + custom_name + "/hurrah24.wav"  //Hey, this is just gettin fun.
			],
			PlayerWarnCarefulBiker = [
				"player/survivor/voice/" + custom_name + "/warncareful01.wav",  //Careful...
				"player/survivor/voice/" + custom_name + "/warncareful02.wav",  //Be careful...
				"player/survivor/voice/" + custom_name + "/warncareful03.wav",  //Take it easy...
				"player/survivor/voice/" + custom_name + "/warncareful04.wav",  //Take er easy...
				"player/survivor/voice/" + custom_name + "/warncareful05.wav",  //Watch yourself, now...
				"player/survivor/voice/" + custom_name + "/warncareful06.wav",  //Careful now...
				"player/survivor/voice/" + custom_name + "/warncareful07.wav",  //Watch it...
				"player/survivor/voice/" + custom_name + "/warncareful08.wav",  //Carrrefullll...
				"player/survivor/voice/" + custom_name + "/warncareful09.wav"  //Careful, kids...
			],
			SurvivorSpottedWorldFarBiker = [
				"player/survivor/voice/" + custom_name + "/look01.wav",  //Over there!
				"player/survivor/voice/" + custom_name + "/look02.wav",  //Over there!
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/look04.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/look05.wav"  //Look!
			],
			IntroSmalltown3Biker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltown0105.wav"  //Sounds good to me. Let's head to Riverside.
			],
			SurvivorSpawnBiker = [
				"player/survivor/voice/" + custom_name + "/scenariojoin01.wav",  //I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin02.wav",  //Hey, I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin03.wav",  //Hey, I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin04.wav"  //Hello!
			],
			SurvivorSpawnLastMainstreetBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerBillPouncedBiker = [
				"player/survivor/voice/" + custom_name + "/hunterbillpounced01.wav",  //Hunter's got Bill!
				"player/survivor/voice/" + custom_name + "/hunterbillpounced02.wav"  //Hunter's on Bill!
			],
			PlayerEatPillsBiker = [
				"player/survivor/voice/" + custom_name + "/painreliefsigh01.wav",  //Ahhh
				"player/survivor/voice/" + custom_name + "/painreliefsigh05.wav"  //ohh
			],
			PlayerGetInsideCheckPointBiker = [
				"player/survivor/voice/" + custom_name + "/staytogetherinside01.wav",  //Get your asses in here!
				"player/survivor/voice/" + custom_name + "/staytogetherinside02.wav",  //Come on ladies, everyone inside!
				"player/survivor/voice/" + custom_name + "/staytogetherinside03.wav",  //Get in here!
				"player/survivor/voice/" + custom_name + "/staytogetherinside04.wav",  //Everyone inside!
				"player/survivor/voice/" + custom_name + "/staytogetherinside05.wav"  //Quit pissin' around and get in here!
			],
			PlayerGrenadeBiker = [
				"player/survivor/voice/" + custom_name + "/grenade01.wav",  //GRENADE!
				"player/survivor/voice/" + custom_name + "/grenade02.wav",  //GRENADE!
				"player/survivor/voice/" + custom_name + "/grenade03.wav",  //FIRE IN THE HOLE!!
				"player/survivor/voice/" + custom_name + "/grenade04.wav",  //GRENADE!
				"player/survivor/voice/" + custom_name + "/grenade05.wav",  //FIRE IN THE HOLE!!
				"player/survivor/voice/" + custom_name + "/grenade06.wav"  //FIRE IN THE HOLE!!
			],
			PlayerGrenadeCarefulBiker = [
				"player/survivor/voice/" + custom_name + "/warncareful02.wav",  //Be careful...
				"player/survivor/voice/" + custom_name + "/warncareful08.wav"  //Carrrefullll...
			],
			PlayerIncapacitatedInitialBiker = [
				"player/survivor/voice/" + custom_name + "/incapacitatedinitial01.wav",  //I'm down!
				"player/survivor/voice/" + custom_name + "/incapacitatedinitial02.wav",  //Damnit, I'm down.
				"player/survivor/voice/" + custom_name + "/incapacitatedinitial03.wav"  //Shit, I need some help.
			],
			PlayerKillConfirmationBiker = [
				"player/survivor/voice/" + custom_name + "/killconfirmation01.wav",  //Got it!
				"player/survivor/voice/" + custom_name + "/killconfirmation02.wav",  //Nailed it!
				"player/survivor/voice/" + custom_name + "/killconfirmation03.wav",  //Down!
				"player/survivor/voice/" + custom_name + "/killconfirmation04.wav",  //That's mine.
				"player/survivor/voice/" + custom_name + "/killconfirmation05.wav",  //Dead!
				"player/survivor/voice/" + custom_name + "/killconfirmation06.wav",  //Popped it!
				"player/survivor/voice/" + custom_name + "/killconfirmation07.wav"  //Popped a cap in his ass!
			],
			PlayerLockTheDoorCheckPointBiker = [
				"player/survivor/voice/" + custom_name + "/closethedoor04.wav",  //You born in a barn? Lock the goddamn door.
				"player/survivor/voice/" + custom_name + "/closethedoor05.wav",  //Lock the door.
				"player/survivor/voice/" + custom_name + "/closethedoor06.wav",  //Lock the freakin' door.
				"player/survivor/voice/" + custom_name + "/closethedoor07.wav",  //Personally, I'm happy to keep fighting. But YOU ladies might want to lock the door.
				"player/survivor/voice/" + custom_name + "/closethedoor08.wav",  //Someone gonna lock that door?
				"player/survivor/voice/" + custom_name + "/closethedoor10.wav",  //Lock the goddman door.
				"player/survivor/voice/" + custom_name + "/closethedoor11.wav",  //Would you lock that sucker?
				"player/survivor/voice/" + custom_name + "/closethedoor12.wav"  //Keep 'em out! Lock that door!
			],
			PlayerLouisPouncedBiker = [
				"player/survivor/voice/" + custom_name + "/hunterlouispounced01.wav",  //Hunter's got Louis!
				"player/survivor/voice/" + custom_name + "/hunterlouispounced02.wav"  //Hunter on Louis!
			],
			PlayerRemarkairport01_burningBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0105.wav",  //The whole damn city's on fire.
				"player/survivor/voice/" + custom_name + "/worldairport0115.wav"  //Holy shit, the whole damn city's on fire.
			],
			PlayerRemarkfarm01_campingBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0101.wav"  //Yer tellin' me people camp for fun?
			],
			PlayerStayTogetherInsideBiker = [
				"player/survivor/voice/" + custom_name + "/staytogetherinside01.wav",  //Get your asses in here!
				"player/survivor/voice/" + custom_name + "/staytogetherinside02.wav",  //Come on ladies, everyone inside!
				"player/survivor/voice/" + custom_name + "/staytogetherinside03.wav",  //Get in here!
				"player/survivor/voice/" + custom_name + "/staytogetherinside04.wav",  //Everyone inside!
				"player/survivor/voice/" + custom_name + "/staytogetherinside05.wav"  //Quit pissin' around and get in here!
			],
			PlayerSuggestHealthBillBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealthbill01.wav",  //Old man - use your health kit.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthbill02.wav"  //Bill, man, heal up
			],
			PlayerSuggestHealthLouisBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealth04.wav",  //You should heal up.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthbill03.wav",  //Bro, heal up.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthlouis01.wav",  //Hey Louie, use your first aid kit.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthlouis02.wav",  //Louis, you gotta heal up, man.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthlouis03.wav"  //Louis, heal fer chrissake.
			],
			PlayerSuggestHealthZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/playersuggesthealth05.wav",  //Someone should use their health pack...
				"player/survivor/voice/" + custom_name + "/playersuggesthealthzoey01.wav",  //Zoey, heal up.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthzoey02.wav",  //Zoey darlin', heal up.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthzoey03.wav",  //Zoey, patch yerself up.
				"player/survivor/voice/" + custom_name + "/playersuggesthealthzoey04.wav"  //Hey Zoey, you oughtta heal.
			],
			PlayerSuggestMeHealthBikerBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerSuggestMeHealthManagerBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerSuggestMeHealthNamVetBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerSuggestMeHealthTeenGirlBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //
			],
			PlayerTransitionBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah24.wav",  //Hey, this is just gettin fun.
				"player/survivor/voice/" + custom_name + "/nicejob04.wav",  //Shit, that was all right
				"player/survivor/voice/" + custom_name + "/nicejob11.wav",  //Well, shit, that was all right
				"player/survivor/voice/" + custom_name + "/reactionpositive03.wav",  //Rock-n-roll!
				"player/survivor/voice/" + custom_name + "/reactionpositive06.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive08.wav",  //Yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive09.wav",  //Yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive10.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/reactionpositive11.wav",  //All right!
				"player/survivor/voice/" + custom_name + "/taunt02.wav"  //HELL YEAH!
			],
			PlayerTransitionCloseBiker = [
				"player/survivor/voice/" + custom_name + "/playertransitionclose01.wav",  //Any zombie fight you can crawl away from means you won it.
				"player/survivor/voice/" + custom_name + "/playertransitionclose02.wav",  //Heh heh, well all right!
				"player/survivor/voice/" + custom_name + "/playertransitionclose03.wav",  //That was close!
				"player/survivor/voice/" + custom_name + "/playertransitionclose04.wav",  //Thought we were goners (lauging)
				"player/survivor/voice/" + custom_name + "/playertransitionclose05.wav",  //This shit ain't easy.
				"player/survivor/voice/" + custom_name + "/playertransitionclose06.wav"  //Killin' vampires looked easier in the brochure, dinnit?
			],
			PlayerWarnHeardBoomerBiker = [
				"player/survivor/voice/" + custom_name + "/heardboomer01.wav",  //I hear a Boomer out there.
				"player/survivor/voice/" + custom_name + "/heardboomer02.wav",  //Careful, I hear a Boomer.
				"player/survivor/voice/" + custom_name + "/heardboomer03.wav",  //There's a Boomer around here.
				"player/survivor/voice/" + custom_name + "/heardboomer04.wav",  //Watch it, we got a Boomer.
				"player/survivor/voice/" + custom_name + "/heardboomer05.wav",  //Hear that Boomer? I'm gonna kill its ass.
				"player/survivor/voice/" + custom_name + "/heardboomer06.wav"  //I hear a Boomer.
			],
			PlayerWarnHeardHunterBiker = [
				"player/survivor/voice/" + custom_name + "/heardhunter01.wav",  //There's a hunter out there.
				"player/survivor/voice/" + custom_name + "/heardhunter02.wav",  //Careful, there's a Hunter around here.
				"player/survivor/voice/" + custom_name + "/heardhunter03.wav",  //I hear a Hunter.
				"player/survivor/voice/" + custom_name + "/heardhunter04.wav",  //Careful, there's a Hunter around here.
				"player/survivor/voice/" + custom_name + "/heardhunter05.wav",  //Sounds like a freakin' Hunter.
				"player/survivor/voice/" + custom_name + "/heardhunter06.wav",  //Hunter out there.
				"player/survivor/voice/" + custom_name + "/heardhunter07.wav",  //There's a Hunter someplace around here.
				"player/survivor/voice/" + custom_name + "/heardhunter08.wav",  //I hear a Hunter. COME ON OUT, WUSSY!
				"player/survivor/voice/" + custom_name + "/heardhunter09.wav"  //YEAH, YOU BETTER HIDE! Sweathshirt wearin' little wuss.
			],
			PlayerWarnHeardSmokerBiker = [
				"player/survivor/voice/" + custom_name + "/heardsmoker01.wav",  //Man, there's a Smoker around here.
				"player/survivor/voice/" + custom_name + "/heardsmoker02.wav",  //Smell that Smoker?
				"player/survivor/voice/" + custom_name + "/heardsmoker03.wav",  //Smoker. Hear it?
				"player/survivor/voice/" + custom_name + "/heardsmoker04.wav",  //I hear a smoker.
				"player/survivor/voice/" + custom_name + "/heardsmoker05.wav",  //Sounds like a Smoker.
				"player/survivor/voice/" + custom_name + "/heardsmoker06.wav",  //Smoker. He's gonna have to use that tongue to choke my foot out of his ass.
				"player/survivor/voice/" + custom_name + "/heardsmoker07.wav"  //Sounds like a Smoker.
			],
			PlayerWarnHeardWitchBiker = [
				"player/survivor/voice/" + custom_name + "/heardwitch01.wav",  //I hear a Witch.
				"player/survivor/voice/" + custom_name + "/heardwitch02.wav",  //Witch, and she's close!
				"player/survivor/voice/" + custom_name + "/heardwitch03.wav",  //There's a Witch around here.
				"player/survivor/voice/" + custom_name + "/heardwitch04.wav",  //Witch, and she's close!
				"player/survivor/voice/" + custom_name + "/heardwitch05.wav",  //Hear that Witch? I'm gonna give her something to cry about.
				"player/survivor/voice/" + custom_name + "/heardwitch06.wav",  //Shhh, I hear a Witch.
				"player/survivor/voice/" + custom_name + "/heardwitch07.wav",  //There's a Witch around here.
				"player/survivor/voice/" + custom_name + "/heardwitch08.wav"  //I hear a Witch.
			],
			PlayerWarnMegaMobBiker = [
				"player/survivor/voice/" + custom_name + "/incoming02.wav",  //Holy shit, here they come!
				"player/survivor/voice/" + custom_name + "/incoming04.wav",  //Incoming!
				"player/survivor/voice/" + custom_name + "/incoming05.wav",  //Get ready ladies!
				"player/survivor/voice/" + custom_name + "/incoming06.wav",  //INCOMING!
				"player/survivor/voice/" + custom_name + "/incoming07.wav",  //This is gonna be good.
				"player/survivor/voice/" + custom_name + "/incoming08.wav",  //Shit, Get ready!
				"player/survivor/voice/" + custom_name + "/minifinalegetready01.wav",  //Get ready!
				"player/survivor/voice/" + custom_name + "/minifinalegetready02.wav",  //Bring it on!
				"player/survivor/voice/" + custom_name + "/minifinalegetready03.wav",  //Here they come!
				"player/survivor/voice/" + custom_name + "/minifinalegetready04.wav",  //They're coming!
				"player/survivor/voice/" + custom_name + "/reactionnegative04.wav",  //Holy jesus.
				"player/survivor/voice/" + custom_name + "/reactionnegative05.wav",  //Shit
				"player/survivor/voice/" + custom_name + "/reactionnegative06.wav",  //Ah shit.
				"player/survivor/voice/" + custom_name + "/reactionnegative09.wav",  //Ahhhhh.
				"player/survivor/voice/" + custom_name + "/reactionnegative10.wav",  //Effin hell.
				"player/survivor/voice/" + custom_name + "/violenceawe03.wav",  //Holy crap.
				"player/survivor/voice/" + custom_name + "/violenceawe05.wav",  //Holy shit...
				"player/survivor/voice/" + custom_name + "/violenceawe07.wav"  //<laugh>Whoa-ho-ho, YEAH!
			],
			PlayerWarnWitchAngryBiker = [
				"player/survivor/voice/" + custom_name + "/witchgettingangry01.wav",  //You got a death wish? Leave that witch alone!
				"player/survivor/voice/" + custom_name + "/witchgettingangry02.wav",  //Stop spookin' the effin witch!
				"player/survivor/voice/" + custom_name + "/witchgettingangry03.wav",  //Oh shit, the witch's gettin' riled up!
				"player/survivor/voice/" + custom_name + "/witchgettingangry04.wav"  //Watch it, that witch is gettin' pissed!
			],
			PlayerZoeyPouncedBiker = [
				"player/survivor/voice/" + custom_name + "/hunterzoeypounced01.wav",  //Hunter's got Zoey!
				"player/survivor/voice/" + custom_name + "/hunterzoeypounced02.wav",  //Hunter on  Zoey!
				"player/survivor/voice/" + custom_name + "/hunterzoeypounced03.wav"  //Hey, hunter's got Zoey!
			],
			SurvivorCaughtVomitBiker = [
				"player/survivor/voice/" + custom_name + "/generic03.wav",  //He puked on me!
				"player/survivor/voice/" + custom_name + "/reactionboomervomit01.wav",  //
				"player/survivor/voice/" + custom_name + "/reactionboomervomit02.wav",  //
				"player/survivor/voice/" + custom_name + "/reactionboomervomit03.wav",  //
				"player/survivor/voice/" + custom_name + "/reactionboomervomit04.wav",  //
				"player/survivor/voice/" + custom_name + "/reactionboomervomit05.wav"  //
			],
			SurvivorCoughingBiker = [
				"player/survivor/voice/" + custom_name + "/cough01.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough02.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough03.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough04.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough05.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough06.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough07.wav"  //[Coughing from smoke]
			],
			SurvivorCoughingDeathBiker = [
				"player/survivor/voice/" + custom_name + "/cough01.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough02.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough03.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough04.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough05.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough06.wav",  //[Coughing from smoke]
				"player/survivor/voice/" + custom_name + "/cough07.wav"  //[Coughing from smoke]
			],
			SurvivorDeathBiker = [
				"player/survivor/voice/" + custom_name + "/deathscream01.wav",  //[Death rattle]
				"player/survivor/voice/" + custom_name + "/deathscream02.wav",  //[Death rattle]
				"player/survivor/voice/" + custom_name + "/deathscream03.wav",  //[Death rattle]
				"player/survivor/voice/" + custom_name + "/deathscream04.wav",  //[Death rattle]
				"player/survivor/voice/" + custom_name + "/deathscream05.wav",  //[Death rattle] Mama...
				"player/survivor/voice/" + custom_name + "/deathscream06.wav",  //[Short quick death scream]
				"player/survivor/voice/" + custom_name + "/deathscream07.wav",  //[Short quick death scream]
				"player/survivor/voice/" + custom_name + "/deathscream08.wav",  //[Loud painful death scream]
				"player/survivor/voice/" + custom_name + "/deathscream09.wav",  //[Loud painful death scream]
				"player/survivor/voice/" + custom_name + "/deathscream10.wav"  //[Short quick death scream]
			],
			SurvivorGrabbedByTongueBiker = [
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker01a.wav",  //no, No, NO, NOOOOOOO!!!!!!!!!
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker01a.wav",  //no, No, NO, NOOOOOOO!!!!!!!!!
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker02a.wav",  //no, No, NO, NOOOOOOO!!!!!!!!!
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker02b.wav",  //no, No, NO, NOOOOOOO!!!!!!!!!
				"player/survivor/voice/" + custom_name + "/grabbedbysmoker03.wav"  //no, No, NO, NO!!!
			],
			SurvivorNearFinaleBiker = [
				"player/survivor/voice/" + custom_name + "/finaleahead01.wav",  //We're almost there!
				"player/survivor/voice/" + custom_name + "/finaleahead02.wav",  //We're almost out of here!
				"player/survivor/voice/" + custom_name + "/finaleahead03.wav",  //Now there's a sight for sore eyes. Looks like we're gonna make it, kids.
				"player/survivor/voice/" + custom_name + "/finaleahead04.wav"  //Hey, we're almost outta this shithole. I told you I'd get you here.
			],
			SurvivorTankPoundBiker = [
				"player/survivor/voice/" + custom_name + "/tankpound01.wav",  //Get this thing off me!
				"player/survivor/voice/" + custom_name + "/tankpound02.wav",  //This thing's poundin the hell outta me!
				"player/survivor/voice/" + custom_name + "/tankpound03.wav",  //This thing's killing me!
				"player/survivor/voice/" + custom_name + "/tankpound04.wav"  //I gotta Tank on me!
			],
			SurvivorVocalizeBackUpBiker = [
				"player/survivor/voice/" + custom_name + "/backup01.wav",  //BackBackBack!
				"player/survivor/voice/" + custom_name + "/backup02.wav",  //Back up!
				"player/survivor/voice/" + custom_name + "/backup03.wav",  //Back up!
				"player/survivor/voice/" + custom_name + "/backup04.wav",  //Get the hell back!
				"player/survivor/voice/" + custom_name + "/backup05.wav"  //Back it up!
			],
			SurvivorVocalizeEmphaticGoBiker = [
				"player/survivor/voice/" + custom_name + "/emphaticgo01.wav",  //GET MOVING!
				"player/survivor/voice/" + custom_name + "/emphaticgo02.wav",  //MOVE!
				"player/survivor/voice/" + custom_name + "/emphaticgo03.wav",  //Go go go!
				"player/survivor/voice/" + custom_name + "/emphaticgo04.wav",  //GO!
				"player/survivor/voice/" + custom_name + "/emphaticgo05.wav",  //Get your rear in gear!
				"player/survivor/voice/" + custom_name + "/emphaticgo06.wav"  //Get your rear in gear!
			],
			SurvivorVocalizeFollowMeBiker = [
				"player/survivor/voice/" + custom_name + "/followme01.wav",  //Come on, this way.
				"player/survivor/voice/" + custom_name + "/followme02.wav",  //Follow me!
				"player/survivor/voice/" + custom_name + "/followme03.wav",  //Follow me.
				"player/survivor/voice/" + custom_name + "/followme04.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme05.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme06.wav",  //I got the lead - follow me.
				"player/survivor/voice/" + custom_name + "/followme07.wav",  //I got the lead.
				"player/survivor/voice/" + custom_name + "/followme09.wav"  //This way, kids.
			],
			SurvivorVocalizeGoingToDieBiker = [
				"player/survivor/voice/" + custom_name + "/goingtodie01.wav",  //I don't feel so good.
				"player/survivor/voice/" + custom_name + "/goingtodie03.wav",  //Man, I feel like you guys look.
				"player/survivor/voice/" + custom_name + "/goingtodie04.wav",  //I've, I've felt better.
				"player/survivor/voice/" + custom_name + "/goingtodie05.wav",  //This is turning into one of those days
				"player/survivor/voice/" + custom_name + "/goingtodie06.wav",  //I have definitely felt better.
				"player/survivor/voice/" + custom_name + "/goingtodie08.wav",  //Even my ass hurts.
				"player/survivor/voice/" + custom_name + "/goingtodie09.wav",  //This is startin' to get to me.
				"player/survivor/voice/" + custom_name + "/goingtodie11.wav",  //I don't wanna sound like a sissy, but I'm hurt bad.
				"player/survivor/voice/" + custom_name + "/goingtodie12.wav",  //I think I'm pretty screwed up.
				"player/survivor/voice/" + custom_name + "/goingtodie13.wav",  //I'm hurtin'.
				"player/survivor/voice/" + custom_name + "/goingtodie14.wav",  //Damnit, I am messed up.
				"player/survivor/voice/" + custom_name + "/goingtodie15.wav",  //Shit, this just hurts.
				"player/survivor/voice/" + custom_name + "/goingtodie16.wav",  //Oooh mama, this hurts.
				"player/survivor/voice/" + custom_name + "/goingtodie17.wav",  //I feel terrible.
				"player/survivor/voice/" + custom_name + "/goingtodie18.wav",  //God, I feel awful.
				"player/survivor/voice/" + custom_name + "/goingtodie19.wav",  //I think I'm gonna puke.
				"player/survivor/voice/" + custom_name + "/goingtodie20.wav",  //I'm feelin' pretty shitty and a little woozy, the woozy is kinda fun
				"player/survivor/voice/" + custom_name + "/goingtodie22.wav",  //Shit, I just hurt.
				"player/survivor/voice/" + custom_name + "/goingtodie23.wav",  //I feel like shit.
				"player/survivor/voice/" + custom_name + "/goingtodie24.wav",  //I ain't doing so good.
				"player/survivor/voice/" + custom_name + "/goingtodie25.wav",  //I feel pretty crappy.
				"player/survivor/voice/" + custom_name + "/goingtodie26.wav",  //I feel like guys look after I've punched them in the face
				"player/survivor/voice/" + custom_name + "/goingtodielight01.wav",  //[loud exhale] Shit... [blows air through pursed lips]
				"player/survivor/voice/" + custom_name + "/goingtodielight04.wav",  //Ah christ this hurts like hell.
				"player/survivor/voice/" + custom_name + "/goingtodielight07.wav",  //Goddammit, this hurts.
				"player/survivor/voice/" + custom_name + "/goingtodielight13.wav",  //Ah man, somethin' don't feel right
				"player/survivor/voice/" + custom_name + "/goingtodielight14.wav",  //This [cough] hurts.
				"player/survivor/voice/" + custom_name + "/goingtodielight15.wav",  //I'm pretty hosed.
				"player/survivor/voice/" + custom_name + "/goingtodielight16.wav"  //Killed by vampires. What a goddamn disgrace.
			],
			SurvivorVocalizeGoingToDie3Biker = [
				"player/survivor/voice/" + custom_name + "/goingtodie02.wav",  //I don't, I don't know if I am going to make it.
				"player/survivor/voice/" + custom_name + "/goingtodie07.wav",  //I need to get patched up.
				"player/survivor/voice/" + custom_name + "/goingtodie10.wav",  //I ain't gonna make it much further.
				"player/survivor/voice/" + custom_name + "/goingtodie21.wav",  //Sheeet, I ain't gonna make it.
				"player/survivor/voice/" + custom_name + "/goingtodielight11.wav"  //I ain't gonna let these goddamn vampires beat me.
			],
			SurvivorVocalizeGoingToDieAloneBiker = [
				"player/survivor/voice/" + custom_name + "/nervoushumming01.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming02.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming03.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming04.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming05.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming06.wav",  //[Not-So-Nervous Humming]
				"player/survivor/voice/" + custom_name + "/nervoushumming07.wav"  //[Not-So-Nervous Humming with lame zombie lyrics]
			],
			SurvivorVocalizeLookOutBiker = [
				"player/survivor/voice/" + custom_name + "/lookout01.wav",  //Look out!
				"player/survivor/voice/" + custom_name + "/lookout02.wav",  //Look out!
				"player/survivor/voice/" + custom_name + "/lookout03.wav",  //Watch out!
				"player/survivor/voice/" + custom_name + "/lookout04.wav",  //Watch out!
				"player/survivor/voice/" + custom_name + "/lookout05.wav",  //Watch your ass!
				"player/survivor/voice/" + custom_name + "/lookout06.wav"  //Heads up!
			],
			SurvivorVocalizeThisWayBiker = [
				"player/survivor/voice/" + custom_name + "/followme01.wav",  //Come on, this way.
				"player/survivor/voice/" + custom_name + "/followme02.wav",  //Follow me!
				"player/survivor/voice/" + custom_name + "/followme03.wav",  //Follow me.
				"player/survivor/voice/" + custom_name + "/followme04.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme05.wav",  //This way.
				"player/survivor/voice/" + custom_name + "/followme06.wav",  //I got the lead - follow me.
				"player/survivor/voice/" + custom_name + "/followme07.wav",  //I got the lead.
				"player/survivor/voice/" + custom_name + "/followme09.wav"  //This way, kids.
			],
			SurvivorVocalizeWaitHereBiker = [
				"player/survivor/voice/" + custom_name + "/waithere01.wav",  //Everyone stop!
				"player/survivor/voice/" + custom_name + "/waithere02.wav",  //Stop for a second!
				"player/survivor/voice/" + custom_name + "/waithere04.wav",  //Hold up a minute!
				"player/survivor/voice/" + custom_name + "/waithere05.wav",  //Hold up!
				"player/survivor/voice/" + custom_name + "/waithere06.wav",  //Everyone stop!
				"player/survivor/voice/" + custom_name + "/waithere07.wav",  //Hold up - I'm tired of runnin from these pussies.
				"player/survivor/voice/" + custom_name + "/waithere08.wav"  //Park your ass for a sec.
			],
			PlayerLedgeHangEndBiker = [
				"player/survivor/voice/" + custom_name + "/ledgehangend01.wav",  //I'M SLIPPING! PULL ME UP!
				"player/survivor/voice/" + custom_name + "/ledgehangend02.wav",  //GET OVER HERE OR I'M GONNA FALL!
				"player/survivor/voice/" + custom_name + "/ledgehangend03.wav",  //I CAN'T HOLD ON - I'M GONNA FALL!
				"player/survivor/voice/" + custom_name + "/ledgehangend04.wav",  //SHIT...I'M GONNA FALL!
				"player/survivor/voice/" + custom_name + "/ledgehangend05.wav",  //I'M GONNA FALL!
				"player/survivor/voice/" + custom_name + "/ledgehangend06.wav"  //I CAN'T HOLD ON!
			],
			PlayerLedgeHangMiddleBiker = [
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle01.wav",  //Okay, joke's over, get your ass over here and pull me up!
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle02.wav",  //Someone pull me up already!
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle03.wav",  //I ain't gonna last hanging here much longer.
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle04.wav",  //I'm not screwing around, I really need some help over here!
				"player/survivor/voice/" + custom_name + "/ledgehangmiddle05.wav"  //For chrissake, pull me up already.
			],
			PlayerLedgeHangStartBiker = [
				"player/survivor/voice/" + custom_name + "/ledgehangstart01.wav",  //Hey, I could use a hand.
				"player/survivor/voice/" + custom_name + "/ledgehangstart02.wav",  //Get your ass over here and help me up.
				"player/survivor/voice/" + custom_name + "/ledgehangstart03.wav",  //Someone want to help me out here?
				"player/survivor/voice/" + custom_name + "/ledgehangstart04.wav",  //Hello. I could use a hand.
				"player/survivor/voice/" + custom_name + "/ledgehangstart05.wav",  //Someone wannna give me a hand?
				"player/survivor/voice/" + custom_name + "/ledgehangstart06.wav",  //I'm hanging here.
				"player/survivor/voice/" + custom_name + "/ledgehangstart07.wav",  //I ain't hangin' here for fun, get over here and help me.
				"player/survivor/voice/" + custom_name + "/ledgehangstart08.wav",  //Hey, I really need a hand.
				"player/survivor/voice/" + custom_name + "/ledgehangstart09.wav"  //Could use a hand here.
			],
			DoubleDeath2Biker = [
				"player/survivor/voice/" + custom_name + "/doubledeathresponse02.wav"  //Just two of us left. Shit.
			],
			SurvivorDiedBillBiker = [
				"player/survivor/voice/" + custom_name + "/namebill01.wav",  //Bill! (loud)
				"player/survivor/voice/" + custom_name + "/namebill02.wav"  //Billllll! (loud)
			],
			SurvivorDiedLouisBiker = [
				"player/survivor/voice/" + custom_name + "/namelouis01.wav",  //Louis! (loud)
				"player/survivor/voice/" + custom_name + "/namelouis02.wav"  //Louissss! (loud)
			],
			SurvivorDiedZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/namezoey01.wav",  //Zoey! (loud)
				"player/survivor/voice/" + custom_name + "/namezoey02.wav"  //Zoeyyyyy! (loud)
			],
			PickupAutoShotgunGroovyLouisBiker = [
				"player/survivor/voice/" + custom_name + "/generic63.wav"  //Groovy.
			],
			PickupAutoShotgunGroovyZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/generic63.wav"  //Groovy.
			],
			SurvivorPickupAutoShotgunBiker = [
				"player/survivor/voice/" + custom_name + "/takeautoshotgun01.wav",  //Got an auto shotgun.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun02.wav",  //Come to daddy my sweet shotgun.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun03.wav",  //Now this is a shotgun I can love.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun04.wav",  //Those bastards think they're sick now, wait'll they get a taste of this.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun05.wav",  //Got an auto shotgun.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun06.wav",  //Come to daddy my sweet shotgun.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun07.wav",  //Now this is a shotgun I can love.
				"player/survivor/voice/" + custom_name + "/takeautoshotgun08.wav"  //Huh, this shotgun is more my style.
			],
			SurvivorPickupFirstAidKitBiker = [
				"player/survivor/voice/" + custom_name + "/takefirstaid01.wav",  //Ho oh, some first aid.
				"player/survivor/voice/" + custom_name + "/takefirstaid02.wav",  //Grabbing First Aid.
				"player/survivor/voice/" + custom_name + "/takefirstaid03.wav",  //Grabbing First Aid.
				"player/survivor/voice/" + custom_name + "/takefirstaid04.wav"  //Might need these.
			],
			SurvivorPickupHuntingRifleBiker = [
				"player/survivor/voice/" + custom_name + "/takesniper01.wav",  //A hunting rifle. Nice.
				"player/survivor/voice/" + custom_name + "/takesniper02.wav"  //Now that is a sweet ass scope.
			],
			SurvivorPickupMolotovBiker = [
				"player/survivor/voice/" + custom_name + "/takemolotov01.wav",  //Allright, cocktails! [to self]
				"player/survivor/voice/" + custom_name + "/takemolotov02.wav",  //Grabbing a Molotov. [to self]
				"player/survivor/voice/" + custom_name + "/takemolotov03.wav"  //Fire! (to self)
			],
			SurvivorPickupPainPillsBiker = [
				"player/survivor/voice/" + custom_name + "/takepills01.wav",  //Might need these.
				"player/survivor/voice/" + custom_name + "/takepills02.wav",  //Grabbing pills
				"player/survivor/voice/" + custom_name + "/takepills03.wav"  //Hey, a little pick me up.
			],
			SurvivorPickupPipeBombBiker = [
				"player/survivor/voice/" + custom_name + "/takepipebomb01.wav",  //Ah great, homemade explosives.
				"player/survivor/voice/" + custom_name + "/takepipebomb02.wav",  //Grabbing a pipe bomb.
				"player/survivor/voice/" + custom_name + "/takepipebomb03.wav",  //Grabbing a pipe bomb.
				"player/survivor/voice/" + custom_name + "/takepipebomb04.wav",  //This'll blow some shit up.
				"player/survivor/voice/" + custom_name + "/takepipebomb05.wav"  //This'll blow the crap outta something.
			],
			SurvivorPickupPumpShotgunBiker = [
				"player/survivor/voice/" + custom_name + "/takeshotgun01.wav",  //Shotgun! Allright folks, I'm on crowd control.
				"player/survivor/voice/" + custom_name + "/takeshotgun02.wav",  //Grabbing a shotgun.
				"player/survivor/voice/" + custom_name + "/takeshotgun03.wav",  //Grabbing a shotgun.
				"player/survivor/voice/" + custom_name + "/takeshotgun04.wav"  //I'll take this room sweeper.
			],
			SurvivorPickupRifleBiker = [
				"player/survivor/voice/" + custom_name + "/takeassaultrifle01.wav",  //This oughtta put the fear a' God into 'em.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle02.wav",  //Gonna rack some up with this assault rifle.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle03.wav",  //This assault rifle should help.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle04.wav",  //This assault rifle should help.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle05.wav",  //I'm grabbing this rifle.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle06.wav",  //This oughtta put the fear a' God into 'em.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle07.wav",  //Gonna rack some up with this assault rifle.
				"player/survivor/voice/" + custom_name + "/takeassaultrifle08.wav"  //This assault rifle should help.
			],
			SurvivorPickupSecondPistolBiker = [
				"player/survivor/voice/" + custom_name + "/takepistol01.wav",  //A little double pistol action.
				"player/survivor/voice/" + custom_name + "/takepistol02.wav",  //I'm taking an extra pistol.
				"player/survivor/voice/" + custom_name + "/takepistol03.wav",  //Double my fun.
				"player/survivor/voice/" + custom_name + "/takepistol04.wav"  //Two pistols. Hell yeah.
			],
			SurvivorPickupSMGBiker = [
				"player/survivor/voice/" + custom_name + "/takesubmachinegun01.wav",  //Full auto - right on.
				"player/survivor/voice/" + custom_name + "/takesubmachinegun02.wav",  //Whoah, full auto. Everybody stand back.
				"player/survivor/voice/" + custom_name + "/takesubmachinegun03.wav"  //Grabbing a machinegun
			],
			TakeShotgunGroovyZoey2Biker = [
				"player/survivor/voice/" + custom_name + "/genericresponses09.wav",  //Allright, then, let's do it.
				"player/survivor/voice/" + custom_name + "/reactionpositive08.wav",  //Yeah!
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction07.wav"  //A-frickin'-men.
			],
			PlayerGettingRevivedBiker = [
				"player/survivor/voice/" + custom_name + "/gettingrevived01.wav",  //I'm okay.
				"player/survivor/voice/" + custom_name + "/gettingrevived02.wav",  //No, no, I'm allright.
				"player/survivor/voice/" + custom_name + "/gettingrevived03.wav",  //[groan]
				"player/survivor/voice/" + custom_name + "/gettingrevived04.wav",  //Hell if I know.
				"player/survivor/voice/" + custom_name + "/gettingrevived05.wav",  //Ah, hey, is this my blood?
				"player/survivor/voice/" + custom_name + "/gettingrevived06.wav",  //[groan2]
				"player/survivor/voice/" + custom_name + "/gettingrevived07.wav",  //I'll make it.
				"player/survivor/voice/" + custom_name + "/gettingrevived08.wav",  //I'll live, I'll live.
				"player/survivor/voice/" + custom_name + "/gettingrevived09.wav",  //Uh, how's my face?
				"player/survivor/voice/" + custom_name + "/gettingrevived10.wav",  //I've been better.
				"player/survivor/voice/" + custom_name + "/gettingrevived13.wav",  //Shit. I hope I don't NEED all that blood.
				"player/survivor/voice/" + custom_name + "/gettingrevived14.wav",  //Good thing I'm indestructible.
				"player/survivor/voice/" + custom_name + "/gettingrevived15.wav",  //You... should see the other hundred guys.
				"player/survivor/voice/" + custom_name + "/gettingrevived16.wav"  //You think they'll call us heroes someday?
			],
			PlayerHealOtherBiker = [
				"player/survivor/voice/" + custom_name + "/healother01.wav",  //Lemme patch you up.
				"player/survivor/voice/" + custom_name + "/healother02.wav",  //Hold on, lemme patch you up.
				"player/survivor/voice/" + custom_name + "/healother03.wav",  //Stand still, I'm gonna fix ya.
				"player/survivor/voice/" + custom_name + "/healother04.wav",  //Don't move, I'm healin' ya.
				"player/survivor/voice/" + custom_name + "/healother05.wav",  //C'mon. lemme heal ya up.
				"player/survivor/voice/" + custom_name + "/healother06.wav",  //Quit fidgitin' and let me heal ya.
				"player/survivor/voice/" + custom_name + "/healother07.wav"  //Goddamit, quit fussin and let me heal ya.
			],
			PlayerHealOtherCombatBiker = [
				"player/survivor/voice/" + custom_name + "/healothercombat01.wav",  //Hold on! Hold on!
				"player/survivor/voice/" + custom_name + "/healothercombat02.wav",  //Hold on! I'm gonna patch ya up!
				"player/survivor/voice/" + custom_name + "/healothercombat03.wav",  //Don't move, I'm healin ya!
				"player/survivor/voice/" + custom_name + "/healothercombat04.wav",  //Don't go nowhere, I gotta heal ya.
				"player/survivor/voice/" + custom_name + "/healothercombat05.wav",  //Lemme heal ya!
				"player/survivor/voice/" + custom_name + "/healothercombat06.wav",  //Hang on. I got ya!
				"player/survivor/voice/" + custom_name + "/healothercombat07.wav"  //Stand still, I'm healin' ya!
			],
			PlayerLedgeSaveBiker = [
				"player/survivor/voice/" + custom_name + "/ledgesave01.wav",  //Come on, don't worry, I gotcha.  Up you go.
				"player/survivor/voice/" + custom_name + "/ledgesave02.wav",  //You think I was gonna let you just hang around all day?  Get your ass up here.
				"player/survivor/voice/" + custom_name + "/ledgesave03.wav",  //You think I was gonna let you just hang around all day?  Get your ass up here.
				"player/survivor/voice/" + custom_name + "/ledgesave04.wav",  //Come on, don't worry, I gotcha.  Up you go.
				"player/survivor/voice/" + custom_name + "/ledgesave05.wav",  //You ain't gonna fall, I gotcha. Quit blubberin' ya little baby, now get your ass back up here.
				"player/survivor/voice/" + custom_name + "/ledgesave06.wav",  //You ain't gonna fall, I gotcha. Get yer ass up here!
				"player/survivor/voice/" + custom_name + "/ledgesave07.wav"  //You ain't gonna fall, I gotcha. Quit blubberin and get back up here.
			],
			PlayerReviveFriendBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriend01.wav",  //Hang on, hang on, I'm here. Relax, I gotcha. Get up. Get up now. We gotta move.
				"player/survivor/voice/" + custom_name + "/revivefriend02.wav",  //Woah, I thought you were hosed for sure, but I think I can get you back on your feet.
				"player/survivor/voice/" + custom_name + "/revivefriend03.wav",  //Come on, lazy - can't have ya laying around all day. We gotta get moving.  Let me get you up.
				"player/survivor/voice/" + custom_name + "/revivefriend04.wav",  //You look like shit, but I think I can get you up on your feet enough to keep moving.
				"player/survivor/voice/" + custom_name + "/revivefriend05.wav",  //C'mon, let's get you on your feet. You look pretty messed up, but that might help you out a little if you know what I mean.
				"player/survivor/voice/" + custom_name + "/revivefriend06.wav",  //Don't worry, don't worry, we all go down sometime. Lemme get you up.
				"player/survivor/voice/" + custom_name + "/revivefriend07.wav"  //Didn't think you were gettin' back up.
			],
			PlayerReviveFriendCriticalBiker = [
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend01.wav",  //I gotcha, I gotcha. Man, you took a real beatin'. We gotta find you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend02.wav",  //No worries - I gotcha, I gotcha. Man, you took a real beatin'. We gotta find you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend03.wav",  //Okay, okay.  Come on.  Man, you are on death's door.  We gotta get you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend04.wav",  //Ah shit, I can't lie, you are messed up bad. We gotta get you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend05.wav",  //I can help you up, but you ain't gonna last.  We gotta get you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend06.wav",  //Okay, let's get you - Oh, man, they really tore you up.  We gotta get you some first aid,  cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend07.wav",  //I can get you up, but oh shit, We gotta get you some first aid, cuz you go down like this again and it's over.
				"player/survivor/voice/" + custom_name + "/revivecriticalfriend08.wav"  //Relax, I gotcha.  But, shit, we gotta get you some first aid, cuz you go down like this again and it's over.
			],
			PlayerReviveFriendLoudBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendloud01.wav",  //Hold on. I'm gonna get you up!
				"player/survivor/voice/" + custom_name + "/revivefriendloud10.wav",  //Come on, come on! Get up!
				"player/survivor/voice/" + custom_name + "/revivefriendloud11.wav",  //Get your ass up, let's go!
				"player/survivor/voice/" + custom_name + "/revivefriendloud12.wav"  //Come on, come on! Get up!
			],
			PlayerReviveFriendLoudBillBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendloud02.wav",  //Get the hell up, Bill!
				"player/survivor/voice/" + custom_name + "/revivefriendloud04.wav",  //C'mon Bill, get up!
				"player/survivor/voice/" + custom_name + "/revivefriendloud08.wav",  //I ain't gonna carry you, Bill. Get the hell up!
				"player/survivor/voice/" + custom_name + "/revivefriendloud09.wav"  //Let's go, Bill. Up an' at 'em!
			],
			PlayerReviveFriendLoudLouisBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendloud05.wav",  //Get up, Louis!
				"player/survivor/voice/" + custom_name + "/revivefriendloud07.wav"  //Let's go, Louis. Get up!
			],
			PlayerReviveFriendLoudZoeyBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendloud03.wav",  //Zoey, let's go, get up!
				"player/survivor/voice/" + custom_name + "/revivefriendloud06.wav"  //C'mon Zoey, get the hell up!
			],
			PlayerReviveFriendShortBiker = [
				"player/survivor/voice/" + custom_name + "/revivefriendb01.wav",  //Up and at 'em.
				"player/survivor/voice/" + custom_name + "/revivefriendb02.wav",  //Come on up!
				"player/survivor/voice/" + custom_name + "/revivefriendb03.wav",  //Up ya go.
				"player/survivor/voice/" + custom_name + "/revivefriendb04.wav",  //You'll be okay.
				"player/survivor/voice/" + custom_name + "/revivefriendb05.wav",  //I got ya.
				"player/survivor/voice/" + custom_name + "/revivefriendb06.wav",  //Up we go.
				"player/survivor/voice/" + custom_name + "/revivefriendb07.wav",  //Hell, you're fine.
				"player/survivor/voice/" + custom_name + "/revivefriendb08.wav",  //It don't look bad.
				"player/survivor/voice/" + custom_name + "/revivefriendb09.wav",  //Come on up.
				"player/survivor/voice/" + custom_name + "/revivefriendb10.wav",  //Let's move!
				"player/survivor/voice/" + custom_name + "/revivefriendb11.wav"  //You're fine.
			],
			PlayerAirportIntroBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0102.wav",  //Working plane means working airport. I say we head there.
				"player/survivor/voice/" + custom_name + "/worldairport0104.wav",  //That plane's headed right for the airport. I say we head there too.
				"player/survivor/voice/" + custom_name + "/worldairport0106.wav",  //I sure as hell wouldn't mind flyin' outta here. Let's head to the airport.
				"player/survivor/voice/" + custom_name + "/worldairport0107.wav",  //That plane's headed for the airport and the airport ain't far from here. If nobody's got a better idea, I say we head for the airport too.
				"player/survivor/voice/" + custom_name + "/worldairport0114.wav"  //That plane's headed right for the airport. I say we head there too.
			],
			PlayerAirportIntrobcBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0513.wav"  //I hate planes.
			],
			PlayerAirportIntrofbBiker = [
				"player/survivor/voice/" + custom_name + "/worldairport0102.wav"  //Working plane means working airport. I say we head there.
			],
			PlayerFarmHouseIntroBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouseintro01.wav",  //I heard the military's got a safe zone north of here. We just gotta follow the train tracks.
				"player/survivor/voice/" + custom_name + "/worldfarmhouseintro05.wav"  //We ain't gonna survive on our own forever. I heard the military's got a safe zone north of here. We just gotta follow the train tracks.
			],
			PlayerFarmHouseIntro2Biker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhouseintro03.wav"  //Yeah, I heard that, too.
			],
			PlayerHospitalIntro02Biker = [
				"player/survivor/voice/" + custom_name + "/worldhospital0201.wav"  //I hate subways.
			],
			PlayerCoverMeHealBiker = [
				"player/survivor/voice/" + custom_name + "/coverme01.wav",  //Cover me!
				"player/survivor/voice/" + custom_name + "/coverme02.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme03.wav",  //Watch my back
				"player/survivor/voice/" + custom_name + "/coverme04.wav",  //Cover me!
				"player/survivor/voice/" + custom_name + "/coverme05.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme06.wav",  //Watch my back
				"player/survivor/voice/" + custom_name + "/coverme08.wav",  //Watch my back! But don't stare at my ass.
				"player/survivor/voice/" + custom_name + "/coverme09.wav",  //Watch my back! But don't stare at my ass.
				"player/survivor/voice/" + custom_name + "/coverme10.wav",  //Cover my ass.
				"player/survivor/voice/" + custom_name + "/coverme11.wav",  //Healing, cover me.
				"player/survivor/voice/" + custom_name + "/coverme12.wav",  //Wait up, I'm healing.
				"player/survivor/voice/" + custom_name + "/coverme13.wav",  //Hold on, gotta heal.
				"player/survivor/voice/" + custom_name + "/coverme14.wav"  //I'm healing.
			],
			SurvivorSpottedWeaponBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons03.wav",  //Buncha guns over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedWeaponPistolAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav"  //Weapons here!
			],
			PlayerRelaxedSighBiker = [
				"player/survivor/voice/" + custom_name + "/painreliefsigh02.wav",  //ah
				"player/survivor/voice/" + custom_name + "/painreliefsigh03.wav",  //ah
				"player/survivor/voice/" + custom_name + "/painreliefsigh04.wav"  //ohh
			],
			PlayerUseAdrenalineBiker = [
				"player/survivor/voice/" + custom_name + "/painreliefsigh05.wav",  //ohh
				"player/survivor/voice/" + custom_name + "/hurrah11.wav",  //YEAAH!
				"player/survivor/voice/" + custom_name + "/reactionpositive11.wav"  //Alllll RIGHT!
			],
			PlayerUsingDefibrillatorBiker = [
				"player/survivor/voice/" + custom_name + "/areaclear01.wav",  //Clear!
				"player/survivor/voice/" + custom_name + "/reactionnegative03.wav",  //Damn...
				"player/survivor/voice/" + custom_name + "/hurryup09.wav"  //COME ON, let's GO!
			],
			PlayerRevivedByDefibrillatorBiker = [
				"player/survivor/voice/" + custom_name + "/gettingrevived03.wav",  //[gasp for breath]
				"player/survivor/voice/" + custom_name + "/gettingrevived06.wav",  //[gasp for breath]
				"player/survivor/voice/" + custom_name + "/reactionstartled04.wav",  //WHAT THE--
				"player/survivor/voice/" + custom_name + "/hurtmajor07.wav"  //AAHHH!
			],
			PlayerRevivedByDefibrillator2Biker = [
				"player/survivor/voice/" + custom_name + "/hurrah01.wav",  //ALLL RIGHHT!
				"player/survivor/voice/" + custom_name + "/violenceawe04.wav",  //Holy shitt...
				"player/survivor/voice/" + custom_name + "/violenceawe07.wav",  //Whoa. YEAH!
				"player/survivor/voice/" + custom_name + "/totherescuethanks03.wav"  //Thanks for not forgetting me!
			],
			SurvivorPouncedByHunterBiker = [
				"player/survivor/voice/" + custom_name + "/screamwhilepounced01.wav",  //GET IT OFF!
				"player/survivor/voice/" + custom_name + "/screamwhilepounced02.wav",  //GET IT OFF! [angry]
				"player/survivor/voice/" + custom_name + "/screamwhilepounced03.wav",  //GET IT OFF
				"player/survivor/voice/" + custom_name + "/screamwhilepounced04.wav"  //GET IT OFF GET IT OFF
			],
			PlayerGrabbedByJockeyBiker = [
				"player/survivor/voice/" + custom_name + "/screamwhilepounced01.wav",  //GET IT OFF!
				"player/survivor/voice/" + custom_name + "/screamwhilepounced02.wav",  //GET IT OFF! [angry]
				"player/survivor/voice/" + custom_name + "/fallshort01.wav",  //OH NO!
				"player/survivor/voice/" + custom_name + "/reactionnegative06.wav",  //Oh SHIT!
				"player/survivor/voice/" + custom_name + "/reactionnegative07.wav",  //DAMN IT!
				"player/survivor/voice/" + custom_name + "/swear15.wav"  //SON OF A BITCH.
			],
			SurvivorJockeyHurtMajorBiker = [
				"player/survivor/voice/" + custom_name + "/screamwhilepounced01.wav",  //GET IT OFF!
				"player/survivor/voice/" + custom_name + "/screamwhilepounced02.wav",  //GET IT OFF! [angry]
				"player/survivor/voice/" + custom_name + "/hurtmajor02.wav",  //[pain noise - ahh]
				"player/survivor/voice/" + custom_name + "/hurtmajor05.wav",  //[pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtminor02.wav"  //[pain noise - short minor pain]
			],
			SurvivorJockeyHurtMinorBiker = [
				"player/survivor/voice/" + custom_name + "/screamwhilepounced01.wav",  //GET IT OFF!
				"player/survivor/voice/" + custom_name + "/screamwhilepounced02.wav",  //GET IT OFF! [angry]
				"player/survivor/voice/" + custom_name + "/hurtmajor02.wav",  //[pain noise - ahh]
				"player/survivor/voice/" + custom_name + "/hurtmajor05.wav",  //[pain noise - ugh]
				"player/survivor/voice/" + custom_name + "/hurtminor02.wav"  //[pain noise - short minor pain]
			],
			PlayerCommentJockeyBiker = [
				"player/survivor/voice/" + custom_name + "/dlc1_c6m3_l4d11stspot05.wav",  //LITTLE VAMPIRE!
				"player/survivor/voice/" + custom_name + "/reactiondisgusted10.wav",  //Aww, that's DISGUSTING!
				"player/survivor/voice/" + custom_name + "/violenceawe06.wav"  //Did you see that?
			],
			SurvivorchargerpoundBiker = [
				"player/survivor/voice/" + custom_name + "/tankpound01.wav",  //Get this thing off me!
				"player/survivor/voice/" + custom_name + "/tankpound02.wav"  //This thing's poundin the hell outta me!
			],
			SurvivorGooedBySpitterBiker = [
				"player/survivor/voice/" + custom_name + "/hurtcritical08.wav",  //AHH!
				"player/survivor/voice/" + custom_name + "/hurtcritical09.wav",  //AHHH!
				"player/survivor/voice/" + custom_name + "/emphaticgo02.wav",  //MOOOVE!
				"player/survivor/voice/" + custom_name + "/backup02.wav",  //Back up!
				"player/survivor/voice/" + custom_name + "/backup03.wav"  //Back up!
			],
			SurvivorWarnSpitterIncomingBiker = [
				"player/survivor/voice/" + custom_name + "/incoming04.wav",  //INCOMING!
				"player/survivor/voice/" + custom_name + "/incoming06.wav",  //INCOMING!
				"player/survivor/voice/" + custom_name + "/downinfront02.wav",  //DUCK!
				"player/survivor/voice/" + custom_name + "/downinfront03.wav"  //GET DOWN!
			],
			SurvivorDeployUpExplosivesBiker = [
				"player/survivor/voice/" + custom_name + "/waithere01.wav",  //Everyone stop!
				"player/survivor/voice/" + custom_name + "/waithere02.wav",  //Stop for a second!
				"player/survivor/voice/" + custom_name + "/waithere04.wav",  //Hold up a minute!
				"player/survivor/voice/" + custom_name + "/waithere05.wav"  //Hold up!
			],
			SurvivorDeployUpIncendiaryBiker = [
				"player/survivor/voice/" + custom_name + "/waithere01.wav",  //Everyone stop!
				"player/survivor/voice/" + custom_name + "/waithere02.wav",  //Stop for a second!
				"player/survivor/voice/" + custom_name + "/waithere04.wav",  //Hold up a minute!
				"player/survivor/voice/" + custom_name + "/waithere05.wav"  //Hold up!
			],
			SurvivorPickupM60Biker = [
				"player/survivor/voice/" + custom_name + "/takeautoshotgun04.wav"  //Those bastards think they're sick now, wait'll they get a taste of this.
			],
			// biker_dlc3.txt ====================================================================================================
			C7M3_saferoom001Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom01.wav"  //I wish I was heading to a deserted island. Can we each get our own?
			],
			C7M1_saferoom01Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro01.wav"  //Is this the Keys? Because I don't wanna live here.
			],
			C7M1_saferoom04Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro02.wav",  //And why don't we want any of these perfectly good boats?
				"player/survivor/voice/" + custom_name + "/c6dlc3intro03.wav"  //And why don't we want any of these boats?  They look cool.
			],
			C7M1_saferoom05Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro04.wav"  //Louis. Tell Zoey I don't know what's going on.
			],
			C7M1_saferoom06Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro05.wav"  //Found one.
			],
			C7M1_saferoom07aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro13.wav"  //What? We're not even gonna try driving it on the ground?
			],
			C7M1_saferoom12aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro15.wav"  //Really? This is you pissed?
			],
			C7M1_saferoom13Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro17.wav"  //I think those are Bill's tears.
			],
			C7M1_saferoom14aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro18.wav"  //Hey, I ain't the one that thought we could drive a frickin'  train through the ocean.
			],
			C7M1_saferoom15bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro19.wav"  //Wow, I never thought I'd say this, but I think I wanna hang out with Louis.
			],
			C7M1_saferoom16Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro21.wav"  //Hey Bill, I think I mighta missed the finer points of your plan. I caught all the train stuff. Something about a boat to an island paradise. But I missed the part where we're stranded in the middle of goddamn nowhere.
			],
			C7M1_saferoom16bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro22.wav"  //I'm goin', I'm goin'.
			],
			C7M1_saferoom17Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro23.wav"  //Yeah! Sandy beaches. Coconuts. Sand. Beaches. Sand... Wait a minute, I hate islands.
			],
			C7M1_saferoom18aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro24.wav"  //Okay. I vote for the island paradise where we don't have to fight any more zombies.
			],
			C7M1_saferoom21Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro25.wav",  //Aye, Aye Captain!
				"player/survivor/voice/" + custom_name + "/c6dlc3intro27.wav"  //Bill, when you sailed ships were they all still made of wood?
			],
			C7M1_saferoom21aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro26.wav"  //Nah, don't worry, I hate boats too.
			],
			C7M1OpenTankDoorBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor01.wav",  //Get ready with some fire.
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor02.wav",  //Alright, alright, I'll be the brave one.
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor03.wav",  //Oh shit. There is a tank in here.
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor04.wav",  //Hey, remember who letcha out of here.
				"player/survivor/voice/" + custom_name + "/c6dlc3openingdoor05.wav"  //Go for the one with the tie.
			],
			C7M1SafeRoomIdleBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro07.wav",  //Why'd we stop?
				"player/survivor/voice/" + custom_name + "/c6dlc3intro08.wav",  //Holy shit! Did that truck have a head-on collision with a boat? Man, I wish I could have seen that.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro14.wav",  //Man, Zoey is pissed.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro16.wav",  //So this is the Florida Keys. Crazy how it looks like some shithole in the middle of nowhere.
				"player/survivor/voice/" + custom_name + "/c6dlc3intro28.wav"  //I was getting' tired of being cooped up, lookin' forward to some walking.
			],
			C7M1SafeRoomStartBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //Blank
			],
			InfoRemc7m1_pretank01Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard04.wav"  //Fine with me.
			],
			InfoRemc7m1_pretank03Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard09.wav"  //What?
			],
			InfoRemc7m1_pretank04Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard11.wav"  //Hey, Bill. Zoey said you should open the door.
			],
			InfoRemc7m1_tankcar01Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intanktraincar01.wav"  //Tanks?
			],
			C7M2_saferoom02cBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom03.wav"  //Bullshit. Say "Bill's an idiot" in Japanese.
			],
			C7M2_saferoom02eBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom04.wav"  //Nice.
			],
			C7M2_saferoom03Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom05.wav"  //Louis, if you don't stop being positive, I'm gonna sink the boat just to make you sad.
			],
			C7M2_saferoom03bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom06.wav"  //About to die in a brick factory? Cause I'm about to do that too. And I got to complain about shit the whole time.
			],
			C7M2_saferoom05aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom09.wav"  //Okay. But why didn't we drive one of those boats to look for a sail boat?
			],
			C7M2SafeRoomIdleBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom01.wav",  //What the hell does this mean?
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom07.wav",  //Hey, Louis. We been through the whole goddamn country, and it's all one big shithole. Still think it's going back to normal?
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom08.wav",  //Okay. Explain to me again why we didn't take any one of the perfectly good boats we passed?
				"player/survivor/voice/" + custom_name + "/c6dlc3firstsaferoom11.wav"  //I'm still not seeing a boat. Why don't we head back and see if the train floats?
			],
			C7M2SafeRoomStartBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //Blank
			],
			Player_WarnMegaMobc7m201Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill05.wav"  //Get into the chute!
			],
			C7M3_saferoom002Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom02.wav"  //I hate your good feelings.
			],
			C7M3_saferoom004bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom03.wav",  //Why aren't I allowed to shoot you again?
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom04.wav",  //Yeah, I get it, Louis. Bill gets it for chrissake, and he can't even work a flush toilet.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom07.wav",  //Nerd.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom08.wav"  //You're such a nerd.
			],
			C7M3_saferoom006aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom05.wav"  //No more vampires.
			],
			C7M3_saferoom008Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom09.wav"  //Why don't we just live on the boat?
			],
			C7M3_saferoom008bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom10.wav"  //Well� there was that ship back there.
			],
			C7M3_saferoom012aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom12.wav"  //Jesus, have you ever been to an island? They're goddamn horrible.
			],
			C7M3_saferoom012cBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom13.wav"  //They're not the only ones...
			],
			C7M3_saferoom012eBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom14.wav"  //I hate this plan.
			],
			C7M3_saferoom013Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom16.wav"  //Start hating it.
			],
			C7M3_saferoom013bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom17.wav"  //I hate it now too.
			],
			C7M3_saferoom013dBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom18.wav"  //I seriously doubt it.
			],
			C7M3_saferoom014Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom20.wav"  //I hate fish.
			],
			C7M3_saferoom014bBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom21.wav"  //Oh no, I like eating them. That's one of the ways I let fish know how much I hate them.
			],
			C7M3_saferoom015Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom22.wav"  //The vampires want to kill us, the army wants to kill us. With our luck, Zoey probably crossed the mob. What the hell makes you think we're gonna live to see Bill's horrible goddamn island in the keys?
			],
			C7M3_saferoom016aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom23.wav",  //That's the spirit allright - of insanity.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom26.wav"  //I mean, I'd like to hear your reasons why Louis isn't some sort of lunatic. For all we know, he's a serial killer.
			],
			C7M3_saferoom016cBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom25.wav"  //See? I'm serious. Given, you know, current goddamn events, that's not optimism, it's mental illness.
			],
			C7M3_saferoom017aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom28.wav"  //No, I'm being serious. I really hate islands. I have insulaphobia - I'm afraid of islands.
			],
			C7M3_saferoom017cBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom29.wav"  //No, man. It's a medical condition. Just my goddamn luck...
			],
			C7M3_saferoom017eBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom30.wav"  //Stupid island...
			],
			C7M3_saferoom017gBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom31.wav"  //Dumbass island shithole...
			],
			C7M3_saferoom017hBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom32.wav"  //Damn right.
			],
			C7M3BridgeBreaksBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgestops01.wav",  //Goddamn it, who broke the bridge?
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgestops02.wav",  //Someone's gotta restart that generator.
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgestops03.wav"  //Do you think that generator might restart itself?
			],
			C7M3FinalPressManagerBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3louisdies01.wav",  //I could have predicted that.
				"player/survivor/voice/" + custom_name + "/c6dlc3louisdies02.wav",  //Louis is dead.
				"player/survivor/voice/" + custom_name + "/c6dlc3louisdies03.wav",  //Louis little buddy, you did it!
				"player/survivor/voice/" + custom_name + "/c6dlc3louisdies05.wav"  //Thanks Louis!
			],
			C7M3FinalPressNamVetBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies01.wav",  //Bill! It should have been Louis! It should have been Louis!
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies02.wav",  //Bill did it!
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies03.wav",  //Bill restarted the generator!
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies04.wav",  //The bridge is going up!
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies06.wav",  //Thanks Bill, I owe you one. You old bastard...
				"player/survivor/voice/" + custom_name + "/c6dlc3billdies07.wav"  //Bill, you did it, buddy! You really did it!
			],
			C7M3FinalPressTeenGirlBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3zoeydies01.wav",  //Noooo! You monsters! Take Louis instead!
				"player/survivor/voice/" + custom_name + "/c6dlc3zoeydies02.wav",  //Not ZOEY!
				"player/survivor/voice/" + custom_name + "/c6dlc3zoeydies03.wav",  //SHIT ZOEY!
				"player/survivor/voice/" + custom_name + "/c6dlc3zoeydies04.wav"  //I hate this!
			],
			C7M3GeneratorPress01Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3prestart1stgen01.wav",  //Let's start these generators.
				"player/survivor/voice/" + custom_name + "/c6dlc3prestart1stgen02.wav"  //We gotta start these generators.
			],
			C7M3GeneratorPress02Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3prestart2ndgen01.wav"  //Everyone ready to start this one?
			],
			C7M3GeneratorPress03Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3prestartlastgen01.wav",  //I hate these stupid generators.
				"player/survivor/voice/" + custom_name + "/c6dlc3prestartlastgen02.wav"  //Last generator.
			],
			C7M3PlayerGetToRescueVehicleBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgeavailable01.wav",  //All aboard! The bridge�
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgeavailable02.wav",  //Everyone to the bridge!
				"player/survivor/voice/" + custom_name + "/c6dlc3bridgeavailable03.wav"  //Get to the bridge!
			],
			C7M3SafeRoomIdleBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom11.wav",  //Bill, I just wanna make it clear - in front of everyone - that I am against the island plan.
				"player/survivor/voice/" + custom_name + "/c6dlc3secondsaferoom24.wav"  //Hey, um... Louis... did I ever mention how I feel about islands?
			],
			C7M3SafeRoomStartBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  //Blank
			],
			C7M3WaveOverGen1Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3firsteventover01.wav",  //Okay, its done let's go!
				"player/survivor/voice/" + custom_name + "/c6dlc3firsteventover02.wav"  //Why are we still here? To the next generator!
			],
			C7M3WaveOverGen2Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3secondeventover01.wav",  //You think that last generator is going to start itself?
				"player/survivor/voice/" + custom_name + "/c6dlc3secondeventover02.wav"  //One more!
			],
			SurvivorSpottedAdrenalineBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedAdrenalineAutoBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedGrenadeLauncherBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedGrenadeLauncherAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedUpPack_ExplosiveBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedUpPack_ExplosiveAutoBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedUpPack_IncendiaryBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedUpPack_IncendiAutoBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedVomitJarBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedVomitJarAutoBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			PlayerToTheRescueRosBiker = [
				"player/survivor/voice/" + custom_name + "/totherescue01.wav",  //Hang on, I'm on my way!
				"player/survivor/voice/" + custom_name + "/totherescue02.wav",  //I'm coming!
				"player/survivor/voice/" + custom_name + "/totherescue03.wav",  //Hang in there buddy, I'm comin.
				"player/survivor/voice/" + custom_name + "/totherescue04.wav",  //I'm coming for ya!
				"player/survivor/voice/" + custom_name + "/totherescue05.wav",  //Hang on I'm coming!
				"player/survivor/voice/" + custom_name + "/totherescue06.wav",  //Hang in there, I'm comin!
				"player/survivor/voice/" + custom_name + "/totherescue07.wav",  //Hang on, hang on, I'm comin!
				"player/survivor/voice/" + custom_name + "/totherescue08.wav"  //I heard ya, I'm comin'!
			],
			SurvivorTauntResponseBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah01.wav",  //All right.
				"player/survivor/voice/" + custom_name + "/hurrah02.wav",  //Aw riiiight.
				"player/survivor/voice/" + custom_name + "/hurrah03.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/hurrah04.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/hurrah16.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/hurrah17.wav",  //Aw riiiight.
				"player/survivor/voice/" + custom_name + "/hurrah18.wav",  //Aw riiiight.
				"player/survivor/voice/" + custom_name + "/hurrah19.wav",  //Goddamn right!
				"player/survivor/voice/" + custom_name + "/hurrah20.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/taunt01.wav",  //That's right!
				"player/survivor/voice/" + custom_name + "/taunt02.wav",  //HELL YEAH!
				"player/survivor/voice/" + custom_name + "/taunt03.wav",  //OH YEAH!
				"player/survivor/voice/" + custom_name + "/taunt04.wav",  //Oh yeah!
				"player/survivor/voice/" + custom_name + "/taunt05.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt06.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt07.wav",  //[Loud, evil laugh]
				"player/survivor/voice/" + custom_name + "/taunt08.wav",  //YEAH! YEAH!
				"player/survivor/voice/" + custom_name + "/taunt09.wav",  //Damn straight!
				"player/survivor/voice/" + custom_name + "/taunt10.wav"  //HELL YEAH!
			],
			PlayerRemarkc7m1_bricktopBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3generic05.wav"  //On top the bricks.
			],
			PlayerRemarkc7m1_pastbricksBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3generic06.wav"  //Past the bricks.
			],
			PlayerRemarkc7m1_pretankBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard01.wav",  //Do we really want to open that door? Please say no.
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard02.wav",  //Hey, Bill, I think there's a sailboat in the train.
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard03.wav",  //Okay. So, I'm not opening the door. You guys work it out and let me know when the door's open.
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard05.wav",  //Hey Louis, I don't think it's a tank in there.  It sounds like a puppy.  You should stand closer.
				"player/survivor/voice/" + custom_name + "/c6dlc3tankintrainyard08.wav"  //Louis, you gonna open that door or what?
			],
			PlayerRemarkc7m1_tankcarBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intanktraincar02.wav",  //Hey, Bill. Your sailboat smells like shit.
				"player/survivor/voice/" + custom_name + "/c6dlc3intanktraincar03.wav"  //God. Smells like Bill's beard in here
			],
			PlayerRemarkc7m2_climbupcrapBiker = [
				"player/survivor/voice/" + custom_name + "/dlc2m1directional07.wav",  //We can get back up over here!
				"player/survivor/voice/" + custom_name + "/dlc2m2directional02.wav"  //Up that fence!
			],
			PlayerRemarkc7m2_gravelhillBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill03.wav",  //Nesting birds, Bill! Watch your beard?
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill06.wav",  //Get up this pile of crap!
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill07.wav"  //Anyone wanna guess what I'm hatin' right now?
			],
			PlayerRemarkc7m2_listingtugBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats09.wav"  //Hey, here's a boat.
			],
			PlayerRemarkc7m2_overboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3generic01.wav"  //Over the ship!
			],
			PlayerRemarkc7m2_seebargeBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3seeingbigship01.wav"  //Yo, Captain Bill, can we take this ship?
			],
			PlayerRemarkc7m2_throughhereBiker = [
				"player/survivor/voice/" + custom_name + "/genericdirections05.wav",  //Through here!
				"player/survivor/voice/" + custom_name + "/worldfarmhouse0206.wav"  //Through here!
			],
			PlayerRemarkc7m3_seesailboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3spottingsailboat01.wav",  //That boat'll do. We better lift the bridge so we can head out.
				"player/survivor/voice/" + custom_name + "/c6dlc3spottingsailboat02.wav",  //There's your sailboat Bill, by the bridge.
				"player/survivor/voice/" + custom_name + "/c6dlc3spottingsailboat03.wav",  //Bill, is that a sailboat by the bridge?  WHY YES IT IS!
				"player/survivor/voice/" + custom_name + "/c6dlc3spottingsailboat04.wav"  //We're gonna need to raise that bridge.
			],
			PlayerRemarkinfo_carboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats08.wav"  //I think this car will float.
			],
			PlayerRemarkinfo_carnotboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats11.wav"  //Boat! Hop in, let's get outta here!
			],
			PlayerRemarkInfo_powerboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro05.wav",  //Found one.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats01.wav",  //There's a boat.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats02.wav",  //How about this boat?
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats04.wav",  //Hey, there's a boat.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats05.wav",  //That boat?
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats10.wav"  //BOAT!
			],
			PlayerRemarkInfo_powerboat2Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro05.wav",  //Found one.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats01.wav",  //There's a boat.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats02.wav",  //How about this boat?
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats04.wav",  //Hey, there's a boat.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats05.wav",  //That boat?
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats10.wav"  //BOAT!
			],
			PlayerRemarkinfo_powerboat3Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3intro05.wav",  //Found one.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats01.wav",  //There's a boat.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats02.wav",  //How about this boat?
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats04.wav",  //Hey, there's a boat.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats05.wav",  //That boat?
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats10.wav"  //BOAT!
			],
			PlayerRemarkinfo_powerboat4Biker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats03.wav",  //There's a boat.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats07.wav"  //Will that boat work?
			],
			PlayerRemarkinfo_sunkboatthereBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats06.wav"  //Bill, there's a boat.
			],
			PlayerRemarkinfo_trailerboatBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats13.wav"  //Look Bill, this boat has wheels.
			],
			PlayerRemarkinfo_trailerboatruckBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats12.wav"  //What about this one? It comes with a truck!
			],
			PlayerYellRunBiker = [
				"player/survivor/voice/" + custom_name + "/emphaticrun01.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun02.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun03.wav",  //HOLY SHIT! Run!
				"player/survivor/voice/" + custom_name + "/emphaticrun04.wav",  //LET'S BEAT IT!
				"player/survivor/voice/" + custom_name + "/emphaticrun05.wav",  //RUN!
				"player/survivor/voice/" + custom_name + "/emphaticrun06.wav",  //SHIT! Run!
				"player/survivor/voice/" + custom_name + "/emphaticrun09.wav",  //Get the lead out!
				"player/survivor/voice/" + custom_name + "/emphaticrun10.wav"  //Haul Ass!
			],
			GrabbingGasSCBiker = [
				"player/survivor/voice/" + custom_name + "/killconfirmation01.wav"  //Got it!
			],
			PlayerShotGasCanBiker = [
				"player/survivor/voice/" + custom_name + "/reactionnegative05.wav",  //Shit
				"player/survivor/voice/" + custom_name + "/reactionnegative07.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/reactionnegative08.wav",  //Damnit.
				"player/survivor/voice/" + custom_name + "/swear03.wav",  //Ah shit.
				"player/survivor/voice/" + custom_name + "/swear08.wav",  //Ah bullshit.
				"player/survivor/voice/" + custom_name + "/swear17.wav",  //Dammit.
				"player/survivor/voice/" + custom_name + "/swear18.wav"  //Bullshit.
			],
			ScavengeStartBiker = [
				"player/survivor/voice/" + custom_name + "/moveon04.wav",  //Let's get moving.
				"player/survivor/voice/" + custom_name + "/moveon05.wav",  //Let's move.
				"player/survivor/voice/" + custom_name + "/moveon07.wav",  //Time to go, ladies.
				"player/survivor/voice/" + custom_name + "/moveon10.wav"  //Come on, let's go.
			],
			GasPourSCBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3prestartlastgen01.wav",  //I hate these stupid generators.
				"player/survivor/voice/" + custom_name + "/coverme01.wav",  //Cover me.
				"player/survivor/voice/" + custom_name + "/coverme02.wav",  //Get my back.
				"player/survivor/voice/" + custom_name + "/coverme10.wav"  //Watch my ass.
			],
			GasPourDoneSCBiker = [
				"player/survivor/voice/" + custom_name + "/hurrah04.wav",  //Awesome.
				"player/survivor/voice/" + custom_name + "/hurrah08.wav",  //They can't stop us.
				"player/survivor/voice/" + custom_name + "/hurrah10.wav",  //We are unstoppable!
				"player/survivor/voice/" + custom_name + "/hurrah20.wav",  //Hell yeah!
				"player/survivor/voice/" + custom_name + "/taunt01.wav",  //That's right!
				"player/survivor/voice/" + custom_name + "/taunt03.wav",  //OH YEAH!
				"player/survivor/voice/" + custom_name + "/taunt04.wav",  //oh yeah!
				"player/survivor/voice/" + custom_name + "/taunt07.wav"  //[Loud, evil laugh]
			],
			FinaleAheadc7m3Biker = [
				"player/survivor/voice/" + custom_name + "/answerready05.wav",  //Let's go kill somethin'!
				"player/survivor/voice/" + custom_name + "/hurryup08.wav",  //Let's go, let's go!
				"player/survivor/voice/" + custom_name + "/moveon03.wav",  //Let's go.
				"player/survivor/voice/" + custom_name + "/moveon09.wav",  //I'm tired of waitin' around here. Come on, let's go.
				"player/survivor/voice/" + custom_name + "/moveon10.wav"  //Come on, let's go.
			],
			Player_C7M2CrowsFlyBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill01.wav",  //Shut up, you stupid birds.
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill02.wav",  //Nice rockpile, birds! Ha ha, hold on, do you hear a zombie?
				"player/survivor/voice/" + custom_name + "/c6dlc3gravelhill04.wav"  //Into the chute.
			],
			Player_C7M3BridgeLeapBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge01.wav",  //Jesus, I'm brave.
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge02.wav",  //Guess I better save everybody.
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge03.wav",  //I hate suicide missions.
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge05.wav",  //Stay there! God damn it, I don't wanna die�
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge06.wav",  //Stay there! Oh my god, I'm an idiot�
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge07.wav",  //Stay there! Oh god, it shoulda been Louis.
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge08.wav",  //Nobody try to help me! Unless you want!
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge09.wav",  //Don't try to talk me out of this! Anyone?
				"player/survivor/voice/" + custom_name + "/c6dlc3jumpingoffbridge10.wav"  //Don't move! I have a plan!
			],
			SurvivorPickupAdrenalineBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupAdrenalineAlwaysBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupbaseball_batBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupchainsawBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupcricket_batBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupCricketBatBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupCrowBarBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupelectric_guitarBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupFireAxeBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupFryingPanBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupGrenadeLauncherBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupIncendiaryAmmoBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupKatanaBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupLaserSightsAlwaysBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupMacheteBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupMagnumBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupMagnumAlwaysBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickuptonfaBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupGolfClubBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupUpExplosiveAmmoBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupUpExplosivesBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupUpIncendiaryBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupUpIncendiaryAmmoBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupVomitJarBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			SurvivorPickupVomitJarAlwaysBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			InfoReminfo_powerboat4aBiker = [
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats14.wav",  //Quiet Zoey.
				"player/survivor/voice/" + custom_name + "/c6dlc3otherboats15.wav"  //Quiet Zoey.
			],
			PlayerLostCallBiker = [
				"player/survivor/voice/" + custom_name + "/lostcall01.wav",  //Hello
				"player/survivor/voice/" + custom_name + "/lostcall04.wav",  //Is anyone there?
				"player/survivor/voice/" + custom_name + "/lostcall05.wav",  //Marco!
				"player/survivor/voice/" + custom_name + "/lostcall08.wav"  //Hello? Where dija go?
			],
			SurvivorSpottedChainsawBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedChainsawAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedcricket_batBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedcricket_batAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedcrowbarBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedcrowbarAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedGuitarBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedGuitarAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedKatanaBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedKatanaAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedLaserSightsBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedLaserSightsAutoBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedMacheteBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedMacheteAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedMagnumBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedMagnumAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedtonfaBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedtonfaAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedGolfClubBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedGolfClubAutoBiker = [
				"player/survivor/voice/" + custom_name + "/spotweapons01.wav",  //Weapons here!
				"player/survivor/voice/" + custom_name + "/spotweapons02.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons04.wav",  //Weapon's over here!
				"player/survivor/voice/" + custom_name + "/spotweapons05.wav"  //We got weapons over here.
			],
			SurvivorSpottedDefibrillatorBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorSpottedDefibrillatorAutoBiker = [
				"player/survivor/voice/" + custom_name + "/look03.wav",  //Look!
				"player/survivor/voice/" + custom_name + "/lookhere01.wav",  //Check this out.
				"player/survivor/voice/" + custom_name + "/lookhere05.wav",  //Look here.
				"player/survivor/voice/" + custom_name + "/lookhere07.wav"  //What the hell is this?
			],
			SurvivorPickupDefibrillatorBiker = [
				"player/survivor/voice/" + custom_name + "/nicejob17.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/positivenoise02.wav",  //[Improv non-verbal pleasure & interest sounds]
				"player/survivor/voice/" + custom_name + "/safespotaheadreaction03.wav",  //Cool.
				"player/survivor/voice/" + custom_name + "/yes01.wav",  //Yes.
				"player/survivor/voice/" + custom_name + "/yes04.wav"  //Yeah.
			],
			// finales_dlc2.txt ====================================================================================================
			ConceptHospitalRadioTalkBiker = [
				"player/survivor/voice/" + custom_name + "/worldfarmhousenpc01.wav",  // Uh, hello?
				"player/survivor/voice/" + custom_name + "/scenariojoin01.wav",  //I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin02.wav",  //Hey, I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin03.wav",  //Hey, I'm here!
				"player/survivor/voice/" + custom_name + "/scenariojoin04.wav"  //Hello!
			],
			ConceptHospitalReadyConfirmedBiker = [
				"player/survivor/voice/" + custom_name + "/worldsmalltownnpcboatman03.wav",  // Come get us!
				"player/survivor/voice/" + custom_name + "/worldfarmhousenpc05.wav",  // We're all set!
				"player/survivor/voice/" + custom_name + "/worldfarmhousenpc04.wav"  // We're ready!
			],
			// terror_player_dlc2.txt ====================================================================================================
			HitCraneButtonBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  // [BLANK]
			],
			Airport03FireStartedBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  // [BLANK]
			],
			// terror_player_dlc2_use.txt ====================================================================================================
			HitCraneButtonBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  // [BLANK]
			],
			Airport03FireStartedBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  // [BLANK]
			],
			Airport04VanStartedBiker = [
				"player/survivor/voice/" + custom_name + "/blank.wav"  // [BLANK]
			]
		};
		return sounds;
	}

	sounds_order = [
		// biker.txt ====================================================================================================
		"_PlayerInfoRemarkableBlankBiker",
		"C6M3PlayerNiceShotBiker",
		"L4D1PlayerRemarkFarm05_path09BBiker",
		"L4D1PlayerRemarkFarm05_path09CBiker",
		"L4D1ReviveMeInterruptedMinorBiker",
		"L4D1ReviveMeInterruptedMajorBiker",
		"L4D1ReviveMeInterruptedCriticalBiker",
		"L4D1SurvivorMournBillBiker",
		"L4D1SurvivorMournLouisBiker",
		"L4D1SurvivorMournZoeyBiker",
		"PlayerRelaxedSighBiker",
		"PlayerUseAdrenalineBiker",
		"L4D1ThanksGotItemBiker",
		"L4D1RescuedSurvivorBiker",
		"PlayerGivenItemBiker",
		"ItemDonorProducerBiker",
		"ItemDonorCoachBiker",
		"ItemDonorGamblerBiker",
		"ItemDonorMechanicBiker",
		"ItemDonorManagerBiker",
		"ItemDonorTeenGirlBiker",
		"ItemDonorNamVetBiker",
		"L4D1HealThanksBiker",
		"L4D1ReviveThanksBillBiker",
		"L4D1ReviveThanksLouisBiker",
		"L4D1ReviveThanksZoeyBiker",
		"BotHurrahAlsoBiker",
		"L4D1AutoYouAreWelcomeBiker",
		"L4D1BotAttentionBattleBiker",
		"L4D1BotNoteHumanAttentionBiker",
		"L4D1BotPlayer_YourWelcomeBiker",
		"L4D1BotReassureComingBiker",
		"L4D1BotReassureNearbyBiker",
		"L4D1BotYesReadyBiker",
		"C6M1Intro_01bBiker",
		"C6M1Intro_01Biker01Biker",
		"C6M1Intro_01Biker01CoachBiker",
		"C6M1Intro_01Biker01ProducerBiker",
		"C6M1Intro_01Biker01MechanicBiker",
		"C6M1Intro_01Biker01GamblerBiker",
		"C6M1Intro_01Biker01GamblerProducerBiker",
		"C6M1Intro_01dBiker",
		"C6M1Intro_02bBiker",
		"C6M1Intro_05bBiker",
		"C6M1Intro_05dBiker",
		"C6M1Intro_06aBiker",
		"C6M1Intro_06cBiker",
		"C6M1Intro_06eBiker",
		"C6M1Intro_07aBiker",
		"C6M1Intro_09cBiker",
		"C6M1Intro_09gBiker",
		"C6M1Intro_10aBiker",
		"C6M1Intro_10cBiker",
		"C6M1Intro_14bBiker",
		"C6M1Intro_16bBiker",
		"C6M1Intro_18aBiker",
		"C6M1Intro_18cBiker",
		"C6M1Intro_18eBiker",
		"C6M1Intro_19aBiker",
		"C6M1Intro_20cBiker",
		"C6M1Intro_20eBiker",
		"C6M1Intro_20fBiker",
		"C6M1Intro_24bBiker",
		"C6M1Intro_24dBiker",
		"C6M3_BridgeDownBiker",
		"c6m3_outroBiker",
		"c6m3_outroL4D1Biker",
		"c6m3_outroL4D1010aBiker",
		"c6m3_outroL4D104bBiker",
		"c6m3_outroL4D108aBiker",
		"c6m3_outroL4D1AllBiker",
		"c6m3_outroL4D1CoachBiker",
		"c6m3_outroL4D1CopGibbsBiker",
		"c6m3_outroL4D1GamblerBiker",
		"c6m3_outroL4D1MechanicBiker",
		"c6m3_outroL4D1ProducerBiker",
		"IncapBounce2Biker",
		"L4D1_NiceJobPourBiker",
		"L4D1_AttractPlayerForThrowBiker",
		"L4D1_SurvivorBotTakeThisItemBiker",
		"WorldC6M3_ByBridge01Biker",
		"C6M3_BridgeGettoCarBiker",
		"WorldC6M3Loss2Biker",
		"C7M1_saferoom01Biker",
		"C7M1_saferoom04Biker",
		"C7M1_saferoom05Biker",
		"C7M1_saferoom06Biker",
		"C7M1_saferoom07aBiker",
		"C7M1_saferoom12aBiker",
		"C7M1_saferoom13Biker",
		"C7M1_saferoom14aBiker",
		"C7M1_saferoom15bBiker",
		"C7M1_saferoom16Biker",
		"C7M1_saferoom16bBiker",
		"C7M1_saferoom17Biker",
		"C7M1_saferoom18aBiker",
		"C7M1_saferoom21Biker",
		"C7M1_saferoom21aBiker",
		"C7M1OpenTankDoorBiker",
		"C7M1OpenTankDoorTieBiker",
		"C7M1IntroBiker",
		"InfoRemc7m1_pretank01Biker",
		"InfoRemc7m1_pretank03Biker",
		"InfoRemc7m1_pretank04BillBiker",
		"InfoRemc7m1_pretank04Biker",
		"InfoRemc7m1_tankcar01Biker",
		"C7M2_saferoom02aBiker",
		"C7M2_saferoom02cBiker",
		"C7M2_saferoom02eBiker",
		"C7M2_saferoom03Biker",
		"C7M2_saferoom03bBiker",
		"C7M2_saferoom05aBiker",
		"C7M2SafeRoomBiker",
		"Player_WarnMegaMobc7m201Biker",
		"C7M3_saferoom001Biker",
		"C7M3_saferoom002Biker",
		"C7M3_saferoom004bBiker",
		"C7M3_saferoom006aBiker",
		"C7M3_saferoom008Biker",
		"C7M3_saferoom008bBiker",
		"C7M3_saferoom012aBiker",
		"C7M3_saferoom012cBiker",
		"C7M3_saferoom012eBiker",
		"C7M3_saferoom013Biker",
		"C7M3_saferoom013bBiker",
		"C7M3_saferoom013dBiker",
		"C7M3_saferoom014Biker",
		"C7M3_saferoom014bBiker",
		"C7M3_saferoom015Biker",
		"C7M3_saferoom016aBiker",
		"C7M3_saferoom016cBiker",
		"C7M3_saferoom017aBiker",
		"C7M3_saferoom017cBiker",
		"C7M3_saferoom017eBiker",
		"C7M3_saferoom017gBiker",
		"C7M3_saferoom017hBiker",
		"C7M3BridgeBreaksBiker",
		"C7M3FinalPressManagerBiker",
		"C7M3FinalPressNamVetBiker",
		"C7M3FinalPressTeenGirlBiker",
		"C7M3GeneratorPress01Biker",
		"C7M3GeneratorPress02Biker",
		"C7M3GeneratorPress03Biker",
		"C7M3PlayerGetToRescueVehicleBiker",
		"C7M3PlayerGetToRescueVehicleNagBiker",
		"C7M3PlayerIsInRescueVehicleNagBiker",
		"C7M3PlayerRaiseBridgeNagBiker",
		"C7M3BridgeButtonSpeakBiker",
		"C7M3SafeRoomBiker",
		"C7M3WaveOverGen1Biker",
		"C7M3WaveOverGen2Biker",
		"CrashWarnMegaMobBiker",
		"HowitzerBurnEnd00Biker",
		"HowitzerBurnEnd01Biker",
		"L4D1crashHowitzerNagBiker",
		"L4D1HowitzerFiredBiker",
		"CrashFinaleGenerator2OnSpkBiker",
		"CrashFinaleGenerator2SpeakBiker",
		"CrashFinaleGeneratorBreakSpkBiker",
		"CrashFinaleGeneratorSpeakBiker",
		"CrashFinaleGenerator1NagBiker",
		"CrashFinaleTruckNagBiker",
		"CrashFinaleInsideTruckNagBiker",
		"CrashFinaleTruckResp01Biker",
		"CrashFinaleTruckRespZombieBiker",
		"CrashYerKiddingBiker",
		"L4D1CrashFinaleGeneratorNagBiker",
		"L4D1CrashFinaleGenUnPressSpeakBiker",
		"L4D1CrashFinaleGen2UnPressSpeakBiker",
		"L4D1CrashFinaleTruckReadySpkBiker",
		"L4D1CrashFinaleTruckReadyRespBiker",
		"L4D1PlayerRemarkcrashcourse02_path14Biker",
		"CrashCourseR02Biker",
		"CrashCourseR09Biker",
		"CrashCourseR10Biker",
		"CrashCourseR13Biker",
		"L4D1PlayerRemarkcrashcourse01_path02Biker",
		"L4D1PlayerRemarkcrashcourse01_path05Biker",
		"L4D1PlayerRemarkcrashcourse01_path06Biker",
		"L4D1PlayerRemarkcrashcourse01_path07Biker",
		"L4D1PlayerRemarkcrashcourse01_path11Biker",
		"L4D1PlayerRemarkcrashcourse01_path12Biker",
		"L4D1PlayerRemarkcrashcourse01_path13Biker",
		"L4D1PlayerRemarkcrashcourse01_path14Biker",
		"L4D1PlayerRemarkcrashcourse01_path17Biker",
		"L4D1PlayerRemarkcrashcourse01_path18Biker",
		"L4D1PlayerRemarkcrashcourse01_path19Biker",
		"L4D1PlayerRemarkcrashcourse01_path24Biker",
		"L4D1PlayerRemarkcrashcourse02_path05Biker",
		"L4D1PlayerRemarkcrashcourse02_path06ZoeyBiker",
		"L4D1PlayerRemarkcrashcourse02_path06LouisBiker",
		"L4D1PlayerRemarkcrashcourse02_path06BillBiker",
		"L4D1PlayerRemarkcrashcourse01_path26Biker",
		"L4D1PlayerRemarkcrashcourse01_path26SelfBiker",
		"CrashCourseR11Biker",
		"L4D1PlayerRemarkcrashcourse02_path08Biker",
		"L4D1PlayerRemarkcrashcourse02_path10Biker",
		"L4D1PlayerRemarkcrashcourse02_path11Biker",
		"L4D1PlayerRemarkcrashcourse02_path12Biker",
		"PlayerRemarkcrashcourse01_path21Biker",
		"IntroCrashR02Biker",
		"IntroCrashR04Biker",
		"IntroCrashR06Biker",
		"IntroCrashR08Biker",
		"IntroCrashR10Biker",
		"IntroCrashR12Biker",
		"IntroCrashR14Biker",
		"IntroCrashR16Biker",
		"IntroCrashR18Biker",
		"IntroCrashR20Biker",
		"IntroCrashR21Biker",
		"IntroCrashR23Biker",
		"IntroCrashR26Biker",
		"IntroCrashR27Biker",
		"IntroCrashR29Biker",
		"IntroCrashR31Biker",
		"L4D1PlayerCrashCourseIntroBiker",
		"CrashCourseI01Biker",
		"CrashCourseB02Biker",
		"CrashCourseC01Biker",
		"L4D1C9M2SafeRoomBiker",
		"L4D1IntroFarm4Biker",
		"L4D1SurvivorBoomerBlunderBiker",
		"L4D1SurvivorFinaleTriggeredBoatBiker",
		"L4D1SurvivorFinaleTriggeredFarmBiker",
		"L4D1SurvivorFinaleTriggeredRooftopBiker",
		"L4D1SurvivorFinalVehicleBoatBiker",
		"L4D1SurvivorFinalVehicleInsideBoatBiker",
		"L4D1SurvivorFinalVehicleFarmBiker",
		"L4D1SurvivorFinalVehicleInsideFarmBiker",
		"L4D1SurvivorFinalVehicleFarmSpottedBiker",
		"L4D1SurvivorFinalVehicleRooftopBiker",
		"L4D1SurvivorFinalVehicleInsideRooftopBiker",
		"L4D1SurvivorFinalVehicleRunwayBiker",
		"L4D1SurvivorFinalVehicleInsideRunwayBiker",
		"L4D1SurvivorFinalVehicleSpottedBoatBiker",
		"L4D1SurvivorFinalVehicleSpottedRooftopBiker",
		"L4D1PlayerShotCarNotBiker",
		"L4D1PlayerShotCarBiker",
		"L4D1ResponseSoftDispleasureSwearBiker",
		"L4D1SurvivorAskBillForHealthBiker",
		"L4D1SurvivorAskForHealthBiker",
		"L4D1SurvivorAskLouisForHealthBiker",
		"L4D1SurvivorAskZoeyForHealthBiker",
		"L4D1SurvivorSpottedBillCloseBiker",
		"L4D1SurvivorSpottedBillFarBiker",
		"L4D1SurvivorSpottedLouisCloseBiker",
		"L4D1SurvivorSpottedLouisFarBiker",
		"L4D1SurvivorSpottedWorldCloseBiker",
		"L4D1SurvivorSpottedZoeyCloseBiker",
		"L4D1SurvivorSpottedZoeyClose2Biker",
		"L4D1SurvivorSpottedZoeyFarBiker",
		"SurvivorSpottedAmmoBiker",
		"SurvivorSpottedGrenadeBiker",
		"SurvivorSpottedHealthBiker",
		"SurvivorSpottedMolotovBiker",
		"SurvivorSpottedVomitJarBiker",
		"SurvivorSpottedPillsBiker",
		"SurvivorSpottedAdrenalineBiker",
		"L4D1SurvivorMovingToBattleStationBiker",
		"L4D1SurvivorSpottedCreshendoBiker",
		"L4D1SpottedBoomerBiker",
		"L4D1SpottedHunterBiker",
		"L4D1SpottedCanadianHunterBiker",
		"L4D1SpottedSmokerBiker",
		"L4D1SpottedChargerBiker",
		"L4D1SpottedJockeyBiker",
		"L4D1SpottedSpitterBiker",
		"L4D1SurvivorSpottedInfectedBiker",
		"SurvivorSpottedTankBiker",
		"L4D1SpottedTankBiker",
		"SurvivorSpottedWitchBiker",
		"L4D1EmphaticArriveRunBiker",
		"L4D1PlayerAlertGiveItemBiker",
		"L4D1PlayerFriendlyFireBiker",
		"L4D1PlayerFriendlyFire2Biker",
		"L4D1PlayerFriendlyFireFromBillBiker",
		"L4D1PlayerFriendlyFireFromLouisBiker",
		"L4D1PlayerFriendlyFireFromZoeyBiker",
		"L4D1PlayerFriendlyFireNoBulletBiker",
		"L4D1PlayerToTheRescueBiker",
		"L4D1SurvivorTauntResponseBiker",
		"PlayerToTheRescueRosBiker",
		"L4D1EmphaticArriveRunFarm2Biker",
		"L4D1PlayerChokeResponseBiker",
		"PlayerWitchChasingBiker",
		"PlayerWitchStartAttackBiker",
		"L4D1SurvivorCriticalHurtBiker",
		"L4D1SurvivorIncapacitatedHurtBiker",
		"L4D1SurvivorMajorHurtBiker",
		"L4D1SurvivorMinorHurtBiker",
		"L4D1SurvivorReloadingBiker",
		"SurvivorJockeyHurtMajorBiker",
		"L4D1PlayerHelpIncappedBiker",
		"L4D1PlayerHelpIncappedBleedingBiker",
		"L4D1PlayerHelpIncappedLethargicBiker",
		"L4D1HelpResponseBillBiker",
		"L4D1HelpResponseLouisBiker",
		"L4D1HelpResponseLouisBBiker",
		"L4D1HelpResponseLouisB2Biker",
		"L4D1HelpResponseZoeyBiker",
		"L4D1PlayeGoingToDie3VampirebBiker",
		"L4D1PlayerAirport02CraneStartedBiker",
		"L4D1PlayerAirport02DumpsterDownBiker",
		"L4D1Playerairport03_barrieraBiker",
		"L4D1PlayerAirport03FirePathClearaBiker",
		"L4D1PlayerAirport03FirePathClearXBiker",
		"L4D1PlayerAirport03FireStartedXBiker",
		"L4D1Playerairport04_05aBiker",
		"L4D1Playerairport04_08aBiker",
		"L4D1Playerairport04_08bBiker",
		"L4D1Playerairport04_08cBiker",
		"L4D1Playerairport04_vanaBiker",
		"L4D1PlayerRemarkairport02_creshendo01aBiker",
		"L4D1PlayerRemarkairport02_path01Biker",
		"L4D1PlayerRemarkairport02_path02Biker",
		"L4D1PlayerRemarkairport02_path03Biker",
		"L4D1PlayerRemarkairport02_path04Biker",
		"L4D1PlayerRemarkairport02_path06Biker",
		"L4D1PlayerRemarkairport03_01Biker",
		"L4D1PlayerRemarkairport03_02Biker",
		"L4D1PlayerRemarkairport03_03Biker",
		"L4D1PlayerRemarkairport03_04Biker",
		"L4D1PlayerRemarkairport03_05Biker",
		"L4D1PlayerRemarkairport03_06Biker",
		"L4D1PlayerRemarkairport03_barrierBiker",
		"L4D1PlayerRemarkairport04_01Biker",
		"L4D1PlayerRemarkairport04_03Biker",
		"L4D1PlayerRemarkairport04_07Biker",
		"L4D1PlayerRemarkairport04_08Biker",
		"L4D1PlayerRemarkairport04_vanBiker",
		"L4D1PlayerRemarkcrashcourse01_path01Biker",
		"L4D1PlayerRemarkFarm01_path01Biker",
		"L4D1PlayerRemarkFarm01_path02Biker",
		"L4D1PlayerRemarkFarm01_path03Biker",
		"L4D1PlayerRemarkFarm01_path04Biker",
		"L4D1PlayerRemarkFarm02_path01Biker",
		"L4D1PlayerRemarkFarm02_path02Biker",
		"L4D1PlayerRemarkFarm02_path02bBiker",
		"L4D1PlayerRemarkFarm02_path06Biker",
		"L4D1PlayerRemarkFarm02_path08Biker",
		"L4D1PlayerRemarkFarm02_path09Biker",
		"L4D1PlayerRemarkFarm03_path01Biker",
		"L4D1PlayerRemarkFarm03_path03aBiker",
		"L4D1PlayerRemarkFarm03_path04Biker",
		"L4D1PlayerRemarkFarm03_path06Biker",
		"L4D1PlayerRemarkFarm03_path07Biker",
		"L4D1PlayerRemarkFarm03_path08Biker",
		"L4D1PlayerRemarkFarm03_path10Biker",
		"L4D1PlayerRemarkFarm04_path01Biker",
		"L4D1PlayerRemarkFarm04_path02Biker",
		"L4D1PlayerRemarkFarm04_path04Biker",
		"L4D1PlayerRemarkFarm04_path06Biker",
		"L4D1PlayerRemarkFarm04_path07Biker",
		"L4D1PlayerRemarkFarm04_path08Biker",
		"L4D1PlayerRemarkFarm04_path10Biker",
		"L4D1PlayerRemarkFarm05_path06Biker",
		"L4D1PlayerRemarkFarm05_path07Biker",
		"L4D1PlayerRemarkFarm05_path07VampiresBiker",
		"L4D1PlayerRemarkFarm05_path07VampirescBiker",
		"L4D1PlayerRemarkFarm05_path08Biker",
		"L4D1PlayerRemarkhospital03_path03Biker",
		"L4D1PlayerRemarkhospital03_path04Biker",
		"L4D1PlayerRemarkhospital03_path07Biker",
		"L4D1PlayerRemarkhospital03_path08Biker",
		"L4D1PlayerRemarkhospital03_path08a2Biker",
		"L4D1PlayerRemarkhospital04_path01Biker",
		"L4D1PlayerRemarkhospital04_path02Biker",
		"L4D1PlayerRemarkhospital04_path04Biker",
		"L4D1PlayerRemarkhospital04_path04aBiker",
		"L4D1PlayerRemarkhospital05_path01aBiker",
		"L4D1PlayerRemarkhospital05_path02Biker",
		"L4D1PlayerAirport04VanStartedXBiker",
		"L4D1PlayerRemarkPathClearVanBiker",
		"L4D1PlayerRemarkSmalltown01_path03Biker",
		"L4D1PlayerRemarkSmalltown01_path05Biker",
		"L4D1PlayerRemarkSmalltown01_path06Biker",
		"L4D1PlayerRemarkSmalltown01_path08Biker",
		"L4D1PlayerRemarkSmalltown01_path10Biker",
		"L4D1PlayerRemarksmalltown02_path01aBiker",
		"L4D1PlayerRemarksmalltown02_path01cBiker",
		"L4D1PlayerRemarksmalltown02_path02Biker",
		"L4D1PlayerRemarksmalltown02_path06Biker",
		"L4D1PlayerRemarksmalltown02_path07aBiker",
		"L4D1PlayerRemarksmalltown02_path08Biker",
		"L4D1PlayerRemarkSmalltown03_path01Biker",
		"L4D1PlayerRemarkSmalltown03_path03Biker",
		"L4D1PlayerRemarkSmalltown03_path04Biker",
		"L4D1PlayerRemarkSmalltown03_path06Biker",
		"L4D1PlayerRemarkSmalltown03_path08Biker",
		"L4D1PlayerRemarkSmalltown03_path10Biker",
		"L4D1PlayerRemarkSmalltown03_path11Biker",
		"L4D1PlayerRemarkSmalltown03_path12Biker",
		"L4D1PlayerRemarkSmalltown04_path01Biker",
		"L4D1PlayerRemarkSmalltown04_path05Biker",
		"L4D1PlayerRemarkSmalltown04_path05aBiker",
		"L4D1PlayerRemarkSmalltown04_path10Biker",
		"L4D1PlayerRemarkSmalltown05_path01Biker",
		"L4D1PlayerRemarkSmalltown05_path02Biker",
		"L4D1PlayerRemarkSmalltown05_path03Biker",
		"L4D1PlayerRemarkSmalltown05_path03aBiker",
		"L4D1PlayerRemarkSmalltown05_path04Biker",
		"L4D1PlayerRemarkSmalltown05_path05Biker",
		"L4D1PlayerRemarkSmalltown05_path06Biker",
		"L4D1PlayerRemarkThroughHereBiker",
		"L4D1PlayerRemarkUpThatLadderBiker",
		"L4D1PlayerZoeySuggestsCraneBiker",
		"L4D1RespondAffirmativeBiker",
		"L4D1RiversideIsDeadPlanBiker",
		"L4D1RiversideIsDeadSpecial1BBiker",
		"PlayerRemarkc7m1_bricktopBiker",
		"PlayerRemarkc7m1_pastbricksBiker",
		"PlayerRemarkc7m1_pretankBiker",
		"PlayerRemarkc7m1_pretankBillBiker",
		"PlayerRemarkc7m1_pretankLouisBiker",
		"PlayerRemarkc7m1_tankcarBiker",
		"PlayerRemarkc7m2_climbupcrapBiker",
		"PlayerRemarkc7m2_gravelhillBiker",
		"PlayerRemarkc7m2_gravelhillBillBiker",
		"PlayerRemarkc7m2_listingtugBiker",
		"PlayerRemarkc7m2_overboatBiker",
		"PlayerRemarkc7m2_seebargeBiker",
		"PlayerRemarkc7m2_throughhereBiker",
		"PlayerRemarkc7m3_seesailboatBiker",
		"PlayerRemarkc7m3_seesailboatBillBiker",
		"PlayerRemarkinfo_carboatBiker",
		"PlayerRemarkinfo_carnotboatBiker",
		"PlayerRemarkInfo_powerboatBiker",
		"PlayerRemarkinfo_powerboat4Biker",
		"PlayerRemarkinfo_sunkboatthereBiker",
		"PlayerRemarkinfo_trailerboatBiker",
		"PlayerRemarkinfo_trailerboatruckBiker",
		"L4D1SurvivorNearFinaleBiker",
		"L4D1PlayerNearFinaleC7M3Biker",
		"L4D1PlayerNearFinaleC11M5Biker",
		"L4D1PlayerNearFinaleC12M5Biker",
		"L4D1C11M5NearFinale2Biker",
		"SurvivorNearCheckpointBiker",
		"SurvivorNearCheckpointC8M3Biker",
		"SurvivorNearCheckpointC10M1Biker",
		"SurvivorNearCheckpointC11M2Biker",
		"SurvivorNearCheckpointC11M3Biker",
		"SurvivorNearCheckpointC11M4Biker",
		"SurvivorNearCheckpointC12M4Biker",
		"SurvivorNearCheckpointC10M4Biker",
		"SafeSpotAheadResponseBiker",
		"L4D1AynRandResponseBiker",
		"L4D1PlayerCoverMeBiker",
		"L4D1PlayerFollowMeBiker",
		"L4D1PlayerHelpBiker",
		"L4D1PlayerHurryUpBiker",
		"L4D1PlayerKillThatLightBiker",
		"L4D1PlayerLeadOnBiker",
		"L4D1PlayerMoveOnBiker",
		"L4D1PlayerStayTogetherBiker",
		"L4D1PlayerWatchOutBehindBiker",
		"L4D1PlayerAskReadyBiker",
		"L4D1PlayerImWithYouBiker",
		"L4D1PlayerLaughBiker",
		"L4D1PlayerLostCallBiker",
		"L4D1PlayerNiceJobResponseBiker",
		"L4D1PlayerNoBiker",
		"L4D1PlayerAnswerLostCallBiker",
		"L4D1PlayerSorryBiker",
		"L4D1PlayerSorryFFBiker",
		"L4D1PlayerThanksBiker",
		"L4D1PlayerYesBiker",
		"L4D1PlayerYouAreWelcomeBiker",
		"PlayerYellRunBiker",
		"L4D1PlayerNegativeBiker",
		"L4D1PlayerAreaClearBiker",
		"L4D1SurvivorSpottedWorldFarBiker",
		"PlayerHurrahBiker",
		"PlayerWarnCarefulBiker",
		"GasPourDoneSCBiker",
		"GasPourSCBiker",
		"GrabbingGasSCBiker",
		"PlayerShotGasCanBiker",
		"ScavengeStartBiker",
		"L4D1IntroSmalltown3Biker",
		"L4D1IntroSmalltownEasterEggBiker",
		"L4D1IntroSmalltownEasterEgg2Biker",
		"L4D1SurvivorSpawnBiker",
		"PlayerCommentJockeyBiker",
		"L4D1PlayerBillPouncedBiker",
		"L4D1PlayerEatPillsBiker",
		"L4D1PlayerGetInsideCheckPointBiker",
		"L4D1PlayerGrenadeBiker",
		"L4D1PlayerIncapacitatedInitialBiker",
		"L4D1PlayerKillConfirmationBiker",
		"PlayerKillTankConfirmationBiker",
		"PlayerKillTankNotHealthyBiker",
		"L4D1PlayerKillConfirmationTankBiker",
		"L4D1C9M2KillTankBiker",
		"L4D1PlayerLockTheDoorCheckPointBiker",
		"L4D1PlayerLouisPouncedBiker",
		"L4D1PlayerRemarkairport01_burningBiker",
		"L4D1PlayerRemarkfarm01_campingBiker",
		"L4D1PlayerSuggestHealthBiker",
		"L4D1PlayerSuggestHealthBillBiker",
		"L4D1PlayerSuggestHealthLouisBiker",
		"L4D1PlayerSuggestHealthZoeyBiker",
		"L4D1PlayerTransitionBiker",
		"L4D1PlayerTransitionCloseBiker",
		"L4D1PlayerWarnHeardBoomerBiker",
		"L4D1PlayerWarnHeardCanadianBoomerBiker",
		"L4D1PlayerWarnHeardHunterBiker",
		"L4D1PlayerWarnHeardSmokerBiker",
		"L4D1PlayerWarnHeardWitchBiker",
		"PlayerHeardWitchBiker",
		"L4D1PlayerWarnMegaMobBiker",
		"L4D1PlayerWarnWitchAngryBiker",
		"L4D1PlayerZoeyPouncedBiker",
		"L4D1SurvivorCaughtVomitBiker",
		"L4D1SurvivorCoughingBiker",
		"L4D1SurvivorDeathBiker",
		"L4D1SurvivorGrabbedByTongueBiker",
		"L4D1SurvivorTankPoundBiker",
		"L4D1SurvivorVocalizeBackUpBiker",
		"L4D1SurvivorVocalizeEmphaticGoBiker",
		"L4D1SurvivorVocalizeGoingToDieBiker",
		"L4D1SurvivorVocalizeGoingToDie3Biker",
		"L4D1SurvivorVocalizeGoingToDieAloneBiker",
		"L4D1SurvivorVocalizeLookOutBiker",
		"L4D1SurvivorVocalizeThisWayBiker",
		"L4D1SurvivorVocalizeWaitHereBiker",
		"Player_C7M2CrowsFlyBiker",
		"Player_C7M3BridgeLeapBiker",
		"SacrificeSuccessfulBiker",
		"SacrificeFailedBiker",
		"PlayerGrabbedByJockeyBiker",
		"PlayerRevivedByDefibrillatorBiker",
		"PlayerRevivedByDefibrillator2Biker",
		"PlayerUsingDefibrillatorBiker",
		"SurvivorchargerpoundBiker",
		"SurvivorGooedBySpitterBiker",
		"SurvivorPouncedByHunterBiker",
		"SurvivorWarnSpitterIncomingBiker",
		"L4D1PlayerLedgeHangEndBiker",
		"L4D1PlayerLedgeHangMiddleBiker",
		"L4D1PlayerLedgeHangStartBiker",
		"L4D1DoubleDeathBiker",
		"L4D1DeathOneBiker",
		"L4D1TeamKillBiker",
		"L4D1PickupAutoShotgunGroovyLouisBiker",
		"L4D1PickupAutoShotgunGroovyZoeyBiker",
		"L4D1SurvivorPickupAutoShotgunBiker",
		"L4D1SurvivorPickupFirstAidKitBiker",
		"L4D1SurvivorPickupHuntingRifleBiker",
		"L4D1SurvivorPickupMilitarySniperBiker",
		"L4D1SurvivorPickupMolotovBiker",
		"L4D1SurvivorPickupPainPillsBiker",
		"L4D1SurvivorPickupAdrenalineBiker",
		"L4D1SurvivorPickupPipeBombBiker",
		"L4D1SurvivorPickupPumpShotgunBiker",
		"L4D1SurvivorPickupRifleBiker",
		"L4D1SurvivorPickupSMGBiker",
		"L4D1TakeShotgunGroovyZoey2Biker",
		"SurvivorDeployUpExplosivesBiker",
		"SurvivorPickupSecondPistolBiker",
		"L4D1SurvivorPickupM60Biker",
		"L4D1SurvivorPickupMeleeBiker",
		"L4D1SurvivorPickupChainsawBiker",
		"L4D1PlayerChainSawUsedBiker",
		"L4D1SurvivorPickupUpIncendiaryAmmoBiker",
		"L4D1SurvivorPickupUpExplosivesBiker",
		"L4D1PlayerGettingRevivedBiker",
		"L4D1PlayerHealOtherBiker",
		"L4D1PlayerHealOtherCombatBiker",
		"L4D1PlayerReviveFriendBiker",
		"L4D1PlayerReviveFriendCriticalBiker",
		"L4D1PlayerReviveFriendLoudBiker",
		"L4D1PlayerReviveFriendLoudBillBiker",
		"L4D1PlayerReviveFriendLoudLouisBiker",
		"L4D1PlayerReviveFriendLoudZoeyBiker",
		"L4D1ReviveFriendDownFinalBiker",
		"L4D1ReviveFriendDownFinalManagerBiker",
		"L4D1ReviveFriendDownFinalNamVetBiker",
		"L4D1ReviveFriendDownFinalTeenGirlBiker",
		"PlayerLedgeSaveBiker",
		"L4D1PlayerAirportIntroBiker",
		"L4D1PlayerAirportIntrobcBiker",
		"L4D1PlayerAirportIntrofbBiker",
		"L4D1PlayerFarmHouseIntroBiker",
		"L4D1PlayerFarmHouseIntro2Biker",
		"L4D1PlayerHospitalIntro02Biker",
		"InfoReminfo_powerboat4aBiker",
		"L4D1PlayerCoverMeHealBiker",
		"AutoPlayerLostCallBiker",
		"SurvivorSpottedChainsawBiker",
		"SurvivorSpottedWeaponBiker",
		"SurvivorSpottedMeleeWeaponBiker",
		"L4D1PlayerLighthouseIntroBiker",
		"L4D1PlayerLighthouseIntro01Biker",
		"L4D1PlayerLighthouseIntro03Biker",
		"L4D1PlayerLighthouseIntro03bBiker",
		"L4D1PlayerLighthouseIntro04aBiker",
		"L4D1RemarkC14M1HumveeBiker",
		"L4D1C14M1PlaneFlyByBiker",
		"L4D1C14M1EngineBrokeBiker",
		"L4D1RemarkC14M1CabinUpstairsBiker",
		"L4D1RemarkC14M1JunkyardEntranceBiker",
		"L4D1RemarkC14M1TraincarBiker",
		"L4D1RemarkC14M1PrePanicBiker",
		"L4D1C14M1PanicSpeakQuickReadyBiker",
		"L4D1C14M1PanicSpeakBiker",
		"L4D1C14M1GeneratorActivatedSpeakBiker",
		"L4D1C14M1ThirdGeneratorActivatedSpeakBiker",
		"L4D1C14M1PathClearBiker",
		"L4D1RemarkC14M1DownCliffBiker",
		"L4D1C14M2RadioSpeakBiker",
		"L4D1C14M2RadioDestroyedBiker",
		"L4D1RemarkC14M2DropBiker",
		"L4D1RemarkC14M2NoteLighthouseBiker",
		"L4D1C14M2NoteLighthouse2Biker",
		"L4D1C14M2PowerOutAgainBiker",
		"L4D1SurvivorFinalVehicleSpottedBoatC14M2Biker",
		// biker_dlc1.txt ====================================================================================================
		"L4D1PlayerNiceShotBiker",
		"C6M1Intro_01bBiker",
		"C6M1Intro_01Biker01Biker",
		"C6M1Intro_01Biker03Biker",
		"C6M1Intro_01Biker05Biker",
		"C6M1Intro_01Biker06Biker",
		"C6M1Intro_01Biker07Biker",
		"C6M1Intro_01Biker08Biker",
		"C6M1Intro_01dBiker",
		"C6M1Intro_02bBiker",
		"C6M1Intro_05bBiker",
		"C6M1Intro_05dBiker",
		"C6M1Intro_06aBiker",
		"C6M1Intro_06cBiker",
		"C6M1Intro_06eBiker",
		"C6M1Intro_07aBiker",
		"C6M1Intro_09cBiker",
		"C6M1Intro_09gBiker",
		"C6M1Intro_10aBiker",
		"C6M1Intro_10cBiker",
		"C6M1Intro_14bBiker",
		"C6M1Intro_16bBiker",
		"C6M1Intro_18aBiker",
		"C6M1Intro_18cBiker",
		"C6M1Intro_18eBiker",
		"C6M1Intro_19aBiker",
		"C6M1Intro_20cBiker",
		"C6M1Intro_20eBiker",
		"C6M1Intro_20fBiker",
		"C6M1Intro_21cBiker",
		"C6M1Intro_21eBiker",
		"C6M1Intro_21fBiker",
		"C6M1Intro_24bBiker",
		"C6M1Intro_24dBiker",
		"c6m3_outroBiker",
		"c6m3_outroL4D1Biker",
		"c6m3_outroL4D1010aBiker",
		"c6m3_outroL4D104bBiker",
		"c6m3_outroL4D108aBiker",
		"c6m3_outroL4D1AllBiker",
		"c6m3_outroL4D1CoachBiker",
		"c6m3_outroL4D1CopBiker",
		"c6m3_outroL4D1GamblerBiker",
		"c6m3_outroL4D1GibbsBiker",
		"c6m3_outroL4D1MechanicBiker",
		"c6m3_outroL4D1ProducerBiker",
		"C6M3VocalizeLookOutBiker",
		"IncapBounce2Biker",
		"L4D1_AttractPlayerForThrowBiker",
		"L4D1_SurvivorBotTakeThisItemBiker",
		"WorldC6M3_ByBridge01Biker",
		"WorldC6M3_ByBridge01EllisBiker",
		"L4D1AlsoSpottedBoomerBiker",
		"L4D1AlsoSpottedHunterBiker",
		"L4D1AlsoSpottedSmokerBiker",
		"L4D1AlsoSpottedTankBiker",
		"L4D1SpottedBoomerBiker",
		"L4D1SpottedChargerBiker",
		"L4D1SpottedHunterBiker",
		"L4D1SpottedJockeyBiker",
		"L4D1SpottedSmokerBiker",
		"L4D1SpottedSpitterBiker",
		"L4D1SpottedTankBiker",
		"L4D1_ReloadingBiker",
		"L4D1PlayerKillConfirmationBiker",
		"L4D1PlayerKillConfirmationTankBiker",
		"L4D1PlayerWarnMegaMobBiker",
		// biker_dlc2.txt ====================================================================================================
		"_PlayerInfoRemarkableBlankBiker",
		"PlayerNiceShotBiker",
		"PlayerRemarkFarm05_path09BBiker",
		"PlayerRemarkFarm05_path09CBiker",
		"ReviveMeINterruptedBiker",
		"SurvivorMournBillBiker",
		"SurvivorMournLouisBiker",
		"SurvivorMournZoeyBiker",
		"PlayerRemarkFarm01_path09Biker",
		"PlayerRemarkSmalltown03_path14Biker",
		"ThanksGotItemBiker",
		"HealThanksBiker",
		"ReviveThanksBiker",
		"ReviveThanksBillBiker",
		"ReviveThanksLouisBiker",
		"ReviveThanksZoeyBiker",
		"AutoYouAreWelcomeBiker",
		"BotAttentionBattleBiker",
		"BotHurrahAlsoBiker",
		"BotPlayer_YourWelcomeBiker",
		"BotReassureComingBiker",
		"BotReassureNearbyBiker",
		"BotYesReadyBiker",
		"crashHowitzerNagBiker",
		"CrashWarnMegaMobBiker",
		"HowitzerBurnEnd00Biker",
		"HowitzerBurnEnd01Biker",
		"CrashFinaleGenerator2OnSpkBiker",
		"CrashFinaleGenerator2SpeakBiker",
		"CrashFinaleGeneratorBreakSpkBiker",
		"CrashFinaleGeneratorNagBiker",
		"CrashFinaleGeneratorSpeakBiker",
		"CrashFinaleGenUnPressSpeakBiker",
		"CrashFinaleTruckNagBiker",
		"CrashFinaleTruckReadySpkBiker",
		"CrashFinaleTruckResp01Biker",
		"CrashYerKiddingBiker",
		"PlayerRemarkcrashcourse02_path14Biker",
		"CrashCourseR02Biker",
		"CrashCourseR07Biker",
		"CrashCourseR08Biker",
		"CrashCourseR09Biker",
		"CrashCourseR10Biker",
		"CrashCourseR13Biker",
		"PlayerRemarkcrashcourse01_path02Biker",
		"PlayerRemarkcrashcourse01_path05Biker",
		"PlayerRemarkcrashcourse01_path06Biker",
		"PlayerRemarkcrashcourse01_path07Biker",
		"PlayerRemarkcrashcourse01_path08Biker",
		"PlayerRemarkcrashcourse01_path11Biker",
		"PlayerRemarkcrashcourse01_path12Biker",
		"PlayerRemarkcrashcourse01_path13Biker",
		"PlayerRemarkcrashcourse01_path14Biker",
		"PlayerRemarkcrashcourse01_path17Biker",
		"PlayerRemarkcrashcourse01_path18Biker",
		"PlayerRemarkcrashcourse01_path19Biker",
		"PlayerRemarkcrashcourse01_path20Biker",
		"PlayerRemarkcrashcourse01_path21Biker",
		"PlayerRemarkcrashcourse01_path24Biker",
		"PlayerRemarkcrashcourse01_path25Biker",
		"PlayerRemarkcrashcourse02_path05Biker",
		"PlayerRemarkcrashcourse02_path06Biker",
		"PlayerRemarkcrashcourse02_path07Biker",
		"PlayerRemarkcrashcourse02_path08Biker",
		"PlayerRemarkcrashcourse02_path10Biker",
		"PlayerRemarkcrashcourse02_path11Biker",
		"PlayerRemarkcrashcourse02_path12Biker",
		"IntroCrashR02Biker",
		"IntroCrashR04Biker",
		"IntroCrashR06Biker",
		"IntroCrashR08Biker",
		"IntroCrashR10Biker",
		"IntroCrashR12Biker",
		"IntroCrashR14Biker",
		"IntroCrashR16Biker",
		"IntroCrashR18Biker",
		"IntroCrashR20Biker",
		"IntroCrashR21Biker",
		"IntroCrashR23Biker",
		"IntroCrashR26Biker",
		"IntroCrashR27Biker",
		"IntroCrashR29Biker",
		"IntroCrashR31Biker",
		"PlayerCrashCourseIntroBiker",
		"CrashCourseI01Biker",
		"PlayerRemarkcrashcourse02_introBiker",
		"PlayerRemarkcrashcourse02_startaBiker",
		"IntroFarm4Biker",
		"SurvivorBoomerBlunderBiker",
		"SurvivorFinaleTriggeredBoatBiker",
		"SurvivorFinaleTriggeredFarmBiker",
		"SurvivorFinaleTriggeredRooftopBiker",
		"SurvivorFinalVehicleBoatBiker",
		"SurvivorFinalVehicleFarmBiker",
		"SurvivorFinalVehicleFarmSpottedBiker",
		"SurvivorFinalVehicleRooftopBiker",
		"SurvivorFinalVehicleRunwayBiker",
		"SurvivorFinalVehicleSpottedBoatBiker",
		"SurvivorFinalVehicleSpottedRooftopBiker",
		"SurvivorFinalVehicleSpottedRunwayBiker",
		"ResponseLoudDispleasureSwearBiker",
		"ResponseSoftDispleasureSwearBiker",
		"SurvivorAskBillForHealthBiker",
		"SurvivorAskForHealthBiker",
		"SurvivorAskLouisForHealthBiker",
		"SurvivorAskZoeyForHealthBiker",
		"SurvivorFrancisHealthHereBiker",
		"SurvivorSpottedAmmoBiker",
		"SurvivorSpottedBillCloseBiker",
		"SurvivorSpottedBillClose2Biker",
		"SurvivorSpottedBillFarBiker",
		"SurvivorSpottedGrenadeBiker",
		"SurvivorSpottedGrenadeAutoBiker",
		"SurvivorSpottedHealthBiker",
		"SurvivorSpottedHealthAutoBiker",
		"SurvivorSpottedLouisCloseBiker",
		"SurvivorSpottedLouisClose2Biker",
		"SurvivorSpottedLouisFarBiker",
		"SurvivorSpottedMolotovBiker",
		"SurvivorSpottedMolotovAutoBiker",
		"SurvivorSpottedPillsBiker",
		"SurvivorSpottedPillsAutoBiker",
		"SurvivorSpottedWorldCloseBiker",
		"SurvivorSpottedZoeyCloseBiker",
		"SurvivorSpottedZoeyClose2Biker",
		"SurvivorSpottedZoeyFarBiker",
		"SurvivorMovingToBattleStationBiker",
		"SurvivorSpottedBoomerBiker",
		"SurvivorSpottedHunterBiker",
		"SurvivorSpottedInfectedBiker",
		"SurvivorSpottedSmokerBiker",
		"SurvivorSpottedTankBiker",
		"SurvivorSpottedWitchBiker",
		"EmphaticArriveRunBiker",
		"PlayerAlertGiveItemBiker",
		"PlayerFriendlyFireBiker",
		"PlayerFriendlyFire2Biker",
		"PlayerFriendlyFireFromBillBiker",
		"PlayerFriendlyFireFromLouisBiker",
		"PlayerFriendlyFireFromZoeyBiker",
		"PlayerFriendlyFireNoBulletBiker",
		"PlayerToTheRescueBiker",
		"SurvivorTauntResponseBiker",
		"EmphaticArriveRunFarm2Biker",
		"PlayerChokeResponseBiker",
		"PlayerTonguePullStartResponseBiker",
		"SurvivorCriticalHurtBiker",
		"SurvivorIncapacitatedHurtBiker",
		"SurvivorMajorHurtBiker",
		"SurvivorMinorHurtBiker",
		"SurvivorReloadingBiker",
		"PlayerHelpIncappedBiker",
		"HelpResponseBillBiker",
		"HelpResponseLouisBiker",
		"HelpResponseLouisBBiker",
		"HelpResponseLouisB2Biker",
		"HelpResponseZoeyBiker",
		"PlayeGoingToDie3VampirebBiker",
		"PlayerAirport02CraneStartedBiker",
		"PlayerAirport02DumpsterDownBiker",
		"Playerairport03_barrieraBiker",
		"PlayerAirport03FirePathClearaBiker",
		"PlayerAirport03FirePathClearXBiker",
		"PlayerAirport03FireStartedXBiker",
		"Playerairport04_05aBiker",
		"Playerairport04_08aBiker",
		"Playerairport04_08bBiker",
		"Playerairport04_08cBiker",
		"Playerairport04_vanaBiker",
		"PlayerRemarkairport02_creshendo01aBiker",
		"PlayerRemarkairport02_creshendo01bBiker",
		"PlayerRemarkairport02_path01Biker",
		"PlayerRemarkairport02_path02Biker",
		"PlayerRemarkairport02_path03Biker",
		"PlayerRemarkairport02_path04Biker",
		"PlayerRemarkairport02_path05Biker",
		"PlayerRemarkairport02_path06Biker",
		"PlayerRemarkairport03_01Biker",
		"PlayerRemarkairport03_02aBiker",
		"PlayerRemarkairport03_02bBiker",
		"PlayerRemarkairport03_03aBiker",
		"PlayerRemarkairport03_03bBiker",
		"PlayerRemarkairport03_03cBiker",
		"PlayerRemarkairport03_04Biker",
		"PlayerRemarkairport03_05Biker",
		"PlayerRemarkairport03_06Biker",
		"PlayerRemarkairport03_07Biker",
		"PlayerRemarkairport03_barrierBiker",
		"PlayerRemarkairport04_01Biker",
		"PlayerRemarkairport04_03Biker",
		"PlayerRemarkairport04_07Biker",
		"PlayerRemarkairport04_08aBiker",
		"PlayerRemarkairport04_08bBiker",
		"PlayerRemarkairport04_08cBiker",
		"PlayerRemarkairport04_08dBiker",
		"PlayerRemarkairport04_08eBiker",
		"PlayerRemarkairport04_08fBiker",
		"PlayerRemarkairport04_09Biker",
		"PlayerRemarkairport04_vanBiker",
		"PlayerRemarkcrashcourse01_path01Biker",
		"PlayerRemarkFarm01_path01Biker",
		"PlayerRemarkFarm01_path02Biker",
		"PlayerRemarkFarm01_path03Biker",
		"PlayerRemarkFarm01_path04Biker",
		"PlayerRemarkFarm02_path01Biker",
		"PlayerRemarkFarm02_path02Biker",
		"PlayerRemarkFarm02_path02bBiker",
		"PlayerRemarkFarm02_path06Biker",
		"PlayerRemarkFarm02_path08Biker",
		"PlayerRemarkFarm02_path09Biker",
		"PlayerRemarkFarm03_path01Biker",
		"PlayerRemarkFarm03_path03aBiker",
		"PlayerRemarkFarm03_path04Biker",
		"PlayerRemarkFarm03_path06Biker",
		"PlayerRemarkFarm03_path07Biker",
		"PlayerRemarkFarm03_path08Biker",
		"PlayerRemarkFarm03_path10Biker",
		"PlayerRemarkFarm04_path01Biker",
		"PlayerRemarkFarm04_path01aBiker",
		"PlayerRemarkFarm04_path02Biker",
		"PlayerRemarkFarm04_path04Biker",
		"PlayerRemarkFarm04_path06Biker",
		"PlayerRemarkFarm04_path07Biker",
		"PlayerRemarkFarm04_path08Biker",
		"PlayerRemarkFarm04_path09Biker",
		"PlayerRemarkFarm04_path10Biker",
		"PlayerRemarkFarm05_path06Biker",
		"PlayerRemarkFarm05_path07Biker",
		"PlayerRemarkFarm05_path07VampiresBiker",
		"PlayerRemarkFarm05_path07VampirescBiker",
		"PlayerRemarkFarm05_path08Biker",
		"PlayerRemarkhospital01_path03Biker",
		"PlayerRemarkhospital02_safehouseBiker",
		"PlayerRemarkhospital03_path03Biker",
		"PlayerRemarkhospital03_path04Biker",
		"PlayerRemarkhospital03_path07Biker",
		"PlayerRemarkhospital03_path08Biker",
		"PlayerRemarkhospital03_path08a2Biker",
		"PlayerRemarkhospital03_path11Biker",
		"PlayerRemarkhospital04_path01Biker",
		"PlayerRemarkhospital04_path02Biker",
		"PlayerRemarkhospital04_path04Biker",
		"PlayerRemarkhospital04_path04aBiker",
		"PlayerRemarkhospital05_path01aBiker",
		"PlayerRemarkhospital05_path02Biker",
		"PlayerRemarkPathClearVanBiker",
		"PlayerRemarkSmalltown01_path03Biker",
		"PlayerRemarkSmalltown01_path05Biker",
		"PlayerRemarkSmalltown01_path06Biker",
		"PlayerRemarkSmalltown01_path08Biker",
		"PlayerRemarkSmalltown01_path09Biker",
		"PlayerRemarkSmalltown01_path10Biker",
		"PlayerRemarksmalltown02_path01aBiker",
		"PlayerRemarksmalltown02_path01cBiker",
		"PlayerRemarksmalltown02_path02Biker",
		"PlayerRemarksmalltown02_path03Biker",
		"PlayerRemarksmalltown02_path04Biker",
		"PlayerRemarksmalltown02_path06Biker",
		"PlayerRemarksmalltown02_path07aBiker",
		"PlayerRemarksmalltown02_path08Biker",
		"PlayerRemarkSmalltown02_path09Biker",
		"PlayerRemarkSmalltown03_path01Biker",
		"PlayerRemarkSmalltown03_path02Biker",
		"PlayerRemarkSmalltown03_path03Biker",
		"PlayerRemarkSmalltown03_path04Biker",
		"PlayerRemarkSmalltown03_path05Biker",
		"PlayerRemarkSmalltown03_path06Biker",
		"PlayerRemarkSmalltown03_path08Biker",
		"PlayerRemarkSmalltown03_path10Biker",
		"PlayerRemarkSmalltown03_path11Biker",
		"PlayerRemarkSmalltown03_path12Biker",
		"PlayerRemarkSmalltown03_path13Biker",
		"PlayerRemarkSmalltown04_path01Biker",
		"PlayerRemarkSmalltown04_path02Biker",
		"PlayerRemarkSmalltown04_path05Biker",
		"PlayerRemarkSmalltown04_path05aBiker",
		"PlayerRemarkSmalltown04_path10Biker",
		"PlayerRemarkSmalltown05_path01Biker",
		"PlayerRemarkSmalltown05_path02Biker",
		"PlayerRemarkSmalltown05_path03Biker",
		"PlayerRemarkSmalltown05_path03aBiker",
		"PlayerRemarkSmalltown05_path04Biker",
		"PlayerRemarkSmalltown05_path05Biker",
		"PlayerRemarkSmalltown05_path06Biker",
		"PlayerRemarkThroughHereBiker",
		"PlayerRemarkUpThatLadderBiker",
		"PlayerZoeySuggestsCraneBiker",
		"RespondAffirmativeBiker",
		"RiversideIsDeadBiker",
		"RiversideIsDeadPlanBiker",
		"RiversideIsDeadSpecial1ABiker",
		"RiversideIsDeadSpecial1CBiker",
		"PlayerNearFinaleFarmBiker",
		"AynRandResponseBiker",
		"PlayerCoverMeBiker",
		"PlayerFollowMeBiker",
		"PlayerHelpBiker",
		"PlayerHurryUpBiker",
		"PlayerKillThatLightBiker",
		"PlayerLeadOnBiker",
		"PlayerMoveOnBiker",
		"PlayerStayTogetherBiker",
		"PlayerWatchOutBehindBiker",
		"PlayerAskReadyBiker",
		"PlayerImWithYouBiker",
		"PlayerLaughBiker",
		"PlayerLostCallBiker",
		"PlayerNiceJobResponseBiker",
		"PlayerNoBiker",
		"PlayerProfanityBiker",
		"PlayerSorryBiker",
		"PlayerThanksBiker",
		"PlayerYesBiker",
		"PlayerYouAreWelcomeBiker",
		"PlayerNegativeBiker",
		"PlayerAreaClearBiker",
		"PlayerHeardBoomerBiker",
		"PlayerHeardHunterBiker",
		"PlayerHeardSmokerBiker",
		"PlayerHeardTankBiker",
		"PlayerHeardWitchBiker",
		"PlayerHurrahBiker",
		"PlayerWarnCarefulBiker",
		"SurvivorSpottedWorldFarBiker",
		"IntroSmalltown3Biker",
		"SurvivorSpawnBiker",
		"SurvivorSpawnLastMainstreetBiker",
		"PlayerBillPouncedBiker",
		"PlayerEatPillsBiker",
		"PlayerGetInsideCheckPointBiker",
		"PlayerGrenadeBiker",
		"PlayerGrenadeCarefulBiker",
		"PlayerIncapacitatedInitialBiker",
		"PlayerKillConfirmationBiker",
		"PlayerLockTheDoorCheckPointBiker",
		"PlayerLouisPouncedBiker",
		"PlayerRemarkairport01_burningBiker",
		"PlayerRemarkfarm01_campingBiker",
		"PlayerStayTogetherInsideBiker",
		"PlayerSuggestHealthBillBiker",
		"PlayerSuggestHealthLouisBiker",
		"PlayerSuggestHealthZoeyBiker",
		"PlayerSuggestMeHealthBikerBiker",
		"PlayerSuggestMeHealthManagerBiker",
		"PlayerSuggestMeHealthNamVetBiker",
		"PlayerSuggestMeHealthTeenGirlBiker",
		"PlayerTransitionBiker",
		"PlayerTransitionCloseBiker",
		"PlayerWarnHeardBoomerBiker",
		"PlayerWarnHeardHunterBiker",
		"PlayerWarnHeardSmokerBiker",
		"PlayerWarnHeardWitchBiker",
		"PlayerWarnMegaMobBiker",
		"PlayerWarnWitchAngryBiker",
		"PlayerZoeyPouncedBiker",
		"SurvivorCaughtVomitBiker",
		"SurvivorCoughingBiker",
		"SurvivorCoughingDeathBiker",
		"SurvivorDeathBiker",
		"SurvivorGrabbedByTongueBiker",
		"SurvivorNearFinaleBiker",
		"SurvivorTankPoundBiker",
		"SurvivorVocalizeBackUpBiker",
		"SurvivorVocalizeEmphaticGoBiker",
		"SurvivorVocalizeFollowMeBiker",
		"SurvivorVocalizeGoingToDieBiker",
		"SurvivorVocalizeGoingToDie3Biker",
		"SurvivorVocalizeGoingToDieAloneBiker",
		"SurvivorVocalizeLookOutBiker",
		"SurvivorVocalizeThisWayBiker",
		"SurvivorVocalizeWaitHereBiker",
		"PlayerLedgeHangEndBiker",
		"PlayerLedgeHangMiddleBiker",
		"PlayerLedgeHangStartBiker",
		"DoubleDeath2Biker",
		"SurvivorDiedBillBiker",
		"SurvivorDiedLouisBiker",
		"SurvivorDiedZoeyBiker",
		"PickupAutoShotgunGroovyLouisBiker",
		"PickupAutoShotgunGroovyZoeyBiker",
		"SurvivorPickupAutoShotgunBiker",
		"SurvivorPickupFirstAidKitBiker",
		"SurvivorPickupHuntingRifleBiker",
		"SurvivorPickupMolotovBiker",
		"SurvivorPickupPainPillsBiker",
		"SurvivorPickupPipeBombBiker",
		"SurvivorPickupPumpShotgunBiker",
		"SurvivorPickupRifleBiker",
		"SurvivorPickupSecondPistolBiker",
		"SurvivorPickupSMGBiker",
		"TakeShotgunGroovyZoey2Biker",
		"PlayerGettingRevivedBiker",
		"PlayerHealOtherBiker",
		"PlayerHealOtherCombatBiker",
		"PlayerLedgeSaveBiker",
		"PlayerReviveFriendBiker",
		"PlayerReviveFriendCriticalBiker",
		"PlayerReviveFriendLoudBiker",
		"PlayerReviveFriendLoudBillBiker",
		"PlayerReviveFriendLoudLouisBiker",
		"PlayerReviveFriendLoudZoeyBiker",
		"PlayerReviveFriendShortBiker",
		"PlayerAirportIntroBiker",
		"PlayerAirportIntrobcBiker",
		"PlayerAirportIntrofbBiker",
		"PlayerFarmHouseIntroBiker",
		"PlayerFarmHouseIntro2Biker",
		"PlayerHospitalIntro02Biker",
		"PlayerCoverMeHealBiker",
		"SurvivorSpottedWeaponBiker",
		"SurvivorSpottedWeaponPistolAutoBiker",
		"PlayerRelaxedSighBiker",
		"PlayerUseAdrenalineBiker",
		"PlayerUsingDefibrillatorBiker",
		"PlayerRevivedByDefibrillatorBiker",
		"PlayerRevivedByDefibrillator2Biker",
		"SurvivorPouncedByHunterBiker",
		"PlayerGrabbedByJockeyBiker",
		"SurvivorJockeyHurtMajorBiker",
		"SurvivorJockeyHurtMinorBiker",
		"PlayerCommentJockeyBiker",
		"SurvivorchargerpoundBiker",
		"SurvivorGooedBySpitterBiker",
		"SurvivorWarnSpitterIncomingBiker",
		"SurvivorDeployUpExplosivesBiker",
		"SurvivorDeployUpIncendiaryBiker",
		"SurvivorPickupM60Biker",
		// biker_dlc3.txt ====================================================================================================
		"C7M3_saferoom001Biker",
		"C7M1_saferoom01Biker",
		"C7M1_saferoom04Biker",
		"C7M1_saferoom05Biker",
		"C7M1_saferoom06Biker",
		"C7M1_saferoom07aBiker",
		"C7M1_saferoom12aBiker",
		"C7M1_saferoom13Biker",
		"C7M1_saferoom14aBiker",
		"C7M1_saferoom15bBiker",
		"C7M1_saferoom16Biker",
		"C7M1_saferoom16bBiker",
		"C7M1_saferoom17Biker",
		"C7M1_saferoom18aBiker",
		"C7M1_saferoom21Biker",
		"C7M1_saferoom21aBiker",
		"C7M1OpenTankDoorBiker",
		"C7M1SafeRoomIdleBiker",
		"C7M1SafeRoomStartBiker",
		"InfoRemc7m1_pretank01Biker",
		"InfoRemc7m1_pretank03Biker",
		"InfoRemc7m1_pretank04Biker",
		"InfoRemc7m1_tankcar01Biker",
		"C7M2_saferoom02cBiker",
		"C7M2_saferoom02eBiker",
		"C7M2_saferoom03Biker",
		"C7M2_saferoom03bBiker",
		"C7M2_saferoom05aBiker",
		"C7M2SafeRoomIdleBiker",
		"C7M2SafeRoomStartBiker",
		"Player_WarnMegaMobc7m201Biker",
		"C7M3_saferoom002Biker",
		"C7M3_saferoom004bBiker",
		"C7M3_saferoom006aBiker",
		"C7M3_saferoom008Biker",
		"C7M3_saferoom008bBiker",
		"C7M3_saferoom012aBiker",
		"C7M3_saferoom012cBiker",
		"C7M3_saferoom012eBiker",
		"C7M3_saferoom013Biker",
		"C7M3_saferoom013bBiker",
		"C7M3_saferoom013dBiker",
		"C7M3_saferoom014Biker",
		"C7M3_saferoom014bBiker",
		"C7M3_saferoom015Biker",
		"C7M3_saferoom016aBiker",
		"C7M3_saferoom016cBiker",
		"C7M3_saferoom017aBiker",
		"C7M3_saferoom017cBiker",
		"C7M3_saferoom017eBiker",
		"C7M3_saferoom017gBiker",
		"C7M3_saferoom017hBiker",
		"C7M3BridgeBreaksBiker",
		"C7M3FinalPressManagerBiker",
		"C7M3FinalPressNamVetBiker",
		"C7M3FinalPressTeenGirlBiker",
		"C7M3GeneratorPress01Biker",
		"C7M3GeneratorPress02Biker",
		"C7M3GeneratorPress03Biker",
		"C7M3PlayerGetToRescueVehicleBiker",
		"C7M3SafeRoomIdleBiker",
		"C7M3SafeRoomStartBiker",
		"C7M3WaveOverGen1Biker",
		"C7M3WaveOverGen2Biker",
		"SurvivorSpottedAdrenalineBiker",
		"SurvivorSpottedAdrenalineAutoBiker",
		"SurvivorSpottedGrenadeLauncherBiker",
		"SurvivorSpottedGrenadeLauncherAutoBiker",
		"SurvivorSpottedUpPack_ExplosiveBiker",
		"SurvivorSpottedUpPack_ExplosiveAutoBiker",
		"SurvivorSpottedUpPack_IncendiaryBiker",
		"SurvivorSpottedUpPack_IncendiAutoBiker",
		"SurvivorSpottedVomitJarBiker",
		"SurvivorSpottedVomitJarAutoBiker",
		"PlayerToTheRescueRosBiker",
		"SurvivorTauntResponseBiker",
		"PlayerRemarkc7m1_bricktopBiker",
		"PlayerRemarkc7m1_pastbricksBiker",
		"PlayerRemarkc7m1_pretankBiker",
		"PlayerRemarkc7m1_tankcarBiker",
		"PlayerRemarkc7m2_climbupcrapBiker",
		"PlayerRemarkc7m2_gravelhillBiker",
		"PlayerRemarkc7m2_listingtugBiker",
		"PlayerRemarkc7m2_overboatBiker",
		"PlayerRemarkc7m2_seebargeBiker",
		"PlayerRemarkc7m2_throughhereBiker",
		"PlayerRemarkc7m3_seesailboatBiker",
		"PlayerRemarkinfo_carboatBiker",
		"PlayerRemarkinfo_carnotboatBiker",
		"PlayerRemarkInfo_powerboatBiker",
		"PlayerRemarkInfo_powerboat2Biker",
		"PlayerRemarkinfo_powerboat3Biker",
		"PlayerRemarkinfo_powerboat4Biker",
		"PlayerRemarkinfo_sunkboatthereBiker",
		"PlayerRemarkinfo_trailerboatBiker",
		"PlayerRemarkinfo_trailerboatruckBiker",
		"PlayerYellRunBiker",
		"GrabbingGasSCBiker",
		"PlayerShotGasCanBiker",
		"ScavengeStartBiker",
		"GasPourSCBiker",
		"GasPourDoneSCBiker",
		"FinaleAheadc7m3Biker",
		"Player_C7M2CrowsFlyBiker",
		"Player_C7M3BridgeLeapBiker",
		"SurvivorPickupAdrenalineBiker",
		"SurvivorPickupAdrenalineAlwaysBiker",
		"SurvivorPickupbaseball_batBiker",
		"SurvivorPickupchainsawBiker",
		"SurvivorPickupcricket_batBiker",
		"SurvivorPickupCricketBatBiker",
		"SurvivorPickupCrowBarBiker",
		"SurvivorPickupelectric_guitarBiker",
		"SurvivorPickupFireAxeBiker",
		"SurvivorPickupFryingPanBiker",
		"SurvivorPickupGrenadeLauncherBiker",
		"SurvivorPickupIncendiaryAmmoBiker",
		"SurvivorPickupKatanaBiker",
		"SurvivorPickupLaserSightsAlwaysBiker",
		"SurvivorPickupMacheteBiker",
		"SurvivorPickupMagnumBiker",
		"SurvivorPickupMagnumAlwaysBiker",
		"SurvivorPickuptonfaBiker",
		"SurvivorPickupGolfClubBiker",
		"SurvivorPickupUpExplosiveAmmoBiker",
		"SurvivorPickupUpExplosivesBiker",
		"SurvivorPickupUpIncendiaryBiker",
		"SurvivorPickupUpIncendiaryAmmoBiker",
		"SurvivorPickupVomitJarBiker",
		"SurvivorPickupVomitJarAlwaysBiker",
		"InfoReminfo_powerboat4aBiker",
		"PlayerLostCallBiker",
		"SurvivorSpottedChainsawBiker",
		"SurvivorSpottedChainsawAutoBiker",
		"SurvivorSpottedcricket_batBiker",
		"SurvivorSpottedcricket_batAutoBiker",
		"SurvivorSpottedcrowbarBiker",
		"SurvivorSpottedcrowbarAutoBiker",
		"SurvivorSpottedGuitarBiker",
		"SurvivorSpottedGuitarAutoBiker",
		"SurvivorSpottedKatanaBiker",
		"SurvivorSpottedKatanaAutoBiker",
		"SurvivorSpottedLaserSightsBiker",
		"SurvivorSpottedLaserSightsAutoBiker",
		"SurvivorSpottedMacheteBiker",
		"SurvivorSpottedMacheteAutoBiker",
		"SurvivorSpottedMagnumBiker",
		"SurvivorSpottedMagnumAutoBiker",
		"SurvivorSpottedtonfaBiker",
		"SurvivorSpottedtonfaAutoBiker",
		"SurvivorSpottedGolfClubBiker",
		"SurvivorSpottedGolfClubAutoBiker",
		"SurvivorSpottedDefibrillatorBiker",
		"SurvivorSpottedDefibrillatorAutoBiker",
		"SurvivorPickupDefibrillatorBiker",
		// finales_dlc2.txt ====================================================================================================
		"ConceptHospitalRadioTalkBiker",
		"ConceptHospitalReadyConfirmedBiker",
		// terror_player_dlc2.txt ====================================================================================================
		"HitCraneButtonBiker",
		"Airport03FireStartedBiker",
		// terror_player_dlc2_use.txt ====================================================================================================
		"HitCraneButtonBiker",
		"Airport03FireStartedBiker",
		"Airport04VanStartedBiker"
	],