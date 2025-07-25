// arcade ============================================================================================================================
function IsShotMannHaruka(query) {
    if("worldshotmannharuka" in query) { return query.worldshotmannharuka > 3; } 
    else return false;
}
function IsShotMannSara(query) {
    if("worldshotmannsara" in query) { return query.worldshotmannsara > 3; } 
    else return false;
}
function IsShotMannYusuke(query) {
    if("worldshotmannyusuke" in query) { return query.worldshotmannyusuke > 3; } 
    else return false;
}
function IsShotMannBlake(query) {
    if("worldshotmannblake" in query) { return query.worldshotmannblake > 3; } 
    else return false;
}
function IsNotSaidShotMannequinHaruka2(query) {
    if("worldsaidshotmannequinharuka2" in query) { return query.worldsaidshotmannequinharuka2 != 1; } 
    else return true;
}
function IsNotSaidShotMannequinSara2(query) {
    if("worldsaidshotmannequinsara" in query) { return query.worldsaidshotmannequinsara != 1; } 
    else return true;
}
function IsNotSaidShotMannequinYusuke2(query) {
    if("worldsaidshotmannequinyusuke2" in query) { return query.worldsaidshotmannequinyusuke2 != 1; } 
    else return true;
}
function IsNotSaidShotMannequinBlake2(query) {
    if("worldsaidshotmannequinblake2" in query) { return query.worldsaidshotmannequinblake2 != 1; } 
    else return true;
}
function Conceptc1m4escapeBlakeCheck(query) {
    if("concept" in query) { return query.concept == "c1m4escapeblakecheck"; } 
    else return false;
}
function Conceptc1m4escapeBlakeCheckFail(query) {
    if("concept" in query) { return query.concept == "c1m4escapeblakecheckfail"; } 
    else return false;
}
function Conceptc1m4escapeBlakeCheckSuccess(query) {
    if("concept" in query) { return query.concept == "c1m4escapeblakechecksuccess"; } 
    else return false;
}
function IsHarukaActor(query) {
    if("harukaactor" in query) { return query.harukaactor == 1; } 
    else return false;
}
function IsSaraActor(query) {
    if("saraactor" in query) { return query.saraactor == 1; } 
    else return false;
}
function IsBlakeActor(query) {
    if("blakeactor" in query) { return query.blakeactor == 1; } 
    else return false;
}
function IsYusukeActor(query) {
    if("yusukeactor" in query) { return query.yusukeactor == 1; } 
    else return false;
}
function IsNotSaidharukaharukaes(query) {
    if("worldsaidharukaharukaes" in query) { return query.worldsaidharukaharukaes != 1; } 
    else return true;
}
function Conceptharukaharukaes(query) {
    if("concept" in query) { return query.concept == "harukaharukaes"; } 
    else return false;
}
function IsSaraElevatorIntro(query) {
    if("worldsaraelevatorintro" in query) { return query.worldsaraelevatorintro == 1; } 
    else return false;
}
function IsNotYusukeIntroduced(query) {
    if("worldyusukeintroduced" in query) { return query.worldyusukeintroduced != 1; } 
    else return true;
}
function IsNotHarukaIntroduced(query) {
    if("worldharukaintroduced" in query) { return query.worldharukaintroduced != 1; } 
    else return true;
}
function IsHarukaIntroduced(query) {
    if("worldharukaintroduced" in query) { return query.worldharukaintroduced == 1; } 
    else return false;
}
function IsNotSaraIntroduced(query) {
    if("worldsaraintroduced" in query) { return query.worldsaraintroduced != 1; } 
    else return true;
}
function IsNotBlakeIntroduced(query) {
    if("worldblakeintroduced" in query) { return query.worldblakeintroduced != 1; } 
    else return true;
}
function _auto_NotC4HarukaInCover(query) {
    if("world_auto_c4harukaincover" in query) { return query.world_auto_c4harukaincover < 1; } 
    else return true;
}
function _auto_NotC4YusukeInCover(query) {
    if("world_auto_c4yusukeincover" in query) { return query.world_auto_c4yusukeincover < 1; } 
    else return true;
}
function _auto_NotC4BlakeInCover(query) {
    if("world_auto_c4blakeincover" in query) { return query.world_auto_c4blakeincover < 1; } 
    else return true;
}
function _auto_NotC4SaraInCover(query) {
    if("world_auto_c4saraincover" in query) { return query.world_auto_c4saraincover < 1; } 
    else return true;
}
function _auto_NotCaneExitedHaruka(query) {
    if("world_auto_caneexitedharuka" in query) { return query.world_auto_caneexitedharuka < 1; } 
    else return true;
}
function _auto_NotCaneExitedYusuke(query) {
    if("world_auto_caneexitedyusuke" in query) { return query.world_auto_caneexitedyusuke < 1; } 
    else return true;
}
function _auto_NotCaneExitedBlake(query) {
    if("world_auto_caneexitedblake" in query) { return query.world_auto_caneexitedblake < 1; } 
    else return true;
}
function _auto_NotCaneExitedSara(query) {
    if("world_auto_caneexitedsara" in query) { return query.world_auto_caneexitedsara < 1; } 
    else return true;
}
function _auto_NotHarukaAngry(query) {
    if("world_auto_harukaangry" in query) { return query.world_auto_harukaangry < 1; } 
    else return true;
}
function _auto_NotHarukaFoodBreak(query) {
    if("world_auto_harukafoodbreak" in query) { return query.world_auto_harukafoodbreak < 1; } 
    else return true;
}
function _auto_NotHarukaHappy(query) {
    if("world_auto_harukahappy" in query) { return query.world_auto_harukahappy < 1; } 
    else return true;
}
function _auto_IsHarukaInCane(query) {
    if("world_auto_harukaincane" in query) { return query.world_auto_harukaincane == 1; } 
    else return false;
}
function _auto_NotHarukaInCane(query) {
    if("world_auto_harukaincane" in query) { return query.world_auto_harukaincane < 1; } 
    else return true;
}
function _auto_IsHarukaWavWindow(query) {
    if("world_auto_harukawavwindow" in query) { return query.world_auto_harukawavwindow == 1; } 
    else return false;
}
function _auto_IsYusukeInCane(query) {
    if("world_auto_yusukeincane" in query) { return query.world_auto_yusukeincane == 1; } 
    else return false;
}
function _auto_NotYusukeInCane(query) {
    if("world_auto_yusukeincane" in query) { return query.world_auto_yusukeincane < 1; } 
    else return true;
}
function _auto_IsYusukeWavWindow(query) {
    if("world_auto_yusukewavwindow" in query) { return query.world_auto_yusukewavwindow == 1; } 
    else return false;
}
function _auto_NotLastSurvivorTalkedHaruka(query) {
    if("world_auto_lastsurvivortalkedharuka" in query) { return query.world_auto_lastsurvivortalkedharuka < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedYusuke(query) {
    if("world_auto_lastsurvivortalkedyusuke" in query) { return query.world_auto_lastsurvivortalkedyusuke < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedBlake(query) {
    if("world_auto_lastsurvivortalkedblake" in query) { return query.world_auto_lastsurvivortalkedblake < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedSara(query) {
    if("world_auto_lastsurvivortalkedsara" in query) { return query.world_auto_lastsurvivortalkedsara < 1; } 
    else return true;
}
function _auto_IsBlakeInCane(query) {
    if("world_auto_blakeincane" in query) { return query.world_auto_blakeincane == 1; } 
    else return false;
}
function _auto_NotBlakeInCane(query) {
    if("world_auto_blakeincane" in query) { return query.world_auto_blakeincane < 1; } 
    else return true;
}
function _auto_IsBlakeWavWindow(query) {
    if("world_auto_blakewavwindow" in query) { return query.world_auto_blakewavwindow == 1; } 
    else return false;
}
function _auto_IsSaraInCane(query) {
    if("world_auto_saraincane" in query) { return query.world_auto_saraincane == 1; } 
    else return false;
}
function _auto_NotSaraInCane(query) {
    if("world_auto_saraincane" in query) { return query.world_auto_saraincane < 1; } 
    else return true;
}
function _auto_IsSaraWavWindow(query) {
    if("world_auto_sarawavwindow" in query) { return query.world_auto_sarawavwindow == 1; } 
    else return false;
}
function _auto_IsHarukaInWitchville(query) {
    if("world_auto_harukainwitchville" in query) { return query.world_auto_harukainwitchville == 1; } 
    else return false;
}
function _auto_IsYusukeInWitchville(query) {
    if("world_auto_yusukeinwitchville" in query) { return query.world_auto_yusukeinwitchville == 1; } 
    else return false;
}
function _auto_IsBlakeInWitchville(query) {
    if("world_auto_blakeinwitchville" in query) { return query.world_auto_blakeinwitchville == 1; } 
    else return false;
}
function _auto_IsSaraInWitchville(query) {
    if("world_auto_sarainwitchville" in query) { return query.world_auto_sarainwitchville == 1; } 
    else return false;
}
function _auto_NotHarukaInWitchville(query) {
    if("world_auto_harukainwitchville" in query) { return query.world_auto_harukainwitchville < 1; } 
    else return true;
}
function _auto_NotYusukeInWitchville(query) {
    if("world_auto_yusukeinwitchville" in query) { return query.world_auto_yusukeinwitchville < 1; } 
    else return true;
}
function _auto_NotBlakeInWitchville(query) {
    if("world_auto_blakeinwitchville" in query) { return query.world_auto_blakeinwitchville < 1; } 
    else return true;
}
function _auto_NotSaraInWitchville(query) {
    if("world_auto_sarainwitchville" in query) { return query.world_auto_sarainwitchville < 1; } 
    else return true;
}
function _auto_HarukaIsPressing(query) {
    if("world_auto_harukapressing" in query) { return query.world_auto_harukapressing == 1; } 
    else return false;
}
function _auto_YusukeIsPressing(query) {
    if("world_auto_yusukepressing" in query) { return query.world_auto_yusukepressing == 1; } 
    else return false;
}
function _auto_BlakeIsPressing(query) {
    if("world_auto_blakepressing" in query) { return query.world_auto_blakepressing == 1; } 
    else return false;
}
function _auto_SaraIsPressing(query) {
    if("world_auto_sarapressing" in query) { return query.world_auto_sarapressing == 1; } 
    else return false;
}
function _auto_C5M3BlakeReacted(query) {
    if("world_auto_c5m3blakereacted" in query) { return query.world_auto_c5m3blakereacted == 1; } 
    else return false;
}
function _auto_IsTalkingHaruka(query) {
    if("world_auto_talkingharuka" in query) { return query.world_auto_talkingharuka == 1; } 
    else return false;
}
function _auto_IsTalkingYusuke(query) {
    if("world_auto_talkingyusuke" in query) { return query.world_auto_talkingyusuke == 1; } 
    else return false;
}
function _auto_IsTalkingBlake(query) {
    if("world_auto_talkingblake" in query) { return query.world_auto_talkingblake == 1; } 
    else return false;
}
function _auto_IsTalkingSara(query) {
    if("world_auto_talkingsara" in query) { return query.world_auto_talkingsara == 1; } 
    else return false;
}
function _auto_NotTimerLockHaruka(query) {
    if("world_auto_timerlockharuka" in query) { return query.world_auto_timerlockharuka < 1; } 
    else return true;
}
function _auto_NotTimerLockYusuke(query) {
    if("world_auto_timerlockyusuke" in query) { return query.world_auto_timerlockyusuke < 1; } 
    else return true;
}
function _auto_NotTimerLockBlake(query) {
    if("world_auto_timerlockblake" in query) { return query.world_auto_timerlockblake < 1; } 
    else return true;
}
function _auto_NotTimerLockSara(query) {
    if("world_auto_timerlocksara" in query) { return query.world_auto_timerlocksara < 1; } 
    else return true;
}
function _auto_YusukeSawC6M3Bill(query) {
    if("world_auto_yusukec6m3bill" in query) { return query.world_auto_yusukec6m3bill == 1; } 
    else return false;
}
function _auto_HarukaSawC6M3Bill(query) {
    if("world_auto_harukac6m3bill" in query) { return query.world_auto_harukac6m3bill == 1; } 
    else return false;
}
function _auto_BlakeSawC6M3Bill(query) {
    if("world_auto_blakec6m3bill" in query) { return query.world_auto_blakec6m3bill == 1; } 
    else return false;
}
function IsNotTalkHaruka(query) {
    if("talkharuka" in query) { return query.talkharuka == 1; } 
    else return false;
}
function IsTalkHaruka(query) {
    if("talkharuka" in query) { return query.talkharuka != 1; } 
    else return true;
}
function IsNotTalkYusuke(query) {
    if("talkyusuke" in query) { return query.talkyusuke == 1; } 
    else return false;
}
function IsTalkYusuke(query) {
    if("talkyusuke" in query) { return query.talkyusuke != 1; } 
    else return true;
}
function IsNotTalkSara(query) {
    if("talksara" in query) { return query.talksara == 1; } 
    else return false;
}
function IsTalkSara(query) {
    if("talksara" in query) { return query.talksara != 1; } 
    else return true;
}
function IsNotTalkBlake(query) {
    if("talkblake" in query) { return query.talkblake == 1; } 
    else return false;
}
function IsTalkBlake(query) {
    if("talkblake" in query) { return query.talkblake != 1; } 
    else return true;
}
function IsWorldTalkHaruka(query) {
    if("worldtalkharuka" in query) { return query.worldtalkharuka != 1; } 
    else return true;
}
function IsWorldTalkBlake(query) {
    if("worldtalkblake" in query) { return query.worldtalkblake != 1; } 
    else return true;
}
function IsWorldTalkSara(query) {
    if("worldtalksara" in query) { return query.worldtalksara != 1; } 
    else return true;
}
function IsWorldTalkYusuke(query) {
    if("worldtalkyusuke" in query) { return query.worldtalkyusuke != 1; } 
    else return true;
}
function IsSaraNotAlive(query) {
    if("issaraalive" in query) { return query.issaraalive != 1; } 
    else return true;
}
function IsBlakeNotAlive(query) {
    if("isblakealive" in query) { return query.isblakealive != 1; } 
    else return true;
}
function IsHarukaNotAlive(query) {
    if("isharukaalive" in query) { return query.isharukaalive != 1; } 
    else return true;
}
function IsYusukeNotAlive(query) {
    if("isyusukealive" in query) { return query.isyusukealive != 1; } 
    else return true;
}
function IsSaraAlive(query) {
    if("issaraalive" in query) { return query.issaraalive == 1; } 
    else return false;
}
function IsBlakeAlive(query) {
    if("isblakealive" in query) { return query.isblakealive == 1; } 
    else return false;
}
function IsHarukaAlive(query) {
    if("isharukaalive" in query) { return query.isharukaalive == 1; } 
    else return false;
}
function IsYusukeAlive(query) {
    if("isyusukealive" in query) { return query.isyusukealive == 1; } 
    else return false;
}
function IsSmallTownBarricadeBlake(query) {
    if("worldsmalltownbarricadeblake" in query) { return query.worldsmalltownbarricadeblake != 1; } 
    else return true;
}
function IsSmallTownBarricadeYusuke(query) {
    if("worldsmalltownbarricadeyusuke" in query) { return query.worldsmalltownbarricadeyusuke != 1; } 
    else return true;
}
function IsSmallTownBarricadeSara(query) {
    if("worldsmalltownbarricadesara" in query) { return query.worldsmalltownbarricadesara != 1; } 
    else return true;
}
function IsYusukeNear200(query) {
    if("disttoyusuke" in query) { return query.disttoyusuke < 200; } 
    else return true;
}
function IsYusukeNear400(query) {
    if("disttoyusuke" in query) { return query.disttoyusuke < 400; } 
    else return true;
}
function IsYusukeNear800(query) {
    if("disttoyusuke" in query) { return query.disttoyusuke < 800; } 
    else return true;
}
function IsYusukeFar400(query) {
    if("disttoyusuke" in query) { return query.disttoyusuke >= 400; } 
    else return false;
}
function IsHarukaNear125(query) {
    if("disttoharuka" in query) { return query.disttoharuka < 125; } 
    else return true;
}
function IsHarukaNear200(query) {
    if("disttoharuka" in query) { return query.disttoharuka < 200; } 
    else return true;
}
function IsHarukaNear400(query) {
    if("disttoharuka" in query) { return query.disttoharuka < 400; } 
    else return true;
}
function IsHarukaNear800(query) {
    if("disttoharuka" in query) { return query.disttoharuka < 800; } 
    else return true;
}
function IsHarukaFar400(query) {
    if("disttoharuka" in query) { return query.disttoharuka >= 400; } 
    else return false;
}
function IsSaraNear200(query) {
    if("disttosara" in query) { return query.disttosara < 200; } 
    else return true;
}
function IsSaraNear400(query) {
    if("disttosara" in query) { return query.disttosara < 400; } 
    else return true;
}
function IsSaraNear800(query) {
    if("disttosara" in query) { return query.disttosara < 800; } 
    else return true;
}
function IsSaraFar400(query) {
    if("disttosara" in query) { return query.disttosara >= 400; } 
    else return false;
}
function IsBlakeNear200(query) {
    if("disttoblake" in query) { return query.disttoblake < 200; } 
    else return true;
}
function IsBlakeNear300(query) {
    if("disttoblake" in query) { return query.disttoblake < 300; } 
    else return true;
}
function IsBlakeNear400(query) {
    if("disttoblake" in query) { return query.disttoblake < 400; } 
    else return true;
}
function IsBlakeNear400Weight0(query) {
    if("disttoblake" in query) { return query.disttoblake < 400; } 
    else return true;
}
function IsBlakeNear800(query) {
    if("disttoblake" in query) { return query.disttoblake < 800; } 
    else return true;
}
function IsBlakeFar400(query) {
    if("disttoblake" in query) { return query.disttoblake >= 400; } 
    else return false;
}
function IsHarukaFar1000(query) {
    if("disttoharuka" in query) { return query.disttoharuka > 600; } 
    else return false;
}
function IsSaraFar1000(query) {
    if("disttosara" in query) { return query.disttosara > 600; } 
    else return false;
}
function IsBlakeFar1000(query) {
    if("disttoblake" in query) { return query.disttoblake > 600; } 
    else return false;
}
function IsYusukeFar1000(query) {
    if("disttoyusuke" in query) { return query.disttoyusuke > 600; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireHaruka(query) {
    if("worldsaidfaultfriendlyfireharuka" in query) { return query.worldsaidfaultfriendlyfireharuka != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireHaruka(query) {
    if("worldsaidfaultfriendlyfireharuka" in query) { return query.worldsaidfaultfriendlyfireharuka == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireBlake(query) {
    if("worldsaidfaultfriendlyfireblake" in query) { return query.worldsaidfaultfriendlyfireblake != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireBlake(query) {
    if("worldsaidfaultfriendlyfireblake" in query) { return query.worldsaidfaultfriendlyfireblake == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireYusuke(query) {
    if("worldsaidfaultfriendlyfireyusuke" in query) { return query.worldsaidfaultfriendlyfireyusuke != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireYusuke(query) {
    if("worldsaidfaultfriendlyfireyusuke" in query) { return query.worldsaidfaultfriendlyfireyusuke == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireSara(query) {
    if("worldsaidfaultfriendlyfiresara" in query) { return query.worldsaidfaultfriendlyfiresara != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireSara(query) {
    if("worldsaidfaultfriendlyfiresara" in query) { return query.worldsaidfaultfriendlyfiresara == 1; } 
    else return false;
}
function IsShotTeammateHaruka(query) {
    if("worldshotteammateharuka" in query) { return query.worldshotteammateharuka == 1; } 
    else return false;
}
function IsNotShotTeammateHaruka(query) {
    if("worldshotteammateharuka" in query) { return query.worldshotteammateharuka != 1; } 
    else return true;
}
function IsShotTeammateYusuke(query) {
    if("worldshotteammateyusuke" in query) { return query.worldshotteammateyusuke == 1; } 
    else return false;
}
function IsNotShotTeammateYusuke(query) {
    if("worldshotteammateyusuke" in query) { return query.worldshotteammateyusuke != 1; } 
    else return true;
}
function IsShotTeammateBlake(query) {
    if("worldshotteammateblake" in query) { return query.worldshotteammateblake == 1; } 
    else return false;
}
function IsNotShotTeammateBlake(query) {
    if("worldshotteammateblake" in query) { return query.worldshotteammateblake != 1; } 
    else return true;
}
function IsShotTeammateSara(query) {
    if("worldshotteammatesara" in query) { return query.worldshotteammatesara == 1; } 
    else return false;
}
function IsNotShotTeammateSara(query) {
    if("worldshotteammatesara" in query) { return query.worldshotteammatesara != 1; } 
    else return true;
}
function IsBlakeCrybaby(query) {
    if("worldblakecrying" in query) { return query.worldblakecrying == 1; } 
    else return false;
}
function WhoPutColaHaruka(query) {
    if("worldwhoputcola" in query) { return query.worldwhoputcola == "haruka"; } 
    else return false;
}
function WhoPutColaYusuke(query) {
    if("worldwhoputcola" in query) { return query.worldwhoputcola == "yusuke"; } 
    else return false;
}
function WhoPutColaBlake(query) {
    if("worldwhoputcola" in query) { return query.worldwhoputcola == "blake"; } 
    else return false;
}
function WhoPutColaSara(query) {
    if("worldwhoputcola" in query) { return query.worldwhoputcola == "sara"; } 
    else return false;
}
function PanicEventHaruka(query) {
    if("whodidit" in query) { return query.whodidit == "haruka"; } 
    else return false;
}
function PanicEventYusuke(query) {
    if("whodidit" in query) { return query.whodidit == "yusuke"; } 
    else return false;
}
function PanicEventBlake(query) {
    if("whodidit" in query) { return query.whodidit == "blake"; } 
    else return false;
}
function PanicEventSara(query) {
    if("whodidit" in query) { return query.whodidit == "sara"; } 
    else return false;
}
function IsYusuke(query) {
    if("who" in query) { return query.who == "yusuke"; } 
    else return false;
}
function IsHaruka(query) {
    if("who" in query) { return query.who == "haruka"; } 
    else return false;
}
function IsSara(query) {
    if("who" in query) { return query.who == "sara"; } 
    else return false;
}
function IsBlake(query) {
    if("who" in query) { return query.who == "blake"; } 
    else return false;
}
function IsTriggeredByYusuke(query) {
    if("triggeredby" in query) { return query.triggeredby == "yusuke"; } 
    else return false;
}
function IsTriggeredByHaruka(query) {
    if("triggeredby" in query) { return query.triggeredby == "haruka"; } 
    else return false;
}
function IsTriggeredBySara(query) {
    if("triggeredby" in query) { return query.triggeredby == "sara"; } 
    else return false;
}
function IsTriggeredByBlake(query) {
    if("triggeredby" in query) { return query.triggeredby == "blake"; } 
    else return false;
}
function IsDeadYusuke(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "yusuke"; } 
    else return false;
}
function IsDeadHaruka(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "haruka"; } 
    else return false;
}
function IsDeadSara(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "sara"; } 
    else return false;
}
function IsDeadBlake(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "blake"; } 
    else return false;
}
function IsNotDeadYusuke(query) {
    if("deadcharacter" in query) { return query.deadcharacter != "yusuke"; } 
    else return true;
}
function IsNotDeadHaruka(query) {
    if("deadcharacter" in query) { return query.deadcharacter != "haruka"; } 
    else return true;
}
function IsNotDeadSara(query) {
    if("deadcharacter" in query) { return query.deadcharacter != "sara"; } 
    else return true;
}
function IsNotDeadBlake(query) {
    if("deadcharacter" in query) { return query.deadcharacter != "blake"; } 
    else return true;
}
function SubjectIsHaruka(query) {
    if("subject" in query) { return query.subject == "haruka"; } 
    else return false;
}
function SubjectIsYusuke(query) {
    if("subject" in query) { return query.subject == "yusuke"; } 
    else return false;
}
function SubjectIsSara(query) {
    if("subject" in query) { return query.subject == "sara"; } 
    else return false;
}
function SubjectIsBlake(query) {
    if("subject" in query) { return query.subject == "blake"; } 
    else return false;
}
function SubjectIsNotHaruka(query) {
    if("subject" in query) { return query.subject != "haruka"; } 
    else return true;
}
function SubjectIsNotYusuke(query) {
    if("subject" in query) { return query.subject != "yusuke"; } 
    else return true;
}
function SubjectIsNotSara(query) {
    if("subject" in query) { return query.subject != "sara"; } 
    else return true;
}
function SubjectIsNotBlake(query) {
    if("subject" in query) { return query.subject != "blake"; } 
    else return true;
}
function FromIsHaruka(query) {
    if("from" in query) { return query.from == "haruka"; } 
    else return false;
}
function FromIsYusuke(query) {
    if("from" in query) { return query.from == "yusuke"; } 
    else return false;
}
function FromIsSara(query) {
    if("from" in query) { return query.from == "sara"; } 
    else return false;
}
function FromIsBlake(query) {
    if("from" in query) { return query.from == "blake"; } 
    else return false;
}
function FromIsNotHaruka(query) {
    if("from" in query) { return query.from != "haruka"; } 
    else return true;
}
function FromIsNotYusuke(query) {
    if("from" in query) { return query.from != "yusuke"; } 
    else return true;
}
function FromIsNotSara(query) {
    if("from" in query) { return query.from != "sara"; } 
    else return true;
}
function FromIsNotBlake(query) {
    if("from" in query) { return query.from != "blake"; } 
    else return true;
}
function Iswitch_aggro_onHaruka(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "haruka"; } 
    else return false;
}
function Iswitch_aggro_onYusuke(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "yusuke"; } 
    else return false;
}
function Iswitch_aggro_onSara(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "sara"; } 
    else return false;
}
function Iswitch_aggro_onBlake(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "blake"; } 
    else return false;
}
function IsNotSaidBeenJockeyedHaruka(query) {
    if("worldsaidbeenjockeyedharuka" in query) { return query.worldsaidbeenjockeyedharuka != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedYusuke(query) {
    if("worldsaidbeenjockeyedyusuke" in query) { return query.worldsaidbeenjockeyedyusuke != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedBlake(query) {
    if("worldsaidbeenjockeyedblake" in query) { return query.worldsaidbeenjockeyedblake != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedSara(query) {
    if("worldsaidbeenjockeyedsara" in query) { return query.worldsaidbeenjockeyedsara != 1; } 
    else return true;
}
function IsSaidBeenJockeyedHaruka(query) {
    if("worldsaidbeenjockeyedharuka" in query) { return query.worldsaidbeenjockeyedharuka == 1; } 
    else return false;
}
function IsSaidBeenJockeyedYusuke(query) {
    if("worldsaidbeenjockeyedyusuke" in query) { return query.worldsaidbeenjockeyedyusuke == 1; } 
    else return false;
}
function IsSaidBeenJockeyedBlake(query) {
    if("worldsaidbeenjockeyedblake" in query) { return query.worldsaidbeenjockeyedblake == 1; } 
    else return false;
}
function IsSaidBeenJockeyedSara(query) {
    if("worldsaidbeenjockeyedsara" in query) { return query.worldsaidbeenjockeyedsara == 1; } 
    else return false;
}
function IsNotSaidBlakePounced(query) {
    if("worldsaidblakepounced" in query) { return query.worldsaidblakepounced != 1; } 
    else return true;
}
function IsNotSaidHarukaPounced(query) {
    if("worldsaidharukapounced" in query) { return query.worldsaidharukapounced != 1; } 
    else return true;
}
function IsNotSaidSaraPounced(query) {
    if("worldsaidsarapounced" in query) { return query.worldsaidsarapounced != 1; } 
    else return true;
}
function IsNotSaidYusukePounced(query) {
    if("worldsaidyusukepounced" in query) { return query.worldsaidyusukepounced != 1; } 
    else return true;
}
function IsBlakeAlsoWarn(query) {
    if("worldblakealsowarn" in query) { return query.worldblakealsowarn == 1; } 
    else return false;
}
function IsNotYusukeInsultedHarukaC1(query) {
    if("worldyusukeinsultedharuka" in query) { return query.worldyusukeinsultedharuka != 1; } 
    else return true;
}
function IsSaidC1M3HarukaFoodCourt(query) {
    if("worldsaidc1m3harukafoodcourt" in query) { return query.worldsaidc1m3harukafoodcourt == 1; } 
    else return false;
}
function ConceptSaraSuggestsCrane(query) {
    if("concept" in query) { return query.concept == "sarasuggestscrane"; } 
    else return false;
}
function ConceptHarukaSuggestsCrane(query) {
    if("concept" in query) { return query.concept == "harukasuggestscrane"; } 
    else return false;
}
function ConceptLaughHaruka(query) {
    if("concept" in query) { return query.concept == "laughharuka"; } 
    else return false;
}
function ConceptLaughSara(query) {
    if("concept" in query) { return query.concept == "laughsara"; } 
    else return false;
}
function ConceptBlakeInterrupt(query) {
    if("concept" in query) { return query.concept == "blakeinterrupt"; } 
    else return false;
}
function ConceptYusukeC1Attitude(query) {
    if("concept" in query) { return query.concept == "yusukec1attitude"; } 
    else return false;
}
function BlakeNotTall(query) {
    if("worldblaketalljoke" in query) { return query.worldblaketalljoke == 1; } 
    else return false;
}
function NotHarukaMadAtRiders(query) {
    if("worldharukamadatriders" in query) { return query.worldharukamadatriders < 1; } 
    else return true;
}
function HarukaMadAtRiders(query) {
    if("worldharukamadatriders" in query) { return query.worldharukamadatriders == 1; } 
    else return false;
}
function YusukeOCD(query) {
    if("worldyusukeocd" in query) { return query.worldyusukeocd != 1; } 
    else return true;
}
function ConceptC13M1Intro2Blake(query) {
    if("concept" in query) { return query.concept == "c13m1intro2blake"; } 
    else return false;
}
function C13M1BlakeNotPayusukeing(query) {
    if("worldc13m1blakepayusukeing" in query) { return query.worldc13m1blakepayusukeing < 1; } 
    else return true;
}
function IsNotSrcGrp_BLAKESTORYINIT(query) {
    if("worldsrcgrp_blakestoryinit" in query) { return query.worldsrcgrp_blakestoryinit < 1; } 
    else return true;
}
function IsNotSrcGrp_BLAKESTORY(query) {
    if("worldsrcgrp_blakestory" in query) { return query.worldsrcgrp_blakestory < 1; } 
    else return true;
}
function Concept_C2M2_HarukaApocolypse(query) {
    if("concept" in query) { return query.concept == "_c2m2_harukaapocolypse"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveYusukeIntro1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3aliveyusukeintro1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveYusukeIntro2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3aliveyusukeintro2"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveSaraIntro(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3alivesaraintro"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello2AliveYusukeIntro1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello2aliveyusukeintro1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello2AliveYusukeIntro2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello2aliveyusukeintro2"; } 
    else return false;
}
function ConceptPlayer_CoverMeC1RHaruka1(query) {
    if("concept" in query) { return query.concept == "player.covermec1rharuka1"; } 
    else return false;
}
function ConceptPlayer_CoverMeC1RHaruka2(query) {
    if("concept" in query) { return query.concept == "player.covermec1rharuka2"; } 
    else return false;
}
function ConceptC3M4ButtonAnswerBlake(query) {
    if("concept" in query) { return query.concept == "c3m4buttonanswerblake"; } 
    else return false;
}
function ConceptBlakeStoryReac01(query) {
    if("concept" in query) { return query.concept == "blakestoryreac01"; } 
    else return false;
}
function ConceptPlayer_YusukeGunOwnership(query) {
    if("concept" in query) { return query.concept == "player.yusukegunownership"; } 
    else return false;
}
function ConceptPlayer_WhinyYusuke(query) {
    if("concept" in query) { return query.concept == "player.whinyyusuke"; } 
    else return false;
}
function ConceptC3M4Button104Blake(query) {
    if("concept" in query) { return query.concept == "c3m4button104blake"; } 
    else return false;
}
function ConceptC6M2BlakeStoryStart1(query) {
    if("concept" in query) { return query.concept == "c6m2blakestorystart1"; } 
    else return false;
}
function ConceptC6M3BlakeBridgeStory1(query) {
    if("concept" in query) { return query.concept == "c6m3blakebridgestory1"; } 
    else return false;
}
function ConceptC6M3BlakeBridgeStory1a(query) {
    if("concept" in query) { return query.concept == "c6m3blakebridgestory1a"; } 
    else return false;
}
function ConceptChargerBeatsYusuke(query) {
    if("concept" in query) { return query.concept == "chargerbeatsyusuke"; } 
    else return false;
}
function ConceptWorldC6M3_ByBridge01Blake(query) {
    if("concept" in query) { return query.concept == "worldc6m3_bybridge01blake"; } 
    else return false;
}
// function FromSet1(query) { return ( DirectorScript.FromIsHaruka(query) || DirectorScript.FromIsAnOrator(query) ); }
function IsBlakeInLoveC6M1(query) {
    if("worldblakeinlovec6m1" in query) { return query.worldblakeinlovec6m1 == 1; } 
    else return false;
}
function HarukaCake(query) {
    if("worldharukacake" in query) { return query.worldharukacake == 1; } 
    else return false;
}
function IsDonorHaruka(query) {
    if("itemdonor" in query) { return query.itemdonor == "haruka"; } 
    else return false;
}
function IsDonorYusuke(query) {
    if("itemdonor" in query) { return query.itemdonor == "yusuke"; } 
    else return false;
}
function IsDonorBlake(query) {
    if("itemdonor" in query) { return query.itemdonor == "blake"; } 
    else return false;
}
function IsDonorSara(query) {
    if("itemdonor" in query) { return query.itemdonor == "sara"; } 
    else return false;
}
function IsNotDonorHaruka(query) {
    if("itemdonor" in query) { return query.itemdonor != "haruka"; } 
    else return true;
}
function IsNotDonorYusuke(query) {
    if("itemdonor" in query) { return query.itemdonor != "yusuke"; } 
    else return true;
}
function IsNotDonorBlake(query) {
    if("itemdonor" in query) { return query.itemdonor != "blake"; } 
    else return true;
}
function IsNotDonorSara(query) {
    if("itemdonor" in query) { return query.itemdonor != "sara"; } 
    else return true;
}
// function HasDonor(query) { return ( DirectorScript.IsDonorBiker(query) || DirectorScript.IsDonorTeenGirl(query) || DirectorScript.IsDonorNamVet(query) || DirectorScript.IsDonorManager(query) || DirectorScript.IsDonorHaruka(query) || DirectorScript.IsDonorYusuke(query) || DirectorScript.IsDonorBlake(query) || DirectorScript.IsDonorSara(query) || DirectorScript.IsDonorUnknown(query) ); }
function IsHarukaAVampire(query) {
    if("worldc6m1_harukaisavampire" in query) { return query.worldc6m1_harukaisavampire == 1; } 
    else return false;
}
function IsSaraAVampire(query) {
    if("worldc6m1_saraisavampire" in query) { return query.worldc6m1_saraisavampire == 1; } 
    else return false;
}
function IsSaidOpenedGate1BlameBlake(query) {
    if("worldsaidopenedgate1blameblake" in query) { return query.worldsaidopenedgate1blameblake == 1; } 
    else return false;
}
function IsNotSaidBlakeBridgeStoryStart(query) {
    if("worldsaidblakebridgestorystart" in query) { return query.worldsaidblakebridgestorystart != 1; } 
    else return true;
}
function IsEndBlakeBridgeStoryStart(query) {
    if("worldendblakebridgestorystart" in query) { return query.worldendblakebridgestorystart == 1; } 
    else return false;
}
// function PanicEventDS(query) { return ( DirectorScript.PanicEventHaruka(query) || DirectorScript.PanicEventYusuke(query) || DirectorScript.PanicEventBlake(query) || DirectorScript.PanicEventSara(query) || DirectorScript.PanicEventBiker(query) || DirectorScript.PanicEventNamVet(query) || DirectorScript.PanicEventManager(query) || DirectorScript.PanicEventTeenGirl(query) ); }

// mike ============================================================================================================================
function ConceptBlockChurchGuyMikeNo1(query) {
    if("concept" in query) { return query.concept == "conceptblockchurchguymikeno1"; } 
    else return false;
}
// function ConceptBlock959(query) {
//     if("concept" in query) { return query.concept == "mikewhoareyou"; } 
//     else return false;
// }
function MikeNotPickedUpItem(query) {
    if("mikepickedupitem" in query) { return query.mikepickedupitem != 1; } 
    else return true;
}
function IsMikeFriendlyFire(query) {
    if("worldmikefriendlyfire" in query) { return query.worldmikefriendlyfire == 1; } 
    else return false;
}
function IsNotMikeFriendlyFire(query) {
    if("worldmikefriendlyfire" in query) { return query.worldmikefriendlyfire != 1; } 
    else return true;
}
function IsNotMikeFriendlyFireFrancis(query) {
    if("worldmikefriendlyfirefrancis" in query) { return query.worldmikefriendlyfirefrancis != 1; } 
    else return true;
}
function IsNotAskedForCoverMike(query) {
    if("mikeaskforcover" in query) { return query.mikeaskforcover != 1; } 
    else return true;
}
function IsNotSaidBattleStationsMike(query) {
    if("worldsaidbattlestationsmike" in query) { return query.worldsaidbattlestationsmike != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedMike(query) {
    if("saidbeenjockeyedmike" in query) { return query.saidbeenjockeyedmike != 1; } 
    else return true;
}
function MikeNotSaidGrabbingCan(query) {
    if("saidgrabbingcan" in query) { return query.saidgrabbingcan != 1; } 
    else return true;
}
function _auto_NotC4MikeInCover(query) {
    if("world_auto_c4mikeincover" in query) { return query.world_auto_c4mikeincover < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedMike(query) {
    if("world_auto_lastsurvivortalkedmike" in query) { return query.world_auto_lastsurvivortalkedmike < 1; } 
    else return true;
}
function _auto_IsMikeInCane(query) {
    if("world_auto_mikeincane" in query) { return query.world_auto_mikeincane == 1; } 
    else return false;
}
function _auto_NotMikeInCane(query) {
    if("world_auto_mikeincane" in query) { return query.world_auto_mikeincane < 1; } 
    else return true;
}
function _auto_IsMikeWavWindow(query) {
    if("world_auto_mikewavwindow" in query) { return query.world_auto_mikewavwindow == 1; } 
    else return false;
}
function _auto_MikeIsPressing(query) {
    if("world_auto_mikepressing" in query) { return query.world_auto_mikepressing == 1; } 
    else return false;
}
function _auto_IsTalkingMike(query) {
    if("world_auto_talkingmike" in query) { return query.world_auto_talkingmike == 1; } 
    else return false;
}
function _auto_NotTimerLockMike(query) {
    if("world_auto_timerlockmike" in query) { return query.world_auto_timerlockmike < 1; } 
    else return true;
}
function _auto_NotC6M3Mike(query) {
    if("world_auto_c6m3mike" in query) { return query.world_auto_c6m3mike < 1; } 
    else return true;
}
function _auto_SawC6M3Mike(query) {
    if("world_auto_c6m3mike" in query) { return query.world_auto_c6m3mike == 1; } 
    else return false;
}
function _auto_SaidC6M3Mike(query) {
    if("world_auto_c6m3mike" in query) { return query.world_auto_c6m3mike == 2; } 
    else return false;
}
function _auto_GamblerSawC6M3Mike(query) {
    if("world_auto_gamblerc6m3mike" in query) { return query.world_auto_gamblerc6m3mike == 1; } 
    else return false;
}
function _auto_CoachSawC6M3Mike(query) {
    if("world_auto_coachc6m3mike" in query) { return query.world_auto_coachc6m3mike == 1; } 
    else return false;
}
function _auto_MechanicSawC6M3Mike(query) {
    if("world_auto_mechanicc6m3mike" in query) { return query.world_auto_mechanicc6m3mike == 1; } 
    else return false;
}
function _auto_NotC7M3PressingMike(query) {
    if("world_auto_c7m3pressingmike" in query) { return query.world_auto_c7m3pressingmike < 1; } 
    else return true;
}
function _auto_NotC7M3ToBridgeMike(query) {
    if("world_auto_c7m3tobridgemike" in query) { return query.world_auto_c7m3tobridgemike < 1; } 
    else return true;
}
function IsNotSaidFaultFriendlyFireMike(query) {
    if("worldsaidfaultfriendlyfiremike" in query) { return query.worldsaidfaultfriendlyfiremike != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireMike(query) {
    if("worldsaidfaultfriendlyfiremike" in query) { return query.worldsaidfaultfriendlyfiremike == 1; } 
    else return false;
}
function IsShotTeammateMike(query) {
    if("worldshotteammatemike" in query) { return query.worldshotteammatemike == 1; } 
    else return false;
}
function IsNotShotTeammateMike(query) {
    if("worldshotteammatemike" in query) { return query.worldshotteammatemike != 1; } 
    else return true;
}
// function IsNotSaidpathc2m1_mikeboard(query) {
//     if("worldsaidpathc2m1_mikeboard" in query) { return query.worldsaidpathc2m1_mikeboard != 1; } 
//     else return true;
// }
// function Ispathc2m1_mikeboard(query) {
//     if("subject" in query) { return query.subject == "pathc2m1_mikeboard"; } 
//     else return false;
// }
// function Concept_C2M1Mikeboard(query) {
//     if("concept" in query) { return query.concept == "_c2m1mikeboard"; } 
//     else return false;
// }
// function Concept_C2M1Mikeboard01(query) {
//     if("concept" in query) { return query.concept == "_c2m1mikeboard01"; } 
//     else return false;
// }
function IsCrashFinalePressingMike(query) {
    if("worldcrashfinalepressingmike" in query) { return query.worldcrashfinalepressingmike == 1; } 
    else return false;
}
function NotNagCrashMike(query) {
    if("worldnagcrashmike" in query) { return query.worldnagcrashmike < 1; } 
    else return true;
}
function ConceptC7M3FinalSpeakMike(query) {
    if("concept" in query) { return query.concept == "c7m3finalspeakmike"; } 
    else return false;
}
function NotSacrificedMike(query) {
    if("worldsacrificed" in query) { return query.worldsacrificed != "mike"; } 
    else return true;
}
function SacrificedMike(query) {
    if("worldsacrificed" in query) { return query.worldsacrificed == "mike"; } 
    else return false;
}
function IsNotTalkMike(query) {
    if("talkmike" in query) { return query.talkmike == 1; } 
    else return false;
}
function IsTalkMike(query) {
    if("talkmike" in query) { return query.talkmike != 1; } 
    else return true;
}
function IsWorldTalkMike(query) {
    if("worldtalkmike" in query) { return query.worldtalkmike != 1; } 
    else return true;
}
function IsMikeAlive(query) {
    if("ismikealive" in query) { return query.ismikealive == 1; } 
    else return false;
}
// function IsL4D1Alive(query) { return ( IsTeenGirlAlive(query) || IsManagerAlive(query) || IsBikerAlive(query) || IsMikeAlive(query) ); }
function NotMikeAlive(query) {
    if("ismikealive" in query) { return query.ismikealive == 0; } 
    else return false;
}
function IsMikeNear200(query) {
    if("disttomike" in query) { return query.disttomike < 200; } 
    else return true;
}
function IsMikeNear400(query) {
    if("disttomike" in query) { return query.disttomike < 400; } 
    else return true;
}
function IsMikeNear500(query) {
    if("disttomike" in query) { return query.disttomike < 500; } 
    else return true;
}
function IsMikeNear800(query) {
    if("disttomike" in query) { return query.disttomike < 800; } 
    else return true;
}
function IsMikeFar400(query) {
    if("disttomike" in query) { return query.disttomike >= 400; } 
    else return false;
}
function IsMikeFar1000(query) {
    if("disttomike" in query) { return query.disttomike > 600; } 
    else return false;
}
function IsMike(query) {
    if("who" in query) { return query.who == "mike"; } 
    else return false;
}
function IsDeadMike(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "mike"; } 
    else return false;
}
function IsTeam4Mike(query) {
    if("name" in query) { return query.name == "silver_mike"; } 
    else return false;
}
function SubjectIsMike(query) {
    if("subject" in query) { return query.subject == "mike"; } 
    else return false;
}
function SubjectIsNotMike(query) {
    if("subject" in query) { return query.subject != "mike"; } 
    else return true;
}
function FromIsMike(query) {
    if("from" in query) { return query.from == "mike"; } 
    else return false;
}
function FromIsNotMike(query) {
    if("from" in query) { return query.from != "mike"; } 
    else return true;
}
function Iswitch_aggro_onMike(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "mike"; } 
    else return false;
}
function IsNotSaidBeenJockeyedMike(query) {
    if("worldsaidbeenjockeyedmike" in query) { return query.worldsaidbeenjockeyedmike != 1; } 
    else return true;
}
function IsDonorMike(query) {
    if("itemdonor" in query) { return query.itemdonor == "mike"; } 
    else return false;
}
function IsNotDonorMike(query) {
    if("itemdonor" in query) { return query.itemdonor != "mike"; } 
    else return true;
}
// function HasDonor(query) { return ( IsDonorBiker(query) || IsDonorTeenGirl(query) || IsDonorMike(query) || IsDonorManager(query) || IsDonorCoach(query) || IsDonorGambler(query) || IsDonorMechanic(query) || IsDonorProducer(query) || IsDonorUnknown(query) ); }
function IsWorldC6M3_Mike(query) {
    if("subject" in query) { return query.subject == "worldc6m3_mike"; } 
    else return false;
}
function ConceptPlayerSuggestHealthMike(query) {
    if("concept" in query) { return query.concept == "playersuggesthealthmike"; } 
    else return false;
}
function IsSmallTownBarricadeMike(query) {
    if("worldsmalltownbarricademike" in query) { return query.worldsmalltownbarricademike != 1; } 
    else return true;
}
function PanicEventMike(query) {
    if("whodidit" in query) { return query.whodidit == "mike"; } 
    else return false;
}
function IsTriggeredByMike(query) {
    if("triggeredby" in query) { return query.triggeredby == "mike"; } 
    else return false;
}
function IsNotSaidMikePounced(query) {
    if("worldsaidmikepounced" in query) { return query.worldsaidmikepounced != 1; } 
    else return true;
}
function IsSmallTownBarricadeMike(query) {
    if("worldsmalltownbarricademike" in query) { return query.worldsmalltownbarricademike != 1; } 
    else return true;
}
function PanicEventMike(query) {
    if("whodidit" in query) { return query.whodidit == "mike"; } 
    else return false;
}
// function PanicEventDS(query) { return ( PanicEventCoach(query) || PanicEventGambler(query) || PanicEventMechanic(query) || PanicEventProducer(query) || PanicEventBiker(query) || PanicEventMike(query) || PanicEventManager(query) || PanicEventTeenGirl(query) ); }
function IsTriggeredByMike(query) {
    if("triggeredby" in query) { return query.triggeredby == "mike"; } 
    else return false;
}
function IsNotSaidMikePounced(query) {
    if("worldsaidmikepounced" in query) { return query.worldsaidmikepounced != 1; } 
    else return true;
}

// cliffe ============================================================================================================================
function IsShotMannCliffe(query) {
    if("worldshotmanncliffe" in query) { return query.worldshotmanncliffe > 3; } 
    else return false;
}
function IsNotSaidShotMannequinCliffe2(query) {
    if("worldsaidshotmannequincliffe2" in query) { return query.worldsaidshotmannequincliffe2 != 1; } 
    else return true;
}
function IsCliffeActor(query) {
    if("cliffeactor" in query) { return query.cliffeactor == 1; } 
    else return false;
}
function IsNotCliffeIntroduced(query) {
    if("worldcliffeintroduced" in query) { return query.worldcliffeintroduced != 1; } 
    else return true;
}
function _auto_NotC4CliffeInCover(query) {
    if("world_auto_c4cliffeincover" in query) { return query.world_auto_c4cliffeincover < 1; } 
    else return true;
}
function _auto_NotCaneExitedCliffe(query) {
    if("world_auto_caneexitedcliffe" in query) { return query.world_auto_caneexitedcliffe < 1; } 
    else return true;
}
function _auto_IsCliffeInCane(query) {
    if("world_auto_cliffeincane" in query) { return query.world_auto_cliffeincane == 1; } 
    else return false;
}
function _auto_NotCliffeInCane(query) {
    if("world_auto_cliffeincane" in query) { return query.world_auto_cliffeincane < 1; } 
    else return true;
}
function _auto_IsCliffeWavWindow(query) {
    if("world_auto_cliffewavwindow" in query) { return query.world_auto_cliffewavwindow == 1; } 
    else return false;
}
function _auto_NotLastSurvivorTalkedCliffe(query) {
    if("world_auto_lastsurvivortalkedcliffe" in query) { return query.world_auto_lastsurvivortalkedcliffe < 1; } 
    else return true;
}
function _auto_IsCliffeInWitchville(query) {
    if("world_auto_cliffeinwitchville" in query) { return query.world_auto_cliffeinwitchville == 1; } 
    else return false;
}
function _auto_NotCliffeInWitchville(query) {
    if("world_auto_cliffeinwitchville" in query) { return query.world_auto_cliffeinwitchville < 1; } 
    else return true;
}
function _auto_CliffeIsPressing(query) {
    if("world_auto_cliffepressing" in query) { return query.world_auto_cliffepressing == 1; } 
    else return false;
}
function _auto_IsTalkingCliffe(query) {
    if("world_auto_talkingcliffe" in query) { return query.world_auto_talkingcliffe == 1; } 
    else return false;
}
function _auto_NotTimerLockCliffe(query) {
    if("world_auto_timerlockcliffe" in query) { return query.world_auto_timerlockcliffe < 1; } 
    else return true;
}
function _auto_CliffeSawC6M3Bill(query) {
    if("world_auto_cliffec6m3bill" in query) { return query.world_auto_cliffec6m3bill == 1; } 
    else return false;
}
function IsNotTalkCliffe(query) {
    if("talkcliffe" in query) { return query.talkcliffe == 1; } 
    else return false;
}
function IsTalkCliffe(query) {
    if("talkcliffe" in query) { return query.talkcliffe != 1; } 
    else return true;
}
function IsWorldTalkCliffe(query) {
    if("worldtalkcliffe" in query) { return query.worldtalkcliffe != 1; } 
    else return true;
}
function IsCliffeNotAlive(query) {
    if("iscliffealive" in query) { return query.iscliffealive != 1; } 
    else return true;
}
function IsCliffeAlive(query) {
    if("iscliffealive" in query) { return query.iscliffealive == 1; } 
    else return false;
}
function IsSmallTownBarricadeCliffe(query) {
    if("worldsmalltownbarricadecliffe" in query) { return query.worldsmalltownbarricadecliffe != 1; } 
    else return true;
}
function IsCliffeNear200(query) {
    if("disttocliffe" in query) { return query.disttocliffe < 200; } 
    else return true;
}
function IsCliffeNear400(query) {
    if("disttocliffe" in query) { return query.disttocliffe < 400; } 
    else return true;
}
function IsCliffeNear800(query) {
    if("disttocliffe" in query) { return query.disttocliffe < 800; } 
    else return true;
}
function IsCliffeFar400(query) {
    if("disttocliffe" in query) { return query.disttocliffe >= 400; } 
    else return false;
}
function IsCliffeFar1000(query) {
    if("disttocliffe" in query) { return query.disttocliffe > 600; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireCliffe(query) {
    if("worldsaidfaultfriendlyfirecliffe" in query) { return query.worldsaidfaultfriendlyfirecliffe != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireCliffe(query) {
    if("worldsaidfaultfriendlyfirecliffe" in query) { return query.worldsaidfaultfriendlyfirecliffe == 1; } 
    else return false;
}
function IsShotTeammateCliffe(query) {
    if("worldshotteammatecliffe" in query) { return query.worldshotteammatecliffe == 1; } 
    else return false;
}
function IsNotShotTeammateCliffe(query) {
    if("worldshotteammatecliffe" in query) { return query.worldshotteammatecliffe != 1; } 
    else return true;
}
function WhoPutColaCliffe(query) {
    if("worldwhoputcola" in query) { return query.worldwhoputcola == "cliffe"; } 
    else return false;
}
function PanicEventCliffe(query) {
    if("whodidit" in query) { return query.whodidit == "cliffe"; } 
    else return false;
}
function IsCliffe(query) {
    if("who" in query) { return query.who == "cliffe"; } 
    else return false;
}
function IsTriggeredByCliffe(query) {
    if("triggeredby" in query) { return query.triggeredby == "cliffe"; } 
    else return false;
}
function IsDeadCliffe(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "cliffe"; } 
    else return false;
}
function IsNotDeadCliffe(query) {
    if("deadcharacter" in query) { return query.deadcharacter != "cliffe"; } 
    else return true;
}
function SubjectIsCliffe(query) {
    if("subject" in query) { return query.subject == "cliffe"; } 
    else return false;
}
function SubjectIsNotCliffe(query) {
    if("subject" in query) { return query.subject != "cliffe"; } 
    else return true;
}
function FromIsCliffe(query) {
    if("from" in query) { return query.from == "cliffe"; } 
    else return false;
}
function FromIsNotCliffe(query) {
    if("from" in query) { return query.from != "cliffe"; } 
    else return true;
}
function Iswitch_aggro_onCliffe(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "cliffe"; } 
    else return false;
}
function IsNotSaidBeenJockeyedCliffe(query) {
    if("worldsaidbeenjockeyedcliffe" in query) { return query.worldsaidbeenjockeyedcliffe != 1; } 
    else return true;
}
function IsSaidBeenJockeyedCliffe(query) {
    if("worldsaidbeenjockeyedcliffe" in query) { return query.worldsaidbeenjockeyedcliffe == 1; } 
    else return false;
}
function IsNotSaidCliffePounced(query) {
    if("worldsaidcliffepounced" in query) { return query.worldsaidcliffepounced != 1; } 
    else return true;
}
function IsNotCliffeInsultedCoachC1(query) {
    if("worldcliffeinsultedcoach" in query) { return query.worldcliffeinsultedcoach != 1; } 
    else return true;
}
function ConceptCliffeC1Attitude(query) {
    if("concept" in query) { return query.concept == "cliffec1attitude"; } 
    else return false;
}
function CliffeOCD(query) {
    if("worldcliffeocd" in query) { return query.worldcliffeocd != 1; } 
    else return true;
}
function C13M1EllisNotPacliffeing(query) {
    if("worldc13m1ellispacliffeing" in query) { return query.worldc13m1ellispacliffeing < 1; } 
    else return true;
}
function Concept_C1M1_ElevatorHello3AliveCliffeIntro1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3alivecliffeintro1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveCliffeIntro2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3alivecliffeintro2"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello2AliveCliffeIntro1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello2alivecliffeintro1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello2AliveCliffeIntro2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello2alivecliffeintro2"; } 
    else return false;
}
function ConceptPlayer_CliffeGunOwnership(query) {
    if("concept" in query) { return query.concept == "player.cliffegunownership"; } 
    else return false;
}
function ConceptPlayer_WhinyCliffe(query) {
    if("concept" in query) { return query.concept == "player.whinycliffe"; } 
    else return false;
}
function ConceptChargerBeatsCliffe(query) {
    if("concept" in query) { return query.concept == "chargerbeatscliffe"; } 
    else return false;
}
function IsDonorCliffe(query) {
    if("itemdonor" in query) { return query.itemdonor == "cliffe"; } 
    else return false;
}
function IsNotDonorCliffe(query) {
    if("itemdonor" in query) { return query.itemdonor != "cliffe"; } 
    else return true;
}
// function HasDonor(query) { return ( IsDonorBiker(query) || IsDonorTeenGirl(query) || IsDonorNamVet(query) || IsDonorManager(query) || IsDonorCoach(query) || IsDonorCliffe(query) || IsDonorMechanic(query) || IsDonorProducer(query) || IsDonorUnknown(query) ); }
// function PanicEventDS(query) { return ( PanicEventCoach(query) || PanicEventCliffe(query) || PanicEventMechanic(query) || PanicEventProducer(query) || PanicEventBiker(query) || PanicEventNamVet(query) || PanicEventManager(query) || PanicEventTeenGirl(query) ); }

// replica ============================================================================================================================




// ============================================================================================================================
