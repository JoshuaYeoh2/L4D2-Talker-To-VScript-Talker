// biker_dlc2.txt ===================================================================================================================
function BikerNotPickedUpItem(query) {
    if("bikerpickedupitem" in query) { return query.bikerpickedupitem != 1; } 
    else return true;
}
function IsBikerFriendlyFire(query) {
    if("worldbikerfriendlyfire" in query) { return query.worldbikerfriendlyfire == 1; } 
    else return false;
}
function IsNotBikerFriendlyFire(query) {
    if("worldbikerfriendlyfire" in query) { return query.worldbikerfriendlyfire != 1; } 
    else return true;
}
function IsNotAskedForCoverBiker(query) {
    if("bikeraskforcover" in query) { return query.bikeraskforcover != 1; } 
    else return true;
}
function IsNotSaidBattleStationsBiker(query) {
    if("worldsaidbattlestationsbiker" in query) { return query.worldsaidbattlestationsbiker != 1; } 
    else return true;
}
function IsNotSaidfarm01_camping(query) {
    if("saidfarm01_camping" in query) { return query.saidfarm01_camping != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedBiker(query) {
    if("saidbeenjockeyedbiker" in query) { return query.saidbeenjockeyedbiker != 1; } 
    else return true;
}
// biker_dlc3.txt ===================================================================================================================
function BikerNotSaidGrabbingCan(query) {
    if("saidgrabbingcan" in query) { return query.saidgrabbingcan != 1; } 
    else return true;
}
// conversation.txt ===================================================================================================================
function YesKnowNames(query) {
    if("worldknownames" in query) { return query.worldknownames == 1; } 
    else return false;
}
function NoKnowNames(query) {
    if("worldknownames" in query) { return query.worldknownames != 1; } 
    else return true;
}
function YesKnowBoomer(query) {
    if("worldknowboomer" in query) { return query.worldknowboomer == 1; } 
    else return false;
}
function NoKnowBoomer(query) {
    if("worldknowboomer" in query) { return query.worldknowboomer != 1; } 
    else return true;
}
function YesKnowSmoker(query) {
    if("worldknowsmoker" in query) { return query.worldknowsmoker == 1; } 
    else return false;
}
function NoKnowSmoker(query) {
    if("worldknowsmoker" in query) { return query.worldknowsmoker != 1; } 
    else return true;
}
function YesKnowHunter(query) {
    if("worldknowhunter" in query) { return query.worldknowhunter == 1; } 
    else return false;
}
function NoKnowHunter(query) {
    if("worldknowhunter" in query) { return query.worldknowhunter != 1; } 
    else return true;
}
function YesKnowJockey(query) {
    if("worldknowjockey" in query) { return query.worldknowjockey == 1; } 
    else return false;
}
function NoKnowJockey(query) {
    if("worldknowjockey" in query) { return query.worldknowjockey != 1; } 
    else return true;
}
function YesKnowCharger(query) {
    if("worldknowcharger" in query) { return query.worldknowcharger == 1; } 
    else return false;
}
function NoKnowCharger(query) {
    if("worldknowcharger" in query) { return query.worldknowcharger != 1; } 
    else return true;
}
function YesKnowSpitter(query) {
    if("worldknowspitter" in query) { return query.worldknowspitter == 1; } 
    else return false;
}
function NoKnowSpitter(query) {
    if("worldknowspitter" in query) { return query.worldknowspitter != 1; } 
    else return true;
}
function YesKnowTank(query) {
    if("worldknowtank" in query) { return query.worldknowtank == 1; } 
    else return false;
}
function NoKnowTank(query) {
    if("worldknowtank" in query) { return query.worldknowtank != 1; } 
    else return true;
}
function YesKnowWitch(query) {
    if("worldknowwitch" in query) { return query.worldknowwitch == 1; } 
    else return false;
}
function NoKnowWitch(query) {
    if("worldknowwitch" in query) { return query.worldknowwitch != 1; } 
    else return true;
}
function IsNotSaidLeavingSafeArea(query) {
    if("worldsaidleavingsafearea" in query) { return query.worldsaidleavingsafearea != 1; } 
    else return true;
}
function IsSaidLeavingSafeArea(query) {
    if("worldsaidleavingsafearea" in query) { return query.worldsaidleavingsafearea == 1; } 
    else return false;
}
function ConceptPlayerShotGasCan(query) {
    if("concept" in query) { return query.concept == "playershotgascan"; } 
    else return false;
}
function IsNotSaidPlayerShotGasCan(query) {
    if("worldsaidplayershotgascan" in query) { return query.worldsaidplayershotgascan != 1; } 
    else return true;
}
function IsNotSaidC3M1FerryEnd(query) {
    if("worldc3m1ferryend" in query) { return query.worldc3m1ferryend != 1; } 
    else return true;
}
function ConceptC3M1FerryEnd(query) {
    if("concept" in query) { return query.concept == "c3m1ferryend"; } 
    else return false;
}
function ConceptC1M2ClearingPath(query) {
    if("concept" in query) { return query.concept == "c1m2clearingpath"; } 
    else return false;
}
function ConceptC1M3DoorAlarm2(query) {
    if("concept" in query) { return query.concept == "c1m3dooralarm2"; } 
    else return false;
}
function ConceptC1M3DoorAlarm(query) {
    if("concept" in query) { return query.concept == "c1m3dooralarm"; } 
    else return false;
}
function IsNotSaidC1M3DoorAlarm(query) {
    if("worldsaidc1m3dooralarm" in query) { return query.worldsaidc1m3dooralarm != 1; } 
    else return true;
}
function ConceptC3M1FerryButton(query) {
    if("concept" in query) { return query.concept == "c3m1ferrybutton"; } 
    else return false;
}
function ConceptShotManMany(query) {
    if("concept" in query) { return query.concept == "shotmanmany"; } 
    else return false;
}
function ConceptShotMannequin2(query) {
    if("concept" in query) { return query.concept == "shotmannequin2"; } 
    else return false;
}
function IsShotMannCoach(query) {
    if("worldshotmanncoach" in query) { return query.worldshotmanncoach > 3; } 
    else return false;
}
function IsShotMannProducer(query) {
    if("worldshotmannproducer" in query) { return query.worldshotmannproducer > 3; } 
    else return false;
}
function IsShotMannGambler(query) {
    if("worldshotmanngambler" in query) { return query.worldshotmanngambler > 3; } 
    else return false;
}
function IsShotMannMechanic(query) {
    if("worldshotmannmechanic" in query) { return query.worldshotmannmechanic > 3; } 
    else return false;
}
function IsNotSaidShotMannequinCoach2(query) {
    if("worldsaidshotmannequincoach2" in query) { return query.worldsaidshotmannequincoach2 != 1; } 
    else return true;
}
function IsNotSaidShotMannequinProducer2(query) {
    if("worldsaidshotmannequinproducer" in query) { return query.worldsaidshotmannequinproducer != 1; } 
    else return true;
}
function IsNotSaidShotMannequinGambler2(query) {
    if("worldsaidshotmannequingambler2" in query) { return query.worldsaidshotmannequingambler2 != 1; } 
    else return true;
}
function IsNotSaidShotMannequinMechanic2(query) {
    if("worldsaidshotmannequinmechanic2" in query) { return query.worldsaidshotmannequinmechanic2 != 1; } 
    else return true;
}
function ConceptC1M3SafeRoom2a(query) {
    if("concept" in query) { return query.concept == "c1m3saferoom2a"; } 
    else return false;
}
function ConceptC1M3SafeRoom2b(query) {
    if("concept" in query) { return query.concept == "c1m3saferoom2b"; } 
    else return false;
}
function ConceptC1M3SafeRoom2c(query) {
    if("concept" in query) { return query.concept == "c1m3saferoom2c"; } 
    else return false;
}
function ConceptC1M3SafeRoom2d(query) {
    if("concept" in query) { return query.concept == "c1m3saferoom2d"; } 
    else return false;
}
function ConceptC1M3SafeRoom2e(query) {
    if("concept" in query) { return query.concept == "c1m3saferoom2e"; } 
    else return false;
}
function ConceptC1M3AlarmOff(query) {
    if("concept" in query) { return query.concept == "c1m3alarmoff"; } 
    else return false;
}
function ConceptC1M3AlarmOff2(query) {
    if("concept" in query) { return query.concept == "c1m3alarmoff2"; } 
    else return false;
}
function ConceptC1M3AlarmDoor(query) {
    if("concept" in query) { return query.concept == "c1m3alarmdoor"; } 
    else return false;
}
function ConceptC1M3BrokeWindow(query) {
    if("concept" in query) { return query.concept == "c1m3brokewindow"; } 
    else return false;
}
function ConceptC1M3AlarmActive(query) {
    if("concept" in query) { return query.concept == "c1m3alarmactive"; } 
    else return false;
}
function Conceptc1m1_elevator_ready(query) {
    if("concept" in query) { return query.concept == "c1m1_elevator_ready"; } 
    else return false;
}
function Conceptc1m1_elevator_door_open(query) {
    if("concept" in query) { return query.concept == "c1m1_elevator_door_open"; } 
    else return false;
}
function Conceptc1m1_elevator_door_open2(query) {
    if("concept" in query) { return query.concept == "c1m1_elevator_door_open2"; } 
    else return false;
}
function IsSaidC1M1OpenDoor(query) {
    if("worldsaidc1m1opendoor" in query) { return query.worldsaidc1m1opendoor == 1; } 
    else return false;
}
function IsNotSaidC1M1OpenDoor(query) {
    if("worldsaidc1m1opendoor" in query) { return query.worldsaidc1m1opendoor != 1; } 
    else return true;
}
function IsNotSaidPickupFirstSMG(query) {
    if("worldsaidpickupfirstsmg" in query) { return query.worldsaidpickupfirstsmg != 1; } 
    else return true;
}
function IsNotSaidPickupFirstShotgun(query) {
    if("worldsaidpickupfirstshotgun" in query) { return query.worldsaidpickupfirstshotgun != 1; } 
    else return true;
}
function IsNotSaidPickupFirstPistol(query) {
    if("worldsaidpickupfirstpistol" in query) { return query.worldsaidpickupfirstpistol != 1; } 
    else return true;
}
function IsSaidC1M1InSmoke(query) {
    if("worldsaidc1m1insmoke" in query) { return query.worldsaidc1m1insmoke == 1; } 
    else return false;
}
function Conceptc1m4NearFinale1(query) {
    if("concept" in query) { return query.concept == "c1m4jimmyidea"; } 
    else return false;
}
function ConceptPlayerDeployingUpgradeAmmo(query) {
    if("concept" in query) { return query.concept == "playerdeployingupgradeammo"; } 
    else return false;
}
function HasUpgradePack_Explosive(query) {
    if("activeweapon" in query) { return query.activeweapon == "upgradepack_explosive"; } 
    else return false;
}
function IsSaidSpotUpgradePack_Explosive(query) {
    if("worldsaidspotupgradepack_explosive" in query) { return query.worldsaidspotupgradepack_explosive == 1; } 
    else return false;
}
function IsNotSaidSpotUpgradePack_Explosive(query) {
    if("worldsaidspotupgradepack_explosive" in query) { return query.worldsaidspotupgradepack_explosive != 1; } 
    else return true;
}
function IsNotSaidDeployUpgradePack_Explosive(query) {
    if("saiddeployupgradepack_explosive" in query) { return query.saiddeployupgradepack_explosive != 1; } 
    else return true;
}
function IsUpgradePack_Explosive(query) {
    if("weaponname" in query) { return query.weaponname == "upgradepack_explosive"; } 
    else return false;
}
function IsPickedUpUpgradePack_Explosive(query) {
    if("itempickedup" in query) { return query.itempickedup == "upgradepack_explosive"; } 
    else return false;
}
function IsPickedUpExplosiveAmmo(query) {
    if("itempickedup" in query) { return query.itempickedup == "explosiveammo"; } 
    else return false;
}
function ConceptC1M1Cough(query) {
    if("concept" in query) { return query.concept == "c1m1cough"; } 
    else return false;
}
function IsNotSaidC1M1Cough(query) {
    if("worldsaidc1m1cough" in query) { return query.worldsaidc1m1cough != 1; } 
    else return true;
}
function HasUpgradePack_Incendiary(query) {
    if("activeweapon" in query) { return query.activeweapon == "upgradepack_incendiary"; } 
    else return false;
}
function IsSaidSpotUpgradePack_Incendiary(query) {
    if("worldsaidspotupgradepack_incendiary" in query) { return query.worldsaidspotupgradepack_incendiary == 1; } 
    else return false;
}
function IsNotSaidSpotUpgradePack_Incendiary(query) {
    if("saidspotupgradepack_incendiary" in query) { return query.saidspotupgradepack_incendiary != 1; } 
    else return true;
}
function IsNotSaidDeployUpgradePack_Incendiary(query) {
    if("saiddeployupgradepack_incendiary" in query) { return query.saiddeployupgradepack_incendiary != 1; } 
    else return true;
}
function IsUpgradePack_Incendiary(query) {
    if("weaponname" in query) { return query.weaponname == "upgradepack_incendiary"; } 
    else return false;
}
function IsPickedUpUpgradePack_Incendiary(query) {
    if("itempickedup" in query) { return query.itempickedup == "upgradepack_incendiary"; } 
    else return false;
}
function IsPickedUpIncendiaryAmmo(query) {
    if("itempickedup" in query) { return query.itempickedup == "incendiaryammo"; } 
    else return false;
}
function Conceptc1m4startelevator(query) {
    if("concept" in query) { return query.concept == "c1m4startelevator"; } 
    else return false;
}
function Conceptc1m4escape(query) {
    if("concept" in query) { return query.concept == "c1m4escape"; } 
    else return false;
}
function Conceptc1m4escapeEllisCheck(query) {
    if("concept" in query) { return query.concept == "c1m4escapeellischeck"; } 
    else return false;
}
function Conceptc1m4escapeEllisCheckFail(query) {
    if("concept" in query) { return query.concept == "c1m4escapeellischeckfail"; } 
    else return false;
}
function Conceptc1m4escapeEllisCheckSuccess(query) {
    if("concept" in query) { return query.concept == "c1m4escapeellischecksuccess"; } 
    else return false;
}
function IsNotSaidPlayerGetToRescueVehicle(query) {
    if("saidplayergettorescuevehicle" in query) { return query.saidplayergettorescuevehicle != 1; } 
    else return true;
}
function ConceptC1M2GrabbingCola2(query) {
    if("concept" in query) { return query.concept == "c1m2grabbingcola2"; } 
    else return false;
}
function ConceptC1M2WhitakerErrandInProgress(query) {
    if("concept" in query) { return query.concept == "c1m2whitakererrandinprogress"; } 
    else return false;
}
function ConceptC1M2GrabbingCola(query) {
    if("concept" in query) { return query.concept == "c1m2grabbingcola"; } 
    else return false;
}
function ConceptC1M2StoreAlarm(query) {
    if("concept" in query) { return query.concept == "c1m2storealarm"; } 
    else return false;
}
function IsNotSaidC1M2AlarmSetoff(query) {
    if("worldc1m2alarmsetoff" in query) { return query.worldc1m2alarmsetoff < 1; } 
    else return true;
}
function IsSaidC1M2AlarmSetoff(query) {
    if("worldc1m2alarmsetoff" in query) { return query.worldc1m2alarmsetoff == 1; } 
    else return false;
}
function IsC1M2WhitakerErrand(query) {
    if("worldc1m2alarmsetoff" in query) { return query.worldc1m2alarmsetoff == 2; } 
    else return false;
}
function IsNotSaidC1M2GrabbedCola(query) {
    if("worldsaidc1m2grabbedcola" in query) { return query.worldsaidc1m2grabbedcola != 1; } 
    else return true;
}
function IsNotSaidC1M2GrabbingCola2(query) {
    if("worldsaidc1m2grabbingcola2" in query) { return query.worldsaidc1m2grabbingcola2 != 1; } 
    else return true;
}
function IsNotSaidC1M2FirstOutside(query) {
    if("worldc1m2firstoutside" in query) { return query.worldc1m2firstoutside < 1; } 
    else return true;
}
function ConceptC1M2GunRoomDoor(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoor"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorResponseGod(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorresponsegod"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorResponseGratitude(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorresponsegratitude"; } 
    else return false;
}
function ConceptC1M2InsideGunShop(query) {
    if("concept" in query) { return query.concept == "c1m2insidegunshop"; } 
    else return false;
}
function ConceptC1M2InsideGunShop2(query) {
    if("concept" in query) { return query.concept == "c1m2insidegunshop2"; } 
    else return false;
}
function ConceptC1M2InsideGunShop3(query) {
    if("concept" in query) { return query.concept == "c1m2insidegunshop3"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorABStart(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorabstart"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorCStart(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorcstart"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorDStart(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoordstart"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorAEnd1(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdooraend1"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorBEnd1(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorbend1"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorABEnd2(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorabend2"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorBInterrupt(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorbinterrupt"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorBResume(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorbresume"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorCDInterrupt(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorcdinterrupt"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorDResume(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoordresume"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorCDEnd1(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorcdend1"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorCDEnd2(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorcdend2"; } 
    else return false;
}
function ConceptC1M2GoodLuckGettingToTheMall(query) {
    if("concept" in query) { return query.concept == "c1m2goodluckgettingtothemall"; } 
    else return false;
}
function ConceptC1M2AlarmDoor(query) {
    if("concept" in query) { return query.concept == "c1m2alarmdoor"; } 
    else return false;
}
function ConceptC1M2AlarmDoor2(query) {
    if("concept" in query) { return query.concept == "c1m2alarmdoor2"; } 
    else return false;
}
function ConceptC1M2InsideGunShopPickupResponse(query) {
    if("concept" in query) { return query.concept == "c1m2insidegunshoppickupresponse"; } 
    else return false;
}
function ConceptC1M2InsideGunShopPickupResponse2(query) {
    if("concept" in query) { return query.concept == "c1m2insidegunshoppickupresponse2"; } 
    else return false;
}
function ConceptC1M2GunShopKill(query) {
    if("concept" in query) { return query.concept == "c1m2gunshopkill"; } 
    else return false;
}
function IsNotSaidC1M2InsideGunShop(query) {
    if("worldsaidc1m2insidegunshop" in query) { return query.worldsaidc1m2insidegunshop != 1; } 
    else return true;
}
function IsSaidC1M2InsideGunShop(query) {
    if("worldsaidc1m2insidegunshop" in query) { return query.worldsaidc1m2insidegunshop == 1; } 
    else return false;
}
function IsNotSaidC1M2InsideGunShopPickUp(query) {
    if("worldsaidc1m2insidegunshoppickup" in query) { return query.worldsaidc1m2insidegunshoppickup != 1; } 
    else return true;
}
function ConceptC1M2FirstOutside(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutside"; } 
    else return false;
}
function ConceptC1M2FirstOutside2(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutside2"; } 
    else return false;
}
function ConceptC1M2FirstOutside3(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutside3"; } 
    else return false;
}
function ConceptC1M2FirstOutside4(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutside4"; } 
    else return false;
}
function ConceptC1M2FirstOutside5(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutside5"; } 
    else return false;
}
function ConceptC1M2FirstOutside6(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutside6"; } 
    else return false;
}
function ConceptC1M2FirstOutside7(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutside7"; } 
    else return false;
}
function ConceptC1M2FirstOutside8(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutside8"; } 
    else return false;
}
function ConceptC1M2SurvivorDown(query) {
    if("concept" in query) { return query.concept == "c1m2survivordown"; } 
    else return false;
}
function IsCoachActor(query) {
    if("coachactor" in query) { return query.coachactor == 1; } 
    else return false;
}
function IsProducerActor(query) {
    if("produceractor" in query) { return query.produceractor == 1; } 
    else return false;
}
function IsMechanicActor(query) {
    if("mechanicactor" in query) { return query.mechanicactor == 1; } 
    else return false;
}
function IsGamblerActor(query) {
    if("gambleractor" in query) { return query.gambleractor == 1; } 
    else return false;
}
function ConceptC3M1CallFerry(query) {
    if("concept" in query) { return query.concept == "c3m1callferry"; } 
    else return false;
}
function ConceptC3M1CallFerry2(query) {
    if("concept" in query) { return query.concept == "c3m1callferry2"; } 
    else return false;
}
function IsNotSaidC3M1CallFerry2(query) {
    if("worldsaidc3m1callferry2" in query) { return query.worldsaidc3m1callferry2 != 1; } 
    else return true;
}
function ConceptC3M1FerryLanded(query) {
    if("concept" in query) { return query.concept == "c3m1ferrylanded"; } 
    else return false;
}
function C3M1Ferry(query) {
    if("worldc3m1ferry" in query) { return query.worldc3m1ferry == 1; } 
    else return false;
}
function ConceptC3M1FerryLaunched(query) {
    if("concept" in query) { return query.concept == "c3m1ferrylaunched"; } 
    else return false;
}
function ConceptC3M1FerryLaunched2(query) {
    if("concept" in query) { return query.concept == "c3m1ferrylaunched2"; } 
    else return false;
}
function ConceptC3M2OpenDoor(query) {
    if("concept" in query) { return query.concept == "c3m2opendoor"; } 
    else return false;
}
function ConceptC3M2OpenDoor2(query) {
    if("concept" in query) { return query.concept == "c3m2opendoor2"; } 
    else return false;
}
function IsNotSaidC3M2OpenDoor(query) {
    if("worldsaidc3m2opendoor" in query) { return query.worldsaidc3m2opendoor != 1; } 
    else return true;
}
function Conceptc5m4floatstart(query) {
    if("concept" in query) { return query.concept == "c5m4floatstart"; } 
    else return false;
}
function Conceptc5m4floatstart2(query) {
    if("concept" in query) { return query.concept == "c5m4floatstart2"; } 
    else return false;
}
function Conceptc5m4floatend(query) {
    if("concept" in query) { return query.concept == "c5m4floatend"; } 
    else return false;
}
function Conceptc5m4floatend2(query) {
    if("concept" in query) { return query.concept == "c5m4floatend2"; } 
    else return false;
}
function IsNotSaidc5m4floatstart(query) {
    if("worldsaidc5m4floatstart" in query) { return query.worldsaidc5m4floatstart != 1; } 
    else return true;
}
function IsNotSaidc5m4floatend(query) {
    if("worldsaidc5m4floatend" in query) { return query.worldsaidc5m4floatend != 1; } 
    else return true;
}
function IsNotSaid(query) {
    if("worldsaid" in query) { return query.worldsaid != 1; } 
    else return true;
}
function IsNotSaidC3M1FerryInTransit(query) {
    if("worldsaidc3m1ferryintransit" in query) { return query.worldsaidc3m1ferryintransit != 1; } 
    else return true;
}
function IsNotSaidStayTogetherInsideReponse(query) {
    if("worldsaidstaytogetherinsidereponse" in query) { return query.worldsaidstaytogetherinsidereponse != 1; } 
    else return true;
}
function IsNotSaidcoachcoaches(query) {
    if("worldsaidcoachcoaches" in query) { return query.worldsaidcoachcoaches != 1; } 
    else return true;
}
function IsNotSaidC3M2PlaneDoorOpen(query) {
    if("worldsaidc3m2planedooropen" in query) { return query.worldsaidc3m2planedooropen != 1; } 
    else return true;
}
function IsNotSaidRelaxedSigh(query) {
    if("worldsaidrelaxedsigh" in query) { return query.worldsaidrelaxedsigh != 1; } 
    else return true;
}
function IsNotSaidwhitakerputcola(query) {
    if("worldsaidwhitakerputcola" in query) { return query.worldsaidwhitakerputcola != 1; } 
    else return true;
}
function IsNotSaidPlayerUsingColaBottles(query) {
    if("worldsaidplayerusingcolabottles" in query) { return query.worldsaidplayerusingcolabottles != 1; } 
    else return true;
}
function IsNotSaidC1M2TankerAttack(query) {
    if("worldsaidc1m2tankerattack" in query) { return query.worldsaidc1m2tankerattack != 1; } 
    else return true;
}
function IsNotSaidC1M2ColaInDoor(query) {
    if("worldsaidc1m2colaindoor" in query) { return query.worldsaidc1m2colaindoor != 1; } 
    else return true;
}
function IsNotSaidC1M2ClearPath(query) {
    if("worldsaidc1m2clearpath" in query) { return query.worldsaidc1m2clearpath != 1; } 
    else return true;
}
function IsNotSaidc1m1_enter_elevator(query) {
    if("worldsaidc1m1_enter_elevator" in query) { return query.worldsaidc1m1_enter_elevator != 1; } 
    else return true;
}
function IsNotSaidc1m1_elevator_pushbutton(query) {
    if("worldsaidc1m1_elevator_pushbutton" in query) { return query.worldsaidc1m1_elevator_pushbutton != 1; } 
    else return true;
}
function IsNotSaidc1m1_elevator_start(query) {
    if("worldsaidc1m1_elevator_start" in query) { return query.worldsaidc1m1_elevator_start != 1; } 
    else return true;
}
function IsNotSaidintroFarm(query) {
    if("worldsaidintrofarm" in query) { return query.worldsaidintrofarm != 1; } 
    else return true;
}
function ConceptWorldC3M1FerryCrossingA01(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossinga01"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingB01(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingb01"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingB02(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingb02"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingC01(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingc01"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingC02(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingc02"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingC03(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingc03"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingC04(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingc04"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingD01(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingd01"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingD02(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingd02"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingD03(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingd03"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingD04(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingd04"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingE01(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossinge01"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingE02(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossinge02"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingE03(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossinge03"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingE04(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossinge04"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingG01(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingg01"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingG02(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingg02"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingG03(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingg03"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingG04(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingg04"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingJ01(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingj01"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingJ02(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingj02"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingI01(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingi01"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingI02(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingi02"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingI03(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingi03"; } 
    else return false;
}
function ConceptC3M1FerryInTransit(query) {
    if("concept" in query) { return query.concept == "c3m1ferryintransit"; } 
    else return false;
}
function ConceptWorldC3M1Walkways2(query) {
    if("concept" in query) { return query.concept == "worldc3m1walkways2"; } 
    else return false;
}
function ConceptWorldC3M1FeedGator2(query) {
    if("concept" in query) { return query.concept == "worldc3m1feedgator2"; } 
    else return false;
}
function ConceptStayTogetherInsideReponse(query) {
    if("concept" in query) { return query.concept == "staytogetherinsidereponse"; } 
    else return false;
}
function Conceptcoachcoaches(query) {
    if("concept" in query) { return query.concept == "coachcoaches"; } 
    else return false;
}
function ConceptWorldIntroC31(query) {
    if("concept" in query) { return query.concept == "worldintroc31"; } 
    else return false;
}
function ConceptRelaxedSigh(query) {
    if("concept" in query) { return query.concept == "relaxedsigh"; } 
    else return false;
}
function ConceptC1M2GunRoomDoorResponse(query) {
    if("concept" in query) { return query.concept == "c1m2gunroomdoorresponse"; } 
    else return false;
}
function Conceptwhitakerputcola(query) {
    if("concept" in query) { return query.concept == "whitakerputcola"; } 
    else return false;
}
function ConceptPlayerUsingColaBottles(query) {
    if("concept" in query) { return query.concept == "playerusingcolabottles"; } 
    else return false;
}
function ConceptC1M2TankerAttack2(query) {
    if("concept" in query) { return query.concept == "c1m2tankerattack2"; } 
    else return false;
}
function ConceptC1M2ColaInDoor(query) {
    if("concept" in query) { return query.concept == "c1m2colaindoor"; } 
    else return false;
}
function ConceptC1M2ClearPath(query) {
    if("concept" in query) { return query.concept == "c1m2clearpath"; } 
    else return false;
}
function Conceptc1m1_enter_elevator(query) {
    if("concept" in query) { return query.concept == "c1m1_enter_elevator"; } 
    else return false;
}
function Conceptc1m1_elevator_pushbutton(query) {
    if("concept" in query) { return query.concept == "c1m1_elevator_pushbutton"; } 
    else return false;
}
function Conceptc1m1_elevator_start(query) {
    if("concept" in query) { return query.concept == "c1m1_elevator_start"; } 
    else return false;
}
function IsRochelleElevatorIntro(query) {
    if("worldrochelleelevatorintro" in query) { return query.worldrochelleelevatorintro == 1; } 
    else return false;
}
function IsNotGamblerIntroduced(query) {
    if("worldgamblerintroduced" in query) { return query.worldgamblerintroduced != 1; } 
    else return true;
}
function IsNotCoachIntroduced(query) {
    if("worldcoachintroduced" in query) { return query.worldcoachintroduced != 1; } 
    else return true;
}
function IsCoachIntroduced(query) {
    if("worldcoachintroduced" in query) { return query.worldcoachintroduced == 1; } 
    else return false;
}
function IsNotProducerIntroduced(query) {
    if("worldproducerintroduced" in query) { return query.worldproducerintroduced != 1; } 
    else return true;
}
function IsNotMechanicIntroduced(query) {
    if("worldmechanicintroduced" in query) { return query.worldmechanicintroduced != 1; } 
    else return true;
}
function IsEndElevatorIntro(query) {
    if("worldsurvivorsintroduced" in query) { return query.worldsurvivorsintroduced == 3; } 
    else return false;
}
function IsNotLongElevatorIntro(query) {
    if("worldlongelevatorintro" in query) { return query.worldlongelevatorintro < 1; } 
    else return true;
}
// finales_dlc2.txt ===================================================================================================================
function ChurchGuyPhase1(query) {
    if("worldchurchguyphase" in query) { return query.worldchurchguyphase < 1; } 
    else return true;
}
function ChurchGuyPhase2(query) {
    if("worldchurchguyphase2" in query) { return query.worldchurchguyphase2 < 1; } 
    else return true;
}
function ChurchguyPhase3(query) {
    if("worldchurchguyphase3" in query) { return query.worldchurchguyphase3 < 1; } 
    else return true;
}
function ChurchguyTurnLoop(query) {
    if("worldchurchguyturnloop" in query) { return query.worldchurchguyturnloop < 1; } 
    else return true;
}
function IsTouchedDoor(query) {
    if("worldtoucheddoor" in query) { return query.worldtoucheddoor == 1; } 
    else return false;
}
function ChurchGuyNotDingDonged(query) {
    if("worlddingdong" in query) { return query.worlddingdong < 1; } 
    else return true;
}
function FrancisTriedCopGambit(query) {
    if("worldfrancistriedcopgambit" in query) { return query.worldfrancistriedcopgambit == 1; } 
    else return false;
}
function FrancisTriedThreat(query) {
    if("worldfrancistriedthreat" in query) { return query.worldfrancistriedthreat == 1; } 
    else return false;
}
function ExtraWeight10(query) {
    if("randomnum" in query) { return query.randomnum >= 0; } 
    else return false;
}
function FinaleAttract(query) {
    if("worldfinaleradio" in query) { return query.worldfinaleradio < 1; } 
    else return true;
}
function FinalePreparing(query) {
    if("worldfinaleradio" in query) { return query.worldfinaleradio == 1; } 
    else return false;
}
function FinaleInProgress(query) {
    if("worldfinaleradio" in query) { return query.worldfinaleradio == 2; } 
    else return false;
}
function C8M5ImmediatelyReady(query) {
    if("worldc8m5quickpreparations" in query) { return query.worldc8m5quickpreparations == 1; } 
    else return false;
}
function FinaleStage1(query) {
    if("worldfinalestage" in query) { return query.worldfinalestage < 1; } 
    else return true;
}
function FinaleStage2(query) {
    if("worldfinalestage" in query) { return query.worldfinalestage == 1; } 
    else return false;
}
function FinaleStage3(query) {
    if("worldfinalestage" in query) { return query.worldfinalestage == 2; } 
    else return false;
}
function FinaleStage4(query) {
    if("worldfinalestage" in query) { return query.worldfinalestage == 3; } 
    else return false;
}
function FinaleStage5(query) {
    if("worldfinalestage" in query) { return query.worldfinalestage == 4; } 
    else return false;
}
function FinaleFirstHalf(query) {
    if("worldfinalestage" in query) { return query.worldfinalestage <= 2; } 
    else return true;
}
function FinaleSecondHalf(query) {
    if("worldfinalestage" in query) { return query.worldfinalestage >= 3; } 
    else return false;
}
function ConceptHospitalRadioAttract(query) {
    if("concept" in query) { return query.concept == "hospital_radio_broadcast"; } 
    else return false;
}
function ConceptHospitalRadioAttract2(query) {
    if("concept" in query) { return query.concept == "hospital_radio_broadcast2"; } 
    else return false;
}
function ConceptHospitalFinaleLost(query) {
    if("concept" in query) { return query.concept == "hospital_finale_lost"; } 
    else return false;
}
function ConceptHospitalRadioContact(query) {
    if("concept" in query) { return query.concept == "hospital_radio_button1"; } 
    else return false;
}
function ConceptHospitalRadioTalk(query) {
    if("concept" in query) { return query.concept == "concepthospitalradiotalk"; } 
    else return false;
}
function ConceptHospitalRadioPrepare(query) {
    if("concept" in query) { return query.concept == "concepthospitalradioprepare"; } 
    else return false;
}
function ConceptHospitalSurvivorsReady(query) {
    if("concept" in query) { return query.concept == "hospital_radio_button2"; } 
    else return false;
}
function ConceptHospitalReadyConfirmed(query) {
    if("concept" in query) { return query.concept == "concepthospitalreadyconfirmed"; } 
    else return false;
}
function ConceptHospitalPilotOnTheWay(query) {
    if("concept" in query) { return query.concept == "concepthospitalpilotontheway"; } 
    else return false;
}
function ConceptHospitalChopperETA(query) {
    if("concept" in query) { return query.concept == "hospital_radio_intransit"; } 
    else return false;
}
function ConceptHospitalChopperArrives(query) {
    if("concept" in query) { return query.concept == "hospital_chopper_arrived"; } 
    else return false;
}
function ConceptBlockPilotLeaving(query) {
    if("concept" in query) { return query.concept == "c8m5outro"; } 
    else return false;
}
function ConceptBlock500(query) {
    if("concept" in query) { return query.concept == "conceptblock500"; } 
    else return false;
}
function ConceptBlock501(query) {
    if("concept" in query) { return query.concept == "boat_radio_broadcast"; } 
    else return false;
}
function ConceptBlock514(query) {
    if("concept" in query) { return query.concept == "boat_radio_button1"; } 
    else return false;
}
function ConceptBlock515(query) {
    if("concept" in query) { return query.concept == "conceptblock515"; } 
    else return false;
}
function ConceptBlock522(query) {
    if("concept" in query) { return query.concept == "conceptblock522"; } 
    else return false;
}
function ConceptBlock523(query) {
    if("concept" in query) { return query.concept == "conceptblock523"; } 
    else return false;
}
function ConceptBlock525(query) {
    if("concept" in query) { return query.concept == "conceptblock525"; } 
    else return false;
}
function ConceptBlock532(query) {
    if("concept" in query) { return query.concept == "boat_radio_button2"; } 
    else return false;
}
function ConceptBlock536(query) {
    if("concept" in query) { return query.concept == "conceptblock536"; } 
    else return false;
}
function ConceptBlock540(query) {
    if("concept" in query) { return query.concept == "conceptblock540"; } 
    else return false;
}
function ConceptBlock542(query) {
    if("concept" in query) { return query.concept == "conceptblock542"; } 
    else return false;
}
function ConceptBlock547(query) {
    if("concept" in query) { return query.concept == "boat_radio_intransit"; } 
    else return false;
}
function ConceptBlock561(query) {
    if("concept" in query) { return query.concept == "boat_speaker_arrived"; } 
    else return false;
}
function ConceptBlockBoatLeaving(query) {
    if("concept" in query) { return query.concept == "boat_speaker_leaving"; } 
    else return false;
}
function ConceptBlock563(query) {
    if("concept" in query) { return query.concept == "conceptblock563"; } 
    else return false;
}
function ConceptBlock001(query) {
    if("concept" in query) { return query.concept == "churchguy_far"; } 
    else return false;
}
function ConceptBlock002A(query) {
    if("concept" in query) { return query.concept == "churchguy_close"; } 
    else return false;
}
function ConceptBlock002B(query) {
    if("concept" in query) { return query.concept == "conceptblock002b"; } 
    else return false;
}
function ConceptBlock002C(query) {
    if("concept" in query) { return query.concept == "conceptblock002c"; } 
    else return false;
}
function ConceptBlock004(query) {
    if("concept" in query) { return query.concept == "conceptblock004"; } 
    else return false;
}
function ConceptBlock005(query) {
    if("concept" in query) { return query.concept == "conceptblock005"; } 
    else return false;
}
function ConceptBlock006(query) {
    if("concept" in query) { return query.concept == "conceptblock006"; } 
    else return false;
}
function ConceptBlock007(query) {
    if("concept" in query) { return query.concept == "conceptblock007"; } 
    else return false;
}
function ConceptBlockDingDong(query) {
    if("concept" in query) { return query.concept == "conceptblockdingdong"; } 
    else return false;
}
function ConceptBlockDingDong2(query) {
    if("concept" in query) { return query.concept == "conceptblockdingdong2"; } 
    else return false;
}
function ConceptBlock008(query) {
    if("concept" in query) { return query.concept == "churchguy_button"; } 
    else return false;
}
function ConceptBlock009(query) {
    if("concept" in query) { return query.concept == "conceptblock009"; } 
    else return false;
}
function ConceptFrancisAntagonize(query) {
    if("concept" in query) { return query.concept == "conceptfrancisantagonize"; } 
    else return false;
}
function ConceptShutUpFrancis(query) {
    if("concept" in query) { return query.concept == "conceptshutupfrancis"; } 
    else return false;
}
function ConceptBlock010(query) {
    if("concept" in query) { return query.concept == "conceptblock010"; } 
    else return false;
}
function ConceptBlock011(query) {
    if("concept" in query) { return query.concept == "conceptblock011"; } 
    else return false;
}
function ConceptBlock012(query) {
    if("concept" in query) { return query.concept == "conceptnuttier"; } 
    else return false;
}
function ConceptBlock015(query) {
    if("concept" in query) { return query.concept == "conceptblock015"; } 
    else return false;
}
function ConceptBlock016(query) {
    if("concept" in query) { return query.concept == "conceptblock016"; } 
    else return false;
}
function ConceptBlock017(query) {
    if("concept" in query) { return query.concept == "conceptblock017"; } 
    else return false;
}
function ConceptBlock018(query) {
    if("concept" in query) { return query.concept == "conceptblock018"; } 
    else return false;
}
function ConceptBlock019(query) {
    if("concept" in query) { return query.concept == "conceptblock019"; } 
    else return false;
}
function ConceptBlock025(query) {
    if("concept" in query) { return query.concept == "conceptblock025"; } 
    else return false;
}
function ConceptBlockChurchGuyNamVetNo1(query) {
    if("concept" in query) { return query.concept == "conceptblockchurchguynamvetno1"; } 
    else return false;
}
function ConceptBlock026(query) {
    if("concept" in query) { return query.concept == "conceptblock026"; } 
    else return false;
}
function ConceptBlock027(query) {
    if("concept" in query) { return query.concept == "conceptblock027"; } 
    else return false;
}
function ConceptBlock028(query) {
    if("concept" in query) { return query.concept == "conceptblock028"; } 
    else return false;
}
function ConceptBlock029(query) {
    if("concept" in query) { return query.concept == "conceptblock029"; } 
    else return false;
}
function ConceptBlock030(query) {
    if("concept" in query) { return query.concept == "conceptblock030"; } 
    else return false;
}
function ConceptBlockBell(query) {
    if("concept" in query) { return query.concept == "conceptblockbell"; } 
    else return false;
}
function ConceptBlock032(query) {
    if("concept" in query) { return query.concept == "conceptblock032"; } 
    else return false;
}
function ConceptBlockChurchGuyTeenGirlNo(query) {
    if("concept" in query) { return query.concept == "conceptblockchurchguyteengirlno"; } 
    else return false;
}
function ConceptBlock033(query) {
    if("concept" in query) { return query.concept == "conceptblock033"; } 
    else return false;
}
function ConceptBlock034(query) {
    if("concept" in query) { return query.concept == "conceptblock034"; } 
    else return false;
}
function ConceptBlock035(query) {
    if("concept" in query) { return query.concept == "conceptblock035"; } 
    else return false;
}
function ConceptBlock036(query) {
    if("concept" in query) { return query.concept == "conceptblock036"; } 
    else return false;
}
function ConceptBlock037(query) {
    if("concept" in query) { return query.concept == "conceptblock037"; } 
    else return false;
}
function ConceptBlock038(query) {
    if("concept" in query) { return query.concept == "conceptblock038"; } 
    else return false;
}
function ConceptBlock039(query) {
    if("concept" in query) { return query.concept == "conceptblock039"; } 
    else return false;
}
function ConceptBlock040(query) {
    if("concept" in query) { return query.concept == "conceptblock040"; } 
    else return false;
}
function ConceptBlock041(query) {
    if("concept" in query) { return query.concept == "conceptblock041"; } 
    else return false;
}
function ConceptBlock042(query) {
    if("concept" in query) { return query.concept == "conceptblock042"; } 
    else return false;
}
function ConceptBlock043(query) {
    if("concept" in query) { return query.concept == "conceptblock043"; } 
    else return false;
}
function ConceptBlock044(query) {
    if("concept" in query) { return query.concept == "conceptblock044"; } 
    else return false;
}
function ConceptBlock049(query) {
    if("concept" in query) { return query.concept == "conceptblock049"; } 
    else return false;
}
function ConceptBlock050(query) {
    if("concept" in query) { return query.concept == "conceptblock050"; } 
    else return false;
}
function ConceptBlock051(query) {
    if("concept" in query) { return query.concept == "conceptblock051"; } 
    else return false;
}
function ConceptBlock052(query) {
    if("concept" in query) { return query.concept == "conceptblock052"; } 
    else return false;
}
function ConceptBlock053(query) {
    if("concept" in query) { return query.concept == "conceptblock053"; } 
    else return false;
}
function ConceptBlock556(query) {
    if("concept" in query) { return query.concept == "conceptblock556"; } 
    else return false;
}
function ConceptBlock557(query) {
    if("concept" in query) { return query.concept == "conceptblock557"; } 
    else return false;
}
function ConceptBlock558(query) {
    if("concept" in query) { return query.concept == "conceptblock558"; } 
    else return false;
}
function ConceptBlock573(query) {
    if("concept" in query) { return query.concept == "churchguy_door_unlocked"; } 
    else return false;
}
function ConceptBlock574(query) {
    if("concept" in query) { return query.concept == "churchguy_door_opened"; } 
    else return false;
}
function ConceptBlock600(query) {
    if("concept" in query) { return query.concept == "elevator_closed"; } 
    else return false;
}
function ConceptBlock606(query) {
    if("concept" in query) { return query.concept == "elevator_conversation"; } 
    else return false;
}
function ConceptBlock607(query) {
    if("concept" in query) { return query.concept == "conceptblock607"; } 
    else return false;
}
function ConceptBlock608(query) {
    if("concept" in query) { return query.concept == "conceptblock608"; } 
    else return false;
}
function ConceptBlock610(query) {
    if("concept" in query) { return query.concept == "conceptblock610"; } 
    else return false;
}
function ConceptBlock611(query) {
    if("concept" in query) { return query.concept == "conceptblock611"; } 
    else return false;
}
function ConceptBlock612(query) {
    if("concept" in query) { return query.concept == "elevatorshortlaugh"; } 
    else return false;
}
function ConceptBlock619(query) {
    if("concept" in query) { return query.concept == "conceptblock619"; } 
    else return false;
}
function ConceptBlock620(query) {
    if("concept" in query) { return query.concept == "conceptblock620"; } 
    else return false;
}
function ConceptBlock622(query) {
    if("concept" in query) { return query.concept == "conceptblock622"; } 
    else return false;
}
function ConceptBlock624(query) {
    if("concept" in query) { return query.concept == "conceptblock624"; } 
    else return false;
}
function ConceptBlock626(query) {
    if("concept" in query) { return query.concept == "conceptblock626"; } 
    else return false;
}
function ConceptBlock627(query) {
    if("concept" in query) { return query.concept == "conceptblock627"; } 
    else return false;
}
function ConceptBlock628(query) {
    if("concept" in query) { return query.concept == "conceptblock628"; } 
    else return false;
}
function ConceptBlock629(query) {
    if("concept" in query) { return query.concept == "conceptblock629"; } 
    else return false;
}
function ConceptBlock631(query) {
    if("concept" in query) { return query.concept == "conceptblock631"; } 
    else return false;
}
function ConceptBlock632(query) {
    if("concept" in query) { return query.concept == "conceptblock632"; } 
    else return false;
}
function ConceptBlock633(query) {
    if("concept" in query) { return query.concept == "conceptblock633"; } 
    else return false;
}
function ConceptBlock635(query) {
    if("concept" in query) { return query.concept == "conceptblock635"; } 
    else return false;
}
function ConceptBlock637(query) {
    if("concept" in query) { return query.concept == "conceptblock637"; } 
    else return false;
}
function ConceptBlockPrison(query) {
    if("concept" in query) { return query.concept == "conceptblockprison"; } 
    else return false;
}
function ConceptBlock639(query) {
    if("concept" in query) { return query.concept == "conceptblock639"; } 
    else return false;
}
function ConceptBlock640(query) {
    if("concept" in query) { return query.concept == "conceptblock640"; } 
    else return false;
}
function ConceptBlock641(query) {
    if("concept" in query) { return query.concept == "conceptblock641"; } 
    else return false;
}
function ConceptBlock643(query) {
    if("concept" in query) { return query.concept == "conceptblock643"; } 
    else return false;
}
function ConceptBlock645(query) {
    if("concept" in query) { return query.concept == "conceptblock645"; } 
    else return false;
}
function ConceptBlock647(query) {
    if("concept" in query) { return query.concept == "conceptblock647"; } 
    else return false;
}
function ConceptBlock648(query) {
    if("concept" in query) { return query.concept == "conceptblock648"; } 
    else return false;
}
function ConceptBlock649(query) {
    if("concept" in query) { return query.concept == "conceptblock649"; } 
    else return false;
}
function ConceptBlock650(query) {
    if("concept" in query) { return query.concept == "conceptblock650"; } 
    else return false;
}
function ConceptBlock652(query) {
    if("concept" in query) { return query.concept == "conceptblock652"; } 
    else return false;
}
function ConceptBlock656(query) {
    if("concept" in query) { return query.concept == "conceptblock656"; } 
    else return false;
}
function ConceptBlock657(query) {
    if("concept" in query) { return query.concept == "conceptblock657"; } 
    else return false;
}
function ConceptBlock658(query) {
    if("concept" in query) { return query.concept == "conceptblock658"; } 
    else return false;
}
function ConceptBlock659(query) {
    if("concept" in query) { return query.concept == "conceptblock659"; } 
    else return false;
}
function ConceptBlock660(query) {
    if("concept" in query) { return query.concept == "conceptblock660"; } 
    else return false;
}
function ConceptBlock661(query) {
    if("concept" in query) { return query.concept == "conceptblock661"; } 
    else return false;
}
function ConceptBlock662(query) {
    if("concept" in query) { return query.concept == "conceptblock662"; } 
    else return false;
}
function ConceptBlock663(query) {
    if("concept" in query) { return query.concept == "conceptblock663"; } 
    else return false;
}
function ConceptBlock665(query) {
    if("concept" in query) { return query.concept == "bridgereadytocross"; } 
    else return false;
}
function ConceptBlock666(query) {
    if("concept" in query) { return query.concept == "bridgecrossalert"; } 
    else return false;
}
function ConceptBlock669(query) {
    if("concept" in query) { return query.concept == "bridgegogogo"; } 
    else return false;
}
function ConceptBlock675(query) {
    if("concept" in query) { return query.concept == "trainunhooked"; } 
    else return false;
}
function ConceptBlock685(query) {
    if("concept" in query) { return query.concept == "planecrash"; } 
    else return false;
}
function ConceptBlock686(query) {
    if("concept" in query) { return query.concept == "planecrashresponse"; } 
    else return false;
}
function ConceptBlock696(query) {
    if("concept" in query) { return query.concept == "conceptblock696"; } 
    else return false;
}
function ConceptBlock697(query) {
    if("concept" in query) { return query.concept == "conceptblock697"; } 
    else return false;
}
function ConceptBlock699(query) {
    if("concept" in query) { return query.concept == "responsetougherfriends"; } 
    else return false;
}
function ConceptBlock702(query) {
    if("concept" in query) { return query.concept == "responsetwoleftshit"; } 
    else return false;
}
function ConceptBlock705(query) {
    if("concept" in query) { return query.concept == "responsewecanstill"; } 
    else return false;
}
function ConceptBlock709(query) {
    if("concept" in query) { return query.concept == "conceptblock709"; } 
    else return false;
}
function ConceptBlock710(query) {
    if("concept" in query) { return query.concept == "conceptblock710"; } 
    else return false;
}
function ConceptBlock711(query) {
    if("concept" in query) { return query.concept == "conceptblock711"; } 
    else return false;
}
function ConceptBlock712(query) {
    if("concept" in query) { return query.concept == "conceptblock712"; } 
    else return false;
}
function ConceptBlock715(query) {
    if("concept" in query) { return query.concept == "conceptblock715"; } 
    else return false;
}
function ConceptBlock717(query) {
    if("concept" in query) { return query.concept == "conceptblock717"; } 
    else return false;
}
function ConceptBlock721(query) {
    if("concept" in query) { return query.concept == "conceptblock721"; } 
    else return false;
}
function ConceptBlock575(query) {
    if("concept" in query) { return query.concept == "farm_radio_broadcast"; } 
    else return false;
}
function ConceptBlock576(query) {
    if("concept" in query) { return query.concept == "farm_radio_button1"; } 
    else return false;
}
function ConceptBlock577(query) {
    if("concept" in query) { return query.concept == "conceptblock577"; } 
    else return false;
}
function ConceptBlock582(query) {
    if("concept" in query) { return query.concept == "conceptblock582"; } 
    else return false;
}
function ConceptBlock583(query) {
    if("concept" in query) { return query.concept == "conceptblock583"; } 
    else return false;
}
function ConceptBlock586(query) {
    if("concept" in query) { return query.concept == "conceptblock586"; } 
    else return false;
}
function ConceptBlock587(query) {
    if("concept" in query) { return query.concept == "farm_radio_button2"; } 
    else return false;
}
function ConceptBlock588(query) {
    if("concept" in query) { return query.concept == "conceptblock588"; } 
    else return false;
}
function ConceptBlock589(query) {
    if("concept" in query) { return query.concept == "conceptblock589"; } 
    else return false;
}
function ConceptBlockHospitalChopperArrived(query) {
    if("concept" in query) { return query.concept == "hospitalradiochopperhere"; } 
    else return false;
}
function ConceptBlockMegaMobAirport(query) {
    if("concept" in query) { return query.concept == "airportradiomegamob"; } 
    else return false;
}
function ConceptBlockETAFarm(query) {
    if("concept" in query) { return query.concept == "farm_radio_intransit"; } 
    else return false;
}
function ConceptBlock564(query) {
    if("concept" in query) { return query.concept == "plane_radio_broadcast"; } 
    else return false;
}
function ConceptBlock565(query) {
    if("concept" in query) { return query.concept == "conceptblock565"; } 
    else return false;
}
function ConceptBlock566(query) {
    if("concept" in query) { return query.concept == "plane_radio_button1"; } 
    else return false;
}
function ConceptBlock567(query) {
    if("concept" in query) { return query.concept == "conceptblock567"; } 
    else return false;
}
function ConceptBlock568(query) {
    if("concept" in query) { return query.concept == "conceptblock568"; } 
    else return false;
}
function ConceptBlock569(query) {
    if("concept" in query) { return query.concept == "plane_radio_button2"; } 
    else return false;
}
function ConceptBlock570(query) {
    if("concept" in query) { return query.concept == "conceptblock570"; } 
    else return false;
}
function ConceptBlock571(query) {
    if("concept" in query) { return query.concept == "plane_radio_ready"; } 
    else return false;
}
function ConceptBlockPlaneFull(query) {
    if("concept" in query) { return query.concept == "conceptblockplanefull"; } 
    else return false;
}
function ConceptBlock572(query) {
    if("concept" in query) { return query.concept == "conceptblock572"; } 
    else return false;
}
function ConceptBlockPlaneLeaving(query) {
    if("concept" in query) { return query.concept == "c11m5outro"; } 
    else return false;
}
function ConceptBlock690(query) {
    if("concept" in query) { return query.concept == "plane_radio_intransit"; } 
    else return false;
}
function ConceptBlock959(query) {
    if("concept" in query) { return query.concept == "namvetwhoareyou"; } 
    else return false;
}
// manager_dlc2.txt ===================================================================================================================
function ManagerNotPickedUpItem(query) {
    if("managerpickedupitem" in query) { return query.managerpickedupitem != 1; } 
    else return true;
}
function IsManagerFriendlyFire(query) {
    if("worldmanagerfriendlyfire" in query) { return query.worldmanagerfriendlyfire == 1; } 
    else return false;
}
function IsNotManagerFriendlyFire(query) {
    if("worldmanagerfriendlyfire" in query) { return query.worldmanagerfriendlyfire != 1; } 
    else return true;
}
function IsNotAskedForCoverManager(query) {
    if("manageraskforcover" in query) { return query.manageraskforcover != 1; } 
    else return true;
}
function IsNotSaidBattleStationsManager(query) {
    if("worldsaidbattlestationsmanager" in query) { return query.worldsaidbattlestationsmanager != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedManager(query) {
    if("saidbeenjockeyedmanager" in query) { return query.saidbeenjockeyedmanager != 1; } 
    else return true;
}
// manager_dlc3.txt ===================================================================================================================
function ManagerNotSaidGrabbingCan(query) {
    if("saidgrabbingcan" in query) { return query.saidgrabbingcan != 1; } 
    else return true;
}
function SaidC7M3BridgeLeap(query) {
    if("world_auto_saidc7m3bridgeleap" in query) { return query.world_auto_saidc7m3bridgeleap == 1; } 
    else return false;
}
function IsNotSaidC7M3ManagerDownFinal(query) {
    if("c7m3managerdownfinal" in query) { return query.c7m3managerdownfinal != 1; } 
    else return true;
}
// namvet_dlc2.txt ===================================================================================================================
function NamVetNotPickedUpItem(query) {
    if("namvetpickedupitem" in query) { return query.namvetpickedupitem != 1; } 
    else return true;
}
function IsNamVetFriendlyFire(query) {
    if("worldnamvetfriendlyfire" in query) { return query.worldnamvetfriendlyfire == 1; } 
    else return false;
}
function IsNotNamVetFriendlyFire(query) {
    if("worldnamvetfriendlyfire" in query) { return query.worldnamvetfriendlyfire != 1; } 
    else return true;
}
function IsNotNamVetFriendlyFireFrancis(query) {
    if("worldnamvetfriendlyfirefrancis" in query) { return query.worldnamvetfriendlyfirefrancis != 1; } 
    else return true;
}
function IsNotAskedForCoverNamVet(query) {
    if("namvetaskforcover" in query) { return query.namvetaskforcover != 1; } 
    else return true;
}
function IsNotSaidBattleStationsNamVet(query) {
    if("worldsaidbattlestationsnamvet" in query) { return query.worldsaidbattlestationsnamvet != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedNamVet(query) {
    if("saidbeenjockeyednamvet" in query) { return query.saidbeenjockeyednamvet != 1; } 
    else return true;
}
// namvet_dlc3.txt ===================================================================================================================
function NamVetNotSaidGrabbingCan(query) {
    if("saidgrabbingcan" in query) { return query.saidgrabbingcan != 1; } 
    else return true;
}
// requires.txt ===================================================================================================================
function _auto_NotAlarmFieldOn(query) {
    if("world_auto_alarmfieldon" in query) { return query.world_auto_alarmfieldon < 1; } 
    else return true;
}
function _auto_IsAlarmFieldOn(query) {
    if("world_auto_alarmfieldon" in query) { return query.world_auto_alarmfieldon == 1; } 
    else return false;
}
function _auto_NotAlarm(query) {
    if("world_auto_alarm" in query) { return query.world_auto_alarm < 1; } 
    else return true;
}
function _auto_IsAlarm(query) {
    if("world_auto_alarm" in query) { return query.world_auto_alarm == 1; } 
    else return false;
}
function _auto_NotAlarmV2(query) {
    if("world_auto_alarm" in query) { return query.world_auto_alarm != 1; } 
    else return true;
}
function _auto_IsBikerInCane(query) {
    if("world_auto_bikerincane" in query) { return query.world_auto_bikerincane == 1; } 
    else return false;
}
function _auto_NotBikerInCane(query) {
    if("world_auto_bikerincane" in query) { return query.world_auto_bikerincane < 1; } 
    else return true;
}
function _auto_IsBikerWavWindow(query) {
    if("world_auto_bikerwavwindow" in query) { return query.world_auto_bikerwavwindow == 1; } 
    else return false;
}
function _auto_IsBoatArrived(query) {
    if("world_auto_boatarrived" in query) { return query.world_auto_boatarrived == 1; } 
    else return false;
}
function _auto_NoAirstrikes(query) {
    if("world_auto_airstrike" in query) { return query.world_auto_airstrike < 1; } 
    else return true;
}
function _auto_FirstAirstrike(query) {
    if("world_auto_airstrike" in query) { return query.world_auto_airstrike == 1; } 
    else return false;
}
function _auto_SecondAirstrike(query) {
    if("world_auto_airstrike" in query) { return query.world_auto_airstrike == 2; } 
    else return false;
}
function _auto_ManyAirstrikes(query) {
    if("world_auto_airstrike" in query) { return query.world_auto_airstrike >= 3; } 
    else return false;
}
function _auto_IsBridgeBomb(query) {
    if("world_auto_bridgebomb" in query) { return query.world_auto_bridgebomb == 1; } 
    else return false;
}
function _auto_NotButton1(query) {
    if("world_auto_button1" in query) { return query.world_auto_button1 < 1; } 
    else return true;
}
function _auto_IsButton1(query) {
    if("world_auto_button1" in query) { return query.world_auto_button1 == 1; } 
    else return false;
}
function _auto_NotButton2(query) {
    if("world_auto_button2" in query) { return query.world_auto_button2 < 1; } 
    else return true;
}
function _auto_IsButton2(query) {
    if("world_auto_button2" in query) { return query.world_auto_button2 == 1; } 
    else return false;
}
function _auto_NotButtonPressed(query) {
    if("world_auto_buttonpressed" in query) { return query.world_auto_buttonpressed < 1; } 
    else return true;
}
function _auto_IsC2M5InArena(query) {
    if("world_auto_c2m5inarena" in query) { return query.world_auto_c2m5inarena == 1; } 
    else return false;
}
function _auto_NotC2M5InArena(query) {
    if("world_auto_c2m5inarena" in query) { return query.world_auto_c2m5inarena < 1; } 
    else return true;
}
function _auto_NotC4BikerInCover(query) {
    if("world_auto_c4bikerincover" in query) { return query.world_auto_c4bikerincover < 1; } 
    else return true;
}
function _auto_NotC4CoachInCover(query) {
    if("world_auto_c4coachincover" in query) { return query.world_auto_c4coachincover < 1; } 
    else return true;
}
function _auto_NotC4GamblerInCover(query) {
    if("world_auto_c4gamblerincover" in query) { return query.world_auto_c4gamblerincover < 1; } 
    else return true;
}
function _auto_NotC4ManagerInCover(query) {
    if("world_auto_c4managerincover" in query) { return query.world_auto_c4managerincover < 1; } 
    else return true;
}
function _auto_NotC4MechanicInCover(query) {
    if("world_auto_c4mechanicincover" in query) { return query.world_auto_c4mechanicincover < 1; } 
    else return true;
}
function _auto_NotC4NamVetInCover(query) {
    if("world_auto_c4namvetincover" in query) { return query.world_auto_c4namvetincover < 1; } 
    else return true;
}
function _auto_NotC4ProducerInCover(query) {
    if("world_auto_c4producerincover" in query) { return query.world_auto_c4producerincover < 1; } 
    else return true;
}
function _auto_NotC4TeenGirlInCover(query) {
    if("world_auto_c4teengirlincover" in query) { return query.world_auto_c4teengirlincover < 1; } 
    else return true;
}
function _auto_NotC7M2CrowsFlySpeak(query) {
    if("world_auto_c7m2crowsflyspeak" in query) { return query.world_auto_c7m2crowsflyspeak < 1; } 
    else return true;
}
function _auto_NotC7M3FinalPress(query) {
    if("world_auto_c7m3finalpress" in query) { return query.world_auto_c7m3finalpress < 1; } 
    else return true;
}
function _auto_IsC7M3FinalPress(query) {
    if("world_auto_c7m3finalpress" in query) { return query.world_auto_c7m3finalpress == 1; } 
    else return false;
}
function _auto_NotPressedC7M3BridgeButton(query) {
    if("world_auto_c7m3bridgebutton" in query) { return query.world_auto_c7m3bridgebutton < 1; } 
    else return true;
}
function _auto_NotCaneExitedCoach(query) {
    if("world_auto_caneexitedcoach" in query) { return query.world_auto_caneexitedcoach < 1; } 
    else return true;
}
function _auto_NotCaneExitedGambler(query) {
    if("world_auto_caneexitedgambler" in query) { return query.world_auto_caneexitedgambler < 1; } 
    else return true;
}
function _auto_NotCaneExitedMechanic(query) {
    if("world_auto_caneexitedmechanic" in query) { return query.world_auto_caneexitedmechanic < 1; } 
    else return true;
}
function _auto_NotCaneExitedProducer(query) {
    if("world_auto_caneexitedproducer" in query) { return query.world_auto_caneexitedproducer < 1; } 
    else return true;
}
function _auto_NotCaneYellGated(query) {
    if("world_auto_caneyellgated" in query) { return query.world_auto_caneyellgated < 1; } 
    else return true;
}
function _auto_NotCoachAngry(query) {
    if("world_auto_coachangry" in query) { return query.world_auto_coachangry < 1; } 
    else return true;
}
function _auto_NotCoachFoodBreak(query) {
    if("world_auto_coachfoodbreak" in query) { return query.world_auto_coachfoodbreak < 1; } 
    else return true;
}
function _auto_NotCoachHappy(query) {
    if("world_auto_coachhappy" in query) { return query.world_auto_coachhappy < 1; } 
    else return true;
}
function _auto_NotDoneFalling(query) {
    if("world_auto_donefalling" in query) { return query.world_auto_donefalling < 1; } 
    else return true;
}
function _auto_IsDoneFalling(query) {
    if("world_auto_donefalling" in query) { return query.world_auto_donefalling == 1; } 
    else return false;
}
function _auto_ConcertNotLive(query) {
    if("world_auto_concertlive" in query) { return query.world_auto_concertlive < 1; } 
    else return true;
}
function _auto_ConcertIsLive(query) {
    if("world_auto_concertlive" in query) { return query.world_auto_concertlive == 1; } 
    else return false;
}
function _auto_NotRockingOut(query) {
    if("world_auto_rockingout" in query) { return query.world_auto_rockingout < 1; } 
    else return true;
}
function _auto_IsRockingOut(query) {
    if("world_auto_rockingout" in query) { return query.world_auto_rockingout == 1; } 
    else return false;
}
function _auto_IsCoachInCane(query) {
    if("world_auto_coachincane" in query) { return query.world_auto_coachincane == 1; } 
    else return false;
}
function _auto_NotCoachInCane(query) {
    if("world_auto_coachincane" in query) { return query.world_auto_coachincane < 1; } 
    else return true;
}
function _auto_IsCoachWavWindow(query) {
    if("world_auto_coachwavwindow" in query) { return query.world_auto_coachwavwindow == 1; } 
    else return false;
}
function _auto_IsCoasterExpo(query) {
    if("world_auto_coasterexpo" in query) { return query.world_auto_coasterexpo == 1; } 
    else return false;
}
function _auto_NotDidInterrupt(query) {
    if("world_auto_didinterrupt" in query) { return query.world_auto_didinterrupt < 1; } 
    else return true;
}
function _auto_IsDoorOpen(query) {
    if("world_auto_dooropen" in query) { return query.world_auto_dooropen == 1; } 
    else return false;
}
function _auto_NotDoorOpen(query) {
    if("world_auto_dooropen" in query) { return query.world_auto_dooropen < 1; } 
    else return true;
}
function _auto_NotDownHole(query) {
    if("world_auto_downhole" in query) { return query.world_auto_downhole < 1; } 
    else return true;
}
function _auto_NotFinaleStarted(query) {
    if("world_auto_finale" in query) { return query.world_auto_finale < 1; } 
    else return true;
}
function _auto_IsFinaleStarted(query) {
    if("world_auto_finale" in query) { return query.world_auto_finale == 1; } 
    else return false;
}
function _auto_HasSpottedVehicle(query) {
    if("world_auto_finale" in query) { return query.world_auto_finale == 2; } 
    else return false;
}
function _auto_NotSpottedVehicle(query) {
    if("world_auto_finale" in query) { return query.world_auto_finale != 2; } 
    else return true;
}
function _auto_NotEscapeReady(query) {
    if("world_auto_escape" in query) { return query.world_auto_escape < 1; } 
    else return true;
}
function _auto_IsEscapeReady(query) {
    if("world_auto_escape" in query) { return query.world_auto_escape == 1; } 
    else return false;
}
function _auto_IsGamblerInCane(query) {
    if("world_auto_gamblerincane" in query) { return query.world_auto_gamblerincane == 1; } 
    else return false;
}
function _auto_NotGamblerInCane(query) {
    if("world_auto_gamblerincane" in query) { return query.world_auto_gamblerincane < 1; } 
    else return true;
}
function _auto_IsGamblerWavWindow(query) {
    if("world_auto_gamblerwavwindow" in query) { return query.world_auto_gamblerwavwindow == 1; } 
    else return false;
}
function _auto_IsGasCountOK(query) {
    if("world_auto_gascountok" in query) { return query.world_auto_gascountok == 1; } 
    else return false;
}
function _auto_IsInAlarmField(query) {
    if("world_auto_inalarmfield" in query) { return query.world_auto_inalarmfield == 1; } 
    else return false;
}
function _auto_NotInMiniFinale(query) {
    if("world_auto_inminifinale" in query) { return query.world_auto_inminifinale < 1; } 
    else return true;
}
function _auto_NotInSewer(query) {
    if("world_auto_insewer" in query) { return query.world_auto_insewer < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedBiker(query) {
    if("world_auto_lastsurvivortalkedbiker" in query) { return query.world_auto_lastsurvivortalkedbiker < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedCoach(query) {
    if("world_auto_lastsurvivortalkedcoach" in query) { return query.world_auto_lastsurvivortalkedcoach < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedGambler(query) {
    if("world_auto_lastsurvivortalkedgambler" in query) { return query.world_auto_lastsurvivortalkedgambler < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedManager(query) {
    if("world_auto_lastsurvivortalkedmanager" in query) { return query.world_auto_lastsurvivortalkedmanager < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedMechanic(query) {
    if("world_auto_lastsurvivortalkedmechanic" in query) { return query.world_auto_lastsurvivortalkedmechanic < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedNamVet(query) {
    if("world_auto_lastsurvivortalkednamvet" in query) { return query.world_auto_lastsurvivortalkednamvet < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedProducer(query) {
    if("world_auto_lastsurvivortalkedproducer" in query) { return query.world_auto_lastsurvivortalkedproducer < 1; } 
    else return true;
}
function _auto_NotLastSurvivorTalkedTeenGirl(query) {
    if("world_auto_lastsurvivortalkedteengirl" in query) { return query.world_auto_lastsurvivortalkedteengirl < 1; } 
    else return true;
}
function _auto_NotLockA(query) {
    if("world_auto_locka" in query) { return query.world_auto_locka < 1; } 
    else return true;
}
function _auto_IsManagerInCane(query) {
    if("world_auto_managerincane" in query) { return query.world_auto_managerincane == 1; } 
    else return false;
}
function _auto_NotManagerInCane(query) {
    if("world_auto_managerincane" in query) { return query.world_auto_managerincane < 1; } 
    else return true;
}
function _auto_IsManagerWavWindow(query) {
    if("world_auto_managerwavwindow" in query) { return query.world_auto_managerwavwindow == 1; } 
    else return false;
}
function _auto_IsMechanicInCane(query) {
    if("world_auto_mechanicincane" in query) { return query.world_auto_mechanicincane == 1; } 
    else return false;
}
function _auto_NotMechanicInCane(query) {
    if("world_auto_mechanicincane" in query) { return query.world_auto_mechanicincane < 1; } 
    else return true;
}
function _auto_IsMechanicWavWindow(query) {
    if("world_auto_mechanicwavwindow" in query) { return query.world_auto_mechanicwavwindow == 1; } 
    else return false;
}
function _auto_IsNamVetInCane(query) {
    if("world_auto_namvetincane" in query) { return query.world_auto_namvetincane == 1; } 
    else return false;
}
function _auto_NotNamVetInCane(query) {
    if("world_auto_namvetincane" in query) { return query.world_auto_namvetincane < 1; } 
    else return true;
}
function _auto_IsNamVetWavWindow(query) {
    if("world_auto_namvetwavwindow" in query) { return query.world_auto_namvetwavwindow == 1; } 
    else return false;
}
function _auto_IsNearGate(query) {
    if("world_auto_neargate" in query) { return query.world_auto_neargate == 1; } 
    else return false;
}
function _auto_NotNearGateNag(query) {
    if("world_auto_neargatenag" in query) { return query.world_auto_neargatenag < 1; } 
    else return true;
}
function _auto_IsNearGateNag(query) {
    if("world_auto_neargatenag" in query) { return query.world_auto_neargatenag == 1; } 
    else return false;
}
function _auto_NotNoGasGate(query) {
    if("world_auto_nogasgate" in query) { return query.world_auto_nogasgate < 1; } 
    else return true;
}
function _auto_NotNoGasPourLine(query) {
    if("world_auto_nogaspourline" in query) { return query.world_auto_nogaspourline < 1; } 
    else return true;
}
function _auto_NotNoLostCall(query) {
    if("world_auto_nolostcall" in query) { return query.world_auto_nolostcall < 1; } 
    else return true;
}
function _auto_NotOffHighway(query) {
    if("world_auto_offhighway" in query) { return query.world_auto_offhighway < 1; } 
    else return true;
}
function _auto_IsOffHighway(query) {
    if("world_auto_offhighway" in query) { return query.world_auto_offhighway == 1; } 
    else return false;
}
function _auto_IsOkSafehouse(query) {
    if("world_auto_oksafehouse" in query) { return query.world_auto_oksafehouse == 1; } 
    else return false;
}
function _auto_NotOutOfTunnel(query) {
    if("world_auto_outoftunnel" in query) { return query.world_auto_outoftunnel < 1; } 
    else return true;
}
function _auto_IsProducerInCane(query) {
    if("world_auto_producerincane" in query) { return query.world_auto_producerincane == 1; } 
    else return false;
}
function _auto_NotProducerInCane(query) {
    if("world_auto_producerincane" in query) { return query.world_auto_producerincane < 1; } 
    else return true;
}
function _auto_IsProducerWavWindow(query) {
    if("world_auto_producerwavwindow" in query) { return query.world_auto_producerwavwindow == 1; } 
    else return false;
}
function _auto_IsCoachInWitchville(query) {
    if("world_auto_coachinwitchville" in query) { return query.world_auto_coachinwitchville == 1; } 
    else return false;
}
function _auto_IsGamblerInWitchville(query) {
    if("world_auto_gamblerinwitchville" in query) { return query.world_auto_gamblerinwitchville == 1; } 
    else return false;
}
function _auto_IsMechanicInWitchville(query) {
    if("world_auto_mechanicinwitchville" in query) { return query.world_auto_mechanicinwitchville == 1; } 
    else return false;
}
function _auto_IsProducerInWitchville(query) {
    if("world_auto_producerinwitchville" in query) { return query.world_auto_producerinwitchville == 1; } 
    else return false;
}
function _auto_NotCoachInWitchville(query) {
    if("world_auto_coachinwitchville" in query) { return query.world_auto_coachinwitchville < 1; } 
    else return true;
}
function _auto_NotGamblerInWitchville(query) {
    if("world_auto_gamblerinwitchville" in query) { return query.world_auto_gamblerinwitchville < 1; } 
    else return true;
}
function _auto_NotMechanicInWitchville(query) {
    if("world_auto_mechanicinwitchville" in query) { return query.world_auto_mechanicinwitchville < 1; } 
    else return true;
}
function _auto_NotProducerInWitchville(query) {
    if("world_auto_producerinwitchville" in query) { return query.world_auto_producerinwitchville < 1; } 
    else return true;
}
function _auto_NotRadioNag(query) {
    if("world_auto_radionag" in query) { return query.world_auto_radionag < 1; } 
    else return true;
}
function _auto_IsRadioNag(query) {
    if("world_auto_radionag" in query) { return query.world_auto_radionag == 1; } 
    else return false;
}
function _auto_NotSafeRoomQuiet(query) {
    if("world_auto_saferoomquiet" in query) { return query.world_auto_saferoomquiet < 1; } 
    else return true;
}
function _auto_IsSafeRoomStart(query) {
    if("world_auto_saferoomstart" in query) { return query.world_auto_saferoomstart == 1; } 
    else return false;
}
function _auto_NotSafeRoomStart(query) {
    if("world_auto_saferoomstart" in query) { return query.world_auto_saferoomstart < 1; } 
    else return true;
}
function _auto_NotSaidC1M2GrabbedCola(query) {
    if("world_auto_saidc1m2grabbedcola" in query) { return query.world_auto_saidc1m2grabbedcola < 1; } 
    else return true;
}
function _auto_SaidC1M2GrabbedCola(query) {
    if("world_auto_saidc1m2grabbedcola" in query) { return query.world_auto_saidc1m2grabbedcola == 1; } 
    else return false;
}
function _auto_NotSaidC7M1OpenTankDoor(query) {
    if("world_auto_saidc7m1opentankdoor" in query) { return query.world_auto_saidc7m1opentankdoor < 1; } 
    else return true;
}
function _auto_SaidC7M1OpenTankDoor(query) {
    if("world_auto_saidc7m1opentankdoor" in query) { return query.world_auto_saidc7m1opentankdoor == 1; } 
    else return false;
}
function _auto_NotC7M3BridgeReady(query) {
    if("world_auto_c7m3bridgeready" in query) { return query.world_auto_c7m3bridgeready < 1; } 
    else return true;
}
function _auto_IsC7M3BridgeReady(query) {
    if("world_auto_c7m3bridgeready" in query) { return query.world_auto_c7m3bridgeready == 1; } 
    else return false;
}
function _auto_NotC7M3BridgeBreaks(query) {
    if("world_auto_c7m3bridgebreaks" in query) { return query.world_auto_c7m3bridgebreaks < 1; } 
    else return true;
}
function _auto_IsC7M3BridgeBreaks(query) {
    if("world_auto_c7m3bridgebreaks" in query) { return query.world_auto_c7m3bridgebreaks == 1; } 
    else return false;
}
function _auto_NotSaidC7M3BridgeLeap(query) {
    if("world_auto_saidc7m3bridgeleap" in query) { return query.world_auto_saidc7m3bridgeleap < 1; } 
    else return true;
}
function _auto_IsSaidC7M3BridgeLeap(query) {
    if("world_auto_saidc7m3bridgeleap" in query) { return query.world_auto_saidc7m3bridgeleap == 1; } 
    else return false;
}
function _auto_BikerIsPressing(query) {
    if("world_auto_bikerpressing" in query) { return query.world_auto_bikerpressing == 1; } 
    else return false;
}
function _auto_CoachIsPressing(query) {
    if("world_auto_coachpressing" in query) { return query.world_auto_coachpressing == 1; } 
    else return false;
}
function _auto_GamblerIsPressing(query) {
    if("world_auto_gamblerpressing" in query) { return query.world_auto_gamblerpressing == 1; } 
    else return false;
}
function _auto_ManagerIsPressing(query) {
    if("world_auto_managerpressing" in query) { return query.world_auto_managerpressing == 1; } 
    else return false;
}
function _auto_MechanicIsPressing(query) {
    if("world_auto_mechanicpressing" in query) { return query.world_auto_mechanicpressing == 1; } 
    else return false;
}
function _auto_NamVetIsPressing(query) {
    if("world_auto_namvetpressing" in query) { return query.world_auto_namvetpressing == 1; } 
    else return false;
}
function _auto_ProducerIsPressing(query) {
    if("world_auto_producerpressing" in query) { return query.world_auto_producerpressing == 1; } 
    else return false;
}
function _auto_TeenGirlIsPressing(query) {
    if("world_auto_teengirlpressing" in query) { return query.world_auto_teengirlpressing == 1; } 
    else return false;
}
function _auto_IssaidSailBoatIntro(query) {
    if("world_auto_saidsailboatintro" in query) { return query.world_auto_saidsailboatintro == 1; } 
    else return false;
}
function _auto_NotSawBridge(query) {
    if("world_auto_sawbridge" in query) { return query.world_auto_sawbridge < 1; } 
    else return true;
}
function _auto_ShotSecondCar(query) {
    if("world_auto_shotcar" in query) { return query.world_auto_shotcar < 1; } 
    else return true;
}
function _auto_ShotThirdCar(query) {
    if("world_auto_shotcar" in query) { return query.world_auto_shotcar == 1; } 
    else return false;
}
function _auto_C5M3EllisReacted(query) {
    if("world_auto_c5m3mechanicreacted" in query) { return query.world_auto_c5m3mechanicreacted == 1; } 
    else return false;
}
function _auto_NotSaidC5M3NewOrleansFact(query) {
    if("world_auto_c5m3neworleansfact" in query) { return query.world_auto_c5m3neworleansfact < 1; } 
    else return true;
}
function _auto_IsSoldierChatter(query) {
    if("world_auto_soldierchatter" in query) { return query.world_auto_soldierchatter == 1; } 
    else return false;
}
function _auto_NotBetaSoldiersV2(query) {
    if("world_auto_betasoldiers" in query) { return query.world_auto_betasoldiers != 1; } 
    else return true;
}
function _auto_IsBetaSoldiers(query) {
    if("world_auto_betasoldiers" in query) { return query.world_auto_betasoldiers == 1; } 
    else return false;
}
function _auto_NotBetaSoldiers(query) {
    if("world_auto_betasoldiers" in query) { return query.world_auto_betasoldiers < 1; } 
    else return true;
}
function _auto_IsBridgeNag(query) {
    if("world_auto_bridgenag" in query) { return query.world_auto_bridgenag == 1; } 
    else return false;
}
function _auto_IsBuzzardRunMentioned(query) {
    if("world_auto_buzzardrunmentioned" in query) { return query.world_auto_buzzardrunmentioned == 1; } 
    else return false;
}
function _auto_NotStoryGate(query) {
    if("world_auto_storygate" in query) { return query.world_auto_storygate < 1; } 
    else return true;
}
function _auto_IsStoryWait(query) {
    if("world_auto_storywait" in query) { return query.world_auto_storywait == 1; } 
    else return false;
}
function _auto_IsTalkingBiker(query) {
    if("world_auto_talkingbiker" in query) { return query.world_auto_talkingbiker == 1; } 
    else return false;
}
function _auto_IsTalkingCoach(query) {
    if("world_auto_talkingcoach" in query) { return query.world_auto_talkingcoach == 1; } 
    else return false;
}
function _auto_IsTalkingGambler(query) {
    if("world_auto_talkinggambler" in query) { return query.world_auto_talkinggambler == 1; } 
    else return false;
}
function _auto_IsTalkingManager(query) {
    if("world_auto_talkingmanager" in query) { return query.world_auto_talkingmanager == 1; } 
    else return false;
}
function _auto_IsTalkingMechanic(query) {
    if("world_auto_talkingmechanic" in query) { return query.world_auto_talkingmechanic == 1; } 
    else return false;
}
function _auto_IsTalkingNamVet(query) {
    if("world_auto_talkingnamvet" in query) { return query.world_auto_talkingnamvet == 1; } 
    else return false;
}
function _auto_IsTalkingProducer(query) {
    if("world_auto_talkingproducer" in query) { return query.world_auto_talkingproducer == 1; } 
    else return false;
}
function _auto_IsTalkingTeenGirl(query) {
    if("world_auto_talkingteengirl" in query) { return query.world_auto_talkingteengirl == 1; } 
    else return false;
}
function _auto_IsTeamNearCoaster(query) {
    if("world_auto_teamnearcoaster" in query) { return query.world_auto_teamnearcoaster == 1; } 
    else return false;
}
function _auto_IsTeenGirlInCane(query) {
    if("world_auto_teengirlincane" in query) { return query.world_auto_teengirlincane == 1; } 
    else return false;
}
function _auto_NotTeenGirlInCane(query) {
    if("world_auto_teengirlincane" in query) { return query.world_auto_teengirlincane < 1; } 
    else return true;
}
function _auto_IsTeenGirlWavWindow(query) {
    if("world_auto_teengirlwavwindow" in query) { return query.world_auto_teengirlwavwindow == 1; } 
    else return false;
}
function _auto_NotTellingStory(query) {
    if("world_auto_tellingstory" in query) { return query.world_auto_tellingstory < 1; } 
    else return true;
}
function _auto_IsTellingStory(query) {
    if("world_auto_tellingstory" in query) { return query.world_auto_tellingstory == 1; } 
    else return false;
}
function _auto_IsTimerA(query) {
    if("world_auto_timera" in query) { return query.world_auto_timera == 1; } 
    else return false;
}
function _auto_NotTimerLockA(query) {
    if("world_auto_timerlocka" in query) { return query.world_auto_timerlocka < 1; } 
    else return true;
}
function _auto_NotTimerLockBiker(query) {
    if("world_auto_timerlockbiker" in query) { return query.world_auto_timerlockbiker < 1; } 
    else return true;
}
function _auto_NotTimerLockCoach(query) {
    if("world_auto_timerlockcoach" in query) { return query.world_auto_timerlockcoach < 1; } 
    else return true;
}
function _auto_NotTimerLockGambler(query) {
    if("world_auto_timerlockgambler" in query) { return query.world_auto_timerlockgambler < 1; } 
    else return true;
}
function _auto_NotTimerLockManager(query) {
    if("world_auto_timerlockmanager" in query) { return query.world_auto_timerlockmanager < 1; } 
    else return true;
}
function _auto_NotTimerLockMechanic(query) {
    if("world_auto_timerlockmechanic" in query) { return query.world_auto_timerlockmechanic < 1; } 
    else return true;
}
function _auto_NotTimerLockNamVet(query) {
    if("world_auto_timerlocknamvet" in query) { return query.world_auto_timerlocknamvet < 1; } 
    else return true;
}
function _auto_NotTimerLockProducer(query) {
    if("world_auto_timerlockproducer" in query) { return query.world_auto_timerlockproducer < 1; } 
    else return true;
}
function _auto_NotTimerLockTeenGirl(query) {
    if("world_auto_timerlockteengirl" in query) { return query.world_auto_timerlockteengirl < 1; } 
    else return true;
}
function _auto_IsTracksOK(query) {
    if("world_auto_tracksok" in query) { return query.world_auto_tracksok == 1; } 
    else return false;
}
function _auto_NotTractorStarted(query) {
    if("world_auto_tractorstarted" in query) { return query.world_auto_tractorstarted < 1; } 
    else return true;
}
function _auto_NotC6M3Bill(query) {
    if("world_auto_c6m3bill" in query) { return query.world_auto_c6m3bill < 1; } 
    else return true;
}
function _auto_SawC6M3Bill(query) {
    if("world_auto_c6m3bill" in query) { return query.world_auto_c6m3bill == 1; } 
    else return false;
}
function _auto_SaidC6M3Bill(query) {
    if("world_auto_c6m3bill" in query) { return query.world_auto_c6m3bill == 2; } 
    else return false;
}
function _auto_C6M3BridgeDown(query) {
    if("world_auto_c6m3bridgedown" in query) { return query.world_auto_c6m3bridgedown == 1; } 
    else return false;
}
function _auto_GamblerSawC6M3Bill(query) {
    if("world_auto_gamblerc6m3bill" in query) { return query.world_auto_gamblerc6m3bill == 1; } 
    else return false;
}
function _auto_CoachSawC6M3Bill(query) {
    if("world_auto_coachc6m3bill" in query) { return query.world_auto_coachc6m3bill == 1; } 
    else return false;
}
function _auto_MechanicSawC6M3Bill(query) {
    if("world_auto_mechanicc6m3bill" in query) { return query.world_auto_mechanicc6m3bill == 1; } 
    else return false;
}
// requires_dlc3.txt ===================================================================================================================
function _auto_NotC7M1SafeRoomConvo(query) {
    if("world_auto_c7m1saferoomconvo" in query) { return query.world_auto_c7m1saferoomconvo < 1; } 
    else return true;
}
function _auto_NotC7M2CrowsFlySpeak(query) {
    if("world_auto_c7m2crowsflyspeak" in query) { return query.world_auto_c7m2crowsflyspeak < 1; } 
    else return true;
}
function _auto_NotC7M2SafeRoomConvo(query) {
    if("world_auto_c7m2saferoomconvo" in query) { return query.world_auto_c7m2saferoomconvo < 1; } 
    else return true;
}
function _auto_NotC7M3FinalPress(query) {
    if("world_auto_c7m3finalpress" in query) { return query.world_auto_c7m3finalpress < 1; } 
    else return true;
}
function _auto_IsC7M3FinalPress(query) {
    if("world_auto_c7m3finalpress" in query) { return query.world_auto_c7m3finalpress == 1; } 
    else return false;
}
function _auto_NotC7M3PressingBiker(query) {
    if("world_auto_c7m3pressingbiker" in query) { return query.world_auto_c7m3pressingbiker < 1; } 
    else return true;
}
function _auto_NotC7M3PressingManager(query) {
    if("world_auto_c7m3pressingmanager" in query) { return query.world_auto_c7m3pressingmanager < 1; } 
    else return true;
}
function _auto_NotC7M3PressingNamVet(query) {
    if("world_auto_c7m3pressingnamvet" in query) { return query.world_auto_c7m3pressingnamvet < 1; } 
    else return true;
}
function _auto_NotC7M3PressingTeenGirl(query) {
    if("world_auto_c7m3pressingteengirl" in query) { return query.world_auto_c7m3pressingteengirl < 1; } 
    else return true;
}
function _auto_NotC7M3SafeRoomConvo(query) {
    if("world_auto_c7m3saferoomconvo" in query) { return query.world_auto_c7m3saferoomconvo < 1; } 
    else return true;
}
function _auto_NotC7M3ToBridgeBiker(query) {
    if("world_auto_c7m3tobridgebiker" in query) { return query.world_auto_c7m3tobridgebiker < 1; } 
    else return true;
}
function _auto_NotC7M3ToBridgeManager(query) {
    if("world_auto_c7m3tobridgemanager" in query) { return query.world_auto_c7m3tobridgemanager < 1; } 
    else return true;
}
function _auto_NotC7M3ToBridgeNamVet(query) {
    if("world_auto_c7m3tobridgenamvet" in query) { return query.world_auto_c7m3tobridgenamvet < 1; } 
    else return true;
}
function _auto_NotC7M3ToBridgeTeenGirl(query) {
    if("world_auto_c7m3tobridgeteengirl" in query) { return query.world_auto_c7m3tobridgeteengirl < 1; } 
    else return true;
}
function _auto_NotsaidC7M1OpenTankDoor(query) {
    if("world_auto_saidc7m1opentankdoor" in query) { return query.world_auto_saidc7m1opentankdoor < 1; } 
    else return true;
}
function _auto_NotsaidC7M1OpenTankDoorLong(query) {
    if("world_auto_saidc7m1opentankdoorlong" in query) { return query.world_auto_saidc7m1opentankdoorlong < 1; } 
    else return true;
}
function _auto_NotSaidC7M3BridgeBreaks(query) {
    if("world_auto_saidc7m3bridgebreaks" in query) { return query.world_auto_saidc7m3bridgebreaks < 1; } 
    else return true;
}
function _auto_NotSaidC7M3BridgeLeap(query) {
    if("world_auto_saidc7m3bridgeleap" in query) { return query.world_auto_saidc7m3bridgeleap < 1; } 
    else return true;
}
function _auto_IsSaidC7M3BridgeLeap(query) {
    if("world_auto_saidc7m3bridgeleap" in query) { return query.world_auto_saidc7m3bridgeleap == "=1"; } 
    else return false;
}
function _auto_NotSaidC7M3WaveOverGen1(query) {
    if("world_auto_saidc7m3waveovergen1" in query) { return query.world_auto_saidc7m3waveovergen1 < 1; } 
    else return true;
}
function _auto_NotSaidC7M3WaveOverGen2(query) {
    if("world_auto_saidc7m3waveovergen2" in query) { return query.world_auto_saidc7m3waveovergen2 < 1; } 
    else return true;
}
function _auto_IssaidSailBoatIntro(query) {
    if("world_auto_saidsailboatintro" in query) { return query.world_auto_saidsailboatintro == 1; } 
    else return false;
}
// response_rules.txt ===================================================================================================================
function ConceptTalkAnswer(query) {
    if("concept" in query) { return query.concept == "tlk_answer"; } 
    else return false;
}
function ConceptTalkQuestion(query) {
    if("concept" in query) { return query.concept == "tlk_question"; } 
    else return false;
}
function ConceptTalkIdle(query) {
    if("concept" in query) { return query.concept == "tlk_idle"; } 
    else return false;
}
function ConceptTalkStare(query) {
    if("concept" in query) { return query.concept == "tlk_stare"; } 
    else return false;
}
function ConceptTalkUse(query) {
    if("concept" in query) { return query.concept == "tlk_use"; } 
    else return false;
}
function ConceptTalkUnuse(query) {
    if("concept" in query) { return query.concept == "tlk_unuse"; } 
    else return false;
}
function ConceptTalkStop(query) {
    if("concept" in query) { return query.concept == "tlk_stop"; } 
    else return false;
}
function ConceptTalkNoShoot(query) {
    if("concept" in query) { return query.concept == "tlk_noshoot"; } 
    else return false;
}
function ConceptTalkHello(query) {
    if("concept" in query) { return query.concept == "tlk_hello"; } 
    else return false;
}
function ConceptTalkPHello(query) {
    if("concept" in query) { return query.concept == "tlk_phello"; } 
    else return false;
}
function ConceptTalkPIdle(query) {
    if("concept" in query) { return query.concept == "tlk_pidle"; } 
    else return false;
}
function ConceptTalkPQuestion(query) {
    if("concept" in query) { return query.concept == "tlk_pquestion"; } 
    else return false;
}
function ConceptTalkPlayerHurt1(query) {
    if("concept" in query) { return query.concept == "tlk_plhurt1"; } 
    else return false;
}
function ConceptTalkPlayerHurt2(query) {
    if("concept" in query) { return query.concept == "tlk_plhurt2"; } 
    else return false;
}
function ConceptTalkPlayerHurt3(query) {
    if("concept" in query) { return query.concept == "tlk_plhurt3"; } 
    else return false;
}
function ConceptTalkSmell(query) {
    if("concept" in query) { return query.concept == "tlk_smell"; } 
    else return false;
}
function ConceptTalkWound(query) {
    if("concept" in query) { return query.concept == "tlk_wound"; } 
    else return false;
}
function ConceptTalkMortal(query) {
    if("concept" in query) { return query.concept == "tlk_mortal"; } 
    else return false;
}
function ConceptTalkDanger(query) {
    if("concept" in query) { return query.concept == "tlk_danger"; } 
    else return false;
}
function ConceptTalkResume(query) {
    if("concept" in query) { return query.concept == "tlk_resume"; } 
    else return false;
}
function ConceptTalkHeal(query) {
    if("concept" in query) { return query.concept == "tlk_heal"; } 
    else return false;
}
function ConceptTalkTourGuideStayPut(query) {
    if("concept" in query) { return query.concept == "tlk_tgstayput"; } 
    else return false;
}
function ConceptTalkTourGuideFind(query) {
    if("concept" in query) { return query.concept == "tlk_tgfind"; } 
    else return false;
}
function ConceptTalkTourGuideSeek(query) {
    if("concept" in query) { return query.concept == "tlk_tgseek"; } 
    else return false;
}
function ConceptTalkTourGuideLostYou(query) {
    if("concept" in query) { return query.concept == "tlk_tglostyou"; } 
    else return false;
}
function ConceptTalkTourGuideCatchUp(query) {
    if("concept" in query) { return query.concept == "tlk_tgcatchup"; } 
    else return false;
}
function ConceptTalkTourGuideEndTour(query) {
    if("concept" in query) { return query.concept == "tlk_tgendtour"; } 
    else return false;
}
function ConceptTalkSelected(query) {
    if("concept" in query) { return query.concept == "tlk_selected"; } 
    else return false;
}
function ConceptTalkCommanded(query) {
    if("concept" in query) { return query.concept == "tlk_commanded"; } 
    else return false;
}
function ConceptTalkCommandFailed(query) {
    if("concept" in query) { return query.concept == "tlk_command_failed"; } 
    else return false;
}
function ConceptTalkBetrayed(query) {
    if("concept" in query) { return query.concept == "tlk_betrayed"; } 
    else return false;
}
function ConceptTalkGiveAmmo(query) {
    if("concept" in query) { return query.concept == "tlk_ammo"; } 
    else return false;
}
function ConceptTalkAllyKilled(query) {
    if("concept" in query) { return query.concept == "tlk_ally_killed"; } 
    else return false;
}
function ConceptSeeCombine(query) {
    if("concept" in query) { return query.concept == "tlk_see_combine"; } 
    else return false;
}
function ConceptEnemyDead(query) {
    if("concept" in query) { return query.concept == "tlk_enemy_dead"; } 
    else return false;
}
function ConceptTalkWatchOut(query) {
    if("concept" in query) { return query.concept == "tlk_watchout"; } 
    else return false;
}
function ConceptTalkAttacking(query) {
    if("concept" in query) { return query.concept == "tlk_attacking"; } 
    else return false;
}
function ConceptTalkDeath(query) {
    if("concept" in query) { return query.concept == "tlk_death"; } 
    else return false;
}
function ConceptTalkHelpMe(query) {
    if("concept" in query) { return query.concept == "tlk_help_me"; } 
    else return false;
}
function ConceptLeadStart(query) {
    if("concept" in query) { return query.concept == "tlk_lead_start"; } 
    else return false;
}
function ConceptLeadWaitOver(query) {
    if("concept" in query) { return query.concept == "tlk_lead_waitover"; } 
    else return false;
}
function ConceptLeadAttractPlayer(query) {
    if("concept" in query) { return query.concept == "tlk_lead_attractplayer"; } 
    else return false;
}
function ConceptLeadCatchup(query) {
    if("concept" in query) { return query.concept == "tlk_lead_catchup"; } 
    else return false;
}
function ConceptLeadComingBack(query) {
    if("concept" in query) { return query.concept == "tlk_lead_comingback"; } 
    else return false;
}
function ConceptLeadRetrieve(query) {
    if("concept" in query) { return query.concept == "tlk_lead_retrieve"; } 
    else return false;
}
function ConceptLeadArrival(query) {
    if("concept" in query) { return query.concept == "tlk_lead_arrival"; } 
    else return false;
}
function ConceptLeadSuccess(query) {
    if("concept" in query) { return query.concept == "tlk_lead_success"; } 
    else return false;
}
function ConceptLeadMissingWeapon(query) {
    if("concept" in query) { return query.concept == "tlk_lead_missing_weapon"; } 
    else return false;
}
function ConceptCRPlayerShotGunship(query) {
    if("concept" in query) { return query.concept == "tlk_citizen_response_shot_gunship"; } 
    else return false;
}
function ConceptCRPlayerKilledGunship(query) {
    if("concept" in query) { return query.concept == "tlk_citizen_response_killed_gunship"; } 
    else return false;
}
function ConceptCRVitalNPCDied(query) {
    if("concept" in query) { return query.concept == "tlk_vitalnpc_died"; } 
    else return false;
}
function PlayerAlive(query) {
    if("playerhealth" in query) { return query.playerhealth > 0; } 
    else return false;
}
function PlayerDead(query) {
    if("playerhealth" in query) { return query.playerhealth <= 0; } 
    else return true;
}
function PlayerWounded(query) {
    if("playerhealthfrac" in query) { return query.playerhealthfrac > "0,<=.5"; } 
    else return false;
}
function NPCAlive(query) {
    if("health" in query) { return query.health > 0; } 
    else return false;
}
function NPCAlert(query) {
    if("npcstate" in query) { return query.npcstate >= "[npcstate::idle],<[npcstate::alert]"; } 
    else return false;
}
function NPCIdle(query) {
    if("npcstate" in query) { return query.npcstate == "[npcstate::idle]"; } 
    else return false;
}
// response_rules_dlc2.txt ===================================================================================================================
function ConceptTalkAnswer(query) {
    if("concept" in query) { return query.concept == "tlk_answer"; } 
    else return false;
}
function ConceptTalkQuestion(query) {
    if("concept" in query) { return query.concept == "tlk_question"; } 
    else return false;
}
function ConceptTalkIdle(query) {
    if("concept" in query) { return query.concept == "tlk_idle"; } 
    else return false;
}
function ConceptTalkStare(query) {
    if("concept" in query) { return query.concept == "tlk_stare"; } 
    else return false;
}
function ConceptTalkUse(query) {
    if("concept" in query) { return query.concept == "tlk_use"; } 
    else return false;
}
function ConceptTalkUnuse(query) {
    if("concept" in query) { return query.concept == "tlk_unuse"; } 
    else return false;
}
function ConceptTalkStop(query) {
    if("concept" in query) { return query.concept == "tlk_stop"; } 
    else return false;
}
function ConceptTalkNoShoot(query) {
    if("concept" in query) { return query.concept == "tlk_noshoot"; } 
    else return false;
}
function ConceptTalkHello(query) {
    if("concept" in query) { return query.concept == "tlk_hello"; } 
    else return false;
}
function ConceptTalkPHello(query) {
    if("concept" in query) { return query.concept == "tlk_phello"; } 
    else return false;
}
function ConceptTalkPIdle(query) {
    if("concept" in query) { return query.concept == "tlk_pidle"; } 
    else return false;
}
function ConceptTalkPQuestion(query) {
    if("concept" in query) { return query.concept == "tlk_pquestion"; } 
    else return false;
}
function ConceptTalkPlayerHurt1(query) {
    if("concept" in query) { return query.concept == "tlk_plhurt1"; } 
    else return false;
}
function ConceptTalkPlayerHurt2(query) {
    if("concept" in query) { return query.concept == "tlk_plhurt2"; } 
    else return false;
}
function ConceptTalkPlayerHurt3(query) {
    if("concept" in query) { return query.concept == "tlk_plhurt3"; } 
    else return false;
}
function ConceptTalkSmell(query) {
    if("concept" in query) { return query.concept == "tlk_smell"; } 
    else return false;
}
function ConceptTalkWound(query) {
    if("concept" in query) { return query.concept == "tlk_wound"; } 
    else return false;
}
function ConceptTalkMortal(query) {
    if("concept" in query) { return query.concept == "tlk_mortal"; } 
    else return false;
}
function ConceptTalkDanger(query) {
    if("concept" in query) { return query.concept == "tlk_danger"; } 
    else return false;
}
function ConceptTalkResume(query) {
    if("concept" in query) { return query.concept == "tlk_resume"; } 
    else return false;
}
function ConceptTalkHeal(query) {
    if("concept" in query) { return query.concept == "tlk_heal"; } 
    else return false;
}
function ConceptTalkTourGuideStayPut(query) {
    if("concept" in query) { return query.concept == "tlk_tgstayput"; } 
    else return false;
}
function ConceptTalkTourGuideFind(query) {
    if("concept" in query) { return query.concept == "tlk_tgfind"; } 
    else return false;
}
function ConceptTalkTourGuideSeek(query) {
    if("concept" in query) { return query.concept == "tlk_tgseek"; } 
    else return false;
}
function ConceptTalkTourGuideLostYou(query) {
    if("concept" in query) { return query.concept == "tlk_tglostyou"; } 
    else return false;
}
function ConceptTalkTourGuideCatchUp(query) {
    if("concept" in query) { return query.concept == "tlk_tgcatchup"; } 
    else return false;
}
function ConceptTalkTourGuideEndTour(query) {
    if("concept" in query) { return query.concept == "tlk_tgendtour"; } 
    else return false;
}
function ConceptTalkSelected(query) {
    if("concept" in query) { return query.concept == "tlk_selected"; } 
    else return false;
}
function ConceptTalkCommanded(query) {
    if("concept" in query) { return query.concept == "tlk_commanded"; } 
    else return false;
}
function ConceptTalkCommandFailed(query) {
    if("concept" in query) { return query.concept == "tlk_command_failed"; } 
    else return false;
}
function ConceptTalkBetrayed(query) {
    if("concept" in query) { return query.concept == "tlk_betrayed"; } 
    else return false;
}
function ConceptTalkGiveAmmo(query) {
    if("concept" in query) { return query.concept == "tlk_ammo"; } 
    else return false;
}
function ConceptTalkAllyKilled(query) {
    if("concept" in query) { return query.concept == "tlk_ally_killed"; } 
    else return false;
}
function ConceptSeeCombine(query) {
    if("concept" in query) { return query.concept == "tlk_see_combine"; } 
    else return false;
}
function ConceptEnemyDead(query) {
    if("concept" in query) { return query.concept == "tlk_enemy_dead"; } 
    else return false;
}
function ConceptTalkWatchOut(query) {
    if("concept" in query) { return query.concept == "tlk_watchout"; } 
    else return false;
}
function ConceptTalkAttacking(query) {
    if("concept" in query) { return query.concept == "tlk_attacking"; } 
    else return false;
}
function ConceptTalkDeath(query) {
    if("concept" in query) { return query.concept == "tlk_death"; } 
    else return false;
}
function ConceptTalkHelpMe(query) {
    if("concept" in query) { return query.concept == "tlk_help_me"; } 
    else return false;
}
function ConceptLeadStart(query) {
    if("concept" in query) { return query.concept == "tlk_lead_start"; } 
    else return false;
}
function ConceptLeadWaitOver(query) {
    if("concept" in query) { return query.concept == "tlk_lead_waitover"; } 
    else return false;
}
function ConceptLeadAttractPlayer(query) {
    if("concept" in query) { return query.concept == "tlk_lead_attractplayer"; } 
    else return false;
}
function ConceptLeadCatchup(query) {
    if("concept" in query) { return query.concept == "tlk_lead_catchup"; } 
    else return false;
}
function ConceptLeadComingBack(query) {
    if("concept" in query) { return query.concept == "tlk_lead_comingback"; } 
    else return false;
}
function ConceptLeadRetrieve(query) {
    if("concept" in query) { return query.concept == "tlk_lead_retrieve"; } 
    else return false;
}
function ConceptLeadArrival(query) {
    if("concept" in query) { return query.concept == "tlk_lead_arrival"; } 
    else return false;
}
function ConceptLeadSuccess(query) {
    if("concept" in query) { return query.concept == "tlk_lead_success"; } 
    else return false;
}
function ConceptLeadMissingWeapon(query) {
    if("concept" in query) { return query.concept == "tlk_lead_missing_weapon"; } 
    else return false;
}
function ConceptCRPlayerShotGunship(query) {
    if("concept" in query) { return query.concept == "tlk_citizen_response_shot_gunship"; } 
    else return false;
}
function ConceptCRPlayerKilledGunship(query) {
    if("concept" in query) { return query.concept == "tlk_citizen_response_killed_gunship"; } 
    else return false;
}
function ConceptCRVitalNPCDied(query) {
    if("concept" in query) { return query.concept == "tlk_vitalnpc_died"; } 
    else return false;
}
function PlayerAlive(query) {
    if("playerhealth" in query) { return query.playerhealth > 0; } 
    else return false;
}
function PlayerDead(query) {
    if("playerhealth" in query) { return query.playerhealth <= 0; } 
    else return true;
}
function PlayerWounded(query) {
    if("playerhealthfrac" in query) { return query.playerhealthfrac > "0,<=.5"; } 
    else return false;
}
function NPCAlive(query) {
    if("health" in query) { return query.health > 0; } 
    else return false;
}
function NPCAlert(query) {
    if("npcstate" in query) { return query.npcstate >= "[npcstate::idle],<[npcstate::alert]"; } 
    else return false;
}
function NPCIdle(query) {
    if("npcstate" in query) { return query.npcstate == "[npcstate::idle]"; } 
    else return false;
}
// teengirl_dlc2.txt ===================================================================================================================
function TeenGirlNotPickedUpItem(query) {
    if("teengirlpickedupitem" in query) { return query.teengirlpickedupitem != 1; } 
    else return true;
}
function IsTeenGirlFriendlyFire(query) {
    if("worldteengirlfriendlyfire" in query) { return query.worldteengirlfriendlyfire == 1; } 
    else return false;
}
function IsNotTeenGirlFriendlyFire(query) {
    if("worldteengirlfriendlyfire" in query) { return query.worldteengirlfriendlyfire != 1; } 
    else return true;
}
function IsNotAskedForCoverTeenGirl(query) {
    if("teengirlaskforcover" in query) { return query.teengirlaskforcover != 1; } 
    else return true;
}
function IsNotSaidBattleStationsTeenGirl(query) {
    if("worldsaidbattlestationsteengirl" in query) { return query.worldsaidbattlestationsteengirl != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedTeenGirl(query) {
    if("saidbeenjockeyedteengirl" in query) { return query.saidbeenjockeyedteengirl != 1; } 
    else return true;
}
// teengirl_dlc3.txt ===================================================================================================================
function TeenGirlNotSaidGrabbingCan(query) {
    if("saidgrabbingcan" in query) { return query.saidgrabbingcan != 1; } 
    else return true;
}
// terror_player.txt ===================================================================================================================
function Conceptcommentjockey(query) {
    if("concept" in query) { return query.concept == "commentjockey"; } 
    else return false;
}
function Conceptcommentjockey2(query) {
    if("concept" in query) { return query.concept == "commentjockey2"; } 
    else return false;
}
function IsNotSaidCommentJockey(query) {
    if("worldsaidcommentjockey" in query) { return query.worldsaidcommentjockey != 1; } 
    else return true;
}
function IsNotSaidPlayerLostCall(query) {
    if("worldsaidplayerlostcall" in query) { return query.worldsaidplayerlostcall != 1; } 
    else return true;
}
function ConceptTalkIdle(query) {
    if("concept" in query) { return query.concept == "tlk_idle"; } 
    else return false;
}
function IsSpawn(query) {
    if("concept" in query) { return query.concept == "spawn"; } 
    else return false;
}
function InPain(query) {
    if("concept" in query) { return query.concept == "pain"; } 
    else return false;
}
function IsAttacking(query) {
    if("concept" in query) { return query.concept == "attack"; } 
    else return false;
}
function IsFaultConcept(query) {
    if("concept" in query) { return query.concept == "fault"; } 
    else return false;
}
function IsAwardConcept(query) {
    if("concept" in query) { return query.concept == "award"; } 
    else return false;
}
function ConceptRemark(query) {
    if("concept" in query) { return query.concept == "tlk_remark"; } 
    else return false;
}
function ConceptEatPills(query) {
    if("concept" in query) { return query.concept == "eatpills"; } 
    else return false;
}
function ConceptDeath2Left(query) {
    if("concept" in query) { return query.concept == "death2left"; } 
    else return false;
}
function ConceptCallForRescue(query) {
    if("concept" in query) { return query.concept == "callforrescue"; } 
    else return false;
}
function HasNotCalledForRescue(query) {
    if("worldcalledforrescue" in query) { return query.worldcalledforrescue != 1; } 
    else return true;
}
function IsNotSurvival(query) {
    if("gamemode" in query) { return query.gamemode != "survival"; } 
    else return true;
}
function IsNotScavenge(query) {
    if("gamemode" in query) { return query.gamemode != "scavenge"; } 
    else return true;
}
function AutoIsNotSurvival(query) {
    if("gamemode" in query) { return query.gamemode != "survival"; } 
    else return true;
}
function AutoIsNotScavenge(query) {
    if("gamemode" in query) { return query.gamemode != "scavenge"; } 
    else return true;
}
function IsSurvival(query) {
    if("gamemode" in query) { return query.gamemode == "survival"; } 
    else return false;
}
function IsScavenge(query) {
    if("gamemode" in query) { return query.gamemode == "scavenge"; } 
    else return false;
}
function IsCoop(query) {
    if("gamemode" in query) { return query.gamemode == "coop"; } 
    else return false;
}
function IsRealism(query) {
    if("gamemode" in query) { return query.gamemode == "realism"; } 
    else return false;
}
function IsACoopMode(query) { return ( IsCoop(query) || IsRealism(query) ); }
function ConceptPlayerPourStarted(query) {
    if("concept" in query) { return query.concept == "playerpourstarted"; } 
    else return false;
}
function ConceptPlayerEquippedScavengeItem(query) {
    if("concept" in query) { return query.concept == "playerequippedscavengeitem"; } 
    else return false;
}
function ConceptPlayerPourFinished(query) {
    if("concept" in query) { return query.concept == "playerpourfinished"; } 
    else return false;
}
function Score20MoreSC(query) {
    if("towin" in query) { return query.towin == 20; } 
    else return false;
}
function Score10MoreSC(query) {
    if("towin" in query) { return query.towin == 10; } 
    else return false;
}
function Score5MoreSC(query) {
    if("towin" in query) { return query.towin == 5; } 
    else return false;
}
function Score3MoreSC(query) {
    if("towin" in query) { return query.towin == 3; } 
    else return false;
}
function Score2MoreSC(query) {
    if("towin" in query) { return query.towin == 2; } 
    else return false;
}
function Score1MoreSC(query) {
    if("towin" in query) { return query.towin == 1; } 
    else return false;
}
function ScoreDoneSC(query) {
    if("towin" in query) { return query.towin == 0; } 
    else return false;
}
function Joined1(query) {
    if("worldjoinlast" in query) { return query.worldjoinlast >= 1; } 
    else return false;
}
function Joined2(query) {
    if("worldjoinlast" in query) { return query.worldjoinlast >= 2; } 
    else return false;
}
function Joined3(query) {
    if("worldjoinlast" in query) { return query.worldjoinlast >= 3; } 
    else return false;
}
function Joined4(query) {
    if("worldjoinlast" in query) { return query.worldjoinlast >= 4; } 
    else return false;
}
function JoinedLess3(query) {
    if("worldjoinlast" in query) { return query.worldjoinlast < 3; } 
    else return true;
}
function JoinedLess5(query) {
    if("worldjoinlast" in query) { return query.worldjoinlast < 5; } 
    else return true;
}
function ConceptBashWithItem(query) {
    if("concept" in query) { return query.concept == "bashwithitem"; } 
    else return false;
}
function ConceptAlertGiveItemStopFirstAidA(query) {
    if("concept" in query) { return query.concept == "alertgiveitemstopfirstaida"; } 
    else return false;
}
function ConceptAlertGiveItemStop(query) {
    if("concept" in query) { return query.concept == "alertgiveitemstop"; } 
    else return false;
}
function IsNotSaidAlertGiveItemStop(query) {
    if("saidalertgiveitemstop" in query) { return query.saidalertgiveitemstop != 1; } 
    else return true;
}
function IsNotSaidAlertGiveItemStopFirstAid(query) {
    if("saidalertgiveitemstopfirstaid" in query) { return query.saidalertgiveitemstopfirstaid != 1; } 
    else return true;
}
function ConceptSurvivorLeavingCheckpoint(query) {
    if("concept" in query) { return query.concept == "survivorleavingcheckpoint"; } 
    else return false;
}
function ConceptBotMovingToBattleStation(query) {
    if("concept" in query) { return query.concept == "survivorbotmovingtobattlestation"; } 
    else return false;
}
function IsNotSaidBattleStations(query) {
    if("worldsaidbattlestations" in query) { return query.worldsaidbattlestations != 1; } 
    else return true;
}
function ConceptSurvivorBotMovingToReviveFriend(query) {
    if("concept" in query) { return query.concept == "survivorbotmovingtorevivefriend"; } 
    else return false;
}
function HasWhitakerCola(query) {
    if("activeweapon" in query) { return query.activeweapon == "colabottles"; } 
    else return false;
}
function HasDefibrillator(query) {
    if("activeweapon" in query) { return query.activeweapon == "defibrillator"; } 
    else return false;
}
function HasNotDefibrillator(query) {
    if("activeweapon" in query) { return query.activeweapon != "defibrillator"; } 
    else return true;
}
function ConceptPlayerUsingDefibrillator(query) {
    if("concept" in query) { return query.concept == "playerusingdefibrillator"; } 
    else return false;
}
function ConceptRevivedByDefibrillator(query) {
    if("concept" in query) { return query.concept == "revivedbydefibrillator"; } 
    else return false;
}
function ConceptRevivedByDefibrillatorDelayed(query) {
    if("concept" in query) { return query.concept == "revivedbydefibrillatordelayed"; } 
    else return false;
}
function ConceptUseAdrenaline(query) {
    if("concept" in query) { return query.concept == "useadrenaline"; } 
    else return false;
}
function ConceptReviveFriendDown(query) {
    if("concept" in query) { return query.concept == "revivefrienddown"; } 
    else return false;
}
function ConceptHealedByFriend(query) {
    if("concept" in query) { return query.concept == "healedbyfriend"; } 
    else return false;
}
function ConceptReviveFriendDownFinal(query) {
    if("concept" in query) { return query.concept == "revivefrienddownfinal"; } 
    else return false;
}
function ConceptYouWelcome(query) {
    if("concept" in query) { return query.concept == "youwelcome"; } 
    else return false;
}
function ConceptReviveMeInterrupted(query) {
    if("concept" in query) { return query.concept == "revivemeinterrupted"; } 
    else return false;
}
function IsNotReviveInterrupt(query) {
    if("worldreviveinterrupt" in query) { return query.worldreviveinterrupt < 1; } 
    else return true;
}
function SecondsSinceCombat2(query) {
    if("timesincecombat" in query) { return query.timesincecombat > 2.0; } 
    else return false;
}
function SecondsSinceCombatLess2(query) {
    if("timesincecombat" in query) { return query.timesincecombat <= 2.0; } 
    else return true;
}
function SecondsSinceCombat3(query) {
    if("timesincecombat" in query) { return query.timesincecombat > 3.0; } 
    else return false;
}
function IsNotTalk(query) {
    if("worldtalk" in query) { return query.worldtalk == 1; } 
    else return false;
}
function IsTalk(query) {
    if("worldtalk" in query) { return query.worldtalk != 1; } 
    else return true;
}
function IsNotTalkCoach(query) {
    if("talkcoach" in query) { return query.talkcoach == 1; } 
    else return false;
}
function IsTalkCoach(query) {
    if("talkcoach" in query) { return query.talkcoach != 1; } 
    else return true;
}
function IsNotTalkGambler(query) {
    if("talkgambler" in query) { return query.talkgambler == 1; } 
    else return false;
}
function IsTalkGambler(query) {
    if("talkgambler" in query) { return query.talkgambler != 1; } 
    else return true;
}
function IsNotTalkProducer(query) {
    if("talkproducer" in query) { return query.talkproducer == 1; } 
    else return false;
}
function IsTalkProducer(query) {
    if("talkproducer" in query) { return query.talkproducer != 1; } 
    else return true;
}
function IsNotTalkMechanic(query) {
    if("talkmechanic" in query) { return query.talkmechanic == 1; } 
    else return false;
}
function IsTalkMechanic(query) {
    if("talkmechanic" in query) { return query.talkmechanic != 1; } 
    else return true;
}
function IsNotTalkUnknown(query) {
    if("talkunknown" in query) { return query.talkunknown == 1; } 
    else return false;
}
function IsTalkUnknown(query) {
    if("talkunknown" in query) { return query.talkunknown != 1; } 
    else return true;
}
function IsWorldTalkCoach(query) {
    if("worldtalkcoach" in query) { return query.worldtalkcoach != 1; } 
    else return true;
}
function IsWorldTalkMechanic(query) {
    if("worldtalkmechanic" in query) { return query.worldtalkmechanic != 1; } 
    else return true;
}
function IsWorldTalkProducer(query) {
    if("worldtalkproducer" in query) { return query.worldtalkproducer != 1; } 
    else return true;
}
function IsWorldTalkGambler(query) {
    if("worldtalkgambler" in query) { return query.worldtalkgambler != 1; } 
    else return true;
}
function IsWorldTalkUnknown(query) {
    if("worldtalkunknown" in query) { return query.worldtalkunknown != 1; } 
    else return true;
}
function IsProducerNotAlive(query) {
    if("isproduceralive" in query) { return query.isproduceralive != 1; } 
    else return true;
}
function IsMechanicNotAlive(query) {
    if("ismechanicalive" in query) { return query.ismechanicalive != 1; } 
    else return true;
}
function IsCoachNotAlive(query) {
    if("iscoachalive" in query) { return query.iscoachalive != 1; } 
    else return true;
}
function IsGamblerNotAlive(query) {
    if("isgambleralive" in query) { return query.isgambleralive != 1; } 
    else return true;
}
function IsProducerAlive(query) {
    if("isproduceralive" in query) { return query.isproduceralive == 1; } 
    else return false;
}
function IsMechanicAlive(query) {
    if("ismechanicalive" in query) { return query.ismechanicalive == 1; } 
    else return false;
}
function IsCoachAlive(query) {
    if("iscoachalive" in query) { return query.iscoachalive == 1; } 
    else return false;
}
function IsGamblerAlive(query) {
    if("isgambleralive" in query) { return query.isgambleralive == 1; } 
    else return false;
}
function NotCalledForHelpRecently(query) {
    if("calledforhelp" in query) { return query.calledforhelp < 1; } 
    else return true;
}
function ConceptFriendNeedsHelp(query) {
    if("concept" in query) { return query.concept == "friendneedshelp"; } 
    else return false;
}
function ConceptVampiresBeata(query) {
    if("concept" in query) { return query.concept == "vampiresbeata"; } 
    else return false;
}
function ConceptVampiresBeatb(query) {
    if("concept" in query) { return query.concept == "vampiresbeatb"; } 
    else return false;
}
function IsSmallTownBarricadeMechanic(query) {
    if("worldsmalltownbarricademechanic" in query) { return query.worldsmalltownbarricademechanic != 1; } 
    else return true;
}
function IsSmallTownBarricadeGambler(query) {
    if("worldsmalltownbarricadegambler" in query) { return query.worldsmalltownbarricadegambler != 1; } 
    else return true;
}
function IsSmallTownBarricadeProducer(query) {
    if("worldsmalltownbarricadeproducer" in query) { return query.worldsmalltownbarricadeproducer != 1; } 
    else return true;
}
function IsNotAirport02CraneStarted(query) {
    if("worldairport02cranestarted" in query) { return query.worldairport02cranestarted != 1; } 
    else return true;
}
function IsAirport02CraneStarted(query) {
    if("worldairport02cranestarted" in query) { return query.worldairport02cranestarted != 1; } 
    else return true;
}
function ConceptHealThanks(query) {
    if("concept" in query) { return query.concept == "healthanks"; } 
    else return false;
}
function Isfarm01_camping(query) {
    if("subject" in query) { return query.subject == "farm01_camping"; } 
    else return false;
}
function Isairport01_burning(query) {
    if("subject" in query) { return query.subject == "airport01_burning"; } 
    else return false;
}
function Isairport01_path01(query) {
    if("subject" in query) { return query.subject == "airport01_path01"; } 
    else return false;
}
function ConceptIntroAirport(query) {
    if("concept" in query) { return query.concept == "introairport"; } 
    else return false;
}
function ConceptIntroAirport01zb(query) {
    if("concept" in query) { return query.concept == "introairport01zb"; } 
    else return false;
}
function ConceptIntroAirport01fb(query) {
    if("concept" in query) { return query.concept == "introairport01fb"; } 
    else return false;
}
function ConceptIntroAirport01bb(query) {
    if("concept" in query) { return query.concept == "introairport01bb"; } 
    else return false;
}
function ConceptIntroAirport01bc(query) {
    if("concept" in query) { return query.concept == "introairport01bc"; } 
    else return false;
}
function ConceptAirport02CraneStarted(query) {
    if("concept" in query) { return query.concept == "airport02cranestarted"; } 
    else return false;
}
function Conceptairport02_creshendoCrane(query) {
    if("concept" in query) { return query.concept == "airport02_creshendocrane"; } 
    else return false;
}
function Conceptairport02_creshendo03(query) {
    if("concept" in query) { return query.concept == "airport02_creshendo03"; } 
    else return false;
}
function ConceptAirport02DumpsterDown(query) {
    if("concept" in query) { return query.concept == "airport02dumpsterdown"; } 
    else return false;
}
function ConceptintroHospital(query) {
    if("concept" in query) { return query.concept == "introhospital"; } 
    else return false;
}
function ConceptIntroHospital02(query) {
    if("concept" in query) { return query.concept == "introhospital02"; } 
    else return false;
}
function ConceptIntroHospital03(query) {
    if("concept" in query) { return query.concept == "introhospital03"; } 
    else return false;
}
function Concepthospital03_path08a2(query) {
    if("concept" in query) { return query.concept == "hospital03_path08a2"; } 
    else return false;
}
function Concepthospital04_path01a(query) {
    if("concept" in query) { return query.concept == "hospital04_path01a"; } 
    else return false;
}
function Concepthospital04_path02a(query) {
    if("concept" in query) { return query.concept == "hospital04_path02a"; } 
    else return false;
}
function Concepthospital05_path01a(query) {
    if("concept" in query) { return query.concept == "hospital05_path01a"; } 
    else return false;
}
function Concepthospital05_path01b(query) {
    if("concept" in query) { return query.concept == "hospital05_path01b"; } 
    else return false;
}
function Concepthospital04_path04a(query) {
    if("concept" in query) { return query.concept == "hospital04_path04a"; } 
    else return false;
}
function ConceptIntroFarm(query) {
    if("concept" in query) { return query.concept == "introfarm"; } 
    else return false;
}
function ConceptIntroFarm2(query) {
    if("concept" in query) { return query.concept == "introfarm2"; } 
    else return false;
}
function ConceptIntroFarm3(query) {
    if("concept" in query) { return query.concept == "introfarm3"; } 
    else return false;
}
function ConceptIntroFarm4(query) {
    if("concept" in query) { return query.concept == "introfarm4"; } 
    else return false;
}
function ConceptIntroSmallTown(query) {
    if("concept" in query) { return query.concept == "introsmalltown"; } 
    else return false;
}
function ConceptIntroSmallTown2(query) {
    if("concept" in query) { return query.concept == "introsmalltown2"; } 
    else return false;
}
function ConceptIntroSmallTown3(query) {
    if("concept" in query) { return query.concept == "introsmalltown3"; } 
    else return false;
}
function ConceptIntroSmallTownEasterEgg(query) {
    if("concept" in query) { return query.concept == "introsmalltowneasteregg"; } 
    else return false;
}
function ConceptIntroSmallTownEasterEgg2(query) {
    if("concept" in query) { return query.concept == "introsmalltowneasteregg2"; } 
    else return false;
}
function ConceptIntroSmallTownEasterEgg3(query) {
    if("concept" in query) { return query.concept == "introsmalltowneasteregg3"; } 
    else return false;
}
function InCombat(query) {
    if("incombat" in query) { return query.incombat == 1; } 
    else return false;
}
function NotInCombat(query) {
    if("incombat" in query) { return query.incombat == 0; } 
    else return false;
}
function InIntenseCombat(query) {
    if("incombatmusic" in query) { return query.incombatmusic == 1; } 
    else return false;
}
function NotInIntenseCombat(query) {
    if("incombatmusic" in query) { return query.incombatmusic == 0; } 
    else return false;
}
function TimeSinceGroupInCombatNot0(query) {
    if("timesincegroupincombat" in query) { return query.timesincegroupincombat > 0; } 
    else return false;
}
function TimeSinceGroupInCombat02(query) {
    if("timesincegroupincombat" in query) { return query.timesincegroupincombat > 2; } 
    else return false;
}
function TimeSinceGroupInCombat04(query) {
    if("timesincegroupincombat" in query) { return query.timesincegroupincombat > 4; } 
    else return false;
}
function TimeSinceGroupInCombat05(query) {
    if("timesincegroupincombat" in query) { return query.timesincegroupincombat > 05; } 
    else return false;
}
function TimeSinceGroupInCombat10(query) {
    if("timesincegroupincombat" in query) { return query.timesincegroupincombat > 10; } 
    else return false;
}
function TimeSinceGroupInCombat20(query) {
    if("timesincegroupincombat" in query) { return query.timesincegroupincombat > 20; } 
    else return false;
}
function TimeSinceGroupInCombat30(query) {
    if("timesincegroupincombat" in query) { return query.timesincegroupincombat > 30; } 
    else return false;
}
function RecentGroupInCombat2(query) {
    if("timesincegroupincombat" in query) { return query.timesincegroupincombat < 2; } 
    else return true;
}
function RecentGroupInCombat10(query) {
    if("timesincegroupincombat" in query) { return query.timesincegroupincombat < 10; } 
    else return true;
}
function IntensityZero(query) {
    if("intensity" in query) { return query.intensity == 0; } 
    else return false;
}
function IntensityUnder25(query) {
    if("intensity" in query) { return query.intensity <= 0.25; } 
    else return true;
}
function IntensityUnder50(query) {
    if("intensity" in query) { return query.intensity <= 0.50; } 
    else return true;
}
function IntensityUnder75(query) {
    if("intensity" in query) { return query.intensity <= 0.75; } 
    else return true;
}
function IntensityOver25(query) {
    if("intensity" in query) { return query.intensity >= 0.25; } 
    else return false;
}
function IntensityOver50(query) {
    if("intensity" in query) { return query.intensity >= 0.50; } 
    else return false;
}
function IntensityOver75(query) {
    if("intensity" in query) { return query.intensity >= 0.75; } 
    else return false;
}
function IntensityOver76(query) {
    if("intensity" in query) { return query.intensity >= 0.76; } 
    else return false;
}
function Intensity100(query) {
    if("intensity" in query) { return query.intensity >= 0.99; } 
    else return false;
}
function IntensityHigh(query) {
    if("intensity" in query) { return query.intensity >= 0.60; } 
    else return false;
}
function IsBeingHealed(query) {
    if("beinghealed" in query) { return query.beinghealed == 1; } 
    else return false;
}
function IsNotBeingHealed(query) {
    if("beinghealed" in query) { return query.beinghealed == 0; } 
    else return false;
}
function TargetNearPlayer(query) {
    if("targetdistance" in query) { return query.targetdistance < 240; } 
    else return true;
}
function TargetNotNearPlayer(query) {
    if("targetdistance" in query) { return query.targetdistance >= 240; } 
    else return false;
}
function IsSubjectReallyNear(query) {
    if("distance" in query) { return query.distance < 200; } 
    else return true;
}
function IsSubjectAlmostNear(query) {
    if("distance" in query) { return query.distance < 500; } 
    else return true;
}
function IsSubjectNear(query) {
    if("distance" in query) { return query.distance < 900; } 
    else return true;
}
function IsSubjectDistNear50(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 50; } 
    else return true;
}
function IsSubjectDistNear100(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 100; } 
    else return true;
}
function IsSubjectDistNear150(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 150; } 
    else return true;
}
function IsSubjectDistNear200(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 200; } 
    else return true;
}
function IsSubjectDistNear250(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 250; } 
    else return true;
}
function IsSubjectDistNear300(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 300; } 
    else return true;
}
function IsSubjectDistNear350(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 350; } 
    else return true;
}
function IsSubjectDistNear400(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 400; } 
    else return true;
}
function IsSubjectDistNear500(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 500; } 
    else return true;
}
function IsSubjectDistNear600(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 600; } 
    else return true;
}
function IsSubjectDistNear700(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 700; } 
    else return true;
}
function IsSubjectDistNear800(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 800; } 
    else return true;
}
function IsSubjectDistNear900(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 900; } 
    else return true;
}
function IsSubjectDistNear1000(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 1000; } 
    else return true;
}
function IsSubjectDistNear1500(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject < 1500; } 
    else return true;
}
function IsSubjectDistFar100(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 100; } 
    else return false;
}
function IsSubjectDistFar200(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 200; } 
    else return false;
}
function IsSubjectDistFar300(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 300; } 
    else return false;
}
function IsSubjectDistFar400(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 400; } 
    else return false;
}
function IsSubjectDistFar500(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 500; } 
    else return false;
}
function IsSubjectDistFar600(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 600; } 
    else return false;
}
function IsSubjectDistFar700(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 700; } 
    else return false;
}
function IsSubjectDistFar800(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 800; } 
    else return false;
}
function IsSubjectDistFar900(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 900; } 
    else return false;
}
function IsSubjectDistFar1000(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 1000; } 
    else return false;
}
function IsSubjectNear50(query) {
    if("distance" in query) { return query.distance < 50; } 
    else return true;
}
function IsSubjectNear75(query) {
    if("distance" in query) { return query.distance < 75; } 
    else return true;
}
function IsSubjectNear100(query) {
    if("distance" in query) { return query.distance < 100; } 
    else return true;
}
function IsSubjectNear150(query) {
    if("distance" in query) { return query.distance < 150; } 
    else return true;
}
function IsSubjectNear200(query) {
    if("distance" in query) { return query.distance < 200; } 
    else return true;
}
function IsSubjectNear250(query) {
    if("distance" in query) { return query.distance < 250; } 
    else return true;
}
function IsSubjectNear300(query) {
    if("distance" in query) { return query.distance < 300; } 
    else return true;
}
function IsSubjectNear350(query) {
    if("distance" in query) { return query.distance < 350; } 
    else return true;
}
function IsSubjectNear400(query) {
    if("distance" in query) { return query.distance < 400; } 
    else return true;
}
function IsSubjectNear500(query) {
    if("distance" in query) { return query.distance < 500; } 
    else return true;
}
function IsSubjectNear550(query) {
    if("distance" in query) { return query.distance < 550; } 
    else return true;
}
function IsSubjectNear600(query) {
    if("distance" in query) { return query.distance < 600; } 
    else return true;
}
function IsSubjectNear700(query) {
    if("distance" in query) { return query.distance < 700; } 
    else return true;
}
function IsSubjectNear800(query) {
    if("distance" in query) { return query.distance < 800; } 
    else return true;
}
function IsSubjectNear900(query) {
    if("distance" in query) { return query.distance < 900; } 
    else return true;
}
function IsSubjectNear1000(query) {
    if("distance" in query) { return query.distance < 1000; } 
    else return true;
}
function IsSubjectNear1500(query) {
    if("distance" in query) { return query.distance < 1500; } 
    else return true;
}
function IsSubjectFar100(query) {
    if("distance" in query) { return query.distance > 100; } 
    else return false;
}
function IsSubjectFar200(query) {
    if("distance" in query) { return query.distance > 200; } 
    else return false;
}
function IsSubjectFar300(query) {
    if("distance" in query) { return query.distance > 300; } 
    else return false;
}
function IsSubjectFar400(query) {
    if("distance" in query) { return query.distance > 400; } 
    else return false;
}
function IsSubjectFar500(query) {
    if("distance" in query) { return query.distance > 500; } 
    else return false;
}
function IsSubjectFar600(query) {
    if("distance" in query) { return query.distance > 600; } 
    else return false;
}
function IsSubjectFar700(query) {
    if("distance" in query) { return query.distance > 700; } 
    else return false;
}
function IsSubjectFar800(query) {
    if("distance" in query) { return query.distance > 800; } 
    else return false;
}
function IsSubjectFar900(query) {
    if("distance" in query) { return query.distance > 900; } 
    else return false;
}
function IsSubjectFar1000(query) {
    if("distance" in query) { return query.distance > 1000; } 
    else return false;
}
function IsDistanceSubjectO600(query) {
    if("dist_from_subject" in query) { return query.dist_from_subject > 600; } 
    else return false;
}
function IsClosestSurvivorNear150(query) {
    if("disttoclosestsurvivor" in query) { return query.disttoclosestsurvivor < 150; } 
    else return true;
}
function IsClosestSurvivorNear400(query) {
    if("disttoclosestsurvivor" in query) { return query.disttoclosestsurvivor < 400; } 
    else return true;
}
function IsClosestSurvivorNear500(query) {
    if("disttoclosestsurvivor" in query) { return query.disttoclosestsurvivor < 500; } 
    else return true;
}
function IsClosestSurvivorNear1200(query) {
    if("disttoclosestsurvivor" in query) { return query.disttoclosestsurvivor < 1200; } 
    else return true;
}
function IsClosestSurvivorFar600(query) {
    if("disttoclosestsurvivor" in query) { return query.disttoclosestsurvivor > 600; } 
    else return false;
}
function IsClosestSurvivorFar3000(query) {
    if("disttoclosestsurvivor" in query) { return query.disttoclosestsurvivor > 3000; } 
    else return false;
}
function IsGamblerNear200(query) {
    if("disttogambler" in query) { return query.disttogambler < 200; } 
    else return true;
}
function IsGamblerNear400(query) {
    if("disttogambler" in query) { return query.disttogambler < 400; } 
    else return true;
}
function IsGamblerNear800(query) {
    if("disttogambler" in query) { return query.disttogambler < 800; } 
    else return true;
}
function IsGamblerFar400(query) {
    if("disttogambler" in query) { return query.disttogambler >= 400; } 
    else return false;
}
function IsCoachNear125(query) {
    if("disttocoach" in query) { return query.disttocoach < 125; } 
    else return true;
}
function IsCoachNear200(query) {
    if("disttocoach" in query) { return query.disttocoach < 200; } 
    else return true;
}
function IsCoachNear400(query) {
    if("disttocoach" in query) { return query.disttocoach < 400; } 
    else return true;
}
function IsCoachNear800(query) {
    if("disttocoach" in query) { return query.disttocoach < 800; } 
    else return true;
}
function IsCoachFar400(query) {
    if("disttocoach" in query) { return query.disttocoach >= 400; } 
    else return false;
}
function IsProducerNear200(query) {
    if("disttoproducer" in query) { return query.disttoproducer < 200; } 
    else return true;
}
function IsProducerNear400(query) {
    if("disttoproducer" in query) { return query.disttoproducer < 400; } 
    else return true;
}
function IsProducerNear800(query) {
    if("disttoproducer" in query) { return query.disttoproducer < 800; } 
    else return true;
}
function IsProducerFar400(query) {
    if("disttoproducer" in query) { return query.disttoproducer >= 400; } 
    else return false;
}
function IsMechanicNear200(query) {
    if("disttomechanic" in query) { return query.disttomechanic < 200; } 
    else return true;
}
function IsMechanicNear300(query) {
    if("disttomechanic" in query) { return query.disttomechanic < 300; } 
    else return true;
}
function IsMechanicNear400(query) {
    if("disttomechanic" in query) { return query.disttomechanic < 400; } 
    else return true;
}
function IsMechanicNear400Weight0(query) {
    if("disttomechanic" in query) { return query.disttomechanic < 400; } 
    else return true;
}
function IsMechanicNear800(query) {
    if("disttomechanic" in query) { return query.disttomechanic < 800; } 
    else return true;
}
function IsMechanicFar400(query) {
    if("disttomechanic" in query) { return query.disttomechanic >= 400; } 
    else return false;
}
function IsCoachFar1000(query) {
    if("disttocoach" in query) { return query.disttocoach > 600; } 
    else return false;
}
function IsProducerFar1000(query) {
    if("disttoproducer" in query) { return query.disttoproducer > 600; } 
    else return false;
}
function IsMechanicFar1000(query) {
    if("disttomechanic" in query) { return query.disttomechanic > 600; } 
    else return false;
}
function IsGamblerFar1000(query) {
    if("disttogambler" in query) { return query.disttogambler > 600; } 
    else return false;
}
function SurvivorDiedReallyClose(query) {
    if("distancetoactor" in query) { return query.distancetoactor < 400; } 
    else return true;
}
function SurvivorDiedNearEnough(query) {
    if("distancetoactor" in query) { return query.distancetoactor < 600; } 
    else return true;
}
function ConceptKilledZombie(query) {
    if("concept" in query) { return query.concept == "killedzombie"; } 
    else return false;
}
function ConceptBeingHealed(query) {
    if("concept" in query) { return query.concept == "beinghealed"; } 
    else return false;
}
function ConceptPlayerHealingOther(query) {
    if("concept" in query) { return query.concept == "playerhealingother"; } 
    else return false;
}
function ConceptSurvivorDied(query) {
    if("concept" in query) { return query.concept == "survivordied"; } 
    else return false;
}
function ConceptPlayerSeeDeadPlayer(query) {
    if("concept" in query) { return query.concept == "playerseedeadplayer"; } 
    else return false;
}
function ConceptSurvivorIncapacitated(query) {
    if("concept" in query) { return query.concept == "survivorincapacitated"; } 
    else return false;
}
function ConceptSurvivorGrabbedLedge(query) {
    if("concept" in query) { return query.concept == "survivorgrabbedledge"; } 
    else return false;
}
function ConceptSurvivorCoughing(query) {
    if("concept" in query) { return query.concept == "survivorcoughing"; } 
    else return false;
}
function ConceptThrewGrenade(query) {
    if("concept" in query) { return query.concept == "threwgrenade"; } 
    else return false;
}
function ConceptGrenadeCareful(query) {
    if("concept" in query) { return query.concept == "grenadecareful"; } 
    else return false;
}
function IsGrenadePipeBomb(query) {
    if("grenadetype" in query) { return query.grenadetype == "pipebomb"; } 
    else return false;
}
function IsGrenadeMolotov(query) {
    if("grenadetype" in query) { return query.grenadetype == "molotov"; } 
    else return false;
}
function IsGrenadeVomitJar(query) {
    if("grenadetype" in query) { return query.grenadetype == "vomitjar"; } 
    else return false;
}
function ConceptPanicEvent(query) {
    if("concept" in query) { return query.concept == "panicevent"; } 
    else return false;
}
function ConceptSafeSpotAheadResponse(query) {
    if("concept" in query) { return query.concept == "safespotaheadresponse"; } 
    else return false;
}
function ConceptAynRandResponse(query) {
    if("concept" in query) { return query.concept == "aynrandresponse"; } 
    else return false;
}
function IsSmartLookAuto(query) {
    if("smartlooktype" in query) { return query.smartlooktype == "auto"; } 
    else return false;
}
function IsNotSmartLookAuto(query) {
    if("smartlooktype" in query) { return query.smartlooktype != "auto"; } 
    else return true;
}
function IsSubjectNone(query) {
    if("subject" in query) { return query.subject == "none"; } 
    else return false;
}
function IsInCheckpoint(query) {
    if("incheckpoint" in query) { return query.incheckpoint == 1; } 
    else return false;
}
function IsNotInCheckpoint(query) {
    if("incheckpoint" in query) { return query.incheckpoint != 1; } 
    else return true;
}
function IsInSafeSpot(query) {
    if("insafespot" in query) { return query.insafespot == 1; } 
    else return false;
}
function IsInBattlefield(query) {
    if("inbattlefield" in query) { return query.inbattlefield == 1; } 
    else return false;
}
function IsNotInBattlefield(query) {
    if("inbattlefield" in query) { return query.inbattlefield == 0; } 
    else return false;
}
function IsInRescueVehicle(query) {
    if("inrescuevehicle" in query) { return query.inrescuevehicle == 1; } 
    else return false;
}
function IsNotInRescueVehicle(query) {
    if("inrescuevehicle" in query) { return query.inrescuevehicle != 1; } 
    else return true;
}
function IsAloneInSafeSpot(query) {
    if("numberinsafespot" in query) { return query.numberinsafespot == 1; } 
    else return false;
}
function NotAloneInSafeSpot(query) {
    if("numberinsafespot" in query) { return query.numberinsafespot > 1; } 
    else return false;
}
function IsAllInSafeSpot(query) {
    if("numberoutsidesafespot" in query) { return query.numberoutsidesafespot == 0; } 
    else return false;
}
function IsNotInSafeSpot(query) {
    if("insafespot" in query) { return query.insafespot != 1; } 
    else return true;
}
function IsInStartArea(query) {
    if("instartarea" in query) { return query.instartarea == 1; } 
    else return false;
}
function IsNotInStartArea(query) {
    if("instartarea" in query) { return query.instartarea != 1; } 
    else return true;
}
function SomeoneOutsideSafeSpot(query) {
    if("numberoutsidesafespot" in query) { return query.numberoutsidesafespot > 0; } 
    else return false;
}
function ConceptShotMannequin(query) {
    if("concept" in query) { return query.concept == "shotmannequin"; } 
    else return false;
}
function ConceptPlayerScenarioJoin(query) {
    if("concept" in query) { return query.concept == "scenariojoin"; } 
    else return false;
}
function ConceptPlayerScenarioJoinLast(query) {
    if("concept" in query) { return query.concept == "scenariojoinlast"; } 
    else return false;
}
function ConceptEmphaticArriveRun(query) {
    if("concept" in query) { return query.concept == "emphaticarriverun"; } 
    else return false;
}
function ConceptEmphaticArriveRunFarm(query) {
    if("concept" in query) { return query.concept == "emphaticarriverunfarm"; } 
    else return false;
}
function IsNotSaidAskForHealth(query) {
    if("worldsaidaskforhealth" in query) { return query.worldsaidaskforhealth != 1; } 
    else return true;
}
function IsSaidSpotAmmo(query) {
    if("worldsaidspotammo" in query) { return query.worldsaidspotammo == 1; } 
    else return false;
}
function IsNotSaidSpotAmmo(query) {
    if("worldsaidspotammo" in query) { return query.worldsaidspotammo != 1; } 
    else return true;
}
function IsSaidSpotGrenade(query) {
    if("worldsaidspotgrenade" in query) { return query.worldsaidspotgrenade == 1; } 
    else return false;
}
function IsNotSaidSpotGrenade(query) {
    if("worldsaidspotgrenade" in query) { return query.worldsaidspotgrenade != 1; } 
    else return true;
}
function IsSaidSpotHealth(query) {
    if("worldsaidspothealth" in query) { return query.worldsaidspothealth == 1; } 
    else return false;
}
function IsNotSaidSpotHealth(query) {
    if("worldsaidspothealth" in query) { return query.worldsaidspothealth != 1; } 
    else return true;
}
function IsSaidSpotMolotov(query) {
    if("worldsaidspotmolotov" in query) { return query.worldsaidspotmolotov == 1; } 
    else return false;
}
function IsNotSaidSpotMolotov(query) {
    if("worldsaidspotmolotov" in query) { return query.worldsaidspotmolotov != 1; } 
    else return true;
}
function IsSaidSpotPills(query) {
    if("worldsaidspotpills" in query) { return query.worldsaidspotpills == 1; } 
    else return false;
}
function IsNotSaidSpotPills(query) {
    if("worldsaidspotpills" in query) { return query.worldsaidspotpills != 1; } 
    else return true;
}
function IsSaidSpotAdrenaline(query) {
    if("worldsaidspotadrenaline" in query) { return query.worldsaidspotadrenaline == 1; } 
    else return false;
}
function IsNotSaidSpotAdrenaline(query) {
    if("worldsaidspotadrenaline" in query) { return query.worldsaidspotadrenaline != 1; } 
    else return true;
}
function IsSaidSpotVomitJar(query) {
    if("worldsaidspotvomitjar" in query) { return query.worldsaidspotvomitjar == 1; } 
    else return false;
}
function IsNotSaidSpotVomitJar(query) {
    if("worldsaidspotvomitjar" in query) { return query.worldsaidspotvomitjar != 1; } 
    else return true;
}
function IsSaidSpotgrenade_launcher(query) {
    if("worldsaidspotgrenade_launcher" in query) { return query.worldsaidspotgrenade_launcher == 1; } 
    else return false;
}
function IsNotSaidSpotgrenade_launcher(query) {
    if("worldsaidspotgrenade_launcher" in query) { return query.worldsaidspotgrenade_launcher != 1; } 
    else return true;
}
function IsSaidSpotDefibrillator(query) {
    if("worldsaidspotdefibrillator" in query) { return query.worldsaidspotdefibrillator == 1; } 
    else return false;
}
function IsNotSaidDefibrillator(query) {
    if("worldsaidspotdefibrillator" in query) { return query.worldsaidspotdefibrillator != 1; } 
    else return true;
}
function IsSaidSpotWeapons(query) {
    if("worldsaidspotweapons" in query) { return query.worldsaidspotweapons == 1; } 
    else return false;
}
function IsNotSaidSpotWeapons(query) {
    if("worldsaidspotweapons" in query) { return query.worldsaidspotweapons != 1; } 
    else return true;
}
function IsNotSaidFirstWeapon(query) {
    if("worldsaidfirstweapon" in query) { return query.worldsaidfirstweapon != 1; } 
    else return true;
}
function IsNotSaidSpot(query) {
    if("worldsaidspot" in query) { return query.worldsaidspot != 1; } 
    else return true;
}
function IsFaultFriendlyFire(query) {
    if("faultname" in query) { return query.faultname == "friendlyfire"; } 
    else return false;
}
function IsFaultBoomerBlunder(query) {
    if("faultname" in query) { return query.faultname == "boomerblunder"; } 
    else return false;
}
function IsFaultWitchHarassment(query) {
    if("faultname" in query) { return query.faultname == "witchharassment"; } 
    else return false;
}
function IsFaultReckless(query) {
    if("faultname" in query) { return query.faultname == "reckless"; } 
    else return false;
}
function IsFaultL4D(query) {
    if("faultname" in query) { return query.faultname == "left4dead"; } 
    else return false;
}
function ConceptRevivedByFriend(query) {
    if("concept" in query) { return query.concept == "revivedbyfriend"; } 
    else return false;
}
function IsAwardReviveFriend(query) {
    if("awardname" in query) { return query.awardname == "revivefriend"; } 
    else return false;
}
function IsSharingSubject(query) {
    if("awardname" in query) { return query.awardname == "sharing"; } 
    else return false;
}
function IsAwardMedic(query) {
    if("awardname" in query) { return query.awardname == "medic"; } 
    else return false;
}
function IsRescuer(query) {
    if("awardname" in query) { return query.awardname == "rescuer"; } 
    else return false;
}
function IsTankDominated(query) {
    if("awardname" in query) { return query.awardname == "hulkshutout"; } 
    else return false;
}
function IsCarAlarm(query) {
    if("panictype" in query) { return query.panictype == "caralarm"; } 
    else return false;
}
function IsIncappedStarted(query) {
    if("healthfrac" in query) { return query.healthfrac < 2.99; } 
    else return true;
}
function IsIncappedStarted2(query) {
    if("healthfrac" in query) { return query.healthfrac > 1.99; } 
    else return false;
}
function IsIncappedBleeding1(query) {
    if("healthfrac" in query) { return query.healthfrac < 1.99; } 
    else return true;
}
function IsIncappedBleeding2(query) {
    if("healthfrac" in query) { return query.healthfrac > 0.99; } 
    else return false;
}
function IsIncappedLethargic(query) {
    if("healthfrac" in query) { return query.healthfrac < 0.99; } 
    else return true;
}
function IsFullHealth(query) {
    if("healthfrac" in query) { return query.healthfrac > 0.99; } 
    else return false;
}
function IsNotFullHealth(query) {
    if("healthfrac" in query) { return query.healthfrac < 0.99; } 
    else return true;
}
function IsHealthy(query) {
    if("healthfrac" in query) { return query.healthfrac > 0.80; } 
    else return false;
}
function IsRocking(query) {
    if("healthfrac" in query) { return query.healthfrac >= 0.40; } 
    else return false;
}
function IsNotHealthy(query) {
    if("healthfrac" in query) { return query.healthfrac < 0.40; } 
    else return true;
}
function IsNotHealthySlow(query) {
    if("healthfrac" in query) { return query.healthfrac < 0.30; } 
    else return true;
}
function IsNotHealthyHalf(query) {
    if("healthfrac" in query) { return query.healthfrac < 0.51; } 
    else return true;
}
function IsHealthyHalf(query) {
    if("healthfrac" in query) { return query.healthfrac > 0.50; } 
    else return false;
}
function IsReallyNotHealthy(query) {
    if("healthfrac" in query) { return query.healthfrac < 0.10; } 
    else return true;
}
function YesHasFirstAidKit(query) {
    if("hasfirstaidkit" in query) { return query.hasfirstaidkit == 1; } 
    else return false;
}
function NoHasFirstAidKit(query) {
    if("hasfirstaidkit" in query) { return query.hasfirstaidkit != 1; } 
    else return true;
}
function YesHasPainPills(query) {
    if("haspainpills" in query) { return query.haspainpills == 1; } 
    else return false;
}
function NoHasPainPills(query) {
    if("haspainpills" in query) { return query.haspainpills != 1; } 
    else return true;
}
function YesHasGrenade(query) {
    if("hasgrenade" in query) { return query.hasgrenade == 1; } 
    else return false;
}
function NoHasGrenade(query) {
    if("hasgrenade" in query) { return query.hasgrenade != 1; } 
    else return true;
}
function YesHasMolotov(query) {
    if("hasmolotov" in query) { return query.hasmolotov == 1; } 
    else return false;
}
function NoHasMolotov(query) {
    if("hasmolotov" in query) { return query.hasmolotov != 1; } 
    else return true;
}
function IsRunning(query) {
    if("movementspeed" in query) { return query.movementspeed >= 200; } 
    else return false;
}
function ConceptPlayerSuggestHealth(query) {
    if("concept" in query) { return query.concept == "playersuggesthealth"; } 
    else return false;
}
function IsSpeaking(query) {
    if("speaking" in query) { return query.speaking == 1; } 
    else return false;
}
function IsNotSpeaking(query) {
    if("speaking" in query) { return query.speaking < 1; } 
    else return true;
}
function IsNotSpeakingWeight0(query) {
    if("speaking" in query) { return query.speaking < 1; } 
    else return true;
}
function IsCoughing(query) {
    if("coughing" in query) { return query.coughing == 1; } 
    else return false;
}
function IsNotCoughing(query) {
    if("coughing" in query) { return query.coughing == 0; } 
    else return false;
}
function IsNotComplainBlock(query) {
    if("iscomplain" in query) { return query.iscomplain != 1; } 
    else return true;
}
function IsIncapacitated(query) {
    if("incapacitated" in query) { return query.incapacitated == 1; } 
    else return false;
}
function IsNotIncapacitated(query) {
    if("incapacitated" in query) { return query.incapacitated == 0; } 
    else return false;
}
function IsOnFire(query) {
    if("onfire" in query) { return query.onfire == 1; } 
    else return false;
}
function IsNotOnFire(query) {
    if("onfire" in query) { return query.onfire == 0; } 
    else return false;
}
function IsHangingFromLedge(query) {
    if("hangingfromledge" in query) { return query.hangingfromledge == 1; } 
    else return false;
}
function IsNotHangingFromLedge(query) {
    if("hangingfromledge" in query) { return query.hangingfromledge == 0; } 
    else return false;
}
function IsPounceVictim(query) {
    if("pouncevictim" in query) { return query.pouncevictim == 1; } 
    else return false;
}
function IsNotPounceVictim(query) {
    if("pouncevictim" in query) { return query.pouncevictim == 0; } 
    else return false;
}
function IsHangingFromTongue(query) {
    if("hangingfromtongue" in query) { return query.hangingfromtongue == 1; } 
    else return false;
}
function IsNotHangingFromTongue(query) {
    if("hangingfromtongue" in query) { return query.hangingfromtongue == 0; } 
    else return false;
}
function IsNotBeingJockeyed(query) {
    if("beingjockeyed" in query) { return query.beingjockeyed == 0; } 
    else return false;
}
function IsBeingJockeyed(query) {
    if("beingjockeyed" in query) { return query.beingjockeyed == 1; } 
    else return false;
}
function ConceptPlayerGroundPoundedByTank(query) {
    if("concept" in query) { return query.concept == "playergroundpoundedbytank"; } 
    else return false;
}
function IsAlone(query) {
    if("numberofteamalive" in query) { return query.numberofteamalive == 1; } 
    else return false;
}
function IsNotAlone(query) {
    if("numberofteamalive" in query) { return query.numberofteamalive > 1; } 
    else return false;
}
function IsWithThree(query) {
    if("numberofteamalive" in query) { return query.numberofteamalive > 2; } 
    else return false;
}
function IsWithTwo(query) {
    if("numberofteamalive" in query) { return query.numberofteamalive == 2; } 
    else return false;
}
function IsNotTwo(query) {
    if("numberofteamalive" in query) { return query.numberofteamalive != 2; } 
    else return true;
}
function IsWithOnlyThree(query) {
    if("numberofteamalive" in query) { return query.numberofteamalive == 3; } 
    else return false;
}
function IsEveryoneNotAlive(query) {
    if("numberofteamalive" in query) { return query.numberofteamalive < 4; } 
    else return true;
}
function IsEveryoneAlive(query) {
    if("numberofteamalive" in query) { return query.numberofteamalive >= 4; } 
    else return false;
}
function IsSomeoneDied(query) {
    if("numberofteamdead" in query) { return query.numberofteamdead >= 1; } 
    else return false;
}
function IsNotSomeoneDied(query) {
    if("numberofteamdead" in query) { return query.numberofteamdead == 0; } 
    else return false;
}
function IsOnThirdStrike(query) {
    if("onthirdstrike" in query) { return query.onthirdstrike == 1; } 
    else return false;
}
function IsNotOnThirdStrike(query) {
    if("onthirdstrike" in query) { return query.onthirdstrike == 0; } 
    else return false;
}
function IsWitchPresent(query) {
    if("zombiepresentwitch" in query) { return query.zombiepresentwitch == 1; } 
    else return false;
}
function IsFriendlyFire(query) {
    if("friendlyfire" in query) { return query.friendlyfire == 1; } 
    else return false;
}
function IsNotFriendlyFire(query) {
    if("friendlyfire" in query) { return query.friendlyfire != 1; } 
    else return true;
}
function IsNotSaidFaultFriendlyFireGeneral(query) {
    if("worldsaidfaultfriendlyfire" in query) { return query.worldsaidfaultfriendlyfire != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireGeneral(query) {
    if("worldsaidfaultfriendlyfire" in query) { return query.worldsaidfaultfriendlyfire == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireCoach(query) {
    if("worldsaidfaultfriendlyfirecoach" in query) { return query.worldsaidfaultfriendlyfirecoach != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireCoach(query) {
    if("worldsaidfaultfriendlyfirecoach" in query) { return query.worldsaidfaultfriendlyfirecoach == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireMechanic(query) {
    if("worldsaidfaultfriendlyfiremechanic" in query) { return query.worldsaidfaultfriendlyfiremechanic != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireMechanic(query) {
    if("worldsaidfaultfriendlyfiremechanic" in query) { return query.worldsaidfaultfriendlyfiremechanic == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireGambler(query) {
    if("worldsaidfaultfriendlyfiregambler" in query) { return query.worldsaidfaultfriendlyfiregambler != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireGambler(query) {
    if("worldsaidfaultfriendlyfiregambler" in query) { return query.worldsaidfaultfriendlyfiregambler == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireProducer(query) {
    if("worldsaidfaultfriendlyfireproducer" in query) { return query.worldsaidfaultfriendlyfireproducer != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireProducer(query) {
    if("worldsaidfaultfriendlyfireproducer" in query) { return query.worldsaidfaultfriendlyfireproducer == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireNamVet(query) {
    if("worldsaidfaultfriendlyfirenamvet" in query) { return query.worldsaidfaultfriendlyfirenamvet != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireNamVet(query) {
    if("worldsaidfaultfriendlyfirenamvet" in query) { return query.worldsaidfaultfriendlyfirenamvet == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireManager(query) {
    if("worldsaidfaultfriendlyfiremanager" in query) { return query.worldsaidfaultfriendlyfiremanager != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireManager(query) {
    if("worldsaidfaultfriendlyfiremanager" in query) { return query.worldsaidfaultfriendlyfiremanager == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireBiker(query) {
    if("worldsaidfaultfriendlyfirebiker" in query) { return query.worldsaidfaultfriendlyfirebiker != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireBiker(query) {
    if("worldsaidfaultfriendlyfirebiker" in query) { return query.worldsaidfaultfriendlyfirebiker == 1; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireTeenGirl(query) {
    if("worldsaidfaultfriendlyfireteengirl" in query) { return query.worldsaidfaultfriendlyfireteengirl != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireTeenGirl(query) {
    if("worldsaidfaultfriendlyfireteengirl" in query) { return query.worldsaidfaultfriendlyfireteengirl == 1; } 
    else return false;
}
function IsShotTeammateCoach(query) {
    if("worldshotteammatecoach" in query) { return query.worldshotteammatecoach == 1; } 
    else return false;
}
function IsNotShotTeammateCoach(query) {
    if("worldshotteammatecoach" in query) { return query.worldshotteammatecoach != 1; } 
    else return true;
}
function IsShotTeammateGambler(query) {
    if("worldshotteammategambler" in query) { return query.worldshotteammategambler == 1; } 
    else return false;
}
function IsNotShotTeammateGambler(query) {
    if("worldshotteammategambler" in query) { return query.worldshotteammategambler != 1; } 
    else return true;
}
function IsShotTeammateMechanic(query) {
    if("worldshotteammatemechanic" in query) { return query.worldshotteammatemechanic == 1; } 
    else return false;
}
function IsNotShotTeammateMechanic(query) {
    if("worldshotteammatemechanic" in query) { return query.worldshotteammatemechanic != 1; } 
    else return true;
}
function IsShotTeammateProducer(query) {
    if("worldshotteammateproducer" in query) { return query.worldshotteammateproducer == 1; } 
    else return false;
}
function IsNotShotTeammateProducer(query) {
    if("worldshotteammateproducer" in query) { return query.worldshotteammateproducer != 1; } 
    else return true;
}
function IsShotTeammateBiker(query) {
    if("worldshotteammatebiker" in query) { return query.worldshotteammatebiker == 1; } 
    else return false;
}
function IsNotShotTeammateBiker(query) {
    if("worldshotteammatebiker" in query) { return query.worldshotteammatebiker != 1; } 
    else return true;
}
function IsShotTeammateManager(query) {
    if("worldshotteammatemanager" in query) { return query.worldshotteammatemanager == 1; } 
    else return false;
}
function IsNotShotTeammateManager(query) {
    if("worldshotteammatemanager" in query) { return query.worldshotteammatemanager != 1; } 
    else return true;
}
function IsShotTeammateNamVet(query) {
    if("worldshotteammatenamvet" in query) { return query.worldshotteammatenamvet == 1; } 
    else return false;
}
function IsNotShotTeammateNamVet(query) {
    if("worldshotteammatenamvet" in query) { return query.worldshotteammatenamvet != 1; } 
    else return true;
}
function IsShotTeammateTeenGirl(query) {
    if("worldshotteammateteengirl" in query) { return query.worldshotteammateteengirl == 1; } 
    else return false;
}
function IsNotShotTeammateTeenGirl(query) {
    if("worldshotteammateteengirl" in query) { return query.worldshotteammateteengirl != 1; } 
    else return true;
}
function ConceptPlayerIncapacitated(query) {
    if("concept" in query) { return query.concept == "playerincapacitated"; } 
    else return false;
}
function ConceptPlayerReviveFriend(query) {
    if("concept" in query) { return query.concept == "playerrevivefriend"; } 
    else return false;
}
function ConceptPlayerReviveFriendCritical(query) {
    if("concept" in query) { return query.concept == "playerrevivefriendcritical"; } 
    else return false;
}
function ConceptPlayerHealing(query) {
    if("concept" in query) { return query.concept == "playerhealing"; } 
    else return false;
}
function IsReviveTalk(query) {
    if("revivetalk" in query) { return query.revivetalk == 1; } 
    else return false;
}
function IsEllisCrybaby(query) {
    if("worldelliscrying" in query) { return query.worldelliscrying == 1; } 
    else return false;
}
function IsNotAskedForCover(query) {
    if("askforcover" in query) { return query.askforcover != 1; } 
    else return true;
}
function ConceptPlayerRevivedThanks(query) {
    if("concept" in query) { return query.concept == "playerrevivedthanks"; } 
    else return false;
}
function ConceptPlayerLedgeHangStart(query) {
    if("concept" in query) { return query.concept == "playerledgehangstart"; } 
    else return false;
}
function ConceptPlayerLedgeHangMiddle(query) {
    if("concept" in query) { return query.concept == "playerledgehangmiddle"; } 
    else return false;
}
function ConceptPlayerLedgeHangEnd(query) {
    if("concept" in query) { return query.concept == "playerledgehangend"; } 
    else return false;
}
function ConceptPlayerLedgeSave(query) {
    if("concept" in query) { return query.concept == "playerledgesave"; } 
    else return false;
}
function ConceptPlayerLedgeSaveCritical(query) {
    if("concept" in query) { return query.concept == "playerledgesavecritical"; } 
    else return false;
}
function Reloading(query) {
    if("concept" in query) { return query.concept == "reloading"; } 
    else return false;
}
function ConceptPlayerSpotWeapon(query) {
    if("concept" in query) { return query.concept == "playerspotweapon"; } 
    else return false;
}
function IsPipeBomb(query) {
    if("weaponname" in query) { return query.weaponname == "pipebomb"; } 
    else return false;
}
function IsMolotov(query) {
    if("weaponname" in query) { return query.weaponname == "molotov"; } 
    else return false;
}
function IsRifle_desert(query) {
    if("weaponname" in query) { return query.weaponname == "rifle_desert"; } 
    else return false;
}
function IsSniper_military(query) {
    if("weaponname" in query) { return query.weaponname == "sniper_military"; } 
    else return false;
}
function IsHuntingRifle(query) {
    if("weaponname" in query) { return query.weaponname == "huntingrifle"; } 
    else return false;
}
function IsSmg_silenced(query) {
    if("weaponname" in query) { return query.weaponname == "smg_silenced"; } 
    else return false;
}
function IsSMG(query) {
    if("weaponname" in query) { return query.weaponname == "smg"; } 
    else return false;
}
function IsShotgun_spas(query) {
    if("weaponname" in query) { return query.weaponname == "shotgun_spas"; } 
    else return false;
}
function IsShotgun_chrome(query) {
    if("weaponname" in query) { return query.weaponname == "shotgun_chrome"; } 
    else return false;
}
function IsSecondPistol(query) {
    if("weaponname" in query) { return query.weaponname == "secondpistol"; } 
    else return false;
}
function IsFirstAidKit(query) {
    if("weaponname" in query) { return query.weaponname == "firstaidkit"; } 
    else return false;
}
function IsPainPills(query) {
    if("weaponname" in query) { return query.weaponname == "painpills"; } 
    else return false;
}
function IsAdrenaline(query) {
    if("weaponname" in query) { return query.weaponname == "adrenaline"; } 
    else return false;
}
function IsVomitJar(query) {
    if("weaponname" in query) { return query.weaponname == "vomitjar"; } 
    else return false;
}
function IsItemTypeRifle(query) {
    if("itemtype" in query) { return query.itemtype == "rifle"; } 
    else return false;
}
function IsIncendiary(query) {
    if("weaponname" in query) { return query.weaponname == "upgradepack_incendiary"; } 
    else return false;
}
function IsKatana(query) {
    if("weaponname" in query) { return query.weaponname == "katana"; } 
    else return false;
}
function Isgrenade_launcher(query) {
    if("weaponname" in query) { return query.weaponname == "grenadelauncher"; } 
    else return false;
}
function IsDefibrillator(query) {
    if("weaponname" in query) { return query.weaponname == "defibrillator"; } 
    else return false;
}
function IsPumpShotgun(query) {
    if("weaponname" in query) { return query.weaponname == "pumpshotgun"; } 
    else return false;
}
function IsAmmo(query) {
    if("weaponname" in query) { return query.weaponname == "ammo"; } 
    else return false;
}
function Isbaseball_bat(query) {
    if("weaponname" in query) { return query.weaponname == "baseball_bat"; } 
    else return false;
}
function Iscricket_bat(query) {
    if("weaponname" in query) { return query.weaponname == "cricket_bat"; } 
    else return false;
}
function IsGuitar(query) {
    if("weaponname" in query) { return query.weaponname == "electric_guitar"; } 
    else return false;
}
function IsMachete(query) {
    if("weaponname" in query) { return query.weaponname == "machete"; } 
    else return false;
}
function IsMagnum(query) {
    if("weaponname" in query) { return query.weaponname == "magnum"; } 
    else return false;
}
function IsChainsaw(query) {
    if("weaponname" in query) { return query.weaponname == "chainsaw"; } 
    else return false;
}
function IsRifle_AK47(query) {
    if("weaponname" in query) { return query.weaponname == "rifle_ak47"; } 
    else return false;
}
function IsRifle(query) {
    if("weaponname" in query) { return query.weaponname == "rifle"; } 
    else return false;
}
function IsAutoShotgun(query) {
    if("weaponname" in query) { return query.weaponname == "autoshotgun"; } 
    else return false;
}
function Iscrowbar(query) {
    if("weaponname" in query) { return query.weaponname == "crowbar"; } 
    else return false;
}
function Istonfa(query) {
    if("weaponname" in query) { return query.weaponname == "tonfa"; } 
    else return false;
}
function IsFireAxe(query) {
    if("weaponname" in query) { return query.weaponname == "fireaxe"; } 
    else return false;
}
function IsFryingPan(query) {
    if("weaponname" in query) { return query.weaponname == "frying_pan"; } 
    else return false;
}
function IsSmg_mp5(query) {
    if("weaponname" in query) { return query.weaponname == "smg_mp5"; } 
    else return false;
}
function IsRifle_sg552(query) {
    if("weaponname" in query) { return query.weaponname == "rifle_sg552"; } 
    else return false;
}
function IsSniper_scout(query) {
    if("weaponname" in query) { return query.weaponname == "sniper_scout"; } 
    else return false;
}
function IsSniper_awp(query) {
    if("weaponname" in query) { return query.weaponname == "sniper_awp"; } 
    else return false;
}
function IsLaserSights(query) {
    if("weaponname" in query) { return query.weaponname == "lasersights"; } 
    else return false;
}
function IsShovel(query) {
    if("weaponname" in query) { return query.weaponname == "shovel"; } 
    else return false;
}
function IsPitchfork(query) {
    if("weaponname" in query) { return query.weaponname == "pitchfork"; } 
    else return false;
}
function IsKnife(query) {
    if("weaponname" in query) { return query.weaponname == "knife"; } 
    else return false;
}
function IsHoldingRifle(query) {
    if("activeweapon" in query) { return query.activeweapon == "rifle"; } 
    else return false;
}
function IsHoldingDesertRifle(query) {
    if("activeweapon" in query) { return query.activeweapon == "rifle_desert"; } 
    else return false;
}
function IsHoldingAK47Rifle(query) {
    if("activeweapon" in query) { return query.activeweapon == "rifle_ak47"; } 
    else return false;
}
function IsHoldingAR(query) { return ( IsHoldingRifle(query) || IsHoldingDesertRifle(query) || IsHoldingAK47Rifle(query) ); }
function IsUsingFirearm(query) {
    if("activeweapon" in query) { return query.activeweapon != "melee"; } 
    else return true;
}
function EquippedMeleeWeapon(query) {
    if("activeweapon" in query) { return query.activeweapon == "melee"; } 
    else return false;
}
function IsHealingItem(query) {
    if("itemtype" in query) { return query.itemtype == "healing"; } 
    else return false;
}
function Hasgrenade_launcher(query) {
    if("activeweapon" in query) { return query.activeweapon == "grenadelauncher"; } 
    else return false;
}
function HasNotGrenadeLauncher(query) {
    if("activeweapon" in query) { return query.activeweapon != "grenadelauncher"; } 
    else return true;
}
function ConceptChainsawUsed(query) {
    if("concept" in query) { return query.concept == "chainsawused"; } 
    else return false;
}
function IsNotSaidChainSawUsed(query) {
    if("worldsaidchainsawused" in query) { return query.worldsaidchainsawused != 1; } 
    else return true;
}
function ConceptPlayerSpotFirstAid(query) {
    if("concept" in query) { return query.concept == "playerspotfirstaid"; } 
    else return false;
}
function ConceptPlayerSpotPills(query) {
    if("concept" in query) { return query.concept == "playerspotpills"; } 
    else return false;
}
function ConceptPlayerSpotGrenade(query) {
    if("concept" in query) { return query.concept == "playerspotgrenade"; } 
    else return false;
}
function ConceptPlayerSpotAmmo(query) {
    if("concept" in query) { return query.concept == "playerspotammo"; } 
    else return false;
}
function ConceptPlayerSpotPistol(query) {
    if("concept" in query) { return query.concept == "playerspotpistol"; } 
    else return false;
}
function ConceptPlayerSpotSMG(query) {
    if("concept" in query) { return query.concept == "playerspotsmg"; } 
    else return false;
}
function ConceptPlayerSpotRifle(query) {
    if("concept" in query) { return query.concept == "playerspotrifle"; } 
    else return false;
}
function ConceptPlayerSpotShotgun(query) {
    if("concept" in query) { return query.concept == "playerspotshotgun"; } 
    else return false;
}
function ConceptPlayerSpotAutoShotgun(query) {
    if("concept" in query) { return query.concept == "playerspotautoshotgun"; } 
    else return false;
}
function ConceptPlayerSpotSniperRifle(query) {
    if("concept" in query) { return query.concept == "playerspotsniperrifle"; } 
    else return false;
}
function ConceptPlayerSpotOtherWeapon(query) {
    if("concept" in query) { return query.concept == "playerspototherweapon"; } 
    else return false;
}
function ConceptPlayerWarnHearZombie(query) {
    if("concept" in query) { return query.concept == "playerwarnhearzombie"; } 
    else return false;
}
function ConceptPlayerWarnTank(query) {
    if("concept" in query) { return query.concept == "playerwarntank"; } 
    else return false;
}
function ConceptPlayerWarnBoomer(query) {
    if("concept" in query) { return query.concept == "playerwarnboomer"; } 
    else return false;
}
function ConceptPlayerWarnCharger(query) {
    if("concept" in query) { return query.concept == "playerwarncharger"; } 
    else return false;
}
function ConceptPlayerWarnWitch(query) {
    if("concept" in query) { return query.concept == "playerwarnwitch"; } 
    else return false;
}
function ConceptPlayerWarnHearWitch(query) {
    if("concept" in query) { return query.concept == "playerwarnhearwitch"; } 
    else return false;
}
function ConceptWitchGettingAngry(query) {
    if("concept" in query) { return query.concept == "witchgettingangry"; } 
    else return false;
}
function ConceptWitchStartAttack(query) {
    if("concept" in query) { return query.concept == "witchstartattack"; } 
    else return false;
}
function ConceptPlayerWarnSpecial(query) {
    if("concept" in query) { return query.concept == "playerwarnspecial"; } 
    else return false;
}
function ConceptPlayerAlsoWarnSpecial(query) {
    if("concept" in query) { return query.concept == "playeralsowarnspecial"; } 
    else return false;
}
function IsSpecialTypeSmoker(query) {
    if("specialtype" in query) { return query.specialtype == "smoker"; } 
    else return false;
}
function IsSpecialTypeBoomer(query) {
    if("specialtype" in query) { return query.specialtype == "boomer"; } 
    else return false;
}
function IsSpecialTypeHunter(query) {
    if("specialtype" in query) { return query.specialtype == "hunter"; } 
    else return false;
}
function IsSpecialTypeTank(query) {
    if("specialtype" in query) { return query.specialtype == "tank"; } 
    else return false;
}
function IsSpecialTypeWitch(query) {
    if("specialtype" in query) { return query.specialtype == "witch"; } 
    else return false;
}
function IsSpecialTypeJockey(query) {
    if("specialtype" in query) { return query.specialtype == "jockey"; } 
    else return false;
}
function IsSpecialTypeCharger(query) {
    if("specialtype" in query) { return query.specialtype == "charger"; } 
    else return false;
}
function IsSpecialTypeSpitter(query) {
    if("specialtype" in query) { return query.specialtype == "spitter"; } 
    else return false;
}
function IsSpecialTypeCeda(query) {
    if("specialtype" in query) { return query.specialtype == "ceda"; } 
    else return false;
}
function IsSpecialTypeMudmen(query) {
    if("specialtype" in query) { return query.specialtype == "crawler"; } 
    else return false;
}
function IsSpecialTypeArmored(query) {
    if("specialtype" in query) { return query.specialtype == "riot_control"; } 
    else return false;
}
function IsSpecialTypeClown(query) {
    if("specialtype" in query) { return query.specialtype == "clown"; } 
    else return false;
}
function IsSpecialTypeRoadcrew(query) {
    if("specialtype" in query) { return query.specialtype == "undistractable"; } 
    else return false;
}
function IsSpecialTypeJimmy(query) {
    if("specialtype" in query) { return query.specialtype == "jimmy"; } 
    else return false;
}
function ConceptPlayerWarnMegaMob(query) {
    if("concept" in query) { return query.concept == "playerwarnmegamob"; } 
    else return false;
}
function ConceptPlayerWarnScout(query) {
    if("concept" in query) { return query.concept == "playerwarnscout"; } 
    else return false;
}
function ConceptPlayerWarnHunter(query) {
    if("concept" in query) { return query.concept == "playerwarnhunter"; } 
    else return false;
}
function ConceptPlayerWarnSmoker(query) {
    if("concept" in query) { return query.concept == "playerwarnsmoker"; } 
    else return false;
}
function ConceptPlayerWarnSpitter(query) {
    if("concept" in query) { return query.concept == "playerwarnspitter"; } 
    else return false;
}
function ConceptPlayerWarnJockey(query) {
    if("concept" in query) { return query.concept == "playerwarnjockey"; } 
    else return false;
}
function ConceptPlayerIncoming(query) {
    if("concept" in query) { return query.concept == "playerincoming"; } 
    else return false;
}
function ConceptPlayerLookHere(query) {
    if("concept" in query) { return query.concept == "playerlookhere"; } 
    else return false;
}
function ConceptPlayerLook(query) {
    if("concept" in query) { return query.concept == "playerlook"; } 
    else return false;
}
function ConceptPlayerReloading(query) {
    if("concept" in query) { return query.concept == "playerreloading"; } 
    else return false;
}
function ConceptPlayerTonguePullStart(query) {
    if("concept" in query) { return query.concept == "playertonguepullstart"; } 
    else return false;
}
function ConceptPlayerTongueResist(query) {
    if("concept" in query) { return query.concept == "playertongueresist"; } 
    else return false;
}
function ConceptPlayerGrabbedByTongue(query) {
    if("concept" in query) { return query.concept == "playergrabbedbytongue"; } 
    else return false;
}
function ConceptPlayerChoke(query) {
    if("concept" in query) { return query.concept == "playerchoke"; } 
    else return false;
}
function ConceptScreamWhilePounced(query) {
    if("concept" in query) { return query.concept == "screamwhilepounced"; } 
    else return false;
}
function ConceptRespondAffirmative(query) {
    if("concept" in query) { return query.concept == "respondaffirmative"; } 
    else return false;
}
function ConceptPlayerTaunt(query) {
    if("concept" in query) { return query.concept == "playertaunt"; } 
    else return false;
}
function ConceptPlayerMoveOn(query) {
    if("concept" in query) { return query.concept == "playermoveon"; } 
    else return false;
}
function ConceptPlayerHurryUp(query) {
    if("concept" in query) { return query.concept == "playerhurryup"; } 
    else return false;
}
function ConceptPlayerCoverMe(query) {
    if("concept" in query) { return query.concept == "playercoverme"; } 
    else return false;
}
function ConceptPlayerKillThatLight(query) {
    if("concept" in query) { return query.concept == "playerkillthatlight"; } 
    else return false;
}
function ConceptPlayerWatchOutBehind(query) {
    if("concept" in query) { return query.concept == "playerwatchoutbehind"; } 
    else return false;
}
function ConceptPlayerFriendlyFire(query) {
    if("concept" in query) { return query.concept == "playerfriendlyfire"; } 
    else return false;
}
function ConceptPlayerStayTogether(query) {
    if("concept" in query) { return query.concept == "playerstaytogether"; } 
    else return false;
}
function ConceptPlayerFollowMe(query) {
    if("concept" in query) { return query.concept == "playerfollowme"; } 
    else return false;
}
function ConceptPlayerLeadOn(query) {
    if("concept" in query) { return query.concept == "playerleadon"; } 
    else return false;
}
function ConceptPlayerHelp(query) {
    if("concept" in query) { return query.concept == "playerhelp"; } 
    else return false;
}
function ConceptPlayerImWithYou(query) {
    if("concept" in query) { return query.concept == "playerimwithyou"; } 
    else return false;
}
function ConceptPlayerSorry(query) {
    if("concept" in query) { return query.concept == "playersorry"; } 
    else return false;
}
function ConceptPlayerNo(query) {
    if("concept" in query) { return query.concept == "playerno"; } 
    else return false;
}
function ConceptPlayerToTheRescue(query) {
    if("concept" in query) { return query.concept == "playertotherescue"; } 
    else return false;
}
function ConceptPlayerAnswerLostCall(query) {
    if("concept" in query) { return query.concept == "playeranswerlostcall"; } 
    else return false;
}
function ConceptPlayerLostCall(query) {
    if("concept" in query) { return query.concept == "playerlostcall"; } 
    else return false;
}
function ConceptPlayerYouAreWelcome(query) {
    if("concept" in query) { return query.concept == "playeryouarewelcome"; } 
    else return false;
}
function ConceptYouAreWelcome(query) {
    if("concept" in query) { return query.concept == "youarewelcome"; } 
    else return false;
}
function ConceptPlayerYes(query) {
    if("concept" in query) { return query.concept == "playeryes"; } 
    else return false;
}
function ConceptPlayerThanks(query) {
    if("concept" in query) { return query.concept == "playerthanks"; } 
    else return false;
}
function ConceptPlayerAskReady(query) {
    if("concept" in query) { return query.concept == "playeraskready"; } 
    else return false;
}
function ConceptPlayerHeardTank(query) {
    if("concept" in query) { return query.concept == "playerheardtank"; } 
    else return false;
}
function ConceptPlayerHeardWitch(query) {
    if("concept" in query) { return query.concept == "playerheardwitch"; } 
    else return false;
}
function ConceptPlayerHeardHunter(query) {
    if("concept" in query) { return query.concept == "playerheardhunter"; } 
    else return false;
}
function ConceptPlayerWarnCareful(query) {
    if("concept" in query) { return query.concept == "playerwarncareful"; } 
    else return false;
}
function ConceptPlayerAreaClear(query) {
    if("concept" in query) { return query.concept == "playerareaclear"; } 
    else return false;
}
function ConceptPlayerAlertGiveItem(query) {
    if("concept" in query) { return query.concept == "playeralertgiveitem"; } 
    else return false;
}
function ConceptPlayerHurrah(query) {
    if("concept" in query) { return query.concept == "playerhurrah"; } 
    else return false;
}
function ConceptPlayerHeardBoomer(query) {
    if("concept" in query) { return query.concept == "playerheardboomer"; } 
    else return false;
}
function ConceptPlayerHeardScreamer(query) {
    if("concept" in query) { return query.concept == "playerheardscreamer"; } 
    else return false;
}
function ConceptPlayerHeardSmoker(query) {
    if("concept" in query) { return query.concept == "playerheardsmoker"; } 
    else return false;
}
function ConceptPlayerHeardSpitter(query) {
    if("concept" in query) { return query.concept == "playerheardspitter"; } 
    else return false;
}
function ConceptPlayerHeardJockey(query) {
    if("concept" in query) { return query.concept == "playerheardjockey"; } 
    else return false;
}
function ConceptPlayerHeardCharger(query) {
    if("concept" in query) { return query.concept == "playerheardcharger"; } 
    else return false;
}
function ConceptSurvivorJockeyed(query) {
    if("concept" in query) { return query.concept == "survivorjockeyed"; } 
    else return false;
}
function IsBotNotAvailable(query) {
    if("botisavailable" in query) { return query.botisavailable == 0; } 
    else return false;
}
function IsBotIsAvailable(query) {
    if("botisavailable" in query) { return query.botisavailable == 1; } 
    else return false;
}
function ConceptSurvivorBotThanksRevive(query) {
    if("concept" in query) { return query.concept == "survivorbotthanksrevive"; } 
    else return false;
}
function ConceptSurvivorBotAwardHurrah(query) {
    if("concept" in query) { return query.concept == "survivorbotawardhurrah"; } 
    else return false;
}
function ConceptSurvivorBotNoteHumanAttentionNeedHelp(query) {
    if("concept" in query) { return query.concept == "survivorbotnotehumanattention.needhelp"; } 
    else return false;
}
function ConceptSurvivorBotNoteHumanAttention(query) {
    if("concept" in query) { return query.concept == "survivorbotnotehumanattention"; } 
    else return false;
}
function ConceptSurvivorBotRescued(query) {
    if("concept" in query) { return query.concept == "survivorbotrescued"; } 
    else return false;
}
function ConceptSurvivorBotWasShoved(query) {
    if("concept" in query) { return query.concept == "survivorbotwasshoved"; } 
    else return false;
}
function ConceptSurvivorBotThanksForGift(query) {
    if("concept" in query) { return query.concept == "survivorbotthanksforgift"; } 
    else return false;
}
function ConceptSurvivorBotWarnIncoming(query) {
    if("concept" in query) { return query.concept == "survivorbotwarnincoming"; } 
    else return false;
}
function ConceptSurvivorBotYesReady(query) {
    if("concept" in query) { return query.concept == "survivorbotyesready"; } 
    else return false;
}
function ConceptSurvivorBotHurrahAlso(query) {
    if("concept" in query) { return query.concept == "survivorbothurrahalso"; } 
    else return false;
}
function ConceptHurrahAlso(query) {
    if("concept" in query) { return query.concept == "hurrahalso"; } 
    else return false;
}
function ConceptSurvivorBotReassureNearby(query) {
    if("concept" in query) { return query.concept == "survivorbotreassurenearby"; } 
    else return false;
}
function ConceptSurvivorBotReassureComing(query) {
    if("concept" in query) { return query.concept == "survivorbotreassurecoming"; } 
    else return false;
}
function ConceptSurvivorBotYouAreWelcome(query) {
    if("concept" in query) { return query.concept == "survivorbotyouarewelcome"; } 
    else return false;
}
function ConceptSurvivorBotYesFlashlightOff(query) {
    if("concept" in query) { return query.concept == "survivorbotyesflashlightoff"; } 
    else return false;
}
function ConceptSurvivorBotHurrahManyKills(query) {
    if("concept" in query) { return query.concept == "survivorbothurrahmanykills"; } 
    else return false;
}
function ConceptSurvivorBotHelpOverwhelmed(query) {
    if("concept" in query) { return query.concept == "survivorbothelpoverwhelmed"; } 
    else return false;
}
function ConceptSurvivorBotReunitedWithOrphanedFriend(query) {
    if("concept" in query) { return query.concept == "survivorbotreunitedwithorphanedfriend"; } 
    else return false;
}
function ConceptPlayerBackUp(query) {
    if("concept" in query) { return query.concept == "playerbackup"; } 
    else return false;
}
function ConceptPlayerEmphaticGo(query) {
    if("concept" in query) { return query.concept == "playeremphaticgo"; } 
    else return false;
}
function ConceptPlayerLookOut(query) {
    if("concept" in query) { return query.concept == "playerlookout"; } 
    else return false;
}
function ConceptPlayerGoingToDie(query) {
    if("concept" in query) { return query.concept == "playergoingtodie"; } 
    else return false;
}
function ConceptPlayerWaitHere(query) {
    if("concept" in query) { return query.concept == "playerwaithere"; } 
    else return false;
}
function ConceptPlayerThisWay(query) {
    if("concept" in query) { return query.concept == "playerthisway"; } 
    else return false;
}
function ConceptPlayerLockTheDoor(query) {
    if("concept" in query) { return query.concept == "playerlockthedoor"; } 
    else return false;
}
function ConceptPlayerExertionMinor(query) {
    if("concept" in query) { return query.concept == "playerexertionminor"; } 
    else return false;
}
function ConceptPlayerDeath(query) {
    if("concept" in query) { return query.concept == "playerdeath"; } 
    else return false;
}
function ConceptPlayerVomitInFace(query) {
    if("concept" in query) { return query.concept == "playervomitinface"; } 
    else return false;
}
function ConceptPlayerVomitExpired(query) {
    if("concept" in query) { return query.concept == "playervomitexpired"; } 
    else return false;
}
function ConceptPlayerItemForYou(query) {
    if("concept" in query) { return query.concept == "playeritemforyou"; } 
    else return false;
}
function ConceptPlayerNearCheckpoint(query) {
    if("concept" in query) { return query.concept == "playernearcheckpoint"; } 
    else return false;
}
function ConceptPlayerNearFinale(query) {
    if("concept" in query) { return query.concept == "playernearfinale"; } 
    else return false;
}
function ConceptFinaleTriggered(query) {
    if("concept" in query) { return query.concept == "finaletriggered"; } 
    else return false;
}
function ConceptSurvivorWasPounced(query) {
    if("concept" in query) { return query.concept == "survivorwaspounced"; } 
    else return false;
}
function ConceptPlayerLaugh(query) {
    if("concept" in query) { return query.concept == "playerlaugh"; } 
    else return false;
}
function ConceptPlayerYellRun(query) {
    if("concept" in query) { return query.concept == "playeryellrun"; } 
    else return false;
}
function ConceptGooedBySpitter(query) {
    if("concept" in query) { return query.concept == "gooedbyspitter"; } 
    else return false;
}
function ConceptWarnSpitterIncoming(query) {
    if("concept" in query) { return query.concept == "warnspitterincoming"; } 
    else return false;
}
function Conceptchargerpound(query) {
    if("concept" in query) { return query.concept == "chargerpound"; } 
    else return false;
}
function ConceptFinalVehicleSpotted(query) {
    if("concept" in query) { return query.concept == "finalvehiclespotted"; } 
    else return false;
}
function ConceptFinalVehicleArrived(query) {
    if("concept" in query) { return query.concept == "finalvehiclearrived"; } 
    else return false;
}
function ConceptPlayerOutsideCheckpoint(query) {
    if("concept" in query) { return query.concept == "playeroutsidecheckpoint"; } 
    else return false;
}
function ConceptPlayerLockTheDoorCheckpoint(query) {
    if("concept" in query) { return query.concept == "playerlockthedoorcheckpoint"; } 
    else return false;
}
function ConceptPlayerGetInsideCheckPoint(query) {
    if("concept" in query) { return query.concept == "playergetinsidecheckpoint"; } 
    else return false;
}
function ConceptSurvivorLeavingInitialCheckpoint(query) {
    if("concept" in query) { return query.concept == "survivorleavinginitialcheckpoint"; } 
    else return false;
}
function ConceptPlayerTransition(query) {
    if("concept" in query) { return query.concept == "playertransition"; } 
    else return false;
}
function ConceptPlayerGetToTheRescueVehicle(query) {
    if("concept" in query) { return query.concept == "playergettotherescuevehicle"; } 
    else return false;
}
function ConceptGetToVehicle(query) {
    if("concept" in query) { return query.concept == "playergettorescuevehicle"; } 
    else return false;
}
function ConceptPlayerPickup(query) {
    if("concept" in query) { return query.concept == "playerpickup"; } 
    else return false;
}
function ConceptPlayerPickupFirstSMG2(query) {
    if("concept" in query) { return query.concept == "playerpickupfirstsmg2"; } 
    else return false;
}
function IsPickedUpAmmo(query) {
    if("itempickedup" in query) { return query.itempickedup == "ammo"; } 
    else return false;
}
function IsPickedUpSMG(query) {
    if("itempickedup" in query) { return query.itempickedup == "smg"; } 
    else return false;
}
function IsPickedUpSmg_silenced(query) {
    if("itempickedup" in query) { return query.itempickedup == "smg_silenced"; } 
    else return false;
}
function IsPickedUpPumpShotgun(query) {
    if("itempickedup" in query) { return query.itempickedup == "pumpshotgun"; } 
    else return false;
}
function IsPickedUpAutoShotgun(query) {
    if("itempickedup" in query) { return query.itempickedup == "autoshotgun"; } 
    else return false;
}
function IsPickedUpRifle(query) {
    if("itempickedup" in query) { return query.itempickedup == "rifle"; } 
    else return false;
}
function IsPickedUpHuntingRifle(query) {
    if("itempickedup" in query) { return query.itempickedup == "huntingrifle"; } 
    else return false;
}
function IsPickedUpMolotov(query) {
    if("itempickedup" in query) { return query.itempickedup == "molotov"; } 
    else return false;
}
function IsPickedUpPipeBomb(query) {
    if("itempickedup" in query) { return query.itempickedup == "pipebomb"; } 
    else return false;
}
function IsPickedUpPainPills(query) {
    if("itempickedup" in query) { return query.itempickedup == "painpills"; } 
    else return false;
}
function IsPickedUpAdrenaline(query) {
    if("itempickedup" in query) { return query.itempickedup == "adrenaline"; } 
    else return false;
}
function IsPickedUpVomitJar(query) {
    if("itempickedup" in query) { return query.itempickedup == "vomitjar"; } 
    else return false;
}
function IsPickedUpGrenadeLauncher(query) {
    if("itempickedup" in query) { return query.itempickedup == "grenadelauncher"; } 
    else return false;
}
function IsPickedUpDefibrillator(query) {
    if("itempickedup" in query) { return query.itempickedup == "defibrillator"; } 
    else return false;
}
function IsPickedUpMagnum(query) {
    if("itempickedup" in query) { return query.itempickedup == "magnum"; } 
    else return false;
}
function IsPickedUpSniper_Military(query) {
    if("itempickedup" in query) { return query.itempickedup == "sniper_military"; } 
    else return false;
}
function IsPickedUpShotgun_Chrome(query) {
    if("itempickedup" in query) { return query.itempickedup == "shotgun_chrome"; } 
    else return false;
}
function IsPickedUpShotgun_Spas(query) {
    if("itempickedup" in query) { return query.itempickedup == "shotgun_spas"; } 
    else return false;
}
function IsPickedUpRifle_AK47(query) {
    if("itempickedup" in query) { return query.itempickedup == "rifle_ak47"; } 
    else return false;
}
function IsPickedUpRifle_Desert(query) {
    if("itempickedup" in query) { return query.itempickedup == "rifle_desert"; } 
    else return false;
}
function IsPickedUpSmg_mp5(query) {
    if("itempickedup" in query) { return query.itempickedup == "smg_mp5"; } 
    else return false;
}
function IsPickedUpRifle_sg552(query) {
    if("itempickedup" in query) { return query.itempickedup == "rifle_sg552"; } 
    else return false;
}
function IsPickedUpSniper_scout(query) {
    if("itempickedup" in query) { return query.itempickedup == "sniper_scout"; } 
    else return false;
}
function IsPickedUpSniper_awp(query) {
    if("itempickedup" in query) { return query.itempickedup == "sniper_awp"; } 
    else return false;
}
function IsPickedUpLaserSights(query) {
    if("itempickedup" in query) { return query.itempickedup == "lasersight"; } 
    else return false;
}
function IsNotPickedUpLaserSights(query) {
    if("itempickedup" in query) { return query.itempickedup != "lasersight"; } 
    else return true;
}
function IsNotPickedUpAmmo(query) {
    if("itempickedup" in query) { return query.itempickedup != "ammo"; } 
    else return true;
}
function IsNotPickedUpFirstAidKit(query) {
    if("itempickedup" in query) { return query.itempickedup != "firstaidkit"; } 
    else return true;
}
function IsNotPickedUpMolotov(query) {
    if("itempickedup" in query) { return query.itempickedup != "molotov"; } 
    else return true;
}
function IsNotPickedUpPipeBomb(query) {
    if("itempickedup" in query) { return query.itempickedup != "pipebomb"; } 
    else return true;
}
function IsNotPickedUpVomitJar(query) {
    if("itempickedup" in query) { return query.itempickedup != "vomitjar"; } 
    else return true;
}
function IsNotPickedUpPainPills(query) {
    if("itempickedup" in query) { return query.itempickedup != "painpills"; } 
    else return true;
}
function IsNotPickedUpAdrenaline(query) {
    if("itempickedup" in query) { return query.itempickedup != "adrenaline"; } 
    else return true;
}
function IsNotPickedUpDefibrillator(query) {
    if("itempickedup" in query) { return query.itempickedup != "defibrillator"; } 
    else return true;
}
function IsPickedUpFirstAidKit(query) {
    if("itempickedup" in query) { return query.itempickedup == "firstaidkit"; } 
    else return false;
}
function IsPickedUpSecondPistol(query) {
    if("itempickedup" in query) { return query.itempickedup == "secondpistol"; } 
    else return false;
}
function IsPickedUpFryingPan(query) {
    if("itempickedup" in query) { return query.itempickedup == "frying_pan"; } 
    else return false;
}
function IsPickedUpFireAxe(query) {
    if("itempickedup" in query) { return query.itempickedup == "fireaxe"; } 
    else return false;
}
function IsPickedUpCrowBar(query) {
    if("itempickedup" in query) { return query.itempickedup == "crowbar"; } 
    else return false;
}
function IsPickedUpKatana(query) {
    if("itempickedup" in query) { return query.itempickedup == "katana"; } 
    else return false;
}
function IsPickedUpcricket_bat(query) {
    if("itempickedup" in query) { return query.itempickedup == "cricket_bat"; } 
    else return false;
}
function IsPickedUpbaseball_bat(query) {
    if("itempickedup" in query) { return query.itempickedup == "baseball_bat"; } 
    else return false;
}
function IsPickedUpchainsaw(query) {
    if("itempickedup" in query) { return query.itempickedup == "chainsaw"; } 
    else return false;
}
function IsPickedUpelectric_guitar(query) {
    if("itempickedup" in query) { return query.itempickedup == "electric_guitar"; } 
    else return false;
}
function IsPickedUptonfa(query) {
    if("itempickedup" in query) { return query.itempickedup == "tonfa"; } 
    else return false;
}
function IsPickedUpMachete(query) {
    if("itempickedup" in query) { return query.itempickedup == "machete"; } 
    else return false;
}
function IsPickedUpKnife(query) {
    if("itempickedup" in query) { return query.itempickedup == "knife"; } 
    else return false;
}
function IsPickedUpShovel(query) {
    if("itempickedup" in query) { return query.itempickedup == "shovel"; } 
    else return false;
}
function IsPickedUpPitchfork(query) {
    if("itempickedup" in query) { return query.itempickedup == "pitchfork"; } 
    else return false;
}
function IsPickedUpColaBottles(query) {
    if("itempickedup" in query) { return query.itempickedup == "colabottles"; } 
    else return false;
}
function NotSaidGrabbingCan(query) {
    if("saidgrabbingcan" in query) { return query.saidgrabbingcan != 1; } 
    else return true;
}
function NotPickedUpItem(query) {
    if("pickedupitem" in query) { return query.pickedupitem != 1; } 
    else return true;
}
function IsPickedUpValidHealingItem(query) { return ( IsPickedUpPainPills(query) || IsPickedUpAdrenaline(query) ); }
function IsItemFirstAidKit(query) {
    if("item" in query) { return query.item == "firstaidkit"; } 
    else return false;
}
function IsItemPainPills(query) {
    if("item" in query) { return query.item == "painpills"; } 
    else return false;
}
function IsItemAdrenaline(query) {
    if("item" in query) { return query.item == "adrenaline"; } 
    else return false;
}
function IsSurvivor(query) {
    if("team" in query) { return query.team == "survivor"; } 
    else return false;
}
function IsInfected(query) {
    if("team" in query) { return query.team == "infected"; } 
    else return false;
}
function IsCommon(query) {
    if("who" in query) { return query.who == "common"; } 
    else return false;
}
function IsSmoker(query) {
    if("who" in query) { return query.who == "smoker"; } 
    else return false;
}
function IsSpitter(query) {
    if("who" in query) { return query.who == "spitter"; } 
    else return false;
}
function IsJockey(query) {
    if("who" in query) { return query.who == "jockey"; } 
    else return false;
}
function IsCharger(query) {
    if("who" in query) { return query.who == "charger"; } 
    else return false;
}
function IsScreamer(query) {
    if("who" in query) { return query.who == "screamer"; } 
    else return false;
}
function IsBoomer(query) {
    if("who" in query) { return query.who == "boomer"; } 
    else return false;
}
function IsWitch(query) {
    if("who" in query) { return query.who == "witch"; } 
    else return false;
}
function IsHunter(query) {
    if("who" in query) { return query.who == "hunter"; } 
    else return false;
}
function IsTank(query) {
    if("who" in query) { return query.who == "tank"; } 
    else return false;
}
function IsZombiePresentTank(query) {
    if("zombiepresenttank" in query) { return query.zombiepresenttank == 1; } 
    else return false;
}
function IsNotZombiePresentTank(query) {
    if("zombiepresenttank" in query) { return query.zombiepresenttank < 1; } 
    else return true;
}
function IsSaidTankWarn2(query) {
    if("worldsaidtankwarn2" in query) { return query.worldsaidtankwarn2 == 1; } 
    else return false;
}
function IsZombiePresentWitch(query) {
    if("zombiepresentwitch" in query) { return query.zombiepresentwitch == 1; } 
    else return false;
}
function NotKilledByCr0wn(query) {
    if("oneshot" in query) { return query.oneshot < 1; } 
    else return true;
}
function KilledByCr0wn(query) {
    if("oneshot" in query) { return query.oneshot == 1; } 
    else return false;
}
function IsSmokerClass(query) {
    if("zombieclass" in query) { return query.zombieclass == "smoker"; } 
    else return false;
}
function IsSpitterClass(query) {
    if("zombieclass" in query) { return query.zombieclass == "spitter"; } 
    else return false;
}
function IsJockeyClass(query) {
    if("zombieclass" in query) { return query.zombieclass == "jockey"; } 
    else return false;
}
function IsBoomerClass(query) {
    if("zombieclass" in query) { return query.zombieclass == "boomer"; } 
    else return false;
}
function IsWitchClass(query) {
    if("zombieclass" in query) { return query.zombieclass == "witch"; } 
    else return false;
}
function IsHunterClass(query) {
    if("zombieclass" in query) { return query.zombieclass == "hunter"; } 
    else return false;
}
function IsTankClass(query) {
    if("zombieclass" in query) { return query.zombieclass == "tank"; } 
    else return false;
}
function IsChargerClass(query) {
    if("zombieclass" in query) { return query.zombieclass == "charger"; } 
    else return false;
}
function WhoPutColaCoach(query) {
    if("worldwhoputcola" in query) { return query.worldwhoputcola == "coach"; } 
    else return false;
}
function WhoPutColaGambler(query) {
    if("worldwhoputcola" in query) { return query.worldwhoputcola == "gambler"; } 
    else return false;
}
function WhoPutColaMechanic(query) {
    if("worldwhoputcola" in query) { return query.worldwhoputcola == "mechanic"; } 
    else return false;
}
function WhoPutColaProducer(query) {
    if("worldwhoputcola" in query) { return query.worldwhoputcola == "producer"; } 
    else return false;
}
function PanicEventCoach(query) {
    if("whodidit" in query) { return query.whodidit == "coach"; } 
    else return false;
}
function PanicEventGambler(query) {
    if("whodidit" in query) { return query.whodidit == "gambler"; } 
    else return false;
}
function PanicEventMechanic(query) {
    if("whodidit" in query) { return query.whodidit == "mechanic"; } 
    else return false;
}
function PanicEventProducer(query) {
    if("whodidit" in query) { return query.whodidit == "producer"; } 
    else return false;
}
function ColaDelivered(query) {
    if("whodidit" in query) { return query.whodidit == "cola_delivered"; } 
    else return false;
}
function IsGambler(query) {
    if("who" in query) { return query.who == "gambler"; } 
    else return false;
}
function IsCoach(query) {
    if("who" in query) { return query.who == "coach"; } 
    else return false;
}
function IsProducer(query) {
    if("who" in query) { return query.who == "producer"; } 
    else return false;
}
function IsMechanic(query) {
    if("who" in query) { return query.who == "mechanic"; } 
    else return false;
}
function IsUnknown(query) {
    if("who" in query) { return query.who == "unknown"; } 
    else return false;
}
function IsWhitaker(query) {
    if("name" in query) { return query.name == "orator"; } 
    else return false;
}
function IsVirgil(query) {
    if("name" in query) { return query.name == "orator"; } 
    else return false;
}
function IsSoldier1(query) {
    if("name" in query) { return query.name == "orator"; } 
    else return false;
}
function IsSoldier2(query) {
    if("name" in query) { return query.name == "orator"; } 
    else return false;
}
function IsArenHeli(query) {
    if("name" in query) { return query.name == "orator"; } 
    else return false;
}
function IsTriggeredByGambler(query) {
    if("triggeredby" in query) { return query.triggeredby == "gambler"; } 
    else return false;
}
function IsTriggeredByCoach(query) {
    if("triggeredby" in query) { return query.triggeredby == "coach"; } 
    else return false;
}
function IsTriggeredByProducer(query) {
    if("triggeredby" in query) { return query.triggeredby == "producer"; } 
    else return false;
}
function IsTriggeredByMechanic(query) {
    if("triggeredby" in query) { return query.triggeredby == "mechanic"; } 
    else return false;
}
function IsDeadGambler(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "gambler"; } 
    else return false;
}
function IsDeadCoach(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "coach"; } 
    else return false;
}
function IsDeadProducer(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "producer"; } 
    else return false;
}
function IsDeadMechanic(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "mechanic"; } 
    else return false;
}
function IsNotDeadGambler(query) {
    if("deadcharacter" in query) { return query.deadcharacter != "gambler"; } 
    else return true;
}
function IsNotDeadCoach(query) {
    if("deadcharacter" in query) { return query.deadcharacter != "coach"; } 
    else return true;
}
function IsNotDeadProducer(query) {
    if("deadcharacter" in query) { return query.deadcharacter != "producer"; } 
    else return true;
}
function IsNotDeadMechanic(query) {
    if("deadcharacter" in query) { return query.deadcharacter != "mechanic"; } 
    else return true;
}
function IsDeadUnknown(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "unknown"; } 
    else return false;
}
function IsSurprised(query) {
    if("infectedstate" in query) { return query.infectedstate == "surprised"; } 
    else return false;
}
function IsAlert(query) {
    if("infectedstate" in query) { return query.infectedstate == "alert"; } 
    else return false;
}
function IsEngaged(query) {
    if("infectedstate" in query) { return query.infectedstate == "engaged"; } 
    else return false;
}
function SubjectIsSurvivor(query) {
    if("subjectteam" in query) { return query.subjectteam == "survivor"; } 
    else return false;
}
function SubjectIsInfected(query) {
    if("subjectteam" in query) { return query.subjectteam == "infected"; } 
    else return false;
}
function SubjectIsCommon(query) {
    if("subjectisa" in query) { return query.subjectisa == "common"; } 
    else return false;
}
function SubjectIsSmoker(query) {
    if("subjectisa" in query) { return query.subjectisa == "smoker"; } 
    else return false;
}
function SubjectIsSpitter(query) {
    if("subjectisa" in query) { return query.subjectisa == "spitter"; } 
    else return false;
}
function SubjectIsJockey(query) {
    if("subjectisa" in query) { return query.subjectisa == "jockey"; } 
    else return false;
}
function SubjectIsCharger(query) {
    if("subjectisa" in query) { return query.subjectisa == "charger"; } 
    else return false;
}
function SubjectIsScreamer(query) {
    if("subjectisa" in query) { return query.subjectisa == "screamer"; } 
    else return false;
}
function SubjectIsBoomer(query) {
    if("subjectisa" in query) { return query.subjectisa == "boomer"; } 
    else return false;
}
function SubjectIsHunter(query) {
    if("subjectisa" in query) { return query.subjectisa == "hunter"; } 
    else return false;
}
function SubjectIsTank(query) {
    if("subjectisa" in query) { return query.subjectisa == "tank"; } 
    else return false;
}
function SubjectIsNotTank(query) {
    if("subjectisa" in query) { return query.subjectisa != "tank"; } 
    else return true;
}
function SubjectIsNotBoomer(query) {
    if("subjectisa" in query) { return query.subjectisa != "boomer"; } 
    else return true;
}
function SubjectIsNotSmoker(query) {
    if("subjectisa" in query) { return query.subjectisa != "smoker"; } 
    else return true;
}
function SubjectIsNotAWitch(query) {
    if("subjectisa" in query) { return query.subjectisa != "witch"; } 
    else return true;
}
function SubjectIsAWitch(query) {
    if("subjectisa" in query) { return query.subjectisa == "witch"; } 
    else return false;
}
function SubjectIsNotWitch(query) {
    if("subject" in query) { return query.subject != "witch"; } 
    else return true;
}
function SubjectIsWitch(query) {
    if("subject" in query) { return query.subject == "witch"; } 
    else return false;
}
function SubjectIsNotJockey(query) {
    if("subjectisa" in query) { return query.subjectisa != "jockey"; } 
    else return true;
}
function SubjectIsCoach(query) {
    if("subject" in query) { return query.subject == "coach"; } 
    else return false;
}
function SubjectIsGambler(query) {
    if("subject" in query) { return query.subject == "gambler"; } 
    else return false;
}
function SubjectIsProducer(query) {
    if("subject" in query) { return query.subject == "producer"; } 
    else return false;
}
function SubjectIsMechanic(query) {
    if("subject" in query) { return query.subject == "mechanic"; } 
    else return false;
}
function SubjectIsUnknown(query) {
    if("subject" in query) { return query.subject == "unknown"; } 
    else return false;
}
function SubjectIsNotCoach(query) {
    if("subject" in query) { return query.subject != "coach"; } 
    else return true;
}
function SubjectIsNotGambler(query) {
    if("subject" in query) { return query.subject != "gambler"; } 
    else return true;
}
function SubjectIsNotProducer(query) {
    if("subject" in query) { return query.subject != "producer"; } 
    else return true;
}
function SubjectIsNotMechanic(query) {
    if("subject" in query) { return query.subject != "mechanic"; } 
    else return true;
}
function SubjectIsNotUnknown(query) {
    if("subject" in query) { return query.subject != "unknown"; } 
    else return true;
}
function FromIsCoach(query) {
    if("from" in query) { return query.from == "coach"; } 
    else return false;
}
function FromIsGambler(query) {
    if("from" in query) { return query.from == "gambler"; } 
    else return false;
}
function FromIsProducer(query) {
    if("from" in query) { return query.from == "producer"; } 
    else return false;
}
function FromIsMechanic(query) {
    if("from" in query) { return query.from == "mechanic"; } 
    else return false;
}
function FromIsNotCoach(query) {
    if("from" in query) { return query.from != "coach"; } 
    else return true;
}
function FromIsNotGambler(query) {
    if("from" in query) { return query.from != "gambler"; } 
    else return true;
}
function FromIsNotProducer(query) {
    if("from" in query) { return query.from != "producer"; } 
    else return true;
}
function FromIsNotMechanic(query) {
    if("from" in query) { return query.from != "mechanic"; } 
    else return true;
}
function FromIsAnOrator(query) {
    if("from" in query) { return query.from == "orator"; } 
    else return false;
}
function FromIsUnknown(query) {
    if("from" in query) { return query.from == "unknown"; } 
    else return false;
}
function FromIsNotUnknown(query) {
    if("from" in query) { return query.from != "unknown"; } 
    else return true;
}
function Iswitch_aggro_onCoach(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "coach"; } 
    else return false;
}
function Iswitch_aggro_onGambler(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "gambler"; } 
    else return false;
}
function Iswitch_aggro_onProducer(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "producer"; } 
    else return false;
}
function Iswitch_aggro_onMechanic(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "mechanic"; } 
    else return false;
}
function Iswitch_aggro_onUnknown(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "unknown"; } 
    else return false;
}
function IsNotSaidWitchChasing(query) {
    if("saidwitchchasing" in query) { return query.saidwitchchasing != 1; } 
    else return true;
}
function IsSaidWitchAttacking(query) {
    if("saidwitchattacking" in query) { return query.saidwitchattacking == 1; } 
    else return false;
}
function IsNotSaidWitchStartAttack(query) {
    if("saidwitchstartattack" in query) { return query.saidwitchstartattack != 1; } 
    else return true;
}
function IsNotWitchAggro(query) {
    if("worldwitchaggro" in query) { return query.worldwitchaggro < 1; } 
    else return true;
}
function IsWitchAggro(query) {
    if("worldwitchaggro" in query) { return query.worldwitchaggro >= 1; } 
    else return false;
}
function IsNotSaidBeenJockeyedCoach(query) {
    if("worldsaidbeenjockeyedcoach" in query) { return query.worldsaidbeenjockeyedcoach != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedGambler(query) {
    if("worldsaidbeenjockeyedgambler" in query) { return query.worldsaidbeenjockeyedgambler != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedMechanic(query) {
    if("worldsaidbeenjockeyedmechanic" in query) { return query.worldsaidbeenjockeyedmechanic != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedProducer(query) {
    if("worldsaidbeenjockeyedproducer" in query) { return query.worldsaidbeenjockeyedproducer != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedUnknown(query) {
    if("worldsaidbeenjockeyedunknown" in query) { return query.worldsaidbeenjockeyedunknown != 1; } 
    else return true;
}
function IsSaidBeenJockeyedCoach(query) {
    if("worldsaidbeenjockeyedcoach" in query) { return query.worldsaidbeenjockeyedcoach == 1; } 
    else return false;
}
function IsSaidBeenJockeyedGambler(query) {
    if("worldsaidbeenjockeyedgambler" in query) { return query.worldsaidbeenjockeyedgambler == 1; } 
    else return false;
}
function IsSaidBeenJockeyedMechanic(query) {
    if("worldsaidbeenjockeyedmechanic" in query) { return query.worldsaidbeenjockeyedmechanic == 1; } 
    else return false;
}
function IsSaidBeenJockeyedProducer(query) {
    if("worldsaidbeenjockeyedproducer" in query) { return query.worldsaidbeenjockeyedproducer == 1; } 
    else return false;
}
function IsSaidBeenJockeyedUnknown(query) {
    if("worldsaidbeenjockeyedunknown" in query) { return query.worldsaidbeenjockeyedunknown == 1; } 
    else return false;
}
function IsIncapacitatedPain(query) {
    if("painlevel" in query) { return query.painlevel == "incapacitated"; } 
    else return false;
}
function IsMinorPain(query) {
    if("painlevel" in query) { return query.painlevel == "minor"; } 
    else return false;
}
function IsMajorPain(query) {
    if("painlevel" in query) { return query.painlevel == "major"; } 
    else return false;
}
function IsCriticalPain(query) {
    if("painlevel" in query) { return query.painlevel == "critical"; } 
    else return false;
}
function IsDamageTypeBullet(query) {
    if("damagetype" in query) { return query.damagetype == "dmg_bullet"; } 
    else return false;
}
function IsNotDamageTypeBullet(query) {
    if("damagetype" in query) { return query.damagetype != "dmg_bullet"; } 
    else return true;
}
function IsNotDamageTypeExplosive(query) {
    if("damagetype" in query) { return query.damagetype != "dmg_blast"; } 
    else return true;
}
function ConceptPlayerNiceJob(query) {
    if("concept" in query) { return query.concept == "playernicejob"; } 
    else return false;
}
function ConceptPlayerNiceShot(query) {
    if("concept" in query) { return query.concept == "playerniceshot"; } 
    else return false;
}
function ConceptKillSteal(query) {
    if("concept" in query) { return query.concept == "killsteal"; } 
    else return false;
}
function ConceptRightfulKiller(query) {
    if("concept" in query) { return query.concept == "rightfulkiller"; } 
    else return false;
}
function ConceptInsistMine(query) {
    if("concept" in query) { return query.concept == "insistmine"; } 
    else return false;
}
function ConceptKillStealCalledOut(query) {
    if("concept" in query) { return query.concept == "killstealcalledout"; } 
    else return false;
}
function ChanceToFire1Percent(query) {
    if("randomnum" in query) { return query.randomnum == 1; } 
    else return false;
}
function ChanceToFire2Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 2; } 
    else return true;
}
function ChanceToFire3Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 3; } 
    else return true;
}
function ChanceToFire5Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 5; } 
    else return true;
}
function ChanceToFire10Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 10; } 
    else return true;
}
function ChanceToFire15Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 15; } 
    else return true;
}
function ChanceToFire20Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 20; } 
    else return true;
}
function ChanceToFire25Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 25; } 
    else return true;
}
function ChanceToFire30Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 30; } 
    else return true;
}
function ChanceToFire40Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 40; } 
    else return true;
}
function ChanceToFire50Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 50; } 
    else return true;
}
function ChanceToFire60Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 60; } 
    else return true;
}
function ChanceToFire70Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 70; } 
    else return true;
}
function ChanceToFire75Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 75; } 
    else return true;
}
function ChanceToFire80Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 80; } 
    else return true;
}
function ChanceToFire90Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 90; } 
    else return true;
}
function ChanceToFire100Percent(query) {
    if("randomnum" in query) { return query.randomnum <= 100; } 
    else return true;
}
function ChanceLeft1Percent(query) {
    if("randomnum" in query) { return query.randomnum > 1; } 
    else return false;
}
function ChanceLeft10Percent(query) {
    if("randomnum" in query) { return query.randomnum > 10; } 
    else return false;
}
function ChanceLeft20Percent(query) {
    if("randomnum" in query) { return query.randomnum > 20; } 
    else return false;
}
function ChanceLeft25Percent(query) {
    if("randomnum" in query) { return query.randomnum > 25; } 
    else return false;
}
function ChanceLeft30Percent(query) {
    if("randomnum" in query) { return query.randomnum > 30; } 
    else return false;
}
function ChanceLeft40Percent(query) {
    if("randomnum" in query) { return query.randomnum > 40; } 
    else return false;
}
function ChanceLeft50Percent(query) {
    if("randomnum" in query) { return query.randomnum > 50; } 
    else return false;
}
function ChanceLeft60Percent(query) {
    if("randomnum" in query) { return query.randomnum > 60; } 
    else return false;
}
function ChanceLeft70Percent(query) {
    if("randomnum" in query) { return query.randomnum > 70; } 
    else return false;
}
function ChanceLeft75Percent(query) {
    if("randomnum" in query) { return query.randomnum > 75; } 
    else return false;
}
function ChanceLeft80Percent(query) {
    if("randomnum" in query) { return query.randomnum > 80; } 
    else return false;
}
function ChanceLeft90Percent(query) {
    if("randomnum" in query) { return query.randomnum > 90; } 
    else return false;
}
function ResponseRare(query) {
    if("randomnum" in query) { return query.randomnum < 90; } 
    else return true;
}
function ResponseSuperRare(query) {
    if("randomnum" in query) { return query.randomnum < 2; } 
    else return true;
}
function IsAllowProfane(query) {
    if("allowprofane" in query) { return query.allowprofane == 1; } 
    else return false;
}
function Split21a(query) {
    if("randomnum" in query) { return query.randomnum <= 50; } 
    else return true;
}
function Split22a(query) {
    if("randomnum" in query) { return query.randomnum > 50; } 
    else return false;
}
function Split22b(query) {
    if("randomnum" in query) { return query.randomnum <= 100; } 
    else return true;
}
function Split31a(query) {
    if("randomnum" in query) { return query.randomnum <= 33; } 
    else return true;
}
function Split32a(query) {
    if("randomnum" in query) { return query.randomnum > 33; } 
    else return false;
}
function Split32b(query) {
    if("randomnum" in query) { return query.randomnum <= 66; } 
    else return true;
}
function Split33a(query) {
    if("randomnum" in query) { return query.randomnum > 50; } 
    else return false;
}
function Split33b(query) {
    if("randomnum" in query) { return query.randomnum <= 100; } 
    else return true;
}
function Split41a(query) {
    if("randomnum" in query) { return query.randomnum <= 25; } 
    else return true;
}
function Split42a(query) {
    if("randomnum" in query) { return query.randomnum > 25; } 
    else return false;
}
function Split42b(query) {
    if("randomnum" in query) { return query.randomnum <= 50; } 
    else return true;
}
function Split43a(query) {
    if("randomnum" in query) { return query.randomnum > 50; } 
    else return false;
}
function Split43b(query) {
    if("randomnum" in query) { return query.randomnum <= 75; } 
    else return true;
}
function Split44a(query) {
    if("randomnum" in query) { return query.randomnum > 75; } 
    else return false;
}
function Split44b(query) {
    if("randomnum" in query) { return query.randomnum <= 100; } 
    else return true;
}
function ConceptResponseSoftDispleasureSwear(query) {
    if("concept" in query) { return query.concept == "responsesoftdispleasureswear"; } 
    else return false;
}
function ConceptResponseLoudDispleasureSwear(query) {
    if("concept" in query) { return query.concept == "responselouddispleasureswear"; } 
    else return false;
}
function IssuerNotSoClose(query) {
    if("dist_from_issuer" in query) { return query.dist_from_issuer < 1500; } 
    else return true;
}
function IssuerCloseEnough(query) {
    if("dist_from_issuer" in query) { return query.dist_from_issuer < 800; } 
    else return true;
}
function IssuerClose(query) {
    if("dist_from_issuer" in query) { return query.dist_from_issuer < 400; } 
    else return true;
}
function IssuerReallyClose(query) {
    if("dist_from_issuer" in query) { return query.dist_from_issuer < 200; } 
    else return true;
}
function IssuerMediumClose(query) {
    if("dist_from_issuer" in query) { return query.dist_from_issuer < 300; } 
    else return true;
}
function IsNotSaidSmell(query) {
    if("worldsaidsmell" in query) { return query.worldsaidsmell != 1; } 
    else return true;
}
function IsNotSaidCXM1Intro(query) {
    if("worldcxm1intro" in query) { return query.worldcxm1intro != 1; } 
    else return true;
}
function ConceptIntroEnd(query) {
    if("concept" in query) { return query.concept == "introend"; } 
    else return false;
}
function ConceptWorldIntroC512a(query) {
    if("concept" in query) { return query.concept == "worldintroc512a"; } 
    else return false;
}
function ConceptWorldIntroC512b(query) {
    if("concept" in query) { return query.concept == "worldintroc512b"; } 
    else return false;
}
function ConceptWorldIntroC513(query) {
    if("concept" in query) { return query.concept == "worldintroc513"; } 
    else return false;
}
function ConceptWorldIntroC514a(query) {
    if("concept" in query) { return query.concept == "worldintroc514a"; } 
    else return false;
}
function ConceptWorldIntroC514b(query) {
    if("concept" in query) { return query.concept == "worldintroc514b"; } 
    else return false;
}
function ConceptWorldSignReportUnusual2(query) {
    if("concept" in query) { return query.concept == "worldsignreportunusual2"; } 
    else return false;
}
function ConceptWorldSignRestrictedArea2(query) {
    if("concept" in query) { return query.concept == "worldsignrestrictedarea2"; } 
    else return false;
}
function ConceptWorldSignsInfectedDetected2(query) {
    if("concept" in query) { return query.concept == "worldsignsinfecteddetected2"; } 
    else return false;
}
function ConceptWorldSignsStayTogether2(query) {
    if("concept" in query) { return query.concept == "worldsignsstaytogether2"; } 
    else return false;
}
function ConceptWorldSignDeadlyForce2(query) {
    if("concept" in query) { return query.concept == "worldsigndeadlyforce2"; } 
    else return false;
}
function ConceptWorldSignColdBeer2(query) {
    if("concept" in query) { return query.concept == "worldsigncoldbeer2"; } 
    else return false;
}
function ConceptWorldSignHurricane2(query) {
    if("concept" in query) { return query.concept == "worldsignhurricane2"; } 
    else return false;
}
function ConceptWorldSignHurricane3(query) {
    if("concept" in query) { return query.concept == "worldsignhurricane3"; } 
    else return false;
}
function ConceptWorldSignReportSick2(query) {
    if("concept" in query) { return query.concept == "worldsignreportsick2"; } 
    else return false;
}
function ConceptWorldSignReportSick3(query) {
    if("concept" in query) { return query.concept == "worldsignreportsick3"; } 
    else return false;
}
function ConceptWorldC502BarricadeHomes(query) {
    if("concept" in query) { return query.concept == "worldc502barricadehomes"; } 
    else return false;
}
function ConceptWorldC502ArmYourself(query) {
    if("concept" in query) { return query.concept == "worldc502armyourself"; } 
    else return false;
}
function ConceptWorldC502OfficialInstructions(query) {
    if("concept" in query) { return query.concept == "worldc502officialinstructions"; } 
    else return false;
}
function ConceptWorldC502QuarantineZone(query) {
    if("concept" in query) { return query.concept == "worldc502quaratinezone"; } 
    else return false;
}
function ConceptWorldC502Horse2(query) {
    if("concept" in query) { return query.concept == "worldc502horse2"; } 
    else return false;
}
function ConceptWorldC502Horse3(query) {
    if("concept" in query) { return query.concept == "worldc502horse3"; } 
    else return false;
}
function ConceptWorldC502Smell2(query) {
    if("concept" in query) { return query.concept == "worldc502smell2"; } 
    else return false;
}
function ConceptWorldC502SmellBath2(query) {
    if("concept" in query) { return query.concept == "worldc502smellbath2"; } 
    else return false;
}
function ConceptWorldC502SmellBath3(query) {
    if("concept" in query) { return query.concept == "worldc502smellbath3"; } 
    else return false;
}
function ConceptWorldSignPhotography2(query) {
    if("concept" in query) { return query.concept == "worldsignphotography2"; } 
    else return false;
}
function ConceptWorldC502NotZombies2(query) {
    if("concept" in query) { return query.concept == "worldc502notzombies2"; } 
    else return false;
}
function ConceptWorldC502NotZombies3(query) {
    if("concept" in query) { return query.concept == "worldc502notzombies3"; } 
    else return false;
}
function ConceptWorldC502NotZombies3b(query) {
    if("concept" in query) { return query.concept == "worldc502notzombies3b"; } 
    else return false;
}
function ConceptWorldSignStayInGroup2(query) {
    if("concept" in query) { return query.concept == "worldsignstayingroup2"; } 
    else return false;
}
function ConceptWorldSignWhereIsCEDA2(query) {
    if("concept" in query) { return query.concept == "worldsignwhereisceda2"; } 
    else return false;
}
function ConceptC502AlarmTriggered(query) {
    if("concept" in query) { return query.concept == "c502alarmtriggered"; } 
    else return false;
}
function ConceptC502AlarmStopped(query) {
    if("concept" in query) { return query.concept == "c502alarmstopped"; } 
    else return false;
}
function ConceptWorldC502AlarmStopped(query) {
    if("concept" in query) { return query.concept == "worldc502alarmstopped"; } 
    else return false;
}
function ConceptWorldC502AlarmStopped2(query) {
    if("concept" in query) { return query.concept == "worldc502alarmstopped2"; } 
    else return false;
}
function ConceptWorldC502BusStory2(query) {
    if("concept" in query) { return query.concept == "worldc502busstory2"; } 
    else return false;
}
function ConceptWorldC502BusStory2b(query) {
    if("concept" in query) { return query.concept == "worldc502busstory2b"; } 
    else return false;
}
function ConceptWorldC502BusStory2c(query) {
    if("concept" in query) { return query.concept == "worldc502busstory2c"; } 
    else return false;
}
function ConceptWorldC502AlarmButton(query) {
    if("concept" in query) { return query.concept == "worldc502alarmbutton"; } 
    else return false;
}
function ConceptWorldC502AlarmButtonRun(query) {
    if("concept" in query) { return query.concept == "worldc502alarmbuttonrun"; } 
    else return false;
}
function ConceptWorldSignC5AlarmWillSound3(query) {
    if("concept" in query) { return query.concept == "worldsignc5alarmwillsound3"; } 
    else return false;
}
function ConceptWorldSignC5AlarmWillSound3b(query) {
    if("concept" in query) { return query.concept == "worldsignc5alarmwillsound3b"; } 
    else return false;
}
function ConceptWorldSignC5AlarmWillSound3c(query) {
    if("concept" in query) { return query.concept == "worldsignc5alarmwillsound3c"; } 
    else return false;
}
function ConceptWorldSignC5AlarmWillSound3d(query) {
    if("concept" in query) { return query.concept == "worldsignc5alarmwillsound3d"; } 
    else return false;
}
function ConceptWorldSignC5AlarmWillSound3e(query) {
    if("concept" in query) { return query.concept == "worldsignc5alarmwillsound3e"; } 
    else return false;
}
function IsNotSaidGooedBySpitter(query) {
    if("saidgooedbyspitter" in query) { return query.saidgooedbyspitter != 1; } 
    else return true;
}
function IsNotSaidWarnSpitterIncoming(query) {
    if("saidwarnspitterincoming" in query) { return query.saidwarnspitterincoming != 1; } 
    else return true;
}
function IsNotSaidchargerpound(query) {
    if("saidchargerpound" in query) { return query.saidchargerpound != 1; } 
    else return true;
}
function IsNotSaidReloadingTank(query) {
    if("worldsaidreloadingtank" in query) { return query.worldsaidreloadingtank != 1; } 
    else return true;
}
function IsNotSaidRescueComing(query) {
    if("worldsaidrescuecoming" in query) { return query.worldsaidrescuecoming != 1; } 
    else return true;
}
function IsNotSaidCreshendoStartNear(query) {
    if("worldsaidcreshendostartnear" in query) { return query.worldsaidcreshendostartnear != 1; } 
    else return true;
}
function IsSaidCreshendoStartNear(query) {
    if("worldsaidcreshendostartnear" in query) { return query.worldsaidcreshendostartnear == 1; } 
    else return false;
}
function IsNotSaidReunited(query) {
    if("worldsaidreunited" in query) { return query.worldsaidreunited != 1; } 
    else return true;
}
function IsNotBotAttention(query) {
    if("worldsaidbotattention" in query) { return query.worldsaidbotattention != 1; } 
    else return true;
}
function IsNotSaidSafeSpotAhead(query) {
    if("worldsaidsafespotahead" in query) { return query.worldsaidsafespotahead != 1; } 
    else return true;
}
function IsNotSaidFinaleAhead(query) {
    if("worldsaidfinaleahead" in query) { return query.worldsaidfinaleahead != 1; } 
    else return true;
}
function IsNotSaidSomeoneDied(query) {
    if("worldsaidsomeonedied" in query) { return query.worldsaidsomeonedied != 1; } 
    else return true;
}
function IsSaidSomeoneDiedKill(query) {
    if("worldsaidsomeonediedkill" in query) { return query.worldsaidsomeonediedkill == 1; } 
    else return false;
}
function IsNotSaidTankDead(query) {
    if("worldsaidtankdead" in query) { return query.worldsaidtankdead != 1; } 
    else return true;
}
function IsNotSaidSomeoneDiedDouble(query) {
    if("worldsaidsomeonedieddouble" in query) { return query.worldsaidsomeonedieddouble != 1; } 
    else return true;
}
function IsNotSaidSomeoneDiedDouble2(query) {
    if("worldsaidsomeonedieddouble2" in query) { return query.worldsaidsomeonedieddouble2 != 1; } 
    else return true;
}
function IsSaidSomeoneDied(query) {
    if("worldsaidsomeonedied" in query) { return query.worldsaidsomeonedied == 1; } 
    else return false;
}
function IsNotSaidNervous(query) {
    if("saidnervous" in query) { return query.saidnervous != 1; } 
    else return true;
}
function IsNotSaidPlayerTransition(query) {
    if("worldsaidplayertransition" in query) { return query.worldsaidplayertransition != 1; } 
    else return true;
}
function IsNotWarnMegaMob(query) {
    if("worldwarnmegamob" in query) { return query.worldwarnmegamob != 1; } 
    else return true;
}
function IsWarnHeardWitch(query) {
    if("worldwarnheardwitch" in query) { return query.worldwarnheardwitch == 1; } 
    else return false;
}
function IsNotWarnHeardWitch(query) {
    if("worldwarnheardwitch" in query) { return query.worldwarnheardwitch != 1; } 
    else return true;
}
function IsNotWarnAngryWitch(query) {
    if("worldwarnangrywitch" in query) { return query.worldwarnangrywitch != 1; } 
    else return true;
}
function IsNotWarnHeardBoomer(query) {
    if("worldwarnheardboomer" in query) { return query.worldwarnheardboomer != 1; } 
    else return true;
}
function IsNotWarnHeardHunter(query) {
    if("worldwarnheardhunter" in query) { return query.worldwarnheardhunter != 1; } 
    else return true;
}
function IsNotWarnHeardSmoker(query) {
    if("worldwarnheardsmoker" in query) { return query.worldwarnheardsmoker != 1; } 
    else return true;
}
function IsNotWarnHeardSpitter(query) {
    if("worldwarnheardspitter" in query) { return query.worldwarnheardspitter != 1; } 
    else return true;
}
function IsNotWarnHeardJockey(query) {
    if("worldwarnheardjockey" in query) { return query.worldwarnheardjockey != 1; } 
    else return true;
}
function IsNotWarnHeardTank(query) {
    if("worldwarnheardtank" in query) { return query.worldwarnheardtank != 1; } 
    else return true;
}
function IsNotWarnHeardCharger(query) {
    if("worldwarnheardcharger" in query) { return query.worldwarnheardcharger != 1; } 
    else return true;
}
function IsNotSaidJimmyWarn(query) {
    if("worldsaidjimmywarn" in query) { return query.worldsaidjimmywarn != 1; } 
    else return true;
}
function IsNotSaidClownWarn(query) {
    if("worldsaidclownwarn" in query) { return query.worldsaidclownwarn != 1; } 
    else return true;
}
function IsNotSaidArmoredWarn(query) {
    if("worldsaidarmoredwarn" in query) { return query.worldsaidarmoredwarn != 1; } 
    else return true;
}
function IsNotSaidMudmenWarn(query) {
    if("worldsaidmudmenwarn" in query) { return query.worldsaidmudmenwarn != 1; } 
    else return true;
}
function IsNotSaidCedaWarn(query) {
    if("worldsaidcedawarn" in query) { return query.worldsaidcedawarn != 1; } 
    else return true;
}
function IsNotSaidSmokerWarn(query) {
    if("worldsaidsmokerwarn" in query) { return query.worldsaidsmokerwarn != 1; } 
    else return true;
}
function IsNotSaidSpitterWarn(query) {
    if("worldsaidspitterwarn" in query) { return query.worldsaidspitterwarn != 1; } 
    else return true;
}
function IsNotSaidJockeyWarn(query) {
    if("worldsaidjockeywarn" in query) { return query.worldsaidjockeywarn != 1; } 
    else return true;
}
function IsNotSaidHunterWarn(query) {
    if("worldsaidhunterwarn" in query) { return query.worldsaidhunterwarn != 1; } 
    else return true;
}
function IsNotSaidBoomerWarn(query) {
    if("worldsaidboomerwarn" in query) { return query.worldsaidboomerwarn != 1; } 
    else return true;
}
function IsNotSaidChargerWarn(query) {
    if("worldsaidchargerwarn" in query) { return query.worldsaidchargerwarn != 1; } 
    else return true;
}
function IsNotSaidTankWarn(query) {
    if("worldwarnheardtank" in query) { return query.worldwarnheardtank != 1; } 
    else return true;
}
function IsNotSaidWitchWarn(query) {
    if("worldwarnheardwitch" in query) { return query.worldwarnheardwitch != 1; } 
    else return true;
}
function SawManyMudMen(query) {
    if("worldsawmudmen" in query) { return query.worldsawmudmen > 3; } 
    else return false;
}
function SawFirstMudMen(query) {
    if("worldsawmudmen" in query) { return query.worldsawmudmen < 1; } 
    else return true;
}
function SawFirstClown(query) {
    if("worldsawclowns" in query) { return query.worldsawclowns < 1; } 
    else return true;
}
function IsNotSaidSpecialWarn(query) {
    if("worldsaidspecialwarn" in query) { return query.worldsaidspecialwarn != 1; } 
    else return true;
}
function IsNotSaidMechanicPounced(query) {
    if("worldsaidmechanicpounced" in query) { return query.worldsaidmechanicpounced != 1; } 
    else return true;
}
function IsNotSaidCoachPounced(query) {
    if("worldsaidcoachpounced" in query) { return query.worldsaidcoachpounced != 1; } 
    else return true;
}
function IsNotSaidProducerPounced(query) {
    if("worldsaidproducerpounced" in query) { return query.worldsaidproducerpounced != 1; } 
    else return true;
}
function IsNotSaidGamblerPounced(query) {
    if("worldsaidgamblerpounced" in query) { return query.worldsaidgamblerpounced != 1; } 
    else return true;
}
function IsNotSaidPlayerPounced(query) {
    if("worldsaidplayerpounced" in query) { return query.worldsaidplayerpounced != 1; } 
    else return true;
}
function IsNotSaidUnknownPounced(query) {
    if("worldsaidunknownpounced" in query) { return query.worldsaidunknownpounced != 1; } 
    else return true;
}
function IsNotSuggestedHealth(query) {
    if("worldsuggestedhealth" in query) { return query.worldsuggestedhealth != 1; } 
    else return true;
}
function IsNotSaidHurrahAlso(query) {
    if("worldsaidhurrahalso" in query) { return query.worldsaidhurrahalso != 1; } 
    else return true;
}
function IsNotSaidc5m4_01(query) {
    if("worldsaidc5m4_01" in query) { return query.worldsaidc5m4_01 != 1; } 
    else return true;
}
function IsEllisAlsoWarn(query) {
    if("worldellisalsowarn" in query) { return query.worldellisalsowarn == 1; } 
    else return false;
}
function IsNotSaid0502cemetary(query) {
    if("worldsaid0502cemetary" in query) { return query.worldsaid0502cemetary != 1; } 
    else return true;
}
function IsNotNickInsultedCoachC1(query) {
    if("worldnickinsultedcoach" in query) { return query.worldnickinsultedcoach != 1; } 
    else return true;
}
function IsNotFirstKillC1(query) {
    if("worldfirstkill" in query) { return query.worldfirstkill != 1; } 
    else return true;
}
function IsNotSaidWorldSignDeadlyForce(query) {
    if("worldsaidworldsigndeadlyforce" in query) { return query.worldsaidworldsigndeadlyforce != 1; } 
    else return true;
}
function IsNotSaidWorldSignDeadlyForce2(query) {
    if("worldsaidworldsigndeadlyforce2" in query) { return query.worldsaidworldsigndeadlyforce2 != 1; } 
    else return true;
}
function IsNotSaidWorldSignRestrictedArea(query) {
    if("worldsaidworldsignrestrictedarea" in query) { return query.worldsaidworldsignrestrictedarea != 1; } 
    else return true;
}
function IsNotSaidWorldSignsInfectedDetected(query) {
    if("worldsaidworldsignsinfecteddetected" in query) { return query.worldsaidworldsignsinfecteddetected != 1; } 
    else return true;
}
function IsNotSaidWorldSignColdBeer(query) {
    if("worldsaidworldsigncoldbeer" in query) { return query.worldsaidworldsigncoldbeer != 1; } 
    else return true;
}
function IsNotSaidWorldSignReportUnusual(query) {
    if("worldsaidworldsignreportunusual" in query) { return query.worldsaidworldsignreportunusual != 1; } 
    else return true;
}
function IsNotSaidWorldSignContagious(query) {
    if("worldsaidworldsigncontagious" in query) { return query.worldsaidworldsigncontagious != 1; } 
    else return true;
}
function IsNotSaidWorldSignReportSick(query) {
    if("worldsaidworldsignreportsick" in query) { return query.worldsaidworldsignreportsick != 1; } 
    else return true;
}
function IsNotSaidWorldC502Horse(query) {
    if("worldsaidworldc502horse" in query) { return query.worldsaidworldc502horse != 1; } 
    else return true;
}
function IsNotSaidWorldC502Alley(query) {
    if("worldsaidworldc502alley" in query) { return query.worldsaidworldc502alley != 1; } 
    else return true;
}
function IsNotSaidWorldC502Smell(query) {
    if("worldsaidworldc502smell" in query) { return query.worldsaidworldc502smell != 1; } 
    else return true;
}
function IsNotSaidWorldC502SmellBath(query) {
    if("worldsaidworldc502smellbath" in query) { return query.worldsaidworldc502smellbath != 1; } 
    else return true;
}
function IsNotSaidWorldC502NotZombies(query) {
    if("worldsaidworldc502notzombies" in query) { return query.worldsaidworldc502notzombies != 1; } 
    else return true;
}
function IsNotSaidWorldSignFormLine(query) {
    if("worldsaidworldsignformline" in query) { return query.worldsaidworldsignformline != 1; } 
    else return true;
}
function IsNotSaidWorldSignStayInGroup(query) {
    if("worldsaidworldsignstayingroup" in query) { return query.worldsaidworldsignstayingroup != 1; } 
    else return true;
}
function IsNotSaidWorldC502BusStory(query) {
    if("worldsaidworldc502busstory" in query) { return query.worldsaidworldc502busstory != 1; } 
    else return true;
}
function IsNotSaidWorldSignPhotography(query) {
    if("worldsaidworldsignphotography" in query) { return query.worldsaidworldsignphotography != 1; } 
    else return true;
}
function IsNotSaidWorldSignWhereIsCEDA(query) {
    if("worldsaidworldsignwhereisceda" in query) { return query.worldsaidworldsignwhereisceda != 1; } 
    else return true;
}
function IsNotSaidWorldSignC5AlarmWillSound(query) {
    if("worldsaidworldsignc5alarmwillsound" in query) { return query.worldsaidworldsignc5alarmwillsound != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1Path01(query) {
    if("worldsaidworldc3m1path01" in query) { return query.worldsaidworldc3m1path01 != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1FerryNag(query) {
    if("worldsaidworldc3m1ferrynag" in query) { return query.worldsaidworldc3m1ferrynag != 1; } 
    else return true;
}
function IsSaidWorldC3M1FerryNag(query) {
    if("worldsaidworldc3m1ferrynag" in query) { return query.worldsaidworldc3m1ferrynag == 1; } 
    else return false;
}
function IsNotSaidWorldC3M1FerryCrossing(query) {
    if("worldsaidworldc3m1ferrycrossing" in query) { return query.worldsaidworldc3m1ferrycrossing != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1CheckingHouses(query) {
    if("worldsaidworldc3m1checkinghouses" in query) { return query.worldsaidworldc3m1checkinghouses != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1Walkways(query) {
    if("worldsaidworldc3m1walkways" in query) { return query.worldsaidworldc3m1walkways != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1Stairs(query) {
    if("worldsaidworldc3m1stairs" in query) { return query.worldsaidworldc3m1stairs != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1WhichWay(query) {
    if("worldsaidworldc3m1whichway" in query) { return query.worldsaidworldc3m1whichway != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1WeShouldGetBackUp(query) {
    if("worldsaidworldc3m1weshouldgetbackup" in query) { return query.worldsaidworldc3m1weshouldgetbackup != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1StayOn(query) {
    if("worldsaidworldc3m1stayon" in query) { return query.worldsaidworldc3m1stayon != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1FeedGator(query) {
    if("worldsaidworldc3m1feedgator" in query) { return query.worldsaidworldc3m1feedgator != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1AmmoUp(query) {
    if("worldsaidworldc3m1ammoup" in query) { return query.worldsaidworldc3m1ammoup != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1PlanksRight(query) {
    if("worldsaidworldc3m1planksright" in query) { return query.worldsaidworldc3m1planksright != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1Litter(query) {
    if("worldsaidworldc3m1litter" in query) { return query.worldsaidworldc3m1litter != 1; } 
    else return true;
}
function IsNotSaidWorldC3M1LightsOn(query) {
    if("worldsaidworldc3m1lightson" in query) { return query.worldsaidworldc3m1lightson != 1; } 
    else return true;
}
function IsNotSaidC3M2Start(query) {
    if("worldsaidc3m2start" in query) { return query.worldsaidc3m2start != 1; } 
    else return true;
}
function IsNotSaidC3M2StartDry(query) {
    if("worldsaidc3m2startdry" in query) { return query.worldsaidc3m2startdry != 1; } 
    else return true;
}
function IsNotSaidC3M2OverTree(query) {
    if("worldsaidc3m2overtree" in query) { return query.worldsaidc3m2overtree != 1; } 
    else return true;
}
function IsNotSaidC3M2PlaneCrash(query) {
    if("worldsaidc3m2planecrash" in query) { return query.worldsaidc3m2planecrash != 1; } 
    else return true;
}
function IsNotSaidC3M2PlaneDoorNag(query) {
    if("worldsaidc3m2planedoornag" in query) { return query.worldsaidc3m2planedoornag != 1; } 
    else return true;
}
function IsSaidC3M2PlaneDoorNag(query) {
    if("worldsaidc3m2planedoornag" in query) { return query.worldsaidc3m2planedoornag == 1; } 
    else return false;
}
function IsNotSaidC3M2PlaneDoorNaga(query) {
    if("worldsaidc3m2planedoornaga" in query) { return query.worldsaidc3m2planedoornaga != 1; } 
    else return true;
}
function IsNotSaidC3M2SickOfSwamp(query) {
    if("worldsaidc3m2sickofswamp" in query) { return query.worldsaidc3m2sickofswamp != 1; } 
    else return true;
}
function IsNotSaidC3M2UnderWaterShack(query) {
    if("worldsaidc3m2underwatershack" in query) { return query.worldsaidc3m2underwatershack != 1; } 
    else return true;
}
function IsNotSaidC3M2Road(query) {
    if("worldsaidc3m2road" in query) { return query.worldsaidc3m2road != 1; } 
    else return true;
}
function IsNotSaidC3M2Village1(query) {
    if("worldsaidc3m2village1" in query) { return query.worldsaidc3m2village1 != 1; } 
    else return true;
}
function IsSaidC3M2Village1(query) {
    if("worldsaidc3m2village1" in query) { return query.worldsaidc3m2village1 == 1; } 
    else return false;
}
function IsNotSaidC5M4TractorNag(query) {
    if("worldsaidc5m4tractornag" in query) { return query.worldsaidc5m4tractornag != 1; } 
    else return true;
}
function IsNotSaidremark_caralarm(query) {
    if("worldsaidremark_caralarm" in query) { return query.worldsaidremark_caralarm != 1; } 
    else return true;
}
function IsNotSaidRemarkWorldC1M2SpotGunStore(query) {
    if("worldsaidremarkworldc1m2spotgunstore" in query) { return query.worldsaidremarkworldc1m2spotgunstore != 1; } 
    else return true;
}
function IsNotSaidRemarkWorldC1M2InsideGunStore(query) {
    if("worldsaidremarkworldc1m2insidegunstore" in query) { return query.worldsaidremarkworldc1m2insidegunstore != 1; } 
    else return true;
}
function IsNotSaidpathc2m1_billboard(query) {
    if("worldsaidpathc2m1_billboard" in query) { return query.worldsaidpathc2m1_billboard != 1; } 
    else return true;
}
function IsNotSaidpathc2m1_abandonedcars(query) {
    if("worldsaidpathc2m1_abandonedcars" in query) { return query.worldsaidpathc2m1_abandonedcars != 1; } 
    else return true;
}
function IsNotSaidc4m1_InBurgerTank(query) {
    if("worldsaidc4m1_inburgertank" in query) { return query.worldsaidc4m1_inburgertank != 1; } 
    else return true;
}
function IsNotSaidc4m1_boat(query) {
    if("worldsaidc4m1_boat" in query) { return query.worldsaidc4m1_boat != 1; } 
    else return true;
}
function IsNotSaidc4m2_streetblocked(query) {
    if("worldsaidc4m2_streetblocked" in query) { return query.worldsaidc4m2_streetblocked != 1; } 
    else return true;
}
function IsNotSaidc4m2_millentrance(query) {
    if("worldsaidc4m2_millentrance" in query) { return query.worldsaidc4m2_millentrance != 1; } 
    else return true;
}
function IsNotSaidc4m2_millentranceexit(query) {
    if("worldsaidc4m2_millentranceexit" in query) { return query.worldsaidc4m2_millentranceexit != 1; } 
    else return true;
}
function IsNotSaidc4m2_upramp(query) {
    if("worldsaidc4m2_upramp" in query) { return query.worldsaidc4m2_upramp != 1; } 
    else return true;
}
function IsNotSaidc4m2_waterpool(query) {
    if("worldsaidc4m2_waterpool" in query) { return query.worldsaidc4m2_waterpool != 1; } 
    else return true;
}
function IsNotSaidc4m2_upthestairs(query) {
    if("worldsaidc4m2_upthestairs" in query) { return query.worldsaidc4m2_upthestairs != 1; } 
    else return true;
}
function IsNotSaidc4m2_seegasstation(query) {
    if("worldsaidc4m2_seegasstation" in query) { return query.worldsaidc4m2_seegasstation != 1; } 
    else return true;
}
function IsNotSaidc4m2_useelevator(query) {
    if("worldsaidc4m2_useelevator" in query) { return query.worldsaidc4m2_useelevator != 1; } 
    else return true;
}
function IsNotSaidc4m2_gasinsidesign(query) {
    if("worldsaidc4m2_gasinsidesign" in query) { return query.worldsaidc4m2_gasinsidesign != 1; } 
    else return true;
}
function IsNotSaidc4m2_weather(query) {
    if("worldsaidc4m2_weather" in query) { return query.worldsaidc4m2_weather != 1; } 
    else return true;
}
function IsNotSaidc4m3_rain(query) {
    if("worldsaidc4m3_rain" in query) { return query.worldsaidc4m3_rain != 1; } 
    else return true;
}
function IsNotSaidc4m3_cane(query) {
    if("worldsaidc4m3_cane" in query) { return query.worldsaidc4m3_cane != 1; } 
    else return true;
}
function IsNotSaidc4m3_elevator(query) {
    if("worldsaidc4m3_elevator" in query) { return query.worldsaidc4m3_elevator != 1; } 
    else return true;
}
function IsNotSaidc4m3_downstairs(query) {
    if("worldsaidc4m3_downstairs" in query) { return query.worldsaidc4m3_downstairs != 1; } 
    else return true;
}
function IsNotSaidc4m3_flooded(query) {
    if("worldsaidc4m3_flooded" in query) { return query.worldsaidc4m3_flooded != 1; } 
    else return true;
}
function IsNotSaidc4m3_flooded2(query) {
    if("worldsaidc4m3_flooded2" in query) { return query.worldsaidc4m3_flooded2 != 1; } 
    else return true;
}
function IsNotSaidc4m3_overtank(query) {
    if("worldsaidc4m3_overtank" in query) { return query.worldsaidc4m3_overtank != 1; } 
    else return true;
}
function IsNotSaidc4m3_thisway(query) {
    if("worldsaidc4m3_thisway" in query) { return query.worldsaidc4m3_thisway != 1; } 
    else return true;
}
function IsNotSaidc4m3_downhere(query) {
    if("worldsaidc4m3_downhere" in query) { return query.worldsaidc4m3_downhere != 1; } 
    else return true;
}
function IsNotSaidc4m3_crosshere(query) {
    if("worldsaidc4m3_crosshere" in query) { return query.worldsaidc4m3_crosshere != 1; } 
    else return true;
}
function IsNotSaidc4m3_uppipes(query) {
    if("worldsaidc4m3_uppipes" in query) { return query.worldsaidc4m3_uppipes != 1; } 
    else return true;
}
function IsNotSaidc4m3_ducatelsign(query) {
    if("worldsaidc4m3_ducatelsign" in query) { return query.worldsaidc4m3_ducatelsign != 1; } 
    else return true;
}
function IsNotSaidc4m4_useroofs(query) {
    if("worldsaidc4m4_useroofs" in query) { return query.worldsaidc4m4_useroofs != 1; } 
    else return true;
}
function IsNotSaidc4m4_porchlight(query) {
    if("worldsaidc4m4_porchlight" in query) { return query.worldsaidc4m4_porchlight != 1; } 
    else return true;
}
function IsNotSaidc4m4_garagesale(query) {
    if("worldsaidc4m4_garagesale" in query) { return query.worldsaidc4m4_garagesale != 1; } 
    else return true;
}
function IsNotSaidc4m4_playground(query) {
    if("worldsaidc4m4_playground" in query) { return query.worldsaidc4m4_playground != 1; } 
    else return true;
}
function IsNotSaidc4m4_truckwreck(query) {
    if("worldsaidc4m4_truckwreck" in query) { return query.worldsaidc4m4_truckwreck != 1; } 
    else return true;
}
function IsNotSaidc4m5_burgertank(query) {
    if("worldsaidc4m5_burgertank" in query) { return query.worldsaidc4m5_burgertank != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1First(query) {
    if("worldsaidworldc1m1first" in query) { return query.worldsaidworldc1m1first != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1StairsSign(query) {
    if("worldsaidworldc1m1stairssign" in query) { return query.worldsaidworldc1m1stairssign != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1Ledge(query) {
    if("worldsaidworldc1m1ledge" in query) { return query.worldsaidworldc1m1ledge != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1DownStairs(query) {
    if("worldsaidworldc1m1downstairs" in query) { return query.worldsaidworldc1m1downstairs != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1ElevatorBroken(query) {
    if("worldsaidworldc1m1elevatorbroken" in query) { return query.worldsaidworldc1m1elevatorbroken != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1ElevatorWorking(query) {
    if("worldsaidworldc1m1elevatorworking" in query) { return query.worldsaidworldc1m1elevatorworking != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2BigGuns(query) {
    if("worldsaidworldc1m2bigguns" in query) { return query.worldsaidworldc1m2bigguns != 1; } 
    else return true;
}
function IsNotSaidc2m1_carwreckage(query) {
    if("worldsaidc2m1_carwreckage" in query) { return query.worldsaidc2m1_carwreckage != 1; } 
    else return true;
}
function IsNotSaidc2m1_busblock(query) {
    if("worldsaidc2m1_busblock" in query) { return query.worldsaidc2m1_busblock != 1; } 
    else return true;
}
function IsNotSaidc2m1_offramp(query) {
    if("worldsaidc2m1_offramp" in query) { return query.worldsaidc2m1_offramp != 1; } 
    else return true;
}
function IsNotSaidc2m1_searchlights(query) {
    if("worldsaidc2m1_searchlights" in query) { return query.worldsaidc2m1_searchlights != 1; } 
    else return true;
}
function IsNotSaidc2m1_motelsign(query) {
    if("worldsaidc2m1_motelsign" in query) { return query.worldsaidc2m1_motelsign != 1; } 
    else return true;
}
function IsNotSaidc2m1_riders(query) {
    if("worldsaidc2m1_riders" in query) { return query.worldsaidc2m1_riders != 1; } 
    else return true;
}
function IsNotSaidc2m1_pool(query) {
    if("worldsaidc2m1_pool" in query) { return query.worldsaidc2m1_pool != 1; } 
    else return true;
}
function IsNotSaidc2m1_upstairs(query) {
    if("worldsaidc2m1_upstairs" in query) { return query.worldsaidc2m1_upstairs != 1; } 
    else return true;
}
function IsNotSaidc2m1_checkrooms(query) {
    if("worldsaidc2m1_checkrooms" in query) { return query.worldsaidc2m1_checkrooms != 1; } 
    else return true;
}
function IsNotSaidc2m1_downstairs(query) {
    if("worldsaidc2m1_downstairs" in query) { return query.worldsaidc2m1_downstairs != 1; } 
    else return true;
}
function IsNotSaidc2m1_bridgeout(query) {
    if("worldsaidc2m1_bridgeout" in query) { return query.worldsaidc2m1_bridgeout != 1; } 
    else return true;
}
function IsNotSaidc2m1_throughwindow(query) {
    if("worldsaidc2m1_throughwindow" in query) { return query.worldsaidc2m1_throughwindow != 1; } 
    else return true;
}
function IsNotSaidc2m1_throughhere(query) {
    if("worldsaidc2m1_throughhere" in query) { return query.worldsaidc2m1_throughhere != 1; } 
    else return true;
}
function IsNotSaidc2m1_campsite(query) {
    if("worldsaidc2m1_campsite" in query) { return query.worldsaidc2m1_campsite != 1; } 
    else return true;
}
function IsNotSaidc2m1_cliff(query) {
    if("worldsaidc2m1_cliff" in query) { return query.worldsaidc2m1_cliff != 1; } 
    else return true;
}
function IsNotSaidc2m1_uphill(query) {
    if("worldsaidc2m1_uphill" in query) { return query.worldsaidc2m1_uphill != 1; } 
    else return true;
}
function IsNotSaidc2m1_hillcomplain(query) {
    if("worldsaidc2m1_hillcomplain" in query) { return query.worldsaidc2m1_hillcomplain != 1; } 
    else return true;
}
function IsNotSaidc2m1_park(query) {
    if("worldsaidc2m1_park" in query) { return query.worldsaidc2m1_park != 1; } 
    else return true;
}
function IsNotSaidc2m1_throughmotel(query) {
    if("worldsaidc2m1_throughmotel" in query) { return query.worldsaidc2m1_throughmotel != 1; } 
    else return true;
}
function IsNotSaidc2m1_followriver(query) {
    if("worldsaidc2m1_followriver" in query) { return query.worldsaidc2m1_followriver != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1FireSpreading(query) {
    if("worldsaidworldc1m1firespreading" in query) { return query.worldsaidworldc1m1firespreading != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1CedaMaps(query) {
    if("worldsaidworldc1m1cedamaps" in query) { return query.worldsaidworldc1m1cedamaps != 1; } 
    else return true;
}
function IsNotSaidc2m2_entrancesign(query) {
    if("worldsaidc2m2_entrancesign" in query) { return query.worldsaidc2m2_entrancesign != 1; } 
    else return true;
}
function IsNotSaidc2m2_womensroom(query) {
    if("worldsaidc2m2_womensroom" in query) { return query.worldsaidc2m2_womensroom != 1; } 
    else return true;
}
function IsNotSaidc2m2_candymachine(query) {
    if("worldsaidc2m2_candymachine" in query) { return query.worldsaidc2m2_candymachine != 1; } 
    else return true;
}
function IsNotSaidc2m2_cottoncandy(query) {
    if("worldsaidc2m2_cottoncandy" in query) { return query.worldsaidc2m2_cottoncandy != 1; } 
    else return true;
}
function IsNotSaidc2m2_okra(query) {
    if("worldsaidc2m2_okra" in query) { return query.worldsaidc2m2_okra != 1; } 
    else return true;
}
function IsNotSaidc2m2_kettlekorn(query) {
    if("worldsaidc2m2_kettlekorn" in query) { return query.worldsaidc2m2_kettlekorn != 1; } 
    else return true;
}
function IsNotSaidc2m2_miscfood(query) {
    if("worldsaidc2m2_miscfood" in query) { return query.worldsaidc2m2_miscfood != 1; } 
    else return true;
}
function IsNotSaidc2m2_kiddieland(query) {
    if("worldsaidc2m2_kiddieland" in query) { return query.worldsaidc2m2_kiddieland != 1; } 
    else return true;
}
function IsNotSaidc2m2_burgers(query) {
    if("worldsaidc2m2_burgers" in query) { return query.worldsaidc2m2_burgers != 1; } 
    else return true;
}
function IsNotSaidc2m2_cobbler(query) {
    if("worldsaidc2m2_cobbler" in query) { return query.worldsaidc2m2_cobbler != 1; } 
    else return true;
}
function IsNotSaidc2m2_favoriteride(query) {
    if("worldsaidc2m2_favoriteride" in query) { return query.worldsaidc2m2_favoriteride != 1; } 
    else return true;
}
function IsNotSaidc2m2_lilpeanut(query) {
    if("worldsaidc2m2_lilpeanut" in query) { return query.worldsaidc2m2_lilpeanut != 1; } 
    else return true;
}
function IsNotSaidc2m2_ladder(query) {
    if("worldsaidc2m2_ladder" in query) { return query.worldsaidc2m2_ladder != 1; } 
    else return true;
}
function IsNotSaidc2m2_backalley(query) {
    if("worldsaidc2m2_backalley" in query) { return query.worldsaidc2m2_backalley != 1; } 
    else return true;
}
function IsNotSaidc2m2_topofslide(query) {
    if("worldsaidc2m2_topofslide" in query) { return query.worldsaidc2m2_topofslide != 1; } 
    else return true;
}
function IsNotSaidc2m2_steake(query) {
    if("worldsaidc2m2_steake" in query) { return query.worldsaidc2m2_steake != 1; } 
    else return true;
}
function IsNotSaidc2m2_carousel(query) {
    if("worldsaidc2m2_carousel" in query) { return query.worldsaidc2m2_carousel != 1; } 
    else return true;
}
function IsNotSaidc2m2_carouselbutton(query) {
    if("worldsaidc2m2_carouselbutton" in query) { return query.worldsaidc2m2_carouselbutton != 1; } 
    else return true;
}
function IsNotSaidc2m2_thistall(query) {
    if("worldsaidc2m2_thistall" in query) { return query.worldsaidc2m2_thistall != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1DoorFire(query) {
    if("worldsaidworldc1m1doorfire" in query) { return query.worldsaidworldc1m1doorfire != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1DownHere(query) {
    if("worldsaidworldc1m1downhere" in query) { return query.worldsaidworldc1m1downhere != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1AlmostThere(query) {
    if("worldsaidworldc1m1almostthere" in query) { return query.worldsaidworldc1m1almostthere != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2MallThisWay(query) {
    if("worldsaidworldc1m2mallthisway" in query) { return query.worldsaidworldc1m2mallthisway != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2InHere(query) {
    if("worldsaidworldc1m2inhere" in query) { return query.worldsaidworldc1m2inhere != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2DownStairs(query) {
    if("worldsaidworldc1m2downstairs" in query) { return query.worldsaidworldc1m2downstairs != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2Abandoned(query) {
    if("worldsaidworldc1m2abandoned" in query) { return query.worldsaidworldc1m2abandoned != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2Dumpster(query) {
    if("worldsaidworldc1m2dumpster" in query) { return query.worldsaidworldc1m2dumpster != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2JumpTruck(query) {
    if("worldsaidworldc1m2jumptruck" in query) { return query.worldsaidworldc1m2jumptruck != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2GunStoreClose(query) {
    if("worldsaidworldc1m2gunstoreclose" in query) { return query.worldsaidworldc1m2gunstoreclose != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2UpStairs(query) {
    if("worldsaidworldc1m2upstairs" in query) { return query.worldsaidworldc1m2upstairs != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2MallSignHere(query) {
    if("worldsaidworldc1m2mallsignhere" in query) { return query.worldsaidworldc1m2mallsignhere != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2MadeIt(query) {
    if("worldsaidworldc1m2madeit" in query) { return query.worldsaidworldc1m2madeit != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2Close(query) {
    if("worldsaidworldc1m2close" in query) { return query.worldsaidworldc1m2close != 1; } 
    else return true;
}
function IsNotSaidWorldC1M2PreStoreAlarm(query) {
    if("worldsaidworldc1m2prestorealarm" in query) { return query.worldsaidworldc1m2prestorealarm != 1; } 
    else return true;
}
function IsNotSaidc2m3_coollight(query) {
    if("worldsaidc2m3_coollight" in query) { return query.worldsaidc2m3_coollight != 1; } 
    else return true;
}
function IsNotSaidc2m3_wayblocked(query) {
    if("worldsaidc2m3_wayblocked" in query) { return query.worldsaidc2m3_wayblocked != 1; } 
    else return true;
}
function IsNotSaidc2m3_cementriver(query) {
    if("worldsaidc2m3_cementriver" in query) { return query.worldsaidc2m3_cementriver != 1; } 
    else return true;
}
function IsNotSaidc2m3_water(query) {
    if("worldsaidc2m3_water" in query) { return query.worldsaidc2m3_water != 1; } 
    else return true;
}
function IsNotSaidc2m3_vent(query) {
    if("worldsaidc2m3_vent" in query) { return query.worldsaidc2m3_vent != 1; } 
    else return true;
}
function IsNotSaidc2m3_swanpileup(query) {
    if("worldsaidc2m3_swanpileup" in query) { return query.worldsaidc2m3_swanpileup != 1; } 
    else return true;
}
function IsNotSaidc2m3_swanroom(query) {
    if("worldsaidc2m3_swanroom" in query) { return query.worldsaidc2m3_swanroom != 1; } 
    else return true;
}
function IsNotSaidc2m3_hole(query) {
    if("worldsaidc2m3_hole" in query) { return query.worldsaidc2m3_hole != 1; } 
    else return true;
}
function IsNotSaidc2m3_aroundblock(query) {
    if("worldsaidc2m3_aroundblock" in query) { return query.worldsaidc2m3_aroundblock != 1; } 
    else return true;
}
function IsNotSaidc2m3_longesttunnel(query) {
    if("worldsaidc2m3_longesttunnel" in query) { return query.worldsaidc2m3_longesttunnel != 1; } 
    else return true;
}
function IsNotSaidc2m3_freshair(query) {
    if("worldsaidc2m3_freshair" in query) { return query.worldsaidc2m3_freshair != 1; } 
    else return true;
}
function IsNotSaidc2m3_overfence(query) {
    if("worldsaidc2m3_overfence" in query) { return query.worldsaidc2m3_overfence != 1; } 
    else return true;
}
function IsNotSaidc2m3_exittunnel(query) {
    if("worldsaidc2m3_exittunnel" in query) { return query.worldsaidc2m3_exittunnel != 1; } 
    else return true;
}
function IsNotSaidc2m3_screamingoak(query) {
    if("worldsaidc2m3_screamingoak" in query) { return query.worldsaidc2m3_screamingoak != 1; } 
    else return true;
}
function IsNotSaidc2m3_rubble(query) {
    if("worldsaidc2m3_rubble" in query) { return query.worldsaidc2m3_rubble != 1; } 
    else return true;
}
function IsNotSaidc2m3_undercoaster(query) {
    if("worldsaidc2m3_undercoaster" in query) { return query.worldsaidc2m3_undercoaster != 1; } 
    else return true;
}
function IsNotSaidc2m3_tracks01(query) {
    if("worldsaidc2m3_tracks01" in query) { return query.worldsaidc2m3_tracks01 != 1; } 
    else return true;
}
function IsNotSaidc2m3_tracks02(query) {
    if("worldsaidc2m3_tracks02" in query) { return query.worldsaidc2m3_tracks02 != 1; } 
    else return true;
}
function IsNotSaidc2m3_tracks03(query) {
    if("worldsaidc2m3_tracks03" in query) { return query.worldsaidc2m3_tracks03 != 1; } 
    else return true;
}
function IsNotSaidc2m3_tracks04(query) {
    if("worldsaidc2m3_tracks04" in query) { return query.worldsaidc2m3_tracks04 != 1; } 
    else return true;
}
function IsNotSaidc2m3_tracks05(query) {
    if("worldsaidc2m3_tracks05" in query) { return query.worldsaidc2m3_tracks05 != 1; } 
    else return true;
}
function IsNotSaidc2m3_tracks06(query) {
    if("worldsaidc2m3_tracks06" in query) { return query.worldsaidc2m3_tracks06 != 1; } 
    else return true;
}
function IsNotSaidc2m3_tracks07(query) {
    if("worldsaidc2m3_tracks07" in query) { return query.worldsaidc2m3_tracks07 != 1; } 
    else return true;
}
function IsNotSaidc2m3_tracks08(query) {
    if("worldsaidc2m3_tracks08" in query) { return query.worldsaidc2m3_tracks08 != 1; } 
    else return true;
}
function IsNotSaidc2m3_coasteroff(query) {
    if("worldsaidc2m3_coasteroff" in query) { return query.worldsaidc2m3_coasteroff != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1FireRoom(query) {
    if("worldsaidworldc1m1fireroom" in query) { return query.worldsaidworldc1m1fireroom != 1; } 
    else return true;
}
function IsNotSaidC1M1OverTable(query) {
    if("worldsaidc1m1overtable" in query) { return query.worldsaidc1m1overtable != 1; } 
    else return true;
}
function IsNotSaidc2m4_moustachio(query) {
    if("worldsaidc2m4_moustachio" in query) { return query.worldsaidc2m4_moustachio != 1; } 
    else return true;
}
function IsNotSaidc2m4_bumpercars(query) {
    if("worldsaidc2m4_bumpercars" in query) { return query.worldsaidc2m4_bumpercars != 1; } 
    else return true;
}
function IsNotSaidc2m4_stadium(query) {
    if("worldsaidc2m4_stadium" in query) { return query.worldsaidc2m4_stadium != 1; } 
    else return true;
}
function IsNotSaidc2m4_whacker(query) {
    if("worldsaidc2m4_whacker" in query) { return query.worldsaidc2m4_whacker != 1; } 
    else return true;
}
function IsNotSaidc2m4_barnentry(query) {
    if("worldsaidc2m4_barnentry" in query) { return query.worldsaidc2m4_barnentry != 1; } 
    else return true;
}
function IsNotSaidc2m4_pens(query) {
    if("worldsaidc2m4_pens" in query) { return query.worldsaidc2m4_pens != 1; } 
    else return true;
}
function IsNotSaidc2m4_pendoor(query) {
    if("worldsaidc2m4_pendoor" in query) { return query.worldsaidc2m4_pendoor != 1; } 
    else return true;
}
function IsNotSaidc2m4_upbarn(query) {
    if("worldsaidc2m4_upbarn" in query) { return query.worldsaidc2m4_upbarn != 1; } 
    else return true;
}
function IsNotSaidc2m4_onroof(query) {
    if("worldsaidc2m4_onroof" in query) { return query.worldsaidc2m4_onroof != 1; } 
    else return true;
}
function IsNotSaidc2m4_evac(query) {
    if("worldsaidc2m4_evac" in query) { return query.worldsaidc2m4_evac != 1; } 
    else return true;
}
function IsNotSaidc2m4_gatebutton(query) {
    if("worldsaidc2m4_gatebutton" in query) { return query.worldsaidc2m4_gatebutton != 1; } 
    else return true;
}
function IsNotSaidc2m5_button2(query) {
    if("worldsaidc2m5_button2" in query) { return query.worldsaidc2m5_button2 != 1; } 
    else return true;
}
function IsNotSaidc2m5_seestage(query) {
    if("worldsaidc2m5_seestage" in query) { return query.worldsaidc2m5_seestage != 1; } 
    else return true;
}
function IsNotSaidWorldC1M1KnowBoomer(query) {
    if("worldsaidworldc1m1knowboomer" in query) { return query.worldsaidworldc1m1knowboomer != 1; } 
    else return true;
}
function IsNotSaidC1M1SearchRooms(query) {
    if("worldsaidc1m1searchrooms" in query) { return query.worldsaidc1m1searchrooms != 1; } 
    else return true;
}
function IsNotSaidC1M1ThroughThisDoor(query) {
    if("worldsaidc1m1throughthisdoor" in query) { return query.worldsaidc1m1throughthisdoor != 1; } 
    else return true;
}
function IsNotSaidC1M1AroundFire(query) {
    if("worldsaidc1m1aroundfire" in query) { return query.worldsaidc1m1aroundfire != 1; } 
    else return true;
}
function IsNotSaidC1M3UpEscalator1(query) {
    if("worldsaidc1m3upescalator1" in query) { return query.worldsaidc1m3upescalator1 != 1; } 
    else return true;
}
function IsNotSaidC1M3ThroughHere(query) {
    if("worldsaidc1m3throughhere" in query) { return query.worldsaidc1m3throughhere != 1; } 
    else return true;
}
function IsNotSaidC1M3DownTheEscalator(query) {
    if("worldsaidc1m3downtheescalator" in query) { return query.worldsaidc1m3downtheescalator != 1; } 
    else return true;
}
function IsNotSaidC1M3ThisWay(query) {
    if("worldsaidc1m3thisway" in query) { return query.worldsaidc1m3thisway != 1; } 
    else return true;
}
function IsNotSaidC1M3FoodCourtOkay(query) {
    if("worldsaidc1m3foodcourtokay" in query) { return query.worldsaidc1m3foodcourtokay != 1; } 
    else return true;
}
function IsSaidC1M3CoachFoodCourt(query) {
    if("worldsaidc1m3coachfoodcourt" in query) { return query.worldsaidc1m3coachfoodcourt == 1; } 
    else return false;
}
function IsNotSaidC1M3FoodCourtNotOkay(query) {
    if("worldsaidc1m3foodcourtnotokay" in query) { return query.worldsaidc1m3foodcourtnotokay != 1; } 
    else return true;
}
function IsNotSaidC1M3UpEscalator2(query) {
    if("worldsaidc1m3upescalator2" in query) { return query.worldsaidc1m3upescalator2 != 1; } 
    else return true;
}
function IsNotSaidC1M3OverHere(query) {
    if("worldsaidc1m3overhere" in query) { return query.worldsaidc1m3overhere != 1; } 
    else return true;
}
function IsNotSaidC1M3SearchRooms(query) {
    if("worldsaidc1m3searchrooms" in query) { return query.worldsaidc1m3searchrooms != 1; } 
    else return true;
}
function IsNotSaidC1M3CarefulWindows(query) {
    if("worldsaidc1m3carefulwindows" in query) { return query.worldsaidc1m3carefulwindows != 1; } 
    else return true;
}
function IsNotSaidC1M3TurnOffAlarm1(query) {
    if("worldsaidc1m3turnoffalarm1" in query) { return query.worldsaidc1m3turnoffalarm1 != 1; } 
    else return true;
}
function IsNotSaidC1M3TurnOffAlarm2(query) {
    if("worldsaidc1m3turnoffalarm2" in query) { return query.worldsaidc1m3turnoffalarm2 != 1; } 
    else return true;
}
function IsNotSaidC1M3DownHere(query) {
    if("worldsaidc1m3downhere" in query) { return query.worldsaidc1m3downhere != 1; } 
    else return true;
}
function IsNotSaidC1M3CEDAGone(query) {
    if("worldsaidc1m3cedagone" in query) { return query.worldsaidc1m3cedagone != 1; } 
    else return true;
}
function IsNotSaidC1M3UpEscalator3(query) {
    if("worldsaidc1m3upescalator3" in query) { return query.worldsaidc1m3upescalator3 != 1; } 
    else return true;
}
function IsNotSaidC1M3DiscoPants(query) {
    if("worldsaidc1m3discopants" in query) { return query.worldsaidc1m3discopants != 1; } 
    else return true;
}
function IsNotSaidc5m2park(query) {
    if("worldsaidc5m2park" in query) { return query.worldsaidc5m2park != 1; } 
    else return true;
}
function IsNotSaidc5m2freeway(query) {
    if("worldsaidc5m2freeway" in query) { return query.worldsaidc5m2freeway != 1; } 
    else return true;
}
function IsNotSaidc5m2busstation(query) {
    if("worldsaidc5m2busstation" in query) { return query.worldsaidc5m2busstation != 1; } 
    else return true;
}
function IsNotSaidc5m3freeway(query) {
    if("worldsaidc5m3freeway" in query) { return query.worldsaidc5m3freeway != 1; } 
    else return true;
}
function IsNotSaidc5m3upsteps(query) {
    if("worldsaidc5m3upsteps" in query) { return query.worldsaidc5m3upsteps != 1; } 
    else return true;
}
function IsNotSaidc5m3warzone(query) {
    if("worldsaidc5m3warzone" in query) { return query.worldsaidc5m3warzone != 1; } 
    else return true;
}
function IsNotSaidc5m3sniper(query) {
    if("worldsaidc5m3sniper" in query) { return query.worldsaidc5m3sniper != 1; } 
    else return true;
}
function IsNotSaidc5m3bus(query) {
    if("worldsaidc5m3bus" in query) { return query.worldsaidc5m3bus != 1; } 
    else return true;
}
function IsNotSaidc5m3manhole(query) {
    if("worldsaidc5m3manhole" in query) { return query.worldsaidc5m3manhole != 1; } 
    else return true;
}
function IsNotSaidc5m3insewer(query) {
    if("worldsaidc5m3insewer" in query) { return query.worldsaidc5m3insewer != 1; } 
    else return true;
}
function IsNotSaidc5m3upladder(query) {
    if("worldsaidc5m3upladder" in query) { return query.worldsaidc5m3upladder != 1; } 
    else return true;
}
function IsNotSaidc5m3seegraveyard(query) {
    if("worldsaidc5m3seegraveyard" in query) { return query.worldsaidc5m3seegraveyard != 1; } 
    else return true;
}
function IsNotSaidc5m3offhighway(query) {
    if("worldsaidc5m3offhighway" in query) { return query.worldsaidc5m3offhighway != 1; } 
    else return true;
}
function IsNotSaidC1M3DownHere2(query) {
    if("worldsaidc1m3downhere2" in query) { return query.worldsaidc1m3downhere2 != 1; } 
    else return true;
}
function IsNotSaidC1M3AlarmDoors(query) {
    if("worldsaidc1m3alarmdoors" in query) { return query.worldsaidc1m3alarmdoors != 1; } 
    else return true;
}
function IsNotSaidC1M3TurnOffAlarm3(query) {
    if("worldsaidc1m3turnoffalarm3" in query) { return query.worldsaidc1m3turnoffalarm3 != 1; } 
    else return true;
}
function IsNotSaidc5m3crashedheli(query) {
    if("worldsaidc5m3crashedheli" in query) { return query.worldsaidc5m3crashedheli != 1; } 
    else return true;
}
function IsNotSaidc5m3sewercomment(query) {
    if("worldsaidc5m3sewercomment" in query) { return query.worldsaidc5m3sewercomment != 1; } 
    else return true;
}
function IsNotSaidc5m4pooltable(query) {
    if("worldsaidc5m4pooltable" in query) { return query.worldsaidc5m4pooltable != 1; } 
    else return true;
}
function IsNotSaidc5m4alley(query) {
    if("worldsaidc5m4alley" in query) { return query.worldsaidc5m4alley != 1; } 
    else return true;
}
function IsNotSaidc5m4inminifinale(query) {
    if("worldsaidc5m4inminifinale" in query) { return query.worldsaidc5m4inminifinale != 1; } 
    else return true;
}
function IsNotSaidc5m4seebridge(query) {
    if("worldsaidc5m4seebridge" in query) { return query.worldsaidc5m4seebridge != 1; } 
    else return true;
}
function IsNotSaidC5M5Truck(query) {
    if("worldsaidc5m5truck" in query) { return query.worldsaidc5m5truck != 1; } 
    else return true;
}
function IsNotSaidC3M1EarlsGatorVillage(query) {
    if("worldsaidc3m1earlsgatorvillage" in query) { return query.worldsaidc3m1earlsgatorvillage != 1; } 
    else return true;
}
function IsNotSaidC3M1NoSwimming(query) {
    if("worldsaidc3m1noswimming" in query) { return query.worldsaidc3m1noswimming != 1; } 
    else return true;
}
function IsNotSaidC3M2WhereAreWe(query) {
    if("worldsaidc3m2wherearewe" in query) { return query.worldsaidc3m2wherearewe != 1; } 
    else return true;
}
function IsNotSaidC3M2Bathtub(query) {
    if("worldsaidc3m2bathtub" in query) { return query.worldsaidc3m2bathtub != 1; } 
    else return true;
}
function IsNotSaidc5m2people(query) {
    if("worldsaidc5m2people" in query) { return query.worldsaidc5m2people != 1; } 
    else return true;
}
function IsNotSaidc3m4radio(query) {
    if("worldsaidc3m4radio" in query) { return query.worldsaidc3m4radio != 1; } 
    else return true;
}
function IsNotSaidc3m4house(query) {
    if("worldsaidc3m4house" in query) { return query.worldsaidc3m4house != 1; } 
    else return true;
}
function IsNotSaidc3m4downroad(query) {
    if("worldsaidc3m4downroad" in query) { return query.worldsaidc3m4downroad != 1; } 
    else return true;
}
function IsNotSaidc3m4scaffold(query) {
    if("worldsaidc3m4scaffold" in query) { return query.worldsaidc3m4scaffold != 1; } 
    else return true;
}
function IsNotSaidc3m4shacks(query) {
    if("worldsaidc3m4shacks" in query) { return query.worldsaidc3m4shacks != 1; } 
    else return true;
}
function IsNotSaidc3m4outhouse(query) {
    if("worldsaidc3m4outhouse" in query) { return query.worldsaidc3m4outhouse != 1; } 
    else return true;
}
function IsNotSaidc3m4inhouse(query) {
    if("worldsaidc3m4inhouse" in query) { return query.worldsaidc3m4inhouse != 1; } 
    else return true;
}
function IsNotSaidc3m2_parachutist(query) {
    if("worldsaidc3m2_parachutist" in query) { return query.worldsaidc3m2_parachutist != 1; } 
    else return true;
}
function IsNotSaidC3M3SearchHouses(query) {
    if("worldsaidc3m3searchhouses" in query) { return query.worldsaidc3m3searchhouses != 1; } 
    else return true;
}
function IsNotSaidC3M3ThroughHere(query) {
    if("worldsaidc3m3throughhere" in query) { return query.worldsaidc3m3throughhere != 1; } 
    else return true;
}
function IsNotSaidC3M3Bodies(query) {
    if("worldsaidc3m3bodies" in query) { return query.worldsaidc3m3bodies != 1; } 
    else return true;
}
function IsNotSaidC3M3Stairs(query) {
    if("worldsaidc3m3stairs" in query) { return query.worldsaidc3m3stairs != 1; } 
    else return true;
}
function IsNotSaidC3M3Unsanitary(query) {
    if("worldsaidc3m3unsanitary" in query) { return query.worldsaidc3m3unsanitary != 1; } 
    else return true;
}
function IsNotSaidC3M3Stairs2(query) {
    if("worldsaidc3m3stairs2" in query) { return query.worldsaidc3m3stairs2 != 1; } 
    else return true;
}
function IsNotSaidC3M3ThroughThisHouse(query) {
    if("worldsaidc3m3throughthishouse" in query) { return query.worldsaidc3m3throughthishouse != 1; } 
    else return true;
}
function IsNotSaidC3M3UsePlanks(query) {
    if("worldsaidc3m3useplanks" in query) { return query.worldsaidc3m3useplanks != 1; } 
    else return true;
}
function IsNotSaidC3M3MoreShacks(query) {
    if("worldsaidc3m3moreshacks" in query) { return query.worldsaidc3m3moreshacks != 1; } 
    else return true;
}
function IsNotSaidC3M3UpHere(query) {
    if("worldsaidc3m3uphere" in query) { return query.worldsaidc3m3uphere != 1; } 
    else return true;
}
function IsNotSaidC3M3LowerGate(query) {
    if("worldsaidc3m3lowergate" in query) { return query.worldsaidc3m3lowergate != 1; } 
    else return true;
}
function IsNotSaidC3M3StayUpHere(query) {
    if("worldsaidc3m3stayuphere" in query) { return query.worldsaidc3m3stayuphere != 1; } 
    else return true;
}
function IsNotSaidC3M3ThisWay(query) {
    if("worldsaidc3m3thisway" in query) { return query.worldsaidc3m3thisway != 1; } 
    else return true;
}
function IsNotSaidC3M3BridgeDown(query) {
    if("worldsaidc3m3bridgedown" in query) { return query.worldsaidc3m3bridgedown != 1; } 
    else return true;
}
function Isc5m4_01(query) {
    if("subject" in query) { return query.subject == "c5m4_01"; } 
    else return false;
}
function Is0502cemetary(query) {
    if("subject" in query) { return query.subject == "0502cemetary"; } 
    else return false;
}
function IsWorldSignDeadlyForce(query) {
    if("subject" in query) { return query.subject == "worldsigndeadlyforce"; } 
    else return false;
}
function IsWorldSignRestrictedArea(query) {
    if("subject" in query) { return query.subject == "worldsignrestrictedarea"; } 
    else return false;
}
function IsWorldSignsInfectedDetected(query) {
    if("subject" in query) { return query.subject == "worldsignsinfecteddetected"; } 
    else return false;
}
function IsWorldSignColdBeer(query) {
    if("subject" in query) { return query.subject == "worldsigncoldbeer"; } 
    else return false;
}
function IsWorldSignReportUnusual(query) {
    if("subject" in query) { return query.subject == "worldsignreportunusual"; } 
    else return false;
}
function IsWorldSignContagious(query) {
    if("subject" in query) { return query.subject == "worldsigncontagious"; } 
    else return false;
}
function IsWorldSignReportSick(query) {
    if("subject" in query) { return query.subject == "worldsignreportsick"; } 
    else return false;
}
function IsWorldC502Horse(query) {
    if("subject" in query) { return query.subject == "worldc502horse"; } 
    else return false;
}
function IsWorldC502Alley(query) {
    if("subject" in query) { return query.subject == "worldc502alley"; } 
    else return false;
}
function IsWorldC502Smell(query) {
    if("subject" in query) { return query.subject == "worldc502smell"; } 
    else return false;
}
function IsWorldC502SmellBath(query) {
    if("subject" in query) { return query.subject == "worldc502smellbath"; } 
    else return false;
}
function IsWorldC502NotZombies(query) {
    if("subject" in query) { return query.subject == "worldc502notzombies"; } 
    else return false;
}
function IsWorldSignFormLine(query) {
    if("subject" in query) { return query.subject == "worldsignformline"; } 
    else return false;
}
function IsWorldSignStayInGroup(query) {
    if("subject" in query) { return query.subject == "worldsignstayingroup"; } 
    else return false;
}
function IsWorldC502AlarmButton(query) {
    if("subject" in query) { return query.subject == "worldc502alarmbutton"; } 
    else return false;
}
function IsWorldC502BusStory(query) {
    if("subject" in query) { return query.subject == "worldc502busstory"; } 
    else return false;
}
function IsWorldC502SpotSafeHouse(query) {
    if("subject" in query) { return query.subject == "worldc502spotsafehouse"; } 
    else return false;
}
function IsWorldSignPhotography(query) {
    if("subject" in query) { return query.subject == "worldsignphotography"; } 
    else return false;
}
function IsWorldSignWhereIsCEDA(query) {
    if("subject" in query) { return query.subject == "worldsignwhereisceda"; } 
    else return false;
}
function IsWorldSignC5AlarmWillSound(query) {
    if("subject" in query) { return query.subject == "worldsignc5alarmwillsound"; } 
    else return false;
}
function IsWorldC3M1Path01(query) {
    if("subject" in query) { return query.subject == "worldc3m1path01"; } 
    else return false;
}
function IsWorldC3M1Path01a(query) {
    if("subject" in query) { return query.subject == "worldc3m1path01a"; } 
    else return false;
}
function IsWorldC3M1FerryNag(query) {
    if("subject" in query) { return query.subject == "worldc3m1ferrynag"; } 
    else return false;
}
function IsWorldC3M1FerryNaga(query) {
    if("subject" in query) { return query.subject == "worldc3m1ferrynaga"; } 
    else return false;
}
function IsWorldC3M1FerryCrossing(query) {
    if("subject" in query) { return query.subject == "worldc3m1ferrycrossing"; } 
    else return false;
}
function IsWorldC3M1CheckingHouses(query) {
    if("subject" in query) { return query.subject == "worldc3m1checkinghouses"; } 
    else return false;
}
function IsWorldC3M1Walkways(query) {
    if("subject" in query) { return query.subject == "worldc3m1walkways"; } 
    else return false;
}
function IsWorldC3M1Stairs(query) {
    if("subject" in query) { return query.subject == "worldc3m1stairs"; } 
    else return false;
}
function IsWorldC3M1WhichWay(query) {
    if("subject" in query) { return query.subject == "worldc3m1whichway"; } 
    else return false;
}
function IsWorldC3M1WeShouldGetBackUp(query) {
    if("subject" in query) { return query.subject == "worldc3m1weshouldgetbackup"; } 
    else return false;
}
function IsWorldC3M1StayOn(query) {
    if("subject" in query) { return query.subject == "worldc3m1stayon"; } 
    else return false;
}
function IsWorldC3M1FeedGator(query) {
    if("subject" in query) { return query.subject == "worldc3m1feedgator"; } 
    else return false;
}
function IsWorldC3M1AmmoUp(query) {
    if("subject" in query) { return query.subject == "worldc3m1ammoup"; } 
    else return false;
}
function IsWorldC3M1PlanksRight(query) {
    if("subject" in query) { return query.subject == "worldc3m1planksright"; } 
    else return false;
}
function IsWorldC3M1Litter(query) {
    if("subject" in query) { return query.subject == "worldc3m1litter"; } 
    else return false;
}
function IsWorldC3M1LightsOn(query) {
    if("subject" in query) { return query.subject == "worldc3m1lightson"; } 
    else return false;
}
function IsC3M2Start(query) {
    if("subject" in query) { return query.subject == "c3m2start"; } 
    else return false;
}
function IsC3M2StartDry(query) {
    if("subject" in query) { return query.subject == "c3m2startdry"; } 
    else return false;
}
function IsC3M2OverTree(query) {
    if("subject" in query) { return query.subject == "c3m2overtree"; } 
    else return false;
}
function IsC3M2PlaneCrash(query) {
    if("subject" in query) { return query.subject == "c3m2planecrash"; } 
    else return false;
}
function IsC3M2PlaneDoorNag(query) {
    if("subject" in query) { return query.subject == "c3m2planedoornag"; } 
    else return false;
}
function IsC3M2PlaneDoorNaga(query) {
    if("subject" in query) { return query.subject == "c3m2planedoornaga"; } 
    else return false;
}
function IsC3M2SickOfSwamp(query) {
    if("subject" in query) { return query.subject == "c3m2sickofswamp"; } 
    else return false;
}
function IsC3M2UnderWaterShack(query) {
    if("subject" in query) { return query.subject == "c3m2underwatershack"; } 
    else return false;
}
function IsC3M2Road(query) {
    if("subject" in query) { return query.subject == "c3m2road"; } 
    else return false;
}
function IsC3M2Village1(query) {
    if("subject" in query) { return query.subject == "c3m2village1"; } 
    else return false;
}
function IsC3M2Village2(query) {
    if("subject" in query) { return query.subject == "c3m2village2"; } 
    else return false;
}
function IsC5M4TractorNag(query) {
    if("subject" in query) { return query.subject == "c5m4tractornag"; } 
    else return false;
}
function Isremark_caralarm(query) {
    if("subject" in query) { return query.subject == "remark_caralarm"; } 
    else return false;
}
function IsRemarkWorldC1M2SpotGunStore(query) {
    if("subject" in query) { return query.subject == "remarkworldc1m2spotgunstore"; } 
    else return false;
}
function IsRemarkWorldC1M2InsideGunStore(query) {
    if("subject" in query) { return query.subject == "remarkworldc1m2insidegunstore"; } 
    else return false;
}
function Ispathc2m1_billboard(query) {
    if("subject" in query) { return query.subject == "pathc2m1_billboard"; } 
    else return false;
}
function Ispathc2m1_abandonedcars(query) {
    if("subject" in query) { return query.subject == "pathc2m1_abandonedcars"; } 
    else return false;
}
function Isc4m1_InBurgerTank(query) {
    if("subject" in query) { return query.subject == "c4m1_inburgertank"; } 
    else return false;
}
function Isc4m1_boat(query) {
    if("subject" in query) { return query.subject == "c4m1_boat"; } 
    else return false;
}
function Isc4m2_streetblocked(query) {
    if("subject" in query) { return query.subject == "c4m2_streetblocked"; } 
    else return false;
}
function Isc4m2_millentrance(query) {
    if("subject" in query) { return query.subject == "c4m2_millentrance"; } 
    else return false;
}
function Isc4m2_millentranceexit(query) {
    if("subject" in query) { return query.subject == "c4m2_millentranceexit"; } 
    else return false;
}
function Isc4m2_upramp(query) {
    if("subject" in query) { return query.subject == "c4m2_upramp"; } 
    else return false;
}
function Isc4m2_waterpool(query) {
    if("subject" in query) { return query.subject == "c4m2_waterpool"; } 
    else return false;
}
function Isc4m2_upthestairs(query) {
    if("subject" in query) { return query.subject == "c4m2_upthestairs"; } 
    else return false;
}
function Isc4m2_seegasstation(query) {
    if("subject" in query) { return query.subject == "c4m2_seegasstation"; } 
    else return false;
}
function Isc4m2_useelevator(query) {
    if("subject" in query) { return query.subject == "c4m2_useelevator"; } 
    else return false;
}
function Isc4m2_gasinsidesign(query) {
    if("subject" in query) { return query.subject == "c4m2_gasinsidesign"; } 
    else return false;
}
function Isc4m2_weather(query) {
    if("subject" in query) { return query.subject == "c4m2_weather"; } 
    else return false;
}
function Isc4m3_rain(query) {
    if("subject" in query) { return query.subject == "c4m3_rain"; } 
    else return false;
}
function Isc4m3_cane(query) {
    if("subject" in query) { return query.subject == "c4m3_cane"; } 
    else return false;
}
function Isc4m3_elevator(query) {
    if("subject" in query) { return query.subject == "c4m3_elevator"; } 
    else return false;
}
function Isc4m3_downstairs(query) {
    if("subject" in query) { return query.subject == "c4m3_downstairs"; } 
    else return false;
}
function Isc4m3_flooded(query) {
    if("subject" in query) { return query.subject == "c4m3_flooded"; } 
    else return false;
}
function Isc4m3_flooded2(query) {
    if("subject" in query) { return query.subject == "c4m3_flooded2"; } 
    else return false;
}
function Isc4m3_overtank(query) {
    if("subject" in query) { return query.subject == "c4m3_overtank"; } 
    else return false;
}
function Isc4m3_thisway(query) {
    if("subject" in query) { return query.subject == "c4m3_thisway"; } 
    else return false;
}
function Isc4m3_downhere(query) {
    if("subject" in query) { return query.subject == "c4m3_downhere"; } 
    else return false;
}
function Isc4m3_crosshere(query) {
    if("subject" in query) { return query.subject == "c4m3_crosshere"; } 
    else return false;
}
function Isc4m3_uppipes(query) {
    if("subject" in query) { return query.subject == "c4m3_uppipes"; } 
    else return false;
}
function Isc4m3_ducatelsign(query) {
    if("subject" in query) { return query.subject == "c4m3_ducatelsign"; } 
    else return false;
}
function Isc4m4_flooded(query) {
    if("subject" in query) { return query.subject == "c4m4_flooded"; } 
    else return false;
}
function Isc4m4_useroofs(query) {
    if("subject" in query) { return query.subject == "c4m4_useroofs"; } 
    else return false;
}
function Isc4m4_porchlight(query) {
    if("subject" in query) { return query.subject == "c4m4_porchlight"; } 
    else return false;
}
function Isc4m4_garagesale(query) {
    if("subject" in query) { return query.subject == "c4m4_garagesale"; } 
    else return false;
}
function Isc4m4_garagesale2(query) {
    if("subject" in query) { return query.subject == "c4m4_garagesale2"; } 
    else return false;
}
function Isc4m4_playground(query) {
    if("subject" in query) { return query.subject == "c4m4_playground"; } 
    else return false;
}
function Isc4m4_truckwreck(query) {
    if("subject" in query) { return query.subject == "c4m4_truckwreck"; } 
    else return false;
}
function Isc4m5_burgertank(query) {
    if("subject" in query) { return query.subject == "c4m5_burgertank"; } 
    else return false;
}
function IsWorldC1M1First(query) {
    if("subject" in query) { return query.subject == "worldc1m1first"; } 
    else return false;
}
function IsWorldC1M1StairsSign(query) {
    if("subject" in query) { return query.subject == "worldc1m1stairssign"; } 
    else return false;
}
function IsWorldC1M1Ledge(query) {
    if("subject" in query) { return query.subject == "worldc1m1ledge"; } 
    else return false;
}
function IsWorldC1M1DownStairs(query) {
    if("subject" in query) { return query.subject == "worldc1m1downstairs"; } 
    else return false;
}
function IsWorldC1M1ElevatorBroken(query) {
    if("subject" in query) { return query.subject == "worldc1m1elevatorbroken"; } 
    else return false;
}
function IsWorldC1M1ElevatorWorking(query) {
    if("subject" in query) { return query.subject == "worldc1m1elevatorworking"; } 
    else return false;
}
function IsWorldC1M2Abandoned(query) {
    if("subject" in query) { return query.subject == "worldc1m2abandoned"; } 
    else return false;
}
function IsWorldC1M2BigGuns(query) {
    if("subject" in query) { return query.subject == "worldc1m2bigguns"; } 
    else return false;
}
function Isc2m1_carwreckage(query) {
    if("subject" in query) { return query.subject == "c2m1_carwreckage"; } 
    else return false;
}
function Isc2m1_busblock(query) {
    if("subject" in query) { return query.subject == "c2m1_busblock"; } 
    else return false;
}
function Isc2m1_offramp(query) {
    if("subject" in query) { return query.subject == "c2m1_offramp"; } 
    else return false;
}
function Isc2m1_searchlights(query) {
    if("subject" in query) { return query.subject == "c2m1_searchlights"; } 
    else return false;
}
function Isc2m1_motelsign(query) {
    if("subject" in query) { return query.subject == "c2m1_motelsign"; } 
    else return false;
}
function Isc2m1_riders(query) {
    if("subject" in query) { return query.subject == "c2m1_riders"; } 
    else return false;
}
function Isc2m1_pool(query) {
    if("subject" in query) { return query.subject == "c2m1_pool"; } 
    else return false;
}
function Isc2m1_upstairs(query) {
    if("subject" in query) { return query.subject == "c2m1_upstairs"; } 
    else return false;
}
function Isc2m1_checkrooms(query) {
    if("subject" in query) { return query.subject == "c2m1_checkrooms"; } 
    else return false;
}
function Isc2m1_downstairs(query) {
    if("subject" in query) { return query.subject == "c2m1_downstairs"; } 
    else return false;
}
function Isc2m1_bridgeout(query) {
    if("subject" in query) { return query.subject == "c2m1_bridgeout"; } 
    else return false;
}
function Isc2m1_throughwindow(query) {
    if("subject" in query) { return query.subject == "c2m1_throughwindow"; } 
    else return false;
}
function Isc2m1_throughhere(query) {
    if("subject" in query) { return query.subject == "c2m1_throughhere"; } 
    else return false;
}
function Isc2m1_campsite(query) {
    if("subject" in query) { return query.subject == "c2m1_campsite"; } 
    else return false;
}
function Isc2m1_cliff(query) {
    if("subject" in query) { return query.subject == "c2m1_cliff"; } 
    else return false;
}
function Isc2m1_uphill(query) {
    if("subject" in query) { return query.subject == "c2m1_uphill"; } 
    else return false;
}
function Isc2m1_hillcomplain(query) {
    if("subject" in query) { return query.subject == "c2m1_hillcomplain"; } 
    else return false;
}
function Isc2m1_park(query) {
    if("subject" in query) { return query.subject == "c2m1_park"; } 
    else return false;
}
function Isc2m1_throughmotel(query) {
    if("subject" in query) { return query.subject == "c2m1_throughmotel"; } 
    else return false;
}
function Isc2m1_followriver(query) {
    if("subject" in query) { return query.subject == "c2m1_followriver"; } 
    else return false;
}
function IsWorldC1M1FireSpreading(query) {
    if("subject" in query) { return query.subject == "worldc1m1firespreading"; } 
    else return false;
}
function IsWorldC1M1CedaMaps(query) {
    if("subject" in query) { return query.subject == "worldc1m1cedamaps"; } 
    else return false;
}
function Isc2m2_entrancesign(query) {
    if("subject" in query) { return query.subject == "c2m2_entrancesign"; } 
    else return false;
}
function Isc2m2_womensroom(query) {
    if("subject" in query) { return query.subject == "c2m2_womensroom"; } 
    else return false;
}
function Isc2m2_candymachine(query) {
    if("subject" in query) { return query.subject == "c2m2_candymachine"; } 
    else return false;
}
function Isc2m2_cottoncandy(query) {
    if("subject" in query) { return query.subject == "c2m2_cottoncandy"; } 
    else return false;
}
function Isc2m2_cottoncandy2(query) {
    if("subject" in query) { return query.subject == "c2m2_cottoncandy2"; } 
    else return false;
}
function Isc2m2_okra(query) {
    if("subject" in query) { return query.subject == "c2m2_okra"; } 
    else return false;
}
function Isc2m2_kettlekorn(query) {
    if("subject" in query) { return query.subject == "c2m2_kettlekorn"; } 
    else return false;
}
function Isc2m2_miscfood(query) {
    if("subject" in query) { return query.subject == "c2m2_miscfood"; } 
    else return false;
}
function Isc2m2_kiddieland(query) {
    if("subject" in query) { return query.subject == "c2m2_kiddieland"; } 
    else return false;
}
function Isc2m2_burgers(query) {
    if("subject" in query) { return query.subject == "c2m2_burgers"; } 
    else return false;
}
function Isc2m2_cobbler(query) {
    if("subject" in query) { return query.subject == "c2m2_cobbler"; } 
    else return false;
}
function Isc2m2_favoriteride(query) {
    if("subject" in query) { return query.subject == "c2m2_favoriteride"; } 
    else return false;
}
function Isc2m2_lilpeanut(query) {
    if("subject" in query) { return query.subject == "c2m2_lilpeanut"; } 
    else return false;
}
function Isc2m2_ladder(query) {
    if("subject" in query) { return query.subject == "c2m2_ladder"; } 
    else return false;
}
function Isc2m2_backalley(query) {
    if("subject" in query) { return query.subject == "c2m2_backalley"; } 
    else return false;
}
function Isc2m2_topofslide(query) {
    if("subject" in query) { return query.subject == "c2m2_topofslide"; } 
    else return false;
}
function Isc2m2_steake(query) {
    if("subject" in query) { return query.subject == "c2m2_steake"; } 
    else return false;
}
function Isc2m2_carousel(query) {
    if("subject" in query) { return query.subject == "c2m2_carousel"; } 
    else return false;
}
function Isc2m2_carouselbutton(query) {
    if("subject" in query) { return query.subject == "c2m2_carouselbutton"; } 
    else return false;
}
function Isc2m2_okra2(query) {
    if("subject" in query) { return query.subject == "c2m2_okra2"; } 
    else return false;
}
function Isc2m2_thistall(query) {
    if("subject" in query) { return query.subject == "c2m2_thistall"; } 
    else return false;
}
function IsWorldC1M1DoorFire(query) {
    if("subject" in query) { return query.subject == "worldc1m1doorfire"; } 
    else return false;
}
function IsWorldC1M1DownHere(query) {
    if("subject" in query) { return query.subject == "worldc1m1downhere"; } 
    else return false;
}
function IsWorldC1M2MallThisWay(query) {
    if("subject" in query) { return query.subject == "worldc1m2mallthisway"; } 
    else return false;
}
function IsWorldC1M2InHere(query) {
    if("subject" in query) { return query.subject == "worldc1m2inhere"; } 
    else return false;
}
function IsWorldC1M2DownStairs(query) {
    if("subject" in query) { return query.subject == "worldc1m2downstairs"; } 
    else return false;
}
function IsWorldC1M2Dumpster(query) {
    if("subject" in query) { return query.subject == "worldc1m2dumpster"; } 
    else return false;
}
function IsWorldC1M2JumpTruck(query) {
    if("subject" in query) { return query.subject == "worldc1m2jumptruck"; } 
    else return false;
}
function IsWorldC1M2GunStoreClose(query) {
    if("subject" in query) { return query.subject == "worldc1m2gunstoreclose"; } 
    else return false;
}
function IsWorldC1M2UpStairs(query) {
    if("subject" in query) { return query.subject == "worldc1m2upstairs"; } 
    else return false;
}
function IsWorldC1M2MallSignHere(query) {
    if("subject" in query) { return query.subject == "worldc1m2mallsignhere"; } 
    else return false;
}
function IsWorldC1M2MadeIt(query) {
    if("subject" in query) { return query.subject == "worldc1m2madeit"; } 
    else return false;
}
function IsWorldC1M2Close(query) {
    if("subject" in query) { return query.subject == "worldc1m2close"; } 
    else return false;
}
function IsWorldC1M2PreStoreAlarm(query) {
    if("subject" in query) { return query.subject == "worldc1m2prestorealarm"; } 
    else return false;
}
function IsWorldC1M2StoreAlarm(query) {
    if("subject" in query) { return query.subject == "worldc1m2storealarm"; } 
    else return false;
}
function IsWorldC1M2DeliverCola(query) {
    if("subject" in query) { return query.subject == "worldc1m2delivercola"; } 
    else return false;
}
function Isc2m3_coollight(query) {
    if("subject" in query) { return query.subject == "c2m3_coollight"; } 
    else return false;
}
function Isc2m3_wayblocked(query) {
    if("subject" in query) { return query.subject == "c2m3_wayblocked"; } 
    else return false;
}
function Isc2m3_cementriver(query) {
    if("subject" in query) { return query.subject == "c2m3_cementriver"; } 
    else return false;
}
function Isc2m3_water(query) {
    if("subject" in query) { return query.subject == "c2m3_water"; } 
    else return false;
}
function Isc2m3_vent(query) {
    if("subject" in query) { return query.subject == "c2m3_vent"; } 
    else return false;
}
function Isc2m3_swanpileup(query) {
    if("subject" in query) { return query.subject == "c2m3_swanpileup"; } 
    else return false;
}
function Isc2m3_swanroom(query) {
    if("subject" in query) { return query.subject == "c2m3_swanroom"; } 
    else return false;
}
function Isc2m3_hole(query) {
    if("subject" in query) { return query.subject == "c2m3_hole"; } 
    else return false;
}
function Isc2m3_aroundblock(query) {
    if("subject" in query) { return query.subject == "c2m3_aroundblock"; } 
    else return false;
}
function Isc2m3_longesttunnel(query) {
    if("subject" in query) { return query.subject == "c2m3_longesttunnel"; } 
    else return false;
}
function Isc2m3_freshair(query) {
    if("subject" in query) { return query.subject == "c2m3_freshair"; } 
    else return false;
}
function Isc2m3_overfence(query) {
    if("subject" in query) { return query.subject == "c2m3_overfence"; } 
    else return false;
}
function Isc2m3_exittunnel(query) {
    if("subject" in query) { return query.subject == "c2m3_exittunnel"; } 
    else return false;
}
function Isc2m3_screamingoak(query) {
    if("subject" in query) { return query.subject == "c2m3_screamingoak"; } 
    else return false;
}
function Isc2m3_rubble(query) {
    if("subject" in query) { return query.subject == "c2m3_rubble"; } 
    else return false;
}
function Isc2m3_undercoaster(query) {
    if("subject" in query) { return query.subject == "c2m3_undercoaster"; } 
    else return false;
}
function Isc2m3_tracks01(query) {
    if("subject" in query) { return query.subject == "c2m3_tracks01"; } 
    else return false;
}
function Isc2m3_tracks02(query) {
    if("subject" in query) { return query.subject == "c2m3_tracks02"; } 
    else return false;
}
function Isc2m3_tracks03(query) {
    if("subject" in query) { return query.subject == "c2m3_tracks03"; } 
    else return false;
}
function Isc2m3_tracks04(query) {
    if("subject" in query) { return query.subject == "c2m3_tracks04"; } 
    else return false;
}
function Isc2m3_tracks05(query) {
    if("subject" in query) { return query.subject == "c2m3_tracks05"; } 
    else return false;
}
function Isc2m3_tracks06(query) {
    if("subject" in query) { return query.subject == "c2m3_tracks06"; } 
    else return false;
}
function Isc2m3_tracks07(query) {
    if("subject" in query) { return query.subject == "c2m3_tracks07"; } 
    else return false;
}
function Isc2m3_tracks08(query) {
    if("subject" in query) { return query.subject == "c2m3_tracks08"; } 
    else return false;
}
function Isc2m3_coasteroff(query) {
    if("subject" in query) { return query.subject == "c2m3_coasteroff"; } 
    else return false;
}
function Isc2m3_saferoomenda(query) {
    if("subject" in query) { return query.subject == "c2m3_saferoomenda"; } 
    else return false;
}
function IsWorldC1M1FireRoom(query) {
    if("subject" in query) { return query.subject == "worldc1m1fireroom"; } 
    else return false;
}
function IsC1M1OverTable(query) {
    if("subject" in query) { return query.subject == "c1m1overtable"; } 
    else return false;
}
function Isc2m4_moustachio(query) {
    if("subject" in query) { return query.subject == "c2m4_moustachio"; } 
    else return false;
}
function Isc2m4_bumpercars(query) {
    if("subject" in query) { return query.subject == "c2m4_bumpercars"; } 
    else return false;
}
function Isc2m4_stadium(query) {
    if("subject" in query) { return query.subject == "c2m4_stadium"; } 
    else return false;
}
function Isc2m4_whacker(query) {
    if("subject" in query) { return query.subject == "c2m4_whacker"; } 
    else return false;
}
function Isc2m4_barnentry(query) {
    if("subject" in query) { return query.subject == "c2m4_barnentry"; } 
    else return false;
}
function Isc2m4_pens(query) {
    if("subject" in query) { return query.subject == "c2m4_pens"; } 
    else return false;
}
function Isc2m4_pendoor(query) {
    if("subject" in query) { return query.subject == "c2m4_pendoor"; } 
    else return false;
}
function Isc2m4_upbarn(query) {
    if("subject" in query) { return query.subject == "c2m4_upbarn"; } 
    else return false;
}
function Isc2m4_onroof(query) {
    if("subject" in query) { return query.subject == "c2m4_onroof"; } 
    else return false;
}
function Isc2m4_evac(query) {
    if("subject" in query) { return query.subject == "c2m4_evac"; } 
    else return false;
}
function Isc2m4_gatebutton(query) {
    if("subject" in query) { return query.subject == "c2m4_gatebutton"; } 
    else return false;
}
function Isc2m5_button2(query) {
    if("subject" in query) { return query.subject == "c2m5_button2"; } 
    else return false;
}
function Isc2m5_seestage(query) {
    if("subject" in query) { return query.subject == "c2m5_seestage"; } 
    else return false;
}
function IsWorldC1M1KnowBoomer(query) {
    if("subject" in query) { return query.subject == "worldc1m1knowboomer"; } 
    else return false;
}
function IsC1M1SearchRooms(query) {
    if("subject" in query) { return query.subject == "c1m1searchrooms"; } 
    else return false;
}
function IsC1M1ThroughThisDoor(query) {
    if("subject" in query) { return query.subject == "c1m1throughthisdoor"; } 
    else return false;
}
function IsC1M1AroundFire(query) {
    if("subject" in query) { return query.subject == "c1m1aroundfire"; } 
    else return false;
}
function IsC1M3UpEscalator1(query) {
    if("subject" in query) { return query.subject == "c1m3upescalator1"; } 
    else return false;
}
function IsC1M3ThroughHere(query) {
    if("subject" in query) { return query.subject == "c1m3throughhere"; } 
    else return false;
}
function IsC1M3DownTheEscalator(query) {
    if("subject" in query) { return query.subject == "c1m3downtheescalator"; } 
    else return false;
}
function IsC1M3ThisWay(query) {
    if("subject" in query) { return query.subject == "c1m3thisway"; } 
    else return false;
}
function IsC1M3FoodCourtOkay(query) {
    if("subject" in query) { return query.subject == "c1m3foodcourtokay"; } 
    else return false;
}
function IsC1M3FoodCourtNotOkay(query) {
    if("subject" in query) { return query.subject == "c1m3foodcourtnotokay"; } 
    else return false;
}
function IsC1M3UpEscalator2(query) {
    if("subject" in query) { return query.subject == "c1m3upescalator2"; } 
    else return false;
}
function IsC1M3OverHere(query) {
    if("subject" in query) { return query.subject == "c1m3overhere"; } 
    else return false;
}
function IsC1M3SearchRooms(query) {
    if("subject" in query) { return query.subject == "c1m3searchrooms"; } 
    else return false;
}
function IsC1M3CarefulWindows(query) {
    if("subject" in query) { return query.subject == "c1m3carefulwindows"; } 
    else return false;
}
function IsC1M3TurnOffAlarm1(query) {
    if("subject" in query) { return query.subject == "c1m3turnoffalarm1"; } 
    else return false;
}
function IsC1M3TurnOffAlarm2(query) {
    if("subject" in query) { return query.subject == "c1m3turnoffalarm2"; } 
    else return false;
}
function IsC1M3DownHere(query) {
    if("subject" in query) { return query.subject == "c1m3downhere"; } 
    else return false;
}
function IsC1M3CEDAGone(query) {
    if("subject" in query) { return query.subject == "c1m3cedagone"; } 
    else return false;
}
function IsC1M3UpEscalator3(query) {
    if("subject" in query) { return query.subject == "c1m3upescalator3"; } 
    else return false;
}
function IsC1M3DiscoPants(query) {
    if("subject" in query) { return query.subject == "c1m3discopants"; } 
    else return false;
}
function Isc5m2park(query) {
    if("subject" in query) { return query.subject == "c5m2park"; } 
    else return false;
}
function Isc5m2freeway(query) {
    if("subject" in query) { return query.subject == "c5m2freeway"; } 
    else return false;
}
function Isc5m2busstation(query) {
    if("subject" in query) { return query.subject == "c5m2busstation"; } 
    else return false;
}
function Isc5m3freeway(query) {
    if("subject" in query) { return query.subject == "c5m3freeway"; } 
    else return false;
}
function Isc5m3upsteps(query) {
    if("subject" in query) { return query.subject == "c5m3upsteps"; } 
    else return false;
}
function Isc5m3warzone(query) {
    if("subject" in query) { return query.subject == "c5m3warzone"; } 
    else return false;
}
function Isc5m3sniper(query) {
    if("subject" in query) { return query.subject == "c5m3sniper"; } 
    else return false;
}
function Isc5m3bus(query) {
    if("subject" in query) { return query.subject == "c5m3bus"; } 
    else return false;
}
function Isc5m3manhole(query) {
    if("subject" in query) { return query.subject == "c5m3manhole"; } 
    else return false;
}
function Isc5m3insewer(query) {
    if("subject" in query) { return query.subject == "c5m3insewer"; } 
    else return false;
}
function Isc5m3upladder(query) {
    if("subject" in query) { return query.subject == "c5m3upladder"; } 
    else return false;
}
function Isc5m3seegraveyard(query) {
    if("subject" in query) { return query.subject == "c5m3seegraveyard"; } 
    else return false;
}
function Isc5m3offhighway(query) {
    if("subject" in query) { return query.subject == "c5m3offhighway"; } 
    else return false;
}
function Isc5m3seesaferoom(query) {
    if("subject" in query) { return query.subject == "c5m3seesaferoom"; } 
    else return false;
}
function IsC1M3DownHere2(query) {
    if("subject" in query) { return query.subject == "c1m3downhere2"; } 
    else return false;
}
function IsC1M3AlarmDoors(query) {
    if("subject" in query) { return query.subject == "c1m3alarmdoors"; } 
    else return false;
}
function IsC1M3TurnOffAlarm3(query) {
    if("subject" in query) { return query.subject == "c1m3turnoffalarm3"; } 
    else return false;
}
function Isc5m3crashedheli(query) {
    if("subject" in query) { return query.subject == "c5m3crashedheli"; } 
    else return false;
}
function Isc5m3bodies(query) {
    if("subject" in query) { return query.subject == "c5m3bodies"; } 
    else return false;
}
function Isc5m3safezone(query) {
    if("subject" in query) { return query.subject == "c5m3safezone"; } 
    else return false;
}
function Isc5m3sewercomment(query) {
    if("subject" in query) { return query.subject == "c5m3sewercomment"; } 
    else return false;
}
function Isc5m4pooltable(query) {
    if("subject" in query) { return query.subject == "c5m4pooltable"; } 
    else return false;
}
function Isc5m4alley(query) {
    if("subject" in query) { return query.subject == "c5m4alley"; } 
    else return false;
}
function Isc5m4inminifinale(query) {
    if("subject" in query) { return query.subject == "c5m4inminifinale"; } 
    else return false;
}
function Isc5m4seebridge(query) {
    if("subject" in query) { return query.subject == "c5m4seebridge"; } 
    else return false;
}
function Isc5m4seesaferoom(query) {
    if("subject" in query) { return query.subject == "c5m4seesaferoom"; } 
    else return false;
}
function IsC3M1EarlsGatorVillage(query) {
    if("subject" in query) { return query.subject == "c3m1earlsgatorvillage"; } 
    else return false;
}
function IsC3M1NoSwimming(query) {
    if("subject" in query) { return query.subject == "c3m1noswimming"; } 
    else return false;
}
function IsC3M2WhereAreWe(query) {
    if("subject" in query) { return query.subject == "c3m2wherearewe"; } 
    else return false;
}
function IsC3M2Bathtub(query) {
    if("subject" in query) { return query.subject == "c3m2bathtub"; } 
    else return false;
}
function Isc5m2people(query) {
    if("subject" in query) { return query.subject == "c5m2people"; } 
    else return false;
}
function Isc3m4radio(query) {
    if("subject" in query) { return query.subject == "c3m4radio"; } 
    else return false;
}
function Isc3m4house(query) {
    if("subject" in query) { return query.subject == "c3m4house"; } 
    else return false;
}
function Isc3m4downroad(query) {
    if("subject" in query) { return query.subject == "c3m4downroad"; } 
    else return false;
}
function Isc3m4scaffold(query) {
    if("subject" in query) { return query.subject == "c3m4scaffold"; } 
    else return false;
}
function Isc3m4shacks(query) {
    if("subject" in query) { return query.subject == "c3m4shacks"; } 
    else return false;
}
function Isc3m4outhouse(query) {
    if("subject" in query) { return query.subject == "c3m4outhouse"; } 
    else return false;
}
function Isc3m4inhouse(query) {
    if("subject" in query) { return query.subject == "c3m4inhouse"; } 
    else return false;
}
function Isc3m2_parachutist(query) {
    if("subject" in query) { return query.subject == "c3m2_parachutist"; } 
    else return false;
}
function IsC3M3SearchHouses(query) {
    if("subject" in query) { return query.subject == "c3m3searchhouses"; } 
    else return false;
}
function IsC3M3ThroughHere(query) {
    if("subject" in query) { return query.subject == "c3m3throughhere"; } 
    else return false;
}
function IsC3M3Bodies(query) {
    if("subject" in query) { return query.subject == "c3m3bodies"; } 
    else return false;
}
function IsC3M3Stairs(query) {
    if("subject" in query) { return query.subject == "c3m3stairs"; } 
    else return false;
}
function IsC3M3Unsanitary(query) {
    if("subject" in query) { return query.subject == "c3m3unsanitary"; } 
    else return false;
}
function IsC3M3Stairs2(query) {
    if("subject" in query) { return query.subject == "c3m3stairs2"; } 
    else return false;
}
function IsC3M3ThroughThisHouse(query) {
    if("subject" in query) { return query.subject == "c3m3throughthishouse"; } 
    else return false;
}
function IsC3M3UsePlanks(query) {
    if("subject" in query) { return query.subject == "c3m3useplanks"; } 
    else return false;
}
function IsC3M3MoreShacks(query) {
    if("subject" in query) { return query.subject == "c3m3moreshacks"; } 
    else return false;
}
function IsC3M3UpHere(query) {
    if("subject" in query) { return query.subject == "c3m3uphere"; } 
    else return false;
}
function IsC3M3LowerGate(query) {
    if("subject" in query) { return query.subject == "c3m3lowergate"; } 
    else return false;
}
function IsC3M3StayUpHere(query) {
    if("subject" in query) { return query.subject == "c3m3stayuphere"; } 
    else return false;
}
function IsC3M3ThisWay(query) {
    if("subject" in query) { return query.subject == "c3m3thisway"; } 
    else return false;
}
function IsC3M3SafeHouseAhead(query) {
    if("subject" in query) { return query.subject == "c3m3safehouseahead"; } 
    else return false;
}
function IsC3M3BridgeDown(query) {
    if("subject" in query) { return query.subject == "c3m3bridgedown"; } 
    else return false;
}
function ConceptPlayerNegative(query) {
    if("concept" in query) { return query.concept == "playernegative"; } 
    else return false;
}
function ConceptBounceReaction(query) {
    if("concept" in query) { return query.concept == "bouncereaction"; } 
    else return false;
}
function ConceptProducerSuggestsCrane(query) {
    if("concept" in query) { return query.concept == "producersuggestscrane"; } 
    else return false;
}
function ConceptCoachSuggestsCrane(query) {
    if("concept" in query) { return query.concept == "coachsuggestscrane"; } 
    else return false;
}
function ConceptLaughCoach(query) {
    if("concept" in query) { return query.concept == "laughcoach"; } 
    else return false;
}
function ConceptLaughProducer(query) {
    if("concept" in query) { return query.concept == "laughproducer"; } 
    else return false;
}
function ConceptAskForHealth(query) {
    if("concept" in query) { return query.concept == "askforhealth"; } 
    else return false;
}
function ConceptAskForHealth2(query) {
    if("concept" in query) { return query.concept == "askforhealth2"; } 
    else return false;
}
function ConceptPlayerRemarkc5m4_01a(query) {
    if("concept" in query) { return query.concept == "c5m4_01a"; } 
    else return false;
}
function ConceptPlayerRemarkc5m4_01b(query) {
    if("concept" in query) { return query.concept == "c5m4_01b"; } 
    else return false;
}
function Conceptairport04_vana(query) {
    if("concept" in query) { return query.concept == "airport04_vana"; } 
    else return false;
}
function Conceptairport03_barriera(query) {
    if("concept" in query) { return query.concept == "airport03_barriera"; } 
    else return false;
}
function ConceptAirport03FireStarted(query) {
    if("concept" in query) { return query.concept == "airport03firestarted"; } 
    else return false;
}
function ConceptAirport03FireStartedX(query) {
    if("concept" in query) { return query.concept == "airport03firestartedx"; } 
    else return false;
}
function ConceptAirport03FirePathClear(query) {
    if("concept" in query) { return query.concept == "airport03firepathclear"; } 
    else return false;
}
function ConceptAirport03FirePathClearX(query) {
    if("concept" in query) { return query.concept == "airport03firepathclearx"; } 
    else return false;
}
function ConceptAirport03FirePathCleara(query) {
    if("concept" in query) { return query.concept == "airport03firepathcleara"; } 
    else return false;
}
function ConceptAirport04VanStarted(query) {
    if("concept" in query) { return query.concept == "airport04vanstarted"; } 
    else return false;
}
function ConceptAirport04VanStartedX(query) {
    if("concept" in query) { return query.concept == "airport04vanstartedx"; } 
    else return false;
}
function ConceptAirport04VanPathClear(query) {
    if("concept" in query) { return query.concept == "airport04vanpathclear"; } 
    else return false;
}
function ConceptPathClearVan(query) {
    if("concept" in query) { return query.concept == "pathclearvan"; } 
    else return false;
}
function Concepthospital02_path03a1(query) {
    if("concept" in query) { return query.concept == "hospital02_path03a1"; } 
    else return false;
}
function Concepthospital02_path03b1(query) {
    if("concept" in query) { return query.concept == "hospital02_path03b1"; } 
    else return false;
}
function Concepthospital02_path03c1(query) {
    if("concept" in query) { return query.concept == "hospital02_path03c1"; } 
    else return false;
}
function Concepthospital03_path03a1(query) {
    if("concept" in query) { return query.concept == "hospital03_path03a1"; } 
    else return false;
}
function Conceptairport04_05a(query) {
    if("concept" in query) { return query.concept == "airport04_05a"; } 
    else return false;
}
function Conceptairport04_08a(query) {
    if("concept" in query) { return query.concept == "airport04_08a"; } 
    else return false;
}
function Conceptairport04_08b(query) {
    if("concept" in query) { return query.concept == "airport04_08b"; } 
    else return false;
}
function Conceptairport04_08c(query) {
    if("concept" in query) { return query.concept == "airport04_08c"; } 
    else return false;
}
function Conceptairport04_08d(query) {
    if("concept" in query) { return query.concept == "airport04_08d"; } 
    else return false;
}
function Conceptairport04_08e(query) {
    if("concept" in query) { return query.concept == "airport04_08e"; } 
    else return false;
}
function Conceptairport04_08f(query) {
    if("concept" in query) { return query.concept == "airport04_08f"; } 
    else return false;
}
function IsNoProfanity(query) {
    if("worldnoprofanity" in query) { return query.worldnoprofanity == 1; } 
    else return false;
}
function IsProfanity(query) {
    if("worldnoprofanity" in query) { return query.worldnoprofanity != 1; } 
    else return true;
}
function ConceptEllisInterrupt(query) {
    if("concept" in query) { return query.concept == "ellisinterrupt"; } 
    else return false;
}
function Conceptopen_safedoor(query) {
    if("concept" in query) { return query.concept == "open_safedoor"; } 
    else return false;
}
function DeadCenter(query) {
    if("campaign" in query) { return query.campaign == "l4d2_1"; } 
    else return false;
}
function ismap_c1m1_hotel(query) {
    if("map" in query) { return query.map == "c1m1_hotel"; } 
    else return false;
}
function isNotmap_c1m1_hotel(query) {
    if("map" in query) { return query.map != "c1m1_hotel"; } 
    else return true;
}
function ConceptIntroC1M1(query) {
    if("concept" in query) { return query.concept == "introc1m1"; } 
    else return false;
}
function ismap_c1m2_streets(query) {
    if("map" in query) { return query.map == "c1m2_streets"; } 
    else return false;
}
function isNotmap_c1m2_streets(query) {
    if("map" in query) { return query.map != "c1m2_streets"; } 
    else return true;
}
function ismap_c1m3_mall(query) {
    if("map" in query) { return query.map == "c1m3_mall"; } 
    else return false;
}
function ismap_c1m4_atrium(query) {
    if("map" in query) { return query.map == "c1m4_atrium"; } 
    else return false;
}
function ElevatorTimeUp(query) {
    if("worldelevatortimer" in query) { return query.worldelevatortimer != 1; } 
    else return true;
}
function ElevatorTimeNotUp(query) {
    if("worldelevatortimer" in query) { return query.worldelevatortimer == 1; } 
    else return false;
}
function C1M1orC1M2(query) { return ( ismap_c1m1_hotel(query) || ismap_c1m2_streets(query) ); }
function ConceptNickC1Attitude(query) {
    if("concept" in query) { return query.concept == "nickc1attitude"; } 
    else return false;
}
function DarkCarnival(query) {
    if("campaign" in query) { return query.campaign == "l4d2_2"; } 
    else return false;
}
function ismap_c2m1(query) {
    if("map" in query) { return query.map == "c2m1_highway"; } 
    else return false;
}
function ConceptIntroC2M1(query) {
    if("concept" in query) { return query.concept == "introc2m1"; } 
    else return false;
}
function ConceptC2M1Falling(query) {
    if("concept" in query) { return query.concept == "c2m1falling"; } 
    else return false;
}
function ConceptC2M1DoneFalling(query) {
    if("concept" in query) { return query.concept == "c2m1donefalling"; } 
    else return false;
}
function ismap_c2m2(query) {
    if("map" in query) { return query.map == "c2m2_fairgrounds"; } 
    else return false;
}
function Conceptc2m2CarouselStart(query) {
    if("concept" in query) { return query.concept == "c2m2carouselstart"; } 
    else return false;
}
function Conceptc2m2CarouselEnd(query) {
    if("concept" in query) { return query.concept == "c2m2carouselend"; } 
    else return false;
}
function EllisNotTall(query) {
    if("worldellistalljoke" in query) { return query.worldellistalljoke == 1; } 
    else return false;
}
function ismap_c2m3(query) {
    if("map" in query) { return query.map == "c2m3_coaster"; } 
    else return false;
}
function Conceptc2m3CoasterStart(query) {
    if("concept" in query) { return query.concept == "c2m3coasterstart"; } 
    else return false;
}
function Conceptc2m3CoasterEnd(query) {
    if("concept" in query) { return query.concept == "c2m3coasterend"; } 
    else return false;
}
function Conceptc2m3SeeChopper(query) {
    if("concept" in query) { return query.concept == "c2m3seechopper"; } 
    else return false;
}
function Conceptc2m3downhole(query) {
    if("concept" in query) { return query.concept == "c2m3downhole"; } 
    else return false;
}
function Conceptc2m3NearRubble(query) {
    if("concept" in query) { return query.concept == "c2m3nearrubble"; } 
    else return false;
}
function Conceptc2m3OutOfRubble(query) {
    if("concept" in query) { return query.concept == "c2m3outofrubble"; } 
    else return false;
}
function ConceptC2M3CoasterRun(query) {
    if("concept" in query) { return query.concept == "c2m3coasterrun"; } 
    else return false;
}
function ConceptC2M3CoasterRunGo(query) {
    if("concept" in query) { return query.concept == "c2m3coasterrungo"; } 
    else return false;
}
function ConceptC2M3CloseToSafeHouse(query) {
    if("concept" in query) { return query.concept == "c2m3closetosafehouse"; } 
    else return false;
}
function ismap_c2m4(query) {
    if("map" in query) { return query.map == "c2m4_barns"; } 
    else return false;
}
function Conceptc2m4SeeChopper(query) {
    if("concept" in query) { return query.concept == "c2m4seechopper"; } 
    else return false;
}
function Conceptc2m4NearGate(query) {
    if("concept" in query) { return query.concept == "c2m4neargate"; } 
    else return false;
}
function Conceptc2m4AwayFromGate(query) {
    if("concept" in query) { return query.concept == "c2m4awayfromgate"; } 
    else return false;
}
function Conceptc2m4GateOpen(query) {
    if("concept" in query) { return query.concept == "c2m4gateopen"; } 
    else return false;
}
function ConceptC2M4GateOpenCallout(query) {
    if("concept" in query) { return query.concept == "c2m4gateopencallout"; } 
    else return false;
}
function ConceptC2M4ButtonPressed(query) {
    if("concept" in query) { return query.concept == "c2m4buttonpressed"; } 
    else return false;
}
function ismap_c2m5(query) {
    if("map" in query) { return query.map == "c2m5_concert"; } 
    else return false;
}
function Conceptc2m5Button1(query) {
    if("concept" in query) { return query.concept == "c2m5button1"; } 
    else return false;
}
function Conceptc2m5Button2(query) {
    if("concept" in query) { return query.concept == "c2m5button2"; } 
    else return false;
}
function ConceptC2m5ChopperComing(query) {
    if("concept" in query) { return query.concept == "c2m5choppercoming"; } 
    else return false;
}
function ConceptC2m5ChopperReady(query) {
    if("concept" in query) { return query.concept == "c2m5chopperready"; } 
    else return false;
}
function Conceptc2m5InArena(query) {
    if("concept" in query) { return query.concept == "c2m5inarena"; } 
    else return false;
}
function ConceptC2M5Microphone(query) {
    if("concept" in query) { return query.concept == "c2m5microphone"; } 
    else return false;
}
function NotCoachMadAtRiders(query) {
    if("worldcoachmadatriders" in query) { return query.worldcoachmadatriders < 1; } 
    else return true;
}
function CoachMadAtRiders(query) {
    if("worldcoachmadatriders" in query) { return query.worldcoachmadatriders == 1; } 
    else return false;
}
function NickOCD(query) {
    if("worldnickocd" in query) { return query.worldnickocd != 1; } 
    else return true;
}
function ConceptC2M5Outro(query) {
    if("concept" in query) { return query.concept == "c2m5outro"; } 
    else return false;
}
function SwampFever(query) {
    if("campaign" in query) { return query.campaign == "l4d2_3"; } 
    else return false;
}
function ismap_c3m1_plankcountry(query) {
    if("map" in query) { return query.map == "c3m1_plankcountry"; } 
    else return false;
}
function ConceptIntroC3M1(query) {
    if("concept" in query) { return query.concept == "introc3m1"; } 
    else return false;
}
function Conceptc3m2disgust(query) {
    if("concept" in query) { return query.concept == "c3m2disgust"; } 
    else return false;
}
function ismapc3m2_swamp(query) {
    if("map" in query) { return query.map == "c3m2_swamp"; } 
    else return false;
}
function ConceptC3M3BridgeButton(query) {
    if("concept" in query) { return query.concept == "c3m3bridgebutton"; } 
    else return false;
}
function ismapc3m3_shantytown(query) {
    if("map" in query) { return query.map == "c3m3_shantytown"; } 
    else return false;
}
function IsNotSaidC3M3BridgeButton(query) {
    if("worldsaidc3m3bridgebutton" in query) { return query.worldsaidc3m3bridgebutton != 1; } 
    else return true;
}
function IsSaidC3M3BridgeButton(query) {
    if("worldsaidc3m3bridgebutton" in query) { return query.worldsaidc3m3bridgebutton == 1; } 
    else return false;
}
function ismapc3m4_plantation(query) {
    if("map" in query) { return query.map == "c3m4_plantation"; } 
    else return false;
}
function Conceptc3m4GateExplosion(query) {
    if("concept" in query) { return query.concept == "c3m4gateexplosion"; } 
    else return false;
}
function ConceptC3M4Button1(query) {
    if("concept" in query) { return query.concept == "c3m4button1"; } 
    else return false;
}
function ConceptC3M4Button1A(query) {
    if("concept" in query) { return query.concept == "c3m4button1a"; } 
    else return false;
}
function ConceptC3M4Button2(query) {
    if("concept" in query) { return query.concept == "c3m4button2"; } 
    else return false;
}
function ConceptC3M4Outro(query) {
    if("concept" in query) { return query.concept == "c3m4outro"; } 
    else return false;
}
function IsInSwamp(query) { return ( ismapc3m2_swamp(query) || ismapc3m3_shantytown(query) ); }
function HardRain(query) {
    if("campaign" in query) { return query.campaign == "l4d2_4"; } 
    else return false;
}
function ismap_c4m1_milltown_a(query) {
    if("map" in query) { return query.map == "c4m1_milltown_a"; } 
    else return false;
}
function ConceptIntroC4M1(query) {
    if("concept" in query) { return query.concept == "introc4m1"; } 
    else return false;
}
function IsSaidc4m1_nogas(query) {
    if("worldsaidc4m1_nogas" in query) { return query.worldsaidc4m1_nogas == 1; } 
    else return false;
}
function Isc4m1IToldYouSo(query) {
    if("worldc4m1itoldyouso" in query) { return query.worldc4m1itoldyouso == 1; } 
    else return false;
}
function Isc4m1MilkRun(query) {
    if("worldc4m1milkrun" in query) { return query.worldc4m1milkrun == 1; } 
    else return false;
}
function Isc4m1GunBag(query) {
    if("worldc4m1gunbag" in query) { return query.worldc4m1gunbag == 1; } 
    else return false;
}
function Conceptc4m1_raining(query) {
    if("concept" in query) { return query.concept == "c4m1_raining"; } 
    else return false;
}
function IsNotSaidc4m1_rainresponse(query) {
    if("worldsaidc4m1_rainresponse" in query) { return query.worldsaidc4m1_rainresponse != 1; } 
    else return true;
}
function ismap_c4m2_sugarmill_a(query) {
    if("map" in query) { return query.map == "c4m2_sugarmill_a"; } 
    else return false;
}
function IsNotmap_c4m2(query) {
    if("map" in query) { return query.map != "c4m2_sugarmill_a"; } 
    else return true;
}
function Conceptc4m2_enter_canefield(query) {
    if("concept" in query) { return query.concept == "c4m2_enter_canefield"; } 
    else return false;
}
function Conceptc4m2_exit_canefield(query) {
    if("concept" in query) { return query.concept == "c4m2_exit_canefield"; } 
    else return false;
}
function Conceptc4m2_elevator_top_button(query) {
    if("concept" in query) { return query.concept == "c4m2_elevator_top_button"; } 
    else return false;
}
function Conceptc4m2_elevator_arrived(query) {
    if("concept" in query) { return query.concept == "c4m2_elevator_arrived"; } 
    else return false;
}
function IsNotSaidActivatedC4M2Elevator(query) {
    if("worldsaidactivatedc4m2elevator" in query) { return query.worldsaidactivatedc4m2elevator < 1; } 
    else return true;
}
function IsSaidc4m2_seegasstation(query) {
    if("worldsaidc4m2_seegasstation" in query) { return query.worldsaidc4m2_seegasstation == 1; } 
    else return false;
}
function Isc4m2_PastStart(query) {
    if("worldc4m2_paststart" in query) { return query.worldc4m2_paststart == 1; } 
    else return false;
}
function IsNotc4m2_PastPuddle(query) {
    if("worldc4m2_pastpuddle" in query) { return query.worldc4m2_pastpuddle < 1; } 
    else return true;
}
function Conceptc4m2_enter_witchville(query) {
    if("concept" in query) { return query.concept == "c4m2_enter_witchville"; } 
    else return false;
}
function NotSaidLotsOfWitches(query) {
    if("worldsaidlotsofwitches" in query) { return query.worldsaidlotsofwitches < 1; } 
    else return true;
}
function isc4m3(query) {
    if("map" in query) { return query.map == "c4m3_sugarmill_b"; } 
    else return false;
}
function isc4m4(query) {
    if("map" in query) { return query.map == "c4m4_milltown_b"; } 
    else return false;
}
function isc4m5(query) {
    if("map" in query) { return query.map == "c4m5_milltown_escape"; } 
    else return false;
}
function ConceptC4FinaleStart(query) {
    if("concept" in query) { return query.concept == "c4finalestart"; } 
    else return false;
}
function ConceptC4BoatComing(query) {
    if("concept" in query) { return query.concept == "c4boatcoming"; } 
    else return false;
}
function ConceptC4BoatArrived(query) {
    if("concept" in query) { return query.concept == "c4boatarrived"; } 
    else return false;
}
function ConceptC4BoatArrived2(query) {
    if("concept" in query) { return query.concept == "c4boatarrived2"; } 
    else return false;
}
function ConceptC4M5Outro(query) {
    if("concept" in query) { return query.concept == "c4m5outro"; } 
    else return false;
}
function isCampaign4(query) { return ( isc4m3(query) || isc4m4(query) || isc4m5(query) ); }
function Conceptc4_storm_start(query) {
    if("concept" in query) { return query.concept == "c4_storm_start"; } 
    else return false;
}
function ConceptC4EnterCover(query) {
    if("concept" in query) { return query.concept == "c4entercover"; } 
    else return false;
}
function ConceptC4ExitCover(query) {
    if("concept" in query) { return query.concept == "c4exitcover"; } 
    else return false;
}
function TheParish(query) {
    if("campaign" in query) { return query.campaign == "l4d2_5"; } 
    else return false;
}
function ismap_c5m1_waterfront(query) {
    if("map" in query) { return query.map == "c5m1_waterfront"; } 
    else return false;
}
function ConceptIntroC5M1(query) {
    if("concept" in query) { return query.concept == "introc5m1"; } 
    else return false;
}
function ConceptC5M1Flyby(query) {
    if("concept" in query) { return query.concept == "c5m1flyby"; } 
    else return false;
}
function IsMapc5m2_park(query) {
    if("map" in query) { return query.map == "c5m2_park"; } 
    else return false;
}
function IsMapc5m3_cemetery(query) {
    if("map" in query) { return query.map == "c5m3_cemetery"; } 
    else return false;
}
function IsNotc5m3_cemetery(query) {
    if("map" in query) { return query.map != "c5m3_cemetery"; } 
    else return true;
}
function ConceptC5M3FirstInAlarmField(query) {
    if("concept" in query) { return query.concept == "c5m3firstinalarmfield"; } 
    else return false;
}
function ConceptC5M3InAlarmField(query) {
    if("concept" in query) { return query.concept == "c5m3inalarmfield"; } 
    else return false;
}
function ConceptC5M3OutOfAlarmField(query) {
    if("concept" in query) { return query.concept == "c5m3outofalarmfield"; } 
    else return false;
}
function Conceptc5m3OnBridge(query) {
    if("concept" in query) { return query.concept == "c5m3onbridge"; } 
    else return false;
}
function Conceptc5m3OnBridge2(query) {
    if("concept" in query) { return query.concept == "c5m3onbridge2"; } 
    else return false;
}
function Conceptc5m3Jets(query) {
    if("concept" in query) { return query.concept == "c5m3jets"; } 
    else return false;
}
function Conceptc5m3Jets2(query) {
    if("concept" in query) { return query.concept == "c5m3jets2"; } 
    else return false;
}
function ConceptC5M3Jets3(query) {
    if("concept" in query) { return query.concept == "c5m3jets3"; } 
    else return false;
}
function ConceptC5M3StopZombies(query) {
    if("concept" in query) { return query.concept == "c5m3stopzombies"; } 
    else return false;
}
function ConceptC5M3BridgeCondition(query) {
    if("concept" in query) { return query.concept == "c5m3bridgecondition"; } 
    else return false;
}
function IsMapc5m4_quarter(query) {
    if("map" in query) { return query.map == "c5m4_quarter"; } 
    else return false;
}
function Conceptc5m4bombingexterior(query) {
    if("concept" in query) { return query.concept == "c5m4bombingexterior"; } 
    else return false;
}
function Conceptc5m4bombinginterior(query) {
    if("concept" in query) { return query.concept == "c5m4bombinginterior"; } 
    else return false;
}
function IsMapc5m5_bridge(query) {
    if("map" in query) { return query.map == "c5m5_bridge"; } 
    else return false;
}
function ConceptC5M5Button(query) {
    if("concept" in query) { return query.concept == "c5m5button"; } 
    else return false;
}
function ConceptC5M5Button1(query) {
    if("concept" in query) { return query.concept == "c5m5button1"; } 
    else return false;
}
function ConceptC5M5Button2(query) {
    if("concept" in query) { return query.concept == "c5m5button2"; } 
    else return false;
}
function ConceptC5M5GateOpen(query) {
    if("concept" in query) { return query.concept == "c5m5gateopen"; } 
    else return false;
}
function ConceptC5M5SoldierHeliNag(query) {
    if("concept" in query) { return query.concept == "c5m5soldierhelinag"; } 
    else return false;
}
function ConceptC5M5Outro(query) {
    if("concept" in query) { return query.concept == "c5m5outro"; } 
    else return false;
}
function ConceptC5M5Outro2(query) {
    if("concept" in query) { return query.concept == "c5m5outro2"; } 
    else return false;
}
function ConceptC5M5Outro3(query) {
    if("concept" in query) { return query.concept == "c5m5outro3"; } 
    else return false;
}
function ConceptC5M5Outro4(query) {
    if("concept" in query) { return query.concept == "c5m5outro4"; } 
    else return false;
}
function ConceptC5M5Outro5(query) {
    if("concept" in query) { return query.concept == "c5m5outro5"; } 
    else return false;
}
function ConceptC5M5BridgeDestroyed(query) {
    if("concept" in query) { return query.concept == "c5m5bridgedestroyed"; } 
    else return false;
}
function ConceptC5M5BridgeDestroyed2(query) {
    if("concept" in query) { return query.concept == "c5m5bridgedestroyed2"; } 
    else return false;
}
function ConceptC5M5SurvivorOutroEnable(query) {
    if("concept" in query) { return query.concept == "c5m5survivoroutroenable"; } 
    else return false;
}
function CanSpeakC5M5SurvivorOutro(query) {
    if("worldc5m5survivoroutro" in query) { return query.worldc5m5survivoroutro == 1; } 
    else return false;
}
function IsNotSaidGoingToDieC5M5(query) {
    if("saidgoingtodiec5m5" in query) { return query.saidgoingtodiec5m5 != 1; } 
    else return true;
}
function isCampaign5(query) { return ( IsMapc5m2_park(query) || IsMapc5m3_cemetery(query) || IsMapc5m4_quarter(query) ); }
function ConceptOratorTest(query) {
    if("concept" in query) { return query.concept == "oratortest"; } 
    else return false;
}
function ConceptEndOfWavWindow5(query) {
    if("concept" in query) { return query.concept == "endofwavwindow5"; } 
    else return false;
}
function NotSaidOutro(query) {
    if("worldsaidoutro" in query) { return query.worldsaidoutro != 1; } 
    else return true;
}
function isVehicleBarkOK(query) {
    if("vehiclebarkok" in query) { return query.vehiclebarkok < 1; } 
    else return true;
}
function TheSacrifice(query) {
    if("campaign" in query) { return query.campaign == "l4d2_7"; } 
    else return false;
}
function ismapc7m1_docks(query) {
    if("map" in query) { return query.map == "c7m1_docks"; } 
    else return false;
}
function ismapc7m2_barge(query) {
    if("map" in query) { return query.map == "c7m2_barge"; } 
    else return false;
}
function ismapc7m3_port(query) {
    if("map" in query) { return query.map == "c7m3_port"; } 
    else return false;
}
function ColdStream(query) {
    if("campaign" in query) { return query.campaign == "l4d2_13"; } 
    else return false;
}
function ConceptIntroC13M1(query) {
    if("concept" in query) { return query.concept == "introc13m1"; } 
    else return false;
}
function ismapc13m1_alpinecreek(query) {
    if("map" in query) { return query.map == "c13m1_alpinecreek"; } 
    else return false;
}
function ConceptC13M1Intro2(query) {
    if("concept" in query) { return query.concept == "c13m1intro2"; } 
    else return false;
}
function ConceptC13M1Intro2Ellis(query) {
    if("concept" in query) { return query.concept == "c13m1intro2ellis"; } 
    else return false;
}
function ConceptC13M1Intro3(query) {
    if("concept" in query) { return query.concept == "c13m1intro3"; } 
    else return false;
}
function ConceptC13M1IntroLast(query) {
    if("concept" in query) { return query.concept == "c13m1introlast"; } 
    else return false;
}
function ConceptC13M1IntroLocationLast(query) {
    if("concept" in query) { return query.concept == "c13m1introlocationlast"; } 
    else return false;
}
function ConceptC13M1OpeningBunker(query) {
    if("concept" in query) { return query.concept == "c13m1openingbunker"; } 
    else return false;
}
function IsC13M1UpHill(query) {
    if("subject" in query) { return query.subject == "c13m1uphill"; } 
    else return false;
}
function IsC13M1DownHere(query) {
    if("subject" in query) { return query.subject == "c13m1downhere"; } 
    else return false;
}
function IsC13M1ThroughHere(query) {
    if("subject" in query) { return query.subject == "c13m1throughhere"; } 
    else return false;
}
function IsC13M1ThroughWindow(query) {
    if("subject" in query) { return query.subject == "c13m1throughwindow"; } 
    else return false;
}
function IsC13M1UpSteps(query) {
    if("subject" in query) { return query.subject == "c13m1upsteps"; } 
    else return false;
}
function IsC13M1CrossHere(query) {
    if("subject" in query) { return query.subject == "c13m1crosshere"; } 
    else return false;
}
function IsC13M1SearchHouses(query) {
    if("subject" in query) { return query.subject == "c13m1searchhouses"; } 
    else return false;
}
function IsC13M1PreBunkerOpen(query) {
    if("subject" in query) { return query.subject == "c13m1prebunkeropen"; } 
    else return false;
}
function C13M1EllisNotPanicking(query) {
    if("worldc13m1ellispanicking" in query) { return query.worldc13m1ellispanicking < 1; } 
    else return true;
}
function IsNotRemarkedC13M1UpHill(query) {
    if("worldremarkedc13m1uphill" in query) { return query.worldremarkedc13m1uphill < 1; } 
    else return true;
}
function IsNotRemarkedC13M1DownHere(query) {
    if("worldremarkedc13m1downhere" in query) { return query.worldremarkedc13m1downhere < 1; } 
    else return true;
}
function IsNotRemarkedC13M1ThroughHere(query) {
    if("worldremarkedc13m1throughhere" in query) { return query.worldremarkedc13m1throughhere < 1; } 
    else return true;
}
function IsNotRemarkedC13M1ThroughWindow(query) {
    if("worldremarkedc13m1throughwindow" in query) { return query.worldremarkedc13m1throughwindow < 1; } 
    else return true;
}
function IsNotRemarkedC13M1UpSteps(query) {
    if("worldremarkedc13m1upsteps" in query) { return query.worldremarkedc13m1upsteps < 1; } 
    else return true;
}
function IsNotRemarkedC13M1CrossHere(query) {
    if("worldremarkedc13m1crosshere" in query) { return query.worldremarkedc13m1crosshere < 1; } 
    else return true;
}
function IsNotRemarkedC13M1SearchHouses(query) {
    if("worldremarkedc13m1searchhouses" in query) { return query.worldremarkedc13m1searchhouses < 1; } 
    else return true;
}
function IsNotRemarkedC13M1PreBunkerOpen(query) {
    if("worldremarkedc13m1prebunkeropen" in query) { return query.worldremarkedc13m1prebunkeropen < 1; } 
    else return true;
}
function IsNotC13M1OpeningBunker(query) {
    if("worldc13m1openingbunker" in query) { return query.worldc13m1openingbunker < 1; } 
    else return true;
}
function ismapc13m2_southpinestream(query) {
    if("map" in query) { return query.map == "c13m2_southpinestream"; } 
    else return false;
}
function ConceptC13M2TankApproaching(query) {
    if("concept" in query) { return query.concept == "c13m2tankapproaching"; } 
    else return false;
}
function ConceptC13M2BoulderTrap1(query) {
    if("concept" in query) { return query.concept == "c13m2bouldertrap1"; } 
    else return false;
}
function ConceptC13M2BoulderTrap2(query) {
    if("concept" in query) { return query.concept == "c13m2bouldertrap2"; } 
    else return false;
}
function ConceptC13M2BarrelsIgnited(query) {
    if("concept" in query) { return query.concept == "c13m2barrelsignited"; } 
    else return false;
}
function ConceptC13M2Barrels1(query) {
    if("concept" in query) { return query.concept == "c13m2barrels1"; } 
    else return false;
}
function ConceptC13M2Barrels2(query) {
    if("concept" in query) { return query.concept == "c13m2barrels2"; } 
    else return false;
}
function IsNotNoticedC13M2ShakingGround(query) {
    if("worldnoticedc13m2shakingground" in query) { return query.worldnoticedc13m2shakingground < 1; } 
    else return true;
}
function IsNotC13M2IgnitedBarrels(query) {
    if("worldc13m2ignitedbarrels" in query) { return query.worldc13m2ignitedbarrels < 1; } 
    else return true;
}
function IsC13M2UpHill(query) {
    if("subject" in query) { return query.subject == "c13m2uphill"; } 
    else return false;
}
function IsC13M2DownHere(query) {
    if("subject" in query) { return query.subject == "c13m2downhere"; } 
    else return false;
}
function IsC13M2UpLadder(query) {
    if("subject" in query) { return query.subject == "c13m2upladder"; } 
    else return false;
}
function IsC13M2UpStairs(query) {
    if("subject" in query) { return query.subject == "c13m2upstairs"; } 
    else return false;
}
function IsNotRemarkedC13M2UpHill(query) {
    if("worldremarkedc13m2uphill" in query) { return query.worldremarkedc13m2uphill < 1; } 
    else return true;
}
function IsNotRemarkedC13M2DownHere(query) {
    if("worldremarkedc13m2downhere" in query) { return query.worldremarkedc13m2downhere < 1; } 
    else return true;
}
function IsNotRemarkedC13M2UpLadder(query) {
    if("worldremarkedc13m2upladder" in query) { return query.worldremarkedc13m2upladder < 1; } 
    else return true;
}
function IsNotRemarkedC13M2UpStairs(query) {
    if("worldremarkedc13m2upstairs" in query) { return query.worldremarkedc13m2upstairs < 1; } 
    else return true;
}
function ismapc13m3_memorialbridge(query) {
    if("map" in query) { return query.map == "c13m3_memorialbridge"; } 
    else return false;
}
function ConceptC13M3ApproachingTanker(query) {
    if("concept" in query) { return query.concept == "c13m3approachingtanker"; } 
    else return false;
}
function ConceptC13M3Tanker1(query) {
    if("concept" in query) { return query.concept == "c13m3tanker1"; } 
    else return false;
}
function ConceptC13M3Tanker2(query) {
    if("concept" in query) { return query.concept == "c13m3tanker2"; } 
    else return false;
}
function ConceptC13M3Tanker3(query) {
    if("concept" in query) { return query.concept == "c13m3tanker3"; } 
    else return false;
}
function ConceptC13M3OnScaffold(query) {
    if("concept" in query) { return query.concept == "c13m3onscaffold"; } 
    else return false;
}
function ConceptC13M3Airstrike(query) {
    if("concept" in query) { return query.concept == "c13m3airstrike"; } 
    else return false;
}
function ConceptC13M3Airstrike2(query) {
    if("concept" in query) { return query.concept == "c13m3airstrike2"; } 
    else return false;
}
function IsC13M3DownHere(query) {
    if("subject" in query) { return query.subject == "c13m3downhere"; } 
    else return false;
}
function IsNotRemarkedC13M3DownHere(query) {
    if("worldremarkedc13m3downhere" in query) { return query.worldremarkedc13m3downhere < 1; } 
    else return true;
}
function IsNotSawC13M3Tanker(query) {
    if("worldsawc13m3tanker" in query) { return query.worldsawc13m3tanker < 1; } 
    else return true;
}
function IsNotOnC13M3Scaffold(query) {
    if("worldonc13m3scaffold" in query) { return query.worldonc13m3scaffold < 1; } 
    else return true;
}
function IsNotWitnissedC13M3Airstrike(query) {
    if("worldwitnissedc13m3airstrike" in query) { return query.worldwitnissedc13m3airstrike < 1; } 
    else return true;
}
function ismapc13m4_cutthroatcreek(query) {
    if("map" in query) { return query.map == "c13m4_cutthroatcreek"; } 
    else return false;
}
function ConceptC13M4Button1(query) {
    if("concept" in query) { return query.concept == "c13m4button1"; } 
    else return false;
}
function ConceptC13M4FinaleBrief(query) {
    if("concept" in query) { return query.concept == "c13m4finalebrief"; } 
    else return false;
}
function ConceptC13M4FinaleBrief2(query) {
    if("concept" in query) { return query.concept == "c13m4finalebrief2"; } 
    else return false;
}
function ConceptC13M4FinaleBrief3(query) {
    if("concept" in query) { return query.concept == "c13m4finalebrief3"; } 
    else return false;
}
function ConceptC13M4FinaleStart(query) {
    if("concept" in query) { return query.concept == "c13m4finalestart"; } 
    else return false;
}
function ConceptC13M4FinaleStart2(query) {
    if("concept" in query) { return query.concept == "c13m4finalestart2"; } 
    else return false;
}
function ConceptC13M4DownCreek(query) {
    if("concept" in query) { return query.concept == "c13m4downcreek"; } 
    else return false;
}
function ConceptC13M4InSmoke(query) {
    if("concept" in query) { return query.concept == "c13m4insmoke"; } 
    else return false;
}
function ConceptC13M4AlmostThere(query) {
    if("concept" in query) { return query.concept == "c13m4almostthere"; } 
    else return false;
}
function ConceptC13M4NoticedHelicopter(query) {
    if("concept" in query) { return query.concept == "c13m4noticedhelicopter"; } 
    else return false;
}
function ConceptC13M4PilotEscapeNag(query) {
    if("concept" in query) { return query.concept == "c13m4pilotescapenag"; } 
    else return false;
}
function ConceptC13M4Outro(query) {
    if("concept" in query) { return query.concept == "c13m4outro"; } 
    else return false;
}
function IsNotInC13M4Creek(query) {
    if("worldinc13m4creek" in query) { return query.worldinc13m4creek < 1; } 
    else return true;
}
function IsNotInC13M4Smoke(query) {
    if("inc13m4smoke" in query) { return query.inc13m4smoke < 1; } 
    else return true;
}
function IsNotNoticedC13M4Helicopter(query) {
    if("worldnoticedc13m4helicopter" in query) { return query.worldnoticedc13m4helicopter < 1; } 
    else return true;
}
function IsNotC13M4AlmostThere(query) {
    if("worldc13m4almostthere" in query) { return query.worldc13m4almostthere < 1; } 
    else return true;
}
function TheLastStand(query) {
    if("campaign" in query) { return query.campaign == "l4d2_14"; } 
    else return false;
}
function IsLastStand1(query) {
    if("map" in query) { return query.map == "c14m1_junkyard"; } 
    else return false;
}
function ConceptIntroLighthouse(query) {
    if("concept" in query) { return query.concept == "introlighthouse"; } 
    else return false;
}
function ConceptC14M1Intro1(query) {
    if("concept" in query) { return query.concept == "c14m1intro1"; } 
    else return false;
}
function ConceptC14M1Intro1a(query) {
    if("concept" in query) { return query.concept == "c14m1intro1a"; } 
    else return false;
}
function ConceptC14M1Intro1b(query) {
    if("concept" in query) { return query.concept == "c14m1intro1b"; } 
    else return false;
}
function ConceptC14M1Intro1c(query) {
    if("concept" in query) { return query.concept == "c14m1intro1c"; } 
    else return false;
}
function ConceptC14M1Intro2(query) {
    if("concept" in query) { return query.concept == "c14m1intro2"; } 
    else return false;
}
function ConceptC14M1Intro2a(query) {
    if("concept" in query) { return query.concept == "c14m1intro2a"; } 
    else return false;
}
function ConceptC14M1Intro3(query) {
    if("concept" in query) { return query.concept == "c14m1intro3"; } 
    else return false;
}
function ConceptC14M1Intro3a(query) {
    if("concept" in query) { return query.concept == "c14m1intro3a"; } 
    else return false;
}
function ConceptC14M1Intro3b(query) {
    if("concept" in query) { return query.concept == "c14m1intro3b"; } 
    else return false;
}
function ConceptC14M1Intro4(query) {
    if("concept" in query) { return query.concept == "c14m1intro4"; } 
    else return false;
}
function ConceptC14M1Intro4a(query) {
    if("concept" in query) { return query.concept == "c14m1intro4a"; } 
    else return false;
}
function ConceptC14M1Intro4b(query) {
    if("concept" in query) { return query.concept == "c14m1intro4b"; } 
    else return false;
}
function ConceptC14M1PlaneFlyBy(query) {
    if("concept" in query) { return query.concept == "c14m1planeflyby"; } 
    else return false;
}
function ConceptC14M1EngineBroke(query) {
    if("concept" in query) { return query.concept == "c14m1planeengine"; } 
    else return false;
}
function ConceptC14M1PanicStart(query) {
    if("concept" in query) { return query.concept == "c14m1panicstart"; } 
    else return false;
}
function ConceptC14M1PanicSpeak(query) {
    if("concept" in query) { return query.concept == "c14m1panicspeak"; } 
    else return false;
}
function ConceptC14M1PowerOut(query) {
    if("concept" in query) { return query.concept == "c14m1powerout"; } 
    else return false;
}
function ConceptC14M1PowerOutSpeak(query) {
    if("concept" in query) { return query.concept == "c14m1poweroutspeak"; } 
    else return false;
}
function ConceptC14M1GeneratorActivated(query) {
    if("concept" in query) { return query.concept == "c14m1generatoractivated"; } 
    else return false;
}
function ConceptC14M1GeneratorActivatedSpeak(query) {
    if("concept" in query) { return query.concept == "c14m1generatoractivatedspeak"; } 
    else return false;
}
function ConceptC14M1CraneReady(query) {
    if("concept" in query) { return query.concept == "c14m1craneready"; } 
    else return false;
}
function ConceptC14M1CraneDrop(query) {
    if("concept" in query) { return query.concept == "c14m1cranedrop"; } 
    else return false;
}
function ConceptC14M1CraneDropBlank(query) {
    if("concept" in query) { return query.concept == "c14m1cranedropblank"; } 
    else return false;
}
function ConceptC14M1PathClear(query) {
    if("concept" in query) { return query.concept == "c14m1pathclear"; } 
    else return false;
}
function ConceptC14M1PathClearSpeak(query) {
    if("concept" in query) { return query.concept == "c14m1pathclearspeak"; } 
    else return false;
}
function IsC14M1Humvee(query) {
    if("subject" in query) { return query.subject == "c14m1_humvee"; } 
    else return false;
}
function IsC14M1CabinUpstairs(query) {
    if("subject" in query) { return query.subject == "c14m1_cabin_upstairs"; } 
    else return false;
}
function IsC14M1JunkyardEntrance(query) {
    if("subject" in query) { return query.subject == "c14m1_junkyard_entrance"; } 
    else return false;
}
function IsC14M1Traincar(query) {
    if("subject" in query) { return query.subject == "c14m1_traincar"; } 
    else return false;
}
function IsC14M1PrePanic(query) {
    if("subject" in query) { return query.subject == "c14m1_pre_panic"; } 
    else return false;
}
function IsC14M1DownCliff(query) {
    if("subject" in query) { return query.subject == "c14m1_down_cliff"; } 
    else return false;
}
function CraneNotMoving(query) {
    if("worldcranephase" in query) { return query.worldcranephase < 1; } 
    else return true;
}
function CraneIsMoving(query) {
    if("worldcranephase" in query) { return query.worldcranephase == 1; } 
    else return false;
}
function CraneIsReady(query) {
    if("worldcranephase" in query) { return query.worldcranephase == 2; } 
    else return false;
}
function IsNotRemarkedC14M1Humvee(query) {
    if("worldremarkedc14m1humvee" in query) { return query.worldremarkedc14m1humvee < 1; } 
    else return true;
}
function IsNotSpottedC14M1Plane(query) {
    if("worldspottedc14m1plane" in query) { return query.worldspottedc14m1plane < 1; } 
    else return true;
}
function IsNotRemarkedC14M1CabinUpstairs(query) {
    if("worldremarkedc14m1cabinupstairs" in query) { return query.worldremarkedc14m1cabinupstairs < 1; } 
    else return true;
}
function IsNotRemarkedC14M1JunkyardEntrance(query) {
    if("worldremarkedc14m1junkyardentrance" in query) { return query.worldremarkedc14m1junkyardentrance < 1; } 
    else return true;
}
function IsNotRemarkedC14M1Traincar(query) {
    if("worldremarkedc14m1traincar" in query) { return query.worldremarkedc14m1traincar < 1; } 
    else return true;
}
function IsNotRemarkedC14M1PrePanic(query) {
    if("worldremarkedc14m1prepanic" in query) { return query.worldremarkedc14m1prepanic < 1; } 
    else return true;
}
function IsRemarkedC14M1PrePanic(query) {
    if("worldremarkedc14m1prepanic" in query) { return query.worldremarkedc14m1prepanic == 1; } 
    else return false;
}
function IsNotRemarkedC14M1DownCliff(query) {
    if("worldremarkedc14m1downcliff" in query) { return query.worldremarkedc14m1downcliff < 1; } 
    else return true;
}
function C14M1GeneratorTask(query) {
    if("worldc14m1generatorcount" in query) { return query.worldc14m1generatorcount < 3; } 
    else return true;
}
function C14M1TwoMore(query) {
    if("worldc14m1generatorcount" in query) { return query.worldc14m1generatorcount == 2; } 
    else return false;
}
function C14M1LastGenerator(query) {
    if("worldc14m1generatorcount" in query) { return query.worldc14m1generatorcount == 3; } 
    else return false;
}
function C14M1AllGenerators(query) {
    if("worldc14m1generatorcount" in query) { return query.worldc14m1generatorcount == 4; } 
    else return false;
}
function IsLastStand2(query) {
    if("map" in query) { return query.map == "c14m2_lighthouse"; } 
    else return false;
}
function ConceptC14M2Gate2(query) {
    if("concept" in query) { return query.concept == "c14m2gate2"; } 
    else return false;
}
function ConceptC14M2Radio(query) {
    if("concept" in query) { return query.concept == "c14m2radio"; } 
    else return false;
}
function ConceptC14M2RadioSpeak(query) {
    if("concept" in query) { return query.concept == "c14m2radiospeak"; } 
    else return false;
}
function ConceptC14M2RadioDestroyed(query) {
    if("concept" in query) { return query.concept == "c14m2radiodestroyed"; } 
    else return false;
}
function ConceptC14M2NoteLighthouse2(query) {
    if("concept" in query) { return query.concept == "c14m2notelighthouse2"; } 
    else return false;
}
function ConceptC14M2PowerOutAgain(query) {
    if("concept" in query) { return query.concept == "c14m2poweroutagain"; } 
    else return false;
}
function ConceptC14M2PowerOutAgainSpeak(query) {
    if("concept" in query) { return query.concept == "c14m2poweroutagainspeak"; } 
    else return false;
}
function IsC14M2Gate(query) {
    if("subject" in query) { return query.subject == "c14m2_gate"; } 
    else return false;
}
function IsC14M2Drop(query) {
    if("subject" in query) { return query.subject == "c14m2_drop"; } 
    else return false;
}
function IsC14M2NoteLighthouse(query) {
    if("subject" in query) { return query.subject == "c14m2_note_lighthouse"; } 
    else return false;
}
function IsNotRemarkedC14M2Gate(query) {
    if("worldremarkedc14m2gate" in query) { return query.worldremarkedc14m2gate < 1; } 
    else return true;
}
function IsNotRemarkedC14M2Drop(query) {
    if("worldremarkedc14m2drop" in query) { return query.worldremarkedc14m2drop < 1; } 
    else return true;
}
function IsNotRemarkedC14M2NoteLighthouse(query) {
    if("worldremarkedc14m2notelighthouse" in query) { return query.worldremarkedc14m2notelighthouse < 1; } 
    else return true;
}
function IsNotSrcGrp_ELLISSTORYINIT(query) {
    if("worldsrcgrp_ellisstoryinit" in query) { return query.worldsrcgrp_ellisstoryinit < 1; } 
    else return true;
}
function IsNotSrcGrp_ELLISSTORY(query) {
    if("worldsrcgrp_ellisstory" in query) { return query.worldsrcgrp_ellisstory < 1; } 
    else return true;
}
// terror_player_addon.txt ===================================================================================================================
function IsNotSaidc4m1_nogas(query) {
    if("worldsaidc4m1_nogas" in query) { return query.worldsaidc4m1_nogas != 1; } 
    else return true;
}
function IsNotSaidc4m1_roadclosed(query) {
    if("worldsaidc4m1_roadclosed" in query) { return query.worldsaidc4m1_roadclosed != 1; } 
    else return true;
}
function IsNotSaidc4m1_throughhereA(query) {
    if("worldsaidc4m1_throughherea" in query) { return query.worldsaidc4m1_throughherea != 1; } 
    else return true;
}
function IsNotSaidc4m1_carcrash(query) {
    if("worldsaidc4m1_carcrash" in query) { return query.worldsaidc4m1_carcrash != 1; } 
    else return true;
}
function IsNotSaidc4m1_playground(query) {
    if("worldsaidc4m1_playground" in query) { return query.worldsaidc4m1_playground != 1; } 
    else return true;
}
function IsNotSaidc4m1_garagesale(query) {
    if("worldsaidc4m1_garagesale" in query) { return query.worldsaidc4m1_garagesale != 1; } 
    else return true;
}
function Isc4m1_nogas(query) {
    if("subject" in query) { return query.subject == "c4m1_nogas"; } 
    else return false;
}
function Isc4m1_roadclosed(query) {
    if("subject" in query) { return query.subject == "c4m1_roadclosed"; } 
    else return false;
}
function Isc4m1_throughhereA(query) {
    if("subject" in query) { return query.subject == "c4m1_throughherea"; } 
    else return false;
}
function Isc4m1_carcrash(query) {
    if("subject" in query) { return query.subject == "c4m1_carcrash"; } 
    else return false;
}
function Isc4m1_playground(query) {
    if("subject" in query) { return query.subject == "c4m1_playground"; } 
    else return false;
}
function Isc4m1_garagesale(query) {
    if("subject" in query) { return query.subject == "c4m1_garagesale"; } 
    else return false;
}
function ConceptC2M1Intro001(query) {
    if("concept" in query) { return query.concept == "c2m1intro001"; } 
    else return false;
}
function ConceptC2M1Intro002(query) {
    if("concept" in query) { return query.concept == "c2m1intro002"; } 
    else return false;
}
function ConceptC2M1Intro003(query) {
    if("concept" in query) { return query.concept == "c2m1intro003"; } 
    else return false;
}
function ConceptC2M1Intro004(query) {
    if("concept" in query) { return query.concept == "c2m1intro004"; } 
    else return false;
}
function ConceptC2M1Intro005(query) {
    if("concept" in query) { return query.concept == "c2m1intro005"; } 
    else return false;
}
function ConceptC2M1Intro006(query) {
    if("concept" in query) { return query.concept == "c2m1intro006"; } 
    else return false;
}
function ConceptC2M1Intro007(query) {
    if("concept" in query) { return query.concept == "c2m1intro007"; } 
    else return false;
}
function ConceptC2M1Intro008(query) {
    if("concept" in query) { return query.concept == "c2m1intro008"; } 
    else return false;
}
function ConceptC2M1Intro009(query) {
    if("concept" in query) { return query.concept == "c2m1intro009"; } 
    else return false;
}
function ConceptC2M1Intro010(query) {
    if("concept" in query) { return query.concept == "c2m1intro010"; } 
    else return false;
}
function Concept_C2M1Billboard(query) {
    if("concept" in query) { return query.concept == "_c2m1billboard"; } 
    else return false;
}
function Concept_C2M1Billboard01(query) {
    if("concept" in query) { return query.concept == "_c2m1billboard01"; } 
    else return false;
}
function Concept_C2M1abandoned01(query) {
    if("concept" in query) { return query.concept == "_c2m1abandoned01"; } 
    else return false;
}
function Concept_C2M1abandoned02(query) {
    if("concept" in query) { return query.concept == "_c2m1abandoned02"; } 
    else return false;
}
function Concept_c4m1Intro01(query) {
    if("concept" in query) { return query.concept == "_c4m1intro01"; } 
    else return false;
}
function Concept_c4m1Intro02(query) {
    if("concept" in query) { return query.concept == "_c4m1intro02"; } 
    else return false;
}
function Concept_c4m1Intro03(query) {
    if("concept" in query) { return query.concept == "_c4m1intro03"; } 
    else return false;
}
function Concept_c4m1Intro04(query) {
    if("concept" in query) { return query.concept == "_c4m1intro04"; } 
    else return false;
}
function Concept_c4m1Intro05(query) {
    if("concept" in query) { return query.concept == "_c4m1intro05"; } 
    else return false;
}
function Concept_c4m1Intro06(query) {
    if("concept" in query) { return query.concept == "_c4m1intro06"; } 
    else return false;
}
function Concept_c4m1Intro07(query) {
    if("concept" in query) { return query.concept == "_c4m1intro07"; } 
    else return false;
}
function Concept_c4m1Intro08(query) {
    if("concept" in query) { return query.concept == "_c4m1intro08"; } 
    else return false;
}
function Concept_c4m1Intro09(query) {
    if("concept" in query) { return query.concept == "_c4m1intro09"; } 
    else return false;
}
function Conceptc4m1_nogas01(query) {
    if("concept" in query) { return query.concept == "c4m1_nogas01"; } 
    else return false;
}
function Conceptc4m1_nogas02(query) {
    if("concept" in query) { return query.concept == "c4m1_nogas02"; } 
    else return false;
}
function Conceptc4m1_nogas03(query) {
    if("concept" in query) { return query.concept == "c4m1_nogas03"; } 
    else return false;
}
function Conceptc4m1_nogas04(query) {
    if("concept" in query) { return query.concept == "c4m1_nogas04"; } 
    else return false;
}
function Conceptc4m1_InBurgerTank01(query) {
    if("concept" in query) { return query.concept == "c4m1_inburgertank01"; } 
    else return false;
}
function Conceptc4m1_InBurgerTank02(query) {
    if("concept" in query) { return query.concept == "c4m1_inburgertank02"; } 
    else return false;
}
function Conceptc4m1_wreck01(query) {
    if("concept" in query) { return query.concept == "c4m1_wreck01"; } 
    else return false;
}
function Conceptc4m1_wreck02(query) {
    if("concept" in query) { return query.concept == "c4m1_wreck02"; } 
    else return false;
}
function Conceptc4m1_nogas05(query) {
    if("concept" in query) { return query.concept == "c4m1_nogas05"; } 
    else return false;
}
function Conceptc4m1_nogas06(query) {
    if("concept" in query) { return query.concept == "c4m1_nogas06"; } 
    else return false;
}
function Conceptc4m1_nogas07(query) {
    if("concept" in query) { return query.concept == "c4m1_nogas07"; } 
    else return false;
}
function Concept_c4m1Intro10(query) {
    if("concept" in query) { return query.concept == "_c4m1intro10"; } 
    else return false;
}
function Concept_c4m1Intro11(query) {
    if("concept" in query) { return query.concept == "_c4m1intro11"; } 
    else return false;
}
function Concept_c4m1Intro12(query) {
    if("concept" in query) { return query.concept == "_c4m1intro12"; } 
    else return false;
}
function Concept_c4m1Intro13(query) {
    if("concept" in query) { return query.concept == "_c4m1intro13"; } 
    else return false;
}
function Concept_c4m1Intro14(query) {
    if("concept" in query) { return query.concept == "_c4m1intro14"; } 
    else return false;
}
function Concept_c4m1Intro15(query) {
    if("concept" in query) { return query.concept == "_c4m1intro15"; } 
    else return false;
}
function Concept_c4m1Intro16(query) {
    if("concept" in query) { return query.concept == "_c4m1intro16"; } 
    else return false;
}
function Conceptc4m1_nogas10(query) {
    if("concept" in query) { return query.concept == "c4m1_nogas10"; } 
    else return false;
}
function Conceptc4m1_nogas20(query) {
    if("concept" in query) { return query.concept == "c4m1_nogas20"; } 
    else return false;
}
function Conceptc4m1_nogas21(query) {
    if("concept" in query) { return query.concept == "c4m1_nogas21"; } 
    else return false;
}
function Concept_c4m1_rainresponse(query) {
    if("concept" in query) { return query.concept == "_c4m1_rainresponse"; } 
    else return false;
}
function Concept_c4m2_seestation01(query) {
    if("concept" in query) { return query.concept == "_c4m2_seestation01"; } 
    else return false;
}
function Concept_c4m2_seestation02(query) {
    if("concept" in query) { return query.concept == "_c4m2_seestation02"; } 
    else return false;
}
function Concept_c4m2_seestation03(query) {
    if("concept" in query) { return query.concept == "_c4m2_seestation03"; } 
    else return false;
}
function Concept_c4m2_streetblocked01(query) {
    if("concept" in query) { return query.concept == "_c4m2_streetblocked01"; } 
    else return false;
}
function Concept_c4m2_waterpool01(query) {
    if("concept" in query) { return query.concept == "_c4m2_waterpool01"; } 
    else return false;
}
function Concept_c4m2_waterpool02(query) {
    if("concept" in query) { return query.concept == "_c4m2_waterpool02"; } 
    else return false;
}
function Concept_c4m2_streetblocked02(query) {
    if("concept" in query) { return query.concept == "_c4m2_streetblocked02"; } 
    else return false;
}
function Concept_c4m2_ElevatorHere01(query) {
    if("concept" in query) { return query.concept == "_c4m2_elevatorhere01"; } 
    else return false;
}
function Concept_c4m2_Witchville01(query) {
    if("concept" in query) { return query.concept == "_c4m2_witchville01"; } 
    else return false;
}
function Concept_c4m2_Witchville02(query) {
    if("concept" in query) { return query.concept == "_c4m2_witchville02"; } 
    else return false;
}
function Concept_c4m2_Witchville05(query) {
    if("concept" in query) { return query.concept == "_c4m2_witchville05"; } 
    else return false;
}
function Concept_c4m2_caneyell01(query) {
    if("concept" in query) { return query.concept == "_c4m2_caneyell01"; } 
    else return false;
}
function Concept_c4m2_gasinside01(query) {
    if("concept" in query) { return query.concept == "_c4m2_gasinside01"; } 
    else return false;
}
function Concept_c4m3_startsafe02(query) {
    if("concept" in query) { return query.concept == "_c4m3_startsafe02"; } 
    else return false;
}
function Concept_c4m3_startsafe03(query) {
    if("concept" in query) { return query.concept == "_c4m3_startsafe03"; } 
    else return false;
}
function Concept_c4m3_startsafe04(query) {
    if("concept" in query) { return query.concept == "_c4m3_startsafe04"; } 
    else return false;
}
function Concept_c4m3_rain01(query) {
    if("concept" in query) { return query.concept == "_c4m3_rain01"; } 
    else return false;
}
function Concept_c4m3_rain02(query) {
    if("concept" in query) { return query.concept == "_c4m3_rain02"; } 
    else return false;
}
function Concept_C4_BigStormHits01(query) {
    if("concept" in query) { return query.concept == "_c4_bigstormhits01"; } 
    else return false;
}
function Concept_C4_BigStormHits02(query) {
    if("concept" in query) { return query.concept == "_c4_bigstormhits02"; } 
    else return false;
}
function Concept_C4M3_FLOODED01(query) {
    if("concept" in query) { return query.concept == "_c4m3_flooded01"; } 
    else return false;
}
function Concept_C4M4_FLOODED01(query) {
    if("concept" in query) { return query.concept == "_c4m4_flooded01"; } 
    else return false;
}
function Concept_C4M4_garagesale01(query) {
    if("concept" in query) { return query.concept == "_c4m4_garagesale01"; } 
    else return false;
}
function Concept_C4M5_Intro01(query) {
    if("concept" in query) { return query.concept == "_c4m5_intro01"; } 
    else return false;
}
function Concept_C4M5_Intro02(query) {
    if("concept" in query) { return query.concept == "_c4m5_intro02"; } 
    else return false;
}
function Concept_C4M5_Intro03(query) {
    if("concept" in query) { return query.concept == "_c4m5_intro03"; } 
    else return false;
}
function Concept_C4M5_Intro04(query) {
    if("concept" in query) { return query.concept == "_c4m5_intro04"; } 
    else return false;
}
function Concept_C1M1_ElevatorHelloStart(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhellostart"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello01a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello01a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello01b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello01b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello01c(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello01c"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello01d(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello01d"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello02a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello02a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello02b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello02b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello02c(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello02c"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello02d(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello02d"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello03a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello03a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello03b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello03b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello03c(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello03c"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello03d(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello03d"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello03e(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello03e"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello04a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello04a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello04b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello04b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello04c(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello04c"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello04d(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello04d"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello04e(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello04e"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello05b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello05b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello05c(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello05c"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello06b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello06b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello07a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello07a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello07b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello07b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello07c(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello07c"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello07d(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello07d"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello07e(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello07e"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello07f(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello07f"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello07g(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello07g"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello07h(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello07h"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello08a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello08a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello08b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello08b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello08c(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello08c"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello08d(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello08d"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello08e(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello08e"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello09a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello09a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello10a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello10a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello10b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello10b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello10c(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello10c"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello11a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello11a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello12a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello12a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello12b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello12b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello12c(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello12c"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello13a(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello13a"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello13b(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello13b"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello13c(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello13c"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello13d(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello13d"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello"; } 
    else return false;
}
function Concept_C1M1_ElevatorHelloAllAliveExtra1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhelloallaliveextra1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHelloAllAliveExtra2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhelloallaliveextra2"; } 
    else return false;
}
function Concept_C4M5_FinaleStart01(query) {
    if("concept" in query) { return query.concept == "_c4m5_finalestart01"; } 
    else return false;
}
function Concept_C4M5_BoatComing01(query) {
    if("concept" in query) { return query.concept == "_c4m5_boatcoming01"; } 
    else return false;
}
function Concept_C2M1_Fall01(query) {
    if("concept" in query) { return query.concept == "_c2m1_fall01"; } 
    else return false;
}
function Concept_C2M1_Fall02(query) {
    if("concept" in query) { return query.concept == "_c2m1_fall02"; } 
    else return false;
}
function Concept_C2M1_Fall03(query) {
    if("concept" in query) { return query.concept == "_c2m1_fall03"; } 
    else return false;
}
function Concept_c2m1_searchlights01(query) {
    if("concept" in query) { return query.concept == "_c2m1_searchlights01"; } 
    else return false;
}
function Concept_c2m1_searchlights02(query) {
    if("concept" in query) { return query.concept == "_c2m1_searchlights02"; } 
    else return false;
}
function Concept_c2m1_searchlights03(query) {
    if("concept" in query) { return query.concept == "_c2m1_searchlights03"; } 
    else return false;
}
function Concept_c2m1_searchlights04(query) {
    if("concept" in query) { return query.concept == "_c2m1_searchlights04"; } 
    else return false;
}
function Concept_C2M1MonsterTruck(query) {
    if("concept" in query) { return query.concept == "_c2m1monstertruck"; } 
    else return false;
}
function Concept_introc1m1(query) {
    if("concept" in query) { return query.concept == "_introc1m1"; } 
    else return false;
}
function Concept_introc1m1a01(query) {
    if("concept" in query) { return query.concept == "_introc1m1a01"; } 
    else return false;
}
function Concept_introc1m1a02(query) {
    if("concept" in query) { return query.concept == "_introc1m1a02"; } 
    else return false;
}
function Concept_introc1m1a03(query) {
    if("concept" in query) { return query.concept == "_introc1m1a03"; } 
    else return false;
}
function Concept_introc1m1a04(query) {
    if("concept" in query) { return query.concept == "_introc1m1a04"; } 
    else return false;
}
function Concept_introc1m1a05(query) {
    if("concept" in query) { return query.concept == "_introc1m1a05"; } 
    else return false;
}
function ConceptC2M1DoneFallingAlt1(query) {
    if("concept" in query) { return query.concept == "c2m1donefallingalt1"; } 
    else return false;
}
function Concept_C2M1_Fall04(query) {
    if("concept" in query) { return query.concept == "_c2m1_fall04"; } 
    else return false;
}
function Concept_C2M1_Fall05(query) {
    if("concept" in query) { return query.concept == "_c2m1_fall05"; } 
    else return false;
}
function Concept_C2M2Entrance(query) {
    if("concept" in query) { return query.concept == "_c2m2entrance"; } 
    else return false;
}
function Concept_C2M2_Okra(query) {
    if("concept" in query) { return query.concept == "_c2m2_okra"; } 
    else return false;
}
function Concept_C2M2_Steak01(query) {
    if("concept" in query) { return query.concept == "_c2m2_steak01"; } 
    else return false;
}
function Concept_C2M2_ThisTall01(query) {
    if("concept" in query) { return query.concept == "_c2m2_thistall01"; } 
    else return false;
}
function Concept_C2M2_ThisTall02(query) {
    if("concept" in query) { return query.concept == "_c2m2_thistall02"; } 
    else return false;
}
function Concept_C2M2_Peanut01(query) {
    if("concept" in query) { return query.concept == "_c2m2_peanut01"; } 
    else return false;
}
function Concept_C2M2_Cobbler(query) {
    if("concept" in query) { return query.concept == "_c2m2_cobbler"; } 
    else return false;
}
function Concept_C2M2_MiscFood(query) {
    if("concept" in query) { return query.concept == "_c2m2_miscfood"; } 
    else return false;
}
function Concept_C2M2_LikeTaters(query) {
    if("concept" in query) { return query.concept == "_c2m2_liketaters"; } 
    else return false;
}
function Concept_C2M2_CottonCandy01(query) {
    if("concept" in query) { return query.concept == "_c2m2_cottoncandy01"; } 
    else return false;
}
function Concept_C2M2_Slide01(query) {
    if("concept" in query) { return query.concept == "_c2m2_slide01"; } 
    else return false;
}
function Concept_C2M2_Bathroom01(query) {
    if("concept" in query) { return query.concept == "_c2m2_bathroom01"; } 
    else return false;
}
function Concept_C2M2_Kiddie01(query) {
    if("concept" in query) { return query.concept == "_c2m2_kiddie01"; } 
    else return false;
}
function Concept_C2M2_Kiddie02(query) {
    if("concept" in query) { return query.concept == "_c2m2_kiddie02"; } 
    else return false;
}
function Concept_C2M2_Kiddie03(query) {
    if("concept" in query) { return query.concept == "_c2m2_kiddie03"; } 
    else return false;
}
function Concept_C2M2_Kiddie04(query) {
    if("concept" in query) { return query.concept == "_c2m2_kiddie04"; } 
    else return false;
}
function Concept_C2M2_Kiddie05(query) {
    if("concept" in query) { return query.concept == "_c2m2_kiddie05"; } 
    else return false;
}
function Concept_C2M2_Kiddie06(query) {
    if("concept" in query) { return query.concept == "_c2m2_kiddie06"; } 
    else return false;
}
function Concept_C2M2_CoachApocolypse(query) {
    if("concept" in query) { return query.concept == "_c2m2_coachapocolypse"; } 
    else return false;
}
function Concept_C2M2_CaroButton01(query) {
    if("concept" in query) { return query.concept == "_c2m2_carobutton01"; } 
    else return false;
}
function Concept_C2M2_CaroStart01(query) {
    if("concept" in query) { return query.concept == "_c2m2_carostart01"; } 
    else return false;
}
function Concept_C2M2_CaroStart03(query) {
    if("concept" in query) { return query.concept == "_c2m2_carostart03"; } 
    else return false;
}
function Concept_C2M2_CaroStart04(query) {
    if("concept" in query) { return query.concept == "_c2m2_carostart04"; } 
    else return false;
}
function Concept_C2M2_SeeSafehouse01(query) {
    if("concept" in query) { return query.concept == "_c2m2_seesafehouse01"; } 
    else return false;
}
function Concept_C2M2_Riders01(query) {
    if("concept" in query) { return query.concept == "_c2m2_riders01"; } 
    else return false;
}
function Concept_C2M2_Riders02(query) {
    if("concept" in query) { return query.concept == "_c2m2_riders02"; } 
    else return false;
}
function Concept_C2M2_Riders03(query) {
    if("concept" in query) { return query.concept == "_c2m2_riders03"; } 
    else return false;
}
function Concept_C2M2_Riders04(query) {
    if("concept" in query) { return query.concept == "_c2m2_riders04"; } 
    else return false;
}
function Concept_C2M2_Riders05(query) {
    if("concept" in query) { return query.concept == "_c2m2_riders05"; } 
    else return false;
}
function Concept_C2M2_Riders06(query) {
    if("concept" in query) { return query.concept == "_c2m2_riders06"; } 
    else return false;
}
function Concept_C2M2_Riders07(query) {
    if("concept" in query) { return query.concept == "_c2m2_riders07"; } 
    else return false;
}
function Concept_c2m3_coollight01(query) {
    if("concept" in query) { return query.concept == "_c2m3_coollight01"; } 
    else return false;
}
function Concept_c2m3_coollight02(query) {
    if("concept" in query) { return query.concept == "_c2m3_coollight02"; } 
    else return false;
}
function Concept_c2m3_cement01(query) {
    if("concept" in query) { return query.concept == "_c2m3_cement01"; } 
    else return false;
}
function Concept_c2m3_water01(query) {
    if("concept" in query) { return query.concept == "_c2m3_water01"; } 
    else return false;
}
function Concept_c2m3_hole01(query) {
    if("concept" in query) { return query.concept == "_c2m3_hole01"; } 
    else return false;
}
function Concept_c2m3_freshair01(query) {
    if("concept" in query) { return query.concept == "_c2m3_freshair01"; } 
    else return false;
}
function Concept_c2m3_coaster01(query) {
    if("concept" in query) { return query.concept == "_c2m3_coaster01"; } 
    else return false;
}
function Concept_c2m3_coaster02(query) {
    if("concept" in query) { return query.concept == "_c2m3_coaster02"; } 
    else return false;
}
function Concept_c2m3_coaster03(query) {
    if("concept" in query) { return query.concept == "_c2m3_coaster03"; } 
    else return false;
}
function Concept_c2m3_coaster05(query) {
    if("concept" in query) { return query.concept == "_c2m3_coaster05"; } 
    else return false;
}
function Concept_c2m3_coaster06(query) {
    if("concept" in query) { return query.concept == "_c2m3_coaster06"; } 
    else return false;
}
function Concept_c2m3_coaster07(query) {
    if("concept" in query) { return query.concept == "_c2m3_coaster07"; } 
    else return false;
}
function Concept_c2m3_coaster08(query) {
    if("concept" in query) { return query.concept == "_c2m3_coaster08"; } 
    else return false;
}
function Concept_c2m3_howcool(query) {
    if("concept" in query) { return query.concept == "_c2m3_howcool"; } 
    else return false;
}
function ConceptC2M3SafeIntro001(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro001"; } 
    else return false;
}
function ConceptC2M3SafeIntro002(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro002"; } 
    else return false;
}
function ConceptC2M3SafeIntro003(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro003"; } 
    else return false;
}
function ConceptC2M3SafeIntro004(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro004"; } 
    else return false;
}
function ConceptC2M3SafeIntro005(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro005"; } 
    else return false;
}
function ConceptC2M3SafeIntro006(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro006"; } 
    else return false;
}
function ConceptC2M3SafeIntro007(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro007"; } 
    else return false;
}
function ConceptC2M3SafeIntro008(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro008"; } 
    else return false;
}
function ConceptC2M3SafeIntro009(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro009"; } 
    else return false;
}
function ConceptC2M3SafeIntro010(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro010"; } 
    else return false;
}
function ConceptC2M3SafeIntro011(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro011"; } 
    else return false;
}
function ConceptC2M3SafeIntro012(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro012"; } 
    else return false;
}
function ConceptC2M3SafeIntro013(query) {
    if("concept" in query) { return query.concept == "c2m3safeintro013"; } 
    else return false;
}
function ConceptC2M3Chopper001(query) {
    if("concept" in query) { return query.concept == "c2m3chopper001"; } 
    else return false;
}
function ConceptC2M4Gate000(query) {
    if("concept" in query) { return query.concept == "c2m4gate000"; } 
    else return false;
}
function ConceptC2M4Gate001(query) {
    if("concept" in query) { return query.concept == "c2m4gate001"; } 
    else return false;
}
function ConceptC2M4Gate002(query) {
    if("concept" in query) { return query.concept == "c2m4gate002"; } 
    else return false;
}
function ConceptC2M4Gate003(query) {
    if("concept" in query) { return query.concept == "c2m4gate003"; } 
    else return false;
}
function ConceptC2M4Gate004(query) {
    if("concept" in query) { return query.concept == "c2m4gate004"; } 
    else return false;
}
function ConceptC2M4Gate005(query) {
    if("concept" in query) { return query.concept == "c2m4gate005"; } 
    else return false;
}
function ConceptC2M4PenSmell001(query) {
    if("concept" in query) { return query.concept == "c2m4pensmell001"; } 
    else return false;
}
function Concept_C2M4_Ribs(query) {
    if("concept" in query) { return query.concept == "_c2m4_ribs"; } 
    else return false;
}
function Concept_C2M4_GateOpen001(query) {
    if("concept" in query) { return query.concept == "_c2m4_gateopen001"; } 
    else return false;
}
function ConceptC2M4JockeyEasterEgg(query) {
    if("concept" in query) { return query.concept == "c2m4jockeyeasteregg"; } 
    else return false;
}
function IsNotSaidJockeyEasterEgg(query) {
    if("worldjockeyeasteregg" in query) { return query.worldjockeyeasteregg != 1; } 
    else return true;
}
function Conceptc2m5_intro001(query) {
    if("concept" in query) { return query.concept == "c2m5_intro001"; } 
    else return false;
}
function Conceptc2m5_intro002(query) {
    if("concept" in query) { return query.concept == "c2m5_intro002"; } 
    else return false;
}
function Conceptc2m5_intro003(query) {
    if("concept" in query) { return query.concept == "c2m5_intro003"; } 
    else return false;
}
function Conceptc2m5_intro004(query) {
    if("concept" in query) { return query.concept == "c2m5_intro004"; } 
    else return false;
}
function Conceptc2m5_intro005(query) {
    if("concept" in query) { return query.concept == "c2m5_intro005"; } 
    else return false;
}
function Conceptc2m5_intro006(query) {
    if("concept" in query) { return query.concept == "c2m5_intro006"; } 
    else return false;
}
function Conceptc2m5_intro007(query) {
    if("concept" in query) { return query.concept == "c2m5_intro007"; } 
    else return false;
}
function Conceptc2m5_intro008(query) {
    if("concept" in query) { return query.concept == "c2m5_intro008"; } 
    else return false;
}
function Conceptc2m5_intro009(query) {
    if("concept" in query) { return query.concept == "c2m5_intro009"; } 
    else return false;
}
function Conceptc2m5_intro010(query) {
    if("concept" in query) { return query.concept == "c2m5_intro010"; } 
    else return false;
}
function Conceptc2m5_intro011(query) {
    if("concept" in query) { return query.concept == "c2m5_intro011"; } 
    else return false;
}
function Conceptc2m5_intro012(query) {
    if("concept" in query) { return query.concept == "c2m5_intro012"; } 
    else return false;
}
function Conceptc2m5_intro013(query) {
    if("concept" in query) { return query.concept == "c2m5_intro013"; } 
    else return false;
}
function Conceptc2m5_intro014(query) {
    if("concept" in query) { return query.concept == "c2m5_intro014"; } 
    else return false;
}
function Conceptc2m5_intro015(query) {
    if("concept" in query) { return query.concept == "c2m5_intro015"; } 
    else return false;
}
function Conceptc2m5_intro016(query) {
    if("concept" in query) { return query.concept == "c2m5_intro016"; } 
    else return false;
}
function Conceptc2m5_intro017(query) {
    if("concept" in query) { return query.concept == "c2m5_intro017"; } 
    else return false;
}
function Conceptc2m5_intro018(query) {
    if("concept" in query) { return query.concept == "c2m5_intro018"; } 
    else return false;
}
function Conceptc2m5_intro019(query) {
    if("concept" in query) { return query.concept == "c2m5_intro019"; } 
    else return false;
}
function Conceptc2m5_intro020(query) {
    if("concept" in query) { return query.concept == "c2m5_intro020"; } 
    else return false;
}
function Conceptc2m5_intro021(query) {
    if("concept" in query) { return query.concept == "c2m5_intro021"; } 
    else return false;
}
function Conceptc2m5_intro022(query) {
    if("concept" in query) { return query.concept == "c2m5_intro022"; } 
    else return false;
}
function Conceptc2m5_intro023(query) {
    if("concept" in query) { return query.concept == "c2m5_intro023"; } 
    else return false;
}
function Conceptc2m5_intro024(query) {
    if("concept" in query) { return query.concept == "c2m5_intro024"; } 
    else return false;
}
function Conceptc2m5_intro025(query) {
    if("concept" in query) { return query.concept == "c2m5_intro025"; } 
    else return false;
}
function Conceptc2m5_intro026(query) {
    if("concept" in query) { return query.concept == "c2m5_intro026"; } 
    else return false;
}
function Conceptc2m5_intro027(query) {
    if("concept" in query) { return query.concept == "c2m5_intro027"; } 
    else return false;
}
function Conceptc2m5_intro028(query) {
    if("concept" in query) { return query.concept == "c2m5_intro028"; } 
    else return false;
}
function Conceptc2m5_intro029(query) {
    if("concept" in query) { return query.concept == "c2m5_intro029"; } 
    else return false;
}
function ConceptC2M5_lipsync001(query) {
    if("concept" in query) { return query.concept == "c2m5_lipsync001"; } 
    else return false;
}
function ConceptC2M5_lipsync002(query) {
    if("concept" in query) { return query.concept == "c2m5_lipsync002"; } 
    else return false;
}
function ConceptC2M5ConcertTankResponse(query) {
    if("concept" in query) { return query.concept == "c2m5concerttankresponse"; } 
    else return false;
}
function ConceptC2M5ChopperOCD(query) {
    if("concept" in query) { return query.concept == "c2m5chopperocd"; } 
    else return false;
}
function Concept_c1m4startelevator2(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator2"; } 
    else return false;
}
function Concept_c1m4startelevator2a(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator2a"; } 
    else return false;
}
function Concept_c1m4startelevator2b(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator2b"; } 
    else return false;
}
function Concept_c1m4startelevator2c(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator2c"; } 
    else return false;
}
function Concept_c1m4startelevator3(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator3"; } 
    else return false;
}
function Concept_c1m4startelevator3a(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator3a"; } 
    else return false;
}
function Concept_c1m4startelevator3b(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator3b"; } 
    else return false;
}
function Concept_c1m4startelevator3c(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator3c"; } 
    else return false;
}
function Concept_c1m4startelevator3d(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator3d"; } 
    else return false;
}
function Concept_c1m4startelevator3e(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator3e"; } 
    else return false;
}
function Concept_c1m4startelevator4a(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator4a"; } 
    else return false;
}
function Concept_c1m4startelevator4b(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator4b"; } 
    else return false;
}
function Concept_c1m4startelevator4c(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator4c"; } 
    else return false;
}
function Concept_c1m4startelevator5a1(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator5a1"; } 
    else return false;
}
function Concept_c1m4startelevator5a(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator5a"; } 
    else return false;
}
function Concept_c1m4startelevator5b(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator5b"; } 
    else return false;
}
function Concept_c1m4startelevator5c(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator5c"; } 
    else return false;
}
function Concept_c1m4startelevator6a1(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevator6a1"; } 
    else return false;
}
function Concept_c1m4startelevatorLast(query) {
    if("concept" in query) { return query.concept == "_c1m4startelevatorlast"; } 
    else return false;
}
function ConceptC1M4FinaleStartResponse(query) {
    if("concept" in query) { return query.concept == "c1m4finalestartresponse"; } 
    else return false;
}
function ConceptC2M5_OratorBlank01(query) {
    if("concept" in query) { return query.concept == "c2m5_oratorblank01"; } 
    else return false;
}
function ConceptC2M5_OratorBlank02(query) {
    if("concept" in query) { return query.concept == "c2m5_oratorblank02"; } 
    else return false;
}
function ConceptC2M5_Button2Yell(query) {
    if("concept" in query) { return query.concept == "c2m5_button2yell"; } 
    else return false;
}
function ConceptC2M5_PlanWorked(query) {
    if("concept" in query) { return query.concept == "c2m5_planworked"; } 
    else return false;
}
function ConceptC2M5_PlanWorkedb(query) {
    if("concept" in query) { return query.concept == "c2m5_planworkedb"; } 
    else return false;
}
function ConceptC2M5_Choppercoming(query) {
    if("concept" in query) { return query.concept == "c2m5_choppercoming"; } 
    else return false;
}
function ConceptC2M5_PilotNag(query) {
    if("concept" in query) { return query.concept == "c2m5_pilotnag"; } 
    else return false;
}
function ConceptC5M5_Soldier1(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier1"; } 
    else return false;
}
function ConceptC5M5_Soldier2(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier2"; } 
    else return false;
}
function ConceptC5M5_Soldier2Bomb(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier2bomb"; } 
    else return false;
}
function ConceptC5M5_Soldier1Conv01(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier1conv01"; } 
    else return false;
}
function ConceptC5M5_Soldier1Conv02(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier1conv02"; } 
    else return false;
}
function ConceptC5M5_SurvivorConv01(query) {
    if("concept" in query) { return query.concept == "c5m5_survivorconv01"; } 
    else return false;
}
function ConceptC5M5_Soldier1Conv03(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier1conv03"; } 
    else return false;
}
function ConceptC5M5_SurvivorConv02(query) {
    if("concept" in query) { return query.concept == "c5m5_survivorconv02"; } 
    else return false;
}
function ConceptC5M5_Soldier1Conv04(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier1conv04"; } 
    else return false;
}
function ConceptC5M5_SurvivorConv03(query) {
    if("concept" in query) { return query.concept == "c5m5_survivorconv03"; } 
    else return false;
}
function ConceptC5M5_Soldier1Conv05(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier1conv05"; } 
    else return false;
}
function ConceptC5M5_Soldier2Conv01(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier2conv01"; } 
    else return false;
}
function ConceptC5M5_Soldier1Conv06(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier1conv06"; } 
    else return false;
}
function ConceptC5M5_SurvivorConv04(query) {
    if("concept" in query) { return query.concept == "c5m5_survivorconv04"; } 
    else return false;
}
function ConceptC5M5_SurvivorConv05(query) {
    if("concept" in query) { return query.concept == "c5m5_survivorconv05"; } 
    else return false;
}
function ConceptC5M5_Soldier2Conv02(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier2conv02"; } 
    else return false;
}
function ConceptC5M5_Soldier1Conv07(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier1conv07"; } 
    else return false;
}
function ConceptC5M5_Soldier1Conv08(query) {
    if("concept" in query) { return query.concept == "c5m5_soldier1conv08"; } 
    else return false;
}
function ConceptC5M5_Button2(query) {
    if("concept" in query) { return query.concept == "c5m5_button2"; } 
    else return false;
}
function ConceptC5M5_GateDown(query) {
    if("concept" in query) { return query.concept == "c5m5_gatedown"; } 
    else return false;
}
function ConceptC5M5_saferoom001(query) {
    if("concept" in query) { return query.concept == "c5m5_saferoom001"; } 
    else return false;
}
function ConceptC5M5_saferoom002(query) {
    if("concept" in query) { return query.concept == "c5m5_saferoom002"; } 
    else return false;
}
function ConceptC5M5_saferoom003(query) {
    if("concept" in query) { return query.concept == "c5m5_saferoom003"; } 
    else return false;
}
function ConceptC5M5_saferoom004(query) {
    if("concept" in query) { return query.concept == "c5m5_saferoom004"; } 
    else return false;
}
function ConceptC5M5_saferoom005(query) {
    if("concept" in query) { return query.concept == "c5m5_saferoom005"; } 
    else return false;
}
function ConceptC5M5Truck(query) {
    if("concept" in query) { return query.concept == "c5m5truck"; } 
    else return false;
}
function ConceptC1M4NearFinale02a(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale02a"; } 
    else return false;
}
function ConceptC1M4NearFinale02b(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale02b"; } 
    else return false;
}
function ConceptC1M4NearFinale02c(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale02c"; } 
    else return false;
}
function ConceptC1M4NearFinale02d(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale02d"; } 
    else return false;
}
function ConceptC1M4NearFinale02e(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale02e"; } 
    else return false;
}
function ConceptC1M4NearFinale03a(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale03a"; } 
    else return false;
}
function ConceptC1M4NearFinale03b(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale03b"; } 
    else return false;
}
function ConceptC1M4NearFinale03c(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale03c"; } 
    else return false;
}
function Conceptc1m4NearFinale1a(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale1a"; } 
    else return false;
}
function Conceptc1m4NearFinale1c(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale1c"; } 
    else return false;
}
function Conceptc1m4NearFinale1d(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale1d"; } 
    else return false;
}
function Conceptc1m4NearFinale1e(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale1e"; } 
    else return false;
}
function Conceptc1m4NearFinale1f(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale1f"; } 
    else return false;
}
function Conceptc1m4NearFinale1g(query) {
    if("concept" in query) { return query.concept == "c1m4nearfinale1g"; } 
    else return false;
}
function Concept_introc1m1b01(query) {
    if("concept" in query) { return query.concept == "_introc1m1b01"; } 
    else return false;
}
function Concept_introc1m1b02(query) {
    if("concept" in query) { return query.concept == "_introc1m1b02"; } 
    else return false;
}
function Concept_introc1m1b03(query) {
    if("concept" in query) { return query.concept == "_introc1m1b03"; } 
    else return false;
}
function Concept_introc1m1b04(query) {
    if("concept" in query) { return query.concept == "_introc1m1b04"; } 
    else return false;
}
function Concept_introc1m1b05(query) {
    if("concept" in query) { return query.concept == "_introc1m1b05"; } 
    else return false;
}
function Concept_introc1m1b06(query) {
    if("concept" in query) { return query.concept == "_introc1m1b06"; } 
    else return false;
}
function Concept_introc1m1b07(query) {
    if("concept" in query) { return query.concept == "_introc1m1b07"; } 
    else return false;
}
function Concept_introc1m1b08(query) {
    if("concept" in query) { return query.concept == "_introc1m1b08"; } 
    else return false;
}
function Concept_introc1m1b09(query) {
    if("concept" in query) { return query.concept == "_introc1m1b09"; } 
    else return false;
}
function Concept_introc1m1b10(query) {
    if("concept" in query) { return query.concept == "_introc1m1b10"; } 
    else return false;
}
function Concept_introc1m1b11(query) {
    if("concept" in query) { return query.concept == "_introc1m1b11"; } 
    else return false;
}
function Concept_introc1m1c01(query) {
    if("concept" in query) { return query.concept == "_introc1m1c01"; } 
    else return false;
}
function Concept_introc1m1c02(query) {
    if("concept" in query) { return query.concept == "_introc1m1c02"; } 
    else return false;
}
function Concept_introc1m1d01(query) {
    if("concept" in query) { return query.concept == "_introc1m1d01"; } 
    else return false;
}
function Concept_introc1m1firealert(query) {
    if("concept" in query) { return query.concept == "_introc1m1firealert"; } 
    else return false;
}
function Concept_introc1m1b08donuts(query) {
    if("concept" in query) { return query.concept == "_introc1m1b08donuts"; } 
    else return false;
}
function Concept_introc1m1helileft(query) {
    if("concept" in query) { return query.concept == "_introc1m1helileft"; } 
    else return false;
}
function Concept_introc1m1last(query) {
    if("concept" in query) { return query.concept == "_introc1m1last"; } 
    else return false;
}
function Concept_introc1m1lastweapons(query) {
    if("concept" in query) { return query.concept == "_introc1m1lastweapons"; } 
    else return false;
}
function Concept_introc1m1MovieIntro(query) {
    if("concept" in query) { return query.concept == "_introc1m1movieintro"; } 
    else return false;
}
function Concept_C1M2Abandoned(query) {
    if("concept" in query) { return query.concept == "_c1m2abandoned"; } 
    else return false;
}
function Conceptc1m1_elevator_ready2(query) {
    if("concept" in query) { return query.concept == "c1m1_elevator_ready2"; } 
    else return false;
}
function ConceptC5M1_intro001(query) {
    if("concept" in query) { return query.concept == "c5m1_intro001"; } 
    else return false;
}
function ConceptC5M1_intro002(query) {
    if("concept" in query) { return query.concept == "c5m1_intro002"; } 
    else return false;
}
function ConceptC5M1_intro003(query) {
    if("concept" in query) { return query.concept == "c5m1_intro003"; } 
    else return false;
}
function ConceptC1M3AlarmOffa(query) {
    if("concept" in query) { return query.concept == "c1m3alarmoffa"; } 
    else return false;
}
function ConceptAskWhat(query) {
    if("concept" in query) { return query.concept == "askwhat"; } 
    else return false;
}
function ConceptC1M4SafeRoom2a1(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2a1"; } 
    else return false;
}
function ConceptC1M4SafeRoom2a2(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2a2"; } 
    else return false;
}
function ConceptC1M4SafeRoom2a3(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2a3"; } 
    else return false;
}
function ConceptC1M4SafeRoom2a4(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2a4"; } 
    else return false;
}
function ConceptC1M4SafeRoom2a5(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2a5"; } 
    else return false;
}
function ConceptC1M4SafeRoom2b1(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2b1"; } 
    else return false;
}
function ConceptC1M4SafeRoom2b2(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2b2"; } 
    else return false;
}
function ConceptC1M4SafeRoom2b3(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2b3"; } 
    else return false;
}
function ConceptC1M4SafeRoom2b4(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2b4"; } 
    else return false;
}
function ConceptC1M4SafeRoom2b5(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2b5"; } 
    else return false;
}
function ConceptC1M4SafeRoom2c1(query) {
    if("concept" in query) { return query.concept == "c1m4saferoom2c1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveNickIntro1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3alivenickintro1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveNickIntro2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3alivenickintro2"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveRochelleIntro(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3aliverochelleintro"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveName1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3alivename1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveName2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3alivename2"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveWhoIsDead(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3whoisdead"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveNameDead(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3alivenamedead"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveNameDead2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3alivenamedead2"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveExtra1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3aliveextra1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveExtraEnd1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3aliveextraend1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveExtra2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3aliveextra2"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello3AliveExtraGuns(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello3aliveextraguns"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello2AliveNickIntro1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello2alivenickintro1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello2AliveNickIntro2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello2alivenickintro2"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello2AliveName1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello2alivename1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello2AliveName2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello2alivename2"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello2AliveExtra1(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello2aliveextra1"; } 
    else return false;
}
function Concept_C1M1_ElevatorHello2AliveExtra2(query) {
    if("concept" in query) { return query.concept == "_c1m1_elevatorhello2aliveextra2"; } 
    else return false;
}
function ConceptC5M1_intro004(query) {
    if("concept" in query) { return query.concept == "c5m1_intro004"; } 
    else return false;
}
function ConceptC5M1_intro005(query) {
    if("concept" in query) { return query.concept == "c5m1_intro005"; } 
    else return false;
}
function ConceptC5M1_intro006(query) {
    if("concept" in query) { return query.concept == "c5m1_intro006"; } 
    else return false;
}
function ConceptC5M1_intro007(query) {
    if("concept" in query) { return query.concept == "c5m1_intro007"; } 
    else return false;
}
function ConceptC5M1_intro008(query) {
    if("concept" in query) { return query.concept == "c5m1_intro008"; } 
    else return false;
}
function ConceptC5M1_intro009(query) {
    if("concept" in query) { return query.concept == "c5m1_intro009"; } 
    else return false;
}
function ConceptC5M1_intro010(query) {
    if("concept" in query) { return query.concept == "c5m1_intro010"; } 
    else return false;
}
function ConceptC5M5_Button2099(query) {
    if("concept" in query) { return query.concept == "c5m5_button2099"; } 
    else return false;
}
function ConceptC5M5_Button2100(query) {
    if("concept" in query) { return query.concept == "c5m5_button2100"; } 
    else return false;
}
function ConceptPlayer_TakeVomitJarC1a(query) {
    if("concept" in query) { return query.concept == "player.takevomitjarc1a"; } 
    else return false;
}
function ConceptPlayer_CoverMeC1R(query) {
    if("concept" in query) { return query.concept == "player.covermec1r"; } 
    else return false;
}
function ConceptPlayer_CoverMeC1RCoach1(query) {
    if("concept" in query) { return query.concept == "player.covermec1rcoach1"; } 
    else return false;
}
function ConceptPlayer_CoverMeC1RCoach2(query) {
    if("concept" in query) { return query.concept == "player.covermec1rcoach2"; } 
    else return false;
}
function ConceptPlayer_GooedBySpitterC1R(query) {
    if("concept" in query) { return query.concept == "player.gooedbyspitterc1r"; } 
    else return false;
}
function ConceptBeNice(query) {
    if("concept" in query) { return query.concept == "benice"; } 
    else return false;
}
function ConceptC1M1Crumbs(query) {
    if("concept" in query) { return query.concept == "c1m1crumbs"; } 
    else return false;
}
function ConceptC1M1ElevatorRules(query) {
    if("concept" in query) { return query.concept == "c1m1elevatorrules"; } 
    else return false;
}
function ConceptC1M1WeAreScrewed(query) {
    if("concept" in query) { return query.concept == "c1m1wearescrewed"; } 
    else return false;
}
function ConceptC1M2SafeRooma1(query) {
    if("concept" in query) { return query.concept == "c1m2saferooma1"; } 
    else return false;
}
function ConceptC1M2SafeRooma2(query) {
    if("concept" in query) { return query.concept == "c1m2saferooma2"; } 
    else return false;
}
function ConceptC1M2SafeRooma3(query) {
    if("concept" in query) { return query.concept == "c1m2saferooma3"; } 
    else return false;
}
function ConceptC1M2SafeRooma4(query) {
    if("concept" in query) { return query.concept == "c1m2saferooma4"; } 
    else return false;
}
function ConceptC1M2SafeRoomb1(query) {
    if("concept" in query) { return query.concept == "c1m2saferoomb1"; } 
    else return false;
}
function ConceptC1M2SafeRoomb2(query) {
    if("concept" in query) { return query.concept == "c1m2saferoomb2"; } 
    else return false;
}
function ConceptC1M2SafeRoomb3(query) {
    if("concept" in query) { return query.concept == "c1m2saferoomb3"; } 
    else return false;
}
function ConceptC1M2SafeRoomc1(query) {
    if("concept" in query) { return query.concept == "c1m2saferoomc1"; } 
    else return false;
}
function ConceptC1M2SafeRoomc2(query) {
    if("concept" in query) { return query.concept == "c1m2saferoomc2"; } 
    else return false;
}
function ConceptC1M2SafeRoomd1(query) {
    if("concept" in query) { return query.concept == "c1m2saferoomd1"; } 
    else return false;
}
function ConceptC1M2SafeRoomd2(query) {
    if("concept" in query) { return query.concept == "c1m2saferoomd2"; } 
    else return false;
}
function ConceptC1M2SafeRoomd2a(query) {
    if("concept" in query) { return query.concept == "c1m2saferoomd2a"; } 
    else return false;
}
function ConceptBlankTesto(query) {
    if("concept" in query) { return query.concept == "blanktesto"; } 
    else return false;
}
function ConceptC5M2_signcontagious01(query) {
    if("concept" in query) { return query.concept == "c5m2_signcontagious01"; } 
    else return false;
}
function ConceptC5M2Horse001(query) {
    if("concept" in query) { return query.concept == "c5m2horse001"; } 
    else return false;
}
function ConceptC5M2Freeway01(query) {
    if("concept" in query) { return query.concept == "c5m2freeway01"; } 
    else return false;
}
function ConceptC5M2_BusDoors01(query) {
    if("concept" in query) { return query.concept == "c5m2_busdoors01"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse1(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse1"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse2(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse2"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse3(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse3"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse3a(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse3a"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse4(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse4"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse5(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse5"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse6(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse6"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse7(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse7"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse8(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse8"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse8a(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse8a"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse8b(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse8b"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse8c(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse8c"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse8d(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse8d"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse9(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse9"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse10(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse10"; } 
    else return false;
}
function ConceptC1M2FirstOutsideResponse11(query) {
    if("concept" in query) { return query.concept == "c1m2firstoutsideresponse11"; } 
    else return false;
}
function ConceptWhitaker_Nags(query) {
    if("concept" in query) { return query.concept == "whitaker.nags"; } 
    else return false;
}
function ConceptC5M1Flyby01(query) {
    if("concept" in query) { return query.concept == "c5m1flyby01"; } 
    else return false;
}
function ConceptC5M3Freeway01(query) {
    if("concept" in query) { return query.concept == "c5m3freeway01"; } 
    else return false;
}
function ConceptC5M3Sniper01(query) {
    if("concept" in query) { return query.concept == "c5m3sniper01"; } 
    else return false;
}
function ConceptC5M3manhole01(query) {
    if("concept" in query) { return query.concept == "c5m3manhole01"; } 
    else return false;
}
function ConceptC1M2TankerAttack(query) {
    if("concept" in query) { return query.concept == "c1m2tankerattack"; } 
    else return false;
}
function ConceptC5M3Bodies01(query) {
    if("concept" in query) { return query.concept == "c5m3bodies01"; } 
    else return false;
}
function ConceptC5M3Bodies02(query) {
    if("concept" in query) { return query.concept == "c5m3bodies02"; } 
    else return false;
}
function ConceptC5M3Bodies03(query) {
    if("concept" in query) { return query.concept == "c5m3bodies03"; } 
    else return false;
}
function ConceptC5M3Bodies04(query) {
    if("concept" in query) { return query.concept == "c5m3bodies04"; } 
    else return false;
}
function ConceptC5M3BeenShot(query) {
    if("concept" in query) { return query.concept == "c5m3beenshot"; } 
    else return false;
}
function ConceptC5M3SewerIn01(query) {
    if("concept" in query) { return query.concept == "c5m3sewerin01"; } 
    else return false;
}
function ConceptC5M3AlarmFieldNags01(query) {
    if("concept" in query) { return query.concept == "c5m3alarmfieldnags01"; } 
    else return false;
}
function ConceptC5M3AlarmFieldNags02(query) {
    if("concept" in query) { return query.concept == "c5m3alarmfieldnags02"; } 
    else return false;
}
function ConceptC5M3AlarmFieldNags03(query) {
    if("concept" in query) { return query.concept == "c5m3alarmfieldnags03"; } 
    else return false;
}
function ConceptC5M3SeeGraveyard01(query) {
    if("concept" in query) { return query.concept == "c5m3seegraveyard01"; } 
    else return false;
}
function ConceptC5M3SeeGraveyard02(query) {
    if("concept" in query) { return query.concept == "c5m3seegraveyard02"; } 
    else return false;
}
function ConceptC5M3SeeGraveyard03(query) {
    if("concept" in query) { return query.concept == "c5m3seegraveyard03"; } 
    else return false;
}
function ConceptC5M3SeeGraveyard04(query) {
    if("concept" in query) { return query.concept == "c5m3seegraveyard04"; } 
    else return false;
}
function ConceptC5M3SeeGraveyard05(query) {
    if("concept" in query) { return query.concept == "c5m3seegraveyard05"; } 
    else return false;
}
function ConceptC5M3SeeGraveyard06(query) {
    if("concept" in query) { return query.concept == "c5m3seegraveyard06"; } 
    else return false;
}
function ConceptC5M3SeeGraveyard07(query) {
    if("concept" in query) { return query.concept == "c5m3seegraveyard07"; } 
    else return false;
}
function ConceptC5M3GraveNags01(query) {
    if("concept" in query) { return query.concept == "c5m3gravenags01"; } 
    else return false;
}
function ConceptC5M3GraveNags02(query) {
    if("concept" in query) { return query.concept == "c5m3gravenags02"; } 
    else return false;
}
function Concept_C5M3GraveSmells(query) {
    if("concept" in query) { return query.concept == "_c5m3gravesmells"; } 
    else return false;
}
function Concept_C5M3SmallFavors(query) {
    if("concept" in query) { return query.concept == "_c5m3smallfavors"; } 
    else return false;
}
function ConceptC5M4BombExt(query) {
    if("concept" in query) { return query.concept == "c5m4bombext"; } 
    else return false;
}
function ConceptC5M4BombInt(query) {
    if("concept" in query) { return query.concept == "c5m4bombint"; } 
    else return false;
}
function ConceptC5M4BombIntA(query) {
    if("concept" in query) { return query.concept == "c5m4bombinta"; } 
    else return false;
}
function ConceptWorldIntroC31a1(query) {
    if("concept" in query) { return query.concept == "worldintroc31a1"; } 
    else return false;
}
function ConceptWorldIntroC31a2(query) {
    if("concept" in query) { return query.concept == "worldintroc31a2"; } 
    else return false;
}
function ConceptWorldIntroC31a3(query) {
    if("concept" in query) { return query.concept == "worldintroc31a3"; } 
    else return false;
}
function ConceptWorldIntroC31a4(query) {
    if("concept" in query) { return query.concept == "worldintroc31a4"; } 
    else return false;
}
function ConceptWorldIntroC31a5(query) {
    if("concept" in query) { return query.concept == "worldintroc31a5"; } 
    else return false;
}
function ConceptWorldIntroC31b1(query) {
    if("concept" in query) { return query.concept == "worldintroc31b1"; } 
    else return false;
}
function ConceptWorldIntroC31b2(query) {
    if("concept" in query) { return query.concept == "worldintroc31b2"; } 
    else return false;
}
function ConceptWorldIntroC31c1(query) {
    if("concept" in query) { return query.concept == "worldintroc31c1"; } 
    else return false;
}
function ConceptWorldIntroC31c2(query) {
    if("concept" in query) { return query.concept == "worldintroc31c2"; } 
    else return false;
}
function ConceptWorldIntroC31c3(query) {
    if("concept" in query) { return query.concept == "worldintroc31c3"; } 
    else return false;
}
function ConceptWorldIntroC31d1(query) {
    if("concept" in query) { return query.concept == "worldintroc31d1"; } 
    else return false;
}
function ConceptWorldIntroC31d2(query) {
    if("concept" in query) { return query.concept == "worldintroc31d2"; } 
    else return false;
}
function ConceptWorldIntroC31e1(query) {
    if("concept" in query) { return query.concept == "worldintroc31e1"; } 
    else return false;
}
function ConceptWorldIntroC31e2(query) {
    if("concept" in query) { return query.concept == "worldintroc31e2"; } 
    else return false;
}
function ConceptWorldIntroC31e2a(query) {
    if("concept" in query) { return query.concept == "worldintroc31e2a"; } 
    else return false;
}
function ConceptWorldIntroC31e3(query) {
    if("concept" in query) { return query.concept == "worldintroc31e3"; } 
    else return false;
}
function ConceptWorldIntroC31e3a(query) {
    if("concept" in query) { return query.concept == "worldintroc31e3a"; } 
    else return false;
}
function ConceptWorldIntroC3e1(query) {
    if("concept" in query) { return query.concept == "worldintroc3e1"; } 
    else return false;
}
function ConceptWorldIntroC3f1(query) {
    if("concept" in query) { return query.concept == "worldintroc3f1"; } 
    else return false;
}
function ConceptWorldIntroC3f2(query) {
    if("concept" in query) { return query.concept == "worldintroc3f2"; } 
    else return false;
}
function ConceptWorldIntroC31g1(query) {
    if("concept" in query) { return query.concept == "worldintroc31g1"; } 
    else return false;
}
function ConceptWorldIntroC31g2(query) {
    if("concept" in query) { return query.concept == "worldintroc31g2"; } 
    else return false;
}
function ConceptWorldIntroC31c4(query) {
    if("concept" in query) { return query.concept == "worldintroc31c4"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingJ2(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingj2"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingJ3(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingj3"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingJ(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingj"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingk2(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingk2"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingk3(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingk3"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingk(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingk"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingL2(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingl2"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingL3(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingl3"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingM2(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingm2"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingM3(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingm3"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingM4(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingm4"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingM5(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingm5"; } 
    else return false;
}
function ConceptWorldC3M1FerryCrossingN2(query) {
    if("concept" in query) { return query.concept == "worldc3m1ferrycrossingn2"; } 
    else return false;
}
function ConceptC3M1FerryEnd2(query) {
    if("concept" in query) { return query.concept == "c3m1ferryend2"; } 
    else return false;
}
function ConceptC3M2Starta(query) {
    if("concept" in query) { return query.concept == "c3m2starta"; } 
    else return false;
}
function ConceptC3M2Startb(query) {
    if("concept" in query) { return query.concept == "c3m2startb"; } 
    else return false;
}
function ConceptInfoRemC3M2WhereAreWe2(query) {
    if("concept" in query) { return query.concept == "inforemc3m2wherearewe2"; } 
    else return false;
}
function ConceptInfoRemC3M2Bathtub2(query) {
    if("concept" in query) { return query.concept == "inforemc3m2bathtub2"; } 
    else return false;
}
function ConceptInfoRemC3M2Bathtub3(query) {
    if("concept" in query) { return query.concept == "inforemc3m2bathtub3"; } 
    else return false;
}
function ConceptPlayer_SeeMudmen2a(query) {
    if("concept" in query) { return query.concept == "player.seemudmen2a"; } 
    else return false;
}
function ConceptC3M2SafeRoom2(query) {
    if("concept" in query) { return query.concept == "c3m2saferoom2"; } 
    else return false;
}
function ConceptC3M2SafeRoom(query) {
    if("concept" in query) { return query.concept == "c3m2saferoom"; } 
    else return false;
}
function ConceptC3M2SafeRooma2(query) {
    if("concept" in query) { return query.concept == "c3m2saferooma2"; } 
    else return false;
}
function ConceptC3M2SafeRoomb2(query) {
    if("concept" in query) { return query.concept == "c3m2saferoomb2"; } 
    else return false;
}
function ConceptC3M2SafeRoomb3(query) {
    if("concept" in query) { return query.concept == "c3m2saferoomb3"; } 
    else return false;
}
function ConceptC3M2SafeRoom2d(query) {
    if("concept" in query) { return query.concept == "c3m2saferoom2d"; } 
    else return false;
}
function ConceptC3M2SafeRoom3d(query) {
    if("concept" in query) { return query.concept == "c3m2saferoom3d"; } 
    else return false;
}
function ConceptC5M4Tractor(query) {
    if("concept" in query) { return query.concept == "c5m4tractor"; } 
    else return false;
}
function ConceptC5M4PoolTable(query) {
    if("concept" in query) { return query.concept == "c5m4pooltable"; } 
    else return false;
}
function ConceptC5M4JetPlanes(query) {
    if("concept" in query) { return query.concept == "c5m4jetplanes"; } 
    else return false;
}
function ConceptC5M1Flyby02(query) {
    if("concept" in query) { return query.concept == "c5m1flyby02"; } 
    else return false;
}
function ConceptC5M1Flyby03(query) {
    if("concept" in query) { return query.concept == "c5m1flyby03"; } 
    else return false;
}
function Concept_C3M1CrazyMilitants(query) {
    if("concept" in query) { return query.concept == "_c3m1crazymilitants"; } 
    else return false;
}
function Concept_C3M2Pirogue(query) {
    if("concept" in query) { return query.concept == "_c3m2pirogue"; } 
    else return false;
}
function Concept_C3M2Pirogue2(query) {
    if("concept" in query) { return query.concept == "_c3m2pirogue2"; } 
    else return false;
}
function Concept_C3M2UnderWaterShack(query) {
    if("concept" in query) { return query.concept == "_c3m2underwatershack"; } 
    else return false;
}
function Concept_C3M2BloodFarmers(query) {
    if("concept" in query) { return query.concept == "_c3m2bloodfarmers"; } 
    else return false;
}
function Concept_C3M4_Radio(query) {
    if("concept" in query) { return query.concept == "_c3m4_radio"; } 
    else return false;
}
function ConceptC3M4Button101(query) {
    if("concept" in query) { return query.concept == "c3m4button101"; } 
    else return false;
}
function ConceptC3M4Button1B(query) {
    if("concept" in query) { return query.concept == "c3m4button1b"; } 
    else return false;
}
function ConceptC3M4Button102(query) {
    if("concept" in query) { return query.concept == "c3m4button102"; } 
    else return false;
}
function ConceptC3M4Button103(query) {
    if("concept" in query) { return query.concept == "c3m4button103"; } 
    else return false;
}
function ConceptC3M4Button104(query) {
    if("concept" in query) { return query.concept == "c3m4button104"; } 
    else return false;
}
function ConceptC3M4Button201(query) {
    if("concept" in query) { return query.concept == "c3m4button201"; } 
    else return false;
}
function ConceptC3M4Button202(query) {
    if("concept" in query) { return query.concept == "c3m4button202"; } 
    else return false;
}
function ConceptC3M4Button203(query) {
    if("concept" in query) { return query.concept == "c3m4button203"; } 
    else return false;
}
function ConceptC3M4ButtonName(query) {
    if("concept" in query) { return query.concept == "c3m4buttonname"; } 
    else return false;
}
function ConceptC3M4ButtonAnswerEllis(query) {
    if("concept" in query) { return query.concept == "c3m4buttonanswerellis"; } 
    else return false;
}
function ConceptC3M4ButtonHowMany(query) {
    if("concept" in query) { return query.concept == "c3m4buttonhowmany"; } 
    else return false;
}
function ConceptC3M4ButtonHowManyAnswer(query) {
    if("concept" in query) { return query.concept == "c3m4buttonhowmanyanswer"; } 
    else return false;
}
function ConceptC3M4ButtonPickUsUp(query) {
    if("concept" in query) { return query.concept == "c3m4buttonpickusup"; } 
    else return false;
}
function ConceptC3M4GateBlow01(query) {
    if("concept" in query) { return query.concept == "c3m4gateblow01"; } 
    else return false;
}
function ConceptC3M4GateBlow02(query) {
    if("concept" in query) { return query.concept == "c3m4gateblow02"; } 
    else return false;
}
function ConceptInfoRemc3m2_parachutist2(query) {
    if("concept" in query) { return query.concept == "inforemc3m2_parachutist2"; } 
    else return false;
}
function ConceptInfoRemc3m2_parachutist1(query) {
    if("concept" in query) { return query.concept == "inforemc3m2_parachutist1"; } 
    else return false;
}
function ConceptC3M3SafeRoom2(query) {
    if("concept" in query) { return query.concept == "c3m3saferoom2"; } 
    else return false;
}
function ConceptC3M3SafeRoom2a2(query) {
    if("concept" in query) { return query.concept == "c3m3saferoom2a2"; } 
    else return false;
}
function ConceptC3M3SafeRoom2b2(query) {
    if("concept" in query) { return query.concept == "c3m3saferoom2b2"; } 
    else return false;
}
function ConceptC3M3SafeRoom2c2(query) {
    if("concept" in query) { return query.concept == "c3m3saferoom2c2"; } 
    else return false;
}
function ConceptC3M3SafeRoom2c3(query) {
    if("concept" in query) { return query.concept == "c3m3saferoom2c3"; } 
    else return false;
}
function ConceptC3M3SafeRoom2d2(query) {
    if("concept" in query) { return query.concept == "c3m3saferoom2d2"; } 
    else return false;
}
function ConceptC3M3SafeRoom2e2(query) {
    if("concept" in query) { return query.concept == "c3m3saferoom2e2"; } 
    else return false;
}
function ConceptInfoRemC3M3Bodies2(query) {
    if("concept" in query) { return query.concept == "inforemc3m3bodies2"; } 
    else return false;
}
function ConceptInfoRemC3M3Bodies3(query) {
    if("concept" in query) { return query.concept == "inforemc3m3bodies3"; } 
    else return false;
}
function ConceptInfoRemC3M3LowerGatea(query) {
    if("concept" in query) { return query.concept == "inforemc3m3lowergatea"; } 
    else return false;
}
function ConceptEllisStoryReac01(query) {
    if("concept" in query) { return query.concept == "ellisstoryreac01"; } 
    else return false;
}
function Concept_c4m1Intro20(query) {
    if("concept" in query) { return query.concept == "_c4m1intro20"; } 
    else return false;
}
function Concept_c4m1Intro22(query) {
    if("concept" in query) { return query.concept == "_c4m1intro22"; } 
    else return false;
}
function Concept_c4m1Intro23(query) {
    if("concept" in query) { return query.concept == "_c4m1intro23"; } 
    else return false;
}
function ConceptPlayer_TakeBatR2(query) {
    if("concept" in query) { return query.concept == "player.takebatr2"; } 
    else return false;
}
function ConceptPlayer_TakeBatR(query) {
    if("concept" in query) { return query.concept == "player.takebatr"; } 
    else return false;
}
function ConceptPlayer_NickGunOwnership(query) {
    if("concept" in query) { return query.concept == "player.nickgunownership"; } 
    else return false;
}
function ConceptPlayer_KnowBoomer(query) {
    if("concept" in query) { return query.concept == "player.knowboomer"; } 
    else return false;
}
function ConceptPlayer_KnowSpitter(query) {
    if("concept" in query) { return query.concept == "player.knowspitter"; } 
    else return false;
}
function ConceptPlayer_KnowJockey(query) {
    if("concept" in query) { return query.concept == "player.knowjockey"; } 
    else return false;
}
function ConceptPlayer_KnowCharger(query) {
    if("concept" in query) { return query.concept == "player.knowcharger"; } 
    else return false;
}
function ConceptPlayer_KnowHunter(query) {
    if("concept" in query) { return query.concept == "player.knowhunter"; } 
    else return false;
}
function ConceptPlayer_KnowHunter2(query) {
    if("concept" in query) { return query.concept == "player.knowhunter2"; } 
    else return false;
}
function ConceptPlayer_KnowSmoker(query) {
    if("concept" in query) { return query.concept == "player.knowsmoker"; } 
    else return false;
}
function ConceptPlayer_C1WorseThanZombies(query) {
    if("concept" in query) { return query.concept == "player.c1worsethanzombies"; } 
    else return false;
}
function ConceptPlayer_NotPackingHeat(query) {
    if("concept" in query) { return query.concept == "player.notpackingheat"; } 
    else return false;
}
function ConceptPlayer_NotPackingHeat2(query) {
    if("concept" in query) { return query.concept == "player.notpackingheat2"; } 
    else return false;
}
function ConceptPlayer_WhinyNick(query) {
    if("concept" in query) { return query.concept == "player.whinynick"; } 
    else return false;
}
function ConceptC1M2TankInfo(query) {
    if("concept" in query) { return query.concept == "c1m2tankinfo"; } 
    else return false;
}
function ConceptC3M3SafeRoom2a3(query) {
    if("concept" in query) { return query.concept == "c3m3saferoom2a3"; } 
    else return false;
}
function ConceptInfoRemC3M3Unsanitarya1(query) {
    if("concept" in query) { return query.concept == "inforemc3m3unsanitarya1"; } 
    else return false;
}
function ConceptInfoRemC3M3Unsanitarya2(query) {
    if("concept" in query) { return query.concept == "inforemc3m3unsanitarya2"; } 
    else return false;
}
function ConceptC2M1Intro_400(query) {
    if("concept" in query) { return query.concept == "c2m1intro_400"; } 
    else return false;
}
function ConceptC2M1Intro_401(query) {
    if("concept" in query) { return query.concept == "c2m1intro_401"; } 
    else return false;
}
function ConceptC2M1Intro_402(query) {
    if("concept" in query) { return query.concept == "c2m1intro_402"; } 
    else return false;
}
function ConceptC2M1Intro_403(query) {
    if("concept" in query) { return query.concept == "c2m1intro_403"; } 
    else return false;
}
function ConceptC2M1Intro_404(query) {
    if("concept" in query) { return query.concept == "c2m1intro_404"; } 
    else return false;
}
function ConceptC2M1Intro_405(query) {
    if("concept" in query) { return query.concept == "c2m1intro_405"; } 
    else return false;
}
function ConceptC2M1Intro_406(query) {
    if("concept" in query) { return query.concept == "c2m1intro_406"; } 
    else return false;
}
function ConceptC2M1Intro_407(query) {
    if("concept" in query) { return query.concept == "c2m1intro_407"; } 
    else return false;
}
function ConceptC2M1Intro_408(query) {
    if("concept" in query) { return query.concept == "c2m1intro_408"; } 
    else return false;
}
function ConceptC5M5_Button2200(query) {
    if("concept" in query) { return query.concept == "c5m5_button2200"; } 
    else return false;
}
function ConceptC5M5_Button2201(query) {
    if("concept" in query) { return query.concept == "c5m5_button2201"; } 
    else return false;
}
function ConceptC5M5_Button2202(query) {
    if("concept" in query) { return query.concept == "c5m5_button2202"; } 
    else return false;
}
function ConceptC5M5_Button2203(query) {
    if("concept" in query) { return query.concept == "c5m5_button2203"; } 
    else return false;
}
function ConceptC5M5_Button2204(query) {
    if("concept" in query) { return query.concept == "c5m5_button2204"; } 
    else return false;
}
function ConceptC5M5_Button2205(query) {
    if("concept" in query) { return query.concept == "c5m5_button2205"; } 
    else return false;
}
function ConceptC5M5_Button2206(query) {
    if("concept" in query) { return query.concept == "c5m5_button2206"; } 
    else return false;
}
function ConceptC5M5_Button2207(query) {
    if("concept" in query) { return query.concept == "c5m5_button2207"; } 
    else return false;
}
function ConceptC3M4Button104Ellis(query) {
    if("concept" in query) { return query.concept == "c3m4button104ellis"; } 
    else return false;
}
function ConceptGasPour20More(query) {
    if("concept" in query) { return query.concept == "gaspour20more"; } 
    else return false;
}
function ConceptGasPour10More(query) {
    if("concept" in query) { return query.concept == "gaspour10more"; } 
    else return false;
}
function ConceptGasPour1More(query) {
    if("concept" in query) { return query.concept == "gaspour1more"; } 
    else return false;
}
function ConceptGasPour2More(query) {
    if("concept" in query) { return query.concept == "gaspour2more"; } 
    else return false;
}
function ConceptGasPour3More(query) {
    if("concept" in query) { return query.concept == "gaspour3more"; } 
    else return false;
}
function ConceptGasPour5More(query) {
    if("concept" in query) { return query.concept == "gaspour5more"; } 
    else return false;
}
function ConceptC6M1Intro_ConfirmObjective(query) {
    if("concept" in query) { return query.concept == "c6m1intro_confirmobjective"; } 
    else return false;
}
function ConceptC6M1Intro_01(query) {
    if("concept" in query) { return query.concept == "c6m1intro_01"; } 
    else return false;
}
function ConceptC6M1Intro_01a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_01a"; } 
    else return false;
}
function ConceptC6M1Intro_01b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_01b"; } 
    else return false;
}
function ConceptC6M1Intro_01c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_01c"; } 
    else return false;
}
function ConceptC6M1Intro_01d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_01d"; } 
    else return false;
}
function ConceptC6M1Intro_02a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_02a"; } 
    else return false;
}
function ConceptC6M1Intro_02b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_02b"; } 
    else return false;
}
function ConceptC6M1Intro_03a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_03a"; } 
    else return false;
}
function ConceptC6M1Intro_04a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_04a"; } 
    else return false;
}
function ConceptC6M1Intro_04b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_04b"; } 
    else return false;
}
function ConceptC6M1Intro_04c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_04c"; } 
    else return false;
}
function ConceptC6M1Intro_05a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_05a"; } 
    else return false;
}
function ConceptC6M1Intro_05b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_05b"; } 
    else return false;
}
function ConceptC6M1Intro_05c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_05c"; } 
    else return false;
}
function ConceptC6M1Intro_05d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_05d"; } 
    else return false;
}
function ConceptC6M1Intro_05e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_05e"; } 
    else return false;
}
function ConceptC6M1Intro_06a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_06a"; } 
    else return false;
}
function ConceptC6M1Intro_06b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_06b"; } 
    else return false;
}
function ConceptC6M1Intro_06c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_06c"; } 
    else return false;
}
function ConceptC6M1Intro_06d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_06d"; } 
    else return false;
}
function ConceptC6M1Intro_06e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_06e"; } 
    else return false;
}
function ConceptC6M1Intro_07a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_07a"; } 
    else return false;
}
function ConceptC6M1Intro_07b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_07b"; } 
    else return false;
}
function ConceptC6M1Intro_07c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_07c"; } 
    else return false;
}
function ConceptC6M1Intro_08a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_08a"; } 
    else return false;
}
function ConceptC6M1Intro_09a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09a"; } 
    else return false;
}
function ConceptC6M1Intro_09b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09b"; } 
    else return false;
}
function ConceptC6M1Intro_09c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09c"; } 
    else return false;
}
function ConceptC6M1Intro_09d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09d"; } 
    else return false;
}
function ConceptC6M1Intro_09e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09e"; } 
    else return false;
}
function ConceptC6M1Intro_09f(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09f"; } 
    else return false;
}
function ConceptC6M1Intro_09g(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09g"; } 
    else return false;
}
function ConceptC6M1Intro_10a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_10a"; } 
    else return false;
}
function ConceptC6M1Intro_10b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_10b"; } 
    else return false;
}
function ConceptC6M1Intro_10c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_10c"; } 
    else return false;
}
function ConceptC6M1Intro_10d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_10d"; } 
    else return false;
}
function ConceptC6M1Intro_10e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_10e"; } 
    else return false;
}
function ConceptC6M1Intro_11a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_11a"; } 
    else return false;
}
function ConceptC6M1Intro_11b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_11b"; } 
    else return false;
}
function ConceptC6M1Intro_11c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_11c"; } 
    else return false;
}
function ConceptC6M1Intro_11d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_11d"; } 
    else return false;
}
function ConceptC6M1Intro_12a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_12a"; } 
    else return false;
}
function ConceptC6M1Intro_12b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_12b"; } 
    else return false;
}
function ConceptC6M1Intro_12c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_12c"; } 
    else return false;
}
function ConceptC6M1Intro_13a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13a"; } 
    else return false;
}
function ConceptC6M1Intro_13b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13b"; } 
    else return false;
}
function ConceptC6M1Intro_13c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13c"; } 
    else return false;
}
function ConceptC6M1Intro_13d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13d"; } 
    else return false;
}
function ConceptC6M1Intro_13e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13e"; } 
    else return false;
}
function ConceptC6M1Intro_13f(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13f"; } 
    else return false;
}
function ConceptC6M1Intro_14a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_14a"; } 
    else return false;
}
function ConceptC6M1Intro_14b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_14b"; } 
    else return false;
}
function ConceptC6M1Intro_14c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_14c"; } 
    else return false;
}
function ConceptC6M1Intro_14d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_14d"; } 
    else return false;
}
function ConceptC6M1Intro_15a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_15a"; } 
    else return false;
}
function ConceptC6M1Intro_15b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_15b"; } 
    else return false;
}
function ConceptC6M1Intro_15c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_15c"; } 
    else return false;
}
function ConceptC6M1Intro_15d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_15d"; } 
    else return false;
}
function ConceptC6M1Intro_15e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_15e"; } 
    else return false;
}
function ConceptC6M1Intro_16a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_16a"; } 
    else return false;
}
function ConceptC6M1Intro_16b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_16b"; } 
    else return false;
}
function ConceptC6M1Intro_17a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_17a"; } 
    else return false;
}
function ConceptC6M1Intro_17b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_17b"; } 
    else return false;
}
function ConceptC6M1Intro_17c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_17c"; } 
    else return false;
}
function ConceptC6M1Intro_17d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_17d"; } 
    else return false;
}
function ConceptC6M1Intro_18a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_18a"; } 
    else return false;
}
function ConceptC6M1Intro_18b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_18b"; } 
    else return false;
}
function ConceptC6M1Intro_18c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_18c"; } 
    else return false;
}
function ConceptC6M1Intro_18d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_18d"; } 
    else return false;
}
function ConceptC6M1Intro_18e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_18e"; } 
    else return false;
}
function ConceptC6M1Intro_19a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_19a"; } 
    else return false;
}
function ConceptC6M1Intro_19b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_19b"; } 
    else return false;
}
function ConceptC6M1Intro_20a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20a"; } 
    else return false;
}
function ConceptC6M1Intro_20b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20b"; } 
    else return false;
}
function ConceptC6M1Intro_20c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20c"; } 
    else return false;
}
function ConceptC6M1Intro_20d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20d"; } 
    else return false;
}
function ConceptC6M1Intro_20e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20e"; } 
    else return false;
}
function ConceptC6M1Intro_20f(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20f"; } 
    else return false;
}
function ConceptC6M1Intro_20g(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20g"; } 
    else return false;
}
function ConceptC6M1Intro_22a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22a"; } 
    else return false;
}
function ConceptC6M1Intro_22b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22b"; } 
    else return false;
}
function ConceptC6M1Intro_22c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22c"; } 
    else return false;
}
function ConceptC6M1Intro_22d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22d"; } 
    else return false;
}
function ConceptC6M1Intro_22f(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22f"; } 
    else return false;
}
function ConceptC6M1Intro_22g(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22g"; } 
    else return false;
}
function ConceptC6M1Intro_22h(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22h"; } 
    else return false;
}
function ConceptC6M1Intro_23a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_23a"; } 
    else return false;
}
function ConceptC6M1Intro_23b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_23b"; } 
    else return false;
}
function ConceptC6M1Intro_23c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_23c"; } 
    else return false;
}
function ConceptC6M1Intro_23d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_23d"; } 
    else return false;
}
function ConceptC6M1Intro_21fg(query) {
    if("concept" in query) { return query.concept == "c6m1intro_21fg"; } 
    else return false;
}
function ConceptC6M1Intro_21g(query) {
    if("concept" in query) { return query.concept == "c6m1intro_21g"; } 
    else return false;
}
function ConceptC6M1Intro_24b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_24b"; } 
    else return false;
}
function ConceptC6M1Intro_24c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_24c"; } 
    else return false;
}
function ConceptC6M1Intro_24d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_24d"; } 
    else return false;
}
function ConceptC6M1Intro_24e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_24e"; } 
    else return false;
}
function ConceptC6M1Start1(query) {
    if("concept" in query) { return query.concept == "c6m1start1"; } 
    else return false;
}
function ConceptC6M1Start2(query) {
    if("concept" in query) { return query.concept == "c6m1start2"; } 
    else return false;
}
function ConceptC6M1Start3(query) {
    if("concept" in query) { return query.concept == "c6m1start3"; } 
    else return false;
}
function ConceptC6M1_IntotheparkNoHealth(query) {
    if("concept" in query) { return query.concept == "c6m1_intotheparknohealth"; } 
    else return false;
}
function ConceptHistoricTour01a(query) {
    if("concept" in query) { return query.concept == "historictour01a"; } 
    else return false;
}
function ConceptHistoricTour02a(query) {
    if("concept" in query) { return query.concept == "historictour02a"; } 
    else return false;
}
function ConceptHistoricTour02b(query) {
    if("concept" in query) { return query.concept == "historictour02b"; } 
    else return false;
}
function ConceptC6M1TakeSubMachineGun01(query) {
    if("concept" in query) { return query.concept == "c6m1takesubmachinegun01"; } 
    else return false;
}
function ConceptRemWorldC6M1_WeddingWarn01(query) {
    if("concept" in query) { return query.concept == "remworldc6m1_weddingwarn01"; } 
    else return false;
}
function ConceptRemWorldC6M1_WeddingWarn02(query) {
    if("concept" in query) { return query.concept == "remworldc6m1_weddingwarn02"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn03a(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn03a"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn03b(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn03b"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn03c(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn03c"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn03d(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn03d"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn04a(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn04a"; } 
    else return false;
}
function ConceptWeddingWitchDead01(query) {
    if("concept" in query) { return query.concept == "weddingwitchdead01"; } 
    else return false;
}
function ConceptWeddingWitchDead02(query) {
    if("concept" in query) { return query.concept == "weddingwitchdead02"; } 
    else return false;
}
function ConceptWeddingWitchDead02a(query) {
    if("concept" in query) { return query.concept == "weddingwitchdead02a"; } 
    else return false;
}
function ConceptWeddingWitchDead03(query) {
    if("concept" in query) { return query.concept == "weddingwitchdead03"; } 
    else return false;
}
function ConceptWeddingWitchDead04(query) {
    if("concept" in query) { return query.concept == "weddingwitchdead04"; } 
    else return false;
}
function ConceptWorldC6M1_PostWedding01a(query) {
    if("concept" in query) { return query.concept == "worldc6m1_postwedding01a"; } 
    else return false;
}
function ConceptWorldC6M1_PostWedding02a(query) {
    if("concept" in query) { return query.concept == "worldc6m1_postwedding02a"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn05a(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn05a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo01a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo01a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo01b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo01b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo02a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo02a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo02b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo02b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo03a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo03a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo03b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo03b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo03c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo03c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo04a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo04a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo06a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo06a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo07a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo07a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08e"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08f(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08f"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo09a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo09a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo09b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo09b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo10a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo10a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo10b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo10b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo10c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo10c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo10d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo10d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo11a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo11a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo11b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo11b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo12a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo12a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo12b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo12b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo12c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo12c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo12d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo12d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo13a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo13a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo13b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo13b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo13c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo13c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo13d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo13d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14e"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14f(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14f"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo15a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo15a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo15b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo15b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo15c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo15c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16e"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16f(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16f"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo17a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo17a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo17b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo17b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo18a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo18a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo18b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo18b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo18c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo18c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo18d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo18d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo18e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo18e"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19e"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19f(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19f"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19g(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19g"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo20a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo20a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo21a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo21a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo21b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo21b"; } 
    else return false;
}
function ConceptWorldC6M2_AfterGate201a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_aftergate201a"; } 
    else return false;
}
function ConceptWorldC6M2_FinalWater01a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_finalwater01a"; } 
    else return false;
}
function ConceptWorldC6M2_FinalWater01b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_finalwater01b"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer101a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer101a"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer101b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer101b"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer101c(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer101c"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer102a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer102a"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer102b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer102b"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer201a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer201a"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer202a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer202a"; } 
    else return false;
}
function ConceptWorldC6M2_InSewerLadder101a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewerladder101a"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk101a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk101a"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk101b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk101b"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk101c(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk101c"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk102a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk102a"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk102b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk102b"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk103a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk103a"; } 
    else return false;
}
function ConceptWorldC6M2_Phase201a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_phase201a"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo01a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo01a"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo01b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo01b"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo02a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo02a"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo02b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo02b"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo02c(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo02c"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo02d(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo02d"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo03a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo03a"; } 
    else return false;
}
function ConceptWorldC6M2_TourEntrance01a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tourentrance01a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo01a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo01a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo01b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo01b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02d"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02e"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo03a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo03a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo03b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo03b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo03c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo03c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo03d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo03d"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo04a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo04a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo04b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo04b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo04c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo04c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo04d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo04d"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo05a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo05a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo05b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo05b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo05c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo05c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo05d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo05d"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo06a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo06a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo06b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo06b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo07a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo07a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo07b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo07b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo07c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo07c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08d"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08e"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08f(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08f"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08g(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08g"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo09a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo09a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo09b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo09b"; } 
    else return false;
}
function ConceptC6M2EllisStoryStart1(query) {
    if("concept" in query) { return query.concept == "c6m2ellisstorystart1"; } 
    else return false;
}
function ConceptC6M3EllisBridgeStory1(query) {
    if("concept" in query) { return query.concept == "c6m3ellisbridgestory1"; } 
    else return false;
}
function ConceptC6M3EllisBridgeStory1a(query) {
    if("concept" in query) { return query.concept == "c6m3ellisbridgestory1a"; } 
    else return false;
}
function ConceptChargerBeatsNick(query) {
    if("concept" in query) { return query.concept == "chargerbeatsnick"; } 
    else return false;
}
function ConceptWorldC6M3_ByBridge01(query) {
    if("concept" in query) { return query.concept == "worldc6m3_bybridge01"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo03b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo03b"; } 
    else return false;
}
function ConceptC6M2_OpenGate1a(query) {
    if("concept" in query) { return query.concept == "c6m2_opengate1a"; } 
    else return false;
}
function ConceptC6M2_OpenGate1b(query) {
    if("concept" in query) { return query.concept == "c6m2_opengate1b"; } 
    else return false;
}
function Conceptc6m3_outro201a(query) {
    if("concept" in query) { return query.concept == "c6m3_outro201a"; } 
    else return false;
}
function Conceptc6m3_outroL4D1010a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d1010a"; } 
    else return false;
}
function Conceptc6m3_outroL4D1011a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d1011a"; } 
    else return false;
}
function Conceptc6m3_outroL4D1012a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d1012a"; } 
    else return false;
}
function Conceptc6m3_outroL4D101a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d101a"; } 
    else return false;
}
function Conceptc6m3_outroL4D102a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d102a"; } 
    else return false;
}
function Conceptc6m3_outroL4D102b(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d102b"; } 
    else return false;
}
function Conceptc6m3_outroL4D103a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d103a"; } 
    else return false;
}
function Conceptc6m3_outroL4D104a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d104a"; } 
    else return false;
}
function Conceptc6m3_outroL4D104b(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d104b"; } 
    else return false;
}
function Conceptc6m3_outroL4D105a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d105a"; } 
    else return false;
}
function Conceptc6m3_outroL4D106a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d106a"; } 
    else return false;
}
function Conceptc6m3_outroL4D107a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d107a"; } 
    else return false;
}
function Conceptc6m3_outroL4D108a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d108a"; } 
    else return false;
}
function Conceptc6m3_outroL4D109a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d109a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02a1(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02a1"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16a1(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16a1"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16b1(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16b1"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo01c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo01c"; } 
    else return false;
}
function ConceptC7M3_saferoom001(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom001"; } 
    else return false;
}
function ConceptC7M3_saferoom002(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom002"; } 
    else return false;
}
function ConceptC7M3_saferoom003(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom003"; } 
    else return false;
}
function ConceptC7M3_saferoom003a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom003a"; } 
    else return false;
}
function ConceptC7M3_saferoom003b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom003b"; } 
    else return false;
}
function ConceptC7M3_saferoom003c(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom003c"; } 
    else return false;
}
function ConceptC7M3_saferoom004(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom004"; } 
    else return false;
}
function ConceptC7M3_saferoom004a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom004a"; } 
    else return false;
}
function ConceptC7M3_saferoom004b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom004b"; } 
    else return false;
}
function ConceptC7M3_saferoom005(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom005"; } 
    else return false;
}
function ConceptC7M3_saferoom006(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom006"; } 
    else return false;
}
function ConceptC7M3_saferoom006a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom006a"; } 
    else return false;
}
function ConceptC7M3_saferoom006b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom006b"; } 
    else return false;
}
function ConceptC7M3_saferoom006c(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom006c"; } 
    else return false;
}
function ConceptC7M3_saferoom007(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom007"; } 
    else return false;
}
function ConceptC7M3_saferoom007a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom007a"; } 
    else return false;
}
function ConceptC7M3_saferoom007b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom007b"; } 
    else return false;
}
function ConceptC7M3_saferoom007c(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom007c"; } 
    else return false;
}
function ConceptC7M3_saferoom008(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom008"; } 
    else return false;
}
function ConceptC7M3_saferoom008a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom008a"; } 
    else return false;
}
function ConceptC7M3_saferoom008b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom008b"; } 
    else return false;
}
function ConceptC7M3_saferoom009(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom009"; } 
    else return false;
}
function ConceptC7M3_saferoom009a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom009a"; } 
    else return false;
}
function ConceptC7M3_saferoom010(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom010"; } 
    else return false;
}
function ConceptC7M3_saferoom010a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom010a"; } 
    else return false;
}
function ConceptC7M3_saferoom010b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom010b"; } 
    else return false;
}
function ConceptC7M3_saferoom011(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom011"; } 
    else return false;
}
function ConceptC7M3_saferoom012(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom012"; } 
    else return false;
}
function ConceptC7M3_saferoom012a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom012a"; } 
    else return false;
}
function ConceptC7M3_saferoom012b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom012b"; } 
    else return false;
}
function ConceptC7M3_saferoom012c(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom012c"; } 
    else return false;
}
function ConceptC7M3_saferoom012d(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom012d"; } 
    else return false;
}
function ConceptC7M3_saferoom012e(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom012e"; } 
    else return false;
}
function ConceptC7M3_saferoom012f(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom012f"; } 
    else return false;
}
function ConceptC7M3_saferoom013(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom013"; } 
    else return false;
}
function ConceptC7M3_saferoom013a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom013a"; } 
    else return false;
}
function ConceptC7M3_saferoom013b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom013b"; } 
    else return false;
}
function ConceptC7M3_saferoom013c(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom013c"; } 
    else return false;
}
function ConceptC7M3_saferoom013d(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom013d"; } 
    else return false;
}
function ConceptC7M3_saferoom014(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom014"; } 
    else return false;
}
function ConceptC7M3_saferoom014a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom014a"; } 
    else return false;
}
function ConceptC7M3_saferoom014b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom014b"; } 
    else return false;
}
function ConceptC7M3_saferoom015(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom015"; } 
    else return false;
}
function ConceptC7M3_saferoom015a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom015a"; } 
    else return false;
}
function ConceptC7M3_saferoom016(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom016"; } 
    else return false;
}
function ConceptC7M3_saferoom016a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom016a"; } 
    else return false;
}
function ConceptC7M3_saferoom016b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom016b"; } 
    else return false;
}
function ConceptC7M3_saferoom016c(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom016c"; } 
    else return false;
}
function ConceptC7M3_saferoom016d(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom016d"; } 
    else return false;
}
function ConceptC7M3_saferoom017(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom017"; } 
    else return false;
}
function ConceptC7M3_saferoom017a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom017a"; } 
    else return false;
}
function ConceptC7M3_saferoom017b(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom017b"; } 
    else return false;
}
function ConceptC7M3_saferoom017c(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom017c"; } 
    else return false;
}
function ConceptC7M3_saferoom017d(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom017d"; } 
    else return false;
}
function ConceptC7M3_saferoom017e(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom017e"; } 
    else return false;
}
function ConceptC7M3_saferoom017f(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom017f"; } 
    else return false;
}
function ConceptC7M3_saferoom017g(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom017g"; } 
    else return false;
}
function ConceptC7M3_saferoom017h(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom017h"; } 
    else return false;
}
function ConceptC7M2_saferoom01(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom01"; } 
    else return false;
}
function ConceptC7M2_saferoom01a(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom01a"; } 
    else return false;
}
function ConceptC7M2_saferoom01b(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom01b"; } 
    else return false;
}
function ConceptC7M2_saferoom02(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom02"; } 
    else return false;
}
function ConceptC7M3_saferoom02a(query) {
    if("concept" in query) { return query.concept == "c7m3_saferoom02a"; } 
    else return false;
}
function ConceptC7M2_saferoom02b(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom02b"; } 
    else return false;
}
function ConceptC7M2_saferoom02c(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom02c"; } 
    else return false;
}
function ConceptC7M2_saferoom02d(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom02d"; } 
    else return false;
}
function ConceptC7M2_saferoom02e(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom02e"; } 
    else return false;
}
function ConceptC7M2_saferoom03(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom03"; } 
    else return false;
}
function ConceptC7M2_saferoom03a(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom03a"; } 
    else return false;
}
function ConceptC7M2_saferoom03b(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom03b"; } 
    else return false;
}
function ConceptC7M2_saferoom04(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom04"; } 
    else return false;
}
function ConceptC7M2_saferoom05(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom05"; } 
    else return false;
}
function ConceptC7M2_saferoom05a(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom05a"; } 
    else return false;
}
function ConceptC7M2_saferoom05b(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom05b"; } 
    else return false;
}
function ConceptC7M2_saferoom05c(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom05c"; } 
    else return false;
}
function ConceptC7M2_saferoom06(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom06"; } 
    else return false;
}
function ConceptC7M2_saferoom07(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom07"; } 
    else return false;
}
function ConceptC7M2_saferoom02a(query) {
    if("concept" in query) { return query.concept == "c7m2_saferoom02a"; } 
    else return false;
}
function ConceptC7M1_saferoom01(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom01"; } 
    else return false;
}
function ConceptC7M1_saferoom01a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom01a"; } 
    else return false;
}
function ConceptC7M1_saferoom02(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom02"; } 
    else return false;
}
function ConceptC7M1_saferoom03(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom03"; } 
    else return false;
}
function ConceptC7M1_saferoom03a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom03a"; } 
    else return false;
}
function ConceptC7M1_saferoom03b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom03b"; } 
    else return false;
}
function ConceptC7M1_saferoom04(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom04"; } 
    else return false;
}
function ConceptC7M1_saferoom04a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom04a"; } 
    else return false;
}
function ConceptC7M1_saferoom04b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom04b"; } 
    else return false;
}
function ConceptC7M1_saferoom05(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom05"; } 
    else return false;
}
function ConceptC7M1_saferoom05a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom05a"; } 
    else return false;
}
function ConceptC7M1_saferoom06(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom06"; } 
    else return false;
}
function ConceptC7M1_saferoom06a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom06a"; } 
    else return false;
}
function ConceptC7M1_saferoom06b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom06b"; } 
    else return false;
}
function ConceptC7M1_saferoom07(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom07"; } 
    else return false;
}
function ConceptC7M1_saferoom07a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom07a"; } 
    else return false;
}
function ConceptC7M1_saferoom08(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom08"; } 
    else return false;
}
function ConceptC7M1_saferoom08a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom08a"; } 
    else return false;
}
function ConceptC7M1_saferoom08b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom08b"; } 
    else return false;
}
function ConceptC7M1_saferoom09(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom09"; } 
    else return false;
}
function ConceptC7M1_saferoom09a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom09a"; } 
    else return false;
}
function ConceptC7M1_saferoom09b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom09b"; } 
    else return false;
}
function ConceptC7M1_saferoom10a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom10a"; } 
    else return false;
}
function ConceptC7M1_saferoom10b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom10b"; } 
    else return false;
}
function ConceptC7M1_saferoom11(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom11"; } 
    else return false;
}
function ConceptC7M1_saferoom11a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom11a"; } 
    else return false;
}
function ConceptC7M1_saferoom12(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom12"; } 
    else return false;
}
function ConceptC7M1_saferoom12a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom12a"; } 
    else return false;
}
function ConceptC7M1_saferoom12b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom12b"; } 
    else return false;
}
function ConceptC7M1_saferoom13(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom13"; } 
    else return false;
}
function ConceptC7M1_saferoom13a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom13a"; } 
    else return false;
}
function ConceptC7M1_saferoom14(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom14"; } 
    else return false;
}
function ConceptC7M1_saferoom14a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom14a"; } 
    else return false;
}
function ConceptC7M1_saferoom15(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom15"; } 
    else return false;
}
function ConceptC7M1_saferoom15a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom15a"; } 
    else return false;
}
function ConceptC7M1_saferoom15b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom15b"; } 
    else return false;
}
function ConceptC7M1_saferoom15c(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom15c"; } 
    else return false;
}
function ConceptC7M1_saferoom16(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom16"; } 
    else return false;
}
function ConceptC7M1_saferoom16a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom16a"; } 
    else return false;
}
function ConceptC7M1_saferoom16b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom16b"; } 
    else return false;
}
function ConceptC7M1_saferoom17(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom17"; } 
    else return false;
}
function ConceptC7M1_saferoom18(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom18"; } 
    else return false;
}
function ConceptC7M1_saferoom18a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom18a"; } 
    else return false;
}
function ConceptC7M1_saferoom19(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom19"; } 
    else return false;
}
function ConceptC7M1_saferoom19a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom19a"; } 
    else return false;
}
function ConceptC7M1_saferoom19b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom19b"; } 
    else return false;
}
function ConceptC7M1_saferoom20(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom20"; } 
    else return false;
}
function ConceptC7M1_saferoom20a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom20a"; } 
    else return false;
}
function ConceptC7M1_saferoom20b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom20b"; } 
    else return false;
}
function ConceptC7M1_saferoom21(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom21"; } 
    else return false;
}
function ConceptC7M1_saferoom21a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom21a"; } 
    else return false;
}
function ConceptC7M1_saferoom21b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom21b"; } 
    else return false;
}
function ConceptC7M1_saferoom22(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom22"; } 
    else return false;
}
function ConceptC7M1_saferoom22a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom22a"; } 
    else return false;
}
function ConceptC7M1_saferoom23(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom23"; } 
    else return false;
}
function ConceptC7M1_saferoom23a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom23a"; } 
    else return false;
}
function ConceptC7M1_saferoom24(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom24"; } 
    else return false;
}
function ConceptC7M1_saferoom24a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom24a"; } 
    else return false;
}
function ConceptC7M1_saferoom25(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom25"; } 
    else return false;
}
function ConceptC7M1_saferoom25a(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom25a"; } 
    else return false;
}
function ConceptC7M1_saferoom25b(query) {
    if("concept" in query) { return query.concept == "c7m1_saferoom25b"; } 
    else return false;
}
function ConceptInfoRemc7m1_harborblocked01(query) {
    if("concept" in query) { return query.concept == "inforemc7m1_harborblocked01"; } 
    else return false;
}
function ConceptInfoRemc7m1_pretank01(query) {
    if("concept" in query) { return query.concept == "inforemc7m1_pretank01"; } 
    else return false;
}
function ConceptInfoRemc7m1_pretank02(query) {
    if("concept" in query) { return query.concept == "inforemc7m1_pretank02"; } 
    else return false;
}
function ConceptInfoRemc7m1_pretank03(query) {
    if("concept" in query) { return query.concept == "inforemc7m1_pretank03"; } 
    else return false;
}
function ConceptInfoRemc7m1_pretank04(query) {
    if("concept" in query) { return query.concept == "inforemc7m1_pretank04"; } 
    else return false;
}
function ConceptInfoRemc7m1_tankcar01(query) {
    if("concept" in query) { return query.concept == "inforemc7m1_tankcar01"; } 
    else return false;
}
function ConceptInfoRemc7m1_tankcar01a(query) {
    if("concept" in query) { return query.concept == "inforemc7m1_tankcar01a"; } 
    else return false;
}
function ConceptInfoRemc7m2_seebarge01(query) {
    if("concept" in query) { return query.concept == "inforemc7m2_seebarge01"; } 
    else return false;
}
function ConceptPlayer_WarnMegaMobc7m201(query) {
    if("concept" in query) { return query.concept == "player.warnmegamobc7m201"; } 
    else return false;
}
function ConceptInfoRemInfo_powerboat01(query) {
    if("concept" in query) { return query.concept == "inforeminfo_powerboat01"; } 
    else return false;
}
function ConceptInfoReminfo_sunkboatthere01(query) {
    if("concept" in query) { return query.concept == "inforeminfo_sunkboatthere01"; } 
    else return false;
}
function ConceptInfoReminfo_trailerboat(query) {
    if("concept" in query) { return query.concept == "inforeminfo_trailerboat"; } 
    else return false;
}
function ConceptInfoRemc7m2_listingtug(query) {
    if("concept" in query) { return query.concept == "inforemc7m2_listingtug"; } 
    else return false;
}
function ConceptInfoReminfo_carnotboat(query) {
    if("concept" in query) { return query.concept == "inforeminfo_carnotboat"; } 
    else return false;
}
function ConceptInfoReminfo_powerboat4(query) {
    if("concept" in query) { return query.concept == "inforeminfo_powerboat4"; } 
    else return false;
}
function ConceptInfoReminfo_powerboat4a(query) {
    if("concept" in query) { return query.concept == "inforeminfo_powerboat4a"; } 
    else return false;
}
function ConceptInfoRemInfo_powerboat(query) {
    if("concept" in query) { return query.concept == "inforeminfo_powerboat"; } 
    else return false;
}
function ConceptInfoReminfo_trailerboatruck(query) {
    if("concept" in query) { return query.concept == "inforeminfo_trailerboatruck"; } 
    else return false;
}
function ConceptIntroCrashR01(query) {
    if("concept" in query) { return query.concept == "introcrashr01"; } 
    else return false;
}
function ConceptIntroCrashR02(query) {
    if("concept" in query) { return query.concept == "introcrashr02"; } 
    else return false;
}
function ConceptIntroCrashR03(query) {
    if("concept" in query) { return query.concept == "introcrashr03"; } 
    else return false;
}
function ConceptIntroCrashR04(query) {
    if("concept" in query) { return query.concept == "introcrashr04"; } 
    else return false;
}
function ConceptIntroCrashR05(query) {
    if("concept" in query) { return query.concept == "introcrashr05"; } 
    else return false;
}
function ConceptIntroCrashR06(query) {
    if("concept" in query) { return query.concept == "introcrashr06"; } 
    else return false;
}
function ConceptIntroCrashR07(query) {
    if("concept" in query) { return query.concept == "introcrashr07"; } 
    else return false;
}
function ConceptIntroCrashR08(query) {
    if("concept" in query) { return query.concept == "introcrashr08"; } 
    else return false;
}
function ConceptIntroCrashR09(query) {
    if("concept" in query) { return query.concept == "introcrashr09"; } 
    else return false;
}
function ConceptIntroCrashR10(query) {
    if("concept" in query) { return query.concept == "introcrashr10"; } 
    else return false;
}
function ConceptIntroCrashR11(query) {
    if("concept" in query) { return query.concept == "introcrashr11"; } 
    else return false;
}
function ConceptIntroCrashR12(query) {
    if("concept" in query) { return query.concept == "introcrashr12"; } 
    else return false;
}
function ConceptIntroCrashR13(query) {
    if("concept" in query) { return query.concept == "introcrashr13"; } 
    else return false;
}
function ConceptIntroCrashR14(query) {
    if("concept" in query) { return query.concept == "introcrashr14"; } 
    else return false;
}
function ConceptIntroCrashR15(query) {
    if("concept" in query) { return query.concept == "introcrashr15"; } 
    else return false;
}
function ConceptIntroCrashR16(query) {
    if("concept" in query) { return query.concept == "introcrashr16"; } 
    else return false;
}
function ConceptIntroCrashR17(query) {
    if("concept" in query) { return query.concept == "introcrashr17"; } 
    else return false;
}
function ConceptIntroCrashR18(query) {
    if("concept" in query) { return query.concept == "introcrashr18"; } 
    else return false;
}
function ConceptIntroCrashR19(query) {
    if("concept" in query) { return query.concept == "introcrashr19"; } 
    else return false;
}
function ConceptIntroCrashR20(query) {
    if("concept" in query) { return query.concept == "introcrashr20"; } 
    else return false;
}
function ConceptIntroCrashR21(query) {
    if("concept" in query) { return query.concept == "introcrashr21"; } 
    else return false;
}
function ConceptIntroCrashR22(query) {
    if("concept" in query) { return query.concept == "introcrashr22"; } 
    else return false;
}
function ConceptIntroCrashR23(query) {
    if("concept" in query) { return query.concept == "introcrashr23"; } 
    else return false;
}
function ConceptIntroCrashR24(query) {
    if("concept" in query) { return query.concept == "introcrashr24"; } 
    else return false;
}
function ConceptIntroCrashR25(query) {
    if("concept" in query) { return query.concept == "introcrashr25"; } 
    else return false;
}
function ConceptIntroCrashR26(query) {
    if("concept" in query) { return query.concept == "introcrashr26"; } 
    else return false;
}
function ConceptIntroCrashR27(query) {
    if("concept" in query) { return query.concept == "introcrashr27"; } 
    else return false;
}
function ConceptIntroCrashR28(query) {
    if("concept" in query) { return query.concept == "introcrashr28"; } 
    else return false;
}
function ConceptIntroCrashR29(query) {
    if("concept" in query) { return query.concept == "introcrashr29"; } 
    else return false;
}
function ConceptIntroCrashR30(query) {
    if("concept" in query) { return query.concept == "introcrashr30"; } 
    else return false;
}
function ConceptIntroCrashR31(query) {
    if("concept" in query) { return query.concept == "introcrashr31"; } 
    else return false;
}
function ConceptIntroCrashR32(query) {
    if("concept" in query) { return query.concept == "introcrashr32"; } 
    else return false;
}
function ConceptIntroCrashR33(query) {
    if("concept" in query) { return query.concept == "introcrashr33"; } 
    else return false;
}
function ConceptIntroCrashR34(query) {
    if("concept" in query) { return query.concept == "introcrashr34"; } 
    else return false;
}
function ConceptIntroCrashR35(query) {
    if("concept" in query) { return query.concept == "introcrashr35"; } 
    else return false;
}
function ConceptIntroCrashR36(query) {
    if("concept" in query) { return query.concept == "introcrashr36"; } 
    else return false;
}
function ConceptIntroCrashR37(query) {
    if("concept" in query) { return query.concept == "introcrashr37"; } 
    else return false;
}
function ConceptIntroCrashR38(query) {
    if("concept" in query) { return query.concept == "introcrashr38"; } 
    else return false;
}
function ConceptIntroCrashR39(query) {
    if("concept" in query) { return query.concept == "introcrashr39"; } 
    else return false;
}
function ConceptCrashCourseA01(query) {
    if("concept" in query) { return query.concept == "crashcoursea01"; } 
    else return false;
}
function ConceptCrashCourseB01(query) {
    if("concept" in query) { return query.concept == "crashcourseb01"; } 
    else return false;
}
function ConceptCrashCourseB02(query) {
    if("concept" in query) { return query.concept == "crashcourseb02"; } 
    else return false;
}
function ConceptCrashCourseC01(query) {
    if("concept" in query) { return query.concept == "crashcoursec01"; } 
    else return false;
}
function ConceptCrashCourseR01(query) {
    if("concept" in query) { return query.concept == "crashcourser01"; } 
    else return false;
}
function ConceptCrashCourseR02(query) {
    if("concept" in query) { return query.concept == "crashcourser02"; } 
    else return false;
}
function ConceptCrashCourseR03(query) {
    if("concept" in query) { return query.concept == "crashcourser03"; } 
    else return false;
}
function ConceptCrashCourseR04(query) {
    if("concept" in query) { return query.concept == "crashcourser04"; } 
    else return false;
}
function ConceptHowitzerFired(query) {
    if("concept" in query) { return query.concept == "howitzerfired"; } 
    else return false;
}
function ConceptHowitzerFiredResponse(query) {
    if("concept" in query) { return query.concept == "howitzerfiredresponse"; } 
    else return false;
}
function ConceptHowitzerBurnEnd(query) {
    if("concept" in query) { return query.concept == "howitzerburnend"; } 
    else return false;
}
function ConceptHowitzerBurnEnd01(query) {
    if("concept" in query) { return query.concept == "howitzerburnend01"; } 
    else return false;
}
function ConceptHowitzerBurnEnd00(query) {
    if("concept" in query) { return query.concept == "howitzerburnend00"; } 
    else return false;
}
function ConceptCrash01BridgeEntry(query) {
    if("concept" in query) { return query.concept == "crash01bridgeentry"; } 
    else return false;
}
function ConceptCrashCourseR05(query) {
    if("concept" in query) { return query.concept == "crashcourser05"; } 
    else return false;
}
function ConceptCrashCourseR06(query) {
    if("concept" in query) { return query.concept == "crashcourser06"; } 
    else return false;
}
function ConceptCrashCourseR07(query) {
    if("concept" in query) { return query.concept == "crashcourser07"; } 
    else return false;
}
function ConceptCrashCourseR08(query) {
    if("concept" in query) { return query.concept == "crashcourser08"; } 
    else return false;
}
function ConceptCrashCourseR09(query) {
    if("concept" in query) { return query.concept == "crashcourser09"; } 
    else return false;
}
function ConceptCrashCourseR10(query) {
    if("concept" in query) { return query.concept == "crashcourser10"; } 
    else return false;
}
function ConceptCrashCourseR11(query) {
    if("concept" in query) { return query.concept == "crashcourser11"; } 
    else return false;
}
function ConceptCrashCourseR12(query) {
    if("concept" in query) { return query.concept == "crashcourser12"; } 
    else return false;
}
function ConceptCrashCourseR13(query) {
    if("concept" in query) { return query.concept == "crashcourser13"; } 
    else return false;
}
function ConceptCrashCourseR14(query) {
    if("concept" in query) { return query.concept == "crashcourser14"; } 
    else return false;
}
function ConceptCrashCourseI01(query) {
    if("concept" in query) { return query.concept == "crashcoursei01"; } 
    else return false;
}
function ConceptCrashFinaleGeneratorSpeak(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorspeak"; } 
    else return false;
}
function ConceptCrashFinaleGeneratorSpeakN(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorspeakn"; } 
    else return false;
}
function ConceptCrashFinaleGeneratorBreakSpk(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorbreakspk"; } 
    else return false;
}
function ConceptCrashFinaleGenerator2Speak(query) {
    if("concept" in query) { return query.concept == "crashfinalegenerator2speak"; } 
    else return false;
}
function ConceptCrashFinaleGenerator2OnSpk(query) {
    if("concept" in query) { return query.concept == "crashfinalegenerator2onspk"; } 
    else return false;
}
function ConceptCrashFinaleTruckResp01(query) {
    if("concept" in query) { return query.concept == "crashfinaletruckresp01"; } 
    else return false;
}
function ConceptCrashFinaleTruckResp02(query) {
    if("concept" in query) { return query.concept == "crashfinaletruckresp02"; } 
    else return false;
}
function ConceptCrashFinaleTruckRespZombie(query) {
    if("concept" in query) { return query.concept == "crashfinaletruckrespzombie"; } 
    else return false;
}
function ConceptCrashFinaleTruckRespZombie2(query) {
    if("concept" in query) { return query.concept == "crashfinaletruckrespzombie2"; } 
    else return false;
}
function ConceptCrashYerKidding(query) {
    if("concept" in query) { return query.concept == "crashyerkidding"; } 
    else return false;
}
function ConceptIntroCrashWalking(query) {
    if("concept" in query) { return query.concept == "introcrashwalking"; } 
    else return false;
}
function ConceptIntroCrashWalkingB(query) {
    if("concept" in query) { return query.concept == "introcrashwalkingb"; } 
    else return false;
}
function ConceptCrashFinaleTruckNag(query) {
    if("concept" in query) { return query.concept == "crashfinaletrucknag"; } 
    else return false;
}
function IsNotSaidSmalltown01_path05(query) {
    if("worldsaidsmalltown01_path05" in query) { return query.worldsaidsmalltown01_path05 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path06(query) {
    if("worldsaidsmalltown01_path06" in query) { return query.worldsaidsmalltown01_path06 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path07(query) {
    if("worldsaidsmalltown01_path07" in query) { return query.worldsaidsmalltown01_path07 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path08(query) {
    if("worldsaidsmalltown01_path08" in query) { return query.worldsaidsmalltown01_path08 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path01(query) {
    if("worldsaidsmalltown02_path01" in query) { return query.worldsaidsmalltown02_path01 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path02(query) {
    if("worldsaidsmalltown02_path02" in query) { return query.worldsaidsmalltown02_path02 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path03(query) {
    if("worldsaidsmalltown02_path03" in query) { return query.worldsaidsmalltown02_path03 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path04(query) {
    if("worldsaidsmalltown02_path04" in query) { return query.worldsaidsmalltown02_path04 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path05(query) {
    if("worldsaidsmalltown02_path05" in query) { return query.worldsaidsmalltown02_path05 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path06(query) {
    if("worldsaidsmalltown02_path06" in query) { return query.worldsaidsmalltown02_path06 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path07(query) {
    if("worldsaidsmalltown02_path07" in query) { return query.worldsaidsmalltown02_path07 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path08(query) {
    if("worldsaidsmalltown02_path08" in query) { return query.worldsaidsmalltown02_path08 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path01(query) {
    if("worldsaidsmalltown03_path01" in query) { return query.worldsaidsmalltown03_path01 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path02(query) {
    if("worldsaidsmalltown03_path02" in query) { return query.worldsaidsmalltown03_path02 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path03(query) {
    if("worldsaidsmalltown03_path03" in query) { return query.worldsaidsmalltown03_path03 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path04(query) {
    if("worldsaidsmalltown03_path04" in query) { return query.worldsaidsmalltown03_path04 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path06(query) {
    if("worldsaidsmalltown03_path06" in query) { return query.worldsaidsmalltown03_path06 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path07(query) {
    if("worldsaidsmalltown03_path07" in query) { return query.worldsaidsmalltown03_path07 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path08(query) {
    if("worldsaidsmalltown03_path08" in query) { return query.worldsaidsmalltown03_path08 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path09(query) {
    if("worldsaidsmalltown03_path09" in query) { return query.worldsaidsmalltown03_path09 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path10(query) {
    if("worldsaidsmalltown03_path10" in query) { return query.worldsaidsmalltown03_path10 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path11(query) {
    if("worldsaidsmalltown03_path11" in query) { return query.worldsaidsmalltown03_path11 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path12(query) {
    if("worldsaidsmalltown03_path12" in query) { return query.worldsaidsmalltown03_path12 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path01(query) {
    if("worldsaidsmalltown04_path01" in query) { return query.worldsaidsmalltown04_path01 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path03(query) {
    if("worldsaidsmalltown04_path03" in query) { return query.worldsaidsmalltown04_path03 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path04(query) {
    if("worldsaidsmalltown04_path04" in query) { return query.worldsaidsmalltown04_path04 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path05(query) {
    if("worldsaidsmalltown04_path05" in query) { return query.worldsaidsmalltown04_path05 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path06(query) {
    if("worldsaidsmalltown04_path06" in query) { return query.worldsaidsmalltown04_path06 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path07(query) {
    if("worldsaidsmalltown04_path07" in query) { return query.worldsaidsmalltown04_path07 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path08(query) {
    if("worldsaidsmalltown04_path08" in query) { return query.worldsaidsmalltown04_path08 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path09(query) {
    if("worldsaidsmalltown04_path09" in query) { return query.worldsaidsmalltown04_path09 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path10(query) {
    if("worldsaidsmalltown04_path10" in query) { return query.worldsaidsmalltown04_path10 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path01(query) {
    if("worldsaidsmalltown05_path01" in query) { return query.worldsaidsmalltown05_path01 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path02(query) {
    if("worldsaidsmalltown05_path02" in query) { return query.worldsaidsmalltown05_path02 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path03(query) {
    if("worldsaidsmalltown05_path03" in query) { return query.worldsaidsmalltown05_path03 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path04(query) {
    if("worldsaidsmalltown05_path04" in query) { return query.worldsaidsmalltown05_path04 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path05(query) {
    if("worldsaidsmalltown05_path05" in query) { return query.worldsaidsmalltown05_path05 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path06(query) {
    if("worldsaidsmalltown05_path06" in query) { return query.worldsaidsmalltown05_path06 != 1; } 
    else return true;
}
function IsNotSaidfarm01_camping(query) {
    if("worldsaidfarm01_camping" in query) { return query.worldsaidfarm01_camping != 1; } 
    else return true;
}
function IsNotSaidFarm01_path01(query) {
    if("worldsaidfarm01_path01" in query) { return query.worldsaidfarm01_path01 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path02(query) {
    if("worldsaidfarm01_path02" in query) { return query.worldsaidfarm01_path02 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path03(query) {
    if("worldsaidfarm01_path03" in query) { return query.worldsaidfarm01_path03 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path04(query) {
    if("worldsaidfarm01_path04" in query) { return query.worldsaidfarm01_path04 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path05(query) {
    if("worldsaidfarm01_path05" in query) { return query.worldsaidfarm01_path05 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path06(query) {
    if("worldsaidfarm01_path06" in query) { return query.worldsaidfarm01_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path07(query) {
    if("worldsaidfarm01_path07" in query) { return query.worldsaidfarm01_path07 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path08(query) {
    if("worldsaidfarm01_path08" in query) { return query.worldsaidfarm01_path08 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path01(query) {
    if("worldsaidfarm02_path01" in query) { return query.worldsaidfarm02_path01 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path02(query) {
    if("worldsaidfarm02_path02" in query) { return query.worldsaidfarm02_path02 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path03(query) {
    if("worldsaidfarm02_path03" in query) { return query.worldsaidfarm02_path03 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path04(query) {
    if("worldsaidfarm02_path04" in query) { return query.worldsaidfarm02_path04 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path05(query) {
    if("worldsaidfarm02_path05" in query) { return query.worldsaidfarm02_path05 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path06(query) {
    if("worldsaidfarm02_path06" in query) { return query.worldsaidfarm02_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path07(query) {
    if("worldsaidfarm02_path07" in query) { return query.worldsaidfarm02_path07 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path08(query) {
    if("worldsaidfarm02_path08" in query) { return query.worldsaidfarm02_path08 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path09(query) {
    if("worldsaidfarm02_path09" in query) { return query.worldsaidfarm02_path09 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path01(query) {
    if("worldsaidfarm03_path01" in query) { return query.worldsaidfarm03_path01 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path02(query) {
    if("worldsaidfarm03_path02" in query) { return query.worldsaidfarm03_path02 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path03(query) {
    if("worldsaidfarm03_path03" in query) { return query.worldsaidfarm03_path03 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path04(query) {
    if("worldsaidfarm03_path04" in query) { return query.worldsaidfarm03_path04 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path05(query) {
    if("worldsaidfarm03_path05" in query) { return query.worldsaidfarm03_path05 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path06(query) {
    if("worldsaidfarm03_path06" in query) { return query.worldsaidfarm03_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path07(query) {
    if("worldsaidfarm03_path07" in query) { return query.worldsaidfarm03_path07 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path01(query) {
    if("worldsaidfarm04_path01" in query) { return query.worldsaidfarm04_path01 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path02(query) {
    if("worldsaidfarm04_path02" in query) { return query.worldsaidfarm04_path02 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path03(query) {
    if("worldsaidfarm04_path03" in query) { return query.worldsaidfarm04_path03 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path04(query) {
    if("worldsaidfarm04_path04" in query) { return query.worldsaidfarm04_path04 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path05(query) {
    if("worldsaidfarm04_path05" in query) { return query.worldsaidfarm04_path05 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path06(query) {
    if("worldsaidfarm04_path06" in query) { return query.worldsaidfarm04_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path07(query) {
    if("worldsaidfarm04_path07" in query) { return query.worldsaidfarm04_path07 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path08(query) {
    if("worldsaidfarm04_path08" in query) { return query.worldsaidfarm04_path08 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path01(query) {
    if("worldsaidfarm05_path01" in query) { return query.worldsaidfarm05_path01 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path02(query) {
    if("worldsaidfarm05_path02" in query) { return query.worldsaidfarm05_path02 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path03(query) {
    if("worldsaidfarm05_path03" in query) { return query.worldsaidfarm05_path03 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path04(query) {
    if("worldsaidfarm05_path04" in query) { return query.worldsaidfarm05_path04 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path05(query) {
    if("worldsaidfarm05_path05" in query) { return query.worldsaidfarm05_path05 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path08(query) {
    if("worldsaidfarm03_path08" in query) { return query.worldsaidfarm03_path08 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path11(query) {
    if("worldsaidsmalltown04_path11" in query) { return query.worldsaidsmalltown04_path11 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path10(query) {
    if("worldsaidfarm04_path10" in query) { return query.worldsaidfarm04_path10 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path10(query) {
    if("worldsaidfarm02_path10" in query) { return query.worldsaidfarm02_path10 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path09(query) {
    if("worldsaidfarm03_path09" in query) { return query.worldsaidfarm03_path09 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path10(query) {
    if("worldsaidfarm03_path10" in query) { return query.worldsaidfarm03_path10 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path10(query) {
    if("worldsaidsmalltown01_path10" in query) { return query.worldsaidsmalltown01_path10 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path06(query) {
    if("worldsaidfarm05_path06" in query) { return query.worldsaidfarm05_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path07(query) {
    if("worldsaidfarm05_path07" in query) { return query.worldsaidfarm05_path07 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path08(query) {
    if("worldsaidfarm05_path08" in query) { return query.worldsaidfarm05_path08 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path09(query) {
    if("worldsaidfarm05_path09" in query) { return query.worldsaidfarm05_path09 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path01(query) {
    if("worldsaidcrashcourse01_path01" in query) { return query.worldsaidcrashcourse01_path01 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path02(query) {
    if("worldsaidcrashcourse01_path02" in query) { return query.worldsaidcrashcourse01_path02 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path03(query) {
    if("worldsaidcrashcourse01_path03" in query) { return query.worldsaidcrashcourse01_path03 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path15(query) {
    if("worldsaidcrashcourse01_path15" in query) { return query.worldsaidcrashcourse01_path15 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path16(query) {
    if("worldsaidcrashcourse01_path16" in query) { return query.worldsaidcrashcourse01_path16 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path04(query) {
    if("worldsaidcrashcourse01_path04" in query) { return query.worldsaidcrashcourse01_path04 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path05(query) {
    if("worldsaidcrashcourse01_path05" in query) { return query.worldsaidcrashcourse01_path05 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path06(query) {
    if("worldsaidcrashcourse01_path06" in query) { return query.worldsaidcrashcourse01_path06 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path07(query) {
    if("worldsaidcrashcourse01_path07" in query) { return query.worldsaidcrashcourse01_path07 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path08(query) {
    if("worldsaidcrashcourse01_path08" in query) { return query.worldsaidcrashcourse01_path08 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path09(query) {
    if("worldsaidcrashcourse01_path09" in query) { return query.worldsaidcrashcourse01_path09 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path10(query) {
    if("worldsaidcrashcourse01_path10" in query) { return query.worldsaidcrashcourse01_path10 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path11(query) {
    if("worldsaidcrashcourse01_path11" in query) { return query.worldsaidcrashcourse01_path11 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path12(query) {
    if("worldsaidcrashcourse01_path12" in query) { return query.worldsaidcrashcourse01_path12 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path13(query) {
    if("worldsaidcrashcourse01_path13" in query) { return query.worldsaidcrashcourse01_path13 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path14(query) {
    if("worldsaidcrashcourse01_path14" in query) { return query.worldsaidcrashcourse01_path14 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path19(query) {
    if("worldsaidcrashcourse01_path19" in query) { return query.worldsaidcrashcourse01_path19 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path18(query) {
    if("worldsaidcrashcourse01_path18" in query) { return query.worldsaidcrashcourse01_path18 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path17(query) {
    if("worldsaidcrashcourse01_path17" in query) { return query.worldsaidcrashcourse01_path17 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path21(query) {
    if("worldsaidcrashcourse01_path21" in query) { return query.worldsaidcrashcourse01_path21 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path20(query) {
    if("worldsaidcrashcourse01_path20" in query) { return query.worldsaidcrashcourse01_path20 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path24(query) {
    if("worldsaidcrashcourse01_path24" in query) { return query.worldsaidcrashcourse01_path24 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path26(query) {
    if("worldsaidcrashcourse01_path26" in query) { return query.worldsaidcrashcourse01_path26 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path27(query) {
    if("worldsaidcrashcourse01_path27" in query) { return query.worldsaidcrashcourse01_path27 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path01(query) {
    if("worldsaidcrashcourse02_path01" in query) { return query.worldsaidcrashcourse02_path01 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path02(query) {
    if("worldsaidcrashcourse02_path02" in query) { return query.worldsaidcrashcourse02_path02 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path04(query) {
    if("worldsaidcrashcourse02_path04" in query) { return query.worldsaidcrashcourse02_path04 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path05(query) {
    if("worldsaidcrashcourse02_path05" in query) { return query.worldsaidcrashcourse02_path05 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path06(query) {
    if("worldsaidcrashcourse02_path06" in query) { return query.worldsaidcrashcourse02_path06 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path07(query) {
    if("worldsaidcrashcourse02_path07" in query) { return query.worldsaidcrashcourse02_path07 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path09(query) {
    if("worldsaidcrashcourse02_path09" in query) { return query.worldsaidcrashcourse02_path09 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path10(query) {
    if("worldsaidcrashcourse02_path10" in query) { return query.worldsaidcrashcourse02_path10 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path11(query) {
    if("worldsaidcrashcourse02_path11" in query) { return query.worldsaidcrashcourse02_path11 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path12(query) {
    if("worldsaidcrashcourse02_path12" in query) { return query.worldsaidcrashcourse02_path12 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path08(query) {
    if("worldsaidcrashcourse02_path08" in query) { return query.worldsaidcrashcourse02_path08 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path14(query) {
    if("worldsaidcrashcourse02_path14" in query) { return query.worldsaidcrashcourse02_path14 != 1; } 
    else return true;
}
function IsSaidFarm05_path08(query) {
    if("worldsaidfarm05_path08" in query) { return query.worldsaidfarm05_path08 > 0; } 
    else return false;
}
function IsSaidFarm05_path10(query) {
    if("worldsaidfarm05_path10" in query) { return query.worldsaidfarm05_path10 > 0; } 
    else return false;
}
function IsSmalltown01_path05(query) {
    if("subject" in query) { return query.subject == "smalltown01_path05"; } 
    else return false;
}
function IsSmalltown01_path06(query) {
    if("subject" in query) { return query.subject == "smalltown01_path06"; } 
    else return false;
}
function IsSmalltown01_path07(query) {
    if("subject" in query) { return query.subject == "smalltown01_path07"; } 
    else return false;
}
function IsSmalltown01_path08(query) {
    if("subject" in query) { return query.subject == "smalltown01_path08"; } 
    else return false;
}
function Issmalltown02_path01(query) {
    if("subject" in query) { return query.subject == "smalltown02_path01"; } 
    else return false;
}
function Issmalltown02_path02(query) {
    if("subject" in query) { return query.subject == "smalltown02_path02"; } 
    else return false;
}
function Issmalltown02_path03(query) {
    if("subject" in query) { return query.subject == "smalltown02_path03"; } 
    else return false;
}
function Issmalltown02_path04(query) {
    if("subject" in query) { return query.subject == "smalltown02_path04"; } 
    else return false;
}
function Issmalltown02_path05(query) {
    if("subject" in query) { return query.subject == "smalltown02_path05"; } 
    else return false;
}
function Issmalltown02_path06(query) {
    if("subject" in query) { return query.subject == "smalltown02_path06"; } 
    else return false;
}
function Issmalltown02_path07(query) {
    if("subject" in query) { return query.subject == "smalltown02_path07"; } 
    else return false;
}
function Issmalltown02_path08(query) {
    if("subject" in query) { return query.subject == "smalltown02_path08"; } 
    else return false;
}
function IsSmalltown03_path01(query) {
    if("subject" in query) { return query.subject == "smalltown03_path01"; } 
    else return false;
}
function IsSmalltown03_path02(query) {
    if("subject" in query) { return query.subject == "smalltown03_path02"; } 
    else return false;
}
function IsSmalltown03_path03(query) {
    if("subject" in query) { return query.subject == "smalltown03_path03"; } 
    else return false;
}
function IsSmalltown03_path04(query) {
    if("subject" in query) { return query.subject == "smalltown03_path04"; } 
    else return false;
}
function IsSmalltown03_path05(query) {
    if("subject" in query) { return query.subject == "smalltown03_path05"; } 
    else return false;
}
function IsSmalltown03_path06(query) {
    if("subject" in query) { return query.subject == "smalltown03_path06"; } 
    else return false;
}
function IsSmalltown03_path07(query) {
    if("subject" in query) { return query.subject == "smalltown03_path07"; } 
    else return false;
}
function IsSmalltown03_path08(query) {
    if("subject" in query) { return query.subject == "smalltown03_path08"; } 
    else return false;
}
function IsSmalltown03_path09(query) {
    if("subject" in query) { return query.subject == "smalltown03_path09"; } 
    else return false;
}
function IsSmalltown03_path10(query) {
    if("subject" in query) { return query.subject == "smalltown03_path10"; } 
    else return false;
}
function IsSmalltown03_path11(query) {
    if("subject" in query) { return query.subject == "smalltown03_path11"; } 
    else return false;
}
function IsSmalltown03_path12(query) {
    if("subject" in query) { return query.subject == "smalltown03_path12"; } 
    else return false;
}
function IsSmalltown03_path13(query) {
    if("subject" in query) { return query.subject == "smalltown03_path13"; } 
    else return false;
}
function IsSmalltown04_path01(query) {
    if("subject" in query) { return query.subject == "smalltown04_path01"; } 
    else return false;
}
function IsSmalltown04_path02(query) {
    if("subject" in query) { return query.subject == "smalltown04_path02"; } 
    else return false;
}
function IsSmalltown04_path03(query) {
    if("subject" in query) { return query.subject == "smalltown04_path03"; } 
    else return false;
}
function IsSmalltown04_path04(query) {
    if("subject" in query) { return query.subject == "smalltown04_path04"; } 
    else return false;
}
function IsSmalltown04_path05(query) {
    if("subject" in query) { return query.subject == "smalltown04_path05"; } 
    else return false;
}
function IsSmalltown04_path06(query) {
    if("subject" in query) { return query.subject == "smalltown04_path06"; } 
    else return false;
}
function IsSmalltown04_path07(query) {
    if("subject" in query) { return query.subject == "smalltown04_path07"; } 
    else return false;
}
function IsSmalltown04_path08(query) {
    if("subject" in query) { return query.subject == "smalltown04_path08"; } 
    else return false;
}
function IsSmalltown04_path09(query) {
    if("subject" in query) { return query.subject == "smalltown04_path09"; } 
    else return false;
}
function IsSmalltown04_path10(query) {
    if("subject" in query) { return query.subject == "smalltown04_path10"; } 
    else return false;
}
function IsSmalltown05_path01(query) {
    if("subject" in query) { return query.subject == "smalltown05_path01"; } 
    else return false;
}
function IsSmalltown05_path02(query) {
    if("subject" in query) { return query.subject == "smalltown05_path02"; } 
    else return false;
}
function IsSmalltown05_path03(query) {
    if("subject" in query) { return query.subject == "smalltown05_path03"; } 
    else return false;
}
function IsSmalltown05_path04(query) {
    if("subject" in query) { return query.subject == "smalltown05_path04"; } 
    else return false;
}
function IsSmalltown05_path05(query) {
    if("subject" in query) { return query.subject == "smalltown05_path05"; } 
    else return false;
}
function IsSmalltown05_path06(query) {
    if("subject" in query) { return query.subject == "smalltown05_path06"; } 
    else return false;
}
function IsFarm01_path01(query) {
    if("subject" in query) { return query.subject == "farm01_path01"; } 
    else return false;
}
function IsFarm01_path02(query) {
    if("subject" in query) { return query.subject == "farm01_path02"; } 
    else return false;
}
function IsFarm01_path03(query) {
    if("subject" in query) { return query.subject == "farm01_path03"; } 
    else return false;
}
function IsFarm01_path04(query) {
    if("subject" in query) { return query.subject == "farm01_path04"; } 
    else return false;
}
function IsFarm01_path05(query) {
    if("subject" in query) { return query.subject == "farm01_path05"; } 
    else return false;
}
function IsFarm01_path06(query) {
    if("subject" in query) { return query.subject == "farm01_path06"; } 
    else return false;
}
function IsFarm01_path07(query) {
    if("subject" in query) { return query.subject == "farm01_path07"; } 
    else return false;
}
function IsFarm01_path08(query) {
    if("subject" in query) { return query.subject == "farm01_path08"; } 
    else return false;
}
function IsFarm02_path01(query) {
    if("subject" in query) { return query.subject == "farm02_path01"; } 
    else return false;
}
function IsFarm02_path02(query) {
    if("subject" in query) { return query.subject == "farm02_path02"; } 
    else return false;
}
function IsFarm02_path03(query) {
    if("subject" in query) { return query.subject == "farm02_path03"; } 
    else return false;
}
function IsFarm02_path04(query) {
    if("subject" in query) { return query.subject == "farm02_path04"; } 
    else return false;
}
function IsFarm02_path05(query) {
    if("subject" in query) { return query.subject == "farm02_path05"; } 
    else return false;
}
function IsFarm02_path06(query) {
    if("subject" in query) { return query.subject == "farm02_path06"; } 
    else return false;
}
function IsFarm02_path07(query) {
    if("subject" in query) { return query.subject == "farm02_path07"; } 
    else return false;
}
function IsFarm02_path08(query) {
    if("subject" in query) { return query.subject == "farm02_path08"; } 
    else return false;
}
function IsFarm02_path09(query) {
    if("subject" in query) { return query.subject == "farm02_path09"; } 
    else return false;
}
function IsFarm03_path01(query) {
    if("subject" in query) { return query.subject == "farm03_path01"; } 
    else return false;
}
function IsFarm03_path02(query) {
    if("subject" in query) { return query.subject == "farm03_path02"; } 
    else return false;
}
function IsFarm03_path03(query) {
    if("subject" in query) { return query.subject == "farm03_path03"; } 
    else return false;
}
function IsFarm03_path04(query) {
    if("subject" in query) { return query.subject == "farm03_path04"; } 
    else return false;
}
function IsFarm03_path05(query) {
    if("subject" in query) { return query.subject == "farm03_path05"; } 
    else return false;
}
function IsFarm03_path06(query) {
    if("subject" in query) { return query.subject == "farm03_path06"; } 
    else return false;
}
function IsFarm03_path07(query) {
    if("subject" in query) { return query.subject == "farm03_path07"; } 
    else return false;
}
function IsFarm04_path01(query) {
    if("subject" in query) { return query.subject == "farm04_path01"; } 
    else return false;
}
function IsFarm04_path02(query) {
    if("subject" in query) { return query.subject == "farm04_path02"; } 
    else return false;
}
function IsFarm04_path03(query) {
    if("subject" in query) { return query.subject == "farm04_path03"; } 
    else return false;
}
function IsFarm04_path04(query) {
    if("subject" in query) { return query.subject == "farm04_path04"; } 
    else return false;
}
function IsFarm04_path05(query) {
    if("subject" in query) { return query.subject == "farm04_path05"; } 
    else return false;
}
function IsFarm04_path06(query) {
    if("subject" in query) { return query.subject == "farm04_path06"; } 
    else return false;
}
function IsFarm04_path07(query) {
    if("subject" in query) { return query.subject == "farm04_path07"; } 
    else return false;
}
function IsFarm04_path08(query) {
    if("subject" in query) { return query.subject == "farm04_path08"; } 
    else return false;
}
function IsFarm04_path09(query) {
    if("subject" in query) { return query.subject == "farm04_path09"; } 
    else return false;
}
function IsFarm05_path01(query) {
    if("subject" in query) { return query.subject == "farm05_path01"; } 
    else return false;
}
function IsFarm05_path02(query) {
    if("subject" in query) { return query.subject == "farm05_path02"; } 
    else return false;
}
function IsFarm05_path03(query) {
    if("subject" in query) { return query.subject == "farm05_path03"; } 
    else return false;
}
function IsFarm05_path04(query) {
    if("subject" in query) { return query.subject == "farm05_path04"; } 
    else return false;
}
function IsFarm05_path05(query) {
    if("subject" in query) { return query.subject == "farm05_path05"; } 
    else return false;
}
function IsFarm05_path06(query) {
    if("subject" in query) { return query.subject == "farm05_path06"; } 
    else return false;
}
function IsFarm05_path07(query) {
    if("subject" in query) { return query.subject == "farm05_path07"; } 
    else return false;
}
function IsFarm05_path08(query) {
    if("subject" in query) { return query.subject == "farm05_path08"; } 
    else return false;
}
function IsFarm05_path09(query) {
    if("subject" in query) { return query.subject == "farm05_path09"; } 
    else return false;
}
function IsFarm05_path10(query) {
    if("subject" in query) { return query.subject == "farm05_path10"; } 
    else return false;
}
function IsFarm03_path08(query) {
    if("subject" in query) { return query.subject == "farm03_path08"; } 
    else return false;
}
function IsSmalltown02_path09(query) {
    if("subject" in query) { return query.subject == "smalltown02_path09"; } 
    else return false;
}
function IsSmalltown03_path14(query) {
    if("subject" in query) { return query.subject == "smalltown03_path14"; } 
    else return false;
}
function IsSmalltown04_path11(query) {
    if("subject" in query) { return query.subject == "smalltown04_path11"; } 
    else return false;
}
function IsFarm04_path10(query) {
    if("subject" in query) { return query.subject == "farm04_path10"; } 
    else return false;
}
function IsFarm01_path09(query) {
    if("subject" in query) { return query.subject == "farm01_path09"; } 
    else return false;
}
function IsFarm02_path10(query) {
    if("subject" in query) { return query.subject == "farm02_path10"; } 
    else return false;
}
function IsFarm03_path09(query) {
    if("subject" in query) { return query.subject == "farm03_path09"; } 
    else return false;
}
function IsSmalltown01_path09(query) {
    if("subject" in query) { return query.subject == "smalltown01_path09"; } 
    else return false;
}
function IsSmalltown01_path10(query) {
    if("subject" in query) { return query.subject == "smalltown01_path10"; } 
    else return false;
}
function IsFarm03_path10(query) {
    if("subject" in query) { return query.subject == "farm03_path10"; } 
    else return false;
}
function Iscrashcourse01_path01(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path01"; } 
    else return false;
}
function Iscrashcourse01_path02(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path02"; } 
    else return false;
}
function Iscrashcourse01_path03(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path03"; } 
    else return false;
}
function Iscrashcourse01_path15(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path15"; } 
    else return false;
}
function Iscrashcourse01_path16(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path16"; } 
    else return false;
}
function Iscrashcourse01_path04(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path04"; } 
    else return false;
}
function Iscrashcourse01_path05(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path05"; } 
    else return false;
}
function Iscrashcourse01_path06(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path06"; } 
    else return false;
}
function Iscrashcourse01_path07(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path07"; } 
    else return false;
}
function Iscrashcourse01_path08(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path08"; } 
    else return false;
}
function Iscrashcourse01_path09(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path09"; } 
    else return false;
}
function Iscrashcourse01_path10(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path10"; } 
    else return false;
}
function Iscrashcourse01_path11(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path11"; } 
    else return false;
}
function Iscrashcourse01_path12(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path12"; } 
    else return false;
}
function Iscrashcourse01_path13(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path13"; } 
    else return false;
}
function Iscrashcourse01_path14(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path14"; } 
    else return false;
}
function Iscrashcourse01_path19(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path19"; } 
    else return false;
}
function Iscrashcourse01_path18(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path18"; } 
    else return false;
}
function Iscrashcourse01_path17(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path17"; } 
    else return false;
}
function Iscrashcourse01_path21(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path21"; } 
    else return false;
}
function Iscrashcourse01_path20(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path20"; } 
    else return false;
}
function Iscrashcourse01_path24(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path24"; } 
    else return false;
}
function Iscrashcourse01_path25(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path25"; } 
    else return false;
}
function Iscrashcourse01_path26(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path26"; } 
    else return false;
}
function Iscrashcourse01_path27(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path27"; } 
    else return false;
}
function Iscrashcourse02_path01(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path01"; } 
    else return false;
}
function Iscrashcourse02_path02(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path02"; } 
    else return false;
}
function Iscrashcourse02_path04(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path04"; } 
    else return false;
}
function Iscrashcourse02_path05(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path05"; } 
    else return false;
}
function Iscrashcourse02_path06(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path06"; } 
    else return false;
}
function Iscrashcourse02_path07(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path07"; } 
    else return false;
}
function Iscrashcourse02_path09(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path09"; } 
    else return false;
}
function Iscrashcourse02_path10(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path10"; } 
    else return false;
}
function Iscrashcourse02_path11(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path11"; } 
    else return false;
}
function Iscrashcourse02_path12(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path12"; } 
    else return false;
}
function Iscrashcourse02_path08(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path08"; } 
    else return false;
}
function Iscrashcourse02_path14(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path14"; } 
    else return false;
}
function ConceptIntroCrash(query) {
    if("concept" in query) { return query.concept == "introcrashcourse"; } 
    else return false;
}
function NotHowitzerFired(query) {
    if("worldhowitzerwasfired" in query) { return query.worldhowitzerwasfired < 1; } 
    else return true;
}
function IsHowitzerFired(query) {
    if("worldhowitzerwasfired" in query) { return query.worldhowitzerwasfired == 1; } 
    else return false;
}
function NotHowitzerSeen(query) {
    if("worldhowitzerseen" in query) { return query.worldhowitzerseen < 1; } 
    else return true;
}
function IsHowitzerSeen(query) {
    if("worldhowitzerseen" in query) { return query.worldhowitzerseen == 1; } 
    else return false;
}
function IsCrashGenerator1Nag(query) {
    if("worldcrashgenerator1nag" in query) { return query.worldcrashgenerator1nag == 1; } 
    else return false;
}
function IsCrashGeneratorNotOn(query) {
    if("worldcrashgenerator1nag" in query) { return query.worldcrashgenerator1nag != 2; } 
    else return true;
}
function NotCrash01ThroughBridge(query) {
    if("worldcrash01throughbridge" in query) { return query.worldcrash01throughbridge < 1; } 
    else return true;
}
function NotSaidMegaMobPilot(query) {
    if("worldsaidmegamobpilot" in query) { return query.worldsaidmegamobpilot < 1; } 
    else return true;
}
function ConceptCrashFinaleGeneratorPress(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorpress"; } 
    else return false;
}
function ConceptCrashFinaleGeneratorUnPress(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorunpress"; } 
    else return false;
}
function ConceptCrashFinaleGeneratorOn(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratoron"; } 
    else return false;
}
function ConceptCrashFinaleGeneratorBreak(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorbreak"; } 
    else return false;
}
function ConceptCrashFinaleTruckReady(query) {
    if("concept" in query) { return query.concept == "crashfinaletruckready"; } 
    else return false;
}
function ConceptCrashFinaleTruckReadySpk(query) {
    if("concept" in query) { return query.concept == "crashfinaletruckreadyspk"; } 
    else return false;
}
function ConceptCrashFinaleTruckReadyResp(query) {
    if("concept" in query) { return query.concept == "crashfinaletruckreadyresp"; } 
    else return false;
}
function IsCrashFinaleGeneratorBroken(query) {
    if("worldcrashfinalegenerator" in query) { return query.worldcrashfinalegenerator == 1; } 
    else return false;
}
function IsCrashFinaleGeneratorNotFixed(query) {
    if("worldcrashfinalegenerator" in query) { return query.worldcrashfinalegenerator != 2; } 
    else return true;
}
function ConceptCrashFinaleGenerator2Press(query) {
    if("concept" in query) { return query.concept == "crashfinalegenerator2press"; } 
    else return false;
}
function ConceptCrashFinaleGenerator2UnPress(query) {
    if("concept" in query) { return query.concept == "crashfinalegenerator2unpress"; } 
    else return false;
}
function ConceptCrashFinaleGenerator2On(query) {
    if("concept" in query) { return query.concept == "crashfinalegenerator2on"; } 
    else return false;
}
function ConceptCrashFinaleGeneratorUnPressSpeak(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorunpressspeak"; } 
    else return false;
}
function ConceptCrashFinaleGenerator2UnPressSpeak(query) {
    if("concept" in query) { return query.concept == "crashfinalegenerator2unpressspeak"; } 
    else return false;
}
function CanadaBikerHate(query) {
    if("worldcanadabikerhate" in query) { return query.worldcanadabikerhate == 1; } 
    else return false;
}
function NotCanadaBikerHatedYet(query) {
    if("worldcanadabikerhated" in query) { return query.worldcanadabikerhated < 1; } 
    else return true;
}
function Conceptcrashcourse01_path01zresp(query) {
    if("concept" in query) { return query.concept == "crashcourse01_path01zresp"; } 
    else return false;
}
function ConceptDontBeAnAss(query) {
    if("concept" in query) { return query.concept == "dontbeanass"; } 
    else return false;
}
function ConceptRiversideIsDead(query) {
    if("concept" in query) { return query.concept == "riversideisdead"; } 
    else return false;
}
function ConceptRiversideIsDeadA(query) {
    if("concept" in query) { return query.concept == "riversideisdeada"; } 
    else return false;
}
function ConceptRiversideIsDeadB(query) {
    if("concept" in query) { return query.concept == "riversideisdeadb"; } 
    else return false;
}
function ConceptRiversideIsDeadSpecial1A(query) {
    if("concept" in query) { return query.concept == "riversideisdeadspecial1a"; } 
    else return false;
}
function ConceptRiversideIsDeadSpecial1B(query) {
    if("concept" in query) { return query.concept == "riversideisdeadspecial1b"; } 
    else return false;
}
function ConceptRiversideIsDeadPlan(query) {
    if("concept" in query) { return query.concept == "riversideisdeadplan"; } 
    else return false;
}
function Conceptsmalltown02_path01a(query) {
    if("concept" in query) { return query.concept == "smalltown02_path01a"; } 
    else return false;
}
function Conceptsmalltown02_path01b(query) {
    if("concept" in query) { return query.concept == "smalltown02_path01b"; } 
    else return false;
}
function Conceptsmalltown02_path01c(query) {
    if("concept" in query) { return query.concept == "smalltown02_path01c"; } 
    else return false;
}
function Conceptsmalltown02_path07a(query) {
    if("concept" in query) { return query.concept == "smalltown02_path07a"; } 
    else return false;
}
function Conceptsmalltown02_path08a(query) {
    if("concept" in query) { return query.concept == "smalltown02_path08a"; } 
    else return false;
}
function Conceptsmalltown04_path07a(query) {
    if("concept" in query) { return query.concept == "smalltown04_path07a"; } 
    else return false;
}
function Conceptsmalltown04_path05a(query) {
    if("concept" in query) { return query.concept == "smalltown04_path05a"; } 
    else return false;
}
function Conceptsmalltown05_path03a(query) {
    if("concept" in query) { return query.concept == "smalltown05_path03a"; } 
    else return false;
}
function ConceptFarm01_path03a(query) {
    if("concept" in query) { return query.concept == "farm01_path03a"; } 
    else return false;
}
function ConceptFarm02_path01a(query) {
    if("concept" in query) { return query.concept == "farm02_path01a"; } 
    else return false;
}
function ConceptFarm02_path02a(query) {
    if("concept" in query) { return query.concept == "farm02_path02a"; } 
    else return false;
}
function ConceptFarm02_path02b(query) {
    if("concept" in query) { return query.concept == "farm02_path02b"; } 
    else return false;
}
function ConceptFarm03_path01a(query) {
    if("concept" in query) { return query.concept == "farm03_path01a"; } 
    else return false;
}
function ConceptFarm05_path07b(query) {
    if("concept" in query) { return query.concept == "farm05_path07b"; } 
    else return false;
}
function ConceptFarmVampiresb(query) {
    if("concept" in query) { return query.concept == "farmvampiresb"; } 
    else return false;
}
function ConceptFarmVampiresC(query) {
    if("concept" in query) { return query.concept == "farmvampiresc"; } 
    else return false;
}
function ConceptFarm05_path09C(query) {
    if("concept" in query) { return query.concept == "farm05_path09c"; } 
    else return false;
}
function ConceptNeedsHelpResponseLouisB2(query) {
    if("concept" in query) { return query.concept == "needshelpresponselouisb2"; } 
    else return false;
}
function ConceptNeedsHelpResponseLouisC2(query) {
    if("concept" in query) { return query.concept == "needshelpresponselouisc2"; } 
    else return false;
}
function ConceptBridgeReadyToCross(query) {
    if("concept" in query) { return query.concept == "bridgereadytocross"; } 
    else return false;
}
function NotSaidFarm01_TracksBelow(query) {
    if("worldsaidfarm01_tracksbelow" in query) { return query.worldsaidfarm01_tracksbelow < 1; } 
    else return true;
}
function NotSaidFarm02_TracksBelow(query) {
    if("worldsaidfarm02_tracksbelow" in query) { return query.worldsaidfarm02_tracksbelow < 1; } 
    else return true;
}
function RemarkableReadyToGo(query) {
    if("worldremarkablereadytogo" in query) { return query.worldremarkablereadytogo == 1; } 
    else return false;
}
function NotRemarkableBlocked(query) {
    if("worldremarkableblocker" in query) { return query.worldremarkableblocker < 1; } 
    else return true;
}
// terror_player_addon_dlc1.txt ===================================================================================================================
function ConceptC6M1Intro_01(query) {
    if("concept" in query) { return query.concept == "c6m1intro_01"; } 
    else return false;
}
function ConceptC6M1Intro_01a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_01a"; } 
    else return false;
}
function ConceptC6M1Intro_01b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_01b"; } 
    else return false;
}
function ConceptC6M1Intro_01c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_01c"; } 
    else return false;
}
function ConceptC6M1Intro_01d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_01d"; } 
    else return false;
}
function ConceptC6M1Intro_02a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_02a"; } 
    else return false;
}
function ConceptC6M1Intro_02b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_02b"; } 
    else return false;
}
function ConceptC6M1Intro_03a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_03a"; } 
    else return false;
}
function ConceptC6M1Intro_04a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_04a"; } 
    else return false;
}
function ConceptC6M1Intro_04b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_04b"; } 
    else return false;
}
function ConceptC6M1Intro_04c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_04c"; } 
    else return false;
}
function ConceptC6M1Intro_05a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_05a"; } 
    else return false;
}
function ConceptC6M1Intro_05b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_05b"; } 
    else return false;
}
function ConceptC6M1Intro_05c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_05c"; } 
    else return false;
}
function ConceptC6M1Intro_05d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_05d"; } 
    else return false;
}
function ConceptC6M1Intro_05e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_05e"; } 
    else return false;
}
function ConceptC6M1Intro_06a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_06a"; } 
    else return false;
}
function ConceptC6M1Intro_06b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_06b"; } 
    else return false;
}
function ConceptC6M1Intro_06c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_06c"; } 
    else return false;
}
function ConceptC6M1Intro_06d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_06d"; } 
    else return false;
}
function ConceptC6M1Intro_06e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_06e"; } 
    else return false;
}
function ConceptC6M1Intro_07a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_07a"; } 
    else return false;
}
function ConceptC6M1Intro_07b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_07b"; } 
    else return false;
}
function ConceptC6M1Intro_07c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_07c"; } 
    else return false;
}
function ConceptC6M1Intro_08a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_08a"; } 
    else return false;
}
function ConceptC6M1Intro_09a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09a"; } 
    else return false;
}
function ConceptC6M1Intro_09b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09b"; } 
    else return false;
}
function ConceptC6M1Intro_09c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09c"; } 
    else return false;
}
function ConceptC6M1Intro_09d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09d"; } 
    else return false;
}
function ConceptC6M1Intro_09e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09e"; } 
    else return false;
}
function ConceptC6M1Intro_09f(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09f"; } 
    else return false;
}
function ConceptC6M1Intro_09g(query) {
    if("concept" in query) { return query.concept == "c6m1intro_09g"; } 
    else return false;
}
function ConceptC6M1Intro_10a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_10a"; } 
    else return false;
}
function ConceptC6M1Intro_10b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_10b"; } 
    else return false;
}
function ConceptC6M1Intro_10c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_10c"; } 
    else return false;
}
function ConceptC6M1Intro_10d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_10d"; } 
    else return false;
}
function ConceptC6M1Intro_10e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_10e"; } 
    else return false;
}
function ConceptC6M1Intro_11a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_11a"; } 
    else return false;
}
function ConceptC6M1Intro_11b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_11b"; } 
    else return false;
}
function ConceptC6M1Intro_11c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_11c"; } 
    else return false;
}
function ConceptC6M1Intro_11d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_11d"; } 
    else return false;
}
function ConceptC6M1Intro_12a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_12a"; } 
    else return false;
}
function ConceptC6M1Intro_12b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_12b"; } 
    else return false;
}
function ConceptC6M1Intro_12c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_12c"; } 
    else return false;
}
function ConceptC6M1Intro_13a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13a"; } 
    else return false;
}
function ConceptC6M1Intro_13b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13b"; } 
    else return false;
}
function ConceptC6M1Intro_13c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13c"; } 
    else return false;
}
function ConceptC6M1Intro_13d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13d"; } 
    else return false;
}
function ConceptC6M1Intro_13e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13e"; } 
    else return false;
}
function ConceptC6M1Intro_13f(query) {
    if("concept" in query) { return query.concept == "c6m1intro_13f"; } 
    else return false;
}
function ConceptC6M1Intro_14a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_14a"; } 
    else return false;
}
function ConceptC6M1Intro_14b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_14b"; } 
    else return false;
}
function ConceptC6M1Intro_14c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_14c"; } 
    else return false;
}
function ConceptC6M1Intro_14d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_14d"; } 
    else return false;
}
function ConceptC6M1Intro_15a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_15a"; } 
    else return false;
}
function ConceptC6M1Intro_15b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_15b"; } 
    else return false;
}
function ConceptC6M1Intro_15c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_15c"; } 
    else return false;
}
function ConceptC6M1Intro_15d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_15d"; } 
    else return false;
}
function ConceptC6M1Intro_15e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_15e"; } 
    else return false;
}
function ConceptC6M1Intro_16a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_16a"; } 
    else return false;
}
function ConceptC6M1Intro_16b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_16b"; } 
    else return false;
}
function ConceptC6M1Intro_17a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_17a"; } 
    else return false;
}
function ConceptC6M1Intro_17b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_17b"; } 
    else return false;
}
function ConceptC6M1Intro_17c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_17c"; } 
    else return false;
}
function ConceptC6M1Intro_17d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_17d"; } 
    else return false;
}
function ConceptC6M1Intro_18a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_18a"; } 
    else return false;
}
function ConceptC6M1Intro_18b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_18b"; } 
    else return false;
}
function ConceptC6M1Intro_18c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_18c"; } 
    else return false;
}
function ConceptC6M1Intro_18d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_18d"; } 
    else return false;
}
function ConceptC6M1Intro_18e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_18e"; } 
    else return false;
}
function ConceptC6M1Intro_19a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_19a"; } 
    else return false;
}
function ConceptC6M1Intro_19b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_19b"; } 
    else return false;
}
function ConceptC6M1Intro_20a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20a"; } 
    else return false;
}
function ConceptC6M1Intro_20b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20b"; } 
    else return false;
}
function ConceptC6M1Intro_20c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20c"; } 
    else return false;
}
function ConceptC6M1Intro_20d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20d"; } 
    else return false;
}
function ConceptC6M1Intro_20e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20e"; } 
    else return false;
}
function ConceptC6M1Intro_20f(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20f"; } 
    else return false;
}
function ConceptC6M1Intro_20g(query) {
    if("concept" in query) { return query.concept == "c6m1intro_20g"; } 
    else return false;
}
function ConceptC6M1Intro_21a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_21a"; } 
    else return false;
}
function ConceptC6M1Intro_21b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_21b"; } 
    else return false;
}
function ConceptC6M1Intro_21c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_21c"; } 
    else return false;
}
function ConceptC6M1Intro_21d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_21d"; } 
    else return false;
}
function ConceptC6M1Intro_21e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_21e"; } 
    else return false;
}
function ConceptC6M1Intro_21f(query) {
    if("concept" in query) { return query.concept == "c6m1intro_21f"; } 
    else return false;
}
function ConceptC6M1Intro_22a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22a"; } 
    else return false;
}
function ConceptC6M1Intro_22b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22b"; } 
    else return false;
}
function ConceptC6M1Intro_22c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22c"; } 
    else return false;
}
function ConceptC6M1Intro_22d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22d"; } 
    else return false;
}
function ConceptC6M1Intro_22f(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22f"; } 
    else return false;
}
function ConceptC6M1Intro_22g(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22g"; } 
    else return false;
}
function ConceptC6M1Intro_22h(query) {
    if("concept" in query) { return query.concept == "c6m1intro_22h"; } 
    else return false;
}
function ConceptC6M1Intro_23a(query) {
    if("concept" in query) { return query.concept == "c6m1intro_23a"; } 
    else return false;
}
function ConceptC6M1Intro_23b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_23b"; } 
    else return false;
}
function ConceptC6M1Intro_23c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_23c"; } 
    else return false;
}
function ConceptC6M1Intro_23d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_23d"; } 
    else return false;
}
function ConceptC6M1Intro_21fg(query) {
    if("concept" in query) { return query.concept == "c6m1intro_21fg"; } 
    else return false;
}
function ConceptC6M1Intro_21g(query) {
    if("concept" in query) { return query.concept == "c6m1intro_21g"; } 
    else return false;
}
function ConceptC6M1Intro_24b(query) {
    if("concept" in query) { return query.concept == "c6m1intro_24b"; } 
    else return false;
}
function ConceptC6M1Intro_24c(query) {
    if("concept" in query) { return query.concept == "c6m1intro_24c"; } 
    else return false;
}
function ConceptC6M1Intro_24d(query) {
    if("concept" in query) { return query.concept == "c6m1intro_24d"; } 
    else return false;
}
function ConceptC6M1Intro_24_alien(query) {
    if("concept" in query) { return query.concept == "c6m1intro_24_alien"; } 
    else return false;
}
function ConceptC6M1Intro_24e(query) {
    if("concept" in query) { return query.concept == "c6m1intro_24e"; } 
    else return false;
}
function ConceptC6M1_IntotheparkNoHealth(query) {
    if("concept" in query) { return query.concept == "c6m1_intotheparknohealth"; } 
    else return false;
}
function ConceptHistoricTour01a(query) {
    if("concept" in query) { return query.concept == "historictour01a"; } 
    else return false;
}
function ConceptHistoricTour02a(query) {
    if("concept" in query) { return query.concept == "historictour02a"; } 
    else return false;
}
function ConceptHistoricTour02b(query) {
    if("concept" in query) { return query.concept == "historictour02b"; } 
    else return false;
}
function ConceptC6M1TakeSubMachineGun01(query) {
    if("concept" in query) { return query.concept == "c6m1takesubmachinegun01"; } 
    else return false;
}
function ConceptRemWorldC6M1_WeddingWarn01(query) {
    if("concept" in query) { return query.concept == "remworldc6m1_weddingwarn01"; } 
    else return false;
}
function ConceptRemWorldC6M1_WeddingWarn02(query) {
    if("concept" in query) { return query.concept == "remworldc6m1_weddingwarn02"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn03a(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn03a"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn03b(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn03b"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn04(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn04"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn04a(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn04a"; } 
    else return false;
}
function ConceptWeddingWitchDead01(query) {
    if("concept" in query) { return query.concept == "weddingwitchdead01"; } 
    else return false;
}
function ConceptWeddingWitchDead02(query) {
    if("concept" in query) { return query.concept == "weddingwitchdead02"; } 
    else return false;
}
function ConceptWeddingWitchDead03(query) {
    if("concept" in query) { return query.concept == "weddingwitchdead03"; } 
    else return false;
}
function ConceptWeddingWitchDead04(query) {
    if("concept" in query) { return query.concept == "weddingwitchdead04"; } 
    else return false;
}
function ConceptWorldC6M1_PostWedding01a(query) {
    if("concept" in query) { return query.concept == "worldc6m1_postwedding01a"; } 
    else return false;
}
function ConceptWorldC6M1_PostWedding02a(query) {
    if("concept" in query) { return query.concept == "worldc6m1_postwedding02a"; } 
    else return false;
}
function ConceptWorldC6M1_WeddingWarn05a(query) {
    if("concept" in query) { return query.concept == "worldc6m1_weddingwarn05a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo01a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo01a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo01b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo01b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo02a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo02a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo02b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo02b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo03a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo03a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo03b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo03b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo03c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo03c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo04a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo04a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo06a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo06a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo07a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo07a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08e"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo08f(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo08f"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo09a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo09a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo09b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo09b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo10a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo10a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo10b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo10b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo10c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo10c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo10d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo10d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo11a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo11a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo11b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo11b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo12a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo12a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo12b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo12b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo12c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo12c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo12d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo12d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo13a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo13a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo13b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo13b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo13c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo13c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo13d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo13d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14e"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo14f(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo14f"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo15a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo15a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo15b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo15b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo15c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo15c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16e"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16f(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16f"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo17a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo17a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo17b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo17b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo18a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo18a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo18b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo18b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo18c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo18c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo18d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo18d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo18e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo18e"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19c"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19d"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo19e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo19e"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo20a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo20a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo21a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo21a"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo21b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo21b"; } 
    else return false;
}
function ConceptWorldC6M2_AfterGate201a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_aftergate201a"; } 
    else return false;
}
function ConceptWorldC6M2_FinalWater01a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_finalwater01a"; } 
    else return false;
}
function ConceptWorldC6M2_FinalWater01b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_finalwater01b"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer101a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer101a"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer101c(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer101c"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer102a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer102a"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer102b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer102b"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer201a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer201a"; } 
    else return false;
}
function ConceptWorldC6M2_InSewer202a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewer202a"; } 
    else return false;
}
function ConceptWorldC6M2_InSewerLadder101a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_insewerladder101a"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk101a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk101a"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk101b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk101b"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk101c(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk101c"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk102a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk102a"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk102b(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk102b"; } 
    else return false;
}
function ConceptWorldC6M2_OnTourWalk103a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_ontourwalk103a"; } 
    else return false;
}
function ConceptWorldC6M2_Phase201a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_phase201a"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo01a_(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo01a>"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo01b_(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo01b>"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo02a_(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo02a>"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo02b_(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo02b>"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo02c_(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo02c>"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo02d_(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo02d>"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo03a_(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo03a>"; } 
    else return false;
}
function ConceptWorldC6M2_TourEntrance01a(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tourentrance01a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo01a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo01a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo01b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo01b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02d"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02e"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo03a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo03a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo03b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo03b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo03c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo03c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo03d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo03d"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo04a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo04a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo04b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo04b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo04c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo04c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo04d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo04d"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo05a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo05a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo05b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo05b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo05c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo05c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo05d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo05d"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo06a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo06a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo06b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo06b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo07a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo07a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo07b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo07b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo07c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo07c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08b"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08c"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08d(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08d"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08e(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08e"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08f(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08f"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo08g(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo08g"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo09a(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo09a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo09b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo09b"; } 
    else return false;
}
function ConceptWorldC6M3_ByBridge01(query) {
    if("concept" in query) { return query.concept == "worldc6m3_bybridge01"; } 
    else return false;
}
function ConceptWorldC6M3_ByBridge01Ellis(query) {
    if("concept" in query) { return query.concept == "worldc6m3_bybridge01ellis"; } 
    else return false;
}
function ConceptWorldC6M2_Tattoo03b_(query) {
    if("concept" in query) { return query.concept == "worldc6m2_tattoo03b>"; } 
    else return false;
}
function ConceptC6M2_OpenGate1a(query) {
    if("concept" in query) { return query.concept == "c6m2_opengate1a"; } 
    else return false;
}
function ConceptC6M2_OpenGate1b(query) {
    if("concept" in query) { return query.concept == "c6m2_opengate1b"; } 
    else return false;
}
function Conceptc6m3_outro201a(query) {
    if("concept" in query) { return query.concept == "c6m3_outro201a"; } 
    else return false;
}
function Conceptc6m3_outroL4D1010a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d1010a"; } 
    else return false;
}
function Conceptc6m3_outroL4D101a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d101a"; } 
    else return false;
}
function Conceptc6m3_outroL4D102a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d102a"; } 
    else return false;
}
function Conceptc6m3_outroL4D102b(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d102b"; } 
    else return false;
}
function Conceptc6m3_outroL4D103a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d103a"; } 
    else return false;
}
function Conceptc6m3_outroL4D104a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d104a"; } 
    else return false;
}
function Conceptc6m3_outroL4D104b(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d104b"; } 
    else return false;
}
function Conceptc6m3_outroL4D105a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d105a"; } 
    else return false;
}
function Conceptc6m3_outroL4D106a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d106a"; } 
    else return false;
}
function Conceptc6m3_outroL4D107a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d107a"; } 
    else return false;
}
function Conceptc6m3_outroL4D108a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d108a"; } 
    else return false;
}
function Conceptc6m3_outroL4D109a(query) {
    if("concept" in query) { return query.concept == "c6m3_outrol4d109a"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02a1(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02a1"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo02b(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo02b"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16a1(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16a1"; } 
    else return false;
}
function ConceptDLC1_C6M2_SafeRoomConvo16b1(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m2_saferoomconvo16b1"; } 
    else return false;
}
function ConceptDLC1_C6M3_SafeRoomConvo01c(query) {
    if("concept" in query) { return query.concept == "dlc1_c6m3_saferoomconvo01c"; } 
    else return false;
}
// terror_player_addon_dlc2.txt ===================================================================================================================
function IsNotSaidSmalltown01_path05(query) {
    if("worldsaidsmalltown01_path05" in query) { return query.worldsaidsmalltown01_path05 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path06(query) {
    if("worldsaidsmalltown01_path06" in query) { return query.worldsaidsmalltown01_path06 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path07(query) {
    if("worldsaidsmalltown01_path07" in query) { return query.worldsaidsmalltown01_path07 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path08(query) {
    if("worldsaidsmalltown01_path08" in query) { return query.worldsaidsmalltown01_path08 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path01(query) {
    if("worldsaidsmalltown02_path01" in query) { return query.worldsaidsmalltown02_path01 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path02(query) {
    if("worldsaidsmalltown02_path02" in query) { return query.worldsaidsmalltown02_path02 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path03(query) {
    if("worldsaidsmalltown02_path03" in query) { return query.worldsaidsmalltown02_path03 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path04(query) {
    if("worldsaidsmalltown02_path04" in query) { return query.worldsaidsmalltown02_path04 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path05(query) {
    if("worldsaidsmalltown02_path05" in query) { return query.worldsaidsmalltown02_path05 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path06(query) {
    if("worldsaidsmalltown02_path06" in query) { return query.worldsaidsmalltown02_path06 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path07(query) {
    if("worldsaidsmalltown02_path07" in query) { return query.worldsaidsmalltown02_path07 != 1; } 
    else return true;
}
function IsNotSaidsmalltown02_path08(query) {
    if("worldsaidsmalltown02_path08" in query) { return query.worldsaidsmalltown02_path08 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path01(query) {
    if("worldsaidsmalltown03_path01" in query) { return query.worldsaidsmalltown03_path01 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path02(query) {
    if("worldsaidsmalltown03_path02" in query) { return query.worldsaidsmalltown03_path02 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path03(query) {
    if("worldsaidsmalltown03_path03" in query) { return query.worldsaidsmalltown03_path03 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path04(query) {
    if("worldsaidsmalltown03_path04" in query) { return query.worldsaidsmalltown03_path04 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path05(query) {
    if("worldsaidsmalltown03_path05" in query) { return query.worldsaidsmalltown03_path05 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path06(query) {
    if("worldsaidsmalltown03_path06" in query) { return query.worldsaidsmalltown03_path06 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path07(query) {
    if("worldsaidsmalltown03_path07" in query) { return query.worldsaidsmalltown03_path07 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path08(query) {
    if("worldsaidsmalltown03_path08" in query) { return query.worldsaidsmalltown03_path08 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path09(query) {
    if("worldsaidsmalltown03_path09" in query) { return query.worldsaidsmalltown03_path09 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path10(query) {
    if("worldsaidsmalltown03_path10" in query) { return query.worldsaidsmalltown03_path10 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path11(query) {
    if("worldsaidsmalltown03_path11" in query) { return query.worldsaidsmalltown03_path11 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path12(query) {
    if("worldsaidsmalltown03_path12" in query) { return query.worldsaidsmalltown03_path12 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path13(query) {
    if("worldsaidsmalltown03_path13" in query) { return query.worldsaidsmalltown03_path13 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path01(query) {
    if("worldsaidsmalltown04_path01" in query) { return query.worldsaidsmalltown04_path01 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path02(query) {
    if("worldsaidsmalltown04_path02" in query) { return query.worldsaidsmalltown04_path02 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path03(query) {
    if("worldsaidsmalltown04_path03" in query) { return query.worldsaidsmalltown04_path03 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path04(query) {
    if("worldsaidsmalltown04_path04" in query) { return query.worldsaidsmalltown04_path04 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path05(query) {
    if("worldsaidsmalltown04_path05" in query) { return query.worldsaidsmalltown04_path05 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path06(query) {
    if("worldsaidsmalltown04_path06" in query) { return query.worldsaidsmalltown04_path06 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path07(query) {
    if("worldsaidsmalltown04_path07" in query) { return query.worldsaidsmalltown04_path07 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path08(query) {
    if("worldsaidsmalltown04_path08" in query) { return query.worldsaidsmalltown04_path08 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path09(query) {
    if("worldsaidsmalltown04_path09" in query) { return query.worldsaidsmalltown04_path09 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path10(query) {
    if("worldsaidsmalltown04_path10" in query) { return query.worldsaidsmalltown04_path10 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path01(query) {
    if("worldsaidsmalltown05_path01" in query) { return query.worldsaidsmalltown05_path01 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path02(query) {
    if("worldsaidsmalltown05_path02" in query) { return query.worldsaidsmalltown05_path02 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path03(query) {
    if("worldsaidsmalltown05_path03" in query) { return query.worldsaidsmalltown05_path03 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path04(query) {
    if("worldsaidsmalltown05_path04" in query) { return query.worldsaidsmalltown05_path04 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path05(query) {
    if("worldsaidsmalltown05_path05" in query) { return query.worldsaidsmalltown05_path05 != 1; } 
    else return true;
}
function IsNotSaidSmalltown05_path06(query) {
    if("worldsaidsmalltown05_path06" in query) { return query.worldsaidsmalltown05_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path01(query) {
    if("worldsaidfarm01_path01" in query) { return query.worldsaidfarm01_path01 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path02(query) {
    if("worldsaidfarm01_path02" in query) { return query.worldsaidfarm01_path02 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path03(query) {
    if("worldsaidfarm01_path03" in query) { return query.worldsaidfarm01_path03 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path04(query) {
    if("worldsaidfarm01_path04" in query) { return query.worldsaidfarm01_path04 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path05(query) {
    if("worldsaidfarm01_path05" in query) { return query.worldsaidfarm01_path05 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path06(query) {
    if("worldsaidfarm01_path06" in query) { return query.worldsaidfarm01_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path07(query) {
    if("worldsaidfarm01_path07" in query) { return query.worldsaidfarm01_path07 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path08(query) {
    if("worldsaidfarm01_path08" in query) { return query.worldsaidfarm01_path08 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path01(query) {
    if("worldsaidfarm02_path01" in query) { return query.worldsaidfarm02_path01 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path02(query) {
    if("worldsaidfarm02_path02" in query) { return query.worldsaidfarm02_path02 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path03(query) {
    if("worldsaidfarm02_path03" in query) { return query.worldsaidfarm02_path03 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path04(query) {
    if("worldsaidfarm02_path04" in query) { return query.worldsaidfarm02_path04 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path05(query) {
    if("worldsaidfarm02_path05" in query) { return query.worldsaidfarm02_path05 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path06(query) {
    if("worldsaidfarm02_path06" in query) { return query.worldsaidfarm02_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path07(query) {
    if("worldsaidfarm02_path07" in query) { return query.worldsaidfarm02_path07 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path08(query) {
    if("worldsaidfarm02_path08" in query) { return query.worldsaidfarm02_path08 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path09(query) {
    if("worldsaidfarm02_path09" in query) { return query.worldsaidfarm02_path09 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path01(query) {
    if("worldsaidfarm03_path01" in query) { return query.worldsaidfarm03_path01 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path02(query) {
    if("worldsaidfarm03_path02" in query) { return query.worldsaidfarm03_path02 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path03(query) {
    if("worldsaidfarm03_path03" in query) { return query.worldsaidfarm03_path03 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path04(query) {
    if("worldsaidfarm03_path04" in query) { return query.worldsaidfarm03_path04 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path05(query) {
    if("worldsaidfarm03_path05" in query) { return query.worldsaidfarm03_path05 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path06(query) {
    if("worldsaidfarm03_path06" in query) { return query.worldsaidfarm03_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path07(query) {
    if("worldsaidfarm03_path07" in query) { return query.worldsaidfarm03_path07 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path01(query) {
    if("worldsaidfarm04_path01" in query) { return query.worldsaidfarm04_path01 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path02(query) {
    if("worldsaidfarm04_path02" in query) { return query.worldsaidfarm04_path02 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path03(query) {
    if("worldsaidfarm04_path03" in query) { return query.worldsaidfarm04_path03 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path04(query) {
    if("worldsaidfarm04_path04" in query) { return query.worldsaidfarm04_path04 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path05(query) {
    if("worldsaidfarm04_path05" in query) { return query.worldsaidfarm04_path05 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path06(query) {
    if("worldsaidfarm04_path06" in query) { return query.worldsaidfarm04_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path07(query) {
    if("worldsaidfarm04_path07" in query) { return query.worldsaidfarm04_path07 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path08(query) {
    if("worldsaidfarm04_path08" in query) { return query.worldsaidfarm04_path08 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path09(query) {
    if("worldsaidfarm04_path09" in query) { return query.worldsaidfarm04_path09 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path01(query) {
    if("worldsaidfarm05_path01" in query) { return query.worldsaidfarm05_path01 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path02(query) {
    if("worldsaidfarm05_path02" in query) { return query.worldsaidfarm05_path02 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path03(query) {
    if("worldsaidfarm05_path03" in query) { return query.worldsaidfarm05_path03 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path04(query) {
    if("worldsaidfarm05_path04" in query) { return query.worldsaidfarm05_path04 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path05(query) {
    if("worldsaidfarm05_path05" in query) { return query.worldsaidfarm05_path05 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path08(query) {
    if("worldsaidfarm03_path08" in query) { return query.worldsaidfarm03_path08 != 1; } 
    else return true;
}
function IsNotSaidSmalltown02_path09(query) {
    if("worldsaidsmalltown02_path09" in query) { return query.worldsaidsmalltown02_path09 != 1; } 
    else return true;
}
function IsNotSaidSmalltown03_path14(query) {
    if("worldsaidsmalltown03_path14" in query) { return query.worldsaidsmalltown03_path14 != 1; } 
    else return true;
}
function IsNotSaidSmalltown04_path11(query) {
    if("worldsaidsmalltown04_path11" in query) { return query.worldsaidsmalltown04_path11 != 1; } 
    else return true;
}
function IsNotSaidFarm04_path10(query) {
    if("worldsaidfarm04_path10" in query) { return query.worldsaidfarm04_path10 != 1; } 
    else return true;
}
function IsNotSaidFarm01_path09(query) {
    if("worldsaidfarm01_path09" in query) { return query.worldsaidfarm01_path09 != 1; } 
    else return true;
}
function IsNotSaidFarm02_path10(query) {
    if("worldsaidfarm02_path10" in query) { return query.worldsaidfarm02_path10 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path09(query) {
    if("worldsaidfarm03_path09" in query) { return query.worldsaidfarm03_path09 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path09(query) {
    if("worldsaidsmalltown01_path09" in query) { return query.worldsaidsmalltown01_path09 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path10(query) {
    if("worldsaidsmalltown01_path10" in query) { return query.worldsaidsmalltown01_path10 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path06(query) {
    if("worldsaidfarm05_path06" in query) { return query.worldsaidfarm05_path06 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path07(query) {
    if("worldsaidfarm05_path07" in query) { return query.worldsaidfarm05_path07 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path08(query) {
    if("worldsaidfarm05_path08" in query) { return query.worldsaidfarm05_path08 != 1; } 
    else return true;
}
function IsNotSaidFarm05_path09(query) {
    if("worldsaidfarm05_path09" in query) { return query.worldsaidfarm05_path09 != 1; } 
    else return true;
}
function IsNotSaidFarm03_path10(query) {
    if("worldsaidfarm03_path10" in query) { return query.worldsaidfarm03_path10 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path01(query) {
    if("worldsaidcrashcourse01_path01" in query) { return query.worldsaidcrashcourse01_path01 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path02(query) {
    if("worldsaidcrashcourse01_path02" in query) { return query.worldsaidcrashcourse01_path02 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path03(query) {
    if("worldsaidcrashcourse01_path03" in query) { return query.worldsaidcrashcourse01_path03 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path15(query) {
    if("worldsaidcrashcourse01_path15" in query) { return query.worldsaidcrashcourse01_path15 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path16(query) {
    if("worldsaidcrashcourse01_path16" in query) { return query.worldsaidcrashcourse01_path16 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path04(query) {
    if("worldsaidcrashcourse01_path04" in query) { return query.worldsaidcrashcourse01_path04 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path05(query) {
    if("worldsaidcrashcourse01_path05" in query) { return query.worldsaidcrashcourse01_path05 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path06(query) {
    if("worldsaidcrashcourse01_path06" in query) { return query.worldsaidcrashcourse01_path06 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path07(query) {
    if("worldsaidcrashcourse01_path07" in query) { return query.worldsaidcrashcourse01_path07 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path08(query) {
    if("worldsaidcrashcourse01_path08" in query) { return query.worldsaidcrashcourse01_path08 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path09(query) {
    if("worldsaidcrashcourse01_path09" in query) { return query.worldsaidcrashcourse01_path09 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path10(query) {
    if("worldsaidcrashcourse01_path10" in query) { return query.worldsaidcrashcourse01_path10 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path11(query) {
    if("worldsaidcrashcourse01_path11" in query) { return query.worldsaidcrashcourse01_path11 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path12(query) {
    if("worldsaidcrashcourse01_path12" in query) { return query.worldsaidcrashcourse01_path12 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path13(query) {
    if("worldsaidcrashcourse01_path13" in query) { return query.worldsaidcrashcourse01_path13 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path14(query) {
    if("worldsaidcrashcourse01_path14" in query) { return query.worldsaidcrashcourse01_path14 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path19(query) {
    if("worldsaidcrashcourse01_path19" in query) { return query.worldsaidcrashcourse01_path19 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path18(query) {
    if("worldsaidcrashcourse01_path18" in query) { return query.worldsaidcrashcourse01_path18 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path17(query) {
    if("worldsaidcrashcourse01_path17" in query) { return query.worldsaidcrashcourse01_path17 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path21(query) {
    if("worldsaidcrashcourse01_path21" in query) { return query.worldsaidcrashcourse01_path21 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path20(query) {
    if("worldsaidcrashcourse01_path20" in query) { return query.worldsaidcrashcourse01_path20 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path24(query) {
    if("worldsaidcrashcourse01_path24" in query) { return query.worldsaidcrashcourse01_path24 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse01_path25(query) {
    if("worldsaidcrashcourse01_path25" in query) { return query.worldsaidcrashcourse01_path25 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path01(query) {
    if("worldsaidcrashcourse02_path01" in query) { return query.worldsaidcrashcourse02_path01 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path02(query) {
    if("worldsaidcrashcourse02_path02" in query) { return query.worldsaidcrashcourse02_path02 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path04(query) {
    if("worldsaidcrashcourse02_path04" in query) { return query.worldsaidcrashcourse02_path04 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path05(query) {
    if("worldsaidcrashcourse02_path05" in query) { return query.worldsaidcrashcourse02_path05 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path06(query) {
    if("worldsaidcrashcourse02_path06" in query) { return query.worldsaidcrashcourse02_path06 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path07(query) {
    if("worldsaidcrashcourse02_path07" in query) { return query.worldsaidcrashcourse02_path07 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path09(query) {
    if("worldsaidcrashcourse02_path09" in query) { return query.worldsaidcrashcourse02_path09 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path10(query) {
    if("worldsaidcrashcourse02_path10" in query) { return query.worldsaidcrashcourse02_path10 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path11(query) {
    if("worldsaidcrashcourse02_path11" in query) { return query.worldsaidcrashcourse02_path11 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path12(query) {
    if("worldsaidcrashcourse02_path12" in query) { return query.worldsaidcrashcourse02_path12 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path08(query) {
    if("worldsaidcrashcourse02_path08" in query) { return query.worldsaidcrashcourse02_path08 != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_intro(query) {
    if("worldsaidcrashcourse02_intro" in query) { return query.worldsaidcrashcourse02_intro != 1; } 
    else return true;
}
function IsNotSaidcrashcourse02_path14(query) {
    if("worldsaidcrashcourse02_path14" in query) { return query.worldsaidcrashcourse02_path14 != 1; } 
    else return true;
}
function IsSaidFarm05_path08(query) {
    if("worldsaidfarm05_path08" in query) { return query.worldsaidfarm05_path08 > 0; } 
    else return false;
}
function IsSaidFarm05_path10(query) {
    if("worldsaidfarm05_path10" in query) { return query.worldsaidfarm05_path10 > 0; } 
    else return false;
}
function IsNotSaidcrashcoursebirds(query) {
    if("worldsaidcrashcoursebirds" in query) { return query.worldsaidcrashcoursebirds != 1; } 
    else return true;
}
function IsNotSaidcrashcoursealley(query) {
    if("worldsaidcrashcoursealley" in query) { return query.worldsaidcrashcoursealley != 1; } 
    else return true;
}
function IsSmalltown01_path05(query) {
    if("subject" in query) { return query.subject == "smalltown01_path05"; } 
    else return false;
}
function IsSmalltown01_path06(query) {
    if("subject" in query) { return query.subject == "smalltown01_path06"; } 
    else return false;
}
function IsSmalltown01_path07(query) {
    if("subject" in query) { return query.subject == "smalltown01_path07"; } 
    else return false;
}
function IsSmalltown01_path08(query) {
    if("subject" in query) { return query.subject == "smalltown01_path08"; } 
    else return false;
}
function Issmalltown02_path01(query) {
    if("subject" in query) { return query.subject == "smalltown02_path01"; } 
    else return false;
}
function Issmalltown02_path02(query) {
    if("subject" in query) { return query.subject == "smalltown02_path02"; } 
    else return false;
}
function Issmalltown02_path03(query) {
    if("subject" in query) { return query.subject == "smalltown02_path03"; } 
    else return false;
}
function Issmalltown02_path04(query) {
    if("subject" in query) { return query.subject == "smalltown02_path04"; } 
    else return false;
}
function Issmalltown02_path05(query) {
    if("subject" in query) { return query.subject == "smalltown02_path05"; } 
    else return false;
}
function Issmalltown02_path06(query) {
    if("subject" in query) { return query.subject == "smalltown02_path06"; } 
    else return false;
}
function Issmalltown02_path07(query) {
    if("subject" in query) { return query.subject == "smalltown02_path07"; } 
    else return false;
}
function Issmalltown02_path08(query) {
    if("subject" in query) { return query.subject == "smalltown02_path08"; } 
    else return false;
}
function IsSmalltown03_path01(query) {
    if("subject" in query) { return query.subject == "smalltown03_path01"; } 
    else return false;
}
function IsSmalltown03_path02(query) {
    if("subject" in query) { return query.subject == "smalltown03_path02"; } 
    else return false;
}
function IsSmalltown03_path03(query) {
    if("subject" in query) { return query.subject == "smalltown03_path03"; } 
    else return false;
}
function IsSmalltown03_path04(query) {
    if("subject" in query) { return query.subject == "smalltown03_path04"; } 
    else return false;
}
function IsSmalltown03_path05(query) {
    if("subject" in query) { return query.subject == "smalltown03_path05"; } 
    else return false;
}
function IsSmalltown03_path06(query) {
    if("subject" in query) { return query.subject == "smalltown03_path06"; } 
    else return false;
}
function IsSmalltown03_path07(query) {
    if("subject" in query) { return query.subject == "smalltown03_path07"; } 
    else return false;
}
function IsSmalltown03_path08(query) {
    if("subject" in query) { return query.subject == "smalltown03_path08"; } 
    else return false;
}
function IsSmalltown03_path09(query) {
    if("subject" in query) { return query.subject == "smalltown03_path09"; } 
    else return false;
}
function IsSmalltown03_path10(query) {
    if("subject" in query) { return query.subject == "smalltown03_path10"; } 
    else return false;
}
function IsSmalltown03_path11(query) {
    if("subject" in query) { return query.subject == "smalltown03_path11"; } 
    else return false;
}
function IsSmalltown03_path12(query) {
    if("subject" in query) { return query.subject == "smalltown03_path12"; } 
    else return false;
}
function IsSmalltown03_path13(query) {
    if("subject" in query) { return query.subject == "smalltown03_path13"; } 
    else return false;
}
function IsSmalltown04_path01(query) {
    if("subject" in query) { return query.subject == "smalltown04_path01"; } 
    else return false;
}
function IsSmalltown04_path02(query) {
    if("subject" in query) { return query.subject == "smalltown04_path02"; } 
    else return false;
}
function IsSmalltown04_path03(query) {
    if("subject" in query) { return query.subject == "smalltown04_path03"; } 
    else return false;
}
function IsSmalltown04_path04(query) {
    if("subject" in query) { return query.subject == "smalltown04_path04"; } 
    else return false;
}
function IsSmalltown04_path05(query) {
    if("subject" in query) { return query.subject == "smalltown04_path05"; } 
    else return false;
}
function IsSmalltown04_path06(query) {
    if("subject" in query) { return query.subject == "smalltown04_path06"; } 
    else return false;
}
function IsSmalltown04_path07(query) {
    if("subject" in query) { return query.subject == "smalltown04_path07"; } 
    else return false;
}
function IsSmalltown04_path08(query) {
    if("subject" in query) { return query.subject == "smalltown04_path08"; } 
    else return false;
}
function IsSmalltown04_path09(query) {
    if("subject" in query) { return query.subject == "smalltown04_path09"; } 
    else return false;
}
function IsSmalltown04_path10(query) {
    if("subject" in query) { return query.subject == "smalltown04_path10"; } 
    else return false;
}
function IsSmalltown05_path01(query) {
    if("subject" in query) { return query.subject == "smalltown05_path01"; } 
    else return false;
}
function IsSmalltown05_path02(query) {
    if("subject" in query) { return query.subject == "smalltown05_path02"; } 
    else return false;
}
function IsSmalltown05_path03(query) {
    if("subject" in query) { return query.subject == "smalltown05_path03"; } 
    else return false;
}
function IsSmalltown05_path04(query) {
    if("subject" in query) { return query.subject == "smalltown05_path04"; } 
    else return false;
}
function IsSmalltown05_path05(query) {
    if("subject" in query) { return query.subject == "smalltown05_path05"; } 
    else return false;
}
function IsSmalltown05_path06(query) {
    if("subject" in query) { return query.subject == "smalltown05_path06"; } 
    else return false;
}
function IsFarm01_path01(query) {
    if("subject" in query) { return query.subject == "farm01_path01"; } 
    else return false;
}
function IsFarm01_path02(query) {
    if("subject" in query) { return query.subject == "farm01_path02"; } 
    else return false;
}
function IsFarm01_path03(query) {
    if("subject" in query) { return query.subject == "farm01_path03"; } 
    else return false;
}
function IsFarm01_path04(query) {
    if("subject" in query) { return query.subject == "farm01_path04"; } 
    else return false;
}
function IsFarm01_path05(query) {
    if("subject" in query) { return query.subject == "farm01_path05"; } 
    else return false;
}
function IsFarm01_path06(query) {
    if("subject" in query) { return query.subject == "farm01_path06"; } 
    else return false;
}
function IsFarm01_path07(query) {
    if("subject" in query) { return query.subject == "farm01_path07"; } 
    else return false;
}
function IsFarm01_path08(query) {
    if("subject" in query) { return query.subject == "farm01_path08"; } 
    else return false;
}
function IsFarm02_path01(query) {
    if("subject" in query) { return query.subject == "farm02_path01"; } 
    else return false;
}
function IsFarm02_path02(query) {
    if("subject" in query) { return query.subject == "farm02_path02"; } 
    else return false;
}
function IsFarm02_path03(query) {
    if("subject" in query) { return query.subject == "farm02_path03"; } 
    else return false;
}
function IsFarm02_path04(query) {
    if("subject" in query) { return query.subject == "farm02_path04"; } 
    else return false;
}
function IsFarm02_path05(query) {
    if("subject" in query) { return query.subject == "farm02_path05"; } 
    else return false;
}
function IsFarm02_path06(query) {
    if("subject" in query) { return query.subject == "farm02_path06"; } 
    else return false;
}
function IsFarm02_path07(query) {
    if("subject" in query) { return query.subject == "farm02_path07"; } 
    else return false;
}
function IsFarm02_path08(query) {
    if("subject" in query) { return query.subject == "farm02_path08"; } 
    else return false;
}
function IsFarm02_path09(query) {
    if("subject" in query) { return query.subject == "farm02_path09"; } 
    else return false;
}
function IsFarm03_path01(query) {
    if("subject" in query) { return query.subject == "farm03_path01"; } 
    else return false;
}
function IsFarm03_path02(query) {
    if("subject" in query) { return query.subject == "farm03_path02"; } 
    else return false;
}
function IsFarm03_path03(query) {
    if("subject" in query) { return query.subject == "farm03_path03"; } 
    else return false;
}
function IsFarm03_path04(query) {
    if("subject" in query) { return query.subject == "farm03_path04"; } 
    else return false;
}
function IsFarm03_path05(query) {
    if("subject" in query) { return query.subject == "farm03_path05"; } 
    else return false;
}
function IsFarm03_path06(query) {
    if("subject" in query) { return query.subject == "farm03_path06"; } 
    else return false;
}
function IsFarm03_path07(query) {
    if("subject" in query) { return query.subject == "farm03_path07"; } 
    else return false;
}
function IsFarm04_path01(query) {
    if("subject" in query) { return query.subject == "farm04_path01"; } 
    else return false;
}
function IsFarm04_path02(query) {
    if("subject" in query) { return query.subject == "farm04_path02"; } 
    else return false;
}
function IsFarm04_path03(query) {
    if("subject" in query) { return query.subject == "farm04_path03"; } 
    else return false;
}
function IsFarm04_path04(query) {
    if("subject" in query) { return query.subject == "farm04_path04"; } 
    else return false;
}
function IsFarm04_path05(query) {
    if("subject" in query) { return query.subject == "farm04_path05"; } 
    else return false;
}
function IsFarm04_path06(query) {
    if("subject" in query) { return query.subject == "farm04_path06"; } 
    else return false;
}
function IsFarm04_path07(query) {
    if("subject" in query) { return query.subject == "farm04_path07"; } 
    else return false;
}
function IsFarm04_path08(query) {
    if("subject" in query) { return query.subject == "farm04_path08"; } 
    else return false;
}
function IsFarm04_path09(query) {
    if("subject" in query) { return query.subject == "farm04_path09"; } 
    else return false;
}
function IsFarm05_path01(query) {
    if("subject" in query) { return query.subject == "farm05_path01"; } 
    else return false;
}
function IsFarm05_path02(query) {
    if("subject" in query) { return query.subject == "farm05_path02"; } 
    else return false;
}
function IsFarm05_path03(query) {
    if("subject" in query) { return query.subject == "farm05_path03"; } 
    else return false;
}
function IsFarm05_path04(query) {
    if("subject" in query) { return query.subject == "farm05_path04"; } 
    else return false;
}
function IsFarm05_path05(query) {
    if("subject" in query) { return query.subject == "farm05_path05"; } 
    else return false;
}
function IsFarm03_path08(query) {
    if("subject" in query) { return query.subject == "farm03_path08"; } 
    else return false;
}
function IsSmalltown02_path09(query) {
    if("subject" in query) { return query.subject == "smalltown02_path09"; } 
    else return false;
}
function IsSmalltown03_path14(query) {
    if("subject" in query) { return query.subject == "smalltown03_path14"; } 
    else return false;
}
function IsSmalltown04_path11(query) {
    if("subject" in query) { return query.subject == "smalltown04_path11"; } 
    else return false;
}
function IsFarm04_path10(query) {
    if("subject" in query) { return query.subject == "farm04_path10"; } 
    else return false;
}
function IsFarm01_path09(query) {
    if("subject" in query) { return query.subject == "farm01_path09"; } 
    else return false;
}
function IsFarm02_path10(query) {
    if("subject" in query) { return query.subject == "farm02_path10"; } 
    else return false;
}
function IsFarm03_path09(query) {
    if("subject" in query) { return query.subject == "farm03_path09"; } 
    else return false;
}
function IsSmalltown01_path09(query) {
    if("subject" in query) { return query.subject == "smalltown01_path09"; } 
    else return false;
}
function IsSmalltown01_path10(query) {
    if("subject" in query) { return query.subject == "smalltown01_path10"; } 
    else return false;
}
function IsFarm05_path06(query) {
    if("subject" in query) { return query.subject == "farm05_path06"; } 
    else return false;
}
function IsFarm05_path07(query) {
    if("subject" in query) { return query.subject == "farm05_path07"; } 
    else return false;
}
function IsFarm05_path08(query) {
    if("subject" in query) { return query.subject == "farm05_path08"; } 
    else return false;
}
function IsFarm05_path09(query) {
    if("subject" in query) { return query.subject == "farm05_path09"; } 
    else return false;
}
function IsFarm03_path10(query) {
    if("subject" in query) { return query.subject == "farm03_path10"; } 
    else return false;
}
function Iscrashcourse01_path01(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path01"; } 
    else return false;
}
function Iscrashcourse01_path02(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path02"; } 
    else return false;
}
function Iscrashcourse01_path03(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path03"; } 
    else return false;
}
function Iscrashcourse01_path15(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path15"; } 
    else return false;
}
function Iscrashcourse01_path16(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path16"; } 
    else return false;
}
function Iscrashcourse01_path04(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path04"; } 
    else return false;
}
function Iscrashcourse01_path05(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path05"; } 
    else return false;
}
function Iscrashcourse01_path06(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path06"; } 
    else return false;
}
function Iscrashcourse01_path07(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path07"; } 
    else return false;
}
function Iscrashcourse01_path08(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path08"; } 
    else return false;
}
function Iscrashcourse01_path09(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path09"; } 
    else return false;
}
function Iscrashcourse01_path10(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path10"; } 
    else return false;
}
function Iscrashcourse01_path11(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path11"; } 
    else return false;
}
function Iscrashcourse01_path12(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path12"; } 
    else return false;
}
function Iscrashcourse01_path13(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path13"; } 
    else return false;
}
function Iscrashcourse01_path14(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path14"; } 
    else return false;
}
function Iscrashcourse01_path19(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path19"; } 
    else return false;
}
function Iscrashcourse01_path18(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path18"; } 
    else return false;
}
function Iscrashcourse01_path17(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path17"; } 
    else return false;
}
function Iscrashcourse01_path21(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path21"; } 
    else return false;
}
function Iscrashcourse01_path20(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path20"; } 
    else return false;
}
function Iscrashcourse01_path24(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path24"; } 
    else return false;
}
function Iscrashcourse01_path25(query) {
    if("subject" in query) { return query.subject == "crashcourse01_path25"; } 
    else return false;
}
function Iscrashcourse02_path01(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path01"; } 
    else return false;
}
function Iscrashcourse02_path02(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path02"; } 
    else return false;
}
function Iscrashcourse02_path04(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path04"; } 
    else return false;
}
function Iscrashcourse02_path05(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path05"; } 
    else return false;
}
function Iscrashcourse02_path06(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path06"; } 
    else return false;
}
function Iscrashcourse02_path07(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path07"; } 
    else return false;
}
function Iscrashcourse02_path09(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path09"; } 
    else return false;
}
function Iscrashcourse02_path10(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path10"; } 
    else return false;
}
function Iscrashcourse02_path11(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path11"; } 
    else return false;
}
function Iscrashcourse02_path12(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path12"; } 
    else return false;
}
function Iscrashcourse02_path08(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path08"; } 
    else return false;
}
function Iscrashcourse02_intro(query) {
    if("subject" in query) { return query.subject == "crashcourse02_intro"; } 
    else return false;
}
function Iscrashcourse02_starta(query) {
    if("subject" in query) { return query.subject == "crashcourse02_starta"; } 
    else return false;
}
function Iscrashcourse02_startb(query) {
    if("subject" in query) { return query.subject == "crashcourse02_startb"; } 
    else return false;
}
function Iscrashcourse02_startc(query) {
    if("subject" in query) { return query.subject == "crashcourse02_startc"; } 
    else return false;
}
function Iscrashcourse02_startd(query) {
    if("subject" in query) { return query.subject == "crashcourse02_startd"; } 
    else return false;
}
function Iscrashcourse02_path14(query) {
    if("subject" in query) { return query.subject == "crashcourse02_path14"; } 
    else return false;
}
function ConceptSetSurvivalMode(query) {
    if("concept" in query) { return query.concept == "setsurvivalmode"; } 
    else return false;
}
function IsSurvivalMode(query) {
    if("worldsurvivalmode" in query) { return query.worldsurvivalmode == 1; } 
    else return false;
}
function NotSurvivalMode(query) {
    if("worldsurvivalmode" in query) { return query.worldsurvivalmode < 1; } 
    else return true;
}
function ConceptIntroCrash(query) {
    if("concept" in query) { return query.concept == "introcrashcourse"; } 
    else return false;
}
function IsCrashCourse(query) {
    if("map" in query) { return query.map == "c9m1_alleys"; } 
    else return false;
}
function NotHowitzerFired(query) {
    if("worldhowitzerwasfired" in query) { return query.worldhowitzerwasfired < 1; } 
    else return true;
}
function IsHowitzerFired(query) {
    if("worldhowitzerwasfired" in query) { return query.worldhowitzerwasfired == 1; } 
    else return false;
}
function NotHowitzerSeen(query) {
    if("worldhowitzerseen" in query) { return query.worldhowitzerseen < 1; } 
    else return true;
}
function IsHowitzerSeen(query) {
    if("worldhowitzerseen" in query) { return query.worldhowitzerseen == 1; } 
    else return false;
}
function IsHowitzerNag(query) {
    if("worldnaghowitzer" in query) { return query.worldnaghowitzer < 1; } 
    else return true;
}
function NotHowitzerNag(query) {
    if("worldnaghowitzer" in query) { return query.worldnaghowitzer == 1; } 
    else return false;
}
function NotCrash01ThroughBridge(query) {
    if("worldcrash01throughbridge" in query) { return query.worldcrash01throughbridge < 1; } 
    else return true;
}
function NotSaidCrash01SafeHouse(query) {
    if("worldsaidcrash01safehouse" in query) { return query.worldsaidcrash01safehouse < 1; } 
    else return true;
}
function NotSaidMegaMobPilot(query) {
    if("worldsaidmegamobpilot" in query) { return query.worldsaidmegamobpilot < 1; } 
    else return true;
}
function IsCrash02IntroReady(query) {
    if("worldcrash02introready" in query) { return query.worldcrash02introready == 1; } 
    else return false;
}
function NotCrash02IntroReady(query) {
    if("worldcrash02introready" in query) { return query.worldcrash02introready < 1; } 
    else return true;
}
function NotCrash02IntroPaused(query) {
    if("worldcrash02intropaused" in query) { return query.worldcrash02intropaused < 1; } 
    else return true;
}
function ConceptCrashFinaleGeneratorPress(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorpress"; } 
    else return false;
}
function ConceptCrashFinaleGeneratorUnPress(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorunpress"; } 
    else return false;
}
function ConceptCrashFinaleGeneratorOn(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratoron"; } 
    else return false;
}
function ConceptCrashFinaleGeneratorBreak(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorbreak"; } 
    else return false;
}
function ConceptCrashFinaleTruckReady(query) {
    if("concept" in query) { return query.concept == "crashfinaletruckready"; } 
    else return false;
}
function ConceptCrashFinaleTruckReadySpk(query) {
    if("concept" in query) { return query.concept == "crashfinaletruckreadyspk"; } 
    else return false;
}
function NotCrashFinaleSaidGeneratorBroken(query) {
    if("worldcrashfinalesaidgeneratorbroken" in query) { return query.worldcrashfinalesaidgeneratorbroken < 1; } 
    else return true;
}
function IsCrashFinaleGeneratorBroken(query) {
    if("worldcrashfinalegeneratorbroken" in query) { return query.worldcrashfinalegeneratorbroken == 1; } 
    else return false;
}
function ConceptCrashFinaleGenerator2Press(query) {
    if("concept" in query) { return query.concept == "crashfinalegenerator2press"; } 
    else return false;
}
function ConceptCrashFinaleGenerator2UnPress(query) {
    if("concept" in query) { return query.concept == "crashfinalegenerator2unpress"; } 
    else return false;
}
function ConceptCrashFinaleGenerator2On(query) {
    if("concept" in query) { return query.concept == "crashfinalegenerator2on"; } 
    else return false;
}
function NotCrash02FinaleStarted(query) {
    if("worldcrash02finalestarted" in query) { return query.worldcrash02finalestarted < 1; } 
    else return true;
}
function IsCrash02FinaleStarted(query) {
    if("worldcrash02finalestarted" in query) { return query.worldcrash02finalestarted == 1; } 
    else return false;
}
function IsCrashFinalePressingManager(query) {
    if("worldcrashfinalepressingmanager" in query) { return query.worldcrashfinalepressingmanager == 1; } 
    else return false;
}
function IsCrashFinalePressingBiker(query) {
    if("worldcrashfinalepressingbiker" in query) { return query.worldcrashfinalepressingbiker == 1; } 
    else return false;
}
function IsCrashFinalePressingTeenGirl(query) {
    if("worldcrashfinalepressingteengirl" in query) { return query.worldcrashfinalepressingteengirl == 1; } 
    else return false;
}
function IsCrashFinalePressingNamVet(query) {
    if("worldcrashfinalepressingnamvet" in query) { return query.worldcrashfinalepressingnamvet == 1; } 
    else return false;
}
function ConceptCrashFinaleGeneratorUnPressSpeak(query) {
    if("concept" in query) { return query.concept == "crashfinalegeneratorunpressspeak"; } 
    else return false;
}
function IsCrashFinaleTruckReady(query) {
    if("worldcrashfinaletruckready" in query) { return query.worldcrashfinaletruckready == 1; } 
    else return false;
}
function NotCrashFinaleTruckNagPaused(query) {
    if("worldcrashfinaletrucknagpaused" in query) { return query.worldcrashfinaletrucknagpaused < 1; } 
    else return true;
}
function NotCrashFinaleNagPaused(query) {
    if("worldcrashfinalenagpaused" in query) { return query.worldcrashfinalenagpaused < 1; } 
    else return true;
}
function NotNagCrashManager(query) {
    if("worldnagcrashmanager" in query) { return query.worldnagcrashmanager < 1; } 
    else return true;
}
function NotNagCrashTeenGirl(query) {
    if("worldnagcrashteengirl" in query) { return query.worldnagcrashteengirl < 1; } 
    else return true;
}
function NotNagCrashBiker(query) {
    if("worldnagcrashbiker" in query) { return query.worldnagcrashbiker < 1; } 
    else return true;
}
function NotNagCrashNamVet(query) {
    if("worldnagcrashnamvet" in query) { return query.worldnagcrashnamvet < 1; } 
    else return true;
}
function Conceptcrashcourse01_path01zresp(query) {
    if("concept" in query) { return query.concept == "crashcourse01_path01zresp"; } 
    else return false;
}
function ConceptDontBeAnAss(query) {
    if("concept" in query) { return query.concept == "dontbeanass"; } 
    else return false;
}
function ConceptRiversideIsDead(query) {
    if("concept" in query) { return query.concept == "riversideisdead"; } 
    else return false;
}
function ConceptRiversideIsDeadA(query) {
    if("concept" in query) { return query.concept == "riversideisdeada"; } 
    else return false;
}
function ConceptRiversideIsDeadB(query) {
    if("concept" in query) { return query.concept == "riversideisdeadb"; } 
    else return false;
}
function ConceptRiversideIsDeadSpecial1A(query) {
    if("concept" in query) { return query.concept == "riversideisdeadspecial1a"; } 
    else return false;
}
function ConceptRiversideIsDeadSpecial1B(query) {
    if("concept" in query) { return query.concept == "riversideisdeadspecial1b"; } 
    else return false;
}
function ConceptRiversideIsDeadSpecial1C(query) {
    if("concept" in query) { return query.concept == "riversideisdeadspecial1c"; } 
    else return false;
}
function ConceptRiversideIsDeadPlan(query) {
    if("concept" in query) { return query.concept == "riversideisdeadplan"; } 
    else return false;
}
function Conceptsmalltown02_path01a(query) {
    if("concept" in query) { return query.concept == "smalltown02_path01a"; } 
    else return false;
}
function Conceptsmalltown02_path01b(query) {
    if("concept" in query) { return query.concept == "smalltown02_path01b"; } 
    else return false;
}
function Conceptsmalltown02_path01c(query) {
    if("concept" in query) { return query.concept == "smalltown02_path01c"; } 
    else return false;
}
function Conceptsmalltown02_path07a(query) {
    if("concept" in query) { return query.concept == "smalltown02_path07a"; } 
    else return false;
}
function Conceptsmalltown02_path08a(query) {
    if("concept" in query) { return query.concept == "smalltown02_path08a"; } 
    else return false;
}
function Conceptsmalltown04_path07a(query) {
    if("concept" in query) { return query.concept == "smalltown04_path07a"; } 
    else return false;
}
function Conceptsmalltown04_path05a(query) {
    if("concept" in query) { return query.concept == "smalltown04_path05a"; } 
    else return false;
}
function Conceptsmalltown05_path03a(query) {
    if("concept" in query) { return query.concept == "smalltown05_path03a"; } 
    else return false;
}
function ConceptFarm01_path03a(query) {
    if("concept" in query) { return query.concept == "farm01_path03a"; } 
    else return false;
}
function ConceptFarm02_path01a(query) {
    if("concept" in query) { return query.concept == "farm02_path01a"; } 
    else return false;
}
function ConceptFarm02_path02a(query) {
    if("concept" in query) { return query.concept == "farm02_path02a"; } 
    else return false;
}
function ConceptFarm02_path02b(query) {
    if("concept" in query) { return query.concept == "farm02_path02b"; } 
    else return false;
}
function ConceptFarm03_path01a(query) {
    if("concept" in query) { return query.concept == "farm03_path01a"; } 
    else return false;
}
function ConceptFarm05_path07b(query) {
    if("concept" in query) { return query.concept == "farm05_path07b"; } 
    else return false;
}
function ConceptFarmVampiresb(query) {
    if("concept" in query) { return query.concept == "farmvampiresb"; } 
    else return false;
}
function ConceptFarmVampiresC(query) {
    if("concept" in query) { return query.concept == "farmvampiresc"; } 
    else return false;
}
function ConceptFarm05_path09C(query) {
    if("concept" in query) { return query.concept == "farm05_path09c"; } 
    else return false;
}
function ConceptNeedsHelpResponseLouisB2(query) {
    if("concept" in query) { return query.concept == "needshelpresponselouisb2"; } 
    else return false;
}
function ConceptNeedsHelpResponseLouisC2(query) {
    if("concept" in query) { return query.concept == "needshelpresponselouisc2"; } 
    else return false;
}
function IsWithOne(query) {
    if("numberofteamalive" in query) { return query.numberofteamalive == 2; } 
    else return false;
}
function IsAllAlive(query) {
    if("numberofteamalive" in query) { return query.numberofteamalive == 4; } 
    else return false;
}
function ConceptBridgeReadyToCross(query) {
    if("concept" in query) { return query.concept == "bridgereadytocross"; } 
    else return false;
}
function NotSaidFarm01_TracksBelow(query) {
    if("worldsaidfarm01_tracksbelow" in query) { return query.worldsaidfarm01_tracksbelow < 1; } 
    else return true;
}
function NotSaidFarm02_TracksBelow(query) {
    if("worldsaidfarm02_tracksbelow" in query) { return query.worldsaidfarm02_tracksbelow < 1; } 
    else return true;
}
function RemarkableReadyToGo(query) {
    if("worldremarkablereadytogo" in query) { return query.worldremarkablereadytogo == 1; } 
    else return false;
}
function NotRemarkableBlocked(query) {
    if("worldremarkableblocker" in query) { return query.worldremarkableblocker < 1; } 
    else return true;
}
// terror_player_addon_dlc3.txt ===================================================================================================================
function ConceptIntroSacrifice(query) {
    if("concept" in query) { return query.concept == "intro07train"; } 
    else return false;
}
function ConceptC7M3GeneratorSpeak(query) {
    if("concept" in query) { return query.concept == "c7m3generatorspeak"; } 
    else return false;
}
function ConceptC7M2CrowsFly(query) {
    if("concept" in query) { return query.concept == "c7m2crowsfly"; } 
    else return false;
}
function ConceptC7M2CrowsFlySpeak(query) {
    if("concept" in query) { return query.concept == "c7m2crowsflyspeak"; } 
    else return false;
}
function ConceptC7M3BridgeReady(query) {
    if("concept" in query) { return query.concept == "c7m3bridgeready"; } 
    else return false;
}
function ConceptC7M3BridgeButton(query) {
    if("concept" in query) { return query.concept == "c7m3bridgebutton"; } 
    else return false;
}
function ConceptC7M3BridgeButtonSpeak(query) {
    if("concept" in query) { return query.concept == "c7m3bridgebuttonspeak"; } 
    else return false;
}
function ConceptC7M3BridgeLeap(query) {
    if("concept" in query) { return query.concept == "c7m3bridgeleap"; } 
    else return false;
}
function ConceptC7M3BridgeLeapSpeak(query) {
    if("concept" in query) { return query.concept == "c7m3bridgeleapspeak"; } 
    else return false;
}
function IsFirstGenerator(query) {
    if("worldc7m3generatorcount" in query) { return query.worldc7m3generatorcount < 1; } 
    else return true;
}
function IsSecondGenerator(query) {
    if("worldc7m3generatorcount" in query) { return query.worldc7m3generatorcount == 1; } 
    else return false;
}
function IsThirdGenerator(query) {
    if("worldc7m3generatorcount" in query) { return query.worldc7m3generatorcount == 2; } 
    else return false;
}
function IsLastGenerator(query) {
    if("worldc7m3generatorcount" in query) { return query.worldc7m3generatorcount == 3; } 
    else return false;
}
function ConceptC7M3FinalSpeakManager(query) {
    if("concept" in query) { return query.concept == "c7m3finalspeakmanager"; } 
    else return false;
}
function ConceptC7M3FinalSpeakTeenGirl(query) {
    if("concept" in query) { return query.concept == "c7m3finalspeakteengirl"; } 
    else return false;
}
function ConceptC7M3FinalSpeakNamVet(query) {
    if("concept" in query) { return query.concept == "c7m3finalspeaknamvet"; } 
    else return false;
}
function ConceptC7M3FinalSpeakBiker(query) {
    if("concept" in query) { return query.concept == "c7m3finalspeakbiker"; } 
    else return false;
}
function NotSacrificedBiker(query) {
    if("worldsacrificed" in query) { return query.worldsacrificed != "biker"; } 
    else return true;
}
function NotSacrificedManager(query) {
    if("worldsacrificed" in query) { return query.worldsacrificed != "manager"; } 
    else return true;
}
function NotSacrificedNamVet(query) {
    if("worldsacrificed" in query) { return query.worldsacrificed != "namvet"; } 
    else return true;
}
function NotSacrificedTeenGirl(query) {
    if("worldsacrificed" in query) { return query.worldsacrificed != "teengirl"; } 
    else return true;
}
function SacrificedBiker(query) {
    if("worldsacrificed" in query) { return query.worldsacrificed == "biker"; } 
    else return false;
}
function SacrificedManager(query) {
    if("worldsacrificed" in query) { return query.worldsacrificed == "manager"; } 
    else return false;
}
function SacrificedNamVet(query) {
    if("worldsacrificed" in query) { return query.worldsacrificed == "namvet"; } 
    else return false;
}
function SacrificedTeenGirl(query) {
    if("worldsacrificed" in query) { return query.worldsacrificed == "teengirl"; } 
    else return false;
}
function ConceptC7M3WaveOver(query) {
    if("concept" in query) { return query.concept == "c7m3waveover"; } 
    else return false;
}
function ConceptC7M3WaveOverSpeak(query) {
    if("concept" in query) { return query.concept == "c7m3waveoverspeak"; } 
    else return false;
}
function conceptC7M3BridgeBreaks(query) {
    if("concept" in query) { return query.concept == "c7m3bridgebreaks"; } 
    else return false;
}
function ConceptC7M1OpenTankDoor(query) {
    if("concept" in query) { return query.concept == "c7m1opentankdoor"; } 
    else return false;
}
function ConceptC7M1OpenTankDoorSpeak(query) {
    if("concept" in query) { return query.concept == "c7m1opentankdoorspeak"; } 
    else return false;
}
// terror_player_dlc1.txt ===================================================================================================================
function IsNotVersus(query) {
    if("gamemode" in query) { return query.gamemode != "versus"; } 
    else return true;
}
function IsVersus(query) {
    if("gamemode" in query) { return query.gamemode == "versus"; } 
    else return false;
}
function ConceptintroC6M1(query) {
    if("concept" in query) { return query.concept == "introc6m1"; } 
    else return false;
}
function IsNotTalkBiker(query) {
    if("talkbiker" in query) { return query.talkbiker == 1; } 
    else return false;
}
function IsTalkBiker(query) {
    if("talkbiker" in query) { return query.talkbiker != 1; } 
    else return true;
}
function IsNotTalkNamVet(query) {
    if("talknamvet" in query) { return query.talknamvet == 1; } 
    else return false;
}
function IsTalkNamVet(query) {
    if("talknamvet" in query) { return query.talknamvet != 1; } 
    else return true;
}
function IsNotTalkTeenGirl(query) {
    if("talkteengirl" in query) { return query.talkteengirl == 1; } 
    else return false;
}
function IsTalkTeenGirl(query) {
    if("talkteengirl" in query) { return query.talkteengirl != 1; } 
    else return true;
}
function IsNotTalkManager(query) {
    if("talkmanager" in query) { return query.talkmanager == 1; } 
    else return false;
}
function IsTalkManager(query) {
    if("talkmanager" in query) { return query.talkmanager != 1; } 
    else return true;
}
function IsWorldTalkBiker(query) {
    if("worldtalkbiker" in query) { return query.worldtalkbiker != 1; } 
    else return true;
}
function IsWorldTalkNamVet(query) {
    if("worldtalknamvet" in query) { return query.worldtalknamvet != 1; } 
    else return true;
}
function IsWorldTalkManager(query) {
    if("worldtalkmanager" in query) { return query.worldtalkmanager != 1; } 
    else return true;
}
function IsWorldTalkTeenGirl(query) {
    if("worldtalkteengirl" in query) { return query.worldtalkteengirl != 1; } 
    else return true;
}
function IsTeenGirlAlive(query) {
    if("isteengirlalive" in query) { return query.isteengirlalive == 1; } 
    else return false;
}
function IsManagerAlive(query) {
    if("ismanageralive" in query) { return query.ismanageralive == 1; } 
    else return false;
}
function IsBikerAlive(query) {
    if("isbikeralive" in query) { return query.isbikeralive == 1; } 
    else return false;
}
function IsNamVetAlive(query) {
    if("isnamvetalive" in query) { return query.isnamvetalive == 1; } 
    else return false;
}
function IsL4D1Alive(query) { return ( IsTeenGirlAlive(query) || IsManagerAlive(query) || IsBikerAlive(query) || IsNamVetAlive(query) ); }
function NotTeenGirlAlive(query) {
    if("isteengirlalive" in query) { return query.isteengirlalive == 0; } 
    else return false;
}
function NotManagerAlive(query) {
    if("ismanageralive" in query) { return query.ismanageralive == 0; } 
    else return false;
}
function NotBikerAlive(query) {
    if("isbikeralive" in query) { return query.isbikeralive == 0; } 
    else return false;
}
function NotNamVetAlive(query) {
    if("isnamvetalive" in query) { return query.isnamvetalive == 0; } 
    else return false;
}
function IsNamVetNear200(query) {
    if("disttonamvet" in query) { return query.disttonamvet < 200; } 
    else return true;
}
function IsNamVetNear400(query) {
    if("disttonamvet" in query) { return query.disttonamvet < 400; } 
    else return true;
}
function IsNamVetNear500(query) {
    if("disttonamvet" in query) { return query.disttonamvet < 500; } 
    else return true;
}
function IsNamVetNear800(query) {
    if("disttonamvet" in query) { return query.disttonamvet < 800; } 
    else return true;
}
function IsNamVetFar400(query) {
    if("disttonamvet" in query) { return query.disttonamvet >= 400; } 
    else return false;
}
function IsBikerNear125(query) {
    if("disttobiker" in query) { return query.disttobiker < 125; } 
    else return true;
}
function IsBikerNear200(query) {
    if("disttobiker" in query) { return query.disttobiker < 200; } 
    else return true;
}
function IsBikerNear400(query) {
    if("disttobiker" in query) { return query.disttobiker < 400; } 
    else return true;
}
function IsBikerNear500(query) {
    if("disttobiker" in query) { return query.disttobiker < 500; } 
    else return true;
}
function IsBikerNear800(query) {
    if("disttobiker" in query) { return query.disttobiker < 800; } 
    else return true;
}
function IsBikerFar400(query) {
    if("disttobiker" in query) { return query.disttobiker >= 400; } 
    else return false;
}
function IsTeenGirlNear200(query) {
    if("disttoteengirl" in query) { return query.disttoteengirl < 200; } 
    else return true;
}
function IsTeenGirlNear400(query) {
    if("disttoteengirl" in query) { return query.disttoteengirl < 400; } 
    else return true;
}
function IsTeenGirlNear500(query) {
    if("disttoteengirl" in query) { return query.disttoteengirl < 500; } 
    else return true;
}
function IsTeenGirlNear800(query) {
    if("disttoteengirl" in query) { return query.disttoteengirl < 800; } 
    else return true;
}
function IsTeenGirlFar400(query) {
    if("disttoteengirl" in query) { return query.disttoteengirl >= 400; } 
    else return false;
}
function IsManagerNear200(query) {
    if("disttomanager" in query) { return query.disttomanager < 200; } 
    else return true;
}
function IsManagerNear400(query) {
    if("disttomanager" in query) { return query.disttomanager < 400; } 
    else return true;
}
function IsManagerNear500(query) {
    if("disttomanager" in query) { return query.disttomanager < 500; } 
    else return true;
}
function IsManagerNear800(query) {
    if("disttomanager" in query) { return query.disttomanager < 800; } 
    else return true;
}
function IsManagerFar400(query) {
    if("disttomanager" in query) { return query.disttomanager >= 400; } 
    else return false;
}
function IsBikerFar1000(query) {
    if("disttobiker" in query) { return query.disttobiker > 600; } 
    else return false;
}
function IsTeenGirlFar1000(query) {
    if("disttoteengirl" in query) { return query.disttoteengirl > 600; } 
    else return false;
}
function IsManagerFar1000(query) {
    if("disttomanager" in query) { return query.disttomanager > 600; } 
    else return false;
}
function IsNamVetFar1000(query) {
    if("disttonamvet" in query) { return query.disttonamvet > 600; } 
    else return false;
}
function IsNamVet(query) {
    if("who" in query) { return query.who == "namvet"; } 
    else return false;
}
function IsBiker(query) {
    if("who" in query) { return query.who == "biker"; } 
    else return false;
}
function IsTeenGirl(query) {
    if("who" in query) { return query.who == "teengirl"; } 
    else return false;
}
function IsManager(query) {
    if("who" in query) { return query.who == "manager"; } 
    else return false;
}
function IsDeadNamVet(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "namvet"; } 
    else return false;
}
function IsDeadBiker(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "biker"; } 
    else return false;
}
function IsDeadTeenGirl(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "teengirl"; } 
    else return false;
}
function IsDeadManager(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "manager"; } 
    else return false;
}
function IsTeam4Francis(query) {
    if("name" in query) { return query.name == "silver_francis"; } 
    else return false;
}
function IsTeam4Bill(query) {
    if("name" in query) { return query.name == "silver_bill"; } 
    else return false;
}
function IsTeam4Louis(query) {
    if("name" in query) { return query.name == "silver_louis"; } 
    else return false;
}
function IsTeam4Zoey(query) {
    if("name" in query) { return query.name == "silver_zoey"; } 
    else return false;
}
function SubjectIsBiker(query) {
    if("subject" in query) { return query.subject == "biker"; } 
    else return false;
}
function SubjectIsNamVet(query) {
    if("subject" in query) { return query.subject == "namvet"; } 
    else return false;
}
function SubjectIsTeenGirl(query) {
    if("subject" in query) { return query.subject == "teengirl"; } 
    else return false;
}
function SubjectIsManager(query) {
    if("subject" in query) { return query.subject == "manager"; } 
    else return false;
}
function SubjectIsNotBiker(query) {
    if("subject" in query) { return query.subject != "biker"; } 
    else return true;
}
function SubjectIsNotNamVet(query) {
    if("subject" in query) { return query.subject != "namvet"; } 
    else return true;
}
function SubjectIsNotTeenGirl(query) {
    if("subject" in query) { return query.subject != "teengirl"; } 
    else return true;
}
function SubjectIsNotManager(query) {
    if("subject" in query) { return query.subject != "manager"; } 
    else return true;
}
function FromIsBiker(query) {
    if("from" in query) { return query.from == "biker"; } 
    else return false;
}
function FromIsNamVet(query) {
    if("from" in query) { return query.from == "namvet"; } 
    else return false;
}
function FromIsTeenGirl(query) {
    if("from" in query) { return query.from == "teengirl"; } 
    else return false;
}
function FromIsManager(query) {
    if("from" in query) { return query.from == "manager"; } 
    else return false;
}
function FromIsNotBiker(query) {
    if("from" in query) { return query.from != "biker"; } 
    else return true;
}
function FromIsNotNamVet(query) {
    if("from" in query) { return query.from != "namvet"; } 
    else return true;
}
function FromIsNotTeenGirl(query) {
    if("from" in query) { return query.from != "teengirl"; } 
    else return true;
}
function FromIsNotManager(query) {
    if("from" in query) { return query.from != "manager"; } 
    else return true;
}
function FromSet1(query) { return ( FromIsCoach(query) || FromIsAnOrator(query) ); }
function Iswitch_aggro_onManager(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "manager"; } 
    else return false;
}
function Iswitch_aggro_onNamVet(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "namvet"; } 
    else return false;
}
function Iswitch_aggro_onTeenGirl(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "teengirl"; } 
    else return false;
}
function Iswitch_aggro_onBiker(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "biker"; } 
    else return false;
}
function IsNotSaidBeenJockeyedManager(query) {
    if("worldsaidbeenjockeyedmanager" in query) { return query.worldsaidbeenjockeyedmanager != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedNamVet(query) {
    if("worldsaidbeenjockeyednamvet" in query) { return query.worldsaidbeenjockeyednamvet != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedTeenGirl(query) {
    if("worldsaidbeenjockeyedteengirl" in query) { return query.worldsaidbeenjockeyedteengirl != 1; } 
    else return true;
}
function IsNotSaidBeenJockeyedBiker(query) {
    if("worldsaidbeenjockeyedbiker" in query) { return query.worldsaidbeenjockeyedbiker != 1; } 
    else return true;
}
function ThePassing(query) {
    if("campaign" in query) { return query.campaign == "l4d2_6"; } 
    else return false;
}
function Isc6m1_riverbank(query) {
    if("map" in query) { return query.map == "c6m1_riverbank"; } 
    else return false;
}
function IsNotc6m1_riverbank(query) {
    if("map" in query) { return query.map != "c6m1_riverbank"; } 
    else return true;
}
function isc6m2_bedlam(query) {
    if("map" in query) { return query.map == "c6m2_bedlam"; } 
    else return false;
}
function Isc6m3_port(query) {
    if("map" in query) { return query.map == "c6m3_port"; } 
    else return false;
}
function IsNotc6m3_port(query) {
    if("map" in query) { return query.map != "c6m3_port"; } 
    else return true;
}
function IsNotSaidInCapBounce(query) {
    if("worldsaidincapbounce" in query) { return query.worldsaidincapbounce != 1; } 
    else return true;
}
function ConceptInCapBounce2(query) {
    if("concept" in query) { return query.concept == "incapbounce2"; } 
    else return false;
}
function IsEllisInLoveC6M1(query) {
    if("worldellisinlovec6m1" in query) { return query.worldellisinlovec6m1 == 1; } 
    else return false;
}
function IsNotMentionedZoeyC6M2(query) {
    if("worldmentionedzoeyc6m2" in query) { return query.worldmentionedzoeyc6m2 != 1; } 
    else return true;
}
function IsJustSaidWorldC6M1_IntoTheStore(query) {
    if("worldjustsaidworldc6m1_intothestore" in query) { return query.worldjustsaidworldc6m1_intothestore == 1; } 
    else return false;
}
function IsAtWedding(query) {
    if("worldatwedding" in query) { return query.worldatwedding == 1; } 
    else return false;
}
function CoachCake(query) {
    if("worldcoachcake" in query) { return query.worldcoachcake == 1; } 
    else return false;
}
function IsNotSaidC6M2LeavingSafeRoom(query) {
    if("worldsaidc6m2leavingsaferoom" in query) { return query.worldsaidc6m2leavingsaferoom != 1; } 
    else return true;
}
function IsGolfclub(query) {
    if("weaponname" in query) { return query.weaponname == "golfclub"; } 
    else return false;
}
function IsPickedUpGolfClub(query) {
    if("itempickedup" in query) { return query.itempickedup == "golfclub"; } 
    else return false;
}
function IsM60(query) {
    if("weaponname" in query) { return query.weaponname == "m60"; } 
    else return false;
}
function IsPickedUpM60(query) {
    if("itempickedup" in query) { return query.itempickedup == "m60"; } 
    else return false;
}
function IsL4D1Survivor(query) {
    if("team" in query) { return query.team == "l4d1_survivor"; } 
    else return false;
}
function IsASurvivor(query) { return ( IsSurvivor(query) || IsL4D1Survivor(query) ); }
function ConceptC6M3Stairs(query) {
    if("concept" in query) { return query.concept == "c6m3stairs"; } 
    else return false;
}
function IsFrancisIntroActor(query) {
    if("introactor" in query) { return query.introactor == "francis"; } 
    else return false;
}
function IsZoeyIntroActor(query) {
    if("introactor" in query) { return query.introactor == "zoey"; } 
    else return false;
}
function Conceptc6m3_elevatorCancel(query) {
    if("concept" in query) { return query.concept == "scenecancelled"; } 
    else return false;
}
function Conceptc6m3_elevator(query) {
    if("concept" in query) { return query.concept == "c6m3_elevator"; } 
    else return false;
}
function Conceptc6m3_elevator2(query) {
    if("concept" in query) { return query.concept == "c6m3_elevator2"; } 
    else return false;
}
function ConceptC6M3_BridgeDown(query) {
    if("concept" in query) { return query.concept == "c6m3_bridgedown"; } 
    else return false;
}
function ConceptC6M3LureTanksHere(query) {
    if("concept" in query) { return query.concept == "c6m3luretankshere"; } 
    else return false;
}
function IsSpecialTypeFallen(query) {
    if("specialtype" in query) { return query.specialtype == "fallen"; } 
    else return false;
}
function IsNotSaidFallenWarn(query) {
    if("worldsaidfallenwarn" in query) { return query.worldsaidfallenwarn != 1; } 
    else return true;
}
function ConceptL4D1_NiceJobPour(query) {
    if("concept" in query) { return query.concept == "l4d1_nicejobpour"; } 
    else return false;
}
function ConceptL4D1_AttractPlayerForThrow(query) {
    if("concept" in query) { return query.concept == "survivorbotattractplayerforthrow"; } 
    else return false;
}
function ConceptL4D1_SurvivorBotTakeThisItem(query) {
    if("concept" in query) { return query.concept == "survivorbottakethisitem"; } 
    else return false;
}
function ConceptPlayerGivenItem(query) {
    if("concept" in query) { return query.concept == "playergivenitem"; } 
    else return false;
}
function IsDonorBiker(query) {
    if("itemdonor" in query) { return query.itemdonor == "biker"; } 
    else return false;
}
function IsDonorTeenGirl(query) {
    if("itemdonor" in query) { return query.itemdonor == "teengirl"; } 
    else return false;
}
function IsDonorNamVet(query) {
    if("itemdonor" in query) { return query.itemdonor == "namvet"; } 
    else return false;
}
function IsDonorManager(query) {
    if("itemdonor" in query) { return query.itemdonor == "manager"; } 
    else return false;
}
function IsDonorCoach(query) {
    if("itemdonor" in query) { return query.itemdonor == "coach"; } 
    else return false;
}
function IsDonorGambler(query) {
    if("itemdonor" in query) { return query.itemdonor == "gambler"; } 
    else return false;
}
function IsDonorMechanic(query) {
    if("itemdonor" in query) { return query.itemdonor == "mechanic"; } 
    else return false;
}
function IsDonorProducer(query) {
    if("itemdonor" in query) { return query.itemdonor == "producer"; } 
    else return false;
}
function IsDonorUnknown(query) {
    if("itemdonor" in query) { return query.itemdonor == "unknown"; } 
    else return false;
}
function IsNotDonorBiker(query) {
    if("itemdonor" in query) { return query.itemdonor != "biker"; } 
    else return true;
}
function IsNotDonorTeenGirl(query) {
    if("itemdonor" in query) { return query.itemdonor != "teengirl"; } 
    else return true;
}
function IsNotDonorNamVet(query) {
    if("itemdonor" in query) { return query.itemdonor != "namvet"; } 
    else return true;
}
function IsNotDonorManager(query) {
    if("itemdonor" in query) { return query.itemdonor != "manager"; } 
    else return true;
}
function IsNotDonorCoach(query) {
    if("itemdonor" in query) { return query.itemdonor != "coach"; } 
    else return true;
}
function IsNotDonorGambler(query) {
    if("itemdonor" in query) { return query.itemdonor != "gambler"; } 
    else return true;
}
function IsNotDonorMechanic(query) {
    if("itemdonor" in query) { return query.itemdonor != "mechanic"; } 
    else return true;
}
function IsNotDonorProducer(query) {
    if("itemdonor" in query) { return query.itemdonor != "producer"; } 
    else return true;
}
function IsNotDonorUnknown(query) {
    if("itemdonor" in query) { return query.itemdonor != "unknown"; } 
    else return true;
}
function HasDonor(query) { return ( IsDonorBiker(query) || IsDonorTeenGirl(query) || IsDonorNamVet(query) || IsDonorManager(query) || IsDonorCoach(query) || IsDonorGambler(query) || IsDonorMechanic(query) || IsDonorProducer(query) || IsDonorUnknown(query) ); }
function IsNotSaidC6M3Elevator(query) {
    if("worldsaidc6m3elevator" in query) { return query.worldsaidc6m3elevator != 1; } 
    else return true;
}
function Conceptc6m3_loss(query) {
    if("concept" in query) { return query.concept == "c6m3_loss"; } 
    else return false;
}
function Conceptc6m3_loss2(query) {
    if("concept" in query) { return query.concept == "c6m3_loss2"; } 
    else return false;
}
function Conceptc6m3_loss3(query) {
    if("concept" in query) { return query.concept == "c6m3_loss3"; } 
    else return false;
}
function Conceptc6m3_outro(query) {
    if("concept" in query) { return query.concept == "c6m3_outro"; } 
    else return false;
}
function Conceptc6m3_outro2(query) {
    if("concept" in query) { return query.concept == "c6m3_outro2"; } 
    else return false;
}
function Conceptc6m3_outro3(query) {
    if("concept" in query) { return query.concept == "c6m3_outro3"; } 
    else return false;
}
function Conceptc6m3_escape(query) {
    if("concept" in query) { return query.concept == "c6m3_escape"; } 
    else return false;
}
function MoreThan0(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum >= 0; } 
    else return false;
}
function MoreThan15(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum > 15; } 
    else return false;
}
function MoreThan25(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum > 25; } 
    else return false;
}
function MoreThan30(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum > 30; } 
    else return false;
}
function MoreThan35(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum > 35; } 
    else return false;
}
function MoreThan40(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum > 40; } 
    else return false;
}
function MoreThan45(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum > 45; } 
    else return false;
}
function MoreThan60(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum > 60; } 
    else return false;
}
function MoreThan65(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum > 65; } 
    else return false;
}
function MoreThan70(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum > 70; } 
    else return false;
}
function MoreThan90(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum > 90; } 
    else return false;
}
function LessThan15(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 15; } 
    else return true;
}
function LessThan25(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 25; } 
    else return true;
}
function LessThan30(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 30; } 
    else return true;
}
function LessThan35(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 35; } 
    else return true;
}
function LessThan40(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 40; } 
    else return true;
}
function LessThan45(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 45; } 
    else return true;
}
function LessThan60(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 60; } 
    else return true;
}
function LessThan65(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 65; } 
    else return true;
}
function LessThan70(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 70; } 
    else return true;
}
function LessThan90(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 90; } 
    else return true;
}
function LessThan100(query) {
    if("campaignrandomnum" in query) { return query.campaignrandomnum <= 100; } 
    else return true;
}
function IsCoachAVampire(query) {
    if("worldc6m1_coachisavampire" in query) { return query.worldc6m1_coachisavampire == 1; } 
    else return false;
}
function IsProducerAVampire(query) {
    if("worldc6m1_producerisavampire" in query) { return query.worldc6m1_producerisavampire == 1; } 
    else return false;
}
function ConceptC6M2_OpenGate1(query) {
    if("concept" in query) { return query.concept == "c6m2_opengate1"; } 
    else return false;
}
function ConceptC6M2_OpenGate2(query) {
    if("concept" in query) { return query.concept == "c6m2_opengate2"; } 
    else return false;
}
function IsNotSaidOpenedGate1(query) {
    if("worldsaidopenedgate1" in query) { return query.worldsaidopenedgate1 != 1; } 
    else return true;
}
function IsNotSaidOpenedGate2(query) {
    if("worldsaidopenedgate2" in query) { return query.worldsaidopenedgate2 != 1; } 
    else return true;
}
function IsSaidOpenedGate1BlameEllis(query) {
    if("worldsaidopenedgate1blameellis" in query) { return query.worldsaidopenedgate1blameellis == 1; } 
    else return false;
}
function IsSaidOpenedGate1(query) {
    if("worldsaidopenedgate1" in query) { return query.worldsaidopenedgate1 == 1; } 
    else return false;
}
function IsSaidc6m3escapeready(query) {
    if("worldsaidc6m3escapeready" in query) { return query.worldsaidc6m3escapeready == 1; } 
    else return false;
}
function IsNotSaidc6m3escapeready(query) {
    if("worldsaidc6m3escapeready" in query) { return query.worldsaidc6m3escapeready != 1; } 
    else return true;
}
function Conceptc6m3escapeready(query) {
    if("concept" in query) { return query.concept == "c6m3escapeready"; } 
    else return false;
}
function IsNotSaidWorldC6M1_Intothepark(query) {
    if("worldsaidworldc6m1_intothepark" in query) { return query.worldsaidworldc6m1_intothepark != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_HistoricTour(query) {
    if("worldsaidworldc6m1_historictour" in query) { return query.worldsaidworldc6m1_historictour != 1; } 
    else return true;
}
function CanRemarkWorldC6M1_HistoricTour(query) {
    if("worldremarkworldc6m1_historictour" in query) { return query.worldremarkworldc6m1_historictour == 1; } 
    else return false;
}
function IsNotSaidWorldC6M1_IntoTheStore(query) {
    if("worldsaidworldc6m1_intothestore" in query) { return query.worldsaidworldc6m1_intothestore != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_AlleyBelow(query) {
    if("worldsaidworldc6m1_alleybelow" in query) { return query.worldsaidworldc6m1_alleybelow != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_AlleyIntoBuilding(query) {
    if("worldsaidworldc6m1_alleyintobuilding" in query) { return query.worldsaidworldc6m1_alleyintobuilding != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_UpTheStairs2(query) {
    if("worldsaidworldc6m1_upthestairs2" in query) { return query.worldsaidworldc6m1_upthestairs2 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_AcrossHere(query) {
    if("worldsaidworldc6m1_acrosshere" in query) { return query.worldsaidworldc6m1_acrosshere != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_PostWedding(query) {
    if("worldsaidworldc6m1_postwedding" in query) { return query.worldsaidworldc6m1_postwedding != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_SafeRoomAlley(query) {
    if("worldsaidworldc6m1_saferoomalley" in query) { return query.worldsaidworldc6m1_saferoomalley != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_ThroughBar(query) {
    if("worldsaidworldc6m1_throughbar" in query) { return query.worldsaidworldc6m1_throughbar != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_UpHere(query) {
    if("worldsaidworldc6m1_uphere" in query) { return query.worldsaidworldc6m1_uphere != 1; } 
    else return true;
}
function IsNotSaidInfoRemWorldC6M1_InApts(query) {
    if("worldsaidinforemworldc6m1_inapts" in query) { return query.worldsaidinforemworldc6m1_inapts != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_InApts(query) {
    if("worldsaidworldc6m1_inapts" in query) { return query.worldsaidworldc6m1_inapts != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_UpTheStairs(query) {
    if("worldsaidworldc6m1_upthestairs" in query) { return query.worldsaidworldc6m1_upthestairs != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_IntoThePark2(query) {
    if("worldsaidworldc6m1_intothepark2" in query) { return query.worldsaidworldc6m1_intothepark2 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M1_WeddingWarn(query) {
    if("worldsaidworldc6m1_weddingwarn" in query) { return query.worldsaidworldc6m1_weddingwarn != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_UpStairs(query) {
    if("worldsaidworldc6m2_upstairs" in query) { return query.worldsaidworldc6m2_upstairs != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_Tattoo(query) {
    if("worldsaidworldc6m2_tattoo" in query) { return query.worldsaidworldc6m2_tattoo != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_IntoPoolHall(query) {
    if("worldsaidworldc6m2_intopoolhall" in query) { return query.worldsaidworldc6m2_intopoolhall != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_JukeBox(query) {
    if("worldsaidworldc6m2_jukebox" in query) { return query.worldsaidworldc6m2_jukebox != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_IntoConstruction(query) {
    if("worldsaidworldc6m2_intoconstruction" in query) { return query.worldsaidworldc6m2_intoconstruction != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_DownIntoBuilding(query) {
    if("worldsaidworldc6m2_downintobuilding" in query) { return query.worldsaidworldc6m2_downintobuilding != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_UpStairs2(query) {
    if("worldsaidworldc6m2_upstairs2" in query) { return query.worldsaidworldc6m2_upstairs2 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_Suitcase(query) {
    if("worldsaidworldc6m2_suitcase" in query) { return query.worldsaidworldc6m2_suitcase != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_AcrossPlank(query) {
    if("worldsaidworldc6m2_acrossplank" in query) { return query.worldsaidworldc6m2_acrossplank != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_DownHere(query) {
    if("worldsaidworldc6m2_downhere" in query) { return query.worldsaidworldc6m2_downhere != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_InJazzClub(query) {
    if("worldsaidworldc6m2_injazzclub" in query) { return query.worldsaidworldc6m2_injazzclub != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_TourEntrance(query) {
    if("worldsaidworldc6m2_tourentrance" in query) { return query.worldsaidworldc6m2_tourentrance != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_OnTourWalk1(query) {
    if("worldsaidworldc6m2_ontourwalk1" in query) { return query.worldsaidworldc6m2_ontourwalk1 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_OnTourWalk2(query) {
    if("worldsaidworldc6m2_ontourwalk2" in query) { return query.worldsaidworldc6m2_ontourwalk2 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_OnTourWalk3(query) {
    if("worldsaidworldc6m2_ontourwalk3" in query) { return query.worldsaidworldc6m2_ontourwalk3 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_Phase2(query) {
    if("worldsaidworldc6m2_phase2" in query) { return query.worldsaidworldc6m2_phase2 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_Phase2Down(query) {
    if("worldsaidworldc6m2_phase2down" in query) { return query.worldsaidworldc6m2_phase2down != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_JumpDown(query) {
    if("worldsaidworldc6m2_jumpdown" in query) { return query.worldsaidworldc6m2_jumpdown != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_InSewer1(query) {
    if("worldsaidworldc6m2_insewer1" in query) { return query.worldsaidworldc6m2_insewer1 != 1; } 
    else return true;
}
function IsSaidWorldC6M2_InSewer1(query) {
    if("worldsaidworldc6m2_insewer1" in query) { return query.worldsaidworldc6m2_insewer1 == 1; } 
    else return false;
}
function IsNotSaidWorldC6M2_InSewer2(query) {
    if("worldsaidworldc6m2_insewer2" in query) { return query.worldsaidworldc6m2_insewer2 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_InSewerLadder1(query) {
    if("worldsaidworldc6m2_insewerladder1" in query) { return query.worldsaidworldc6m2_insewerladder1 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_OpenGate1(query) {
    if("worldsaidworldc6m2_opengate1" in query) { return query.worldsaidworldc6m2_opengate1 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_AfterGate1(query) {
    if("worldsaidworldc6m2_aftergate1" in query) { return query.worldsaidworldc6m2_aftergate1 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_AfterGate2(query) {
    if("worldsaidworldc6m2_aftergate2" in query) { return query.worldsaidworldc6m2_aftergate2 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_UpCatWalk(query) {
    if("worldsaidworldc6m2_upcatwalk" in query) { return query.worldsaidworldc6m2_upcatwalk != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_OpenGate2(query) {
    if("worldsaidworldc6m2_opengate2" in query) { return query.worldsaidworldc6m2_opengate2 != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_FinalWater(query) {
    if("worldsaidworldc6m2_finalwater" in query) { return query.worldsaidworldc6m2_finalwater != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_FinalWaterGoGo(query) {
    if("worldsaidworldc6m2_finalwatergogo" in query) { return query.worldsaidworldc6m2_finalwatergogo != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_FinalLadder(query) {
    if("worldsaidworldc6m2_finalladder" in query) { return query.worldsaidworldc6m2_finalladder != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_SafeRoom(query) {
    if("worldsaidworldc6m2_saferoom" in query) { return query.worldsaidworldc6m2_saferoom != 1; } 
    else return true;
}
function IsNotSaidWorldC6M3_ByBridge(query) {
    if("worldsaidworldc6m3_bybridge" in query) { return query.worldsaidworldc6m3_bybridge != 1; } 
    else return true;
}
function IsNotSaidWorldC6M3_BridgeRun(query) {
    if("worldsaidworldc6m3_bridgerun" in query) { return query.worldsaidworldc6m3_bridgerun != 1; } 
    else return true;
}
function IsNotSaidWorldC6M2_PostGate1(query) {
    if("worldsaidworldc6m2_postgate1" in query) { return query.worldsaidworldc6m2_postgate1 != 1; } 
    else return true;
}
function IsNotSaidremark_MidnightRidersBus(query) {
    if("worldsaidremark_midnightridersbus" in query) { return query.worldsaidremark_midnightridersbus != 1; } 
    else return true;
}
function IsNotSaidWorldFootLocker(query) {
    if("worldsaidworldfootlocker" in query) { return query.worldsaidworldfootlocker != 1; } 
    else return true;
}
function IsWorldC6M1_Intothepark(query) {
    if("subject" in query) { return query.subject == "worldc6m1_intothepark"; } 
    else return false;
}
function IsWorldC6M1_HistoricTour(query) {
    if("subject" in query) { return query.subject == "worldc6m1_historictour"; } 
    else return false;
}
function IsWorldC6M1_IntoTheStore(query) {
    if("subject" in query) { return query.subject == "worldc6m1_intothestore"; } 
    else return false;
}
function IsWorldC6M1_AlleyBelow(query) {
    if("subject" in query) { return query.subject == "worldc6m1_alleybelow"; } 
    else return false;
}
function IsWorldC6M1_AlleyIntoBuilding(query) {
    if("subject" in query) { return query.subject == "worldc6m1_alleyintobuilding"; } 
    else return false;
}
function IsWorldC6M1_UpTheStairs2(query) {
    if("subject" in query) { return query.subject == "worldc6m1_upthestairs2"; } 
    else return false;
}
function IsWorldC6M1_AcrossHere(query) {
    if("subject" in query) { return query.subject == "worldc6m1_acrosshere"; } 
    else return false;
}
function IsWorldC6M1_PostWedding(query) {
    if("subject" in query) { return query.subject == "worldc6m1_postwedding"; } 
    else return false;
}
function IsWorldC6M1_SafeRoomAlley(query) {
    if("subject" in query) { return query.subject == "worldc6m1_saferoomalley"; } 
    else return false;
}
function IsWorldC6M1_ThroughBar(query) {
    if("subject" in query) { return query.subject == "worldc6m1_throughbar"; } 
    else return false;
}
function IsWorldC6M1_UpHere(query) {
    if("subject" in query) { return query.subject == "worldc6m1_uphere"; } 
    else return false;
}
function IsInfoRemWorldC6M1_InApts(query) {
    if("subject" in query) { return query.subject == "inforemworldc6m1_inapts"; } 
    else return false;
}
function IsWorldC6M1_InApts(query) {
    if("subject" in query) { return query.subject == "worldc6m1_inapts"; } 
    else return false;
}
function IsWorldC6M1_UpTheStairs(query) {
    if("subject" in query) { return query.subject == "worldc6m1_upthestairs"; } 
    else return false;
}
function IsWorldC6M1_IntoThePark2(query) {
    if("subject" in query) { return query.subject == "worldc6m1_intothepark2"; } 
    else return false;
}
function IsWorldC6M1_WeddingWarn(query) {
    if("subject" in query) { return query.subject == "worldc6m1_weddingwarn"; } 
    else return false;
}
function IsWorldC6M2_UpStairs(query) {
    if("subject" in query) { return query.subject == "worldc6m2_upstairs"; } 
    else return false;
}
function IsWorldC6M2_Tattoo(query) {
    if("subject" in query) { return query.subject == "worldc6m2_tattoo"; } 
    else return false;
}
function IsWorldC6M2_IntoPoolHall(query) {
    if("subject" in query) { return query.subject == "worldc6m2_intopoolhall"; } 
    else return false;
}
function IsWorldC6M2_JukeBox(query) {
    if("subject" in query) { return query.subject == "worldc6m2_jukebox"; } 
    else return false;
}
function IsWorldC6M2_IntoConstruction(query) {
    if("subject" in query) { return query.subject == "worldc6m2_intoconstruction"; } 
    else return false;
}
function IsWorldC6M2_DownIntoBuilding(query) {
    if("subject" in query) { return query.subject == "worldc6m2_downintobuilding"; } 
    else return false;
}
function IsWorldC6M2_UpStairs2(query) {
    if("subject" in query) { return query.subject == "worldc6m2_upstairs2"; } 
    else return false;
}
function IsWorldC6M2_Suitcase(query) {
    if("subject" in query) { return query.subject == "worldc6m2_suitcase"; } 
    else return false;
}
function IsWorldC6M2_AcrossPlank(query) {
    if("subject" in query) { return query.subject == "worldc6m2_acrossplank"; } 
    else return false;
}
function IsWorldC6M2_DownHere(query) {
    if("subject" in query) { return query.subject == "worldc6m2_downhere"; } 
    else return false;
}
function IsWorldC6M2_InJazzClub(query) {
    if("subject" in query) { return query.subject == "worldc6m2_injazzclub"; } 
    else return false;
}
function IsWorldC6M2_TourEntrance(query) {
    if("subject" in query) { return query.subject == "worldc6m2_tourentrance"; } 
    else return false;
}
function IsWorldC6M2_OnTourWalk1(query) {
    if("subject" in query) { return query.subject == "worldc6m2_ontourwalk1"; } 
    else return false;
}
function IsWorldC6M2_OnTourWalk2(query) {
    if("subject" in query) { return query.subject == "worldc6m2_ontourwalk2"; } 
    else return false;
}
function IsWorldC6M2_OnTourWalk3(query) {
    if("subject" in query) { return query.subject == "worldc6m2_ontourwalk3"; } 
    else return false;
}
function IsWorldC6M2_Phase2(query) {
    if("subject" in query) { return query.subject == "worldc6m2_phase2"; } 
    else return false;
}
function IsWorldC6M2_Phase2Down(query) {
    if("subject" in query) { return query.subject == "worldc6m2_phase2down"; } 
    else return false;
}
function IsWorldC6M2_JumpDown(query) {
    if("subject" in query) { return query.subject == "worldc6m2_jumpdown"; } 
    else return false;
}
function IsWorldC6M2_InSewer1(query) {
    if("subject" in query) { return query.subject == "worldc6m2_insewer1"; } 
    else return false;
}
function IsWorldC6M2_InSewer2(query) {
    if("subject" in query) { return query.subject == "worldc6m2_insewer2"; } 
    else return false;
}
function IsWorldC6M2_InSewerLadder1(query) {
    if("subject" in query) { return query.subject == "worldc6m2_insewerladder1"; } 
    else return false;
}
function IsWorldC6M2_OpenGate1(query) {
    if("subject" in query) { return query.subject == "worldc6m2_opengate1"; } 
    else return false;
}
function IsWorldC6M2_AfterGate1(query) {
    if("subject" in query) { return query.subject == "worldc6m2_aftergate1"; } 
    else return false;
}
function IsWorldC6M2_AfterGate2(query) {
    if("subject" in query) { return query.subject == "worldc6m2_aftergate2"; } 
    else return false;
}
function IsWorldC6M2_UpCatWalk(query) {
    if("subject" in query) { return query.subject == "worldc6m2_upcatwalk"; } 
    else return false;
}
function IsWorldC6M2_OpenGate2(query) {
    if("subject" in query) { return query.subject == "worldc6m2_opengate2"; } 
    else return false;
}
function IsWorldC6M2_FinalWater(query) {
    if("subject" in query) { return query.subject == "worldc6m2_finalwater"; } 
    else return false;
}
function IsWorldC6M2_FinalWaterGoGo(query) {
    if("subject" in query) { return query.subject == "worldc6m2_finalwatergogo"; } 
    else return false;
}
function IsWorldC6M2_FinalLadder(query) {
    if("subject" in query) { return query.subject == "worldc6m2_finalladder"; } 
    else return false;
}
function IsWorldC6M2_SafeRoom(query) {
    if("subject" in query) { return query.subject == "worldc6m2_saferoom"; } 
    else return false;
}
function IsWorldC6M3_ByBridge(query) {
    if("subject" in query) { return query.subject == "worldc6m3_bybridge"; } 
    else return false;
}
function IsWorldC6M3_BridgeRun(query) {
    if("subject" in query) { return query.subject == "worldc6m3_bridgerun"; } 
    else return false;
}
function IsWorldC6M3_Bill(query) {
    if("subject" in query) { return query.subject == "worldc6m3_bill"; } 
    else return false;
}
function IsWorldC6M2_PostGate1(query) {
    if("subject" in query) { return query.subject == "worldc6m2_postgate1"; } 
    else return false;
}
function Isremark_MidnightRidersBus(query) {
    if("subject" in query) { return query.subject == "remark_midnightridersbus"; } 
    else return false;
}
function IsWorldFootLocker(query) {
    if("subject" in query) { return query.subject == "worldfootlocker"; } 
    else return false;
}
function IsNotSaidFinaleExchange(query) {
    if("worldsaidfinaleexchange" in query) { return query.worldsaidfinaleexchange != 1; } 
    else return true;
}
function IsSaidFinaleExchange(query) {
    if("worldsaidfinaleexchange" in query) { return query.worldsaidfinaleexchange == 1; } 
    else return false;
}
function IsNotSaidEllisBridgeStoryStart(query) {
    if("worldsaidellisbridgestorystart" in query) { return query.worldsaidellisbridgestorystart != 1; } 
    else return true;
}
function IsEndEllisBridgeStoryStart(query) {
    if("worldendellisbridgestorystart" in query) { return query.worldendellisbridgestorystart == 1; } 
    else return false;
}
// terror_player_dlc2.txt ===================================================================================================================
function ConceptPlayerSpotMolotov(query) {
    if("concept" in query) { return query.concept == "playerspotmolotov"; } 
    else return false;
}
function IsHoldout(query) {
    if("gamemode" in query) { return query.gamemode == "holdout"; } 
    else return false;
}
function IsNotHoldout(query) {
    if("gamemode" in query) { return query.gamemode != "holdout"; } 
    else return true;
}
function ConceptPlayerSuggestHealthNamVet(query) {
    if("concept" in query) { return query.concept == "playersuggesthealthnamvet"; } 
    else return false;
}
function ConceptPlayerSuggestHealthBiker(query) {
    if("concept" in query) { return query.concept == "playersuggesthealthbiker"; } 
    else return false;
}
function ConceptPlayerSuggestHealthManager(query) {
    if("concept" in query) { return query.concept == "playersuggesthealthmanager"; } 
    else return false;
}
function ConceptPlayerSuggestHealthTeenGirl(query) {
    if("concept" in query) { return query.concept == "playersuggesthealthteengirl"; } 
    else return false;
}
function ConceptTakeShotgunGroovyLouis(query) {
    if("concept" in query) { return query.concept == "takeshotgungroovylouis"; } 
    else return false;
}
function ConceptTakeShotgunGroovyZoey(query) {
    if("concept" in query) { return query.concept == "takeshotgungroovyzoey"; } 
    else return false;
}
function ConceptTakeShotgunGroovyZoey2Biker(query) {
    if("concept" in query) { return query.concept == "takeshotgungroovyzoey2biker"; } 
    else return false;
}
function ConceptTakeShotgunGroovy2BikerLaugh(query) {
    if("concept" in query) { return query.concept == "takeshotgungroovy2bikerlaugh"; } 
    else return false;
}
function IsSmallTownBarricadeManager(query) {
    if("worldsmalltownbarricademanager" in query) { return query.worldsmalltownbarricademanager != 1; } 
    else return true;
}
function IsSmallTownBarricadeNamVet(query) {
    if("worldsmalltownbarricadenamvet" in query) { return query.worldsmalltownbarricadenamvet != 1; } 
    else return true;
}
function IsSmallTownBarricadeTeenGirl(query) {
    if("worldsmalltownbarricadeteengirl" in query) { return query.worldsmalltownbarricadeteengirl != 1; } 
    else return true;
}
function IsFarmhouse(query) {
    if("map" in query) { return query.map == "rural01a_hilltop"; } 
    else return false;
}
function IsCampground(query) {
    if("map" in query) { return query.map == "rural01b_caves"; } 
    else return false;
}
function IsDeadAir(query) {
    if("map" in query) { return query.map == "urban01a_greenhouse"; } 
    else return false;
}
function IsNoMercy(query) {
    if("map" in query) { return query.map == "c8m1_apartment"; } 
    else return false;
}
function IsSmalltown04(query) {
    if("map" in query) { return query.map == "l4d_smalltown04_mainstreet"; } 
    else return false;
}
function IsFarm03(query) {
    if("map" in query) { return query.map == "l4d_farm03_bridge"; } 
    else return false;
}
function NotFarm03Unhooked(query) {
    if("worldfarm03unhooked" in query) { return query.worldfarm03unhooked < 1; } 
    else return true;
}
function Farm03BridgeDown(query) {
    if("worldfarm03bridgedown" in query) { return query.worldfarm03bridgedown == 1; } 
    else return false;
}
function PanicEventBiker(query) {
    if("whodidit" in query) { return query.whodidit == "biker"; } 
    else return false;
}
function PanicEventNamVet(query) {
    if("whodidit" in query) { return query.whodidit == "namvet"; } 
    else return false;
}
function PanicEventManager(query) {
    if("whodidit" in query) { return query.whodidit == "manager"; } 
    else return false;
}
function PanicEventTeenGirl(query) {
    if("whodidit" in query) { return query.whodidit == "teengirl"; } 
    else return false;
}
function IsTriggeredByNamVet(query) {
    if("triggeredby" in query) { return query.triggeredby == "namvet"; } 
    else return false;
}
function IsTriggeredByBiker(query) {
    if("triggeredby" in query) { return query.triggeredby == "biker"; } 
    else return false;
}
function IsTriggeredByTeenGirl(query) {
    if("triggeredby" in query) { return query.triggeredby == "teengirl"; } 
    else return false;
}
function IsTriggeredByManager(query) {
    if("triggeredby" in query) { return query.triggeredby == "manager"; } 
    else return false;
}
function IsNotSaidLouisPounced(query) {
    if("worldsaidlouispounced" in query) { return query.worldsaidlouispounced != 1; } 
    else return true;
}
function IsNotSaidFrancisPounced(query) {
    if("worldsaidfrancispounced" in query) { return query.worldsaidfrancispounced != 1; } 
    else return true;
}
function IsNotSaidZoeyPounced(query) {
    if("worldsaidzoeypounced" in query) { return query.worldsaidzoeypounced != 1; } 
    else return true;
}
function IsNotSaidBillPounced(query) {
    if("worldsaidbillpounced" in query) { return query.worldsaidbillpounced != 1; } 
    else return true;
}
function IsNotSaidairport01_burning(query) {
    if("saidairport01_burning" in query) { return query.saidairport01_burning != 1; } 
    else return true;
}
function IsNotSaidairport01_path01(query) {
    if("saidairport01_path01" in query) { return query.saidairport01_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital01_path01(query) {
    if("worldsaidhospital01_path01" in query) { return query.worldsaidhospital01_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital01_path02(query) {
    if("worldsaidhospital01_path02" in query) { return query.worldsaidhospital01_path02 != 1; } 
    else return true;
}
function IsNotSaidhospital01_path03(query) {
    if("worldsaidhospital01_path03" in query) { return query.worldsaidhospital01_path03 != 1; } 
    else return true;
}
function IsSaidSmalltown01_path01(query) {
    if("worldsaidsmalltown01_path01" in query) { return query.worldsaidsmalltown01_path01 == 1; } 
    else return false;
}
function IsNotSaidSmalltown01_path01(query) {
    if("worldsaidsmalltown01_path01" in query) { return query.worldsaidsmalltown01_path01 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path02(query) {
    if("worldsaidsmalltown01_path02" in query) { return query.worldsaidsmalltown01_path02 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path03(query) {
    if("worldsaidsmalltown01_path03" in query) { return query.worldsaidsmalltown01_path03 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path04(query) {
    if("worldsaidsmalltown01_path04" in query) { return query.worldsaidsmalltown01_path04 != 1; } 
    else return true;
}
function IsNotSaidhospital02_path01(query) {
    if("worldsaidhospital02_path01" in query) { return query.worldsaidhospital02_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital02_path02(query) {
    if("worldsaidhospital02_path02" in query) { return query.worldsaidhospital02_path02 != 1; } 
    else return true;
}
function IsNotSaidhospital02_path03(query) {
    if("worldsaidhospital02_path03" in query) { return query.worldsaidhospital02_path03 != 1; } 
    else return true;
}
function IsNotSaidhospital02_path04(query) {
    if("worldsaidhospital02_path04" in query) { return query.worldsaidhospital02_path04 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path01(query) {
    if("worldsaidhospital03_path01" in query) { return query.worldsaidhospital03_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path02(query) {
    if("worldsaidhospital03_path02" in query) { return query.worldsaidhospital03_path02 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path03(query) {
    if("worldsaidhospital03_path03" in query) { return query.worldsaidhospital03_path03 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path04(query) {
    if("worldsaidhospital03_path04" in query) { return query.worldsaidhospital03_path04 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path05(query) {
    if("worldsaidhospital03_path05" in query) { return query.worldsaidhospital03_path05 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path06(query) {
    if("worldsaidhospital03_path06" in query) { return query.worldsaidhospital03_path06 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path07(query) {
    if("worldsaidhospital03_path07" in query) { return query.worldsaidhospital03_path07 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path08(query) {
    if("worldsaidhospital03_path08" in query) { return query.worldsaidhospital03_path08 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path09(query) {
    if("worldsaidhospital03_path09" in query) { return query.worldsaidhospital03_path09 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path10(query) {
    if("worldsaidhospital03_path10" in query) { return query.worldsaidhospital03_path10 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path11(query) {
    if("worldsaidhospital03_path11" in query) { return query.worldsaidhospital03_path11 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path01(query) {
    if("worldsaidhospital04_path01" in query) { return query.worldsaidhospital04_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path02(query) {
    if("worldsaidhospital04_path02" in query) { return query.worldsaidhospital04_path02 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path03(query) {
    if("worldsaidhospital04_path03" in query) { return query.worldsaidhospital04_path03 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path04(query) {
    if("worldsaidhospital04_path04" in query) { return query.worldsaidhospital04_path04 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path05(query) {
    if("worldsaidhospital04_path05" in query) { return query.worldsaidhospital04_path05 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path06(query) {
    if("worldsaidhospital04_path06" in query) { return query.worldsaidhospital04_path06 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path07(query) {
    if("worldsaidhospital04_path07" in query) { return query.worldsaidhospital04_path07 != 1; } 
    else return true;
}
function IsNotSaidhospital05_path01(query) {
    if("worldsaidhospital05_path01" in query) { return query.worldsaidhospital05_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital05_path02(query) {
    if("worldsaidhospital05_path02" in query) { return query.worldsaidhospital05_path02 != 1; } 
    else return true;
}
function IsNotSaidhospital05_path03(query) {
    if("worldsaidhospital05_path03" in query) { return query.worldsaidhospital05_path03 != 1; } 
    else return true;
}
function IsNotSaidhospital05_path04(query) {
    if("worldsaidhospital05_path04" in query) { return query.worldsaidhospital05_path04 != 1; } 
    else return true;
}
function IsNotSaidUpThatLadder(query) {
    if("worldsaidupthatladder" in query) { return query.worldsaidupthatladder != 1; } 
    else return true;
}
function IsNotSaidThroughHere(query) {
    if("worldsaidthroughhere" in query) { return query.worldsaidthroughhere != 1; } 
    else return true;
}
function IsNotSaidLaughFrancis(query) {
    if("worldsaidlaughfrancis" in query) { return query.worldsaidlaughfrancis != 1; } 
    else return true;
}
function IsNotSaidLaughZoey(query) {
    if("worldsaidlaughzoey" in query) { return query.worldsaidlaughzoey != 1; } 
    else return true;
}
function IsNotSaidZoeySuggestsCrane(query) {
    if("worldsaidzoeysuggestscrane" in query) { return query.worldsaidzoeysuggestscrane != 1; } 
    else return true;
}
function IsNotSaidFrancisSuggestsCrane(query) {
    if("worldsaidfrancissuggestscrane" in query) { return query.worldsaidfrancissuggestscrane != 1; } 
    else return true;
}
function IsNotSaidairport03_barriera(query) {
    if("worldsaidairport03_barriera" in query) { return query.worldsaidairport03_barriera != 1; } 
    else return true;
}
function IsNotSaidAirport03FireStarted(query) {
    if("worldsaidairport03firestarted" in query) { return query.worldsaidairport03firestarted != 1; } 
    else return true;
}
function IsNotSaidAirport03FirePathClear(query) {
    if("worldairport03firepathclear" in query) { return query.worldairport03firepathclear != 1; } 
    else return true;
}
function IsNotSaidAirport03FirePathCleara(query) {
    if("worldairport03firepathcleara" in query) { return query.worldairport03firepathcleara != 1; } 
    else return true;
}
function IsNotSaidairport01_path02(query) {
    if("worldsaidairport01_path02" in query) { return query.worldsaidairport01_path02 != 1; } 
    else return true;
}
function IsNotSaidairport02_path01(query) {
    if("worldsaidairport02_path01" in query) { return query.worldsaidairport02_path01 != 1; } 
    else return true;
}
function IsNotSaidairport02_path02(query) {
    if("worldsaidairport02_path02" in query) { return query.worldsaidairport02_path02 != 1; } 
    else return true;
}
function IsNotAirport02NagTimer(query) {
    if("worldairport02nagtimer" in query) { return query.worldairport02nagtimer != 1; } 
    else return true;
}
function IsNotSaidairport02_path03(query) {
    if("worldsaidairport02_path03" in query) { return query.worldsaidairport02_path03 != 1; } 
    else return true;
}
function IsNotSaidairport02_path04(query) {
    if("worldsaidairport02_path04" in query) { return query.worldsaidairport02_path04 != 1; } 
    else return true;
}
function IsNotSaidairport02_path05(query) {
    if("worldsaidairport02_path05" in query) { return query.worldsaidairport02_path05 != 1; } 
    else return true;
}
function IsNotSaidairport02_path06(query) {
    if("worldsaidairport02_path06" in query) { return query.worldsaidairport02_path06 != 1; } 
    else return true;
}
function IsNotSaidairport03_01(query) {
    if("worldsaidairport03_01" in query) { return query.worldsaidairport03_01 != 1; } 
    else return true;
}
function IsNotSaidairport03_02(query) {
    if("worldsaidairport03_02" in query) { return query.worldsaidairport03_02 != 1; } 
    else return true;
}
function IsNotSaidairport03_03(query) {
    if("worldsaidairport03_03" in query) { return query.worldsaidairport03_03 != 1; } 
    else return true;
}
function IsNotSaidairport03_04(query) {
    if("worldsaidairport03_04" in query) { return query.worldsaidairport03_04 != 1; } 
    else return true;
}
function IsNotSaidairport03_05(query) {
    if("worldsaidairport03_05" in query) { return query.worldsaidairport03_05 != 1; } 
    else return true;
}
function IsNotSaidairport03_06(query) {
    if("worldsaidairport03_06" in query) { return query.worldsaidairport03_06 != 1; } 
    else return true;
}
function IsNotSaidairport03_07(query) {
    if("worldsaidairport03_07" in query) { return query.worldsaidairport03_07 != 1; } 
    else return true;
}
function IsNotSaidairport04_01(query) {
    if("worldsaidairport04_01" in query) { return query.worldsaidairport04_01 != 1; } 
    else return true;
}
function IsNotSaidairport04_02(query) {
    if("worldsaidairport04_02" in query) { return query.worldsaidairport04_02 != 1; } 
    else return true;
}
function IsNotSaidairport04_03(query) {
    if("worldsaidairport04_03" in query) { return query.worldsaidairport04_03 != 1; } 
    else return true;
}
function IsNotSaidairport04_04(query) {
    if("worldsaidairport04_04" in query) { return query.worldsaidairport04_04 != 1; } 
    else return true;
}
function IsNotSaidairport04_05(query) {
    if("worldsaidairport04_05" in query) { return query.worldsaidairport04_05 != 1; } 
    else return true;
}
function IsNotSaidairport04_06(query) {
    if("worldsaidairport04_06" in query) { return query.worldsaidairport04_06 != 1; } 
    else return true;
}
function IsNotSaidairport04_07(query) {
    if("worldsaidairport04_07" in query) { return query.worldsaidairport04_07 != 1; } 
    else return true;
}
function IsNotSaidairport04_08(query) {
    if("worldsaidairport04_08" in query) { return query.worldsaidairport04_08 != 1; } 
    else return true;
}
function IsNotSaidairport04_09(query) {
    if("worldsaidairport04_09" in query) { return query.worldsaidairport04_09 != 1; } 
    else return true;
}
function IsNotSaidairport02_creshendo01a(query) {
    if("worldsaidairport02_creshendo01a" in query) { return query.worldsaidairport02_creshendo01a != 1; } 
    else return true;
}
function IsNotSaidairport02_creshendo01b(query) {
    if("worldsaidairport02_creshendo01b" in query) { return query.worldsaidairport02_creshendo01b != 1; } 
    else return true;
}
function IsNotSaidhospital02_safehouse(query) {
    if("worldsaidhospital02_safehouse" in query) { return query.worldsaidhospital02_safehouse != 1; } 
    else return true;
}
function IsNotSaidFarm05_path10(query) {
    if("worldsaidfarm05_path10" in query) { return query.worldsaidfarm05_path10 != 1; } 
    else return true;
}
function IsNotSaidairport03_barrier(query) {
    if("worldsaidairport03_barrier" in query) { return query.worldsaidairport03_barrier != 1; } 
    else return true;
}
function IsNotSaidairport04_van(query) {
    if("worldsaidairport04_van" in query) { return query.worldsaidairport04_van != 1; } 
    else return true;
}
function IsNotSaidPathClearVan(query) {
    if("worldsaidpathclearvan" in query) { return query.worldsaidpathclearvan != 1; } 
    else return true;
}
function Ishospital01_path01(query) {
    if("subject" in query) { return query.subject == "hospital01_path01"; } 
    else return false;
}
function Ishospital01_path02(query) {
    if("subject" in query) { return query.subject == "hospital01_path02"; } 
    else return false;
}
function Ishospital01_path03(query) {
    if("subject" in query) { return query.subject == "hospital01_path03"; } 
    else return false;
}
function IsSmalltown01_path01(query) {
    if("subject" in query) { return query.subject == "smalltown01_path01"; } 
    else return false;
}
function IsSmalltown01_path02(query) {
    if("subject" in query) { return query.subject == "smalltown01_path02"; } 
    else return false;
}
function IsSmalltown01_path03(query) {
    if("subject" in query) { return query.subject == "smalltown01_path03"; } 
    else return false;
}
function IsSmalltown01_path04(query) {
    if("subject" in query) { return query.subject == "smalltown01_path04"; } 
    else return false;
}
function Ishospital02_path01(query) {
    if("subject" in query) { return query.subject == "hospital02_path01"; } 
    else return false;
}
function Ishospital02_path02(query) {
    if("subject" in query) { return query.subject == "hospital02_path02"; } 
    else return false;
}
function Ishospital02_path03(query) {
    if("subject" in query) { return query.subject == "hospital02_path03"; } 
    else return false;
}
function Ishospital02_path04(query) {
    if("subject" in query) { return query.subject == "hospital02_path04"; } 
    else return false;
}
function Ishospital03_path01(query) {
    if("subject" in query) { return query.subject == "hospital03_path01"; } 
    else return false;
}
function Ishospital03_path02(query) {
    if("subject" in query) { return query.subject == "hospital03_path02"; } 
    else return false;
}
function Ishospital03_path03(query) {
    if("subject" in query) { return query.subject == "hospital03_path03"; } 
    else return false;
}
function Ishospital03_path04(query) {
    if("subject" in query) { return query.subject == "hospital03_path04"; } 
    else return false;
}
function Ishospital03_path05(query) {
    if("subject" in query) { return query.subject == "hospital03_path05"; } 
    else return false;
}
function Ishospital03_path06(query) {
    if("subject" in query) { return query.subject == "hospital03_path06"; } 
    else return false;
}
function Ishospital03_path07(query) {
    if("subject" in query) { return query.subject == "hospital03_path07"; } 
    else return false;
}
function Ishospital03_path08(query) {
    if("subject" in query) { return query.subject == "hospital03_path08"; } 
    else return false;
}
function Ishospital03_path09(query) {
    if("subject" in query) { return query.subject == "hospital03_path09"; } 
    else return false;
}
function Ishospital03_path10(query) {
    if("subject" in query) { return query.subject == "hospital03_path10"; } 
    else return false;
}
function Ishospital03_path11(query) {
    if("subject" in query) { return query.subject == "hospital03_path11"; } 
    else return false;
}
function Ishospital04_path01(query) {
    if("subject" in query) { return query.subject == "hospital04_path01"; } 
    else return false;
}
function Ishospital04_path02(query) {
    if("subject" in query) { return query.subject == "hospital04_path02"; } 
    else return false;
}
function Ishospital04_path03(query) {
    if("subject" in query) { return query.subject == "hospital04_path03"; } 
    else return false;
}
function Ishospital04_path04(query) {
    if("subject" in query) { return query.subject == "hospital04_path04"; } 
    else return false;
}
function Ishospital04_path05(query) {
    if("subject" in query) { return query.subject == "hospital04_path05"; } 
    else return false;
}
function Ishospital04_path06(query) {
    if("subject" in query) { return query.subject == "hospital04_path06"; } 
    else return false;
}
function Ishospital04_path07(query) {
    if("subject" in query) { return query.subject == "hospital04_path07"; } 
    else return false;
}
function Ishospital05_path01(query) {
    if("subject" in query) { return query.subject == "hospital05_path01"; } 
    else return false;
}
function Ishospital05_path02(query) {
    if("subject" in query) { return query.subject == "hospital05_path02"; } 
    else return false;
}
function Ishospital05_path03(query) {
    if("subject" in query) { return query.subject == "hospital05_path03"; } 
    else return false;
}
function Ishospital05_path04(query) {
    if("subject" in query) { return query.subject == "hospital05_path04"; } 
    else return false;
}
function IsUpThatLadder(query) {
    if("subject" in query) { return query.subject == "upthatladder"; } 
    else return false;
}
function IsThroughHere(query) {
    if("subject" in query) { return query.subject == "throughhere"; } 
    else return false;
}
function Isairport01_path02(query) {
    if("subject" in query) { return query.subject == "airport01_path02"; } 
    else return false;
}
function Isairport02_path01(query) {
    if("subject" in query) { return query.subject == "airport02_path01"; } 
    else return false;
}
function Isairport02_path02(query) {
    if("subject" in query) { return query.subject == "airport02_path02"; } 
    else return false;
}
function Isairport02_path03(query) {
    if("subject" in query) { return query.subject == "airport02_path03"; } 
    else return false;
}
function Isairport02_path04(query) {
    if("subject" in query) { return query.subject == "airport02_path04"; } 
    else return false;
}
function Isairport02_path05(query) {
    if("subject" in query) { return query.subject == "airport02_path05"; } 
    else return false;
}
function Isairport02_path06(query) {
    if("subject" in query) { return query.subject == "airport02_path06"; } 
    else return false;
}
function Isairport03_01(query) {
    if("subject" in query) { return query.subject == "airport03_01"; } 
    else return false;
}
function Isairport03_02a(query) {
    if("subject" in query) { return query.subject == "airport03_02a"; } 
    else return false;
}
function Isairport03_02b(query) {
    if("subject" in query) { return query.subject == "airport03_02b"; } 
    else return false;
}
function Isairport03_03a(query) {
    if("subject" in query) { return query.subject == "airport03_03a"; } 
    else return false;
}
function Isairport03_03b(query) {
    if("subject" in query) { return query.subject == "airport03_03b"; } 
    else return false;
}
function Isairport03_03c(query) {
    if("subject" in query) { return query.subject == "airport03_03c"; } 
    else return false;
}
function Isairport03_04(query) {
    if("subject" in query) { return query.subject == "airport03_04"; } 
    else return false;
}
function Isairport03_05(query) {
    if("subject" in query) { return query.subject == "airport03_05"; } 
    else return false;
}
function Isairport03_06(query) {
    if("subject" in query) { return query.subject == "airport03_06"; } 
    else return false;
}
function Isairport03_07(query) {
    if("subject" in query) { return query.subject == "airport03_07"; } 
    else return false;
}
function Isairport04_01(query) {
    if("subject" in query) { return query.subject == "airport04_01"; } 
    else return false;
}
function Isairport04_02(query) {
    if("subject" in query) { return query.subject == "airport04_02"; } 
    else return false;
}
function Isairport04_02a(query) {
    if("subject" in query) { return query.subject == "airport04_02a"; } 
    else return false;
}
function Isairport04_02b(query) {
    if("subject" in query) { return query.subject == "airport04_02b"; } 
    else return false;
}
function Isairport04_03(query) {
    if("subject" in query) { return query.subject == "airport04_03"; } 
    else return false;
}
function Isairport04_03a(query) {
    if("subject" in query) { return query.subject == "airport04_03a"; } 
    else return false;
}
function Isairport04_03b(query) {
    if("subject" in query) { return query.subject == "airport04_03b"; } 
    else return false;
}
function Isairport04_03c(query) {
    if("subject" in query) { return query.subject == "airport04_03c"; } 
    else return false;
}
function Isairport04_04(query) {
    if("subject" in query) { return query.subject == "airport04_04"; } 
    else return false;
}
function Isairport04_05(query) {
    if("subject" in query) { return query.subject == "airport04_05"; } 
    else return false;
}
function Isairport04_06(query) {
    if("subject" in query) { return query.subject == "airport04_06"; } 
    else return false;
}
function Isairport04_07(query) {
    if("subject" in query) { return query.subject == "airport04_07"; } 
    else return false;
}
function Isairport04_08a(query) {
    if("subject" in query) { return query.subject == "airport04_08a"; } 
    else return false;
}
function Isairport04_08b(query) {
    if("subject" in query) { return query.subject == "airport04_08b"; } 
    else return false;
}
function Isairport04_08c(query) {
    if("subject" in query) { return query.subject == "airport04_08c"; } 
    else return false;
}
function Isairport04_08d(query) {
    if("subject" in query) { return query.subject == "airport04_08d"; } 
    else return false;
}
function Isairport04_08e(query) {
    if("subject" in query) { return query.subject == "airport04_08e"; } 
    else return false;
}
function Isairport04_08f(query) {
    if("subject" in query) { return query.subject == "airport04_08f"; } 
    else return false;
}
function Isairport04_09(query) {
    if("subject" in query) { return query.subject == "airport04_09"; } 
    else return false;
}
function Isairport02_creshendo01a(query) {
    if("subject" in query) { return query.subject == "airport02_creshendo01a"; } 
    else return false;
}
function Isairport02_creshendo01b(query) {
    if("subject" in query) { return query.subject == "airport02_creshendo01b"; } 
    else return false;
}
function Ishospital02_safehouse(query) {
    if("subject" in query) { return query.subject == "hospital02_safehouse"; } 
    else return false;
}
function IsFarm05_path10(query) {
    if("subject" in query) { return query.subject == "farm05_path10"; } 
    else return false;
}
function Isairport03_barrier(query) {
    if("subject" in query) { return query.subject == "airport03_barrier"; } 
    else return false;
}
function Isairport04_van(query) {
    if("subject" in query) { return query.subject == "airport04_van"; } 
    else return false;
}
function IsPathClearVan(query) {
    if("subject" in query) { return query.subject == "pathclearvan"; } 
    else return false;
}
function ConceptZoeySuggestsCrane(query) {
    if("concept" in query) { return query.concept == "zoeysuggestscrane"; } 
    else return false;
}
function ConceptFrancisSuggestsCrane(query) {
    if("concept" in query) { return query.concept == "francissuggestscrane"; } 
    else return false;
}
function ConceptLaughFrancis(query) {
    if("concept" in query) { return query.concept == "laughfrancis"; } 
    else return false;
}
function ConceptLaughZoey(query) {
    if("concept" in query) { return query.concept == "laughzoey"; } 
    else return false;
}
function ismap_l4d_farm05_cornfield(query) {
    if("map" in query) { return query.map == "c12m5_cornfield"; } 
    else return false;
}
function ismap_l4d_smalltown05_houseboat(query) {
    if("map" in query) { return query.map == "c10m5_houseboat"; } 
    else return false;
}
function ismap_urban05a_finale_runway(query) {
    if("map" in query) { return query.map == "c11m5_runway"; } 
    else return false;
}
function ismap_l4d_hospital05_rooftop(query) {
    if("map" in query) { return query.map == "c8m5_rooftop"; } 
    else return false;
}
function ismap_l4d_hospital01_apartment(query) {
    if("map" in query) { return query.map == "c8m1_apartment"; } 
    else return false;
}
function isRunway(query) {
    if("map" in query) { return query.map == "c11m5_runway"; } 
    else return false;
}
// terror_player_dlc2_use.txt ===================================================================================================================
function ConceptPlayerSpotMolotov(query) {
    if("concept" in query) { return query.concept == "playerspotmolotov"; } 
    else return false;
}
function IsHoldout(query) {
    if("gamemode" in query) { return query.gamemode == "holdout"; } 
    else return false;
}
function IsNotHoldout(query) {
    if("gamemode" in query) { return query.gamemode != "holdout"; } 
    else return true;
}
function ConceptTakeShotgunGroovyLouis(query) {
    if("concept" in query) { return query.concept == "takeshotgungroovylouis"; } 
    else return false;
}
function ConceptTakeShotgunGroovyZoey(query) {
    if("concept" in query) { return query.concept == "takeshotgungroovyzoey"; } 
    else return false;
}
function ConceptTakeShotgunGroovyZoey2Biker(query) {
    if("concept" in query) { return query.concept == "takeshotgungroovyzoey2biker"; } 
    else return false;
}
function ConceptTakeShotgunGroovy2BikerLaugh(query) {
    if("concept" in query) { return query.concept == "takeshotgungroovy2bikerlaugh"; } 
    else return false;
}
function ConceptC11M5NearFinale2(query) {
    if("concept" in query) { return query.concept == "c11m5nearfinale2"; } 
    else return false;
}
function IsFrancisC11M5Happy(query) {
    if("worldfrancisc11m5planereaction" in query) { return query.worldfrancisc11m5planereaction != 1; } 
    else return true;
}
function IsSmallTownBarricadeManager(query) {
    if("worldsmalltownbarricademanager" in query) { return query.worldsmalltownbarricademanager != 1; } 
    else return true;
}
function IsSmallTownBarricadeNamVet(query) {
    if("worldsmalltownbarricadenamvet" in query) { return query.worldsmalltownbarricadenamvet != 1; } 
    else return true;
}
function IsSmallTownBarricadeTeenGirl(query) {
    if("worldsmalltownbarricadeteengirl" in query) { return query.worldsmalltownbarricadeteengirl != 1; } 
    else return true;
}
function NoMercy(query) {
    if("campaign" in query) { return query.campaign == "l4d2_8"; } 
    else return false;
}
function IsNoMercy1(query) {
    if("map" in query) { return query.map == "c8m1_apartment"; } 
    else return false;
}
function IsNoMercy2(query) {
    if("map" in query) { return query.map == "c8m2_subway"; } 
    else return false;
}
function IsNoMercy3(query) {
    if("map" in query) { return query.map == "c8m3_sewers"; } 
    else return false;
}
function IsNoMercy4(query) {
    if("map" in query) { return query.map == "c8m4_interior"; } 
    else return false;
}
function IsNoMercy5(query) {
    if("map" in query) { return query.map == "c8m5_rooftop"; } 
    else return false;
}
function CrashCourse(query) {
    if("campaign" in query) { return query.campaign == "l4d2_9"; } 
    else return false;
}
function IsCrashCourse1(query) {
    if("map" in query) { return query.map == "c9m1_alleys"; } 
    else return false;
}
function IsCrashCourse2(query) {
    if("map" in query) { return query.map == "c9m2_lots"; } 
    else return false;
}
function DeathToll(query) {
    if("campaign" in query) { return query.campaign == "l4d2_10"; } 
    else return false;
}
function IsDeathToll1(query) {
    if("map" in query) { return query.map == "c10m1_caves"; } 
    else return false;
}
function IsDeathToll2(query) {
    if("map" in query) { return query.map == "c10m2_drainage"; } 
    else return false;
}
function IsDeathToll3(query) {
    if("map" in query) { return query.map == "c10m3_ranchhouse"; } 
    else return false;
}
function IsDeathToll4(query) {
    if("map" in query) { return query.map == "c10m4_mainstreet"; } 
    else return false;
}
function IsDeathToll5(query) {
    if("map" in query) { return query.map == "c10m5_houseboat"; } 
    else return false;
}
function DeadAir(query) {
    if("campaign" in query) { return query.campaign == "l4d2_11"; } 
    else return false;
}
function IsDeadAir1(query) {
    if("map" in query) { return query.map == "c11m1_greenhouse"; } 
    else return false;
}
function IsDeadAir2(query) {
    if("map" in query) { return query.map == "c11m2_offices"; } 
    else return false;
}
function IsDeadAir3(query) {
    if("map" in query) { return query.map == "c11m3_garage"; } 
    else return false;
}
function IsDeadAir4(query) {
    if("map" in query) { return query.map == "c11m4_terminal"; } 
    else return false;
}
function IsDeadAir5(query) {
    if("map" in query) { return query.map == "c11m5_runway"; } 
    else return false;
}
function BloodHarvest(query) {
    if("campaign" in query) { return query.campaign == "l4d2_12"; } 
    else return false;
}
function IsBloodHarvest1(query) {
    if("map" in query) { return query.map == "c12m1_hilltop"; } 
    else return false;
}
function IsBloodHarvest2(query) {
    if("map" in query) { return query.map == "c12m2_traintunnel"; } 
    else return false;
}
function IsBloodHarvest3(query) {
    if("map" in query) { return query.map == "c12m3_bridge"; } 
    else return false;
}
function IsBloodHarvest4(query) {
    if("map" in query) { return query.map == "c12m4_barn"; } 
    else return false;
}
function IsBloodHarvest5(query) {
    if("map" in query) { return query.map == "c12m5_cornfield"; } 
    else return false;
}
function NotFarm03Unhooked(query) {
    if("worldfarm03unhooked" in query) { return query.worldfarm03unhooked < 1; } 
    else return true;
}
function NotFarm03BridgeDown(query) {
    if("worldfarm03bridgedown" in query) { return query.worldfarm03bridgedown < 1; } 
    else return true;
}
function Farm03BridgeDown(query) {
    if("worldfarm03bridgedown" in query) { return query.worldfarm03bridgedown == 1; } 
    else return false;
}
function PanicEventBiker(query) {
    if("whodidit" in query) { return query.whodidit == "biker"; } 
    else return false;
}
function PanicEventNamVet(query) {
    if("whodidit" in query) { return query.whodidit == "namvet"; } 
    else return false;
}
function PanicEventManager(query) {
    if("whodidit" in query) { return query.whodidit == "manager"; } 
    else return false;
}
function PanicEventTeenGirl(query) {
    if("whodidit" in query) { return query.whodidit == "teengirl"; } 
    else return false;
}
function PanicEventDS(query) { return ( PanicEventCoach(query) || PanicEventGambler(query) || PanicEventMechanic(query) || PanicEventProducer(query) || PanicEventBiker(query) || PanicEventNamVet(query) || PanicEventManager(query) || PanicEventTeenGirl(query) ); }
function IsTriggeredByNamVet(query) {
    if("triggeredby" in query) { return query.triggeredby == "namvet"; } 
    else return false;
}
function IsTriggeredByBiker(query) {
    if("triggeredby" in query) { return query.triggeredby == "biker"; } 
    else return false;
}
function IsTriggeredByTeenGirl(query) {
    if("triggeredby" in query) { return query.triggeredby == "teengirl"; } 
    else return false;
}
function IsTriggeredByManager(query) {
    if("triggeredby" in query) { return query.triggeredby == "manager"; } 
    else return false;
}
function IsNotSaidLouisPounced(query) {
    if("worldsaidlouispounced" in query) { return query.worldsaidlouispounced != 1; } 
    else return true;
}
function IsNotSaidFrancisPounced(query) {
    if("worldsaidfrancispounced" in query) { return query.worldsaidfrancispounced != 1; } 
    else return true;
}
function IsNotSaidZoeyPounced(query) {
    if("worldsaidzoeypounced" in query) { return query.worldsaidzoeypounced != 1; } 
    else return true;
}
function IsNotSaidBillPounced(query) {
    if("worldsaidbillpounced" in query) { return query.worldsaidbillpounced != 1; } 
    else return true;
}
function IsNotSaidairport01_burning(query) {
    if("worldsaidairport01_burning" in query) { return query.worldsaidairport01_burning != 1; } 
    else return true;
}
function IsNotSaidairport01_path01(query) {
    if("worldsaidairport01_path01" in query) { return query.worldsaidairport01_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital01_path01(query) {
    if("worldsaidhospital01_path01" in query) { return query.worldsaidhospital01_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital01_path02(query) {
    if("worldsaidhospital01_path02" in query) { return query.worldsaidhospital01_path02 != 1; } 
    else return true;
}
function IsNotSaidhospital01_path03(query) {
    if("worldsaidhospital01_path03" in query) { return query.worldsaidhospital01_path03 != 1; } 
    else return true;
}
function IsSaidSmalltown01_path01(query) {
    if("worldsaidsmalltown01_path01" in query) { return query.worldsaidsmalltown01_path01 == 1; } 
    else return false;
}
function IsNotSaidSmalltown01_path01(query) {
    if("worldsaidsmalltown01_path01" in query) { return query.worldsaidsmalltown01_path01 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path02(query) {
    if("worldsaidsmalltown01_path02" in query) { return query.worldsaidsmalltown01_path02 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path03(query) {
    if("worldsaidsmalltown01_path03" in query) { return query.worldsaidsmalltown01_path03 != 1; } 
    else return true;
}
function IsNotSaidSmalltown01_path04(query) {
    if("worldsaidsmalltown01_path04" in query) { return query.worldsaidsmalltown01_path04 != 1; } 
    else return true;
}
function IsNotSaidhospital02_path01(query) {
    if("worldsaidhospital02_path01" in query) { return query.worldsaidhospital02_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital02_path02(query) {
    if("worldsaidhospital02_path02" in query) { return query.worldsaidhospital02_path02 != 1; } 
    else return true;
}
function IsNotSaidhospital02_path03(query) {
    if("worldsaidhospital02_path03" in query) { return query.worldsaidhospital02_path03 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path01(query) {
    if("worldsaidhospital03_path01" in query) { return query.worldsaidhospital03_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path02(query) {
    if("worldsaidhospital03_path02" in query) { return query.worldsaidhospital03_path02 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path03(query) {
    if("worldsaidhospital03_path03" in query) { return query.worldsaidhospital03_path03 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path04(query) {
    if("worldsaidhospital03_path04" in query) { return query.worldsaidhospital03_path04 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path05(query) {
    if("worldsaidhospital03_path05" in query) { return query.worldsaidhospital03_path05 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path06(query) {
    if("worldsaidhospital03_path06" in query) { return query.worldsaidhospital03_path06 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path07(query) {
    if("worldsaidhospital03_path07" in query) { return query.worldsaidhospital03_path07 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path08(query) {
    if("worldsaidhospital03_path08" in query) { return query.worldsaidhospital03_path08 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path09(query) {
    if("worldsaidhospital03_path09" in query) { return query.worldsaidhospital03_path09 != 1; } 
    else return true;
}
function IsNotSaidhospital03_path10(query) {
    if("worldsaidhospital03_path10" in query) { return query.worldsaidhospital03_path10 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path01(query) {
    if("worldsaidhospital04_path01" in query) { return query.worldsaidhospital04_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path02(query) {
    if("worldsaidhospital04_path02" in query) { return query.worldsaidhospital04_path02 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path03(query) {
    if("worldsaidhospital04_path03" in query) { return query.worldsaidhospital04_path03 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path04(query) {
    if("worldsaidhospital04_path04" in query) { return query.worldsaidhospital04_path04 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path05(query) {
    if("worldsaidhospital04_path05" in query) { return query.worldsaidhospital04_path05 != 1; } 
    else return true;
}
function IsNotSaidhospital04_path06(query) {
    if("worldsaidhospital04_path06" in query) { return query.worldsaidhospital04_path06 != 1; } 
    else return true;
}
function IsNotSaidhospital05_path01(query) {
    if("worldsaidhospital05_path01" in query) { return query.worldsaidhospital05_path01 != 1; } 
    else return true;
}
function IsNotSaidhospital05_path02(query) {
    if("worldsaidhospital05_path02" in query) { return query.worldsaidhospital05_path02 != 1; } 
    else return true;
}
function IsNotSaidhospital05_path03(query) {
    if("worldsaidhospital05_path03" in query) { return query.worldsaidhospital05_path03 != 1; } 
    else return true;
}
function IsNotSaidhospital05_path04(query) {
    if("worldsaidhospital05_path04" in query) { return query.worldsaidhospital05_path04 != 1; } 
    else return true;
}
function IsNotSaidUpThatLadder(query) {
    if("worldsaidupthatladder" in query) { return query.worldsaidupthatladder != 1; } 
    else return true;
}
function IsNotSaidThroughHere(query) {
    if("worldsaidthroughhere" in query) { return query.worldsaidthroughhere != 1; } 
    else return true;
}
function IsNotSaidLaughFrancis(query) {
    if("worldsaidlaughfrancis" in query) { return query.worldsaidlaughfrancis != 1; } 
    else return true;
}
function IsNotSaidLaughZoey(query) {
    if("worldsaidlaughzoey" in query) { return query.worldsaidlaughzoey != 1; } 
    else return true;
}
function IsNotSaidZoeySuggestsCrane(query) {
    if("worldsaidzoeysuggestscrane" in query) { return query.worldsaidzoeysuggestscrane != 1; } 
    else return true;
}
function IsNotSaidFrancisSuggestsCrane(query) {
    if("worldsaidfrancissuggestscrane" in query) { return query.worldsaidfrancissuggestscrane != 1; } 
    else return true;
}
function IsNotSaidAirport04VanStarted(query) {
    if("worldsaidairport04vanstarted" in query) { return query.worldsaidairport04vanstarted != 1; } 
    else return true;
}
function IsNotSaidAirport03FireStarted(query) {
    if("worldsaidairport03firestarted" in query) { return query.worldsaidairport03firestarted != 1; } 
    else return true;
}
function IsNotSaidAirport03FirePathClear(query) {
    if("worldairport03firepathclear" in query) { return query.worldairport03firepathclear != 1; } 
    else return true;
}
function IsNotSaidAirport03FirePathCleara(query) {
    if("worldairport03firepathcleara" in query) { return query.worldairport03firepathcleara != 1; } 
    else return true;
}
function IsNotSaidairport01_path02(query) {
    if("worldsaidairport01_path02" in query) { return query.worldsaidairport01_path02 != 1; } 
    else return true;
}
function IsNotSaidairport02_path01(query) {
    if("worldsaidairport02_path01" in query) { return query.worldsaidairport02_path01 != 1; } 
    else return true;
}
function IsNotSaidairport02_path02(query) {
    if("worldsaidairport02_path02" in query) { return query.worldsaidairport02_path02 != 1; } 
    else return true;
}
function IsNotAirport02NagTimer(query) {
    if("worldairport02nagtimer" in query) { return query.worldairport02nagtimer != 1; } 
    else return true;
}
function IsNotSaidairport02_path03(query) {
    if("worldsaidairport02_path03" in query) { return query.worldsaidairport02_path03 != 1; } 
    else return true;
}
function IsNotSaidairport02_path04(query) {
    if("worldsaidairport02_path04" in query) { return query.worldsaidairport02_path04 != 1; } 
    else return true;
}
function IsNotSaidairport02_path05(query) {
    if("worldsaidairport02_path05" in query) { return query.worldsaidairport02_path05 != 1; } 
    else return true;
}
function IsNotSaidairport02_path06(query) {
    if("worldsaidairport02_path06" in query) { return query.worldsaidairport02_path06 != 1; } 
    else return true;
}
function IsNotSaidairport03_01(query) {
    if("worldsaidairport03_01" in query) { return query.worldsaidairport03_01 != 1; } 
    else return true;
}
function IsNotSaidairport03_02(query) {
    if("worldsaidairport03_02" in query) { return query.worldsaidairport03_02 != 1; } 
    else return true;
}
function IsNotSaidairport03_03(query) {
    if("worldsaidairport03_03" in query) { return query.worldsaidairport03_03 != 1; } 
    else return true;
}
function IsNotSaidairport03_04(query) {
    if("worldsaidairport03_04" in query) { return query.worldsaidairport03_04 != 1; } 
    else return true;
}
function IsNotSaidairport03_05(query) {
    if("worldsaidairport03_05" in query) { return query.worldsaidairport03_05 != 1; } 
    else return true;
}
function IsNotSaidairport03_06(query) {
    if("worldsaidairport03_06" in query) { return query.worldsaidairport03_06 != 1; } 
    else return true;
}
function IsNotSaidairport04_01(query) {
    if("worldsaidairport04_01" in query) { return query.worldsaidairport04_01 != 1; } 
    else return true;
}
function IsNotSaidairport04_02(query) {
    if("worldsaidairport04_02" in query) { return query.worldsaidairport04_02 != 1; } 
    else return true;
}
function IsNotSaidairport04_03(query) {
    if("worldsaidairport04_03" in query) { return query.worldsaidairport04_03 != 1; } 
    else return true;
}
function IsNotSaidairport04_04(query) {
    if("worldsaidairport04_04" in query) { return query.worldsaidairport04_04 != 1; } 
    else return true;
}
function IsNotSaidairport04_05(query) {
    if("worldsaidairport04_05" in query) { return query.worldsaidairport04_05 != 1; } 
    else return true;
}
function IsNotSaidairport04_06(query) {
    if("worldsaidairport04_06" in query) { return query.worldsaidairport04_06 != 1; } 
    else return true;
}
function IsNotSaidairport04_07(query) {
    if("worldsaidairport04_07" in query) { return query.worldsaidairport04_07 != 1; } 
    else return true;
}
function IsNotSaidairport04_08(query) {
    if("worldsaidairport04_08" in query) { return query.worldsaidairport04_08 != 1; } 
    else return true;
}
function IsNotSaidairport04_09(query) {
    if("worldsaidairport04_09" in query) { return query.worldsaidairport04_09 != 1; } 
    else return true;
}
function IsNotSaidairport02_creshendo01a(query) {
    if("worldsaidairport02_creshendo01a" in query) { return query.worldsaidairport02_creshendo01a != 1; } 
    else return true;
}
function IsNotSaidairport02_creshendo01b(query) {
    if("worldsaidairport02_creshendo01b" in query) { return query.worldsaidairport02_creshendo01b != 1; } 
    else return true;
}
function IsNotSaidFarm05_path10(query) {
    if("worldsaidfarm05_path10" in query) { return query.worldsaidfarm05_path10 != 1; } 
    else return true;
}
function IsNotSaidairport03_barrier(query) {
    if("worldsaidairport03_barrier" in query) { return query.worldsaidairport03_barrier != 1; } 
    else return true;
}
function IsNotSaidairport04_van(query) {
    if("worldsaidairport04_van" in query) { return query.worldsaidairport04_van != 1; } 
    else return true;
}
function IsNotSaidPathClearVan(query) {
    if("worldsaidpathclearvan" in query) { return query.worldsaidpathclearvan != 1; } 
    else return true;
}
function Ishospital01_path01(query) {
    if("subject" in query) { return query.subject == "hospital01_path01"; } 
    else return false;
}
function Ishospital01_path02(query) {
    if("subject" in query) { return query.subject == "hospital01_path02"; } 
    else return false;
}
function Ishospital01_path03(query) {
    if("subject" in query) { return query.subject == "hospital01_path03"; } 
    else return false;
}
function IsSmalltown01_path01(query) {
    if("subject" in query) { return query.subject == "smalltown01_path01"; } 
    else return false;
}
function IsSmalltown01_path02(query) {
    if("subject" in query) { return query.subject == "smalltown01_path02"; } 
    else return false;
}
function IsSmalltown01_path03(query) {
    if("subject" in query) { return query.subject == "smalltown01_path03"; } 
    else return false;
}
function IsSmalltown01_path04(query) {
    if("subject" in query) { return query.subject == "smalltown01_path04"; } 
    else return false;
}
function Ishospital02_path01(query) {
    if("subject" in query) { return query.subject == "hospital02_path01"; } 
    else return false;
}
function Ishospital02_path02(query) {
    if("subject" in query) { return query.subject == "hospital02_path02"; } 
    else return false;
}
function Ishospital02_path03(query) {
    if("subject" in query) { return query.subject == "hospital02_path03"; } 
    else return false;
}
function Ishospital02_path04(query) {
    if("subject" in query) { return query.subject == "hospital02_path04"; } 
    else return false;
}
function Ishospital03_path01(query) {
    if("subject" in query) { return query.subject == "hospital03_path01"; } 
    else return false;
}
function Ishospital03_path02(query) {
    if("subject" in query) { return query.subject == "hospital03_path02"; } 
    else return false;
}
function Ishospital03_path03(query) {
    if("subject" in query) { return query.subject == "hospital03_path03"; } 
    else return false;
}
function Ishospital03_path04(query) {
    if("subject" in query) { return query.subject == "hospital03_path04"; } 
    else return false;
}
function Ishospital03_path05(query) {
    if("subject" in query) { return query.subject == "hospital03_path05"; } 
    else return false;
}
function Ishospital03_path06(query) {
    if("subject" in query) { return query.subject == "hospital03_path06"; } 
    else return false;
}
function Ishospital03_path07(query) {
    if("subject" in query) { return query.subject == "hospital03_path07"; } 
    else return false;
}
function Ishospital03_path08(query) {
    if("subject" in query) { return query.subject == "hospital03_path08"; } 
    else return false;
}
function Ishospital03_path09(query) {
    if("subject" in query) { return query.subject == "hospital03_path09"; } 
    else return false;
}
function Ishospital03_path10(query) {
    if("subject" in query) { return query.subject == "hospital03_path10"; } 
    else return false;
}
function Ishospital03_path11(query) {
    if("subject" in query) { return query.subject == "hospital03_path11"; } 
    else return false;
}
function Ishospital04_path01(query) {
    if("subject" in query) { return query.subject == "hospital04_path01"; } 
    else return false;
}
function Ishospital04_path02(query) {
    if("subject" in query) { return query.subject == "hospital04_path02"; } 
    else return false;
}
function Ishospital04_path03(query) {
    if("subject" in query) { return query.subject == "hospital04_path03"; } 
    else return false;
}
function Ishospital04_path04(query) {
    if("subject" in query) { return query.subject == "hospital04_path04"; } 
    else return false;
}
function Ishospital04_path05(query) {
    if("subject" in query) { return query.subject == "hospital04_path05"; } 
    else return false;
}
function Ishospital04_path06(query) {
    if("subject" in query) { return query.subject == "hospital04_path06"; } 
    else return false;
}
function Ishospital04_path07(query) {
    if("subject" in query) { return query.subject == "hospital04_path07"; } 
    else return false;
}
function Ishospital05_path01(query) {
    if("subject" in query) { return query.subject == "hospital05_path01"; } 
    else return false;
}
function Ishospital05_path02(query) {
    if("subject" in query) { return query.subject == "hospital05_path02"; } 
    else return false;
}
function Ishospital05_path03(query) {
    if("subject" in query) { return query.subject == "hospital05_path03"; } 
    else return false;
}
function Ishospital05_path04(query) {
    if("subject" in query) { return query.subject == "hospital05_path04"; } 
    else return false;
}
function IsUpThatLadder(query) {
    if("subject" in query) { return query.subject == "upthatladder"; } 
    else return false;
}
function IsThroughHere(query) {
    if("subject" in query) { return query.subject == "throughhere"; } 
    else return false;
}
function Isairport01_path02(query) {
    if("subject" in query) { return query.subject == "airport01_path02"; } 
    else return false;
}
function Isairport02_path01(query) {
    if("subject" in query) { return query.subject == "airport02_path01"; } 
    else return false;
}
function Isairport02_path02(query) {
    if("subject" in query) { return query.subject == "airport02_path02"; } 
    else return false;
}
function Isairport02_path03(query) {
    if("subject" in query) { return query.subject == "airport02_path03"; } 
    else return false;
}
function Isairport02_path04(query) {
    if("subject" in query) { return query.subject == "airport02_path04"; } 
    else return false;
}
function Isairport02_path05(query) {
    if("subject" in query) { return query.subject == "airport02_path05"; } 
    else return false;
}
function Isairport02_path06(query) {
    if("subject" in query) { return query.subject == "airport02_path06"; } 
    else return false;
}
function Isairport03_01(query) {
    if("subject" in query) { return query.subject == "airport03_01"; } 
    else return false;
}
function Isairport03_02(query) {
    if("subject" in query) { return query.subject == "airport03_02"; } 
    else return false;
}
function Isairport03_03(query) {
    if("subject" in query) { return query.subject == "airport03_03"; } 
    else return false;
}
function Isairport03_04(query) {
    if("subject" in query) { return query.subject == "airport03_04"; } 
    else return false;
}
function Isairport03_05(query) {
    if("subject" in query) { return query.subject == "airport03_05"; } 
    else return false;
}
function Isairport03_06(query) {
    if("subject" in query) { return query.subject == "airport03_06"; } 
    else return false;
}
function Isairport03_07(query) {
    if("subject" in query) { return query.subject == "airport03_07"; } 
    else return false;
}
function Isairport04_01(query) {
    if("subject" in query) { return query.subject == "airport04_01"; } 
    else return false;
}
function Isairport04_02(query) {
    if("subject" in query) { return query.subject == "airport04_02"; } 
    else return false;
}
function Isairport04_03(query) {
    if("subject" in query) { return query.subject == "airport04_03"; } 
    else return false;
}
function Isairport04_04(query) {
    if("subject" in query) { return query.subject == "airport04_04"; } 
    else return false;
}
function Isairport04_05(query) {
    if("subject" in query) { return query.subject == "airport04_05"; } 
    else return false;
}
function Isairport04_06(query) {
    if("subject" in query) { return query.subject == "airport04_06"; } 
    else return false;
}
function Isairport04_07(query) {
    if("subject" in query) { return query.subject == "airport04_07"; } 
    else return false;
}
function Isairport04_08(query) {
    if("subject" in query) { return query.subject == "airport04_08"; } 
    else return false;
}
function Isairport04_09(query) {
    if("subject" in query) { return query.subject == "airport04_09"; } 
    else return false;
}
function Isairport02_creshendo01a(query) {
    if("subject" in query) { return query.subject == "airport02_creshendo01a"; } 
    else return false;
}
function Isairport02_creshendo01b(query) {
    if("subject" in query) { return query.subject == "airport02_creshendo01b"; } 
    else return false;
}
function Ishospital02_safehouse(query) {
    if("subject" in query) { return query.subject == "hospital02_safehouse"; } 
    else return false;
}
function Isairport03_barrier(query) {
    if("subject" in query) { return query.subject == "airport03_barrier"; } 
    else return false;
}
function Isairport04_van(query) {
    if("subject" in query) { return query.subject == "airport04_van"; } 
    else return false;
}
function IsPathClearVan(query) {
    if("subject" in query) { return query.subject == "pathclearvan"; } 
    else return false;
}
function ConceptZoeySuggestsCrane(query) {
    if("concept" in query) { return query.concept == "zoeysuggestscrane"; } 
    else return false;
}
function ConceptFrancisSuggestsCrane(query) {
    if("concept" in query) { return query.concept == "francissuggestscrane"; } 
    else return false;
}
function ConceptLaughFrancis(query) {
    if("concept" in query) { return query.concept == "laughfrancis"; } 
    else return false;
}
function ConceptLaughZoey(query) {
    if("concept" in query) { return query.concept == "laughzoey"; } 
    else return false;
}
// terror_player_dlc3.txt ===================================================================================================================
function IsNotSaidc7m1_harborblocked(query) {
    if("worldsaidc7m1_harborblocked" in query) { return query.worldsaidc7m1_harborblocked != 1; } 
    else return true;
}
function IsNotSaidc7m1_pretank(query) {
    if("worldsaidc7m1_pretank" in query) { return query.worldsaidc7m1_pretank != 1; } 
    else return true;
}
function IsNotSaidc7m1_tankcar(query) {
    if("worldsaidc7m1_tankcar" in query) { return query.worldsaidc7m1_tankcar != 1; } 
    else return true;
}
function IsNotSaidc7m2_seebarge(query) {
    if("worldsaidc7m2_seebarge" in query) { return query.worldsaidc7m2_seebarge != 1; } 
    else return true;
}
function IsNotSaidc7m2_gravelhill(query) {
    if("worldsaidc7m2_gravelhill" in query) { return query.worldsaidc7m2_gravelhill != 1; } 
    else return true;
}
function IsNotSaidc7m2_onbarge(query) {
    if("worldsaidc7m2_onbarge" in query) { return query.worldsaidc7m2_onbarge != 1; } 
    else return true;
}
function IsNotSaidc7m3_seesailboat(query) {
    if("worldsaidc7m3_seesailboat" in query) { return query.worldsaidc7m3_seesailboat != 1; } 
    else return true;
}
function IsNotSaidInfo_powerboat(query) {
    if("worldsaidinfo_powerboat" in query) { return query.worldsaidinfo_powerboat != 1; } 
    else return true;
}
function IsNotSaidInfo_powerboat2(query) {
    if("worldsaidinfo_powerboat2" in query) { return query.worldsaidinfo_powerboat2 != 1; } 
    else return true;
}
function IsNotSaidinfo_sunkboatthere(query) {
    if("worldsaidinfo_sunkboatthere" in query) { return query.worldsaidinfo_sunkboatthere != 1; } 
    else return true;
}
function IsNotSaidinfo_trailerboat(query) {
    if("worldsaidinfo_trailerboat" in query) { return query.worldsaidinfo_trailerboat != 1; } 
    else return true;
}
function IsNotSaidc7m2_listingtug(query) {
    if("worldsaidc7m2_listingtug" in query) { return query.worldsaidc7m2_listingtug != 1; } 
    else return true;
}
function IsNotSaidinfo_powerboat3(query) {
    if("worldsaidinfo_powerboat3" in query) { return query.worldsaidinfo_powerboat3 != 1; } 
    else return true;
}
function IsNotSaidinfo_powerboat4(query) {
    if("worldsaidinfo_powerboat4" in query) { return query.worldsaidinfo_powerboat4 != 1; } 
    else return true;
}
function IsNotSaidinfo_carboat(query) {
    if("worldsaidinfo_carboat" in query) { return query.worldsaidinfo_carboat != 1; } 
    else return true;
}
function IsNotSaidinfo_trailerboatruck(query) {
    if("worldsaidinfo_trailerboatruck" in query) { return query.worldsaidinfo_trailerboatruck != 1; } 
    else return true;
}
function IsNotSaidinfo_carnotboat(query) {
    if("worldsaidinfo_carnotboat" in query) { return query.worldsaidinfo_carnotboat != 1; } 
    else return true;
}
function IsNotSaidc7m2_overboat(query) {
    if("worldsaidc7m2_overboat" in query) { return query.worldsaidc7m2_overboat != 1; } 
    else return true;
}
function IsNotSaidc7m2_throughhere(query) {
    if("worldsaidc7m2_throughhere" in query) { return query.worldsaidc7m2_throughhere != 1; } 
    else return true;
}
function IsNotSaidc7m2_downchute(query) {
    if("worldsaidc7m2_downchute" in query) { return query.worldsaidc7m2_downchute != 1; } 
    else return true;
}
function IsNotSaidc7m2_climbupcrap(query) {
    if("worldsaidc7m2_climbupcrap" in query) { return query.worldsaidc7m2_climbupcrap != 1; } 
    else return true;
}
function IsNotSaidc7m1_bricktop(query) {
    if("worldsaidc7m1_bricktop" in query) { return query.worldsaidc7m1_bricktop != 1; } 
    else return true;
}
function IsNotSaidc7m1_pastbricks(query) {
    if("worldsaidc7m1_pastbricks" in query) { return query.worldsaidc7m1_pastbricks != 1; } 
    else return true;
}
function Isc7m1_harborblocked(query) {
    if("subject" in query) { return query.subject == "c7m1_harborblocked"; } 
    else return false;
}
function Isc7m1_pretank(query) {
    if("subject" in query) { return query.subject == "c7m1_pretank"; } 
    else return false;
}
function Isc7m1_tankcar(query) {
    if("subject" in query) { return query.subject == "c7m1_tankcar"; } 
    else return false;
}
function Isc7m2_seebarge(query) {
    if("subject" in query) { return query.subject == "c7m2_seebarge"; } 
    else return false;
}
function Isc7m2_gravelhill(query) {
    if("subject" in query) { return query.subject == "c7m2_gravelhill"; } 
    else return false;
}
function Isc7m2_onbarge(query) {
    if("subject" in query) { return query.subject == "c7m2_onbarge"; } 
    else return false;
}
function Isc7m3_seesailboat(query) {
    if("subject" in query) { return query.subject == "c7m3_seesailboat"; } 
    else return false;
}
function IsInfo_powerboat(query) {
    if("subject" in query) { return query.subject == "info_powerboat"; } 
    else return false;
}
function IsInfo_powerboat2(query) {
    if("subject" in query) { return query.subject == "info_powerboat2"; } 
    else return false;
}
function Isinfo_sunkboatthere(query) {
    if("subject" in query) { return query.subject == "info_sunkboatthere"; } 
    else return false;
}
function Isinfo_trailerboat(query) {
    if("subject" in query) { return query.subject == "info_trailerboat"; } 
    else return false;
}
function Isc7m2_listingtug(query) {
    if("subject" in query) { return query.subject == "c7m2_listingtug"; } 
    else return false;
}
function Isinfo_powerboat3(query) {
    if("subject" in query) { return query.subject == "info_powerboat3"; } 
    else return false;
}
function Isinfo_powerboat4(query) {
    if("subject" in query) { return query.subject == "info_powerboat4"; } 
    else return false;
}
function Isinfo_carboat(query) {
    if("subject" in query) { return query.subject == "info_carboat"; } 
    else return false;
}
function Isinfo_trailerboatruck(query) {
    if("subject" in query) { return query.subject == "info_trailerboatruck"; } 
    else return false;
}
function Isinfo_carnotboat(query) {
    if("subject" in query) { return query.subject == "info_carnotboat"; } 
    else return false;
}
function Isc7m2_overboat(query) {
    if("subject" in query) { return query.subject == "c7m2_overboat"; } 
    else return false;
}
function Isc7m2_throughhere(query) {
    if("subject" in query) { return query.subject == "c7m2_throughhere"; } 
    else return false;
}
function Isc7m2_downchute(query) {
    if("subject" in query) { return query.subject == "c7m2_downchute"; } 
    else return false;
}
function Isc7m2_climbupcrap(query) {
    if("subject" in query) { return query.subject == "c7m2_climbupcrap"; } 
    else return false;
}
function Isc7m1_bricktop(query) {
    if("subject" in query) { return query.subject == "c7m1_bricktop"; } 
    else return false;
}
function Isc7m1_pastbricks(query) {
    if("subject" in query) { return query.subject == "c7m1_pastbricks"; } 
    else return false;
}
