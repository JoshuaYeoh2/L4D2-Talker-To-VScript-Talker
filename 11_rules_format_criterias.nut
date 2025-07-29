local replica_soldier_rules = 
[
	{
		name = "C1M1InSmokeReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsSaidC1M1InSmoke],
			[ismap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response C1M1InSmokeReplica
		then any C1M1Cough foo:0 -0.584 //[Coughing from smoke]
	},
	{
		name = "C1M3AlarmOffReplica",
		criteria = 
		[
			[ConceptC1M3AlarmOff2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M3AlarmOffReplica
		then any C1M3AlarmOffa foo:0 .5 //Got it!
	},
	{
		name = "C1M3AlarmActiveReplica",
		criteria = 
		[
			[ConceptC1M3AlarmActive],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M3AlarmActiveReplica
	},
	{
		name = "C4M3SaferoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[isc4m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		Response C4M3SaferoomReplica
		then any _c4m3_startsafe02 foo:0 0.01 //Allright, people. Everybody got a can?
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "L4D1PlayerNiceShotFrancisReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsBiker],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		Response L4D1PlayerNiceShotFrancisReplica
	},
	{
		name = "L4D1PlayerNiceShotFrancisC6M3Replica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsC6M3_Port],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsBiker],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		Response L4D1PlayerNiceShotFrancisC6M3Replica
	},
	{
		name = "L4D1PlayerNiceShotLouisReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsManager],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		Response L4D1PlayerNiceShotLouisReplica
	},
	{
		name = "L4D1PlayerNiceShotLouisC6M3Replica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsC6M3_Port],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsManager],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		Response L4D1PlayerNiceShotLouisC6M3Replica
	},
	{
		name = "L4D1PlayerNiceShotZoeyReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsTeenGirl],
			[ChanceToFire10Percent],
			[IsNotSpeaking],
		],
		Response L4D1PlayerNiceShotZoeyReplica
	},
	{
		name = "L4D1PlayerNiceShotZoeyC6M3Replica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsC6M3_Port],
			[IssuerNotSoClose],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		Response L4D1PlayerNiceShotZoeyReplica
	},
	{
		name = "PlayerNiceShotReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		Response PlayerNiceShotReplica
	},
	{
		name = "L4D1PlayerNiceShotReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerNotSoClose],
			[IsC6M3_Port],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotGambler],
			[SubjectIsNotMechanic],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
		],
		Response PlayerNiceShotReplica
	},
	{
		name = "PlayerNiceShotGamblerReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire10Percent],
			[IsWorldTalkReplica],
			[SubjectIsGambler],
		],
		Response PlayerNiceShotGamblerReplica
	},
	{
		name = "PlayerNiceShotMechanicReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire10Percent],
			[IsWorldTalkReplica],
			[SubjectIsMechanic],
		],
		Response PlayerNiceShotMechanicReplica
	},
	{
		name = "PlayerNiceShotProducerReplica",
		criteria = 
		[
			[ConceptPlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IssuerClose],
			[IsTalk],
			[IsTalkReplica],
			[ChanceToFire10Percent],
			[IsWorldTalkReplica],
			[SubjectIsProducer],
		],
		Response PlayerNiceShotProducerReplica
	},
	{
		name = "SurvivorMournGamblerReplica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadGambler],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
		],
		Response SurvivorMournGamblerReplica
	},
	{
		name = "SurvivorMournGamblerC1Replica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadGambler],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		Response SurvivorMournGamblerC1Replica
	},
	{
		name = "SurvivorMournMechanicReplica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadMechanic],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
		],
		Response SurvivorMournMechanicReplica
	},
	{
		name = "SurvivorMournMechanicC1Replica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadMechanic],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		Response SurvivorMournMechanicC1Replica
	},
	{
		name = "SurvivorMournProducerReplica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadProducer],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
		],
		Response SurvivorMournProducerReplica
	},
	{
		name = "SurvivorMournProducerC1Replica",
		criteria = 
		[
			[ConceptPlayerSeeDeadPlayer],
			[IsNotCoughing],
			[IsReplica],
			[IsDeadProducer],
			[IsNotSaidSomeoneDied],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[HasNotDefibrillator],
			[IsWorldTalkReplica],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		Response SurvivorMournProducerC1Replica
	},
	{
		name = "_C1M1_ElevatorHelloStartAllAliveReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsEveryoneAlive],
		],
		Response _C1M1_ElevatorHelloStartAllAliveReplica
		then mechanic _C1M1_ElevatorHello05c foo:0 -5.262 //So. Pleased to meet you. You can call me Replica. What's your name?
	},
	{
		name = "C1M1_ElevatorHelloStart3AliveReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithOnlyThree],
		],
		Response C1M1_ElevatorHelloStart3AliveReplica
		then any _C1M1_ElevatorHello3AliveName1 foo:0 0.1 //5.916 There we go. Most people call me Replica. And we're gonna be okay. Just gotta keep our heads.
		ApplyContext "ReplicaIntroduced:1:0"
		applycontexttoworld
	},
	{
		name = "C1M1_ElevatorHelloStart3AliveEReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithOnlyThree],
			[IsMechanicNotAlive],
		],
		Response C1M1_ElevatorHelloStart3AliveEReplica
		then any _C1M1_ElevatorHello3AliveExtra1 foo:0 0.1 //Ahh damnit, I can't take losing anymore people.
	},
	{
		name = "C1M1_ElevatorHelloStart2AliveReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithTwo],
		],
		Response C1M1_ElevatorHelloStart2AliveReplica
		then any _C1M1_ElevatorHello2AliveName2 foo:0 -5.262 // So. Pleased to meet you. You can call me Replica. What's your name?
	},
	{
		name = "C1M1_ElevatorHelloStart2AliveRReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWithTwo],
			[IsProducerAlive],
			[ChanceToFire30Percent],
		],
		Response C1M1_ElevatorHelloStart2AliveRReplica
		then producer _C1M1_ElevatorHello2AliveName2 foo:0 -7.056 //My name's Replica. I don't like bein' here any more than you do-but if we gotta fight, we might as well fight together.
	},
	{
		name = "C3M1FerryInTransitReplica",
		criteria = 
		[
			[ConceptC3M1FerryInTransit],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidC3M1FerryInTransit],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M1FerryInTransitReplica
		ApplyContext "SaidC3M1FerryInTransit:1:0"
		applycontexttoworld
	},
	{
		name = "Playerc1m1_enter_elevatorReplica",
		criteria = 
		[
			[Conceptc1m1_enter_elevator],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidc1m1_enter_elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
		],
		Response Playerc1m1_enter_elevatorReplica
		then self C1M1ElevatorRules foo:0 0.1 //I don't think you're supposed to use an elevator when the buildin's on fire.
		ApplyContext "Saidc1m1_enter_elevator:1:0"
		applycontexttoworld
	},
	{
		name = "Playerc1m1_elevator_pushbuttonReplica",
		criteria = 
		[
			[Conceptc1m1_elevator_pushbutton],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidc1m1_elevator_pushbutton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
		],
		Response Playerc1m1_elevator_pushbuttonReplica
		ApplyContext "Saidc1m1_elevator_pushbutton:1:0"
		applycontexttoworld
	},
	{
		name = "C1M1ElevatorRulesReplica",
		criteria = 
		[
			[ConceptC1M1ElevatorRules],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M1ElevatorRulesReplica
	},
	{
		name = "PlayerRemarkC1M2PreAlarmDoorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2PreStoreAlarm],
			[IsNotSaidWorldC1M2PreStoreAlarm],
			[IsNotSaidC1M2AlarmSetoff],
			[IsTalk],
			[IsTalkReplica],
			[IsTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M2PreAlarmDoorReplica
		ApplyContext "SaidWorldC1M2PreStoreAlarm:1:0"
		applycontexttoworld
	},
	{
		name = "C1M2AlarmDoor2Replica",
		criteria = 
		[
			[ConceptC1M2AlarmDoor2],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsTalkReplica],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M2AlarmDoor2Replica
		then orator C1M2StoreAlarm foo:0 0.3 //Let's go people.
	},
	{
		name = "PlayerRemarkC1M2PostAlarmDoorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2StoreAlarm],
			[IsSaidC1M2AlarmSetoff],
			[IsSubjectNear300],
			[HasWhitakerCola],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_SaidC1M2GrabbedCola],
		],
		Response PlayerRemarkC1M2PostAlarmDoorReplica
		then orator C1M2WhitakerErrandInProgress foo:0 1 //
		ApplyContext "C1M2AlarmSetOff:2:0"
		applycontexttoworld
	},
	{
		name = "PlayerC1M2GrabbingColaReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_NotSaidC1M2GrabbedCola],
		],
		Response PlayerC1M2GrabbingColaReplica
		ApplyContext "SaidC1M2GrabbingCola2:1:5,_auto_SaidC1M2GrabbedCola:1:0,Talk:1:3.235"
		applycontexttoworld
	},
	{
		name = "PlayerC1M2GrabbingCola2Replica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidC1M2GrabbingCola2],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsPickedUpColaBottles],
			[ismap_c1m2_streets],
			[_auto_SaidC1M2GrabbedCola],
		],
		Response PlayerC1M2GrabbingCola2Replica
		ApplyContext "SaidC1M2GrabbingCola2:1:5,Talk:1:3.235"
		applycontexttoworld
	},
	{
		name = "PlayerC1M2FirstOutsideResponseReplica",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse],
			[IsReplica],
			[FromIsAnOrator],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerC1M2FirstOutsideResponseReplica
		then orator C1M2FirstOutsideResponse3 foo:0 -4.417 //Well man-I'll get you your drinks, but you better help us.
	},
	{
		name = "PlayerC1M2FirstOutsideResponse3aReplica",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse3a],
			[IsReplica],
			[FromIsAnOrator],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerC1M2FirstOutsideResponse3aReplica
		then orator Whitaker.Nags foo:0 10 //
	},
	{
		name = "C1M2FirstOutsideResponse8aReplica",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse8a],
			[IsReplica],
			[FromIsAnOrator],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M2FirstOutsideResponse8aReplica
		then orator C1M2FirstOutsideResponse8b foo:0 0 //Cola and nuts? Could go for some myself. Better not be diet cola. Because that I will not do.
	},
	{
		name = "C1M2FirstOutsideResponse8bReplica",
		criteria = 
		[
			[ConceptC1M2FirstOutsideResponse8b],
			[IsReplica],
			[FromIsGambler],
			[IsNotSaidC1M2AlarmSetoff],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M2FirstOutsideResponse8bReplica
		then orator C1M2FirstOutsideResponse8c foo:0 0 //Nick, don't give me that look. Cola and nuts might be this man's last meal, we can't deny him that. We get him his snacks, he helps us. I'm good with it.
	},
	{
		name = "PlayerC1M2InsideGunShop2Replica",
		criteria = 
		[
			[ConceptC1M2InsideGunShop2],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidC1M2InsideGunShop],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerC1M2InsideGunShop2Replica
		ApplyContext "Talk:1:2,SaidC1M2InsideGunShop:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerC3M1CallFerry2Replica",
		criteria = 
		[
			[ConceptC3M1CallFerry2],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsReplicaActor],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerC3M1CallFerry2Replica
		then any C3M1FerryInTransit foo:0 25 //Get ready, callin' the boat.
	},
	{
		name = "PlayerC3M1FerryLandedIdleReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[C3M1Ferry],
			[IsNotIncapacitated],
			[NotInCombat],
			[IsNotAlone],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerC3M1FerryLandedIdleReplica
		ApplyContext "Talk:1:4"
		applycontexttoworld
	},
	{
		name = "PlayerC3M1FerryLaunched2aReplica",
		criteria = 
		[
			[ConceptC3M1FerryLaunched2],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerC3M1FerryLaunched2aReplica
	},
	{
		name = "PlayerC3M2ComingHomeReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSafeSpotAhead],
			[IsSaidC3M2Village1],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerC3M2ComingHomeReplica
		ApplyContext "Talk:1:1"
		applycontexttoworld
	},
	{
		name = "PlayerC3M2OpenDoor2Replica",
		criteria = 
		[
			[ConceptC3M2OpenDoor2],
			[IsReplica],
			[IsTalkReplica],
			[IsReplicaActor],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerC3M2OpenDoor2Replica
	},
	{
		name = "Playerc5m4floatstart2Replica",
		criteria = 
		[
			[Conceptc5m4floatstart2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response Playerc5m4floatstart2Replica
	},
	{
		name = "PlayercoachcoachesReplica",
		criteria = 
		[
			[Conceptreplicareplicaes],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			[IsHealthyHalf],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		Response PlayercoachcoachesReplica
		ApplyContext "Saidreplicareplicaes:1:20"
		applycontexttoworld
	},
	{
		name = "PlayercoachcoachesGamblerReplica",
		criteria = 
		[
			[Conceptreplicareplicaes],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[IsHealthyHalf],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		Response PlayercoachcoachesGamblerReplica
		ApplyContext "Saidreplicareplicaes:1:20"
		applycontexttoworld
	},
	{
		name = "PlayercoachcoachesMechanicReplica",
		criteria = 
		[
			[Conceptreplicareplicaes],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			[FromIsMechanic],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[IsHealthyHalf],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		Response PlayercoachcoachesMechanicReplica
		ApplyContext "Saidreplicareplicaes:1:20"
		applycontexttoworld
	},
	{
		name = "PlayercoachcoachesProducerReplica",
		criteria = 
		[
			[Conceptreplicareplicaes],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidreplicareplicaes],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[IsHealthyHalf],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		Response PlayercoachcoachesProducerReplica
		ApplyContext "Saidreplicareplicaes:1:20"
		applycontexttoworld
	},
	{
		name = "PlayerintroC1M1Replica",
		criteria = 
		[
			[ConceptintroC1M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerintroC1M1Replica
		then any _introc1m1 foo:0 4 //
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerintroC1M1AloneReplica",
		criteria = 
		[
			[ConceptintroC1M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[IsAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerintroC1M1AloneReplica
		then self _introc1m1a03 foo:0 4 //
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},
	{
		name = "WhitakerC1M2DeliverColaReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2DeliverCola],
			[IsC1M2WhitakerErrand],
			[IsSubjectNear300],
			[HasWhitakerCola],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_SaidC1M2GrabbedCola],
		],
		Response WhitakerC1M2DeliverColaReplica
		then orator whitakerputcola foo:0 0 //Blank
		ApplyContext "C1M2AlarmSetOff:3:0"
		applycontexttoworld
	},
	{
		name = "PlayerPlayerUsingColaBottlesReplica",
		criteria = 
		[
			[ConceptPlayerUsingColaBottles],
			[IsReplica],
			[IsNotSaidPlayerUsingColaBottles],
		],
		Response NoResponse
		ApplyContext "SaidPlayerUsingColaBottles:1:20,WhoPutCola:Replica:35"
		applycontexttoworld
	},
	{
		name = "PlayerRelaxedSighReplica",
		criteria = 
		[
			[ConceptRelaxedSigh],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerRelaxedSighReplica
	},
	{
		name = "PlayerStayTogetherInsideReponseReplica",
		criteria = 
		[
			[ConceptStayTogetherInsideReponse],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidStayTogetherInsideReponse],
			[IsNotHealthySlow],
			[IsNotInSafeSpot],
			[IsWorldTalkReplica],
		],
		Response PlayerStayTogetherInsideReponseReplica
		ApplyContext "SaidStayTogetherInsideReponse:1:20"
		applycontexttoworld
	},
	{
		name = "PlayerUseAdrenalineReplica",
		criteria = 
		[
			[ConceptUseAdrenaline],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerUseAdrenalineReplica
	},
	{
		name = "PlayerWorldC3M1FerryCrossingA01Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingA01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldC3M1FerryCrossingA01Replica
		then self WorldC3M1FerryCrossingD02 foo:0 0.1 //I normally stay the hell away from swamps on principle.  You remember that movie with that golfer that got his hand ate by a gator?  That shit's real.
	},
	{
		name = "PlayerWorldC3M1FerryCrossingD01Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingD01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldC3M1FerryCrossingD01Replica
	},
	{
		name = "PlayerWorldC3M1FerryCrossingD02Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingD02],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldC3M1FerryCrossingD02Replica
	},
	{
		name = "_C3M1CrazyMilitantsReplica",
		criteria = 
		[
			[Concept_C3M1CrazyMilitants],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C3M1CrazyMilitantsReplica
	},
	{
		name = "PlayerWorldC3M1FerryCrossingG01Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingG01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldC3M1FerryCrossingG01Replica
		then any WorldC3M1FerryCrossingG02 foo:0 -4.832 //Though I walk through the valley of the shadow of death, I will fear no evil
	},
	{
		name = "PlayerWorldC3M1FerryCrossingG03Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingG03],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldC3M1FerryCrossingG03Replica
		then gambler WorldC3M1FerryCrossingG04 foo:0 -4.916 //Nick, we're goin into a swamp filled with zombies.  Y'all want me to lie to ya?
	},
	{
		name = "PlayerWorldC3M1FerryCrossingI03Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingI03],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldC3M1FerryCrossingI03Replica
	},
	{
		name = "PlayerWorldC3M1FerryCrossingM5Replica",
		criteria = 
		[
			[ConceptWorldC3M1FerryCrossingM5],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldC3M1FerryCrossingM5Replica
	},
	{
		name = "PlayerWorldC3M1Walkways2Replica",
		criteria = 
		[
			[ConceptWorldC3M1Walkways2],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldC3M1Walkways2Replica
	},
	{
		name = "PlayerWorldIntroC31Replica",
		criteria = 
		[
			[ConceptWorldIntroC31],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldIntroC31Replica
		then mechanic WorldIntroC31g1 foo:0 -3.271 //I can see their point.
	},
	{
		name = "ThanksGotItemReplica",
		criteria = 
		[
			[IsAwardConcept],
			[IsSharingSubject],
			[IsNotCoughing],
			[SubjectIsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response NoResponse
	},
	{
		name = "RescuedSurvivorReplica",
		criteria = 
		[
			[IsAwardConcept],
			[IsRescuer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response RescuedSurvivorReplica
	},
	{
		name = "PlayerGivenItemReplica",
		criteria = 
		[
			[ConceptPlayerGivenItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerGivenItemReplica
	},
	{
		name = "ItemDonorProducerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorProducer],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		Response ItemDonorProducerReplica
		then producer YouAreWelcome foo:0 0 //Can always count on you, Ro.
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "ItemDonorMechanicReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorMechanic],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		Response ItemDonorMechanicReplica
		then mechanic YouAreWelcome foo:0 0 //I owe you one, Ellis.
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "ItemDonorGamblerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorGambler],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsPickedUpValidHealingItem],
		],
		Response ItemDonorGamblerReplica
		then gambler YouAreWelcome foo:0 0 //Thanks, Nick, you're all right.
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "ItemDonorBikerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorBiker],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		Response ItemDonorBikerReplica
		then biker YouAreWelcome foo:0 0 //Thanks Francis!
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "ItemDonorTeenGirlReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorTeenGirl],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		Response ItemDonorTeenGirlReplica
		then teengirl YouAreWelcome foo:0 0 //Thanks.
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "ItemDonorManagerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorManager],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		Response ItemDonorManagerReplica
		then manager YouAreWelcome foo:0 0 //Thanks.
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "ItemDonorNamVetReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorNamVet],
			[ChanceToFire30Percent],
			[IsPickedUpValidHealingItem],
		],
		Response ItemDonorNamVetReplica
		then namvet YouAreWelcome foo:0 0 //Thanks.
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "ReviveMeInterruptedReplica",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsReplica],
			[IsIncappedStarted],
			[IsIncappedStarted2],
		],
		Response ReviveMeInterruptedReplica
		ApplyContext "ReviveInterrupt:1:2"
		applycontexttoworld
	},
	{
		name = "ReviveMeInterruptedMajorReplica",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsReplica],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
		],
		Response ReviveMeInterruptedMajorReplica
		ApplyContext "ReviveInterrupt:1:2"
		applycontexttoworld
	},
	{
		name = "ReviveMeInterruptedCriticalReplica",
		criteria = 
		[
			[ConceptReviveMeInterrupted],
			[IsReplica],
			[IsIncappedLethargic],
		],
		Response ReviveMeInterruptedCriticalReplica
		ApplyContext "ReviveInterrupt:1:2"
		applycontexttoworld
	},
	{
		name = "ReviveThanksReplica",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsReplica],
		],
		Response ReviveThanksReplica
		then subject YouAreWelcome foo:0 0 //Thanks.
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "ReviveThanksGamblerReplica",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsGambler],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		Response ReviveThanksGamblerReplica
		then subject YouAreWelcome foo:0 0 //Thanks, Nick, you're all right.
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "ReviveThanksMechanicReplica",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsMechanic],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		Response ReviveThanksMechanicReplica
		then subject YouAreWelcome foo:0 0 //I owe you one, Ellis.
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "ReviveThanksProducerReplica",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		Response ReviveThanksProducerReplica
		then subject YouAreWelcome foo:0 0 //Can always count on you, Ro.
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "ReviveThanksBikerReplica",
		criteria = 
		[
			[ConceptRevivedByFriend],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsBiker],
			[ChanceToFire30Percent],
		],
		Response ReviveThanksBikerReplica
		then subject YouAreWelcome foo:0 0 //Thanks Francis!
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "AutoYouAreWelcomeReplica",
		criteria = 
		[
			[ConceptYouWelcome],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[IsNotSpeaking],
			[IsWorldTalkReplica],
		],
		Response AutoYouAreWelcomeReplica
	},
	{
		name = "BotPlayer_YourWelcomeReplica",
		criteria = 
		[
			[ConceptSurvivorBotYouAreWelcome],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response BotPlayer_YourWelcomeReplica
	},
	{
		name = "BotReassureComingReplica",
		criteria = 
		[
			[ConceptSurvivorBotReassureComing],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		Response BotReassureComingReplica
	},
	{
		name = "BotReassureNearbyReplica",
		criteria = 
		[
			[ConceptSurvivorBotReassureNearby],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		Response BotReassureNearbyReplica
	},
	{
		name = "BotYesReadyReplica",
		criteria = 
		[
			[ConceptSurvivorBotYesReady],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
		],
		Response BotYesReadyReplica
	},
	{
		name = "C1M2LeavingSafeRoomReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsReplica],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[ismap_c1m2_streets],
			[_auto_NotTellingStory],
		],
		Response C1M2LeavingSafeRoomReplica
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:1:2.449"
		applycontexttoworld
	},
	{
		name = "C1M2SafeRoomb2Replica",
		criteria = 
		[
			[ConceptC1M2SafeRoomb2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M2SafeRoomb2Replica
		then gambler C1M2SafeRoomb3 foo:0 -2.896 //Mister... I don't think I like your attitude.
	},
	{
		name = "C1M2TankerAttackReplica",
		criteria = 
		[
			[ConceptC1M2TankerAttack2],
			[IsReplica],
			[WhoPutColaReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M2TankerAttackReplica
		then orator C1M2GoodLuckGettingToTheMall foo:0 3 //Barrier's down! Let's move, baby!
	},
	{
		name = "c1m4escapeReplica",
		criteria = 
		[
			[Conceptc1m4escape],
			[IsReplica],
			[NotSaidOutro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c1m4escapeReplica
		ApplyContext "Talk:1:0,SaidOutro:1:0"
		applycontexttoworld
	},
	{
		name = "c1m4escapeEllisReplica",
		criteria = 
		[
			[Conceptc1m4escape],
			[IsReplica],
			[NotSaidOutro],
			[IsMechanicAlive],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c1m4escapeEllisReplica
		then mechanic c1m4escapeEllisCheck foo:0 0 //
		ApplyContext "Talk:1:0,SaidOutro:1:0"
		applycontexttoworld
	},
	{
		name = "c1m4escapeEllisSuccessReplica",
		criteria = 
		[
			[Conceptc1m4escapeEllisCheckSuccess],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c1m4escapeEllisSuccessReplica
	},
	{
		name = "c1m4escapeEllisFailReplica",
		criteria = 
		[
			[Conceptc1m4escapeEllisCheckFail],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c1m4escapeReplica
	},
	{
		name = "C1M4GasPourReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[_auto_NotNoGasPourLine],
		],
		Response C1M4GasPourReplica
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "C1M4PlayerGetToRescueVehicleReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[ismap_c1m4_atrium],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C1M4PlayerGetToRescueVehicleReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "c1m4startelevatorReplica",
		criteria = 
		[
			[Conceptc1m4startelevator],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c1m4startelevatorReplica
		then mechanic _c1m4startelevator2b foo:0 -7.101 //Alright, so...Getting' evac'd ain't happening. Anybody got an idea, now's the time.
		ApplyContext "Talk:1:0,ElevatorTimer:1:25"
		applycontexttoworld
	},
	{
		name = "C6M3GasPourReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[IsC6M3_Port],
			[ChanceToFire70Percent],
		],
		Response C6M3GasPourReplica
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "GasPourReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[ChanceToFire70Percent],
		],
		Response GasPourReplica
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "FinaleStartC1M4Replica",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsReplica],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m4_atrium],
			[IsNotScavenge],
			[_auto_NotFinaleStarted],
		],
		Response FinaleStartC1M4Replica
		then any C1M4FinaleStartResponse foo:0 0.3 //If we see a Jimmy Gibbs zombie. somebody else is gonna have to kill him.
		ApplyContext "Talk:1:3,_auto_Finale:1:0,_auto_NoLostCall:1:0"
		applycontexttoworld
	},
	{
		name = "GasPourDoneC1M4Replica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[ismap_c1m4_atrium],
			[ScoreDoneSC],
		],
		Response GasPourDoneC1M4Replica
		ApplyContext "_auto_TimerLockA:1:5"
		applycontexttoworld
	},
	{
		name = "_C2M2EntranceReplica",
		criteria = 
		[
			[Concept_C2M2Entrance],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2EntranceReplica
	},
	{
		name = "C2M2CarouselIdleReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[ismap_c2m2],
			[IsNotInSafeSpot],
			[IsNotSaidSafeSpotAhead],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C2M2CarouselIdleReplica
		ApplyContext "_auto_TimerLockA:1:13,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "C2M3RubbleNagIdleReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTeamNearCoaster],
			[_auto_NotAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[_auto_IsCoasterExpo],
			[IsNotSpeakingWeight0],
		],
		Response C2M3RubbleNagIdleReplica
		ApplyContext "Talk:1:1.026,_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:13"
		applycontexttoworld
	},
	{
		name = "C2M2SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[Ismap_c2m2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		Response C2M2SafeRoomReplica
		then any _C2M2_Riders02 foo:0 0.1 //Hey, the Midnight Riders! I used to LOVE that band. Best pyrotechnics in the business.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "_C2M2_Riders01Replica",
		criteria = 
		[
			[Concept_C2M2_Riders01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M2SafeRoomReplica
	},
	{
		name = "_C2M2_Riders04Replica",
		criteria = 
		[
			[Concept_C2M2_Riders04],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2_Riders04Replica
		then any _C2M2_Riders07 foo:0 0.2 //[singing] ...Gotta reach for the top, stay on that mountainnnn... dunh-nuh-NAH-nuh-NAH-nha!
	},
	{
		name = "_C2M2_Riders05Replica",
		criteria = 
		[
			[Concept_C2M2_Riders05],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2_Riders05Replica
		then any _C2M2_Riders03 foo:0 0.2 //Best light show in the business, though.
	},
	{
		name = "_C2M2_Riders07Replica",
		criteria = 
		[
			[Concept_C2M2_Riders07],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2_Riders07Replica
		then Self _C2M2_Riders05 foo:0 0.2 //Hell yes! I got ALL their albums. Even their new stuff that ain't no good.
	},
	{
		name = "_C2M2_Slide01Replica",
		criteria = 
		[
			[Concept_C2M2_Slide01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear400],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2_Slide01Replica
		ApplyContext "Talk:1:2.922"
		applycontexttoworld
	},
	{
		name = "c2m3_DownHoleReplica",
		criteria = 
		[
			[Conceptc2m3downhole],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m3_DownHoleReplica
		ApplyContext "_auto_DownHole:1:0"
		applycontexttoworld
	},
	{
		name = "c2m3CoasterEndReplica",
		criteria = 
		[
			[Conceptc2m3CoasterEnd],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m3CoasterEndReplica
		ApplyContext "_auto_Alarm:2:0"
		applycontexttoworld
	},
	{
		name = "C2M3CoasterRunGoReplica",
		criteria = 
		[
			[ConceptC2M3CoasterRunGo],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M3CoasterRunGoReplica
	},
	{
		name = "C2M3CoasterStartReplica",
		criteria = 
		[
			[Conceptc2m3CoasterStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M3CoasterStartReplica
		then mechanic _c2m3_howcool foo:0 1.0 //Get ready to run, I'm hittin' it.
		ApplyContext "WarnMegaMob:1:30,_auto_Alarm:1:0"
		applycontexttoworld
	},
	{
		name = "c2m3SeeChopperReplica",
		criteria = 
		[
			[Conceptc2m3SeeChopper],
			[IsReplica],
			[IsTalk],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m3SeeChopperReplica
		ApplyContext "_auto_OutOfTunnel:1:0"
		applycontexttoworld
	},
	{
		name = "C2M4ButtonPressedReplica",
		criteria = 
		[
			[ConceptC2M4ButtonPressed],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M4ButtonPressedReplica
		ApplyContext "_auto_ButtonPressed:1:0"
		applycontexttoworld
	},
	{
		name = "C2M4Gate000Replica",
		criteria = 
		[
			[ConceptC2M4Gate000],
			[IsReplica],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGate],
			[_auto_NotNearGateNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		Response C2M4Gate000Replica
		then self C2M4Gate001 foo:0 0.2 //I know how we can signal that chopper.
		ApplyContext "Talk:1:1.707,_auto_TimerLockA:1:20,_auto_TimerLockReplica:1:23,_auto_NearGateNag:1:0"
		applycontexttoworld
	},
	{
		name = "C2M4GateIdleReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsNotIncapacitated],
			[ismap_c2m4],
			[NotInCombat],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsNearGateNag],
			[_auto_IsNearGate],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[_auto_NotButtonPressed],
			[IsNotSpeakingWeight0],
		],
		Response C2M4GateIdleReplica
		ApplyContext "Talk:1:1.565,_auto_TimerLockA:1:20,_auto_TimerLockReplica:1:23"
		applycontexttoworld
	},
	{
		name = "C2M4GateOpenCalloutReplica",
		criteria = 
		[
			[ConceptC2M4GateOpenCallout],
			[IsReplica],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response C2M4GateOpenCalloutReplica
		then any _C2M4_GateOpen001 foo:0 0.01 //Gate's open!
		ApplyContext "Talk:1:0.960"
		applycontexttoworld
	},
	{
		name = "c2m4SeeChopperReplica",
		criteria = 
		[
			[Conceptc2m4SeeChopper],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m4SeeChopperReplica
	},
	{
		name = "C2M4Gate001Replica",
		criteria = 
		[
			[ConceptC2M4Gate001],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M4Gate001Replica
	},
	{
		name = "C2M4Gate002Replica",
		criteria = 
		[
			[ConceptC2M4Gate002],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M4Gate002Replica
		then self C2M4Gate003 foo:0 0.2 //I know how we can signal that chopper.
	},
	{
		name = "C2M4Gate003Replica",
		criteria = 
		[
			[ConceptC2M4Gate003],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M4Gate003Replica
	},
	{
		name = "C2M4Gate003EllisReplica",
		criteria = 
		[
			[ConceptC2M4Gate003],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsMechanicAlive],
			[ChanceToFire100Percent],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M4Gate003EllisReplica
		then mechanic C2M4Gate004 foo:0 0.1 //Ellis, you ready to rock?
	},
	{
		name = "C2M4Gate005Replica",
		criteria = 
		[
			[ConceptC2M4Gate005],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M4Gate003Replica
	},
	{
		name = "C2M5_Button2YellReplica",
		criteria = 
		[
			[ConceptC2M5_Button2Yell],
			[IsReplica],
			[IsNotSpeaking],
			[NotReplicaMadAtRiders],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M5_Button2YellReplica
	},
	{
		name = "C2M5_Button2YellMadReplica",
		criteria = 
		[
			[ConceptC2M5_Button2Yell],
			[IsReplica],
			[IsNotSpeaking],
			[ReplicaMadAtRiders],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response NoResponse
	},
	{
		name = "C2M5_ChoppercomingReplica",
		criteria = 
		[
			[ConceptC2M5_Choppercoming],
			[IsReplica],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M5_ChoppercomingReplica
		then any C2M5_PlanWorked foo:0 0.01 //The chopper saw us!
	},
	{
		name = "C2M5_PlanWorkedReplica",
		criteria = 
		[
			[ConceptC2M5_PlanWorked],
			[IsReplica],
			[IsNotIncapacitated],
			[NotReplicaMadAtRiders],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M5_PlanWorkedReplica
	},
	{
		name = "C2M5_PlanWorkedMadReplica",
		criteria = 
		[
			[ConceptC2M5_PlanWorked],
			[IsReplica],
			[IsNotIncapacitated],
			[ReplicaMadAtRiders],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M5_PlanWorkedMadReplica
	},
	{
		name = "C2M5ChopperNagReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[Ismap_c2m5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C2M5ChopperNagReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "C2M5InChopperNagReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[Ismap_c2m5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C2M5InChopperNagReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "C2M5ChopperNagNickCheckReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[Ismap_c2m5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsTalk],
			[IsGamblerAlive],
			[IsGamblerNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[ChanceToFire10Percent],
			[NickOCD],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		//forceweight 500
		Response C2M5ChopperNagNickCheckReplica
		then gambler C2M5ChopperOCD foo:0 0 //
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "C2M5PlayerLookNickFinaleReplica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[Ismap_c2m5],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsInRescueVehicle],
			[SubjectIsGambler],
			[IsGamblerNear800],
			[IsWorldTalkReplica],
			[NickOCD],
			[_auto_IsEscapeReady],
			[IsNotSpeakingWeight0],
		],
		//forceweight 500
		Response C2M5ChopperNagNickCheckReplica
	},
	{
		name = "C2M5PlayerLookNickFinale2Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[Ismap_c2m5],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsInRescueVehicle],
			[SubjectIsGambler],
			[IsGamblerNear800],
			[IsWorldTalkReplica],
			[NickOCD],
			[_auto_IsEscapeReady],
			[IsNotSpeakingWeight0],
		],
		//forceweight 500
		Response C2M5ChopperNagNickCheckReplica
	},
	{
		name = "C2M5Button1Replica",
		criteria = 
		[
			[ConceptC2M5Button1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
		],
		Response C2M5Button1Replica
		ApplyContext "_auto_Button1:1:0,_auto_NoLostCall:1:0"
		applycontexttoworld
	},
	{
		name = "C2M5InArenaNagReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[Ismap_c2m5],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[_auto_IsC2M5InArena],
			[IsNotSpeakingWeight0],
		],
		Response C2M5InArenaNagReplica
		ApplyContext "_auto_TimerLockA:1:30,_auto_TimerLockReplica:1:34"
		applycontexttoworld
	},
	{
		name = "C2M5SingingReplica",
		criteria = 
		[
			[ConceptC2M5Microphone],
			[IsReplica],
			[NotInCombat],
			[Ismap_c2m5],
			[TimeSinceGroupInCombat02],
			[IsNotSpeaking],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[NotReplicaMadAtRiders],
			[_auto_NotButton2],
			[_auto_IsButton1],
		],
		Response C2M5SingingReplica
	},
	{
		name = "SurvivorReloadingC2M5Replica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotZombiePresentTank],
			[IsRocking],
			[Ismap_c2m5],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[NotReplicaMadAtRiders],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[_auto_ConcertIsLive],
			[_auto_NotRockingOut],
		],
		Response SurvivorReloadingC2M5Replica
		ApplyContext "_auto_RockingOut:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorReloadingC2M5RockedOutReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotZombiePresentTank],
			[IsRocking],
			[Ismap_c2m5],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[NotReplicaMadAtRiders],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
		],
		Response NoResponse
	},
	{
		name = "SurvivorVocalizeLookOutC2M5Replica",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsRocking],
			[Ismap_c2m5],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			[_auto_ConcertIsLive],
			[_auto_NotRockingOut],
		],
		Response SurvivorVocalizeLookOutC2M5Replica
		ApplyContext "_auto_RockingOut:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorVocalizeLookOutC2M5RockedOutReplica",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsRocking],
			[Ismap_c2m5],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			[_auto_ConcertIsLive],
			[_auto_IsRockingOut],
		],
		Response NoResponse
	},
	{
		name = "PlayerKillTankConfirmationC2M5Replica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
		],
		Response PlayerKillTankConfirmationC2M5Replica
		ApplyContext "SaidTankDead:1:60,TalkReplica:1:5"
		applycontexttoworld
	},
	{
		name = "C2M5ReloadingTankReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkReplica],
			[NotReplicaMadAtRiders],
			[Ismap_c2m5],
			[_auto_ConcertIsLive],
		],
		Response C2M5ReloadingTankReplica
		ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		applycontexttoworld
	},
	{
		name = "C2M5ConcertTankResponseReplica",
		criteria = 
		[
			[ConceptC2M5ConcertTankResponse],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M5ConcertTankResponseReplica
	},
	{
		name = "C2M5SaferoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[Ismap_c2m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		Response C2M5SaferoomReplica
		then any c2m5_intro005 foo:0 0.3 //Y'all know the Midnight Riders? They gonna save us.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "c2m5_intro001Replica",
		criteria = 
		[
			[Conceptc2m5_intro001],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro001Replica
		then self c2m5_intro003 foo:0 0.1 //First we do a quick check around for corn dogs. Nah, I'm just playin'.
	},
	{
		name = "c2m5_intro002Replica",
		criteria = 
		[
			[Conceptc2m5_intro002],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro002Replica
		then any c2m5_intro003 foo:0 0.1 //Then we start the Midnight Rider finale. It's all kinds of fireworks, smokepots, and lights and shit. That chopper pilot can't miss it.
	},
	{
		name = "c2m5_intro003Replica",
		criteria = 
		[
			[Conceptc2m5_intro003],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro003Replica
		then self c2m5_intro002 foo:0 0.1 //First we look for supplies.
	},
	{
		name = "c2m5_intro006Replica",
		criteria = 
		[
			[Conceptc2m5_intro006],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro006Replica
		then self c2m5_intro007 foo:0 0.1 //We start their finale, that chopper is gonna know something's up.
	},
	{
		name = "c2m5_intro007Replica",
		criteria = 
		[
			[Conceptc2m5_intro007],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro007Replica
		then any c2m5_intro008 foo:0 0.1 //Because nobody - and I mean NOBODY - has a bigger pyrotechnics show than the Midnight Riders.
	},
	{
		name = "c2m5_intro008Replica",
		criteria = 
		[
			[Conceptc2m5_intro008],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro008Replica
		then self c2m5_intro001 foo:0 0.3 //Okay, here's the plan.
	},
	{
		name = "c2m5_intro010Replica",
		criteria = 
		[
			[Conceptc2m5_intro010],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro010Replica
		then any c2m5_intro011 foo:0 0.2 //It's been a long time since I seen the Riders, but if their finale's the same, that'll signal the chopper pilot. We just need to start it.
	},
	{
		name = "c2m5_intro012Replica",
		criteria = 
		[
			[Conceptc2m5_intro012],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro012Replica
		then self IntroEnd foo:0 0.1 //These zombies better be ready to rock.
	},
	{
		name = "c2m5_intro014Replica",
		criteria = 
		[
			[Conceptc2m5_intro014],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro014Replica
		then any c2m5_intro015 foo:0 0.1 //Because nobody - and I mean NOBODY - has a bigger pyrotechnics show than the Midnight Riders.
	},
	{
		name = "c2m5_intro018Replica",
		criteria = 
		[
			[Conceptc2m5_intro018],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro014Replica
	},
	{
		name = "c2m5_intro016Replica",
		criteria = 
		[
			[Conceptc2m5_intro016],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro016Replica
		then self IntroEnd foo:0 0.1 //These zombies better be ready to rock.
	},
	{
		name = "c2m5_intro020Replica",
		criteria = 
		[
			[Conceptc2m5_intro020],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro016Replica
	},
	{
		name = "c2m5_intro025Replica",
		criteria = 
		[
			[Conceptc2m5_intro025],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro016Replica
	},
	{
		name = "c2m5_intro017Replica",
		criteria = 
		[
			[Conceptc2m5_intro017],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c2m5_intro017Replica
		then self c2m5_intro018 foo:0 0.1 //Y'all know the Midnight Riders? They gonna save us.
	},
	{
		name = "C2M5ChopperOCDReplica",
		criteria = 
		[
			[ConceptC2M5ChopperOCD],
			[IsReplica],
			[IsNotIncapacitated],
			[IsInRescueVehicle],
			[NickOCD],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M5ChopperOCDReplica
		ApplyContext "NickOCD:1:0"
		applycontexttoworld
	},
	{
		name = "C2M3SaferoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[Ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		Response C2M3SaferoomReplica
		then self IntroEnd foo:0 0.1 //Well-looks like we're going through the tunnel of love, people. No hanky panky.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "C2M3SafeIntro010Replica",
		criteria = 
		[
			[ConceptC2M3SafeIntro010],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M3SafeIntro010Replica
		then gambler C2M3SafeIntro010 foo:0 0.3 //How many tunnel of love memories YOU got, Nick?
	},
	{
		name = "C2M3SafeIntro011Replica",
		criteria = 
		[
			[ConceptC2M3SafeIntro011],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M3SafeIntro011Replica
		then producer C2M3SafeIntro005 foo:0 0.01 //Nick, I was on the football team. Replica did just fine.
	},
	{
		name = "C3M1FerryEnd2Replica",
		criteria = 
		[
			[ConceptC3M1FerryEnd2],
			[IsReplica],
			[IsNotSaidC3M1FerryEnd],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M1FerryEnd2Replica
		ApplyContext "SaidC3M1FerryEnd:1:0"
		applycontexttoworld
	},
	{
		name = "C3M2DisgustReplica",
		criteria = 
		[
			[Conceptc3m2disgust],
			[IsReplica],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M2DisgustReplica
		ApplyContext "Talk:1:2.040"
		applycontexttoworld
	},
	{
		name = "InfoRemc3m2_parachutist2Replica",
		criteria = 
		[
			[ConceptInfoRemc3m2_parachutist2],
			[IsReplica],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response InfoRemc3m2_parachutist2Replica
	},
	{
		name = "C3M3SafeRoom2b2Replica",
		criteria = 
		[
			[ConceptC3M3SafeRoom2b2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M3SafeRoom2b2Replica
		then self IntroEnd foo:0 0.1 //All right, this just makes me sad.
	},
	{
		name = "C3M3SafeRoom2c2Replica",
		criteria = 
		[
			[ConceptC3M3SafeRoom2c2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M3SafeRoom2c2Replica
		then mechanic C3M3SsafeRoom2c3 foo:0 0.1 //They headed to the river, sounds like a good idea.
	},
	{
		name = "C3M3SafeRoom2c3Replica",
		criteria = 
		[
			[ConceptC3M3SafeRoom2c3],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M3SafeRoom2c3Replica
		then self IntroEnd foo:0 0.1 //I don't want to stay here, let's follow 'em.
	},
	{
		name = "InfoRemC3M3LowerGateaReplica",
		criteria = 
		[
			[ConceptInfoRemC3M3LowerGatea],
			[IsReplica],
			[IsNotSaidC3M3BridgeButton],
			[IntensityUnder25],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response InfoRemC3M3LowerGateaReplica
	},
	{
		name = "C3M4BoatNagsReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[ismapc3m4_plantation],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsRunning],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C3M4BoatNagsReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "C3M4InBoatNagsReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[ismapc3m4_plantation],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C3M4InBoatNagsReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "C3M4Button1AReplica",
		criteria = 
		[
			[ConceptC3M4Button1A],
			[IsReplica],
			[FromIsAnOrator],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M4Button1AReplica
		then self C3M4Button1B foo:0 1 //I'm gonna try calling someone.
	},
	{
		name = "C3M4Button1BReplica",
		criteria = 
		[
			[ConceptC3M4Button1B],
			[IsReplica],
			[FromIsReplica],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M4Button1BReplica
		then orator C3M4Button101 foo:0 0.3 //Anyone out there?
	},
	{
		name = "C3M4ButtonHowManyAnswer4Replica",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsReplica],
			[FromIsAnOrator],
			[IsEveryoneAlive],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		Response C3M4ButtonHowManyAnswer4Replica
		then orator C3M4Button102 foo:0 0.3 //We are a party of four.
	},
	{
		name = "C3M4ButtonHowManyAnswer3Replica",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsReplica],
			[FromIsAnOrator],
			[IsWithOnlyThree],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		Response C3M4ButtonHowManyAnswer3Replica
		then orator C3M4Button102 foo:0 0.3 //Three of us left.
	},
	{
		name = "C3M4ButtonHowManyAnswer2Replica",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsReplica],
			[FromIsAnOrator],
			[IsWithTwo],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		Response C3M4ButtonHowManyAnswer2Replica
		then orator C3M4Button102 foo:0 0.3 //Only two of us.
	},
	{
		name = "C3M4ButtonHowManyAnswer1Replica",
		criteria = 
		[
			[ConceptC3M4ButtonHowManyAnswer],
			[IsReplica],
			[FromIsAnOrator],
			[IsAlone],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		Response C3M4ButtonHowManyAnswer1Replica
		then orator C3M4Button102 foo:0 0.3 //Just me.
	},
	{
		name = "C3M4ButtonAnswerEllisReplica",
		criteria = 
		[
			[ConceptC3M4ButtonAnswerEllis],
			[IsReplica],
			[FromIsMechanic],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		Response C3M4ButtonAnswerEllisReplica
		then orator C3M4Button102 foo:0 0.3 //Nah, you got it, Ellis.
	},
	{
		name = "C3M4Button201Replica",
		criteria = 
		[
			[ConceptC3M4Button201],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
		],
		Response C3M4Button201Replica
		then orator C3M4Button202 foo:0 0.01 //Shit, we're at the plantation house.
		ApplyContext "Talk:1:2.948"
		applycontexttoworld
	},
	{
		name = "C3M4Button202Replica",
		criteria = 
		[
			[ConceptC3M4Button202],
			[FromIsAnOrator],
			[_auto_IsTalkingReplica],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M4Button202Replica
		ApplyContext "Talk:1:3.424"
		applycontexttoworld
	},
	{
		name = "C3M4GateBlow01Replica",
		criteria = 
		[
			[ConceptC3M4GateBlow01],
			[IsReplica],
			[FromIsAnOrator],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M4GateBlow01Replica
		then orator C3M4GateBlow02 foo:0 0.01 //Oh shit! Gate open!
		ApplyContext "_auto_TimerLockA:1:3"
		applycontexttoworld
	},
	{
		name = "C4GoingToDieCoachReplica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[ismap_c4m2_sugarmill_a],
		],
		//forceweight 200
		Response C4GoingToDieCoachReplica
		ApplyContext "IsComplain:1:25"
	},
	{
		name = "C4StormBlindIdleReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[_auto_NotTimerLockA],
			[_auto_IsTimerA],
			[_auto_NotC4ReplicaInCover],
			[IsNotSpeakingWeight0],
		],
		Response C4StormBlindIdleReplica
		ApplyContext "_auto_TimerA:0:0"
		applycontexttoworld
	},
	{
		name = "C4M1IntroReplica",
		criteria = 
		[
			[ConceptIntroC4M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C4M1IntroReplica
		then orator _c4m1Intro01 foo:0 0.01 //
		ApplyContext "CXM1Intro:1:0,Saidremark_caralarm:1:400"
		applycontexttoworld
	},
	{
		name = "_c4m1Intro03Replica",
		criteria = 
		[
			[Concept_c4m1Intro03],
			[IsReplica],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m1Intro03Replica
		then gambler _c4m1Intro05 foo:0 0.01 //We should be in and out here. Get the gas, get back to shore, signal Virgil with the flare gun in the gun bag. Then we just, uh... um... aw, HELL. Tell me SOMEONE brought the GUN BAG.
	},
	{
		name = "_c4m1Intro04Replica",
		criteria = 
		[
			[Concept_c4m1Intro04],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m1Intro04Replica
		then gambler _c4m1Intro08 foo:0 0.01 //Don't think we got much choice in the matter.
	},
	{
		name = "_c4m1Intro05Replica",
		criteria = 
		[
			[Concept_c4m1Intro05],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m1Intro05Replica
		then any _c4m1Intro07 foo:0 0.01 //What gun bag? Oh for-TELL ME we didn't forget the guns.
	},
	{
		name = "_c4m1Intro06Replica",
		criteria = 
		[
			[Concept_c4m1Intro06],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m1Intro06Replica
		then self IntroEnd foo:0 0.1 //Don't jinx us, Nick.
	},
	{
		name = "_c4m1Intro07Replica",
		criteria = 
		[
			[Concept_c4m1Intro07],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m1Intro07Replica
		then gambler _c4m1Intro07 foo:0 0.01 //ME? I told Nick to grab the guns!
	},
	{
		name = "_c4m1Intro09Replica",
		criteria = 
		[
			[Concept_c4m1Intro09],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m1Intro09Replica
		then self IntroEnd foo:0 0.1 //Look here, the gas station's right across the street. We coulda already been there and back by now. Come on.
	},
	{
		name = "_c4m1Intro11Replica",
		criteria = 
		[
			[Concept_c4m1Intro11],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m1Intro07Replica
	},
	{
		name = "_c4m1Intro14Replica",
		criteria = 
		[
			[Concept_c4m1Intro14],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m1Intro14Replica
		then gambler _c4m1Intro13 foo:0 0.01 //No.
	},
	{
		name = "_c4m1Intro16Replica",
		criteria = 
		[
			[Concept_c4m1Intro16],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m1Intro16Replica
		then mechanic _c4m1Intro16 foo:0 0.01 //Look, I'm a generously proportioned man! Gettin' off a rockin' boat takes CONCENTRATION!
	},
	{
		name = "C4M2IdleWitchville01Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[NotInCombat],
			[IsWorldTalkReplica],
			[NotSaidLotsOfWitches],
			[IsNotSaidSafeSpotAhead],
			[_auto_IsReplicaInWitchville],
		],
		Response C4M2IdleWitchville01Replica
		then Any _c4m2_Witchville05 foo:0 0.01 //Goddamn it, wha't with all these witches.
		ApplyContext "SaidWitchWarn:1:20,WarnHeardWitch:1:300,SaidLotsOfWitches:1:90"
		applycontexttoworld
	},
	{
		name = "C4M2PushedButtonReplica",
		criteria = 
		[
			[Conceptc4m2_elevator_top_button],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C4M2PushedButtonReplica
		ApplyContext "SaidActivatedC4M2Elevator:1:0"
		applycontexttoworld
	},
	{
		name = "C4M5BoatNagsReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[Isc4m5],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C4M5BoatNagsReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "_C4M5_BoatComing01Replica",
		criteria = 
		[
			[Concept_C4M5_BoatComing01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C4M5_BoatComing01Replica
	},
	{
		name = "C4FinaleStartReplica",
		criteria = 
		[
			[ConceptC4FinaleStart],
			[IsReplica],
		],
		Response C4FinaleStartReplica
		then any _C4M5_FinaleStart01 foo:0 0.01 //The sign's lit!
		ApplyContext "_auto_NoLostCall:1:0"
		applycontexttoworld
	},
	{
		name = "_C4M5_FinaleStart01Replica",
		criteria = 
		[
			[Concept_C4M5_FinaleStart01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C4M5_FinaleStart01Replica
	},
	{
		name = "C4M5SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[isc4m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		Response C4M5SafeRoomReplica
		then any _C4M5_Intro02 foo:0 0.1 //Let's go, almost back to the boat.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "_C4M5_Intro03Replica",
		criteria = 
		[
			[Concept_C4M5_Intro03],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C4M5_Intro03Replica
		then any _C4M5_Intro04 foo:0 0.1 //We can use the Burger Tank sign to signal him.
	},
	{
		name = "_C4M5_Intro04Replica",
		criteria = 
		[
			[Concept_C4M5_Intro04],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C4M5_Intro04Replica
		then self IntroEnd foo:0 0.1 //Let's do it.
	},
	{
		name = "PlayerRemarkc4m5_BurgerTankReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m5_burgertank],
			[IsNotSaidc4m5_burgertank],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear1000],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m5_BurgerTankReplica
		ApplyContext "Saidc4m5_burgertank:1:0,Talk:1:2"
		applycontexttoworld
	},
	{
		name = "C5M1_intro002Replica",
		criteria = 
		[
			[ConceptC5M1_intro002],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M1_intro002Replica
		then orator C5M1_intro003 foo:0 0.01 //Thanks, Virgil. You stay safe, brother.
	},
	{
		name = "C5M1_intro004Replica",
		criteria = 
		[
			[ConceptC5M1_intro004],
			[IsReplica],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M1_intro004Replica
		then self IntroEnd foo:0 0.1 //We made it REAL damn far, people. I'm proud of you. Now let's just cross that last mile.
	},
	{
		name = "C5M1_intro005Replica",
		criteria = 
		[
			[ConceptC5M1_intro005],
			[IsReplica],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M1_intro004Replica
	},
	{
		name = "C5M1_intro008Replica",
		criteria = 
		[
			[ConceptC5M1_intro008],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M1_intro008Replica
		then self IntroEnd foo:0 0.1 //Oh yeaah. Our goal is right next to the bridge, ON THE OTHER MOTHER F'IN SIDE OF THE RIVER!
	},
	{
		name = "C5M1Flyby01Replica",
		criteria = 
		[
			[ConceptC5M1Flyby01],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
		],
		Response C5M1Flyby01Replica
		then any C5M1Flyby02 foo:0 0.1 //Military's still active here!
	},
	{
		name = "C5M1Flyby03Replica",
		criteria = 
		[
			[ConceptC5M1Flyby03],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M1Flyby03Replica
	},
	{
		name = "C5M2_signcontagious01Replica",
		criteria = 
		[
			[ConceptC5M2_signcontagious01],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M2_signcontagious01Replica
	},
	{
		name = "C5M2AlarmNagReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsMapc5m2_park],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire80Percent],
			[_auto_IsAlarm],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C5M2AlarmNagReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:13"
		applycontexttoworld
	},
	{
		name = "C5M2Freeway01Replica",
		criteria = 
		[
			[ConceptC5M2Freeway01],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M2Freeway01Replica
	},
	{
		name = "PlayerRemarkc5m2busstationReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m2busstation],
			[IsNotSaidc5m2busstation],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsDoorOpen],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m2busstationReplica
		ApplyContext "Saidc5m2busstation:1:0,Talk:1:1.110"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m2parkReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m2park],
			[IsNotSaidc5m2park],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m2parkReplica
		ApplyContext "Saidc5m2park:1:0,Talk:1:1.734"
		applycontexttoworld
	},
	{
		name = "C5M3AlarmFieldNagsReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[NotInCombat],
			[IsNotCoughing],
			[IsTalk],
			[_auto_IsInAlarmField],
			[_auto_NotTimerLockA],
			[_auto_NotAlarmFieldOn],
			[IsNotSpeakingWeight0],
		],
		//forceweight 200
		Response C5M3AlarmFieldNagsReplica
		ApplyContext "Talk:1:4.294,_auto_TimerLockA:1:12"
		applycontexttoworld
	},
	{
		name = "C5M3Bodies01Replica",
		criteria = 
		[
			[ConceptC5M3Bodies01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M3Bodies01Replica
		then gambler C5M3Bodies04 foo:0 1.0 //[annoyed] How does bein' so right feel, Nick?
	},
	{
		name = "C5M3Bodies03Replica",
		criteria = 
		[
			[ConceptC5M3Bodies03],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M3Bodies03Replica
	},
	{
		name = "C5M3FirstInAlarmReplica",
		criteria = 
		[
			[ConceptC5M3FirstInAlarmField],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M3FirstInAlarmReplica
		ApplyContext "Saidremark_caralarm:1:0,Talk:1:2.959"
		applycontexttoworld
	},
	{
		name = "C5M3Freeway01Replica",
		criteria = 
		[
			[ConceptC5M3Freeway01],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M3Freeway01Replica
	},
	{
		name = "C5M3GraveNagsReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[NotInCombat],
			[IsNotCoughing],
			[IsTalk],
			[ChanceToFire10Percent],
			[IsNotAlone],
			[TimeSinceGroupInCombat02],
			[IsNotSaidSafeSpotAhead],
			[_auto_IsOffHighway],
			[IsNotSpeakingWeight0],
		],
		Response C5M3GraveNagsReplica
	},
	{
		name = "C5M3Jets2Replica",
		criteria = 
		[
			[Conceptc5m3Jets2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M3Jets2Replica
		ApplyContext "Talk:1:1.059"
		applycontexttoworld
	},
	{
		name = "C5M3OnBridgeReplica",
		criteria = 
		[
			[Conceptc5m3OnBridge],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M3OnBridgeReplica
		ApplyContext "Talk:1:4.647,_auto_AlarmFieldOn:2:0"
		applycontexttoworld
	},
	{
		name = "C5M3SeeGraveyard02Replica",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard02],
			[IsReplica],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M3SeeGraveyard02Replica
		ApplyContext "Talk:1:1.839"
		applycontexttoworld
	},
	{
		name = "C5M3SeeGraveyard03Replica",
		criteria = 
		[
			[ConceptC5M3SeeGraveyard03],
			[IsReplica],
			[IssuerClose],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M3SeeGraveyard03Replica
		ApplyContext "Talk:1:3.887"
		applycontexttoworld
	},
	{
		name = "C5M3ShootCarReplica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsReplica],
			[IsCarAlarm],
			[_auto_IsInAlarmField],
			[_auto_NotAlarmFieldOn],
		],
		Response C5M3ShootCarReplica
		ApplyContext "_auto_AlarmFieldOn:1:0,_auto_TimerLockA:1:1.5,WarnMegaMob:1:300"
		applycontexttoworld
	},
	{
		name = "C5M3ShootCar2Replica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotReplica],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[_auto_ShotSecondCar],
			[_auto_IsInAlarmField],
			[_auto_IsAlarmFieldOn],
			[_auto_NotTimerLockA],
		],
		Response C5M3ShootCar2Replica
		ApplyContext "_auto_ShotCar:++1,_auto_TimerLockA:1:3"
		applycontexttoworld
	},
	{
		name = "C5M3ShootCar3Replica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsNotReplica],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[IsNotSpeaking],
			[_auto_IsInAlarmField],
			[_auto_IsAlarmFieldOn],
			[_auto_ShotThirdCar],
			[_auto_NotTimerLockA],
		],
		Response C5M3ShootCar3Replica
		ApplyContext "Talk:1:2.879,_auto_ShotCar:++1"
		applycontexttoworld
	},
	{
		name = "C5M3ShootCar3EllisReplica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsMapc5m3_cemetery],
			[SubjectIsMechanic],
			[IsCarAlarm],
			[ChanceToFire25Percent],
			[IsNotSpeaking],
			[_auto_IsInAlarmField],
			[_auto_IsAlarmFieldOn],
			[_auto_ShotThirdCar],
			[_auto_NotTimerLockA],
		],
		//forceweight 500
		Response C5M3ShootCar3EllisReplica
		ApplyContext "Talk:1:2.879,_auto_ShotCar:++1"
		applycontexttoworld
	},
	{
		name = "C5M3Sniper01Replica",
		criteria = 
		[
			[ConceptC5M3Sniper01],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M3Sniper01Replica
		ApplyContext "Talk:1:1.595"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3bodiesReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3bodies],
			[NotInCombat],
			[IsSubjectNear100],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m3bodiesReplica
		then any C5M3Bodies02 foo:0 0.1 //These ain't zombies. Somebody's been shootin' people.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3crashedheliReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3crashedheli],
			[IsNotSaidc5m3crashedheli],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m3crashedheliReplica
		ApplyContext "Saidc5m3crashedheli:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3freewayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3freeway],
			[IsNotSaidc5m3freeway],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m3freewayReplica
		ApplyContext "Saidc5m3freeway:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3insewerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3insewer],
			[IsNotSaidc5m3insewer],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m3insewerReplica
		ApplyContext "Saidc5m3insewer:1:0,_auto_InSewer:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3manholeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3manhole],
			[IsNotSaidc5m3manhole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotInSewer],
			[IsNotSpeakingWeight0],
		],
		//forceweight 100
		Response PlayerRemarkc5m3manholeReplica
		then any C5M3manhole01 foo:0 0.1 //Everybody in the sewer.
		ApplyContext "Saidc5m3manhole:1:0,Talk:1:1.491"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3manhole2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3manhole],
			[IsNotSaidc5m3manhole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[_auto_NotInSewer],
			[IsNotSpeakingWeight0],
		],
		//forceweight 100
		Response PlayerRemarkc5m3manhole2Replica
		then gambler C5M3manhole01 foo:0 0.1 //Nick! Good news - we're going down into this sewer.
		ApplyContext "Saidc5m3manhole:1:0,Talk:1:3.733"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3offhighwayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3offhighway],
			[IsNotSaidc5m3offhighway],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m3offhighwayReplica
		ApplyContext "Saidc5m3offhighway:1:0,_auto_OffHighway:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3seegraveyardReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3seegraveyard],
			[IsNotSaidc5m3seegraveyard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotAlone],
			[_auto_IsBridgeBomb],
			[_auto_NotTimerLockA],
			[_auto_NotOffHighway],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m3seegraveyardReplica
		then any C5M3SeeGraveyard01 foo:0 0.1 //Allright. Shit. Nobody panic. We gonna head down and find another way up onto the bridge.
		ApplyContext "Saidc5m3seegraveyard:1:0,Talk:1:6.593"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3sewercommentReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3sewercomment],
			[IsNotSaidc5m3sewercomment],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[IsGamblerAlive],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m3sewercommentReplica
		then gambler C5M3SewerIn01 foo:0 0.01 //Man, Nick, you picked a bad day to wear your white suit.
		ApplyContext "Saidc5m3sewercomment:1:0,Talk:1:3.451"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkc5m3sewercommentReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3sewercomment],
			[IsNotSaidc5m3sewercomment],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[IsGamblerAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "Saidc5m3sewercomment:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3sniperReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3sniper],
			[IsNotSaidc5m3sniper],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		Response PlayerRemarkc5m3sniperReplica
		then any C5M3Sniper01 foo:0 0.1 //I hope those hash marks mean zombies.
		ApplyContext "Saidc5m3sniper:1:0,Talk:1:2.502"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3upladderReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3upladder],
			[IsNotSaidc5m3upladder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m3upladderReplica
		ApplyContext "Saidc5m3upladder:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3upstepsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3upsteps],
			[IsNotSaidc5m3upsteps],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m3upstepsReplica
		ApplyContext "Saidc5m3upsteps:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m3warzoneReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m3warzone],
			[IsNotSaidc5m3warzone],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m3warzoneReplica
		ApplyContext "Saidc5m3warzone:1:0"
		applycontexttoworld
	},
	{
		name = "C5M4BombExtReplica",
		criteria = 
		[
			[ConceptC5M4BombExt],
			[IsReplica],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
		],
		Response C5M4BombExtReplica
		ApplyContext "Talk:1:3.765"
		applycontexttoworld
	},
	{
		name = "C5M4BombInt01Replica",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NoAirstrikes],
		],
		Response C5M4BombInt01Replica
		then any C5M4BombIntA foo:0 0.01 //SHIT!
		ApplyContext "_auto_Airstrike:++1"
		applycontexttoworld
	},
	{
		name = "C5M4BombInt01AReplica",
		criteria = 
		[
			[ConceptC5M4BombIntA],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M4BombInt01AReplica
	},
	{
		name = "C5M4BombInt02Replica",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsReplica],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[_auto_FirstAirstrike],
		],
		Response NoResponse
		ApplyContext "_auto_Airstrike:++1"
		applycontexttoworld
	},
	{
		name = "C5M4BombInt03Replica",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsReplica],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[_auto_SecondAirstrike],
		],
		Response C5M4BombInt03Replica
		ApplyContext "Talk:1:1.312,_auto_Airstrike:++1"
		applycontexttoworld
	},
	{
		name = "C5M4BombIntManyReplica",
		criteria = 
		[
			[ConceptC5M4BombInt],
			[IsReplica],
			[NotInCombat],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInStartArea],
			[_auto_ManyAirstrikes],
		],
		Response C5M4BombInt03Replica
		ApplyContext "Talk:1:1.312,_auto_Airstrike:++1"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m4inminifinaleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m4inminifinale],
			[IsNotSaidc5m4inminifinale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m4inminifinaleReplica
		ApplyContext "Saidc5m4inminifinale:1:0,_auto_InMiniFinale:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m4seebridgeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m4seebridge],
			[IsNotSaidc5m4seebridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m4seebridgeReplica
		ApplyContext "Saidc5m4seebridge:1:0,_auto_SawBridge:1:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryInterruptReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsReplica],
			[IsNotSaidLeavingSafeArea],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		Response EllisStoryInterruptReplica
		then mechanic EllisStoryReac01 foo:0 0.01 //We ain't got time for this, Ellis.
		ApplyContext "Talk:1:1.852,SaidLeavingSafeArea:1:0,_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryInterruptGenericReplica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		//forceweight 1
		Response EllisStoryInterruptGenericReplica
		then Mechanic EllisStoryReac01 foo:0 0.01 //Boy, you are WEARIN' me out.
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0,_auto_FullStory:1:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryInterruptC1M2Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[ismap_c1m2_streets],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		Response EllisStoryInterruptC1M2Replica
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryInterruptGenericC1M3Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[ismap_c1m3_mall],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		Response EllisStoryInterruptGenericReplica
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryInterruptGenericC2M5Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[ismap_c2m5],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		Response EllisStoryInterruptGenericReplica
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryInterruptC3M2Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[ismapc3m2_swamp],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		Response EllisStoryInterruptC3M2Replica
		then Mechanic PlayerNo foo:0 0 //All right, you MENTIONED pancakes, but it wasn't really ABOUT them, was it?
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryInterruptGenericC4M3Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[isc4m3],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		Response EllisStoryInterruptGenericReplica
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryInterruptGenericC4M4Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[isc4m4],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		Response EllisStoryInterruptGenericReplica
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryInterruptGenericC5M2Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[IsMapc5m2_park],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		Response EllisStoryInterruptGenericReplica
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryInterruptGenericC5M5Replica",
		criteria = 
		[
			[ConceptEllisInterrupt],
			[IsReplica],
			[IsMapc5m5_bridge],
			[_auto_IsTellingStory],
			[_auto_NotDidInterrupt],
		],
		Response EllisStoryInterruptGenericReplica
		ApplyContext "_auto_DidInterrupt:1:0,_auto_TellingStory:0:0"
		applycontexttoworld
	},
	{
		name = "EllisStoryReac01Replica",
		criteria = 
		[
			[ConceptEllisStoryReac01],
			[IsReplica],
			[ismapc3m2_swamp],
		],
		Response EllisStoryReac01Replica
		then Producer EllisStoryReac01 foo:0 -.5 //Girl! What are you doing?
	},
	{
		name = "C5M5_Button2Replica",
		criteria = 
		[
			[ConceptC5M5_Button2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M5_Button2Replica
		ApplyContext "_auto_BridgeNag:0:0"
		applycontexttoworld
	},
	{
		name = "C5M5_GateDownReplica",
		criteria = 
		[
			[ConceptC5M5_GateDown],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M5_GateDownReplica
	},
	{
		name = "C5M5_SurvivorConv01Replica",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv01],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		Response C5M5_SurvivorConv01Replica
		then orator C5M5_Soldier1Conv03 foo:0 0.01 //Hey! There's four of us on the bridge!
	},
	{
		name = "C5M5_SurvivorConv02Replica",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv02],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		Response C5M5_SurvivorConv02Replica
		then orator C5M5_Soldier1Conv04 foo:0 0.01 //We are NOT infected.
	},
	{
		name = "C5M5_SurvivorConv03Replica",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv03],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		Response C5M5_SurvivorConv03Replica
		then orator C5M5_Soldier1Conv05 foo:0 0.01 //"Encountered"? Boy, I am covered in zombie blood and puke and eyeballs and twenty other parts I don't even recognize. We are immune as SHIT.
	},
	{
		name = "C5M5_SurvivorConv04Replica",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv04],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		Response C5M5_SurvivorConv04Replica
		then orator C5M5_Soldier1Conv08 foo:0 0.01 //I hear ya man.  See ya soon.
	},
	{
		name = "C5M5_SurvivorConv05Replica",
		criteria = 
		[
			[ConceptC5M5_SurvivorConv05],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		Response C5M5_SurvivorConv05Replica
		then orator C5M5_Soldier1Conv08 foo:0 0.01 //We gotcha. We used to that shit by now.
	},
	{
		name = "C5M5_LowerTheBridgeReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[_auto_IsBridgeNag],
			[IsNotSpeakingWeight0],
		],
		Response C5M5_LowerTheBridgeReplica
		ApplyContext "_auto_TimerLockA:1:30,_auto_TimerLockReplica:1:15"
		applycontexttoworld
	},
	{
		name = "C5M5Button1Replica",
		criteria = 
		[
			[ConceptC5M5Button1],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTalkingReplica],
			[_auto_NotButton2],
		],
		Response C5M5Button1Replica
		then orator C5M5_Soldier1Conv01 foo:0 0.01 //Hello!
	},
	{
		name = "C5M5Button1BuzzardRunReplica",
		criteria = 
		[
			[ConceptC5M5Button1],
			[IsReplica],
			[FromIsAnOrator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton2],
			[_auto_IsTalkingReplica],
			[_auto_IsBuzzardRunMentioned],
		],
		Response C5M5Button1BuzzardRunReplica
		then orator C5M5_Soldier1Conv01 foo:0 0.01 //Hey, y'all! Stop!
	},
	{
		name = "C5M5HearSoldiersReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsMapc5m5_bridge],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsTalk],
			[_auto_NotRadioNag],
			[_auto_IsSoldierChatter],
			[_auto_NotButton1],
			[IsNotSpeakingWeight0],
		],
		Response C5M5HearSoldiersReplica
		ApplyContext "_auto_RadioNag:1:0,_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:15"
		applycontexttoworld
	},
	{
		name = "C5M5HearSoldiersNagReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsMapc5m5_bridge],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSoldierChatter],
			[_auto_NotButton1],
			[_auto_IsRadioNag],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C5M5HearSoldiersNagReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:15"
		applycontexttoworld
	},
	{
		name = "C5M5LeaveSafeReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsReplica],
			[IsMapc5m5_bridge],
			[IsNotSaidLeavingSafeArea],
		],
		Response C5M5LeaveSafeReplica
		then orator C5M5_Soldier1 foo:0 0.01 //Blank
		ApplyContext "Talk:0:0,SaidLeavingSafeArea:1:0,_auto_TimerLockA:1:5,_auto_SoldierChatter:1:0"
		applycontexttoworld
	},
	{
		name = "C5M5RescueStartReplica",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsReplica],
			[IsMapc5m5_bridge],
			[_auto_IsFinaleStarted],
		],
		Response C5M5RescueStartReplica
		then orator_chopper C5M5SoldierHeliNag foo:0 0.01 //THERE'S OUR CHOPPER! COME ON!
		ApplyContext "_auto_Finale:2:0,_auto_TimerLockA:1:5"
		applycontexttoworld
	},
	{
		name = "C5M5RunToHeliReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[IsMapc5m5_bridge],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C5M5RunToHeliReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "C5M5RunToHeliRareReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[IsMapc5m5_bridge],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsNotAlone],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[ChanceToFire10Percent],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		//forceweight 500
		Response C5M5RunToHeliRareReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "C5M5SurvivorSpottedTankEscapeReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsMapc5m5_bridge],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInRescueVehicle],
			[IsNotSpeakingWeight0],
			[_auto_IsEscapeReady],
		],
		Response C5M5SurvivorSpottedTankEscapeReplica
		ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		applycontexttoworld
	},
	{
		name = "C5M5BridgeDestroyed2Replica",
		criteria = 
		[
			[ConceptC5M5BridgeDestroyed2],
			[IsReplica],
			[IsNotIncapacitated],
			[IsEveryoneAlive],
			[CanSpeakC5M5SurvivorOutro],
		],
		Response C5M5BridgeDestroyed2Replica
	},
	{
		name = "C5M5SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[IsMapc5m5_bridge],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		Response C5M5SafeRoomReplica
		then gambler C5M5_saferoom001 foo:0 0.01 //Allrightallright. We gonna stroll across that bridge, and the army's gonna take care of us.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "C5M5_saferoom002Replica",
		criteria = 
		[
			[ConceptC5M5_saferoom002],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M5_saferoom002Replica
		then gambler C5M5_saferoom003 foo:0 0.01 //Well, you free to make yourself a new life here in this room, Nick.
	},
	{
		name = "C5M5_saferoom004Replica",
		criteria = 
		[
			[ConceptC5M5_saferoom004],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M5_saferoom004Replica
		then gambler C5M5_saferoom004 foo:0 1 //No.
	},
	{
		name = "C5M5_saferoom005Replica",
		criteria = 
		[
			[ConceptC5M5_saferoom005],
			[IsReplica],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M5_saferoom005Replica
		then gambler C5M5_saferoom003 foo:0 0.01 //Well, you free to make yourself a new life here in this room, Nick.
	},
	{
		name = "PlayerReviveParishReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotTeenGirl],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		Response PlayerReviveParishReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerLedgeSaveParishReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotTeenGirl],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		Response PlayerReviveParishReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerLedgeSaveCriticalParishReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsNotProducer],
			[SubjectIsNotTeenGirl],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		Response PlayerReviveParishReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerReviveParishProducerReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsProducer],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		Response PlayerReviveParishProducerReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerLedgeSaveParishProducerReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsProducer],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		Response PlayerReviveParishProducerReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerLedgeSaveCriticalParishProducerReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsProducer],
			[IsMapc5m5_bridge],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
		],
		Response PlayerReviveParishProducerReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerKillTankConfirmationC5M5Replica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTank],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[IsMapc5m5_bridge],
			[IsNotSurvival],
		],
		Response PlayerKillTankConfirmationC5M5Replica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "C6M1_IntotheparkNoHealthReplica",
		criteria = 
		[
			[ConceptC6M1_IntotheparkNoHealth],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1_IntotheparkNoHealthReplica
	},
	{
		name = "C6M1Intro_01TeenGirl04Replica",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsReplica],
			[IsZoeyIntroActor],
			[IsNotSaidCXM1Intro],
			[IsNotVersus],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		//forceweight 1
		Response C6M1Intro_01TeenGirl04Replica
		then TeenGirl C6M1Intro_04a foo:0 -3.822 //Hey, hello there! You wanna let the bridge down for us?
		ApplyContext "CXM1Intro:1:0,Talk:1:0,RemarkWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
	},
	{
		name = "C6M1Intro_04bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_04b],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1Intro_04bReplica
		then TeenGirl C6M1Intro_04c foo:0 -2.342 //Y'all can't climb down there and save us a trip?
	},
	{
		name = "C6M1Intro_08aReplica",
		criteria = 
		[
			[ConceptC6M1Intro_08a],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1Intro_08aReplica
		then Any WorldC6M1_HistoricTour foo:0 1 //Got it. We'll holla back at you when we get there.
	},
	{
		name = "C6M1Intro_13bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_13b],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1Intro_13bReplica
		then Mechanic C6M1Intro_13c foo:0 -4.288 //You been killin' zombies for the better part of 2 days boy you can talk to a girl.
	},
	{
		name = "C6M1Intro_13eReplica",
		criteria = 
		[
			[ConceptC6M1Intro_13e],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1Intro_13eReplica
		then Mechanic C6M1Intro_13f foo:0 -2.690 //Okay, the boy says thank you.
	},
	{
		name = "C6M1Intro_20aReplica",
		criteria = 
		[
			[ConceptC6M1Intro_20a],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1Intro_20aReplica
		then self C6M1Intro_20b foo:0 -2.005 //(to group) Tell me this boy ain't for real.
	},
	{
		name = "C6M1Intro_20bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_20b],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1Intro_20bReplica
		then Biker C6M1Intro_20c foo:0 -2.472 //No. Can you lower the bridge?
	},
	{
		name = "C6M1Intro_20dReplica",
		criteria = 
		[
			[ConceptC6M1Intro_20d],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1Intro_20dReplica
		then Biker C6M1Intro_20e foo:0 -5.235 //Shit, okay. Yes, we are vampires? All of us are vampires?
		ApplyContext "C6M1_ReplicaIsAVampire:1:0"
		applycontexttoworld
	},
	{
		name = "C6M1Intro_20gReplica",
		criteria = 
		[
			[ConceptC6M1Intro_20g],
			[IsReplica],
			[IsReplicaAVampire],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1Intro_20gReplica
		then self IntroEnd foo:0 0.1 //Dear lord, why'd I ever leave Savannah.
	},
	{
		name = "C6M1Intro_ConfirmObjectiveReplica",
		criteria = 
		[
			[ConceptC6M1Intro_ConfirmObjective],
			[IsReplica],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1Intro_ConfirmObjectiveReplica
		then self IntroEnd foo:0 0.1 //Got it. We'll holla back at you when we get there.
	},
	{
		name = "C6M1TakeSubMachineGun01Replica",
		criteria = 
		[
			[ConceptC6M1TakeSubMachineGun01],
			[IsReplica],
			[IssuerClose],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M1TakeSubMachineGun01Replica
	},
	{
		name = "LeavingC6M1StartReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsReplica],
			[IsNotAlone],
			[YesHasFirstAidKit],
			[Isc6m1_riverbank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeaking],
		],
		Response NoResponse
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
	},
	{
		name = "LeavingC6M1StartNoHealthReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsNotSaidLeavingSafeArea],
			[IsReplica],
			[IsNotAlone],
			[NoHasFirstAidKit],
			[Isc6m1_riverbank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response LeavingC6M1StartNoHealthReplica
		then any C6M1_IntotheparkNoHealth foo:0 0.1
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
	},
	{
		name = "WorldC6M1_HistoricTourReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_HistoricTour],
			[IsNotSaidWorldC6M1_HistoricTour],
			[CanRemarkWorldC6M1_HistoricTour],
			[IsSubjectNear800],
			[IsTalk],
			[IsNotSaidLeavingSafeArea],
		],
		Response WorldC6M1_HistoricTourReplica
		then Gambler HistoricTour01a foo:0 -4.418 //Historic Under-the-River Tour! This could be pretty interesting!
		ApplyContext "SaidWorldC6M1_HistoricTour:1:0"
		applycontexttoworld
	},
	{
		name = "WorldC6M1_PostWedding01aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_PostWedding01a],
			[IsReplica],
			[IsSubjectDistNear800],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldC6M1_PostWedding01aReplica
	},
	{
		name = "WorldC6M1_WeddingWarn03aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03a],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldC6M1_WeddingWarn03aReplica
		then Producer WorldC6M1_WeddingWarn03b foo:0 -2.229 //Come on, Nick, not the time.
		ApplyContext "AtWedding:1:60"
		applycontexttoworld
	},
	{
		name = "WorldC6M1_WeddingWarn04aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn04a],
			[IsReplica],
			[IsSubjectDistNear800],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldC6M1_WeddingWarn04aReplica
		ApplyContext "AtWedding:1:60"
		applycontexttoworld
	},
	{
		name = "C6M2_OpenGate1Replica",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsReplica],
		],
		Response C6M2_OpenGate1Replica
		ApplyContext "SaidOpenedGate1:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "C6M2_OpenGate2Replica",
		criteria = 
		[
			[ConceptC6M2_OpenGate2],
			[IsReplica],
		],
		Response C6M2_OpenGate2Replica
		ApplyContext "SaidOpenedGate2:1:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo01aReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo01a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo01aReplica
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo09aReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo09a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo09aReplica
		then Gambler DLC1_C6M2_SafeRoomConvo09b foo:0 -3.735 //Oh, come on, you aren't afraid of a little dirt are you?
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoGamblerStartReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[Isc6m2_bedlam],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsGamblerAlive],
			[ChanceToFire50Percent],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		Response DLC1_C6M2_SafeRoomConvoGamblerStartReplica
		then Gambler DLC1_C6M2_SafeRoomConvo13a foo:0 -3.828 //Nick, tell me you ain't looking forward to this under-the-river tour.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo12bReplica
		then Gambler DLC1_C6M2_SafeRoomConvo12c foo:0 -2.273 //You damn right. Under a river.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo12dReplica
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo13bReplica
		then Gambler DLC1_C6M2_SafeRoomConvo13c foo:0 -5.477 //Man, Nick you got a find a way to cheer your ass up. We ain't got much to look forward to.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo13dReplica
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo14dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo14d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo14dReplica
		then Producer DLC1_C6M2_SafeRoomConvo14e foo:0 -3.766 //Oh. In my heart, I'm there already.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo15bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo15b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo15bReplica
		then Gambler DLC1_C6M2_SafeRoomConvo15c foo:0 -4.894 //Man, I keep hoping we find an open burger tank.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16aReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo16aReplica
		then Mechanic DLC1_C6M2_SafeRoomConvo16b foo:0 -4.595 //Ellis, you do know that eventually we're gonna have to leave that car behind. Right?
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16cReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo16cReplica
		then Mechanic DLC1_C6M2_SafeRoomConvo16d foo:0 -3.567 //Boy, the Military ain't exactly going to strap it to the bottom of a helicopter.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo18cReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo18cReplica
		then Producer DLC1_C6M2_SafeRoomConvo18d foo:0 -.5 //Girl! What are you doing?
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo18eReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18e],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo18eReplica
	},
	{
		name = "DLC1_C6M2_SafeRoomConvoStartReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[Isc6m2_bedlam],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		Response DLC1_C6M2_SafeRoomConvoStartReplica
		then Any DLC1_C6M2_SafeRoomConvo19a foo:0 -5.056 //Man, I just realized with all this runnin', climbin' and fightin', I ain't even had time to eat.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo19bReplica
		then Mechanic DLC1_C6M2_SafeRoomConvo19c foo:0 -8.355 //[happily] I bet I'm losin' some serious weight! [laughs proudly] Two more days, I'll be takin' my BELT in a notch.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M2_SafeRoomConvo19dReplica
		then Mechanic DLC1_C6M2_SafeRoomConvo19e foo:0 -1.762 //Man, I forgot about that.
	},
	{
		name = "WorldC6M2_InSewer101aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer101a],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldC6M2_InSewer101aReplica
	},
	{
		name = "WorldC6M2_InSewer102aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer102a],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldC6M2_InSewer102aReplica
		then Gambler WorldC6M2_InSewer102b foo:0 -3.563 //Gotta keep your head above water, man.[laughs]
	},
	{
		name = "WorldC6M2_InSewer202aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer202a],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldC6M2_InSewer202aReplica
	},
	{
		name = "WorldC6M2_InSewerLadder101aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewerLadder101a],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldC6M2_InSewerLadder101aReplica
	},
	{
		name = "WorldC6M2_OnTourWalk101cReplica",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk101c],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldC6M2_OnTourWalk101cReplica
	},
	{
		name = "WorldC6M2_OnTourWalk103aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk103a],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldC6M2_OnTourWalk103aReplica
	},
	{
		name = "WorldC6M2_Tattoo02bReplica",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo02b],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldC6M2_Tattoo02bReplica
		then Producer WorldC6M2_Tattoo02c foo:0 -2.512 //Shit, it's allll south of the border.
	},
	{
		name = "C6M3_BridgeDownReplica",
		criteria = 
		[
			[ConceptC6M3_BridgeDown],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M3_BridgeDownReplica
	},
	{
		name = "C6M3_BridgeGettoCarReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[Isc6m3_port],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C6M3_BridgeGettoCarReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "C6M3_elevatorCancelReplica",
		criteria = 
		[
			[ConceptC6M3_ElevatorCancel],
			[IsReplica],
			[IsC6M3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		//forceweight 1
		Response _PlayerInfoRemarkableBlankReplica
	},
	{
		name = "C6M3_elevatorReplica",
		criteria = 
		[
			[Conceptc6m3_elevator],
			[IsReplica],
			[IsC6M3_port],
			[IsNotSaidC6M3Elevator],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M3_elevatorReplica
		then get back to the car.
		ApplyContext "SaidC6M3Elevator:1:0,Talk:1:10"
		applycontexttoworld
	},
	{
		name = "C6M3_elevatorZoeyReplica",
		criteria = 
		[
			[Conceptc6m3_elevator],
			[IsReplica],
			[IsC6M3_port],
			[IsZoeyIntroActor],
			[IsMechanicAlive],
			[IsNotVersus],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C6M3_elevatorZoeyReplica
		ApplyContext "SaidC6M3Elevator:1:0,Talk:1:10"
		applycontexttoworld
	},
	{
		name = "C6M3_GivenItemBikerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorBiker],
			[Isc6m3_port],
		],
		Response C6M3_GivenItemBikerReplica
	},
	{
		name = "C6M3_GivenItemTeenGirlReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorTeenGirl],
			[Isc6m3_port],
		],
		Response C6M3_GivenItemTeenGirlReplica
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02eReplica",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02e],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M3_SafeRoomConvo02eReplica
	},
	{
		name = "DLC1_C6M3_SafeRoomConvoZoeyStartReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[isC6m3_port],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsZoeyIntroActor],
			[IsEveryoneAlive],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		Response DLC1_C6M3_SafeRoomConvoZoeyStartReplica
		then Mechanic DLC1_C6M3_SafeRoomConvo03a foo:0 -2.358 //Ellis. It's showtime, buddy.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M3_SafeRoomConvoFrancisStartReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[isC6m3_port],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsFrancisIntroActor],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		Response DLC1_C6M3_SafeRoomConvoFrancisStartReplica
		then Mechanic DLC1_C6M3_SafeRoomConvo08a foo:0 -3.801 //I don't trust that biker. He's probably long gone by now.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response DLC1_C6M3_SafeRoomConvo08bReplica
		then Mechanic DLC1_C6M3_SafeRoomConvo08c foo:0 -3.689 //Minute we left, bet ya he stole the Jimmy Gibbs Jr.
	},
	{
		name = "IncapBounceReplica",
		criteria = 
		[
			[ConceptSurvivorIncapacitated],
			[IsReplica],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response IncapBounceReplica
		then Biker InCapBounce2 foo:0 0 //
		ApplyContext "SaidInCapBounce:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerCallForRescueReplica",
		criteria = 
		[
			[ConceptCallForRescue],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[HasNotCalledForRescue],
		],
		Response PlayerCallForRescueReplica
		ApplyContext "CalledForRescue:1:5"
		applycontexttoworld
	},
	{
		name = "c6m3_outroReplica",
		criteria = 
		[
			[Conceptc6m3_outro3],
			[IsReplica],
			[isC6m3_port],
			[IsNotVersus],
			[IsNotIncapacitated],
			[ChanceToFire100Percent],
			[FromIsBiker],
		],
		//forceweight 1
		Response c6m3_outroReplica
	},
	{
		name = "SurvivorSpotFirstWeaponsReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotPickedUpFirstAidKit],
			[ismap_c1m1_hotel],
			[IsNotSaidFirstWeapon],
			[IsNotSaidWorldC1M1First],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpotFirstWeaponsReplica
		then gambler Player.WhinyNick foo:0 0.1 //If everyone's good with it, we should stick together.
		ApplyContext "SaidFirstWeapon:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAdrenalineReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsAdrenaline],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedAdrenalineReplica
		ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAdrenalineAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAdrenaline],
			[IsNotSaidSpot],
			[IsAdrenaline],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedAdrenalineReplica
		ApplyContext "SaidSpotAdrenaline:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAmmoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedAmmoReplica
		ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAmmoAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsAmmo],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotAmmo],
			[IsNotSaidSpot],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedAmmoReplica
		ApplyContext "SaidSpotAmmo:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAmmo2Replica",
		criteria = 
		[
			[ConceptPlayerSpotAmmo],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedAmmo2Replica
	},
	{
		name = "SurvivorSpottedDefibrillatorReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsDefibrillator],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedDefibrillatorReplica
		ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedDefibrillatorAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidDefibrillator],
			[IsNotSaidSpot],
			[IsDefibrillator],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedDefibrillatorReplica
		ApplyContext "SaidSpotDefibrillator:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedGamblerCloseReplica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedGamblerCloseReplica
	},
	{
		name = "SurvivorSpottedGamblerClose2Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedGamblerCloseReplica
	},
	{
		name = "SurvivorSpottedGamblerClose2C1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response SurvivorSpottedGamblerClose2C1Replica
	},
	{
		name = "SurvivorSpottedGamblerCloseC1Replica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response SurvivorSpottedGamblerClose2C1Replica
	},
	{
		name = "SurvivorSpottedGamblerFarReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerFar400],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedGamblerFarReplica
	},
	{
		name = "SurvivorSpottedGamblerFarC1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsGambler],
			[IsGamblerFar400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response SurvivorSpottedGamblerFarC1Replica
	},
	{
		name = "SurvivorSpottedGrenadeReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsPipeBomb],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedGrenadeReplica
		ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedGrenadeAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotGrenade],
			[IsNotSaidSpot],
			[IsPipeBomb],
			[IsWorldTalkReplica],
			[YesHasGrenade],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedGrenadeReplica
		ApplyContext "SaidSpotGrenade:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedGrenadeLauncherReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[Isgrenade_launcher],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedGrenadeLauncherReplica
		ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedGrenadeLauncherAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotgrenade_launcher],
			[IsNotSaidSpot],
			[Isgrenade_launcher],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedGrenadeLauncherReplica
		ApplyContext "SaidSpotgrenade_launcher:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedHealthReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsFirstAidKit],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedHealthReplica
		ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedHealthAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotHealth],
			[IsNotSaidSpot],
			[IsFirstAidKit],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedHealthReplica
		ApplyContext "SaidSpotHealth:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMechanicCloseReplica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedMechanicCloseReplica
	},
	{
		name = "SurvivorSpottedMechanicClose2Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedMechanicCloseReplica
	},
	{
		name = "SurvivorSpottedMechanicClose2C1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response SurvivorSpottedMechanicClose2C1Replica
	},
	{
		name = "SurvivorSpottedMechanicCloseC1Replica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response SurvivorSpottedMechanicClose2C1Replica
	},
	{
		name = "SurvivorSpottedMechanicFarReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicFar400],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedMechanicFarReplica
	},
	{
		name = "SurvivorSpottedMechanicFarC1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsMechanic],
			[IsMechanicFar400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response SurvivorSpottedMechanicFarC1Replica
	},
	{
		name = "SurvivorSpottedMolotovReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsMolotov],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMolotovReplica
		ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMolotovAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotMolotov],
			[IsNotSaidSpot],
			[IsMolotov],
			[IsWorldTalkReplica],
			[YesHasMolotov],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedMolotovReplica
		ApplyContext "SaidSpotMolotov:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedPillsReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsPainPills],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedPillsReplica
		ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedPillsAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedPillsReplica
		ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedPillsAutoHasPillsReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[YesHasPainPills],
			[IsNotAlone],
			[IsNotSaidSpotPills],
			[IsNotSaidSpot],
			[IsPainPills],
			[ChanceToFire40Percent],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedPillsAutoHasPillsReplica
		ApplyContext "SaidSpotPills:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedProducerCloseReplica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedProducerCloseReplica
	},
	{
		name = "SurvivorSpottedProducerClose2Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedProducerCloseReplica
	},
	{
		name = "SurvivorSpottedProducerClose2C1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response SurvivorSpottedProducerClose2C1Replica
	},
	{
		name = "SurvivorSpottedProducerCloseC1Replica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerNear400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response SurvivorSpottedProducerClose2C1Replica
	},
	{
		name = "SurvivorSpottedProducerFarReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerFar400],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedProducerFarReplica
	},
	{
		name = "SurvivorSpottedProducerFarC1Replica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[SubjectIsProducer],
			[IsProducerFar400],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response SurvivorSpottedProducerFarC1Replica
	},
	{
		name = "SurvivorSpottedUpPack_ExplosiveReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Explosive],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedUpPack_ExplosiveReplica
		ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedUpPack_ExplosiveAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Explosive],
			[IsNotSaidSpot],
			[IsUpgradePack_Explosive],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedUpPack_ExplosiveReplica
		ApplyContext "SaidSpotUpgradePack_Explosive:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedUpPack_IncendiaryReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsUpgradePack_Incendiary],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedUpPack_IncendiaryReplica
		ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedUpPack_IncendiAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotAlone],
			[IsNotSaidSpotUpgradePack_Incendiary],
			[IsNotSaidSpot],
			[IsUpgradePack_Incendiary],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedUpPack_IncendiaryReplica
		ApplyContext "SaidSpotUpgradePack_Incendiary:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedVomitJarReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedVomitJarReplica
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedVomitJarAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedVomitJarReplica
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedVomitJarAutoC1Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotVomitJar],
			[IsNotSaidSpot],
			[IsVomitJar],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedVomitJarAutoC1Replica
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedVomitJarC1Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsVomitJar],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
		],
		Response SurvivorSpottedVomitJarAutoC1Replica
		ApplyContext "SaidSpotVomitJar:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedWorldCloseReplica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedWorldCloseReplica
	},
	{
		name = "SurvivorSpottedArmoredReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidArmoredWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedArmoredReplica
		ApplyContext "SaidArmoredWarn:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedArmoredC5M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeArmored],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidArmoredWarn],
			[ismap_c5m1_waterfront],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedArmoredC5M1Replica
		ApplyContext "SaidArmoredWarn:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedBoomerReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedBoomerReplica
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedBoomerAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedBoomerReplica
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedBoomer2Replica",
		criteria = 
		[
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedBoomerReplica
	},
	{
		name = "SurvivorSpottedBoomerC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedBoomerC1M1Replica
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedBoomerAlsoC1M1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		Response SurvivorSpottedBoomerC1M1Replica
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedBoomer2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		Response SurvivorSpottedBoomerC1M1Replica
	},
	{
		name = "SurvivorSpottedBoomerC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowBoomer],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		Response SurvivorSpottedBoomerC1M2Replica
		then any Player.KnowBoomer foo:0 0.1 //That's what they call a boomer...
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30,KnowBoomer:1:0,Talk:1:6"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedBoomerAlsoC1M2Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		Response SurvivorSpottedBoomerC1M1Replica
		ApplyContext "SaidBoomerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedCedaReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedCedaReplica
		ApplyContext "SaidCedaWarn:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedCedaC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCeda],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidCedaWarn],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedCedaReplica
		ApplyContext "SaidCedaWarn:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedChargerReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedChargerReplica
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedChargerAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedChargerReplica
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedCharger2Replica",
		criteria = 
		[
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedChargerReplica
	},
	{
		name = "SurvivorSpottedChargerC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedChargerC1M1Replica
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedChargerAlsoC1M1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		Response SurvivorSpottedChargerC1M1Replica
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedCharger2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		Response SurvivorSpottedChargerC1M1Replica
	},
	{
		name = "SurvivorSpottedChargerC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowCharger],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		Response SurvivorSpottedChargerC1M2Replica
		then any Player.KnowCharger foo:0 0.1 //They call them Chargers.
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30,KnowCharger:1:0,Talk:1:6"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedChargerAlsoC1M2Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		Response SurvivorSpottedChargerC1M1Replica
		ApplyContext "SaidChargerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedClownReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidClownWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedClownReplica
		ApplyContext "SaidClownWarn:1:20,SawClowns:++1"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedFallenReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedFallenReplica
		ApplyContext "SaidFallenWarn:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedFirstClownReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeClown],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidClownWarn],
			[ismap_c2m2],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedFirstClownReplica
		ApplyContext "SaidClownWarn:1:0,SawClowns:++1"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedHunterReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedHunterReplica
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedHunterAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedHunterReplica
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedHunter2Replica",
		criteria = 
		[
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedHunterReplica
	},
	{
		name = "SurvivorSpottedHunterC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedHunterC1M1Replica
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedHunterAlsoC1M1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		Response SurvivorSpottedHunterC1M1Replica
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedHunter2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		Response SurvivorSpottedHunterC1M1Replica
	},
	{
		name = "SurvivorSpottedHunterC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeHunter],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowHunter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		Response SurvivorSpottedHunterC1M2Replica
		then any Player.KnowHunter foo:0 0.1 //Think they call 'em Hunters.
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30,KnowHunter:1:0,Talk:1:6"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedHunterAlsoC1M2Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		Response SurvivorSpottedHunterC1M1Replica
		ApplyContext "SaidHunterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedInfectedReplica",
		criteria = 
		[
			[ConceptPlayerIncoming],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedInfectedReplica
	},
	{
		name = "SurvivorSpottedJimmyReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJimmy],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidJimmyWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedJimmyReplica
		ApplyContext "SaidJimmyWarn:1:3"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedJockeyReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedJockeyReplica
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedJockeyAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedJockeyReplica
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedJockey2Replica",
		criteria = 
		[
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedJockeyReplica
	},
	{
		name = "SurvivorSpottedJockeyC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedJockeyC1M1Replica
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedJockeyAlsoC1M1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		Response SurvivorSpottedJockeyC1M1Replica
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedJockey2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		Response SurvivorSpottedJockeyC1M1Replica
	},
	{
		name = "SurvivorSpottedJockeyC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowJockey],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		Response SurvivorSpottedJockeyC1M2Replica
		then any Player.KnowJockey foo:0 0.1 //I think they're called Jockeys.
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30,KnowJockey:1:0,Talk:1:6"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedJockeyAlsoC1M2Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		Response SurvivorSpottedJockeyC1M1Replica
		ApplyContext "SaidJockeyWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMudmenReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMudmenReplica
		ApplyContext "SaidMudmenWarn:1:20,SawMudMen:++1"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMudmenC3M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeMudmen],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidMudmenWarn],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMudmenC3M2Replica
		ApplyContext "SaidMudmenWarn:1:0,SawMudMen:++1"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSmokerReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedSmokerReplica
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSmokerAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedSmokerReplica
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSmoker2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedSmokerReplica
	},
	{
		name = "SurvivorSpottedSmokerC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		Response SurvivorSpottedSmokerC1Replica
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSmokerAlsoC1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		Response SurvivorSpottedSmokerC1Replica
		ApplyContext "SaidSmokerWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSmoker2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		Response SurvivorSpottedSmokerC1Replica
	},
	{
		name = "SurvivorSpottedSpitterReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedSpitterReplica
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSpitterAlsoReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedSpitterReplica
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSpitter2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedSpitterReplica
	},
	{
		name = "SurvivorSpottedSpitterC1M1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedSpitterC1M1Replica
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSpitterAlsoC1M1Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m1_hotel],
		],
		Response SurvivorSpottedSpitterC1M1Replica
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSpitter2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		Response SurvivorSpottedSpitterC1M1Replica
	},
	{
		name = "SurvivorSpottedSpitterC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowSpitter],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		Response SurvivorSpottedSpitterC1M2Replica
		then any Player.KnowSpitter foo:0 0.1 //They've been calling them things Spitters.
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30,KnowSpitter:1:0,Talk:1:6"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSpitterAlsoC1M2Replica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnSpecial],
			[IsSpecialTypeSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[ismap_c1m2_streets],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		Response SurvivorSpottedSpitterC1M1Replica
		ApplyContext "SaidSpitterWarn:1:20,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedTankReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedTankReplica
		ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedTank2Replica",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedTankReplica
	},
	{
		name = "SurvivorSpottedTankC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[C1M1orC1M2],
			[IsNotSpeakingWeight0],
			[IsNotSurvival],
		],
		Response SurvivorSpottedTankC1Replica
		ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedTank2C1Replica",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[IsNotIncapacitated],
			[IsNotSurvival],
		],
		Response SurvivorSpottedTankC1Replica
	},
	{
		name = "L4D1SpottedTankReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[Isc6m3_port],
			[IsNotSpeakingWeight0],
			[IsNotVersus],
			[IsNotSurvival],
			[_auto_NotSpottedVehicle],
		],
		Response L4D1SpottedTankReplica
		ApplyContext "SaidTankWarn:1:20,SaidTankWarn2:1:60"
		applycontexttoworld
	},
	{
		name = "L4D1SpottedTank2Replica",
		criteria = 
		[
			[ConceptPlayerWarnTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[Isc6m3_port],
			[IsNotVersus],
			[IsNotSurvival],
			[_auto_NotSpottedVehicle],
		],
		Response L4D1SpottedTankReplica
	},
	{
		name = "SurvivorSpottedWitchReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWitchReplica
		ApplyContext "SaidWitchWarn:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedWitch2Replica",
		criteria = 
		[
			[ConceptPlayerWarnWitch],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSaidWitchStartAttack],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWitchReplica
	},
	{
		name = "SurvivorSpottedWitchC1M2Replica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeWitch],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[IsNotSaidWitchStartAttack],
			[IsProducerAlive],
			[IsProducerNear400],
			[C1M1orC1M2],
		],
		Response SurvivorSpottedWitchC1M2Replica
		then producer BeNice foo:0 0.1 //I see that Bitch!
		ApplyContext "SaidWitchWarn:1:20"
		applycontexttoworld
	},
	{
		name = "PlayerAlertGiveItemReplica",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[NotInIntenseCombat],
			[IsWorldTalkReplica],
		],
		Response PlayerAlertGiveItemReplica
	},
	{
		name = "PlayerAlertGiveItemC1Replica",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[NotInIntenseCombat],
			[IsWorldTalkReplica],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		Response PlayerAlertGiveItemC1Replica
	},
	{
		name = "PlayerAlertGiveItemCombatReplica",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[InIntenseCombat],
			[IsWorldTalkReplica],
		],
		Response PlayerAlertGiveItemCombatReplica
	},
	{
		name = "PlayerAlertGiveItemTankReplica",
		criteria = 
		[
			[ConceptPlayerAlertGiveItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkReplica],
		],
		Response PlayerAlertGiveItemCombatReplica
	},
	{
		name = "PlayerFaultFriendlyFireReplica",
		criteria = 
		[
			[IsFaultConcept],
			[IsFaultFriendlyFire],
			[IsReplica],
		],
		Response NoResponse
		ApplyContext "SaidFaultFriendlyFire:1:0.1,SaidFaultFriendlyFireReplica:1:0.1,ShotTeammateReplica:1:6"
		applycontexttoworld
	},
	{
		name = "PlayerFriendlyFireReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
		],
		Response PlayerFriendlyFireReplica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireC1Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotOnThirdStrike],
			[IsNotZombiePresentTank],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		Response PlayerFriendlyFireC1Replica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFire2Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeExplosive],
			[IsTalk],
			[IsTalkReplica],
			[IsOnThirdStrike],
			[IsNotZombiePresentTank],
			[IsWorldTalkReplica],
		],
		Response PlayerFriendlyFire2Replica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireFromGamblerReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		Response PlayerFriendlyFireFromGamblerReplica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireFromMechanicReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[isNotmap_c1m1_hotel],
		],
		Response PlayerFriendlyFireFromMechanicReplica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireFromMechanicC1Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response PlayerFriendlyFireFromMechanicC1Replica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireFromProducerReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsProducer],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
		],
		Response PlayerFriendlyFireFromProducerReplica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireFromProducerC1Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response PlayerFriendlyFireFromProducerC1Replica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireNoBulletReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
		],
		Response PlayerFriendlyFireNoBulletReplica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireNoBulletC1Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsNotDamageTypeBullet],
			[IsNotDamageTypeExplosive],
			[IsNotOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response PlayerFriendlyFireNoBulletC1Replica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireTankReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		Response PlayerFriendlyFireTankReplica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireTankC1Replica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		Response PlayerFriendlyFireTankC1Replica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireTankGamblerReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsGambler],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		Response PlayerFriendlyFireTankGamblerReplica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireTankMechanicReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsMechanic],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		Response PlayerFriendlyFireTankMechanicReplica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerFriendlyFireTankProducerReplica",
		criteria = 
		[
			[ConceptPlayerFriendlyFire],
			[IsNotCoughing],
			[IsReplica],
			[IsNotFriendlyFire],
			[IsNotIncapacitated],
			[IsDamageTypeBullet],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[ChanceToFire30Percent],
			[IsNotIncapacitated],
			[SubjectIsProducer],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[isNotmap_c1m2_streets],
		],
		Response PlayerFriendlyFireTankProducerReplica
		ApplyContext "FriendlyFire:1:10"
	},
	{
		name = "PlayerToTheRescueReplica",
		criteria = 
		[
			[ConceptSurvivorBotMovingToReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[NotInCombat],
			[IsNotSaidRescueComing],
			[IsDistanceSubjectO600],
			[IsWorldTalkReplica],
		],
		Response PlayerToTheRescueReplica
		ApplyContext "SaidRescueComing:1:20"
		applycontexttoworld
	},
	{
		name = "PlayerToTheRescueRosReplica",
		criteria = 
		[
			[ConceptPlayerToTheRescue],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerToTheRescueRosReplica
	},
	{
		name = "SurvivorTauntResponseReplica",
		criteria = 
		[
			[ConceptPlayerTaunt],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotVersus],
		],
		Response SurvivorTauntResponseReplica
	},
	{
		name = "C4M1IdleComment01Replica",
		criteria = 
		[
			[ConceptTalkIdle],
			[ChanceToFire40Percent],
			[IsSurvivor],
			[ismap_c4m1_milltown_a],
			[IsSaidc4m1_nogas],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[NotInCombat],
			[IsWorldTalkReplica],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotNoGasGate],
		],
		Response C4M1IdleComment01Replica
		ApplyContext "Talk:1:5.016,_auto_NoGasGate:2:0"
		applycontexttoworld
	},
	{
		name = "C4M2IdleCommentCane01Replica",
		criteria = 
		[
			[ConceptTalkIdle],
			[ChanceToFire60Percent],
			[IsSurvivor],
			[ismap_c4m2_sugarmill_a],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsReplicaInCane],
			[_auto_NotCaneYellGated],
			[_auto_NotLastSurvivorTalkedReplica],
		],
		Response C4M2IdleCommentCane01Replica
		then any _c4m2_caneyell01 foo:0 0.01 //KEEP MOVING! HEAD FOR THE SIGN!
		ApplyContext "_auto_CaneYellGated:1:10,_auto_LastSurvivorTalkedReplica:1:15"
		applycontexttoworld
	},
	{
		name = "PlayerChokeResponseReplica",
		criteria = 
		[
			[ConceptPlayerChoke],
			[IsSurvivor],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerChokeResponseReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerReloadingC502RunReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsMapc5m2_park],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotZombiePresentTank],
			[ChanceToFire50Percent],
			[_auto_IsAlarm],
		],
		Response PlayerReloadingC502RunReplica
	},
	{
		name = "PlayerReloadingTankReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerReloadingTankReplica
		ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		applycontexttoworld
	},
	{
		name = "PlayerReloadingTankC1Replica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidReloadingTank],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		Response PlayerReloadingTankC1Replica
		ApplyContext "SaidReloadingTank:1:10,SaidTankWarn2:1:20"
		applycontexttoworld
	},
	{
		name = "PlayerWitchChasingReplica",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsReplica],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkReplica],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[IsWitchAggro],
		],
		Response PlayerWitchChasingReplica
		ApplyContext "SaidWitchChasing:1:5,TalkReplica:1:2"
	},
	{
		name = "PlayerWitchChasingC6M1Replica",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsReplica],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidWitchChasing],
			[IsSaidWitchAttacking],
			[IsTalkReplica],
			[isc6m1_riverbank],
			[IsWitchAggro],
		],
		//forceweight 20
		Response PlayerWitchChasingC6M1Replica
		ApplyContext "SaidWitchChasing:1:15,TalkReplica:1:2"
	},
	{
		name = "PlayerWitchStartAttackReplica",
		criteria = 
		[
			[IsFaultConcept],
			[IsReplica],
			[IsFaultWitchHarassment],
		],
		Response PlayerWitchStartAttackReplica
		ApplyContext "SaidWitchAttacking:1:15,TalkReplica:1:2,SaidWitchStartAttack:1:15"
	},
	{
		name = "PlayerWitchStartAttackC6M1Replica",
		criteria = 
		[
			[IsFaultConcept],
			[IsReplica],
			[IsFaultWitchHarassment],
			[isc6m1_riverbank],
		],
		Response PlayerWitchStartAttackC6M1Replica
		ApplyContext "SaidWitchAttacking:1:15,TalkReplica:1:2,SaidWitchStartAttack:1:15"
	},
	{
		name = "WitchAggroReplica",
		criteria = 
		[
			[ConceptWitchStartAttack],
			[IsReplica],
			[Iswitch_aggro_onReplica],
		],
		Response NoResponse
		ApplyContext "WitchAggro:++1"
		applycontexttoworld
	},
	{
		name = "SurvivorCriticalHurtReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsCriticalPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotJockey],
			[IsWorldTalkReplica],
		],
		Response SurvivorCriticalHurtReplica
	},
	{
		name = "SurvivorIncapacitatedHurtReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsNotSpeaking],
			[IsIncapacitatedPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorIncapacitatedHurtReplica
	},
	{
		name = "SurvivorJockeyHurtMajorReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[IsBeingJockeyed],
		],
		Response SurvivorJockeyHurtMajorReplica
		then all commentjockey foo:0 -1.070 //Jockey on me!
		ApplyContext "SaidBeenJockeyedReplica:1:6,TalkReplica:1:6"
		applycontexttoworld
	},
	{
		name = "SurvivorJockeyHurtMinorReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[IsBeingJockeyed],
		],
		Response SurvivorJockeyHurtMajorReplica
		ApplyContext "SaidBeenJockeyedReplica:1:6,TalkReplica:1:6"
		applycontexttoworld
	},
	{
		name = "SurvivorJockeyHurtMajorC1Replica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
			[IsNotSurvival],
		],
		Response SurvivorJockeyHurtMajorC1Replica
		ApplyContext "SaidBeenJockeyedReplica:1:6,TalkReplica:1:6"
		applycontexttoworld
	},
	{
		name = "SurvivorJockeyHurtMinorC1Replica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsBeingJockeyed],
			[IsNotSurvival],
		],
		Response SurvivorJockeyHurtMajorC1Replica
		ApplyContext "SaidBeenJockeyedReplica:1:6,TalkReplica:1:6"
		applycontexttoworld
	},
	{
		name = "SurvivorMajorHurtReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMajorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotJockey],
			[IsWorldTalkReplica],
		],
		Response SurvivorMajorHurtReplica
	},
	{
		name = "SurvivorMinorHurtReplica",
		criteria = 
		[
			[IsSurvivor],
			[InPain],
			[IsMinorPain],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotJockey],
			[IsWorldTalkReplica],
		],
		Response SurvivorMinorHurtReplica
	},
	{
		name = "SurvivorReloadingReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			[NotInIntenseCombat],
			[_auto_NotReplicaInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorReloadingReplica
	},
	{
		name = "SurvivorReloadingIntenseReplica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[IsNotZombiePresentTank],
			[InIntenseCombat],
			[_auto_NotReplicaInWitchville],
			[_auto_NotAlarmV2],
			[_auto_ConcertNotLive],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorReloadingIntenseReplica
	},
	{
		name = "SurvivorReloadingC4M2Replica",
		criteria = 
		[
			[ConceptPlayerReloading],
			[IsSurvivor],
			[IsNotSpeaking],
			[IsReplica],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[RecentGroupInCombat10],
			[HasNotgrenadelauncher],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[ismap_c4m2_sugarmill_a],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[_auto_IsReplicaInWitchville],
		],
		Response SurvivorReloadingC4M2Replica
	},
	{
		name = "PlayerHelpIncappedReplica",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsReplica],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsIncapacitated],
			[IsIncappedStarted],
			[IsIncappedStarted2],
			[NotCalledForHelpRecently],
			[IsWorldTalkReplica],
		],
		Response PlayerHelpIncappedReplica
		ApplyContext "CalledForHelp:1:7.5"
	},
	{
		name = "PlayerHelpIncappedBleedingReplica",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsReplica],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsIncapacitated],
			[IsIncappedBleeding1],
			[IsIncappedBleeding2],
			[NotCalledForHelpRecently],
			[IsWorldTalkReplica],
		],
		Response PlayerHelpIncappedBleedingReplica
		ApplyContext "CalledForHelp:1:15"
	},
	{
		name = "PlayerHelpIncappedLethargicReplica",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsReplica],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsIncapacitated],
			[IsIncappedLethargic],
			[NotCalledForHelpRecently],
			[IsWorldTalkReplica],
		],
		Response PlayerHelpIncappedLethargicReplica
		ApplyContext "CalledForHelp:1:30"
	},
	{
		name = "HelpResponseCoachReplica",
		criteria = 
		[
			[ConceptFriendNeedsHelp],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsInSafeSpot],
			[FromIsReplica],
			[IsNotInStartArea],
			[NotAloneInSafeSpot],
			[IsWorldTalkReplica],
		],
		Response HelpResponseCoachReplica
	},
	{
		name = "C2M1FallingReplica",
		criteria = 
		[
			[ConceptC2M1Falling],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M1FallingReplica
		then self EndOfWavWindow5 foo:0 0.01 //Whoaaa! Whoa!
		ApplyContext "Talk:1:1.615"
		applycontexttoworld
	},
	{
		name = "C2M2CarouselOffReplica",
		criteria = 
		[
			[Conceptc2m2CarouselEnd],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M2CarouselOffReplica
		ApplyContext "Talk:1:0.895,_auto_Alarm:2:0"
		applycontexttoworld
	},
	{
		name = "C2M2CarouselOnReplica",
		criteria = 
		[
			[Conceptc2m2CarouselStart],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M2CarouselOnReplica
		then self _C2M2_CaroStart03 foo:0 2.0 //Gate's open!
		ApplyContext "_auto_Alarm:1:0,_auto_TimerLockA:1:6,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "C3M3BridgeButtonReplica",
		criteria = 
		[
			[ConceptC3M3BridgeButton],
			[IsNotSaidC3M3BridgeButton],
			[IsReplica],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C3M3BridgeButtonReplica
		ApplyContext "SaidC3M3BridgeButton:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "EndOfWavWindow5Replica",
		criteria = 
		[
			[ConceptEndOfWavWindow5],
			[IsReplica],
		],
		Response EndOfWavWindow5Replica
		ApplyContext "_auto_ReplicaWavWindow:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerChainSawUsedReplica",
		criteria = 
		[
			[ConceptChainsawUsed],
			[IsNotSaidChainSawUsed],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IntensityOver50],
			[IsWorldTalkReplica],
		],
		Response PlayerChainSawUsedReplica
		ApplyContext "SaidChainSawUsed:1:90"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M1OverTableReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M1OverTable],
			[IsNotSaidC1M1OverTable],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M1OverTableReplica
		then any C1M1Cough foo:0 -1.753 //Come on y' all this way.
		ApplyContext "SaidC1M1OverTable:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M1SearchRoomsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M1SearchRooms],
			[IsNotSaidC1M1SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M1SearchRoomsReplica
		then any C1M1Cough foo:0 -2.783 //Search these rooms. Might be something we can use.
		ApplyContext "SaidC1M1SearchRooms:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M1ThroughThisDoorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M1ThroughThisDoor],
			[IsNotSaidC1M1ThroughThisDoor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M1ThroughThisDoorReplica
		then any C1M1Cough foo:0 -0.932 //Through this door!
		ApplyContext "SaidC1M1ThroughThisDoor:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M2SpotGunStoreReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsRemarkWorldC1M2SpotGunStore],
			[IsNotSaidRemarkWorldC1M2SpotGunStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear800],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M2SpotGunStoreReplica
		ApplyContext "SaidRemarkWorldC1M2SpotGunStore:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3AlarmDoorsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3AlarmDoors],
			[IsNotSaidC1M3AlarmDoors],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3AlarmDoorsReplica
		ApplyContext "SaidC1M3AlarmDoors:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3CarefulWindowsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3CarefulWindows],
			[IsNotSaidC1M3CarefulWindows],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[_auto_NotAlarm],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3CarefulWindowsReplica
		ApplyContext "SaidC1M3CarefulWindows:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3CEDAGoneReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3CEDAGone],
			[IsNotSaidC1M3CEDAGone],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3CEDAGoneReplica
		ApplyContext "SaidC1M3CEDAGone:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3DiscoPantsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3DiscoPants],
			[IsNotSaidC1M3DiscoPants],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3DiscoPantsReplica
		ApplyContext "SaidC1M3DiscoPants:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3DownHere],
			[IsNotSaidC1M3DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3DownHereReplica
		ApplyContext "SaidC1M3DownHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3DownHere2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3DownHere2],
			[IsNotSaidC1M3DownHere2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3DownHereReplica
		ApplyContext "SaidC1M3DownHere2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3DownTheEscalatorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3DownTheEscalator],
			[IsNotSaidC1M3DownTheEscalator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3DownTheEscalatorReplica
		ApplyContext "SaidC1M3DownTheEscalator:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3FoodCourtNotOkayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3FoodCourtNotOkay],
			[IsNotSaidC1M3FoodCourtNotOkay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3FoodCourtNotOkayReplica
		ApplyContext "SaidC1M3FoodCourtNotOkay:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3FoodCourtOkayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3FoodCourtOkay],
			[IsNotSaidC1M3FoodCourtOkay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3FoodCourtOkayReplica
		ApplyContext "SaidC1M3FoodCourtOkay:1:0,SaidC1M3ReplicaFoodCourt:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3OverHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3OverHere],
			[IsNotSaidC1M3OverHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3OverHereReplica
		ApplyContext "SaidC1M3OverHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3SearchRoomsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3SearchRooms],
			[IsNotSaidC1M3SearchRooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3SearchRoomsReplica
		then any C1M1Cough foo:0 -2.783 //Search these rooms. Might be something we can use.
		ApplyContext "SaidC1M3SearchRooms:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3ThisWayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3ThisWay],
			[IsNotSaidC1M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3ThisWayReplica
		ApplyContext "SaidC1M3ThisWay:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3ThroughHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3ThroughHere],
			[IsNotSaidC1M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3ThroughHereReplica
		ApplyContext "SaidC1M3ThroughHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3TurnOffAlarm1],
			[IsNotSaidC1M3TurnOffAlarm1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3TurnOffAlarm1Replica
		ApplyContext "SaidC1M3TurnOffAlarm1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3TurnOffAlarm2],
			[IsNotSaidC1M3TurnOffAlarm2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3TurnOffAlarm2Replica
		ApplyContext "SaidC1M3TurnOffAlarm2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3TurnOffAlarm3Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3TurnOffAlarm3],
			[IsNotSaidC1M3TurnOffAlarm3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3TurnOffAlarm3Replica
		ApplyContext "SaidC1M3TurnOffAlarm3:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3UpEscalator1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3UpEscalator1],
			[IsNotSaidC1M3UpEscalator1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3UpEscalator1Replica
		ApplyContext "SaidC1M3UpEscalator1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3UpEscalator2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3UpEscalator2],
			[IsNotSaidC1M3UpEscalator2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3UpEscalator1Replica
		ApplyContext "SaidC1M3UpEscalator2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC1M3UpEscalator3Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC1M3UpEscalator3],
			[IsNotSaidC1M3UpEscalator3],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3UpEscalator1Replica
		ApplyContext "SaidC1M3UpEscalator3:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_campsiteReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_campsite],
			[IsNotSaidc2m1_campsite],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_campsiteReplica
		ApplyContext "Saidc2m1_campsite:1:0,Talk:1:2.914"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_checkroomsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_checkrooms],
			[IsNotSaidc2m1_checkrooms],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_checkroomsReplica
		ApplyContext "Saidc2m1_checkrooms:1:0,Talk:1:2.591"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_cliffReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_cliff],
			[IsNotSaidc2m1_cliff],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_cliffReplica
		ApplyContext "Saidc2m1_cliff:1:0,Talk:1:5.157"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_downstairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_downstairs],
			[IsNotSaidc2m1_downstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_downstairsReplica
		ApplyContext "Saidc2m1_downstairs:1:0,Talk:1:0.746"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_bridgeoutReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_bridgeout],
			[IsNotSaidc2m1_bridgeout],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_bridgeoutReplica
		ApplyContext "Saidc2m1_bridgeout:1:0,Talk:1:0.746"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_followriverReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_followriver],
			[IsNotSaidc2m1_followriver],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_followriverReplica
		ApplyContext "Saidc2m1_followriver:1:0,Talk:1:0.822"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_motelsignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_motelsign],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectFar100],
			[ChanceToFire20Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_motelsignReplica
		ApplyContext "Saidc2m1_motelsign:1:0,Talk:1:5.093"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m1_motelsignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_motelsign],
			[IsNotSaidc2m1_motelsign],
			[IsNotSaidc2m1_throughmotel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectFar100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "Saidc2m1_motelsign:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_offrampReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_offramp],
			[IsNotSaidc2m1_offramp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_offrampReplica
		ApplyContext "Saidc2m1_offramp:1:0,Talk:1:1.289"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_parkReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_park],
			[IsNotSaidc2m1_park],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_parkReplica
		ApplyContext "Saidc2m1_park:1:0,Talk:1:2.644"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_searchlightsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_searchlights],
			[IsNotSaidc2m1_searchlights],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectFar100],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		Response PlayerRemarkc2m1_searchlightsReplica
		then self _c2m1_searchlights02 foo:0 0.1 //Look at this.
		ApplyContext "Saidc2m1_searchlights:1:0,Talk:1:4.835"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_searchlightsNickReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_searchlights],
			[IsNotSaidc2m1_searchlights],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectFar100],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		Response PlayerRemarkc2m1_searchlightsNickReplica
		then gambler _c2m1_searchlights03 foo:0 0.01 //Look, searchlights! Might be survivors there, we should check it out.
		ApplyContext "Saidc2m1_searchlights:1:0,Talk:1:4.835"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_throughhereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_throughhere],
			[IsNotSaidc2m1_throughhere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_throughhereReplica
		ApplyContext "Saidc2m1_throughhere:1:0,Talk:1:1.032"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_throughmotelReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_throughmotel],
			[IsNotSaidc2m1_throughmotel],
			[IsNotSaidc2m1_motelsign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_throughmotelReplica
		ApplyContext "Saidc2m1_throughmotel:1:0,Talk:1:2.748"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_throughwindowReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_throughwindow],
			[IsNotSaidc2m1_throughwindow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_throughwindowReplica
		ApplyContext "Saidc2m1_throughwindow:1:0,Talk:1:1.089"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_uphillReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_uphill],
			[IsNotSaidc2m1_uphill],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_uphillReplica
		ApplyContext "Saidc2m1_uphill:1:0,Talk:1:0.805"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m1_upstairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m1_upstairs],
			[IsNotSaidc2m1_upstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_upstairsReplica
		ApplyContext "Saidc2m1_upstairs:1:0,Talk:1:1.221"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_burgersReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_burgers],
			[IsNotSaidc2m2_burgers],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_burgersReplica
		then mechanic _C2M2_ReplicaApocolypse foo:0 0.3 //I find a Burger Tank in this place? I'm-a be a one-man cheeseburger apocalypse.
		ApplyContext "Saidc2m2_burgers:1:0,Talk:1:6.070,_auto_ReplicaFoodBreak:1:15"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_candymachineReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_candymachine],
			[IsNotSaidc2m2_candymachine],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_candymachineReplica
		ApplyContext "Saidc2m2_candymachine:1:0,Talk:1:3.824,_auto_ReplicaFoodBreak:1:15"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_carouselbuttonReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_carouselbutton],
			[IsNotSaidc2m2_carouselbutton],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_carouselbuttonReplica
		then any _C2M2_CaroButton01 foo:0 0.1 //Alright, this is gonna open the gate and what the hell else?
		ApplyContext "Saidc2m2_carouselbutton:1:0,Talk:1:3.462"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_cobblerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_cobbler],
			[IsNotSaidc2m2_cobbler],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_cobblerReplica
		then producer _C2M2_Cobbler foo:0 0.0 //Mmmhmm. Peach cobbler.
		ApplyContext "Saidc2m2_cobbler:1:0,Talk:1:3.221,_auto_ReplicaFoodBreak:1:15"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_cottoncandyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_cottoncandy],
			[IsNotSaidc2m2_cottoncandy],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_cottoncandyReplica
		ApplyContext "Saidc2m2_cottoncandy:1:0,Talk:1:10.109,_auto_ReplicaFoodBreak:1:15"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_cottoncandy2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_cottoncandy2],
			[IsNotSaidc2m2_cottoncandy],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarmV2],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_cottoncandyReplica
		ApplyContext "Saidc2m2_cottoncandy:1:0,Talk:1:10.109,_auto_ReplicaFoodBreak:1:15"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_entrancesignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_entrancesign],
			[IsNotSaidc2m2_entrancesign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_entrancesignReplica
		then self _C2M2Entrance foo:0 0.1 //Hm. Lights on, but nobody's home.
		ApplyContext "Saidc2m2_entrancesign:1:0,Talk:1:3.331"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_lilpeanutReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_lilpeanut],
			[IsNotSaidc2m2_lilpeanut],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_lilpeanutReplica
		then mechanic _C2M2_Peanut01 foo:0 0.01 //I don't like that peanut.
		ApplyContext "Saidc2m2_lilpeanut:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_ladderReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_ladder],
			[IsNotSaidc2m2_ladder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_ladderReplica
		ApplyContext "Saidc2m2_ladder:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_favoriterideReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_favoriteride],
			[IsNotSaidc2m2_favoriteride],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_favoriterideReplica
		ApplyContext "Saidc2m2_favoriteride:1:0,Talk:1:4.037"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_kettlekornReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_kettlekorn],
			[IsNotSaidc2m2_kettlekorn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_kettlekornReplica
		ApplyContext "Saidc2m2_kettlekorn:1:0,Talk:1:2.909,_auto_ReplicaFoodBreak:1:15"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_miscfoodReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_miscfood],
			[IsNotSaidc2m2_miscfood],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_miscfoodReplica
		then producer _C2M2_MiscFood foo:0 0.1 //All these signs are making me hungry.
		ApplyContext "Saidc2m2_miscfood:1:0,Talk:1:6.240,_auto_ReplicaFoodBreak:1:15"
		applycontexttoworld
	},
	{
		name = "_C2M2_OkraReplica",
		criteria = 
		[
			[Concept_C2M2_Okra],
			[IsReplica],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2_OkraReplica
		then producer _C2M2_Okra foo:0 0.1 //And what's your point?
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_steakeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_steake],
			[IsNotSaidc2m2_steake],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsEveryoneAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaFoodBreak],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_steakeReplica
		then any _C2M2_Steak01 foo:0 0.1 //Once the world goes back to normal? I'm buyin' you guys a steak dinner.
		ApplyContext "Saidc2m2_steake:1:0,Talk:1:4.713,_auto_ReplicaFoodBreak:1:15"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_thistallReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_thistall],
			[IsNotSaidc2m2_thistall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		Response PlayerRemarkc2m2_thistallReplica
		then any _C2M2_ThisTall01 foo:0 0.01 //'You must be this tall to ride.' Well-least there won't be no jockeys in there.
		ApplyContext "Saidc2m2_thistall:1:0,Talk:1:6.523"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_thistall2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_thistall],
			[IsNotSaidc2m2_thistall],
			[ChanceToFire40Percent],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		Response PlayerRemarkc2m2_thistall2Replica
		then mechanic _C2M2_ThisTall02 foo:0 0.01  //'You must be this tall to ride.' Sorry Ellis. It's been real man.
		ApplyContext "Saidc2m2_thistall:1:0,Talk:1:5.502"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m2_topofslideReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m2_topofslide],
			[IsNotSaidc2m2_topofslide],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m2_topofslideReplica
		then mechanic _C2M2_Slide01 foo:0 0.01 //We gotta hurry.
		ApplyContext "Saidc2m2_topofslide:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_coasteroffReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_coasteroff],
			[IsNotSaidc2m3_coasteroff],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_coasteroffReplica
		ApplyContext "Saidc2m3_coasteroff:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_coollightReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_coollight],
			[IsNotSaidc2m3_coollight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_coollightReplica
		then any _c2m3_coollight01 foo:0 0.1 //Back in the day, I had some posters that woulda looked GOOD in this light.
		ApplyContext "Saidc2m3_coollight:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_freshairReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_freshair],
			[IsNotSaidc2m3_freshair],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[TimeSinceGroupInCombat02],
			[ChanceToFire90Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_freshairReplica
		ApplyContext "Saidc2m3_freshair:1:0"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m3_freshairReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_freshair],
			[IsNotSaidc2m3_freshair],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "Saidc2m3_freshair:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_holeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_hole],
			[IsNotSaidc2m3_hole],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_holeReplica
		then any _c2m3_hole01 foo:0 0.1 //Down this hole!
		ApplyContext "Saidc2m3_hole:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_longesttunnelReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_longesttunnel],
			[IsNotSaidc2m3_longesttunnel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[TimeSinceGroupInCombat04],
			[ChanceToFire80Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_longesttunnelReplica
		ApplyContext "Saidc2m3_longesttunnel:1:0"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m3_longesttunnelReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_longesttunnel],
			[IsNotSaidc2m3_longesttunnel],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[TimeSinceGroupInCombat04],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "Saidc2m3_longesttunnel:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_overfenceReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_overfence],
			[IsNotSaidc2m3_overfence],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_overfenceReplica
		ApplyContext "Saidc2m3_overfence:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_rubbleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_rubble],
			[IsNotSaidc2m3_rubble],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTeamNearCoaster],
			[_auto_NotAlarm],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_rubbleReplica
		then any _c2m3_coaster06 foo:0 0.01 //The only way over is on the coaster.
		ApplyContext "Saidc2m3_rubble:1:0,Talk:1:1.887,_auto_TimerLockA:1:12,_auto_CoasterExpo:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_swanroomReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_swanroom],
			[IsNotSaidc2m3_swanroom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_swanroomReplica
		ApplyContext "Saidc2m3_swanroom:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_tracks01Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks01],
			[IsNotSaidc2m3_tracks01],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_tracks01Replica
		ApplyContext "Saidc2m3_tracks01:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_tracks02Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks02],
			[IsNotSaidc2m3_tracks02],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_tracks01Replica
		ApplyContext "Saidc2m3_tracks02:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_tracks03Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks03],
			[IsNotSaidc2m3_tracks03],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_tracks01Replica
		ApplyContext "Saidc2m3_tracks03:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_tracks04Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks04],
			[IsNotSaidc2m3_tracks04],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_tracks01Replica
		ApplyContext "Saidc2m3_tracks04:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_tracks05Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks05],
			[IsNotSaidc2m3_tracks05],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_tracks01Replica
		ApplyContext "Saidc2m3_tracks05:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_tracks06Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks06],
			[IsNotSaidc2m3_tracks06],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_tracks01Replica
		ApplyContext "Saidc2m3_tracks06:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_tracks07Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks07],
			[IsNotSaidc2m3_tracks07],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_tracks01Replica
		ApplyContext "Saidc2m3_tracks07:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_tracks08Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_tracks08],
			[IsNotSaidc2m3_tracks08],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsTracksOK],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_tracks01Replica
		ApplyContext "Saidc2m3_tracks08:1:0,_auto_TimerLockA:1:8"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_waterReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_water],
			[IsNotSaidc2m3_water],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_waterReplica
		ApplyContext "Saidc2m3_water:1:0"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkc2m3_waterReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_water],
			[IsNotSaidc2m3_water],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "Saidc2m3_water:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m3_wayblockedReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m3_wayblocked],
			[IsNotSaidc2m3_wayblocked],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_wayblockedReplica
		ApplyContext "Saidc2m3_wayblocked:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m4_barnentryReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m4_barnentry],
			[IsNotSaidc2m4_barnentry],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m4_barnentryReplica
		ApplyContext "Saidc2m4_barnentry:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m4_bumpercarsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m4_bumpercars],
			[IsNotSaidc2m4_bumpercars],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m4_bumpercarsReplica
		ApplyContext "Saidc2m4_bumpercars:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m4_pendoorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m4_pendoor],
			[IsNotSaidc2m4_pendoor],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m4_pendoorReplica
		ApplyContext "Saidc2m4_pendoor:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m4_stadiumReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m4_stadium],
			[IsNotSaidc2m4_stadium],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m4_stadiumReplica
		ApplyContext "Saidc2m4_stadium:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m4_upbarnReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m4_upbarn],
			[IsNotSaidc2m4_upbarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m4_upbarnReplica
		ApplyContext "Saidc2m4_upbarn:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc2m5_button2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc2m5_button2],
			[IsNotSaidc2m5_button2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear75],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsButton1],
			[_auto_NotButton2],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m5_button2Replica
		then orator C2M5_OratorBlank02 foo:0 0.01 //Well ain't this a bitch, they got a tape for their music. To think I used to like these guys.
		ApplyContext "Saidc2m5_button2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M3BridgeDownReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3BridgeDown],
			[IsNotSaidC3M3BridgeDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3BridgeDownReplica
		ApplyContext "SaidC3M3BridgeDown:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M2PlaneCrashReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2PlaneCrash],
			[IsNotSaidC3M2PlaneCrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear600],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkReplica],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		Response PlayerRemarkC3M2PlaneCrashReplica
		ApplyContext "SaidC3M2PlaneCrash:1:0,Talk:1:3.761"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M2PlaneCrashNickReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2PlaneCrash],
			[IsNotSaidC3M2PlaneCrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear600],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[ChanceToFire30Percent],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		Response PlayerRemarkC3M2PlaneCrashNickReplica
		ApplyContext "SaidC3M2PlaneCrash:1:0,Talk:1:3.761"
		applycontexttoworld
	},
	{
		name = "_C3M2PirogueReplica",
		criteria = 
		[
			[Concept_C3M2Pirogue],
			[IsReplica],
			[ChanceToFire40Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C3M2PirogueReplica
		ApplyContext "Talk:1:1.250"
		applycontexttoworld
	},
	{
		name = "_C3M2Pirogue2Replica",
		criteria = 
		[
			[Concept_C3M2Pirogue2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C3M2PirogueReplica
		ApplyContext "Talk:1:1.250"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M2PlaneDoorNagReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2PlaneDoorNag],
			[IsNotSaidC3M2PlaneDoorNag],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear500],
			[IsNotSaidC3M2OpenDoor],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M2PlaneDoorNagReplica
		ApplyContext "SaidC3M2PlaneDoorNag:1:0,_auto_TimerLockA:1:15,Talk:1:3.106"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M2PlaneDoorNagaReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsSaidC3M2PlaneDoorNag],
			[ismapc3m2_swamp],
			[IsNotSaidC3M2OpenDoor],
			[IsNotZombiePresentTank],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
		],
		Response PlayerRemarkC3M2PlaneDoorNagaReplica
		ApplyContext "_auto_TimerLockA:1:20,_auto_TimerLockReplica:1:40,Talk:1:1.652"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M2SickOfSwampReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2SickOfSwamp],
			[IsNotSaidC3M2SickOfSwamp],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M2SickOfSwampReplica
		ApplyContext "SaidC3M2SickOfSwamp:1:0,Talk:1:1.861"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M2Village1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2Village1],
			[IsNotSaidC3M2Village1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear800],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M2Village1Replica
		ApplyContext "SaidC3M2Village1:1:0,Talk:1:1.906"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M2WhereAreWeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2WhereAreWe],
			[IsNotSaidC3M2WhereAreWe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[ChanceToFire30Percent],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M2WhereAreWeReplica
		ApplyContext "SaidC3M2WhereAreWe:1:0,Talk:1:1.766"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M2WhereAreWeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M2WhereAreWe],
			[IsNotSaidC3M2WhereAreWe],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "SaidC3M2WhereAreWe:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M3LowerGateReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3LowerGate],
			[IsNotSaidC3M3BridgeButton],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3LowerGateReplica
		then any InfoRemC3M3LowerGatea foo:0 10 //We have to lower this bridge.
		ApplyContext "SaidC3M3LowerGate:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M3SearchHousesReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3SearchHouses],
			[IsNotSaidC3M3SearchHouses],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3SearchHousesReplica
		ApplyContext "SaidC3M3SearchHouses:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M3StayUpHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3StayUpHere],
			[IsNotSaidC3M3StayUpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3StayUpHereReplica
		ApplyContext "SaidC3M3StayUpHere:1:0"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M3StayUpHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3StayUpHere],
			[IsNotSaidC3M3StayUpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "SaidC3M3StayUpHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M3ThisWayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3ThisWayReplica
		ApplyContext "SaidC3M3ThisWay:1:0"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkC3M3ThisWayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3ThisWay],
			[IsNotSaidC3M3ThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "SaidC3M3ThisWay:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M3ThroughHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3ThroughHere],
			[IsNotSaidC3M3ThroughHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3ThroughHereReplica
		ApplyContext "SaidC3M3ThroughHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M3ThroughThisHouseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3ThroughThisHouse],
			[IsNotSaidC3M3ThroughThisHouse],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3ThroughThisHouseReplica
		ApplyContext "SaidC3M3ThroughThisHouse:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M3UpHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3UpHere],
			[IsNotSaidC3M3UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[IsNotSaidC3M3BridgeButton],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3UpHereReplica
		ApplyContext "SaidC3M3UpHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc3m4downroadReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc3m4downroad],
			[IsNotSaidc3m4downroad],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc3m4downroadReplica
		ApplyContext "Saidc3m4downroad:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc3m4radioReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc3m4radio],
			[IsNotSaidc3m4radio],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton1],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc3m4radioReplica
		ApplyContext "Saidc3m4radio:1:0,Talk:1:0.975"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc3m4scaffoldReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc3m4scaffold],
			[IsNotSaidc3m4scaffold],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc3m4scaffoldReplica
		ApplyContext "Saidc3m4scaffold:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc3m4shacksReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc3m4shacks],
			[IsNotSaidc3m4shacks],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc3m4shacksReplica
		ApplyContext "Saidc3m4shacks:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m1_carcrashReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear500],
			[IsWorldTalkReplica],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m1_carcrashReplica
		then any c4m1_wreck01 foo:0 0.01 //That's a nasty damn wreck.
		ApplyContext "Saidc4m1_carcrash:1:0"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkc4m1_carcrashReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_carcrash],
			[IsNotSaidc4m1_carcrash],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear500],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "Saidc4m1_carcrash:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m1_garagesaleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_garagesale],
			[IsNotSaidc4m1_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear400],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m1_garagesaleReplica
		ApplyContext "Saidc4m1_garagesale:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m1_InBurgerTankReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_InBurgerTank],
			[IsNotSaidc4m1_InBurgerTank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m1_InBurgerTankReplica
		then any c4m1_InBurgerTank01 foo:0 0.01 //Shit. All these zombies should help you swallow.
		ApplyContext "Saidc4m1_InBurgerTank:1:0,TalkReplica:1:4"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m1_nogasReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_nogas],
			[IsNotSaidc4m1_nogas],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m1_nogasReplica
		then any c4m1_nogas01 foo:0 0.01 //Outta gas. Shit.
		ApplyContext "Saidc4m1_nogas:1:0,Talk:1:2.538,_auto_NoGasGate:1:25"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m1_playgroundfarReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear1000],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m1_playgroundfarReplica
		ApplyContext "Saidc4m1_playground:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m1_playgroundnearReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_playground],
			[IsNotSaidc4m1_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m1_playgroundfarReplica
		ApplyContext "Saidc4m1_playground:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m1_throughhereAReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m1_throughhereA],
			[IsNotSaidc4m1_throughhereA],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear400],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m1_throughhereAReplica
		ApplyContext "Saidc4m1_throughhereA:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m2_gasinsidesignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_gasinsidesign],
			[IsNotSaidc4m2_gasinsidesign],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear350],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_gasinsidesignReplica
		then any _c4m2_gasinside01 foo:0 0.01 //Says there's gas inside.
		ApplyContext "Saidc4m2_gasinsidesign:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m2_millentranceReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_millentrance],
			[IsNotSaidc4m2_millentrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_millentranceReplica
		ApplyContext "Saidc4m2_millentrance:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m2_millentranceexitReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_millentranceexit],
			[IsNotSaidc4m2_millentranceexit],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_millentranceexitReplica
		ApplyContext "Saidc4m2_millentranceexit:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m2_seegasstationReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_seegasstation],
			[IsNotSaidc4m2_seegasstation],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_seegasstationReplica
		then self _c4m2_seestation01 foo:0 0.01 //There's the gas station!
		ApplyContext "Talk:1:3,Saidc4m2_seegasstation:1:0,_auto_InsideMill:0:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m2_streetblockedReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_streetblocked],
			[IsNotSaidc4m2_streetblocked],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_streetblockedReplica
		then any _c4m2_streetblocked01 foo:0 0.01 //Road's blocked.
		ApplyContext "Saidc4m2_streetblocked:1:0,c4m2_PastStart:1:0,_auto_InsideMill:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m2_uprampReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_upramp],
			[IsNotSaidc4m2_upramp],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_uprampReplica
		ApplyContext "Saidc4m2_upramp:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m2_upthestairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_upthestairs],
			[IsNotSaidc4m2_upthestairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_upthestairsReplica
		ApplyContext "Saidc4m2_upthestairs:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m2_useelevatorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_useelevator],
			[IsNotSaidc4m2_useelevator],
			[IsNotSaidActivatedC4M2Elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsSaidc4m2_seegasstation],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_useelevatorReplica
		ApplyContext "Saidc4m2_useelevator:1:0,_auto_InsideMill:0:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m2_waterpoolReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_waterpool],
			[IsNotSaidc4m2_waterpool],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_waterpoolReplica
		then any _c4m2_waterpool02 foo:0 0.01 //Water's starting to pool. We gotta move!
		ApplyContext "Saidc4m2_waterpool:1:0,c4m2_PastPuddle:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m2_weatherReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m2_weather],
			[IsNotSaidc4m2_weather],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_weatherReplica
		ApplyContext "Saidc4m2_weather:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_caneReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_cane],
			[IsNotSaidc4m3_cane],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_caneReplica
		ApplyContext "Saidc4m3_cane:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_crosshereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_crosshere],
			[IsNotSaidc4m3_crosshere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_crosshereReplica
		ApplyContext "Saidc4m3_crosshere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_downhereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_downhere],
			[IsNotSaidc4m3_downhere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_downhereReplica
		ApplyContext "Saidc4m3_downhere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_downstairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_downstairs],
			[IsNotSaidc4m3_downstairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_downstairsReplica
		ApplyContext "Saidc4m3_downstairs:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_ducatelsignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_ducatelsign],
			[IsNotSaidc4m3_ducatelsign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_ducatelsignReplica
		ApplyContext "Saidc4m3_ducatelsign:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_elevatorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_elevator],
			[IsNotSaidc4m3_elevator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_elevatorReplica
		ApplyContext "Saidc4m3_elevator:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_floodedReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_flooded],
			[IsNotSaidc4m3_flooded],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_floodedReplica
		ApplyContext "Saidc4m3_flooded:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_flooded2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_flooded2],
			[IsNotSaidc4m3_flooded2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_flooded2Replica
		ApplyContext "Saidc4m3_flooded2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_overtankReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_overtank],
			[IsNotSaidc4m3_overtank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_overtankReplica
		ApplyContext "Saidc4m3_overtank:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_rainReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_rain],
			[IsNotSaidc4m3_rain],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_rainReplica
		then any _c4m3_rain01 foo:0 0.02 //Damn. It's really stormin' now.
		ApplyContext "Saidc4m3_rain:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_thiswayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_thisway],
			[IsNotSaidc4m3_thisway],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m2_millentranceexitReplica
		ApplyContext "Saidc4m3_thisway:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m3_uppipesReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m3_uppipes],
			[IsNotSaidc4m3_uppipes],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_uppipesReplica
		ApplyContext "Saidc4m3_uppipes:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m4_floodedReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_flooded],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsSubjectNear150],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m4_floodedReplica
		then any _C4M4_FLOODED01 foo:0 0.5 //Towns flooded.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m4_garagesaleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_garagesale],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m4_garagesaleReplica
		ApplyContext "Saidc4m4_garagesale:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m4_garagesale2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_garagesale2],
			[IsNotSaidc4m4_garagesale],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m4_garagesaleReplica
		ApplyContext "Saidc4m4_garagesale:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m4_playgroundReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_playground],
			[IsNotSaidc4m4_playground],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m4_playgroundReplica
		ApplyContext "Saidc4m4_playground:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m4_porchlightReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_porchlight],
			[IsNotSaidc4m4_porchlight],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m4_porchlightReplica
		ApplyContext "Saidc4m4_porchlight:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m4_truckwreckReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_truckwreck],
			[IsNotSaidc4m4_truckwreck],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotLockA],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m4_truckwreckReplica
		ApplyContext "Saidc4m4_truckwreck:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc4m4_useroofsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc4m4_useroofs],
			[IsNotSaidc4m4_useroofs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m4_useroofsReplica
		ApplyContext "Saidc4m4_useroofs:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkc5m2peopleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[TimeSinceGroupInCombat02],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc5m2peopleReplica
		ApplyContext "Saidc5m2people:1:0,Talk:1:3.726"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkc5m2peopleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isc5m2people],
			[IsNotSaidc5m2people],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "Saidc5m2people:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkpathc2m1_billboardReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Ispathc2m1_billboard],
			[IsNotSaidpathc2m1_billboard],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkReplica],
			[IsSubjectNear1000],
			[IsWorldTalkReplica],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkpathc2m1_billboardReplica
		then Gambler _C2M1Billboard01 foo:0 0.02 //Hey, Whisperin' Oaks! Shit, I used to go there when I was a kid!
		ApplyContext "Saidpathc2m1_billboard:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkremark_MidnightRidersBusReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkremark_MidnightRidersBusReplica
		ApplyContext "Saidremark_MidnightRidersBus:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M1CedaMapsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1CedaMaps],
			[IsNotSaidWorldC1M1CedaMaps],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M1CedaMapsReplica
		ApplyContext "SaidWorldC1M1CedaMaps:1:0,Talk:1:5.668"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M1KnowBoomerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1KnowBoomer],
			[IsNotSaidWorldC1M1KnowBoomer],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M1KnowBoomerReplica
		ApplyContext "SaidWorldC1M1KnowBoomer:1:0,Talk:1:3"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M1DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1DownHere],
			[IsNotSaidWorldC1M1DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M1DownHereReplica
		ApplyContext "SaidWorldC1M1DownHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M1DownStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1DownStairs],
			[IsNotSaidWorldC1M1DownStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M1DownStairsReplica
		ApplyContext "SaidWorldC1M1DownStairs:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M1ElevatorBrokenReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1ElevatorBroken],
			[IsNotSaidWorldC1M1ElevatorBroken],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M1ElevatorBrokenReplica
		then gambler C1M1Crumbs foo:0 0.1 //Oh, crumbs! Elevator's out!
		ApplyContext "SaidWorldC1M1ElevatorBroken:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M1FireRoomReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1FireRoom],
			[IsNotSaidWorldC1M1FireRoom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M1FireRoomReplica
		ApplyContext "SaidWorldC1M1FireRoom:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M1FireSpreadingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1FireSpreading],
			[IsNotSaidWorldC1M1FireSpreading],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M1FireSpreadingReplica
		ApplyContext "SaidWorldC1M1FireSpreading:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M1FirstReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1First],
			[IsNotSaidWorldC1M1First],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M1FirstReplica
		ApplyContext "SaidWorldC1M1First:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M1LedgeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1Ledge],
			[IsNotSaidWorldC1M1Ledge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M1LedgeReplica
		ApplyContext "SaidWorldC1M1Ledge:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M1StairsSignReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M1StairsSign],
			[IsNotSaidWorldC1M1StairsSign],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M1StairsSignReplica
		ApplyContext "SaidWorldC1M1StairsSign:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M2CloseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2Close],
			[IsNotSaidWorldC1M2Close],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M2CloseReplica
		ApplyContext "SaidWorldC1M2Close:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M2DownStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2DownStairs],
			[IsNotSaidWorldC1M2DownStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[TimeSinceGroupInCombat05],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M2DownStairsReplica
		ApplyContext "SaidWorldC1M2DownStairs:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M2AbandonedReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2Abandoned],
			[IsNotSaidWorldC1M2Abandoned],
			[IsNotCoughing],
			[NotInCombat],
			[IntensityZero],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M2AbandonedReplica
		then gambler _C1M2Abandoned foo:0 0.1 //Shit. This place is DESERTED. It's startin' to creep me out.
		ApplyContext "SaidWorldC1M2Abandoned:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M2DumpsterReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2Dumpster],
			[IsNotSaidWorldC1M2Dumpster],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M2DumpsterReplica
		ApplyContext "SaidWorldC1M2Dumpster:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M2GunStoreCloseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2GunStoreClose],
			[IsNotSaidWorldC1M2GunStoreClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M2GunStoreCloseReplica
		ApplyContext "SaidWorldC1M2GunStoreClose:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M2InHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2InHere],
			[IsNotSaidWorldC1M2InHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M2InHereReplica
		ApplyContext "SaidWorldC1M2InHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M2JumpTruckReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2JumpTruck],
			[IsNotSaidWorldC1M2JumpTruck],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M2JumpTruckReplica
		ApplyContext "SaidWorldC1M2JumpTruck:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M2MallSignHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2MallSignHere],
			[IsNotSaidWorldC1M2MallSignHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M2MallSignHereReplica
		ApplyContext "SaidWorldC1M2MallSignHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M2MallThisWayReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2MallThisWay],
			[IsNotSaidWorldC1M2MallThisWay],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M2MallThisWayReplica
		ApplyContext "SaidWorldC1M2MallThisWay:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC1M2UpStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC1M2UpStairs],
			[IsNotSaidWorldC1M2UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC1M2UpStairsReplica
		ApplyContext "SaidWorldC1M2UpStairs:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC3M1FerryCrossingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC3M1FerryCrossing],
			[IsNotSaidWorldC3M1FerryCrossing],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		Response PlayerRemarkWorldC3M1FerryCrossingReplica
		then producer WorldC3M1FerryCrossingN2 foo:0 0.1 //Man. When you're forced to turn to people livin' in a swamp to help you get out of a city? I don't think CEDA's doing their job right.
		ApplyContext "SaidWorldC3M1FerryCrossing:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC3M1FeedGatorReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC3M1FeedGator],
			[IsNotSaidWorldC3M1FeedGator],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear400],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC3M1FeedGatorReplica
		then mechanic WorldC3M1FeedGator2 foo:0 -1.870 //Do not feed the gators.
		ApplyContext "SaidWorldC3M1FeedGator:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC3M1FerryNagReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC3M1FerryNag],
			[IsNotSaidWorldC3M1FerryNag],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear600],
			[IsNotSaidC3M1CallFerry2],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC3M1FerryNagReplica
		ApplyContext "SaidWorldC3M1FerryNag:1:0,_auto_TimerLockA:1:15"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC3M1FerryNagaReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSaidWorldC3M1FerryNag],
			[IsNotSaidC3M1CallFerry2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
		],
		Response PlayerRemarkWorldC3M1FerryNagaReplica
		ApplyContext "_auto_TimerLockA:1:20,_auto_TimerLockReplica:1:40"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC3M1Path01Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC3M1Path01],
			[IsNotSaidWorldC3M1Path01],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear400],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC3M1Path01Replica
		ApplyContext "SaidWorldC3M1Path01:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC3M1StayOnReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC3M1StayOn],
			[IsNotSaidWorldC3M1StayOn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC3M1StayOnReplica
		ApplyContext "SaidWorldC3M1StayOn:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC502AlarmButtonReplica",
		criteria = 
		[
			[ConceptWorldC502AlarmButton],
			[IsReplica],
			[IsNotCoughing],
			[IsNotScavenge],
		],
		Response PlayerRemarkWorldC502AlarmButtonReplica
	},
	{
		name = "PlayerRemarkWorldC502AlarmStoppedReplica",
		criteria = 
		[
			[ConceptWorldC502AlarmStopped],
			[IsReplica],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerRemarkWorldC502AlarmStoppedReplica
		then any WorldC502AlarmStopped2 foo:0 0.3 //Got it!
	},
	{
		name = "PlayerRemarkWorldC502AlleyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC502Alley],
			[IsNotSaidWorldC502Alley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC502AlleyReplica
		ApplyContext "SaidWorldC52Alley:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC502NotZombies2Replica",
		criteria = 
		[
			[ConceptWorldC502NotZombies2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerRemarkWorldC502NotZombies2Replica
		then mechanic WorldC502NotZombies2 foo:0 0.1 //They been shot.
	},
	{
		name = "PlayerRemarkWorldC502NotZombies3bReplica",
		criteria = 
		[
			[ConceptWorldC502NotZombies3b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerRemarkWorldC502NotZombies3bReplica
	},
	{
		name = "PlayerRemarkWorldC502Smell2Replica",
		criteria = 
		[
			[ConceptWorldC502Smell2],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[IsNotScavenge],
		],
		Response PlayerRemarkWorldC502Smell2Replica
	},
	{
		name = "PlayerRemarkWorldC6M1_AcrossHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_AcrossHereReplica
		ApplyContext "SaidWorldC6M1_AcrossHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_AlleyBelowReplica
		ApplyContext "SaidWorldC6M1_AlleyBelow:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_AlleyIntoBuildingReplica
		ApplyContext "SaidWorldC6M1_AlleyIntoBuilding:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_InAptsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_InAptsReplica
		ApplyContext "SaidWorldC6M1_InApts:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_IntoTheStoreReplica
		ApplyContext "SaidWorldC6M1_IntoTheStore:1:0,JustSaidWorldC6M1_IntoTheStore:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_PostWeddingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_PostWeddingReplica
		ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_PostWeddingCakeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ReplicaCake],
			[ChanceToFire100Percent],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_PostWeddingCakeReplica
		ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_SafeRoomAlleyReplica
		ApplyContext "SaidWorldC6M1_SafeRoomAlley:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_ThroughBarReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_ThroughBarReplica
		ApplyContext "SaidWorldC6M1_ThroughBar:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_UpHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_UpHereReplica
		ApplyContext "SaidWorldC6M1_UpHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_UpTheStairsReplica
		ApplyContext "SaidWorldC6M1_UpTheStairs:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_UpTheStairs2Replica
		ApplyContext "SaidWorldC6M1_UpTheStairs2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsWitchPresent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_WeddingWarnReplica
		then Producer RemWorldC6M1_WeddingWarn01 foo:0 -2.989 //Damn. This here wedding didn't end well.
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_AcrossPlankReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear250],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_AcrossPlankReplica
		ApplyContext "SaidWorldC6M2_AcrossPlank:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_AfterGate1Replica
		ApplyContext "SaidWorldC6M2_AfterGate1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_AfterGate2Replica
		ApplyContext "SaidWorldC6M2_AfterGate2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_DownHereReplica
		ApplyContext "SaidWorldC6M2_DownHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_DownIntoBuildingReplica
		ApplyContext "SaidWorldC6M2_DownIntoBuilding:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalLadderReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_FinalLadderReplica
		ApplyContext "SaidWorldC6M2_FinalLadder:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_FinalWaterReplica
		ApplyContext "SaidWorldC6M2_FinalWater:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_FinalWaterGoGoReplica
		ApplyContext "SaidWorldC6M2_FinalWaterGoGo:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_InJazzClubReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1000],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_InJazzClubReplica
		ApplyContext "SaidWorldC6M2_InJazzClub:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InSewer1],
			[IsNotSaidWorldC6M2_InSewer1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_InSewer1Replica
		ApplyContext "SaidWorldC6M2_InSewer1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer1GamblerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InSewer1],
			[IsNotSaidWorldC6M2_InSewer1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[ChanceToFire50Percent],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_InSewer1GamblerReplica
		ApplyContext "SaidWorldC6M2_InSewer1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_InSewerLadder1Replica
		ApplyContext "SaidWorldC6M2_InSewerLadder1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_IntoConstructionReplica
		ApplyContext "SaidWorldC6M2_IntoConstruction:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_IntoPoolHallReplica
		ApplyContext "SaidWorldC6M2_IntoPoolHall:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_JukeBoxReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_JukeBoxReplica
		ApplyContext "SaidWorldC6M2_JukeBox:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_JumpDownReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_JumpDownReplica
		ApplyContext "SaidWorldC6M2_JumpDown:1:0"
		applycontexttoworld
	},
	{
		name = "C6M2FallingReplica",
		criteria = 
		[
			[ConceptC2M1Falling],
			[IsReplica],
			[isC6m2_bedlam],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response NoResponse
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OnTourWalk1],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_OnTourWalk1Replica
		then Any WorldC6M2_OnTourWalk101a foo:0 -2.374 //Man, this is a real...
		ApplyContext "SaidWorldC6M2_OnTourWalk1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_OnTourWalk2Replica
		ApplyContext "SaidWorldC6M2_OnTourWalk2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_OpenGate1Replica
		ApplyContext "SaidWorldC6M2_OpenGate1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_OpenGate2Replica
		ApplyContext "SaidWorldC6M2_OpenGate2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2EllisReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsSaidOpenedGate1BlameEllis],
			[IsNotSaidOpenedGate2],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_OpenGate2EllisReplica
		ApplyContext "SaidWorldC6M2_OpenGate2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_Phase2Replica
		ApplyContext "SaidWorldC6M2_Phase2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_Phase2DownReplica
		ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IntensityOver75],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_Phase2DownIntenseReplica
		ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_PostGate1xReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_PostGate1xReplica
		ApplyContext "SaidWorldC6M2_PostGate1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_SuitcaseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Suitcase],
			[IsNotSaidWorldC6M2_Suitcase],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_SuitcaseReplica
		ApplyContext "SaidWorldC6M2_Suitcase:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_TourEntranceReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_TourEntranceReplica
		ApplyContext "SaidWorldC6M2_TourEntrance:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_UpCatWalkReplica
		ApplyContext "SaidWorldC6M2_UpCatWalk:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_UpStairsReplica
		ApplyContext "SaidWorldC6M2_UpStairs:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_UpStairs2Replica
		ApplyContext "SaidWorldC6M2_UpStairs2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M3_BridgeRunReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M3_BridgeRunReplica
		then Any WorldC6M3_ByBridge01 foo:0 -3.325 //Come on people, GET TO THE CAR! GET TO THE CAR!
		ApplyContext "SaidWorldC6M3_BridgeRun:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M3_ByBridgeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_C6M3BridgeDown],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M3_ByBridgeReplica
		ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldFootLockerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldFootLockerReplica
		ApplyContext "SaidWorldFootLocker:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M3_BillReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M3_Bill],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
			[_auto_NotC6M3Bill],
		],
		Response PlayerRemarkWorldC6M3_BillReplica
		ApplyContext "_auto_ReplicaC6M3Bill:1:0,_auto_C6M3Bill:1:0,SaidSomeoneDied:1:10"
		applycontexttoworld
	},
	{
		name = "WorldC6M3LossZoeyReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[Isc6m3_port],
			[SubjectIsTeenGirl],
			[IsTeenGirlNear400],
			[IsWorldTalkReplica],
			[_auto_SawC6M3Bill],
			[_auto_ReplicaSawC6M3Bill],
		],
		Response WorldC6M3LossReplica
		ApplyContext "_auto_C6M3Bill:2:0,Talk:1:15"
		applycontexttoworld
	},
	{
		name = "WorldC6M3LossFrancisReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[Isc6m3_port],
			[SubjectIsBiker],
			[IsBikerNear400],
			[IsWorldTalkReplica],
			[_auto_SawC6M3Bill],
			[_auto_ReplicaSawC6M3Bill],
		],
		Response WorldC6M3LossReplica
		ApplyContext "_auto_C6M3Bill:2:0,Talk:1:15"
		applycontexttoworld
	},
	{
		name = "WorldC6M3LossZoey2Replica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[Isc6m3_port],
			[SubjectIsTeenGirl],
			[IsTeenGirlNear400],
			[IsWorldTalkReplica],
			[_auto_SawC6M3Bill],
			[_auto_ReplicaSawC6M3Bill],
		],
		Response WorldC6M3LossReplica
		ApplyContext "_auto_C6M3Bill:2:0,Talk:1:15"
		applycontexttoworld
	},
	{
		name = "WorldC6M3LossFrancis2Replica",
		criteria = 
		[
			[ConceptPlayerLookHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[Isc6m3_port],
			[SubjectIsBiker],
			[IsBikerNear400],
			[IsWorldTalkReplica],
			[_auto_SawC6M3Bill],
			[_auto_ReplicaSawC6M3Bill],
		],
		Response WorldC6M3LossReplica
		ApplyContext "_auto_C6M3Bill:2:0,Talk:1:15"
		applycontexttoworld
	},
	{
		name = "WorldC6M3Loss2Replica",
		criteria = 
		[
			[Conceptc6m3_loss],
			[IsNotCoughing],
			[IsReplica],
		],
		Response WorldC6M3Loss2Replica
		then biker c6m3_loss foo:0 0.1 //Shit. Not a lot of good news goin' around these days.
	},
	{
		name = "WorldC6M3Loss3Replica",
		criteria = 
		[
			[Conceptc6M3_loss2],
			[IsNotCoughing],
			[IsReplica],
		],
		Response WorldC6M3Loss3Replica
	},
	{
		name = "PlayerRemarkWorldSignContagiousReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignContagious],
			[IsNotSaidWorldSignContagious],
			[NotInCombat],
			[IsSubjectNear100],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		Response PlayerRemarkWorldSignContagiousReplica
		then self C5M2_signcontagious01 foo:0 0.2 //Highly contagious area.
		ApplyContext "SaidWorldSignContagious:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignContagiousRochelleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignContagious],
			[IsNotSaidWorldSignContagious],
			[NotInCombat],
			[IsSubjectNear100],
			[IsProducerAlive],
			[IsProducerNear200],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		Response PlayerRemarkWorldSignContagiousRochelleReplica
		then producer C5M2_signcontagious01 foo:0 0.2 //Highly contagious area.
		ApplyContext "SaidWorldSignContagious:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignContagiousEllisReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignContagious],
			[IsNotSaidWorldSignContagious],
			[NotInCombat],
			[IsSubjectNear100],
			[IsMechanicAlive],
			[IsMechanicNear200],
			[ChanceToFire30Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 3
		Response PlayerRemarkWorldSignContagiousEllisReplica
		then Any WorldC502OfficialInstructions foo:0 0.2 //Wait for official instructions.
		ApplyContext "SaidWorldSignContagious:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignDeadlyForceReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignDeadlyForce],
			[IsNotSaidWorldSignDeadlyForce],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear100],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldSignDeadlyForceReplica
		then Self WorldSignDeadlyForce2 foo:0 -3.556 //This shit says: Use of deadly force authorized.
		ApplyContext "SaidWorldSignDeadlyForce:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignDeadlyForce2Replica",
		criteria = 
		[
			[ConceptWorldSignDeadlyForce2],
			[IsReplica],
			[IsNotSaidWorldSignDeadlyForce2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerRemarkWorldSignDeadlyForce2Replica
		ApplyContext "SaidWorldSignDeadlyForce2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignOfficialInstructionsReplica",
		criteria = 
		[
			[ConceptWorldC502OfficialInstructions],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerRemarkWorldSignOfficialInstructionsReplica
	},
	{
		name = "PlayerRemarkWorldSignBarricadeHomesReplica",
		criteria = 
		[
			[ConceptWorldC502BarricadeHomes],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerRemarkWorldSignBarricadeHomesReplica
	},
	{
		name = "PlayerRemarkWorldSignFormLineReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignFormLine],
			[IsNotSaidWorldSignFormLine],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldSignFormLineReplica
		ApplyContext "SaidWorldSignFormLine:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignPhotographyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignPhotography],
			[IsNotSaidWorldSignPhotography],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldSignPhotographyReplica
		then mechanic WorldSignPhotography2 foo:0 -1.667 //Photography prohibited.
		ApplyContext "SaidWorldSignPhotography:1:0,Talk:1:1.567"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkWorldSignPhotographyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignPhotography],
			[IsNotSaidWorldSignPhotography],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear300],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "SaidWorldSignPhotography:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignReportSickReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignReportSick],
			[IsNotSaidWorldSignReportSick],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldSignReportSickReplica
		then Mechanic WorldSignReportSick2 foo:0 -1.286 //Report the sick.
		ApplyContext "SaidWorldSignReportSick:1:0"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkWorldSignReportSickReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignReportSick],
			[IsNotSaidWorldSignReportSick],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "SaidWorldSignReportSick:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignReportUnusReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignReportUnusual],
			[IsNotSaidWorldSignReportUnusual],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldSignReportUnusReplica
		then mechanic WorldSignReportUnusual2 foo:0 0.1 //Report unusual behavoir.
		ApplyContext "SaidWorldSignReportUnusual:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignRestrictedAreaReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignRestrictedArea],
			[IsNotSaidWorldSignRestrictedArea],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldSignRestrictedAreaReplica
		then Any WorldSignRestrictedArea2 foo:0 -1.480 //Restricted area.
		ApplyContext "SaidWorldSignRestrictedArea:1:0,Talk:1:1.580"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignsInfectedDetReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignsInfectedDetected],
			[IsNotSaidWorldSignsInfectedDetected],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear100],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldSignsInfectedDetReplica
		then Any WorldSignsInfectedDetected2 foo:0 -2.244 //Infected detected in this area.
		ApplyContext "SaidWorldSignsInfectedDetected:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignStayInGroupReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignStayInGroup],
			[IsNotSaidWorldSignStayInGroup],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldSignStayInGroupReplica
		then self WorldSignStayInGroup2 foo:0 -1.700 //Stay in your group.
		ApplyContext "SaidWorldSignStayInGroup:1:0"
		applycontexttoworld
	},
	{
		name = "AUTOBLANK_PlayerRemarkWorldSignStayInGroupReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignStayInGroup],
			[IsNotSaidWorldSignStayInGroup],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response _PlayerInfoRemarkableBlankReplica
		ApplyContext "SaidWorldSignStayInGroup:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignStayInGroup2Replica",
		criteria = 
		[
			[ConceptWorldSignStayInGroup2],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
		],
		Response PlayerRemarkWorldSignStayInGroup2Replica
	},
	{
		name = "PlayerRemarkWorldSignWhereIsCEDAReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignWhereIsCEDA],
			[IsNotSaidWorldSignWhereIsCEDA],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[ChanceToFire100Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 1
		Response PlayerRemarkWorldSignWhereIsCEDAReplica
		then replica WorldSignWhereIsCEDA2 foo:0 0.4 //Where is CEDA.
		ApplyContext "SaidWorldSignWhereIsCEDA:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignWhereIsCEDARochelleReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignWhereIsCEDA],
			[IsNotSaidWorldSignWhereIsCEDA],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsProducerAlive],
			[IsProducerNear400],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 2
		Response PlayerRemarkWorldSignWhereIsCEDARochelleReplica
		then any WorldSignWhereIsCEDA2 foo:0 0.1 //Where is CEDA.
		ApplyContext "SaidWorldSignWhereIsCEDA:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignWhereIsCEDAEllisReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignWhereIsCEDA],
			[IsNotSaidWorldSignWhereIsCEDA],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[ChanceToFire25Percent],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		//forceweight 3
		Response PlayerRemarkWorldSignWhereIsCEDAEllisReplica
		then any WorldC502QuaratineZone foo:0 0.4 //Quarantine zone. No unauthorized admittance.
		ApplyContext "SaidWorldSignWhereIsCEDA:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldSignWhereIsCEDA2Replica",
		criteria = 
		[
			[ConceptWorldSignWhereIsCEDA2],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerRemarkWorldSignWhereIsCEDA2Replica
		ApplyContext "Talk:1:5.114"
		applycontexttoworld
	},
	{
		name = "PlayerWorldSignC5AlarmWillSoundReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldSignC5AlarmWillSound],
			[IsNotSaidWorldSignC5AlarmWillSound],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsSubjectNear200],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerWorldSignC5AlarmWillSoundReplica
		ApplyContext "SaidWorldSignC5AlarmWillSound:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerWorldSignC5AlarmWillSound3Replica",
		criteria = 
		[
			[ConceptWorldSignC5AlarmWillSound3],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[_auto_NotAlarm],
		],
		Response PlayerWorldSignC5AlarmWillSound3Replica
		ApplyContext "Talk:1:2"
		applycontexttoworld
	},
	{
		name = "RespondAffirmativeReplica",
		criteria = 
		[
			[ConceptRespondAffirmative],
			[IssuerMediumClose],
			[IsNotCoughing],
			[NotInCombat],
			[isReplica],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response RespondAffirmativeReplica
	},
	{
		name = "PlayerFollowMeReplica",
		criteria = 
		[
			[ConceptPlayerFollowMe],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerFollowMeReplica
	},
	{
		name = "PlayerHelpReplica",
		criteria = 
		[
			[ConceptPlayerHelp],
			[IsReplica],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerHelpReplica
	},
	{
		name = "PlayerHurryUpReplica",
		criteria = 
		[
			[ConceptPlayerHurryUp],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerHurryUpReplica
	},
	{
		name = "PlayerHurryUpC4M2Replica",
		criteria = 
		[
			[ConceptPlayerHurryUp],
			[IsReplica],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c4m2_sugarmill_a],
			[IsNotSaidSafeSpotAhead],
			[IsNotZombiePresentTank],
			[IsWorldTalkReplica],
			[_auto_IsReplicaInWitchville],
		],
		Response PlayerHurryUpC4M2Replica
	},
	{
		name = "PlayerKillThatLightReplica",
		criteria = 
		[
			[ConceptPlayerKillThatLight],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerKillThatLightReplica
	},
	{
		name = "PlayerLeadOnReplica",
		criteria = 
		[
			[ConceptPlayerLeadOn],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerLeadOnReplica
	},
	{
		name = "PlayerMoveOnReplica",
		criteria = 
		[
			[ConceptPlayerMoveOn],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerMoveOnReplica
	},
	{
		name = "PlayerStayTogetherReplica",
		criteria = 
		[
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerStayTogetherReplica
	},
	{
		name = "PlayerWatchOutBehindReplica",
		criteria = 
		[
			[ConceptPlayerWatchOutBehind],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerWatchOutBehindReplica
	},
	{
		name = "PlayerAskReadyReplica",
		criteria = 
		[
			[ConceptPlayerAskReady],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerAskReadyReplica
	},
	{
		name = "PlayerImWithYouReplica",
		criteria = 
		[
			[ConceptPlayerImWithYou],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerImWithYouReplica
	},
	{
		name = "PlayerLaughReplica",
		criteria = 
		[
			[ConceptPlayerLaugh],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotVersus],
		],
		Response PlayerLaughReplica
	},
	{
		name = "PlayerLostCallReplica",
		criteria = 
		[
			[ConceptPlayerLostCall],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerLostCallReplica
	},
	{
		name = "PlayerNiceJobResponseReplica",
		criteria = 
		[
			[ConceptPlayerNiceJob],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerNiceJobResponseReplica
	},
	{
		name = "PlayerNoReplica",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerNoReplica
	},
	{
		name = "PlayerNoEllisReplica",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsMechanic],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		Response PlayerNoEllisReplica
	},
	{
		name = "PlayerNoFemaleReplica",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsProducer],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		Response PlayerNoFemaleReplica
	},
	{
		name = "PlayerNoZoeyReplica",
		criteria = 
		[
			[ConceptPlayerNo],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTeenGirl],
			[IsSubjectDistNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		Response PlayerNoFemaleReplica
	},
	{
		name = "PlayerAnswerLostCallReplica",
		criteria = 
		[
			[ConceptPlayerAnswerLostCall],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerAnswerLostCallReplica
	},
	{
		name = "KillStealCalledOutReplica",
		criteria = 
		[
			[ConceptKillStealCalledOut],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response KillStealCalledOutReplica
	},
	{
		name = "PlayerSorryReplica",
		criteria = 
		[
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsNotShotTeammateReplica],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerSorryReplica
	},
	{
		name = "PlayerSorryFFReplica",
		criteria = 
		[
			[ConceptPlayerSorry],
			[IsNotCoughing],
			[IsShotTeammateReplica],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerSorryFFReplica
	},
	{
		name = "PlayerThanksReplica",
		criteria = 
		[
			[ConceptPlayerThanks],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerThanksReplica
	},
	{
		name = "PlayerYellRunReplica",
		criteria = 
		[
			[ConceptPlayerYellRun],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerYellRunReplica
	},
	{
		name = "PlayerYesReplica",
		criteria = 
		[
			[ConceptPlayerYes],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerYesReplica
	},
	{
		name = "PlayerYouAreWelcomeReplica",
		criteria = 
		[
			[ConceptPlayerYouAreWelcome],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerYouAreWelcomeReplica
	},
	{
		name = "YouAreWelcomeReplica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSpeaking],
			[TimeSinceGroupInCombat05],
			[IsWorldTalkReplica],
		],
		Response PlayerYouAreWelcomeReplica
	},
	{
		name = "NickC1AttitudeReplica",
		criteria = 
		[
			[ConceptNickC1Attitude],
			[IsNotCoughing],
			[IsNotSpeaking],
			[FromIsGambler],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response NickC1AttitudeReplica
	},
	{
		name = "YouAreWelcomeGamblerReplica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		Response YouAreWelcomeGamblerReplica
	},
	{
		name = "YouAreWelcomeGamblerC1Replica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response PlayerYouAreWelcomeReplica
	},
	{
		name = "YouAreWelcomeMechanicReplica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsMechanic],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		Response YouAreWelcomeMechanicReplica
	},
	{
		name = "YouAreWelcomeMechanicC1Replica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsMechanic],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response PlayerYouAreWelcomeReplica
	},
	{
		name = "YouAreWelcomeProducerReplica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		Response YouAreWelcomeProducerReplica
	},
	{
		name = "YouAreWelcomeProducerC1Replica",
		criteria = 
		[
			[ConceptYouAreWelcome],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat05],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response PlayerYouAreWelcomeReplica
	},
	{
		name = "BotAttentionBattleReplica",
		criteria = 
		[
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsReplica],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsInBattlefield],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		Response BotAttentionBattleReplica
		ApplyContext "SaidBotAttention:1:30"
		applycontexttoworld
	},
	{
		name = "BotNoteHumanAttentionReplica",
		criteria = 
		[
			[ConceptSurvivorBotNoteHumanAttention],
			[IsNotCoughing],
			[IsReplica],
			[IsNotBotAttention],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsInStartArea],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		Response BotNoteHumanAttentionReplica
		ApplyContext "SaidBotAttention:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerNegativeReplica",
		criteria = 
		[
			[ConceptPlayerNegative],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerNegativeReplica
	},
	{
		name = "PlayerShootCarNotReplica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[IsNotCoughing],
			[SubjectIsNotReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotc5m3_cemetery],
			[IsCarAlarm],
			[ChanceToFire40Percent],
			[IsWorldTalkReplica],
		],
		Response PlayerShootCarNotReplica
		ApplyContext "Saidremark_caralarm:1:300"
		applycontexttoworld
	},
	{
		name = "PlayerShootCarReplica",
		criteria = 
		[
			[ConceptPanicEvent],
			[IsReplica],
			[IsNotCoughing],
			[SubjectIsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotc5m3_cemetery],
			[IsCarAlarm],
			[IsWorldTalkReplica],
		],
		Response PlayerShootCarReplica
		ApplyContext "Saidremark_caralarm:1:300"
		applycontexttoworld
	},
	{
		name = "PlayerHeardBoomerReplica",
		criteria = 
		[
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerHeardBoomerReplica
	},
	{
		name = "PlayerHeardHunterReplica",
		criteria = 
		[
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerHeardHunterReplica
	},
	{
		name = "PlayerHeardSmokerReplica",
		criteria = 
		[
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerHeardSmokerReplica
	},
	{
		name = "PlayerHeardChargerReplica",
		criteria = 
		[
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerHeardChargerReplica
	},
	{
		name = "PlayerHeardSpitterReplica",
		criteria = 
		[
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerHeardSpitterReplica
	},
	{
		name = "PlayerHeardJockeyReplica",
		criteria = 
		[
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerHeardJockeyReplica
	},
	{
		name = "PlayerHeardBoomerC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardBoomer],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowBoomer],
		],
		Response PlayerHeardBoomerC1Replica
	},
	{
		name = "PlayerHeardHunterC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardHunter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowHunter],
		],
		Response PlayerHeardBoomerC1Replica
	},
	{
		name = "PlayerHeardSmokerC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardSmoker],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSmoker],
		],
		Response PlayerHeardBoomerC1Replica
	},
	{
		name = "PlayerHeardChargerC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardCharger],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowCharger],
		],
		Response PlayerHeardBoomerC1Replica
	},
	{
		name = "PlayerHeardSpitterC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardSpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSpitter],
		],
		Response PlayerHeardBoomerC1Replica
	},
	{
		name = "PlayerHeardJockeyC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardJockey],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
		],
		Response PlayerHeardJockeyC1Replica
	},
	{
		name = "PlayerHeardTankReplica",
		criteria = 
		[
			[ConceptPlayerHeardTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerHeardTankReplica
	},
	{
		name = "PlayerHeardWitchReplica",
		criteria = 
		[
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerHeardWitchReplica
	},
	{
		name = "PlayerHurrahReplica",
		criteria = 
		[
			[ConceptPlayerHurrah],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerHurrahReplica
	},
	{
		name = "PlayerWarnCarefulReplica",
		criteria = 
		[
			[ConceptPlayerWarnCareful],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerWarnCarefulReplica
	},
	{
		name = "SurvivorSpottedWorldFarReplica",
		criteria = 
		[
			[ConceptPlayerLook],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedWorldFarReplica
	},
	{
		name = "C6M3_PourFinishedReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsL4D1Alive],
			[Isc6m3_port],
			[ChanceToFire20Percent],
		],
		Response C6M3_PourFinishedReplica
		then Manager L4D1_NiceJobPour foo:0 0 //
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "GasPour20MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score20MoreSC],
		],
		Response GasPour20MoreSCReplica
		then self GasPour20More foo:0 0.01 //Blank
		ApplyContext "_auto_GasCountOK:1:4"
		applycontexttoworld
	},
	{
		name = "GasPour20MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour20More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour20MoreWaitReplica
		then self GasPour20More foo:0 0.1 //Blank
	},
	{
		name = "GasPour10MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score10MoreSC],
		],
		Response GasPour10MoreSCReplica
		then self GasPour10More foo:0 0.01 //Blank
		ApplyContext "_auto_GasCountOK:1:4"
		applycontexttoworld
	},
	{
		name = "GasPour10MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour10More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour10MoreWaitReplica
		then self GasPour10More foo:0 0.1 //Blank
	},
	{
		name = "GasPour1MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score1MoreSC],
		],
		Response GasPour1MoreSCReplica
		then self GasPour1More foo:0 0.01 //Blank
		ApplyContext "_auto_GasCountOK:1:4,_auto_NoGasPourLine:1:0"
		applycontexttoworld
	},
	{
		name = "GasPour1MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour1More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour1MoreWaitReplica
		then self GasPour1More foo:0 0.1 //Blank
	},
	{
		name = "GasPour2MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score2MoreSC],
		],
		Response GasPour2MoreSCReplica
		then self GasPour2More foo:0 0.01 //Blank
		ApplyContext "_auto_GasCountOK:1:4"
		applycontexttoworld
	},
	{
		name = "GasPour2MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour2More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour2MoreWaitReplica
		then self GasPour2More foo:0 0.1 //Blank
	},
	{
		name = "GasPour3MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score3MoreSC],
		],
		Response GasPour3MoreSCReplica
		then self GasPour3More foo:0 0.01 //Blank
		ApplyContext "_auto_GasCountOK:1:4"
		applycontexttoworld
	},
	{
		name = "GasPour3MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour3More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour3MoreWaitReplica
		then self GasPour3More foo:0 0.1 //Blank
	},
	{
		name = "GasPour5MoreSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Score5MoreSC],
		],
		Response GasPour5MoreSCReplica
		then self GasPour5More foo:0 0.01 //Blank
		ApplyContext "_auto_GasCountOK:1:4"
		applycontexttoworld
	},
	{
		name = "GasPour5MoreWaitReplica",
		criteria = 
		[
			[ConceptGasPour5More],
			[IsReplica],
			[IsSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour5MoreWaitReplica
		then self GasPour5More foo:0 0.1 //Blank
	},
	{
		name = "GasPourDoneSCReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsScavenge],
			[ScoreDoneSC],
		],
		Response GasPourDoneSCReplica
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "GasPourSCAloneReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsAlone],
			[IsWorldTalkReplica],
			[IsScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		Response GasPourSCAloneReplica
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "GasPourAloneReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsAlone],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		Response GasPourSCAloneReplica
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "GasPourSCNotAloneReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotAlone],
			[IsWorldTalkReplica],
			[IsScavenge],
			[ChanceToFire50Percent],
			[_auto_NotNoGasPourLine],
		],
		Response GasPourSCNotAloneReplica
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "GrabbingGasSCReplica",
		criteria = 
		[
			[ConceptPlayerEquippedScavengeItem],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear500],
			[IsWorldTalkReplica],
			[NotSaidGrabbingCan],
		],
		Response GrabbingGasSCReplica
		ApplyContext "SaidGrabbingCan:1:8"
	},
	{
		name = "PlayerShotGasCanReplica",
		criteria = 
		[
			[ConceptPlayerShotGasCan],
			[IsReplica],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
		],
		Response PlayerShotGasCanReplica
		ApplyContext "SaidPlayerShotGasCan:1:10"
		applycontexttoworld
	},
	{
		name = "ScavengeStartReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsScavenge],
			[IsNotSaidLeavingSafeArea],
		],
		Response ScavengeStartReplica
		ApplyContext "SaidLeavingSafeArea:1:0"
		applycontexttoworld
	},
	{
		name = "ScavengeStartC1M4Replica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m4_atrium],
			[IsScavenge],
			[IsNotSaidLeavingSafeArea],
		],
		Response ScavengeStartC1M4Replica
		ApplyContext "SaidLeavingSafeArea:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerCommentJockeyMaleReplica",
		criteria = 
		[
			[ConceptCommentJockey],
			[IsReplica],
			[IssuerCloseEnough],
			[IsNotIncapacitated],
			[FromIsNotProducer],
			[FromIsNotTeenGirl],
			[ChanceToFire25Percent],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsNotBeingJockeyed],
		],
		Response PlayerCommentJockeyMaleReplica
		ApplyContext "SaidCommentJockey:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerCommentJockeyGenericReplica",
		criteria = 
		[
			[ConceptCommentJockey],
			[IsReplica],
			[IssuerCloseEnough],
			[IsNotIncapacitated],
			[IntensityUnder50],
			[IsNotSaidCommentJockey],
			[IsNotSaidBeenJockeyedReplica],
			[IsNotBeingJockeyed],
		],
		Response PlayerCommentJockeyGenericReplica
		ApplyContext "SaidCommentJockey:1:0"
		applycontexttoworld
	},
	{
		name = "C4M2LockTheDoorCheckPointReplica",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c4m2_sugarmill_a],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C4M2LockTheDoorCheckPointReplica
	},
	{
		name = "GoingToDieCoachCoachReplica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[IsReplicaNear200],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response GoingToDieCoachCoachReplica
		ApplyContext "IsComplain:1:25"
	},
	{
		name = "SurvivorVocalizeGoingToDie3Replica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorVocalizeGoingToDie3Replica
		ApplyContext "IsComplain:1:25"
	},
	{
		name = "SurvivorVocalizeGoingToDie3C5M5Replica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotCoughing],
			[IsNotSpeaking],
			[IsReplica],
			[IsOnThirdStrike],
			[IsMapc5m5_bridge],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotSaidGoingToDieC5M5],
			[ChanceToFire50Percent],
		],
		Response SurvivorVocalizeGoingToDie3C5M5Replica
		ApplyContext "IsComplain:1:25,TalkReplica:1:8,SaidGoingToDieC5M5:1:0"
	},
	{
		name = "PlayerAlertGiveItemStopReplica",
		criteria = 
		[
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkReplica],
		],
		Response PlayerAlertGiveItemStopReplica
		ApplyContext "SaidAlertGiveItemStop:1:10"
	},
	{
		name = "PlayerAlertGiveItemStopAnFirstAidReplica",
		criteria = 
		[
			[ConceptAlertGiveItemStopFirstAidA],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[NoHasFirstAidKit],
			[IsWorldTalkReplica],
		],
		Response PlayerAlertGiveItemStopAnFirstAidReplica
		then subject AlertGiveItemStop foo:0 0 //Blank
	},
	{
		name = "PlayerAlertGiveItemStopC1Replica",
		criteria = 
		[
			[ConceptAlertGiveItemStop],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidAlertGiveItemStop],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response PlayerAlertGiveItemStopC1Replica
		ApplyContext "SaidAlertGiveItemStop:1:10"
	},
	{
		name = "PlayerAlertGiveItemStopQnFirstAidReplica",
		criteria = 
		[
			[ConceptBashWithItem],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsItemFirstAidKit],
			[IsNotSaidAlertGiveItemStopFirstAid],
			[IsWorldTalkReplica],
		],
		Response PlayerAlertGiveItemStopQnFirstAidReplica
		then subject AlertGiveItemStopFirstAidA foo:0 0 //Blank
		ApplyContext "SaidAlertGiveItemStopFirstAid:1:10"
	},
	{
		name = "PlayerEatPillsReplica",
		criteria = 
		[
			[ConceptEatPills],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerEatPillsReplica
	},
	{
		name = "PlayerGamblerPouncedReplica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsGambler],
			[IsNotSaidGamblerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerGamblerPouncedReplica
		ApplyContext "SaidGamblerPounced:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerGetInsideCheckPointReplica",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerGetInsideCheckPointReplica
		then any StayTogetherInsideReponse foo:0 -2.761 //Come on people, get you asses in here!
	},
	{
		name = "PlayerGetInsideCheckPointC2M2Replica",
		criteria = 
		[
			[ConceptPlayerGetInsideCheckPoint],
			[ismap_c2m2],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerGetInsideCheckPointC2M2Replica
		then any StayTogetherInsideReponse foo:0 0.3 //Come on, get into the tunnel of love.
	},
	{
		name = "PlayerGrabbedByJockeyReplica",
		criteria = 
		[
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerGrabbedByJockeyReplica
		ApplyContext "SaidBeenJockeyedReplica:1:6,TalkReplica:1:6"
		applycontexttoworld
	},
	{
		name = "PlayerGrabbedByJockeyC1Replica",
		criteria = 
		[
			[ConceptSurvivorJockeyed],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidBeenJockeyedReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		Response PlayerGrabbedByJockeyC1Replica
		ApplyContext "SaidBeenJockeyedReplica:1:6,TalkReplica:1:6"
		applycontexttoworld
	},
	{
		name = "PlayerGrenadeMolotovReplica",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsGrenadeMolotov],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerGrenadeMolotovReplica
		then Any GrenadeCareful foo:0 0 //Molotov!
	},
	{
		name = "PlayerGrenadePipeBombReplica",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsGrenadePipeBomb],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerGrenadePipeBombReplica
		then Any GrenadeCareful foo:0 -1.004 //GRENADE!
	},
	{
		name = "PlayerGrenadeVomitJarReplica",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsGrenadeVomitJar],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerGrenadeVomitJarReplica
		then Any GrenadeCareful foo:0 -0.646 //Heads up!
	},
	{
		name = "PlayerGrenadeVomitJarC1Replica",
		criteria = 
		[
			[ConceptThrewGrenade],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsGrenadeVomitJar],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
		],
		Response PlayerGrenadeVomitJarC1Replica
		then Any GrenadeCareful foo:0 -0.929 //Incoming!
	},
	{
		name = "PlayerIncapacitatedInitialReplica",
		criteria = 
		[
			[ConceptPlayerIncapacitated],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerIncapacitatedInitialReplica
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "PlayerIncapacitatedInitialC1M2Replica",
		criteria = 
		[
			[ConceptPlayerIncapacitated],
			[IsReplica],
			[ismap_c1m2_streets],
			[IsC1M2WhitakerErrand],
		],
		Response PlayerIncapacitatedInitialC1M2Replica
		then orator C1M2SurvivorDown foo:0 0.1 //
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "PlayerKillConfirmationReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsSubjectFar300],
			[ChanceToFire40Percent],
			[isNotmap_c1m1_hotel],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerKillConfirmationReplica
		then Any PlayerNiceShot foo:0 -0.376 //Got it!
	},
	{
		name = "PlayerKillConfirmationC1M1Replica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsNotTank],
			[IsTalk],
			[IsTalkReplica],
			[IsUsingFirearm],
			[ismap_c1m1_hotel],
			[IsNotFirstKillC1],
			[IsWorldTalkReplica],
		],
		Response PlayerKillConfirmationC1M1Replica
		ApplyContext "Talk:1:5,FirstKill:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerKillConfirmationC1M1MeleeReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsNotTank],
			[SubjectIsNotBoomer],
			[SubjectIsNotSmoker],
			[IsTalk],
			[IsTalkReplica],
			[EquippedMeleeWeapon],
			[ismap_c1m1_hotel],
			[IsNotFirstKillC1],
			[IsWorldTalkReplica],
		],
		Response PlayerKillConfirmationC1M1Replica
		ApplyContext "Talk:1:5,FirstKill:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerKillJockeyConfirmationC2M4EasterEggReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsJockey],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidJockeyEasterEgg],
			[ChanceToFire1Percent],
			[ismap_c2m4],
			[IsWorldTalkReplica],
		],
		Response PlayerKillJockeyConfirmationC2M4EasterEggReplica
		then self C2M4JockeyEasterEgg foo:0 1.5 //No.
		ApplyContext "JockeyEasterEgg:1:0"
		applycontexttoworld
	},
	{
		name = "KillJockeyC2M4EasterEggReplica",
		criteria = 
		[
			[ConceptC2M4JockeyEasterEgg],
			[IsNotCoughing],
			[IsReplica],
		],
		Response KillJockeyC2M4EasterEggReplica
		then all PlayerLaugh foo:0 0.1 //Enh-oh.
	},
	{
		name = "RightfulKillerReplica",
		criteria = 
		[
			[ConceptRightfulKiller],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response RightfulKillerReplica
		then From InsistMine foo:0 0 //What? Ah, hell no, boy, that was me.
	},
	{
		name = "PlayerKillTankConfirmationReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsRocking],
			[IsWorldTalkReplica],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerKillTankConfirmationReplica
		ApplyContext "SaidTankDead:1:60,TalkReplica:1:5"
		applycontexttoworld
	},
	{
		name = "PlayerKillConfirmationEllisCloseReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsNotTank],
			[SubjectIsNotAWitch],
			[IsSubjectFar300],
			[IsMechanicAlive],
			[IsMechanicNear400],
			[IsEllisAlsoWarn],
			[ChanceToFire5Percent],
			[IsRocking],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 100
		Response PlayerKillConfirmationEllisCloseReplica
		then Mechanic KillSteal foo:0 0 //
	},
	{
		name = "PlayerKillTankNotHealthyReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotAlone],
			[IsNotIncapacitated],
			[IsNotHealthy],
			[IsWorldTalkReplica],
			[_auto_NotFinaleStarted],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerKillTankNotHealthyReplica
		ApplyContext "SaidTankDead:1:60,TalkReplica:1:5"
		applycontexttoworld
	},
	{
		name = "PlayerKillTankConfirmationC1M2Replica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[SubjectIsTank],
			[IsNotSaidTankDead],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[ismap_c1m2_streets],
			[IsEveryoneAlive],
			[IsNotSurvival],
		],
		Response PlayerKillTankConfirmationC1M2Replica
		then mechanic C1M2TankInfo foo:0 0.1 //
		ApplyContext "SaidTankDead:1:0,Talk:1:12"
		applycontexttoworld
	},
	{
		name = "PlayerCr0wnedWitchReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsReplica],
			[SubjectIsAWitch],
			[IsNotWitchAggro],
		],
		Response NoResponse
	},
	{
		name = "PlayerKilledStartledWitchReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsReplica],
			[SubjectIsAWitch],
			[IsWitchAggro],
		],
		Response NoResponse
		ApplyContext "WitchAggro:--1"
		applycontexttoworld
	},
	{
		name = "PlayerLockTheDoorCheckPointReplica",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[IsNotAlone],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerLockTheDoorCheckPointReplica
	},
	{
		name = "PlayerLockTheDoorCheckPointC1Replica",
		criteria = 
		[
			[ConceptPlayerLockTheDoorCheckPoint],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[ismap_c1m1_hotel],
			[IsNotAlone],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerLockTheDoorCheckPointC1Replica
	},
	{
		name = "PlayerMechanicPouncedReplica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsMechanic],
			[IsNotSaidMechanicPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerMechanicPouncedReplica
		ApplyContext "MechanicPounced:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerMechanicPouncedC1Replica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsMechanic],
			[IsNotSaidMechanicPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		Response PlayerMechanicPouncedC1Replica
		ApplyContext "MechanicPounced:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerGamblerPouncedC1Replica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsGambler],
			[IsNotSaidGamblerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		Response PlayerMechanicPouncedC1Replica
		ApplyContext "SaidGamblerPounced:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerProducerPouncedReplica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerProducerPouncedReplica
		ApplyContext "SaidProducerPounced:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerProducerPouncedC1KnownReplica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[YesKnowNames],
			[ismap_c1m1_hotel],
		],
		Response PlayerProducerPouncedC1KnownReplica
		ApplyContext "SaidProducerPounced:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerProducerPouncedC1M2Replica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m2_streets],
			[NoKnowHunter],
		],
		Response PlayerProducerPouncedC1KnownReplica
		ApplyContext "SaidProducerPounced:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerProducerPouncedC1UnknownReplica",
		criteria = 
		[
			[ConceptSurvivorWasPounced],
			[ChanceToFire30Percent],
			[IsNotCoughing],
			[SubjectIsProducer],
			[IsNotSaidProducerPounced],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NoKnowNames],
			[ismap_c1m1_hotel],
		],
		Response PlayerProducerPouncedC1UnknownReplica
		ApplyContext "SaidProducerPounced:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerRevivedByDefibrillatorReplica",
		criteria = 
		[
			[ConceptRevivedByDefibrillator],
			[IsNotCoughing],
			[IsReplica],
		],
		Response PlayerRevivedByDefibrillatorReplica
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "PlayerRevivedByDefibrillator2Replica",
		criteria = 
		[
			[ConceptRevivedByDefibrillatorDelayed],
			[IsReplica],
		],
		Response PlayerRevivedByDefibrillator2Replica
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "PlayerRevivedByDefibrillator2ProducerReplica",
		criteria = 
		[
			[ConceptRevivedByDefibrillatorDelayed],
			[IsReplica],
			[SubjectIsProducer],
			[ChanceToFire30Percent],
		],
		Response PlayerRevivedByDefibrillator2ProducerReplica
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "PlayerRevivedByDefibrillator2TeenGirlReplica",
		criteria = 
		[
			[ConceptRevivedByDefibrillatorDelayed],
			[IsReplica],
			[SubjectIsTeenGirl],
			[ChanceToFire30Percent],
		],
		Response PlayerRevivedByDefibrillator2ProducerReplica
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "PlayerStayTogetherSaferoomReplica",
		criteria = 
		[
			[ConceptPlayerStayTogether],
			[IsNotCoughing],
			[IsReplica],
			[IsInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[SomeoneOutsideSafeSpot],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerStayTogetherSaferoomReplica
	},
	{
		name = "PlayerSuggestMeHealthReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsNotHealthy],
			[TimeSinceGroupInCombat20],
			[ChanceToFire50Percent],
			[IsNotSuggestedHealth],
			[YesHasFirstAidKit],
			[IsNotIncapacitated],
			[IsReplica],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerSuggestMeHealthReplica
		then Any PlayerSuggestHealth foo:0 0 //
	},
	{
		name = "PlayerSuggestHealthGenericReplica",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[TimeSinceGroupInCombat20],
			[IsNotIncapacitated],
			[IsNotSpeakingWeight0],
			[IsWorldTalkReplica],
		],
		Response PlayerSuggestHealthGenericReplica
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
	},
	{
		name = "PlayerSuggestHealthC1Replica",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			[ismap_c1m1_hotel],
			[NoKnowNames],
		],
		Response PlayerSuggestHealthC1Replica
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
	},
	{
		name = "PlayerSuggestHealthGamblerReplica",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsGambler],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
		],
		Response PlayerSuggestHealthGamblerReplica
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
	},
	{
		name = "PlayerSuggestHealthMechanicReplica",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
		],
		Response PlayerSuggestHealthMechanicReplica
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
	},
	{
		name = "PlayerSuggestHealthProducerReplica",
		criteria = 
		[
			[ConceptPlayerSuggestHealth],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotBeingHealed],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[TimeSinceGroupInCombat20],
			[IsNotSpeakingWeight0],
			[FromIsProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
		],
		Response PlayerSuggestHealthProducerReplica
		ApplyContext "SuggestedHealth:1:120"
		applycontexttoworld
	},
	{
		name = "PlayerTransitionReplica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerTransitionReplica
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},
	{
		name = "PlayerTransitionCloseReplica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotAlone],
			[IsSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerTransitionCloseReplica
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},
	{
		name = "PlayerTransitionSoloReplica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsAlone],
			[IsSomeoneDied],
			[isNotmap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerTransitionSoloReplica
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},
	{
		name = "PlayerTransitionC1M2Replica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m2_streets],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerTransitionC1M2Replica
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},
	{
		name = "PlayerTransitionC1M3Replica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m3_mall],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerTransitionC1M3Replica
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},
	{
		name = "PlayerTransitionC5M4Replica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsMapc5m4_quarter],
			[IsNotAlone],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerTransitionC5M4Replica
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},
	{
		name = "PlayerTransitionC6M2Replica",
		criteria = 
		[
			[ConceptPlayerTransition],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidPlayerTransition],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Isc6m2_bedlam],
			[IsNotSomeoneDied],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerTransitionC6M2Replica
		ApplyContext "SaidPlayerTransition:1:90"
		applycontexttoworld
	},
	{
		name = "PlayerUsingDefibrillatorReplica",
		criteria = 
		[
			[ConceptPlayerUsingDefibrillator],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerUsingDefibrillatorReplica
	},
	{
		name = "PlayerWarnHeardBoomerReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsReplica],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerWarnHeardBoomerReplica
		ApplyContext "WarnHeardBoomer:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardChargerReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsReplica],
			[IsNotWarnHeardCharger],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerWarnHeardChargerReplica
		ApplyContext "WarnHeardCharger:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardHunterReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerWarnHeardHunterReplica
		ApplyContext "WarnHeardHunter:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardJockeyReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerWarnHeardJockeyReplica
		ApplyContext "WarnHeardJockey:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardSmokerReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerWarnHeardSmokerReplica
		ApplyContext "WarnHeardSmoker:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardSpitterReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerWarnHeardSpitterReplica
		ApplyContext "WarnHeardSpitter:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardJockeyC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsJockeyClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardJockey],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowJockey],
			[IsNotSurvival],
		],
		Response PlayerWarnHeardJockeyC1Replica
		ApplyContext "WarnHeardJockey:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardBoomerC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsBoomerClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardBoomer],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowBoomer],
			[IsNotSurvival],
		],
		Response PlayerWarnHeardBoomerC1Replica
		ApplyContext "WarnHeardBoomer:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardChargerC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsChargerClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardCharger],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		Response PlayerWarnHeardBoomerC1Replica
		ApplyContext "WarnHeardCharger:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardHunterC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsHunterClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardHunter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowHunter],
			[IsNotSurvival],
		],
		Response PlayerWarnHeardBoomerC1Replica
		ApplyContext "WarnHeardHunter:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardSmokerC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSmokerClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSmoker],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		Response PlayerWarnHeardBoomerC1Replica
		ApplyContext "WarnHeardSmoker:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardSpitterC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsSpitterClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardSpitter],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		Response PlayerWarnHeardBoomerC1Replica
		ApplyContext "WarnHeardSpitter:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardWitchReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsReplica],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
			[_auto_NotAlarmV2],
			[_auto_NotFinaleStarted],
		],
		Response PlayerWarnHeardWitchReplica
		then Any PlayerKillThatLight foo:0 -2.240 //Quiet everybody I hear a bitch.
		ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnHeardWitchC1Replica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAlone],
			[IsClosestSurvivorNear1200],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
		],
		Response PlayerWarnHeardWitchC1Replica
		ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerHeardWitchC1Replica",
		criteria = 
		[
			[ConceptPlayerHeardWitch],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		Response PlayerWarnHeardWitchC1Replica
	},
	{
		name = "PlayerWarnHeardWitchC1RochelleReplica",
		criteria = 
		[
			[ConceptPlayerWarnHearZombie],
			[IsWitchClass],
			[IsNotCoughing],
			[IsReplica],
			[IsNotWarnHeardWitch],
			[NotInCombat],
			[IsClosestSurvivorNear1200],
			[IsProducerAlive],
			[IsProducerNear800],
			[ChanceToFire40Percent],
			[IsNotSaidSpecialWarn],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
		],
		Response PlayerWarnHeardWitchC1RochelleReplica
		ApplyContext "WarnHeardWitch:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnMegaMobReplica",
		criteria = 
		[
			[ConceptPlayerWarnMegaMob],
			[IsNotCoughing],
			[IsReplica],
			[IsNotWarnMegaMob],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSpeaking],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerWarnMegaMobReplica
		ApplyContext "WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWarnWitchAngryReplica",
		criteria = 
		[
			[ConceptWitchGettingAngry],
			[IsNotCoughing],
			[IsReplica],
			[IsNotWarnAngryWitch],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotmap_c4m2],
			[IsNotc6m1_riverbank],
		],
		Response PlayerWarnWitchAngryReplica
		ApplyContext "WarnAngryWitch:1:5,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerWorldInfectedDet2Replica",
		criteria = 
		[
			[ConceptWorldSignsInfectedDetected2],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldInfectedDet2Replica
	},
	{
		name = "PlayerWorldStayTogether2Replica",
		criteria = 
		[
			[ConceptWorldSignsStayTogether2],
			[IsReplica],
			[IsNotCoughing],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldInfectedDet2Replica
	},
	{
		name = "PlayerWorldIntroC31BlankReplica",
		criteria = 
		[
			[ConceptintroC3M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldIntroC31BlankReplica
		then any WorldIntroC31 foo:0 5 //Blank
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerWorldIntroC51Replica",
		criteria = 
		[
			[ConceptintroC5M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerWorldIntroC51Replica
		then orator C5M1_intro001 foo:0 0.01 //Blank
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerWorldIntroC513Replica",
		criteria = 
		[
			[ConceptWorldIntroC513],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerWorldIntroC513Replica
	},
	{
		name = "PlayerWorldSignColdBeer2Replica",
		criteria = 
		[
			[ConceptWorldSignColdBeer2],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IssuerClose],
			[IsWorldTalkReplica],
		],
		Response PlayerWorldSignColdBeer2Replica
	},
	{
		name = "PlayerWorldSignHurricane2Replica",
		criteria = 
		[
			[ConceptWorldSignHurricane2],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IssuerReallyClose],
			[IsWorldTalkReplica],
		],
		Response PlayerWorldSignHurricane2Replica
		then producer WorldSignHurricane3 foo:0 0.1 //WHAT??
	},
	{
		name = "SurvivorCaughtVomitReplica",
		criteria = 
		[
			[ConceptPlayerVomitInFace],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorCaughtVomitReplica
		ApplyContext "TalkReplica:1:10"
	},
	{
		name = "SurvivorchargerpoundReplica",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidchargerpound],
			[IsWorldTalkReplica],
		],
		Response SurvivorchargerpoundReplica
		ApplyContext "Saidchargerpound:1:5,TalkReplica:1:5"
	},
	{
		name = "SurvivorchargerpoundC1Replica",
		criteria = 
		[
			[Conceptchargerpound],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidchargerpound],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowCharger],
			[IsNotSurvival],
		],
		Response SurvivorchargerpoundReplica
		ApplyContext "Saidchargerpound:1:5,TalkReplica:1:5"
	},
	{
		name = "SurvivorCoughingReplica",
		criteria = 
		[
			[ConceptSurvivorCoughing],
			[IsCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorCoughingReplica
	},
	{
		name = "SurvivorCoughingDeathReplica",
		criteria = 
		[
			[ConceptPlayerDeath],
			[IsCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotVersus],
		],
		Response SurvivorCoughingReplica
	},
	{
		name = "SurvivorDeathReplica",
		criteria = 
		[
			[ConceptPlayerDeath],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotVersus],
		],
		Response SurvivorDeathReplica
	},
	{
		name = "SurvivorGooedBySpitterReplica",
		criteria = 
		[
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkReplica],
			[IsNotIncapacitated],
		],
		Response SurvivorGooedBySpitterReplica
		ApplyContext "SaidGooedBySpitter:1:20,TalkReplica:1:3"
	},
	{
		name = "SurvivorGooedBySpitterC1Replica",
		criteria = 
		[
			[ConceptGooedBySpitter],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidGooedBySpitter],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSpitter],
			[IsNotSurvival],
			[IsNotIncapacitated],
		],
		Response SurvivorGooedBySpitterC1Replica
		ApplyContext "SaidGooedBySpitter:1:20,TalkReplica:1:3"
	},
	{
		name = "SurvivorGrabbedByTongueReplica",
		criteria = 
		[
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorGrabbedByTongueReplica
	},
	{
		name = "SurvivorGrabbedByTongueC1Replica",
		criteria = 
		[
			[ConceptPlayerGrabbedByTongue],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[NoKnowSmoker],
			[IsNotSurvival],
		],
		Response SurvivorGrabbedByTongueC1Replica
	},
	{
		name = "SurvivorNearCheckpointReplica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointReplica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC1M1Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c1m1_hotel],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC1M1Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC1M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c1m2_streets],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC1M2Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC1M3Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c1m3_mall],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC1M3Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC2M1Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c2m1],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC2M1Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC2M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c2m2],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC2M2Replica
		then any _C2M2_SeeSafehouse01 foo:0 0.1 //There's the saferoom! Everybody in the tunnel of love!
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC2M4Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c2m4],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC2M4Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC3M1Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c3m1_plankcountry],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC3M1Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC3M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismapc3m2_swamp],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC3M2Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkC3M3SafeHouseAheadReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC3M3SafeHouseAhead],
			[IsNotSaidSafeSpotAhead],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorNearCheckpointC3M3Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC4M1Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c4m1_milltown_a],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC4M1Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC4M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[ismap_c4m2_sugarmill_a],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC4M2Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC4M3Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[isc4m3],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC4M3Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC4M4Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[isc4m4],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC4M4Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC5M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsMapc5m2_park],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC5M2Replica
		then any C5M2Freeway01 foo:0 0.1 //Look, that freeway's headin' right to our bridge.
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC5M4Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsMapc5m4_quarter],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC5M4Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC6M1Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[Isc6m1_riverbank],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC6M1Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearCheckpointC6M2Replica",
		criteria = 
		[
			[ConceptPlayerNearCheckpoint],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidSafeSpotAhead],
			[IsNotAlone],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[Isc6m2_bedlam],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearCheckpointC6M2Replica
		ApplyContext "SaidSafeSpotAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearFinaleReplica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearFinaleReplica
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearFinaleC1M4Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[ismap_c1m4_atrium],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response NoResponse
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearFinaleC2M5Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[ismap_c2m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearFinaleC2M5Replica
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearFinaleC3M4Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[ismapc3m4_plantation],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorNearFinaleC3M4Replica
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearFinaleC4M5Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[isc4m5],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response NoResponse
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearFinaleC5M5Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[IsMapc5m5_bridge],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response NoResponse
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorNearFinaleC6M3Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[Isc6m3_port],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response NoResponse
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorPouncedByHunterReplica",
		criteria = 
		[
			[ConceptScreamWhilePounced],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorPouncedByHunterReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "SurvivorTankPoundReplica",
		criteria = 
		[
			[ConceptPlayerGroundPoundedByTank],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorTankPoundReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "SurvivorTankPoundC1Replica",
		criteria = 
		[
			[ConceptPlayerGroundPoundedByTank],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[C1M1orC1M2],
			[IsNotSurvival],
		],
		Response SurvivorTankPoundC1Replica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "SurvivorVocalizeBackUpReplica",
		criteria = 
		[
			[ConceptPlayerBackUp],
			[IsReplica],
			[IsNotCoughing],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorVocalizeBackUpReplica
	},
	{
		name = "SurvivorVocalizeEmphaticGoReplica",
		criteria = 
		[
			[ConceptPlayerEmphaticGo],
			[IsReplica],
			[IsNotCoughing],
			[IsNotInSafeSpot],
			[IsNotInCheckpoint],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorVocalizeEmphaticGoReplica
	},
	{
		name = "SurvivorVocalizeGoingToDieReplica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
		],
		Response SurvivorVocalizeGoingToDieReplica
		ApplyContext "IsComplain:1:25"
	},
	{
		name = "SurvivorVocalizeGoingToDie3Replica",
		criteria = 
		[
			[ConceptPlayerGoingToDie],
			[IsNotSpeaking],
			[IsNotCoughing],
			[IsReplica],
			[IsOnThirdStrike],
			[IsTalk],
			[IsTalkReplica],
			[IsNotComplainBlock],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
		],
		Response SurvivorVocalizeGoingToDie3Replica
		ApplyContext "IsComplain:1:25"
	},
	{
		name = "SurvivorVocalizeLookOutReplica",
		criteria = 
		[
			[ConceptPlayerLookOut],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorVocalizeLookOutReplica
	},
	{
		name = "SurvivorVocalizeThisWayReplica",
		criteria = 
		[
			[ConceptPlayerThisWay],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorVocalizeThisWayReplica
	},
	{
		name = "SurvivorVocalizeWaitHereReplica",
		criteria = 
		[
			[ConceptPlayerWaitHere],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorVocalizeWaitHereReplica
	},
	{
		name = "SurvivorWarnSpitterIncomingReplica",
		criteria = 
		[
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidWarnSpitterIncoming],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorWarnSpitterIncomingReplica
		ApplyContext "SaidWarnSpitterIncoming:1:10"
	},
	{
		name = "SurvivorWarnSpitterIncomingC1Replica",
		criteria = 
		[
			[ConceptWarnSpitterIncoming],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidWarnSpitterIncoming],
			[C1M1orC1M2],
			[IsWorldTalkReplica],
			[NoKnowSpitter],
			[IsNotSurvival],
		],
		Response SurvivorWarnSpitterIncomingC1Replica
		ApplyContext "SaidWarnSpitterIncoming:1:10"
	},
	{
		name = "PlayerLedgeHangEndReplica",
		criteria = 
		[
			[ConceptPlayerLedgeHangEnd],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerLedgeHangEndReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerLedgeHangMiddleReplica",
		criteria = 
		[
			[ConceptPlayerLedgeHangMiddle],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerLedgeHangMiddleReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerLedgeHangStartReplica",
		criteria = 
		[
			[ConceptPlayerLedgeHangStart],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerLedgeHangStartReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "SurvivorFirstDeathReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsReplica],
			[IsNotSaidSomeoneDied],
			[IsEveryoneAlive],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkReplica],
		],
		Response SurvivorFirstDeathReplica
		ApplyContext "SaidSomeoneDied:1:10"
		applycontexttoworld
	},
	{
		name = "DeathOneReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsReplica],
			[IsNotSaidSomeoneDied],
			[IsWithTwo],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response DeathOneReplica
		ApplyContext "SaidSomeoneDied:1:10"
		applycontexttoworld
	},
	{
		name = "DoubleDeathReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedNearEnough],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsClosestSurvivorNear400],
			[IsWithOnlyThree],
			[IsNotIncapacitated],
			[IsNotSaidFaultFriendlyFireGeneral],
			[IsWorldTalkReplica],
		],
		Response DoubleDeathReplica
		ApplyContext "SaidSomeoneDied:1:10"
		applycontexttoworld
	},
	{
		name = "TeamKillReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSaidFaultFriendlyFireGeneral],
			[IsNotSaidFaultFriendlyFireReplica],
			[IsWorldTalkReplica],
		],
		Response TeamKillReplica
		ApplyContext "SaidSomeoneDied:1:10,TalkReplica:1:5"
		applycontexttoworld
	},
	{
		name = "TeamKillFromMechanicReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireMechanic],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
		],
		Response TeamKillFromMechanicReplica
		ApplyContext "SaidSomeoneDied:1:10,TalkReplica:1:4"
		applycontexttoworld
	},
	{
		name = "TeamKillFromProducerReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireProducer],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
		],
		Response TeamKillFromProducerReplica
		ApplyContext "SaidSomeoneDied:1:10,TalkReplica:1:2"
		applycontexttoworld
	},
	{
		name = "TeamKillFromTeenGirlReplica",
		criteria = 
		[
			[ConceptSurvivorDied],
			[IsNotCoughing],
			[SurvivorDiedReallyClose],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSaidFaultFriendlyFireGeneral],
			[IsSaidFaultFriendlyFireTeenGirl],
			[ChanceToFire50Percent],
			[IsWorldTalkReplica],
		],
		Response TeamKillFromProducerReplica
		ApplyContext "SaidSomeoneDied:1:10,TalkReplica:1:2"
		applycontexttoworld
	},
	{
		name = "C6M1TakeSubMachineGunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpSMG],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		Response C6M1TakeSubMachineGunReplica
		ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		applycontexttoworld
	},
	{
		name = "C6M1TakeSubMachineGunSilencedReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		Response C6M1TakeSubMachineGunReplica
		ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		applycontexttoworld
	},
	{
		name = "C6M1TakePumpShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpPumpShotgun],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		Response C6M1TakeSubMachineGunReplica
		ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		applycontexttoworld
	},
	{
		name = "C6M1TakeChromeShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpShotgun_Chrome],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		Response C6M1TakeSubMachineGunReplica
		ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		applycontexttoworld
	},
	{
		name = "C6M1TakeCSSMP5Replica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpSmg_mp5],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isc6m1_riverbank],
			[IsJustSaidWorldC6M1_IntoTheStore],
		],
		Response C6M1TakeSubMachineGunReplica
		ApplyContext "JustSaidWorldC6M1_IntoTheStore:2:0"
		applycontexttoworld
	},
	{
		name = "SurvivorDeployUpExplosivesReplica",
		criteria = 
		[
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSaidDeployUpgradePack_Explosive],
			[HasUpgradePack_Explosive],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorDeployUpExplosivesReplica
		ApplyContext "SaidDeployUpgradePack_Explosive:1:30"
	},
	{
		name = "SurvivorDeployUpIncendiaryReplica",
		criteria = 
		[
			[ConceptPlayerDeployingUpgradeAmmo],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSaidDeployUpgradePack_Incendiary],
			[HasUpgradePack_Incendiary],
			[IsNotInStartArea],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorDeployUpIncendiaryReplica
		ApplyContext "SaidDeployUpgradePack_Incendiary:1:30"
	},
	{
		name = "SurvivorPickupAdrenalineReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpAdrenaline],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupAdrenalineReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupAutoShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpAutoShotgun],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupAutoShotgunReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupSpasShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpShotgun_spas],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupAutoShotgunReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupchainsawReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpchainsaw],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupchainsawReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupcricket_batReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpcricket_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupcricket_batReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupCricketBatReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpcricket_bat],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupCricketBatReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupShovelReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpShovel],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupCricketBatReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupKnifeReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpKnife],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupKnifeReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupCrowBarReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpCrowBar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupCrowBarReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupDefibrillatorReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpDefibrillator],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupDefibrillatorReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupelectric_guitarReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpelectric_guitar],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupelectric_guitarReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupFirstAidKitReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpFirstAidKit],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupFirstAidKitReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupFirstSMGReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsPickedUpSmg_silenced],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidPickupFirstSMG],
			[IsSaidC1M1OpenDoor],
			[ExtraWeight10],
			[IsWorldTalkReplica],
		],
		Response SurvivorPickupFirstSMGReplica
		ApplyContext "SaidPickupFirstSMG:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorPickupGolfCLubReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpGolfClub],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupGolfCLubReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupGrenadeLauncherReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpGrenadeLauncher],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupGrenadeLauncherReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupHuntingRifleReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpHuntingRifle],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupHuntingRifleReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupMilitarySniperReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSniper_Military],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupHuntingRifleReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupScoutSniperReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSniper_scout],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupHuntingRifleReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupAWPSniperReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSniper_awp],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupHuntingRifleReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupIncendiaryAmmoReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpIncendiaryAmmo],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupIncendiaryAmmoReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupExplosiveAmmoReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpIncendiaryAmmo],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupExplosiveAmmoReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupKatanaReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpKatana],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupKatanaReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupLaserSightsAlwaysReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[ChanceToFire50Percent],
			[IsBotNotAvailable],
			[NotPickedUpItem],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupLaserSightsAlwaysReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupM60Replica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpM60],
			[IsNotSpeaking],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupM60Replica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupMacheteReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpMachete],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupMacheteReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupMagnumReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpMagnum],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupMagnumReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupPitchforkReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpPitchfork],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupMagnumReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupMolotovReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpMolotov],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupMolotovReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupPainPillsReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpPainPills],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupPainPillsReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupPipeBombReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpPipeBomb],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupPipeBombReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupPumpShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpPumpShotgun],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupPumpShotgunReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupChromeShotgunReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpShotgun_chrome],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupPumpShotgunReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupRifleReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpRifle],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupRifleReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupDesertRifleReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpRifle_Desert],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupRifleReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupAK47RifleReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpRifle_AK47],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupRifleReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupSG552RifleReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpRifle_sg552],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupRifleReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupSecondPistolReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSecondPistol],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupSecondPistolReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupSMGReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSMG],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupSMGReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupSilencedSMGReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpSmg_silenced],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupSMGReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickuptonfaReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUptonfa],
			[IsNotSpeaking],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickuptonfaReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupUpExplosivesReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpUpgradePack_Explosive],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupUpExplosivesReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupUpIncendiaryReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpUpgradePack_Incendiary],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotInStartArea],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupUpIncendiaryReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupVomitJarReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpVomitJar],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotSpeaking],
			[IsNotInStartArea],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorPickupVomitJarReplica
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupVomitJarAlwaysC1Replica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpVomitJar],
			[ChanceToFire30Percent],
			[NotPickedUpItem],
			[IsNotInSafeSpot],
			[IsNotInStartArea],
			[IsNotSpeaking],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
		],
		Response SurvivorPickupVomitJarAlwaysC1Replica
		then replica Player.TakeVomitJarC1a foo:0 -0.912 //Grabbin' puke!
		ApplyContext "PickedUpItem:1:30"
	},
	{
		name = "PlayerGettingRevivedReplica",
		criteria = 
		[
			[ConceptReviveFriendDown],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response PlayerGettingRevivedReplica
		then From ReviveFriendDownFinal foo:0 -1.648 //I'm cool.
	},
	{
		name = "PlayerHealOtherReplica",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[NotInIntenseCombat],
			[IsWorldTalkReplica],
		],
		Response PlayerHealOtherReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerHealOtherC1Replica",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[NotInIntenseCombat],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
		],
		Response PlayerHealOtherC1Replica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerHealOtherCombatReplica",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[InIntenseCombat],
			[IsWorldTalkReplica],
		],
		Response PlayerHealOtherCombatReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerHealOtherTankReplica",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsWorldTalkReplica],
		],
		//forceweight 30
		Response PlayerHealOtherCombatReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerHealMechanicCombatReplica",
		criteria = 
		[
			[ConceptPlayerHealingOther],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[InIntenseCombat],
			[SubjectIsMechanic],
			[ChanceToFire30Percent],
			[IsWorldTalkReplica],
		],
		Response PlayerHealMechanicCombatReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerLedgeSaveReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSave],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerLedgeSaveReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerReviveFriendReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerReviveFriendReplica
		then Subject ReviveFriendDown foo:0 -1.159 //Where that put you at?
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "PlayerReviveFriendFFReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsShotTeammateReplica],
			[IsWorldTalkReplica],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 20
		Response PlayerReviveFriendFFReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerReviveFriendCriticalFFReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsShotTeammateReplica],
			[IsWorldTalkReplica],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 20
		Response PlayerReviveFriendFFReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerReviveFriendBReplica",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotReviveInterrupt],
		],
		Response PlayerReviveFriendBReplica
	},
	{
		name = "PlayerReviveFriendGamblerReplica",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsReplica],
			[FromIsGambler],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsNotReviveInterrupt],
		],
		Response PlayerReviveFriendGamblerReplica
	},
	{
		name = "PlayerReviveFriendMechanicReplica",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsReplica],
			[FromIsMechanic],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsNotReviveInterrupt],
		],
		Response PlayerReviveFriendMechanicReplica
	},
	{
		name = "PlayerReviveFriendProducerReplica",
		criteria = 
		[
			[ConceptReviveFriendDownFinal],
			[IsNotCoughing],
			[IsReplica],
			[FromIsProducer],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
			[IsNotReviveInterrupt],
		],
		Response PlayerReviveFriendProducerReplica
	},
	{
		name = "PlayerReviveFriendCriticalReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[NotInIntenseCombat],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerReviveFriendCriticalReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerReviveFriendLoudReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 30
		Response PlayerReviveFriendLoudReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerLedgeSaveCriticalReplica",
		criteria = 
		[
			[ConceptPlayerLedgeSaveCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerLedgeSaveReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerReviveFriendLoud2Replica",
		criteria = 
		[
			[ConceptPlayerReviveFriend],
			[IsNotCoughing],
			[IsReplica],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerReviveFriendLoudReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerReviveFriendLoudCritReplica",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsReplica],
			[InIntenseCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerReviveFriendLoudReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "PlayerReviveFriendLoudCrit2Replica",
		criteria = 
		[
			[ConceptPlayerReviveFriendCritical],
			[IsNotCoughing],
			[IsReplica],
			[IsZombiePresentTank],
			[IsSaidTankWarn2],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		//forceweight 30
		Response PlayerReviveFriendLoudReplica
		ApplyContext "TalkReplica:1:5"
	},
	{
		name = "_C1M1_ElevatorHelloReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHelloReplica
	},
	{
		name = "_C1M1_ElevatorHello01aReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello01a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello01aReplica
		then producer _C1M1_ElevatorHello02a foo:0 -1.780 //Everyone just calls me Replica.
	},
	{
		name = "_C1M1_ElevatorHello01cReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello01c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello01cReplica
		then mechanic _C1M1_ElevatorHello13a foo:0 -3.956 //Settle down, son. We're going to be okay. What's your name?
	},
	{
		name = "_C1M1_ElevatorHello01dReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello01d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello01dReplica
		then producer _C1M1_ElevatorHello02d foo:0 -0.673 //Replica.
	},
	{
		name = "_C1M1_ElevatorHello02bReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello02b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello02bReplica
		then gambler _C1M1_ElevatorHelloAllAliveExtra1 foo:0 -0.539 //And you?
	},
	{
		name = "_C1M1_ElevatorHelloAllAliveExtra1Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHelloAllAliveExtra1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHelloAllAliveExtra1Replica
		then gambler _C1M1_ElevatorHelloAllAliveExtra1 foo:0 -0.539 //And you?
	},
	{
		name = "_C1M1_ElevatorHello03bReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello03b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello03bReplica
		then producer _C1M1_ElevatorHello02a foo:0 -2.294 //People call me Replica, what's your name?
	},
	{
		name = "_C1M1_ElevatorHello03cReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello03c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello03cReplica
		then gambler _C1M1_ElevatorHello04c foo:0 -2.294 //People call me Replica, what's your name?
	},
	{
		name = "_C1M1_ElevatorHello05cReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello05c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello05cReplica
	},
	{
		name = "_C1M1_ElevatorHello07dReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello07d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello07dReplica
		then producer _C1M1_ElevatorHello07e foo:0 -3.385 //People call me Replica. And I LIVE here.
	},
	{
		name = "_C1M1_ElevatorHello07gReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello07g],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello07gReplica
	},
	{
		name = "_C1M1_ElevatorHello09aReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello09a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello09aReplica
		then mechanic _C1M1_ElevatorHello09a foo:0 foo:0 -3.385 //My name's Replica. And I KNOW how to shoot a gun.
	},
	{
		name = "_C1M1_ElevatorHello10aReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello10a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello10aReplica
		then replica _C1M1_ElevatorHello10b foo:0 -1.224 //No, I'm good.
	},
	{
		name = "_C1M1_ElevatorHello10bReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello10b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello10bReplica
		then gambler _C1M1_ElevatorHello10c foo:0 -0.539 //And you?
	},
	{
		name = "_C1M1_ElevatorHello12bReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello12b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello12bReplica
		then replica _C1M1_ElevatorHello112c foo:0 1.5 //Replica'll work.
	},
	{
		name = "_C1M1_ElevatorHello12cReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello12c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello12cReplica
		then producer C1M1WeAreScrewed foo:0 0.1 //Girl - You're in news. Can you make any sense of this?
	},
	{
		name = "_C1M1_ElevatorHello13aReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello13a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello13aReplica
		then producer _C1M1_ElevatorHello13b foo:0 0.1 //5.916 There we go. Most people call me Replica. And we're gonna be okay. Just gotta keep our heads.
	},
	{
		name = "_C1M1_ElevatorHello13bReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello13b],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello13bReplica
		then producer _C1M1_ElevatorHello13c foo:0 -1.780 //Everyone just calls me Replica.
	},
	{
		name = "_c1m4startelevator5aReplica",
		criteria = 
		[
			[Concept_c1m4startelevator5a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c1m4startelevator5aReplica
		then mechanic _c1m4startelevator5a foo:0 -2.313 //Son, you got a DEAL.
	},
	{
		name = "_c1m4startelevatorLastReplica",
		criteria = 
		[
			[Concept_c1m4startelevatorLast],
			[IsReplica],
			[ElevatorTimeNotUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c1m4startelevatorLastReplica
		ApplyContext "Talk:1:5"
		applycontexttoworld
	},
	{
		name = "_c1m4startelevatorLastTimeUpReplica",
		criteria = 
		[
			[Concept_c1m4startelevatorLast],
			[IsReplica],
			[ElevatorTimeUp],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response NoResponse
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},
	{
		name = "_C2M1_Fall01Replica",
		criteria = 
		[
			[Concept_C2M1_Fall01],
			[IsReplica],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M1_Fall01Replica
	},
	{
		name = "_C2M1_Fall02Replica",
		criteria = 
		[
			[Concept_C2M1_Fall02],
			[IsReplica],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M1_Fall02Replica
	},
	{
		name = "_C2M1_Fall04Replica",
		criteria = 
		[
			[Concept_C2M1_Fall04],
			[IsReplica],
			[NotInCombat],
			[ChanceToFire20Percent],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M1_Fall04Replica
		ApplyContext "Talk:1:7.124"
		applycontexttoworld
	},
	{
		name = "_c2m1_searchlights01Replica",
		criteria = 
		[
			[Concept_c2m1_searchlights01],
			[IsReplica],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c2m1_searchlights01Replica
		ApplyContext "Talk:1:1.903"
		applycontexttoworld
	},
	{
		name = "_c2m1_searchlights02Replica",
		criteria = 
		[
			[Concept_c2m1_searchlights02],
			[IsReplica],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c2m1_searchlights02Replica
		then any _c2m1_searchlights03 foo:0 0.01 //There's still searchlights on. I'd say that's a good sign.
		ApplyContext "Talk:1:3.292"
		applycontexttoworld
	},
	{
		name = "_c2m1_searchlights03Replica",
		criteria = 
		[
			[Concept_c2m1_searchlights03],
			[IsReplica],
			[NotInCombat],
			[IssuerClose],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c2m1_searchlights03Replica
		ApplyContext "Talk:1:4.295"
		applycontexttoworld
	},
	{
		name = "_C2M1abandoned01Replica",
		criteria = 
		[
			[Concept_C2M1abandoned01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M1abandoned01Replica
		then any _C2M1abandoned02 foo:0 0.01 //Maybe they left 'em when they got rescued.
	},
	{
		name = "_C2M1BillboardReplica",
		criteria = 
		[
			[Concept_C2M1Billboard],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerRemarkpathc2m1_billboardReplica
	},
	{
		name = "_C2M2_Bathroom01Replica",
		criteria = 
		[
			[Concept_C2M2_Bathroom01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2_Bathroom01Replica
	},
	{
		name = "_C2M2_CaroStart03Replica",
		criteria = 
		[
			[Concept_C2M2_CaroStart03],
			[IsReplica],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2_CaroStart03Replica
	},
	{
		name = "_C2M2_CottonCandy01Replica",
		criteria = 
		[
			[Concept_C2M2_CottonCandy01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear300],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2_CottonCandy01Replica
		ApplyContext "Talk:1:10.109"
		applycontexttoworld
	},
	{
		name = "_C2M2_Kiddie01Replica",
		criteria = 
		[
			[Concept_C2M2_Kiddie01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear500],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2_Kiddie01Replica
		then producer _C2M2_Kiddie05 foo:0 0.2 //Sometimes it feels like we're babysitting, doesn't it?
		ApplyContext "Talk:1:3.173"
		applycontexttoworld
	},
	{
		name = "_C2M2_SeeSafehouse01Replica",
		criteria = 
		[
			[Concept_C2M2_SeeSafehouse01],
			[IsReplica],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M2_SeeSafehouse01Replica
	},
	{
		name = "_c2m3_coaster01Replica",
		criteria = 
		[
			[Concept_c2m3_coaster01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		Response _c2m3_coaster01Replica
		ApplyContext "Talk:1:3.591"
		applycontexttoworld
	},
	{
		name = "_c2m3_coaster05Replica",
		criteria = 
		[
			[Concept_c2m3_coaster05],
			[IsReplica],
			[ChanceToFire60Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		Response _c2m3_coaster05Replica
		ApplyContext "Talk:1:4.144"
		applycontexttoworld
	},
	{
		name = "_c2m3_coaster08Replica",
		criteria = 
		[
			[Concept_c2m3_coaster08],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		Response _c2m3_coaster08Replica
		ApplyContext "Talk:1:3.591"
		applycontexttoworld
	},
	{
		name = "_c2m3_freshair01Replica",
		criteria = 
		[
			[Concept_c2m3_freshair01],
			[IsReplica],
			[IssuerClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c2m3_freshair01Replica
	},
	{
		name = "_c2m3_hole01Replica",
		criteria = 
		[
			[Concept_c2m3_hole01],
			[IsReplica],
			[IssuerReallyClose],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDownHole],
		],
		Response _c2m3_hole01Replica
	},
	{
		name = "_C2M4_GateOpen001Replica",
		criteria = 
		[
			[Concept_C2M4_GateOpen001],
			[IsReplica],
			[IsNotIncapacitated],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M4_GateOpen001Replica
	},
	{
		name = "_C4_BigStormHits01Replica",
		criteria = 
		[
			[Concept_C4_BigStormHits01],
			[IsReplica],
			[_auto_NotC4ReplicaInCover],
			[_auto_IsTimerA],
			[FromIsAnOrator],
		],
		Response _C4_BigStormHits01Replica
		then any _C4_BigStormHits02 foo:0 0.04 //SQUALL'S STARTIN', PEOPLE!
		ApplyContext "Talk:1:1.787"
		applycontexttoworld
	},
	{
		name = "_C4_BigStormHits02Replica",
		criteria = 
		[
			[Concept_C4_BigStormHits02],
			[IsReplica],
			[IsNotCoughing],
			[IssuerClose],
			[IsNotIncapacitated],
			[_auto_NotC4ReplicaInCover],
		],
		Response _C4_BigStormHits02Replica
		ApplyContext "Talk:1:1.203"
		applycontexttoworld
	},
	{
		name = "_c4m1_rainresponseReplica",
		criteria = 
		[
			[Concept_c4m1_rainresponse],
			[IsReplica],
			[NotInCombat],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidc4m1_rainresponse],
		],
		Response _c4m1_rainresponseReplica
		ApplyContext "Saidc4m1_rainresponse:1:0"
		applycontexttoworld
	},
	{
		name = "_c4m2_caneyell01Replica",
		criteria = 
		[
			[Concept_c4m2_caneyell01],
			[IsReplica],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsReplicaInCane],
		],
		Response _c4m2_caneyell01Replica
	},
	{
		name = "_c4m2_ElevatorHere01Replica",
		criteria = 
		[
			[Concept_c4m2_ElevatorHere01],
			[IsReplica],
			[IsNotIncapacitated],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m2_ElevatorHere01Replica
	},
	{
		name = "_c4m2_gasinside01Replica",
		criteria = 
		[
			[Concept_c4m2_gasinside01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotReplicaInCane],
		],
		Response _c4m2_gasinside01Replica
	},
	{
		name = "_c4m2_seestation01Replica",
		criteria = 
		[
			[Concept_c4m2_seestation01],
			[IsReplica],
			[IsSubjectDistNear200],
			[IsNotSaidActivatedC4M2Elevator],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m2_seestation01Replica
		ApplyContext "Talk:1:2"
		applycontexttoworld
	},
	{
		name = "_c4m2_streetblocked01Replica",
		criteria = 
		[
			[Concept_c4m2_streetblocked01],
			[IsReplica],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m2_streetblocked01Replica
	},
	{
		name = "_c4m2_streetblocked01bReplica",
		criteria = 
		[
			[Concept_c4m2_streetblocked01],
			[IsReplica],
			[IsSubjectDistFar400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m2_streetblocked01bReplica
		then subject _c4m2_streetblocked02 foo:0 0.01 //
	},
	{
		name = "_c4m2_streetblocked02Replica",
		criteria = 
		[
			[Concept_c4m2_streetblocked02],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m2_streetblocked01Replica
	},
	{
		name = "_c4m2_waterpool02Replica",
		criteria = 
		[
			[Concept_c4m2_waterpool02],
			[IsReplica],
			[IsSubjectDistNear400],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m2_waterpool02Replica
	},
	{
		name = "_c4m2_Witchville05Replica",
		criteria = 
		[
			[Concept_c4m2_Witchville05],
			[IsReplica],
			[IssuerClose],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m2_Witchville05Replica
	},
	{
		name = "_C4M3_FLOODED01Replica",
		criteria = 
		[
			[Concept_C4M3_FLOODED01],
			[IsReplica],
			[NotInCombat],
			[IsNotCoughing],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C4M3_FLOODED01Replica
	},
	{
		name = "_c4m3_rain01Replica",
		criteria = 
		[
			[Concept_c4m3_rain01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m3_rain01Replica
	},
	{
		name = "_c4m3_startsafe02Replica",
		criteria = 
		[
			[Concept_c4m3_startsafe02],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m3_startsafe02Replica
		then Any _c4m3_startsafe03 foo:0 0.2 //Yup.
	},
	{
		name = "_c4m3_startsafe03Replica",
		criteria = 
		[
			[Concept_c4m3_startsafe03],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _c4m3_startsafe03Replica
		then self IntroEnd foo:0 0.1 //Let's head back to the boat.
	},
	{
		name = "_introc1m1MovieIntroReplica",
		criteria = 
		[
			[Concept_introc1m1MovieIntro],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1MovieIntroReplica
		then gambler _introc1m1MovieIntro foo:0 -2.033 //They left us here to die.
	},
	{
		name = "_introc1m1a03Replica",
		criteria = 
		[
			[Concept_introc1m1a03],
			[IsReplica],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1a03Replica
		then any _introc1m1a04 foo:0 -6.346 //HEYYY! COME BACK! COME-ahh, he ain't comin' back.
	},
	{
		name = "_introc1m1a03AloneReplica",
		criteria = 
		[
			[Concept_introc1m1a03],
			[IsReplica],
			[IsAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1a03AloneReplica
	},
	{
		name = "_introc1m1a05Replica",
		criteria = 
		[
			[Concept_introc1m1a05],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1a05Replica
		then gambler _introc1m1b08donuts foo:0 0.1 //Dollars to donuts, that chopper's headin' to the mall across town.
	},
	{
		name = "_introc1m1b01Replica",
		criteria = 
		[
			[Concept_introc1m1b01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1b01Replica
		then any _introc1m1b02 foo:0 -4.215 //Hey! There's still people on the roof! Get BACK HERE!
	},
	{
		name = "_introc1m1b04Replica",
		criteria = 
		[
			[Concept_introc1m1b04],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1b04Replica
		then gambler _introc1m1helileft foo:0 0.1 //
	},
	{
		name = "_introc1m1b06Replica",
		criteria = 
		[
			[Concept_introc1m1b06],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1b06Replica
		then any _introc1m1last foo:0 0.1 //There's a mall got turned into an evac station not too far from here. I'll bet that chopper's headin' there.
	},
	{
		name = "_introc1m1b08Replica",
		criteria = 
		[
			[Concept_introc1m1b08],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1b08Replica
		then any _introc1m1last foo:0 0.1 //There's a mall got turned into an evac station not too far from here. I'll bet that chopper's headin' there.
	},
	{
		name = "_introc1m1b09Replica",
		criteria = 
		[
			[Concept_introc1m1b09],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1b09Replica
		then gambler _introc1m1b11 foo:0 0.1 //There ARE three other people here, son.
	},
	{
		name = "_introc1m1c01Replica",
		criteria = 
		[
			[Concept_introc1m1c01],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1c01Replica
		then gambler _introc1m1c02 foo:0 0.1 //Don't take the Lord's name in vain.
	},
	{
		name = "_introc1m1c02Replica",
		criteria = 
		[
			[Concept_introc1m1c02],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1c02Replica
		then producer _introc1m1b05 foo:0 0.1 //YEAH. I'm serious.
	},
	{
		name = "_introc1m1lastweaponsReplica",
		criteria = 
		[
			[Concept_introc1m1lastweapons],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _introc1m1lastweaponsReplica
		then self IntroEnd foo:0 0.1 //Gotta agree. Let's follow them to the mall.
	},
	{
		name = "BlankTestoReplica",
		criteria = 
		[
			[ConceptBlankTesto],
			[IsReplica],
		],
		Response NoResponse
		ApplyContext "_auto_BlankTesto:1:0"
		applycontexttoworld
	},
	{
		name = "c1m1_elevator_door_openReplica",
		criteria = 
		[
			[Conceptc1m1_elevator_door_open2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c1m1_elevator_door_openReplica
		then all C1M1Cough foo:0 -0.584 //[Coughing from smoke]
	},
	{
		name = "c1m1_elevator_ready2Replica",
		criteria = 
		[
			[Conceptc1m1_elevator_ready2],
			[IsReplica],
			[IsNotSaidC1M1OpenDoor],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c1m1_elevator_ready2Replica
		then replica C1M1Cough foo:0 -2.002 //Alright, enough chat. Get ready.
		ApplyContext "SaidC1M1OpenDoor:1:30"
		applycontexttoworld
	},
	{
		name = "_C1M1_ElevatorHello2AliveName1Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveName1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello2AliveName1Replica
		then any _C1M1_ElevatorHello2AliveName2 foo:0 -1.524 //People just call me Replica.
	},
	{
		name = "_C1M1_ElevatorHello2AliveName2Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveName2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello2AliveName2Replica
		then any _C1M1_ElevatorHello2AliveExtra1 foo:0 -7.056 //7.056 My name's Replica. I don't like bein' here any more than you do-but if we gotta fight, we might as well fight together.
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra1Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello2AliveExtra1Replica
		then any _C1M1_ElevatorHello2AliveExtra2 foo:0 0.1 //This ain't how i thought this would go.
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra2Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello2AliveExtra2Replica
	},
	{
		name = "_C1M1_ElevatorHello2AliveExtra2NReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello2AliveExtra2],
			[IsReplica],
			[FromIsGambler],
			[ChanceToFire100Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello2AliveExtra2NReplica
	},
	{
		name = "_C1M1_ElevatorHello3AliveName1RNReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName1],
			[FromIsProducer],
			[ChanceToFire100Percent],
			[IsRochelleElevatorIntro],
			[IsNotReplicaIntroduced],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello3AliveName1RNReplica
		then from _C1M1_ElevatorHello3AliveExtra2 foo:0 -1.524 //People just call me Replica.
		ApplyContext "ReplicaIntroduced:1:0"
		applycontexttoworld
	},
	{
		name = "_C1M1_ElevatorHello3AliveName1REReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName2],
			[FromIsProducer],
			[ChanceToFire100Percent],
			[IsRochelleElevatorIntro],
			[IsNotReplicaIntroduced],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello3AliveName1REReplica
		then from _C1M1_ElevatorHello3AliveName2 foo:0 -1.524 //People just call me Replica.
		ApplyContext "ReplicaIntroduced:1:0"
		applycontexttoworld
	},
	{
		name = "_C1M1_ElevatorHello3AliveName1Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName1],
			[IsReplica],
			[IsNotReplicaIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello3AliveName1Replica
		then any _C1M1_ElevatorHello3AliveName2 foo:0 -1.524 //People just call me Replica.
		ApplyContext "ReplicaIntroduced:1:0"
		applycontexttoworld
	},
	{
		name = "_C1M1_ElevatorHello3AliveName2Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveName2],
			[IsReplica],
			[IsNotReplicaIntroduced],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello3AliveName2Replica
		then any _C1M1_ElevatorHello3WhoIsDead foo:0 -1.524 //People just call me Replica.
		ApplyContext "ReplicaIntroduced:1:0"
		applycontexttoworld
	},
	{
		name = "_C1M1_ElevatorHello3AliveWhoIsDeadReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveWhoIsDead],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello3AliveWhoIsDeadReplica
		then any _C1M1_ElevatorHello3AliveNameDead foo:0 -0.981 //Who'd we lose?
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadEReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsReplica],
			[IsMechanicNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello3AliveNameDeadEReplica
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadNReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsReplica],
			[IsGamblerNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello3AliveNameDeadNReplica
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDeadRReplica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead],
			[IsReplica],
			[IsProducerNotAlive],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello3AliveNameDeadRReplica
	},
	{
		name = "_C1M1_ElevatorHello3AliveNameDead2Replica",
		criteria = 
		[
			[Concept_C1M1_ElevatorHello3AliveNameDead2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C1M1_ElevatorHello3AliveNameDead2Replica
	},
	{
		name = "C1M1CoughReplica",
		criteria = 
		[
			[ConceptC1M1Cough],
			[IsReplica],
			[ismap_c1m1_hotel],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M1CoughReplica
	},
	{
		name = "C1M2SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[ismap_c1m2_streets],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsSafeRoomStart],
			[_auto_NotSafeRoomQuiet],
			[IsNotSpeakingWeight0],
		],
		Response C1M2SafeRoomReplica
		then producer C1M2SafeRooma1 foo:0 -4.016 //There's a gun store on the way to the mall. What do you say we pay it a visit?
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "C1M3AlarmOffaReplica",
		criteria = 
		[
			[ConceptC1M3AlarmOffa],
			[IsReplica],
			[IsSubjectDistNear600],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M3AlarmOffaReplica
	},
	{
		name = "C1M3SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[NotInCombat],
			[IsInStartArea],
			[IsNotAlone],
			[IsNotSaidLeavingSafeArea],
			[ismap_c1m3_mall],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomQuiet],
			[_auto_IsSafeRoomStart],
			[IsNotSpeakingWeight0],
		],
		Response C1M3SafeRoomReplica
		then self IntroEnd foo:0 0.1 //Keep an eye out for the evac center. Also the food court. I am STARVING.
		ApplyContext "_auto_SafeRoomStart:2:0"
		applycontexttoworld
	},
	{
		name = "C1M3SafeRoom2cReplica",
		criteria = 
		[
			[ConceptC1M3SafeRoom2c],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M3SafeRoom2cReplica
		then self IntroEnd foo:0 0.1 //CEDA's gotta be around here somewhere. Let's find this evac and get out of here.
	},
	{
		name = "C1M3SafeRoom2dReplica",
		criteria = 
		[
			[ConceptC1M3SafeRoom2d],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M3SafeRoom2dReplica
		then all C1M3SafeRoom2e foo:0 -0.1 //Amen
	},
	{
		name = "C1M4NearFinale03aReplica",
		criteria = 
		[
			[ConceptC1M4NearFinale03a],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M4NearFinale03aReplica
	},
	{
		name = "c1m4NearFinale1Replica",
		criteria = 
		[
			[Conceptc1m4NearFinale1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c1m4NearFinale1Replica
	},
	{
		name = "c1m4NearFinale1NickReplica",
		criteria = 
		[
			[Conceptc1m4NearFinale1],
			[IsReplica],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[ChanceToFire50Percent],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c1m4NearFinale1NickReplica
		then Gambler C1M4NearFinale02a foo:0 -1.263 //What do ya'all make of this?
	},
	{
		name = "C1M4SafeRoom2a1Replica",
		criteria = 
		[
			[ConceptC1M4SafeRoom2a1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M4SafeRoom2a1Replica
		then gambler C1M4SafeRoom2a2 foo:0 -3.132 //Ohh heyyy! Jimmy Gibbs!
	},
	{
		name = "C1M4SafeRoom2a3Replica",
		criteria = 
		[
			[ConceptC1M4SafeRoom2a3],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M4SafeRoom2a3Replica
		then gambler C1M4SafeRoom2a4 foo:0 -6.900 //Well, trust me-in these parts? He's as famous as... Elvis. Or the President.
	},
	{
		name = "C1M4SafeRoom2b5Replica",
		criteria = 
		[
			[ConceptC1M4SafeRoom2b5],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M4SafeRoom2b5Replica
		then self IntroEnd foo:0 0.1 //Amen
	},
	{
		name = "C1M4SafeRoomEndReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[ismap_c1m4_atrium],
			[IsReplica],
			[IsNotSaidLeavingSafeArea],
			[_auto_NotTellingStory],
		],
		Response C1M4SafeRoomEndReplica
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
	},
	{
		name = "C2M1DoneFallingAlt1Replica",
		criteria = 
		[
			[ConceptC2M1DoneFalling],
			[IsReplica],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotDoneFalling],
		],
		Response C2M1DoneFallingAlt1Replica
		ApplyContext "Talk:1:3.055,_auto_DoneFalling:1:0"
		applycontexttoworld
	},
	{
		name = "C2M1Intro002Replica",
		criteria = 
		[
			[ConceptC2M1Intro002],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M1Intro002Replica
		then self IntroEnd foo:0 0.1 //All right, let's get back on foot.
	},
	{
		name = "C2M1Intro009Replica",
		criteria = 
		[
			[ConceptC2M1Intro009],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M1Intro009Replica
		then self IntroEnd foo:0 0.1 //Yeah, Ellis, that was some good driving.
	},
	{
		name = "C2M1Intro010Replica",
		criteria = 
		[
			[ConceptC2M1Intro010],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M1Intro010Replica
		then mechanic C2M1Intro002 foo:0 0.1 //But the roads blocked now.
	},
	{
		name = "LeavingC2M1StartReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsReplica],
			[IsNotSaidLeavingSafeArea],
			[Ismap_c2m1],
			[IsTalk],
		],
		Response LeavingC2M1StartReplica
		then mechanic C2M1Intro005 foo:0 0.1 //
		ApplyContext "SaidLeavingSafeArea:1:0"
		applycontexttoworld
	},
	{
		name = "C2M1Intro_400Replica",
		criteria = 
		[
			[ConceptC2M1Intro_400],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M1Intro_400Replica
		then mechanic C2M1Intro_400 foo:0 1 //We tight.
		ApplyContext "Talk:1:5.363"
		applycontexttoworld
	},
	{
		name = "C2M4PenSmell001Replica",
		criteria = 
		[
			[ConceptC2M4PenSmell001],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M4PenSmell001Replica
		then gambler _C2M4_Ribs foo:0 0.1 //All I smell is ribs.
	},
	{
		name = "_C2M4_RibsReplica",
		criteria = 
		[
			[Concept_C2M4_Ribs],
			[IsReplica],
			[IsTalk],
			[NotInCombat],
			[IsGamblerAlive],
			[IsGamblerNear400],
			[IsNotCoughing],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response _C2M4_RibsReplica
	},
	{
		name = "C2M5_lipsync001Replica",
		criteria = 
		[
			[ConceptC2M5_lipsync001],
			[IsReplica],
			[TimeSinceGroupInCombat02],
			[NotInCombat],
			[IsNotSpeaking],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotButton2],
		],
		Response C2M5_lipsync001Replica
		then orator C2M5_OratorBlank01 foo:0 0.01 //They have taped music? Shit. Old ass classic rock clowns.
	},
	{
		name = "C4EnterCoverReplica",
		criteria = 
		[
			[ConceptC4EnterCover],
			[IsReplica],
		],
		Response NoResponse
		ApplyContext "_auto_C4ReplicaInCover:1:0"
		applycontexttoworld
	},
	{
		name = "C4ExitCoverReplica",
		criteria = 
		[
			[ConceptC4ExitCover],
			[IsReplica],
		],
		Response NoResponse
		ApplyContext "_auto_C4ReplicaInCover:0:0"
		applycontexttoworld
	},
	{
		name = "c4m1_InBurgerTank01Replica",
		criteria = 
		[
			[Conceptc4m1_InBurgerTank01],
			[IsReplica],
			[NotInCombat],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c4m1_InBurgerTank01Replica
		then replica c4m1_InBurgerTank01 foo:0 0.01 //I could go for a BBQ bacon burger.
		ApplyContext "TalkReplica:1:3"
		applycontexttoworld
	},
	{
		name = "c4m1_nogas01Replica",
		criteria = 
		[
			[Conceptc4m1_nogas01],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c4m1_nogas01Replica
		then any c4m1_nogas04 foo:0 0.01 //Next gas two miles. Looks like Virgil's gonna be waitin' a bit longer than he thought.
		ApplyContext "Talk:1:6.700"
		applycontexttoworld
	},
	{
		name = "c4m1_nogas03Replica",
		criteria = 
		[
			[Conceptc4m1_nogas03],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear500],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c4m1_nogas03Replica
		ApplyContext "Talk:1:3.734"
		applycontexttoworld
	},
	{
		name = "c4m1_nogas06Replica",
		criteria = 
		[
			[Conceptc4m1_nogas06],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c4m1_nogas06Replica
		ApplyContext "Talk:1:3.734"
		applycontexttoworld
	},
	{
		name = "c4m1_nogas07Replica",
		criteria = 
		[
			[Conceptc4m1_nogas07],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c4m1_nogas07Replica
		ApplyContext "Talk:1:3.734"
		applycontexttoworld
	},
	{
		name = "c4m1_nogas10Replica",
		criteria = 
		[
			[Conceptc4m1_nogas10],
			[IsReplica],
			[NotInCombat],
			[IsSubjectDistNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response c4m1_nogas10Replica
		then any c4m1_nogas02 foo:0 0.01 //Let's head to this Ducatel diesel.
		ApplyContext "Talk:1:2.141"
		applycontexttoworld
	},
	{
		name = "GasPour20MoreTalkReplica",
		criteria = 
		[
			[ConceptGasPour20More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour20MoreTalkReplica
	},
	{
		name = "GasPour10MoreTalkReplica",
		criteria = 
		[
			[ConceptGasPour10More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour10MoreTalkReplica
	},
	{
		name = "GasPour1MoreReplica",
		criteria = 
		[
			[ConceptGasPour1More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour1MoreReplica
	},
	{
		name = "GasPour2MoreReplica",
		criteria = 
		[
			[ConceptGasPour2More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour2MoreReplica
	},
	{
		name = "GasPour3MoreReplica",
		criteria = 
		[
			[ConceptGasPour3More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour3MoreReplica
	},
	{
		name = "GasPour5MoreReplica",
		criteria = 
		[
			[ConceptGasPour5More],
			[IsReplica],
			[IsNotSpeaking],
			[_auto_IsGasCountOK],
		],
		Response GasPour5MoreReplica
	},
	{
		name = "HistoricTour02aReplica",
		criteria = 
		[
			[ConceptHistoricTour02a],
			[IsReplica],
		],
		Response HistoricTour02aReplica
		then Producer HistoricTour02b foo:0 -2.837 //Yeah, it's historic.
	},
	{
		name = "Player_CoverMeC1RCoach2Replica",
		criteria = 
		[
			[ConceptPlayer_CoverMeC1RReplica2],
			[IsReplica],
		],
		Response Player_CoverMeC1RCoach2Replica
	},
	{
		name = "Player_KnowHunterC1Replica",
		criteria = 
		[
			[ConceptPlayer_KnowHunter],
			[IsReplica],
			[IssuerClose],
			[IsNotIncapacitated],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		Response Player_KnowHunterC1Replica
	},
	{
		name = "Player_TakeBatRReplica",
		criteria = 
		[
			[ConceptPlayer_TakeBatR],
			[IsReplica],
			[IsGamblerNear400],
			[ChanceToFire30Percent],
			[isNotmap_c1m1_hotel],
		],
		Response Player_TakeBatRReplica
		then gambler Player.TakeBatR2 foo:0 -1.068 //You play ball Nick?
	},
	{
		name = "Player_TakeVomitJarC1aReplica",
		criteria = 
		[
			[ConceptPlayer_TakeVomitJarC1a],
			[IsReplica],
			[ChanceToFire10Percent],
		],
		Response Player_TakeVomitJarC1aReplica
	},
	{
		name = "C1M2TankInfoReplica",
		criteria = 
		[
			[ConceptC1M2TankInfo],
			[IsReplica],
		],
		Response C1M2TankInfoReplica
	},
	{
		name = "PlayerShotGasCanReplica",
		criteria = 
		[
			[ConceptPlayerShotGasCan],
			[IsReplica],
			[IsNotSaidPlayerShotGasCan],
			[IsScavenge],
		],
		Response PlayerShotGasCanReplica
		ApplyContext "SaidPlayerShotGasCan1:10"
		applycontexttoworld
	},
	{
		name = "PlayerCr0wnedBrideReplica",
		criteria = 
		[
			[ConceptKilledZombie],
			[IsNotCoughing],
			[IsReplica],
			[SubjectIsAWitch],
			[KilledByCr0wn],
			[IsNotWitchAggro],
			[ChanceToFire100Percent],
			[IsTalk],
			[IsTalkReplica],
			[isc6m1_riverbank],
			[IsWorldTalkReplica],
		],
		//forceweight 101
		Response PlayerCr0wnedBrideReplica
		then gambler WeddingWitchDead03 foo:0 3.1 //Mm, now that's a shotgun wedding.
	},
	{
		name = "WeddingWitchDead01Replica",
		criteria = 
		[
			[ConceptWeddingWitchDead01],
			[IsReplica],
		],
		Response WeddingWitchDead01Replica
	},
	{
		name = "WeddingWitchDead02Replica",
		criteria = 
		[
			[ConceptWeddingWitchDead02],
			[IsReplica],
		],
		Response WeddingWitchDead02Replica
	},
	{
		name = "WorldIntroC31a2Replica",
		criteria = 
		[
			[ConceptWorldIntroC31a2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldIntroC31a2Replica
		then producer WorldIntroC31a4 foo:0 -6.296 //That's true. If I had a pick a low point in the flight, it was probably when he stopped flying the chopper and attacked us.
	},
	{
		name = "WorldIntroC31e3Replica",
		criteria = 
		[
			[ConceptWorldIntroC31e3],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldIntroC31e3Replica
		then self IntroEnd foo:0 0.1 //Come on now, if I was having a cookout, I ain't invitin' CEDA either.
	},
	{
		name = "WorldIntroC3e1Replica",
		criteria = 
		[
			[ConceptWorldIntroC3e1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldIntroC3e1Replica
		then self IntroEnd foo:0 0.1 //Next time someone wants to shoot our pilot, can I get a little warning?
	},
	{
		name = "WorldIntroC3f1Replica",
		criteria = 
		[
			[ConceptWorldIntroC3f1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldIntroC3f1Replica
		then gambler WorldIntroC3f2 foo:0 -11.007 //Shit, that pilot just changed. One minute he was flying us to safety, the next he was... well... I am pretty damn sure he was trying to eat us.
	},
	{
		name = "WorldIntroC31g2Replica",
		criteria = 
		[
			[ConceptWorldIntroC31g2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response WorldIntroC31g2Replica
		then self IntroEnd foo:0 0.1 //I don't think anyone likes the swamp.
	},
	{
		name = "PlayerCoverMeHealReplica",
		criteria = 
		[
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkReplica],
			[IsNotAlone],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response PlayerCoverMeHealReplica
		ApplyContext "AskForCover:1:30"
	},
	{
		name = "PlayerCoverMeHealC1Replica",
		criteria = 
		[
			[ConceptPlayerHealing],
			[IsNotCoughing],
			[IsReplica],
			[IsNotAskedForCover],
			[IsTalk],
			[IsTalkReplica],
			[IsNotAlone],
			[IsWorldTalkReplica],
			[ismap_c1m1_hotel],
		],
		Response PlayerCoverMeHealC1Replica
		then mechanic Player.CoverMeC1RReplica1 foo:0 -2.791 //Hold up, gotta try and heal myself.
		ApplyContext "AskForCover:1:30"
	},
	{
		name = "Player_LostCallC6M3Replica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsClosestSurvivorFar3000],
			[IsNotAlone],
			[IsNotSaidPlayerLostCall],
			[Isc6m3_port],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response Player_LostCallC6M3Replica
		ApplyContext "SaidPlayerLostCall:1:50"
		applycontexttoworld
	},
	{
		name = "AutoPlayerLostCallReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsClosestSurvivorFar3000],
			[IsNotAlone],
			[IsNotSaidPlayerLostCall],
			[_auto_NotNoLostCall],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response AutoPlayerLostCallReplica
		ApplyContext "SaidPlayerLostCall:1:50"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedChainsawReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsChainsaw],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedChainsawReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedChainsawAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsChainsaw],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedChainsawReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedcricket_batReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscricket_bat],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedcricket_batReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedcricket_batAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscricket_bat],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedcricket_batReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedcrowbarReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Iscrowbar],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedcrowbarReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedcrowbarAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Iscrowbar],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedcrowbarReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedGolfClubReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedGolfClubReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedGolfClubAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGolfClub],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedGolfClubReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedGuitarReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsGuitar],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedGuitarReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedGuitarAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGuitar],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedGuitarReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedKatanaReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsKatana],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedKatanaReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedKatanaAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKatana],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedKatanaReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedLaserSightsReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsLaserSights],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedLaserSightsReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedLaserSightsAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsLaserSights],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedLaserSightsReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorBotPickupLaserSightsSpottedReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpLaserSights],
			[IsNotSpeaking],
			[IsBotIsAvailable],
			[IsNotInStartArea],
			[IsNotInCheckpoint],
			[IsNotInSafeSpot],
			[IsNotSaidSpotWeapons],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedLaserSightsReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedM60Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedM60Replica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedM60AutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsM60],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedM60Replica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMacheteReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMachete],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMacheteReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMacheteAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMachete],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMacheteReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMagnumReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsMagnum],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMagnumReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMagnumAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsMagnum],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMagnumReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedtonfaReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Istonfa],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedtonfaReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedtonfaAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Istonfa],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedtonfaReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSecondPistolReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSecondPistol],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSecondPistolAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSecondPistol],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAutoShotgunReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsAutoShotgun],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAutoShotgunAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsAutoShotgun],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedHuntingRifleReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsHuntingRifle],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedHuntingRifleAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsHuntingRifle],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedPumpShotgunReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPumpShotgun],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedPumpShotgunAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPumpShotgun],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedRifleReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedRifleAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedRifle_AK47Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_AK47],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedRifle_AK47AutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_AK47],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedRifle_desertReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_desert],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedRifle_desertAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_desert],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedRifle_SG552Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsRifle_sg552],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedRifle_SG552AutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsRifle_sg552],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedShotgun_ChromeReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_Chrome],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedShotgun_ChromeAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_Chrome],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedShotgun_spasReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShotgun_spas],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedShotgun_spasAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShotgun_spas],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSMGReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSMG],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSMGAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSMG],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSMG_silencedReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSmg_silenced],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedSMG_silencedAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_silenced],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMP5SMGReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSmg_mp5],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMP5SMGAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSmg_mp5],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMilitarySniperReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_military],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedMilitarySniperAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_military],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedScoutSniperReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_scout],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedScoutSniperAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_scout],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAWPSniperReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsSniper_awp],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAWPSniperAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsSniper_awp],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedBaseballBatReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[Isbaseball_bat],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedBaseballBatAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[Isbaseball_bat],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedFryingPanReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFryingPan],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedFryingPanAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFryingPan],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAxeReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsFireAxe],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedAxeAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsFireAxe],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedShovelReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsShovel],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedShovelAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsShovel],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedPitchforkReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsNotSmartLookAuto],
			[IsPitchfork],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedPitchforkAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsPitchfork],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedKnifeReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsKnife],
			[IsNotSmartLookAuto],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedKnifeAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsKnife],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[IsNotSpeakingWeight0],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedMeleeWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedWeaponPistolReplica",
		criteria = 
		[
			[ConceptPlayerSpotPistol],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedShotgunReplica",
		criteria = 
		[
			[ConceptPlayerSpotShotgun],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedOtherWeaponReplica",
		criteria = 
		[
			[ConceptPlayerSpotOtherWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSaidSomeoneDied],
			[IsWorldTalkReplica],
			[isNotmap_c1m1_hotel],
			[_auto_NotSpottedVehicle],
		],
		Response SurvivorSpottedWeaponReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "C2M3AlarmOffNagReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[ChanceToFire50Percent],
			[IsNotIncapacitated],
			[ismap_c2m3],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_IsAlarm],
			[_auto_IsTracksOK],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m3_coasteroffReplica
		ApplyContext "_auto_TimerLockA:1:8,_auto_TimerLockReplica:1:11"
		applycontexttoworld
	},
	{
		name = "C2M3Chopper001Replica",
		criteria = 
		[
			[ConceptC2M3Chopper001],
			[IsReplica],
			[IsTalk],
			[IsSubjectDistNear400],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C2M3Chopper001Replica
	},
	{
		name = "AskWhatReplica",
		criteria = 
		[
			[ConceptAskWhat],
			[IsReplica],
		],
		Response AskWhatReplica
	},
	{
		name = "C13M1IntroStartReplica",
		criteria = 
		[
			[ConceptIntroC13M1],
			[IsReplica],
			[IsNotSaidCXM1Intro],
			[IsNotAlone],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M1IntroStartReplica
		then any C13M1Intro2 foo:0 0.1 //We gotta find a way around this fire!
		ApplyContext "CXM1Intro:1:0"
		applycontexttoworld
	},
	{
		name = "C13M1Intro2Replica",
		criteria = 
		[
			[ConceptC13M1Intro2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M1Intro2Replica
		then any C13M1Intro3 foo:0 0.1 //Where in the hell are we?
	},
	{
		name = "C13M1Intro2EllisReplica",
		criteria = 
		[
			[ConceptC13M1Intro2Ellis],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M1Intro2EllisReplica
		then any C13M1Intro2 foo:0 0.1 //Boy, ain't nobody gonna burn up. We can get around the fire.
		ApplyContext "C13M1EllisPanicking:1:0"
		applycontexttoworld
	},
	{
		name = "C13M1Intro3Replica",
		criteria = 
		[
			[ConceptC13M1Intro3],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M1Intro3Replica
		then any C13M1IntroLocationLast foo:0 0.1 //I heard there's a military base just south of here. Last I heard, they were still evacuating.
	},
	{
		name = "C13M1IntroLastReplica",
		criteria = 
		[
			[ConceptC13M1IntroLast],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M1IntroLastReplica
		then self IntroEnd foo:0 0.1 //Alright, let's get it on.
	},
	{
		name = "C13M1IntroLocationLastReplica",
		criteria = 
		[
			[ConceptC13M1IntroLocationLast],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M1IntroLocationLastReplica
		then self IntroEnd foo:0 0.1 //Allright, let's go.
	},
	{
		name = "RemarkC13M1UpHillReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1UpHill],
			[IsNotRemarkedC13M1UpHill],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3UpHereReplica
		ApplyContext "RemarkedC13M1UpHill:1:0"
		applycontexttoworld
	},
	{
		name = "RemarkC13M1DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1DownHere],
			[IsNotRemarkedC13M1DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3DownHereReplica
		ApplyContext "RemarkedC13M1DownHere:1:0"
		applycontexttoworld
	},
	{
		name = "RemarkC13M1ThroughHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1ThroughHere],
			[IsNotRemarkedC13M1ThroughHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3ThroughThisHouseReplica
		ApplyContext "RemarkedC13M1ThroughHere:1:0"
		applycontexttoworld
	},
	{
		name = "RemarkC13M1ThroughWindowReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1ThroughWindow],
			[IsNotRemarkedC13M1ThroughWindow],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc2m1_throughwindowReplica
		ApplyContext "RemarkedC13M1ThroughWindow:1:0"
		applycontexttoworld
	},
	{
		name = "RemarkC13M1UpStepsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1UpSteps],
			[IsNotRemarkedC13M1UpSteps],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_UpStairs2Replica
		ApplyContext "RemarkedC13M1UpSteps:1:0"
		applycontexttoworld
	},
	{
		name = "RemarkC13M1CrossHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1CrossHere],
			[IsNotRemarkedC13M1CrossHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkc4m3_crosshereReplica
		ApplyContext "RemarkedC13M1CrossHere:1:0"
		applycontexttoworld
	},
	{
		name = "RemarkC13M1PreBunkerOpenReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M1PreBunkerOpen],
			[IsNotRemarkedC13M1PreBunkerOpen],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response RemarkC13M1PreBunkerOpenReplica
		ApplyContext "RemarkedC13M1PreBunkerOpen:1:0"
		applycontexttoworld
	},
	{
		name = "C13M1OpeningBunkerReplica",
		criteria = 
		[
			[ConceptC13M1OpeningBunker],
			[IsReplica],
			[IsNotC13M1OpeningBunker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M1OpeningBunkerReplica
		ApplyContext "C13M1OpeningBunker:1:0,RemarkedC13M1PreBunkerOpen:1:0"
		applycontexttoworld
	},
	{
		name = "RemarkC13M2UpHillReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M2UpHill],
			[IsNotRemarkedC13M2UpHill],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC3M3UpHereReplica
		ApplyContext "RemarkedC13M2UpHill:1:0"
		applycontexttoworld
	},
	{
		name = "RemarkC13M2DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M2DownHere],
			[IsNotRemarkedC13M2DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3DownHereReplica
		ApplyContext "RemarkedC13M2DownHere:1:0"
		applycontexttoworld
	},
	{
		name = "RemarkC13M2UpLadderReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M2UpLadder],
			[IsNotRemarkedC13M2UpLadder],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response RemarkC13M2UpLadderReplica
		ApplyContext "RemarkedC13M2UpStairs:1:0"
		applycontexttoworld
	},
	{
		name = "RemarkC13M2UpStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M2UpStairs],
			[IsNotRemarkedC13M2UpStairs],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_UpTheStairsReplica
		ApplyContext "RemarkedC13M2UpStairs:1:0"
		applycontexttoworld
	},
	{
		name = "C13M2TankApproachingReplica",
		criteria = 
		[
			[ConceptC13M2TankApproaching],
			[IsReplica],
			[IsNotNoticedC13M2ShakingGround],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M2TankApproachingReplica
		ApplyContext "NoticedC13M2ShakingGround:1:0"
		applycontexttoworld
	},
	{
		name = "C13M2BarrelsIgnitedReplica",
		criteria = 
		[
			[ConceptC13M2BarrelsIgnited],
			[IsReplica],
			[IsNotC13M2IgnitedBarrels],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M2BarrelsIgnitedReplica
		then any C13M2Barrels1 foo:0 5 //Back Back Back Back Back!
		ApplyContext "C13M2IgnitedBarrels:1:0"
		applycontexttoworld
	},
	{
		name = "C13M2Barrels1Replica",
		criteria = 
		[
			[ConceptC13M2Barrels1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M2Barrels1Replica
		then any C13M2Barrels2 foo:0 0.1 //Oh shit! Gate open!
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "C13M2Barrels2Replica",
		criteria = 
		[
			[ConceptC13M2Barrels2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M2Barrels2Replica
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "RemarkC13M3DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsC13M3DownHere],
			[IsNotRemarkedC13M3DownHere],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkC1M3DownHereReplica
		ApplyContext "RemarkedC13M3DownHere:1:0"
		applycontexttoworld
	},
	{
		name = "C13M3ApproachingTankerReplica",
		criteria = 
		[
			[ConceptC13M3ApproachingTanker],
			[IsReplica],
			[IsNotSawC13M3Tanker],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M3ApproachingTankerReplica
		then any C13M3Tanker1 foo:0 3 //Damn, I'm all turned around now.
		ApplyContext "SawC13M3Tanker:1:0"
		applycontexttoworld
	},
	{
		name = "C13M3Tanker1Replica",
		criteria = 
		[
			[ConceptC13M3Tanker1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M3Tanker1Replica
		then any C13M3Tanker2 foo:0 -0.3 //SHIT!
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "C13M3Tanker2Replica",
		criteria = 
		[
			[ConceptC13M3Tanker2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M3Tanker2Replica
		then any C13M2Tanker3 foo:0 3 //Oh shit, watch out!
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "C13M3Tanker3Replica",
		criteria = 
		[
			[ConceptC13M3Tanker3],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M3Tanker3Replica
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "C13M3OnScaffoldReplica",
		criteria = 
		[
			[ConceptC13M3OnScaffold],
			[IsReplica],
			[IsNotOnC13M3Scaffold],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response PlayerRemarkWorldC1M2DownStairsReplica
		ApplyContext "OnC13M3Scaffold:1:0"
		applycontexttoworld
	},
	{
		name = "C13M3AirstrikeReplica",
		criteria = 
		[
			[ConceptC13M3Airstrike],
			[IsReplica],
			[IsNotWitnissedC13M3Airstrike],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M3AirstrikeReplica
		then any C13M3Airstrike2 foo:0 0.3 //MOTHERF-
		ApplyContext "WitnissedC13M3Airstrike:1:0"
		applycontexttoworld
	},
	{
		name = "C13M3Airstrike2Replica",
		criteria = 
		[
			[ConceptC13M3Airstrike2],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C5M3Jets2Replica
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "C13M4Button1Replica",
		criteria = 
		[
			[ConceptC13M4Button1],
			[IsReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M4Button1Replica
		then orator C13M4FinaleBrief foo:0 0.3 //Anyone out there?
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "C13M4FinaleTriggeredReplica",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsReplica],
			[ismapc13m4_cutthroatcreek],
			[IsTriggeredByReplica],
			[_auto_NotFinaleStarted],
		],
		Response C13M4FinaleTriggeredReplica
		then orator C13M4FinaleStart foo:0 0.01 //I hear ya man.  See ya soon.
		ApplyContext "_auto_Finale:1:0,_auto_TalkingReplica:1:0"
		applycontexttoworld
	},
	{
		name = "C13M4FinaleStart2Replica",
		criteria = 
		[
			[ConceptC13M4FinaleStart2],
			[IsReplica],
			[_auto_IsTalkingReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M4FinaleStart2Replica
		ApplyContext "Talk:1:3"
		applycontexttoworld
	},
	{
		name = "C13M4DownCreekReplica",
		criteria = 
		[
			[ConceptC13M4DownCreek],
			[IsReplica],
			[IsNotInC13M4Creek],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M4DownCreekReplica
		ApplyContext "Talk:1:3,InC13M4Creek:1:0"
		applycontexttoworld
	},
	{
		name = "C13M4InSmokeReplica",
		criteria = 
		[
			[ConceptC13M4InSmoke],
			[IsReplica],
			[IsNotInC13M4Smoke],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response SurvivorCoughingReplica
		ApplyContext "TalkReplica:1:3,InC13M4Smoke:1:0"
	},
	{
		name = "C13M4NoticedHelicopterReplica",
		criteria = 
		[
			[ConceptC13M4NoticedHelicopter],
			[IsReplica],
			[IsNotNoticedC13M4Helicopter],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M4NoticedHelicopterReplica
		ApplyContext "Talk:1:3,NoticedC13M4Helicopter:1:0"
		applycontexttoworld
	},
	{
		name = "C13M4AlmostThereReplica",
		criteria = 
		[
			[ConceptC13M4AlmostThere],
			[IsReplica],
			[IsNotC13M4AlmostThere],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C13M4AlmostThereReplica
		ApplyContext "Talk:1:3,C13M4AlmostThere:1:0"
		applycontexttoworld
	},
	{
		name = "C13M4SpottedVehicleReplica",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsReplica],
			[ismapc13m4_cutthroatcreek],
			[_auto_IsFinaleStarted],
		],
		Response C13M4SpottedVehicleReplica
		then pilot C13M4PilotEscapeNag foo:0 2 //Let's go people.
		ApplyContext "_auto_Finale:2:0,_auto_TimerLockA:1:5"
		applycontexttoworld
	},
	{
		name = "C13M4GetToVehicleReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[ismapc13m4_cutthroatcreek],
			[IsNotCoughing],
			[IsNotIncapacitated],
			[IsTalk],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotInRescueVehicle],
			[_auto_IsEscapeReady],
			[_auto_NotTimerLockA],
			[_auto_NotTimerLockReplica],
			[IsNotSpeakingWeight0],
		],
		Response C13M4GetToVehicleReplica
		ApplyContext "_auto_TimerLockA:1:10,_auto_TimerLockReplica:1:30"
		applycontexttoworld
	},
	{
		name = "SafeRoomStartReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotSafeRoomStart],
		],
		Response NoResponse
		ApplyContext "Talk:1:45,_auto_SafeRoomStart:1:0,_auto_SafeRoomQuiet:1:5"
		applycontexttoworld
	},
	{
		name = "IntroEndReplica",
		criteria = 
		[
			[ConceptIntroEnd],
			[IsReplica],
			[FromIsReplica],
			[IsNotSaidLeavingSafeArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response NoResponse
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},
	{
		name = "LeavingSafeAreaReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsReplica],
			[IsNotSaidLeavingSafeArea],
		],
		Response NoResponse
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
	},
	{
		name = "LeavingSafeRoomReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingInitialCheckpoint],
			[IsReplica],
			[IsNotSaidLeavingSafeArea],
		],
		Response NoResponse
		ApplyContext "SaidLeavingSafeArea:1:0,Talk:0:0"
		applycontexttoworld
	},
	{
		name = "FinaleTriggeredReplica",
		criteria = 
		[
			[ConceptFinaleTriggered],
			[IsReplica],
			[IsTriggeredByReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotFinaleStarted],
		],
		Response NoResponse
		ApplyContext "_auto_Finale:1:0"
		applycontexttoworld
	},
	{
		name = "FinalVehicleSpottedReplica",
		criteria = 
		[
			[ConceptFinalVehicleSpotted],
			[IsReplica],
			[_auto_IsFinaleStarted],
			[_auto_NotEscapeReady],
		],
		Response NoResponse
		ApplyContext "_auto_Finale:2:0"
		applycontexttoworld
	},
	{
		name = "FinalVehicleArrivedReplica",
		criteria = 
		[
			[ConceptFinalVehicleArrived],
			[IsReplica],
			[_auto_HasSpottedVehicle],
			[_auto_NotEscapeReady],
		],
		Response NoResponse
		ApplyContext "_auto_Escape:1:0"
		applycontexttoworld
	},
	{
		name = "L4D1PlayerNiceShotReplica",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSpeaking],
			[ChanceToFire70Percent],
		],
		Response L4D1PlayerNiceShotReplica
	},
	{
		name = "L4D1PlayerNiceShotFrancisReplica",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsBiker],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		Response L4D1PlayerNiceShotFrancisReplica
	},
	{
		name = "L4D1PlayerNiceShotLouisReplica",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsManager],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		Response L4D1PlayerNiceShotLouisReplica
	},
	{
		name = "L4D1PlayerNiceShotZoeyReplica",
		criteria = 
		[
			[ConceptL4D1PlayerNiceShot],
			[IsNotCoughing],
			[IsReplica],
			[IsSubjectDistNear1500],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[SubjectIsTeenGirl],
			[ChanceToFire70Percent],
			[IsNotSpeaking],
		],
		Response L4D1PlayerNiceShotZoeyReplica
	},
	{
		name = "C6M3GasPourReplica",
		criteria = 
		[
			[ConceptPlayerPourStarted],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotScavenge],
			[isC6M3_Port],
			[ChanceToFire70Percent],
		],
		Response C6M3GasPourReplica
		ApplyContext "TalkReplica:1:2"
	},
	{
		name = "C6M1_IntotheparkNoHealthReplica",
		criteria = 
		[
			[ConceptC6M1_IntotheparkNoHealth],
			[IsReplica],
		],
		Response C6M1_IntotheparkNoHealthReplica
	},
	{
		name = "C6M1Intro_01TeenGirl04Replica",
		criteria = 
		[
			[ConceptintroC6M1],
			[IsReplica],
			[IsZoeyIntroActor],
			[IsNotSaidIntroScene],
			[MoreThan60],
			[LessThan100],
			[IsNotVersus],
		],
		Response C6M1Intro_01TeenGirl04Replica
		then TeenGirl C6M1Intro_04a foo:0 -3.822 //Hey, hello there! You wanna let the bridge down for us?
		ApplyContext "SaidIntroScene:1:0,Talk:1:30"
		applycontexttoworld
	},
	{
		name = "C6M1Intro_04bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_04b],
			[IsReplica],
		],
		Response C6M1Intro_04bReplica
		then TeenGirl C6M1Intro_04c foo:0 -2.342 //Y'all can't climb down there and save us a trip?
	},
	{
		name = "C6M1Intro_08aReplica",
		criteria = 
		[
			[ConceptC6M1Intro_08a],
			[IsReplica],
		],
		Response C6M1Intro_08aReplica
		then Any WorldC6M1_HistoricTour foo:0 1 //Got it. We'll holla back at you when we get there.
	},
	{
		name = "C6M1Intro_13bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_13b],
			[IsReplica],
		],
		Response C6M1Intro_13bReplica
		then Mechanic C6M1Intro_13c foo:0 -4.288 //You been killin' zombies for the better part of 2 days boy you can talk to a girl.
	},
	{
		name = "C6M1Intro_13eReplica",
		criteria = 
		[
			[ConceptC6M1Intro_13e],
			[IsReplica],
		],
		Response C6M1Intro_13eReplica
		then Mechanic C6M1Intro_13f foo:0 -2.690 //Okay, the boy says thank you.
	},
	{
		name = "C6M1Intro_21aReplica",
		criteria = 
		[
			[ConceptC6M1Intro_21a],
			[IsReplica],
		],
		Response C6M1Intro_21aReplica
		then Replica C6M1Intro_21b foo:0 -2.005 //(to group) Tell me this boy ain't for real.
	},
	{
		name = "C6M1Intro_21bReplica",
		criteria = 
		[
			[ConceptC6M1Intro_21b],
			[IsReplica],
		],
		Response C6M1Intro_21bReplica
		then Biker C6M1Intro_21c foo:0 -2.472 //No. Can you lower the bridge?
	},
	{
		name = "C6M1Intro_21dReplica",
		criteria = 
		[
			[ConceptC6M1Intro_21d],
			[IsReplica],
		],
		Response C6M1Intro_21dReplica
		then Biker C6M1Intro_21e foo:0 -5.235 //Shit, okay. Yes, we are vampires? All of us are vampires?
	},
	{
		name = "C6M1Intro_21gReplica",
		criteria = 
		[
			[ConceptC6M1Intro_21g],
			[IsReplica],
		],
		Response C6M1Intro_21gReplica
		ApplyContext "Talk:0:0"
		applycontexttoworld
	},
	{
		name = "C6M1TakeSubMachineGun01Replica",
		criteria = 
		[
			[ConceptC6M1TakeSubMachineGun01],
			[IsReplica],
			[IsGamblerNear800],
		],
		Response C6M1TakeSubMachineGun01Replica
	},
	{
		name = "LeavingC6M1StartReplica",
		criteria = 
		[
			[ConceptSurvivorLeavingCheckpoint],
			[IsReplica],
		],
		Response LeavingC6M1StartReplica
		ApplyContext "LeftC6M1Start:1:0"
		applycontexttoworld
	},
	{
		name = "WorldC6M1_HistoricTourReplica",
		criteria = 
		[
			[ConceptWorldC6M1_HistoricTour],
			[IsReplica],
			[IsNotLeftC6M1Start],
		],
		Response WorldC6M1_HistoricTourReplica
		then Gambler HistoricTour01a foo:0 -4.418 //Historic Under-the-River Tour! This could be pretty interesting!
	},
	{
		name = "WorldC6M1_PostWedding01aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_PostWedding01a],
			[IsReplica],
			[IsSubjectDistNear800],
		],
		Response WorldC6M1_PostWedding01aReplica
	},
	{
		name = "WorldC6M1_WeddingWarn03aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn03a],
			[IsReplica],
		],
		Response WorldC6M1_WeddingWarn03aReplica
		then Producer WorldC6M1_WeddingWarn03b foo:0 -2.229 //Come on, Nick, not the time.
		ApplyContext "AtWedding:1:60"
		applycontexttoworld
	},
	{
		name = "WorldC6M1_WeddingWarn04aReplica",
		criteria = 
		[
			[ConceptWorldC6M1_WeddingWarn04a],
			[IsReplica],
			[IsSubjectDistNear800],
		],
		Response WorldC6M1_WeddingWarn04aReplica
		ApplyContext "AtWedding:1:60"
		applycontexttoworld
	},
	{
		name = "C6M2_OpenGate1Replica",
		criteria = 
		[
			[ConceptC6M2_OpenGate1],
			[IsReplica],
		],
		Response C6M2_OpenGate1Replica
		ApplyContext "SaidOpenedGate1:1:0"
		applycontexttoworld
	},
	{
		name = "C6M2_OpenGate2Replica",
		criteria = 
		[
			[ConceptC6M2_OpenGate2],
			[IsReplica],
		],
		Response C6M2_OpenGate2Replica
		ApplyContext "Said:OpenedGate2:1:0"
		applycontexttoworld
	},
	{
		name = "C6M2SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[Joined3],
			[IsReplica],
			[isC6m2_bedlam],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidC6M2SafeRoom],
			[IsNotSpeakingWeight0],
		],
		Response C6M2SafeRoomReplica
		then any C6M2SafeRoom2 foo:0 3 //
		ApplyContext "SaidC6M2SafeRoom:1:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo01aReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo01a],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo01aReplica
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo05Replica",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsReplica],
			[IsZoeyIntroActor],
			[ZoeyGroup4],
			[IsNotSaidC6M2SafeRoom2],
		],
		Response DLC1_C6M2_SafeRoomConvo05Replica
		then Any DLC1_C6M2_SafeRoomConvo06a foo:0 -6.504 //City of Rayford! They used to have a boiled peanut festival here. Good memories.
		ApplyContext "SaidC6M2SafeRoom2:1:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo09aReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo09a],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo09aReplica
		then Gambler DLC1_C6M2_SafeRoomConvo09b foo:0 -3.735 //Oh, come on, you aren't afraid of a little dirt are you?
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo11Replica",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsReplica],
			[IsZoeyIntroActor],
			[ZoeyGroup4],
			[IsNotSaidC6M2SafeRoom2],
		],
		Response DLC1_C6M2_SafeRoomConvo11Replica
		then Gambler DLC1_C6M2_SafeRoomConvo12a foo:0 -6.163 //I heard all about this under-the-river tour, supposed to be pretty damn good. Real educational.
		ApplyContext "SaidC6M2SafeRoom2:1:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12Replica",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsReplica],
			[IsFrancisIntroActor],
			[FrancisGroup5],
			[IsNotSaidC6M2SafeRoom2],
		],
		Response DLC1_C6M2_SafeRoomConvo12Replica
		then Gambler DLC1_C6M2_SafeRoomConvo13a foo:0 -3.828 //Nick, tell me you ain't looking forward to this under-the-river tour.
		ApplyContext "SaidC6M2SafeRoom2:1:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12b],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo12bReplica
		then Gambler DLC1_C6M2_SafeRoomConvo12c foo:0 -2.273 //You damn right. Under a river.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo12dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo12d],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo12dReplica
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13b],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo13bReplica
		then Gambler DLC1_C6M2_SafeRoomConvo13c foo:0 -5.477 //Man, Nick you got a find a way to cheer your ass up. We ain't got much to look forward to.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo13dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo13d],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo13dReplica
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo14dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo14d],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo14dReplica
		then Producer DLC1_C6M2_SafeRoomConvo14e foo:0 -3.766 //Oh. In my heart, I'm there already.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo15bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo15b],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo15bReplica
		then Gambler DLC1_C6M2_SafeRoomConvo15c foo:0 -4.894 //Man, I keep hoping we find an open burger tank.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16a1Replica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16a1],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo16a1Replica
		then Mechanic DLC1_C6M2_SafeRoomConvo16b1 foo:0 -4.595 //Ellis, you do know that eventually we're gonna have to leave that car behind. Right?
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo16eReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo16e],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo16eReplica
		then Mechanic DLC1_C6M2_SafeRoomConvo16f foo:0 -3.567 //Boy, the Military ain't exactly going to strap it to the bottom of a helicopter.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo18cReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18c],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo18cReplica
		then Producer DLC1_C6M2_SafeRoomConvo18d foo:0 -.5 //Girl! What are you doing?
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo18eReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo18e],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo18eReplica
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19Replica",
		criteria = 
		[
			[ConceptC6M2SafeRoom2],
			[IsReplica],
			[IsNotSaidC6M2SafeRoom2],
		],
		Response DLC1_C6M2_SafeRoomConvo19Replica
		then Any DLC1_C6M2_SafeRoomConvo19a foo:0 -5.056 //Man, I just realized with all this runnin', climbin' and fightin', I ain't even had time to eat.
		ApplyContext "SaidC6M2SafeRoom2:1:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19b],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo19bReplica
		then Mechanic DLC1_C6M2_SafeRoomConvo19c foo:0 -8.355 //[happily] I bet I'm losin' some serious weight! [laughs proudly] Two more days, I'll be takin' my BELT in a notch.
	},
	{
		name = "DLC1_C6M2_SafeRoomConvo19dReplica",
		criteria = 
		[
			[ConceptDLC1_C6M2_SafeRoomConvo19d],
			[IsReplica],
		],
		Response DLC1_C6M2_SafeRoomConvo19dReplica
		then Mechanic DLC1_C6M2_SafeRoomConvo19e foo:0 -1.762 //Man, I forgot about that.
	},
	{
		name = "WorldC6M2_InSewer101aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer101a],
			[IsReplica],
		],
		Response WorldC6M2_InSewer101aReplica
	},
	{
		name = "WorldC6M2_InSewer102aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer102a],
			[IsReplica],
		],
		Response WorldC6M2_InSewer102aReplica
		then Gambler WorldC6M2_InSewer102b foo:0 -3.563 //Gotta keep your head above water, man.[laughs]
	},
	{
		name = "WorldC6M2_InSewer202aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewer202a],
			[IsReplica],
		],
		Response WorldC6M2_InSewer202aReplica
	},
	{
		name = "WorldC6M2_InSewerLadder101aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_InSewerLadder101a],
			[IsReplica],
		],
		Response WorldC6M2_InSewerLadder101aReplica
	},
	{
		name = "WorldC6M2_OnTourWalk101cReplica",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk101c],
			[IsReplica],
		],
		Response WorldC6M2_OnTourWalk101cReplica
	},
	{
		name = "WorldC6M2_OnTourWalk103aReplica",
		criteria = 
		[
			[ConceptWorldC6M2_OnTourWalk103a],
			[IsReplica],
		],
		Response WorldC6M2_OnTourWalk103aReplica
	},
	{
		name = "WorldC6M2_Tattoo02b_Replica",
		criteria = 
		[
			[ConceptWorldC6M2_Tattoo02b_],
			[IsReplica],
		],
		Response WorldC6M2_Tattoo02b_Replica
		then Producer WorldC6M2_Tattoo02c> foo:0 -2.512 //Shit, it's allll south of the border.
	},
	{
		name = "C6M3_BridgeDownReplica",
		criteria = 
		[
			[ConceptC6M3_BridgeDown],
			[IsReplica],
		],
		Response C6M3_BridgeDownReplica
		ApplyContext "SaidGetToCar:1:20"
		applycontexttoworld
	},
	{
		name = "C6M3_BridgeGettoCarReplica",
		criteria = 
		[
			[ConceptGetToVehicle],
			[IsReplica],
			[IsNotSaidGetToCar],
			[Isc6m3_port],
		],
		Response C6M3_BridgeGettoCarReplica
		ApplyContext "SaidGetToCar:1:20"
		applycontexttoworld
	},
	{
		name = "C6M3_elevatorReplica",
		criteria = 
		[
			[Conceptc6m3_elevatorCancel],
			[IsReplica],
			[IsNotSaidC6M3Elevator],
			[IsC6M3_port],
		],
		//forceweight 1
		Response C6M3_elevatorReplica
		then get back to the car.
		ApplyContext "SaidC6M3Elevator:1:0,Talk:0:0"
		applycontexttoworld
	},
	{
		name = "C6M3_elevatorZoeyReplica",
		criteria = 
		[
			[Conceptc6m3_elevatorCancel],
			[IsReplica],
			[IsNotSaidC6M3Elevator],
			[IsC6M3_port],
			[IsZoeyIntroActor],
			[IsNotVersus],
			[ZoeyGroup1],
		],
		//forceweight 1
		Response C6M3_elevatorZoeyReplica
		ApplyContext "SaidC6M3Elevator:1:0,Talk:0:0"
		applycontexttoworld
	},
	{
		name = "C6M3_GivenItemBikerReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorBiker],
			[Isc6m3_portHeavy],
		],
		Response C6M3_GivenItemBikerReplica
	},
	{
		name = "C6M3_GivenItemTeenGirlReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsReplica],
			[IsDonorTeenGirl],
			[Isc6m3_portHeavy],
		],
		Response C6M3_GivenItemTeenGirlReplica
	},
	{
		name = "C6M3SafeRoomReplica",
		criteria = 
		[
			[ConceptTalkIdle],
			[Joined3],
			[IsReplica],
			[isC6m3_port],
			[IsInStartArea],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[IsNotSaidC6M3SafeRoom],
			[IsNotSpeakingWeight0],
		],
		Response C6M3SafeRoomReplica
		then any C6M3SafeRoom2 foo:0 3 //
		ApplyContext "SaidC6M3SafeRoom:1:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo02eReplica",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo02e],
			[IsReplica],
			[IsInStartArea],
		],
		Response DLC1_C6M3_SafeRoomConvo02eReplica
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo03Replica",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			[IsReplica],
			[IsNotSaidC6M3SafeRoom2],
			[IsZoeyIntroActor],
			[ZoeyGroup2],
			[IsInStartArea],
		],
		Response DLC1_C6M3_SafeRoomConvo03Replica
		then Mechanic DLC1_C6M3_SafeRoomConvo03a foo:0 -2.358 //Ellis. It's showtime, buddy.
		ApplyContext "SaidC6M3SafeRoom2:1:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo04Replica",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			[IsReplica],
			[IsNotSaidC6M3SafeRoom2],
			[IsZoeyIntroActor],
			[ZoeyGroup4],
			[IsInStartArea],
		],
		Response DLC1_C6M3_SafeRoomConvo04Replica
		then Mechanic DLC1_C6M3_SafeRoomConvo04a foo:0 -2.981 //Ellis, you ready to meet that Zoey girl again?
		ApplyContext "SaidC6M3SafeRoom2:1:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08Replica",
		criteria = 
		[
			[ConceptC6M3SafeRoom2],
			[IsReplica],
			[IsNotSaidC6M3SafeRoom2],
			[IsFrancisIntroActor],
			[IsInStartArea],
		],
		Response DLC1_C6M3_SafeRoomConvo08Replica
		then Mechanic DLC1_C6M3_SafeRoomConvo08a foo:0 -3.801 //I don't trust that biker. He's probably long gone by now.
		ApplyContext "SaidC6M3SafeRoom2:1:0"
		applycontexttoworld
	},
	{
		name = "DLC1_C6M3_SafeRoomConvo08bReplica",
		criteria = 
		[
			[ConceptDLC1_C6M3_SafeRoomConvo08b],
			[IsReplica],
			[IsInStartArea],
		],
		Response DLC1_C6M3_SafeRoomConvo08bReplica
		then Mechanic DLC1_C6M3_SafeRoomConvo08c foo:0 -3.689 //Minute we left, bet ya he stole the Jimmy Gibbs Jr.
	},
	{
		name = "IncapBounceReplica",
		criteria = 
		[
			[ConceptSurvivorIncapacitated],
			[IsReplica],
			[IsNotSaidInCapBounce],
			[isC6m3_port],
		],
		Response IncapBounceReplica
		then Biker InCapBounce2 foo:0 0 //
		ApplyContext "SaidInCapBounce:1:0"
		applycontexttoworld
	},
	{
		name = "C6M3_CansDoneReplica",
		criteria = 
		[
			[Conceptc6m3escapeready],
			[IsReplica],
			[IsC6M3_Port],
			[IsNotSaidc6m3escapeready],
		],
		Response C6M3_CansDoneReplica
		then any EmphaticArriveRun foo:0 -1.194 //Let's get to the car!
		ApplyContext "Saidc6m3escapeready:1:0,Talk:1:5"
		applycontexttoworld
	},
	{
		name = "L4D1AlsoSpottedTankReplica",
		criteria = 
		[
			[ConceptPlayerAlsoWarnTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Isc6m3_port],
		],
		Response L4D1AlsoSpottedTankReplica
		ApplyContext "SaidTankWarn:1:20,SaidSpecialWarn:1:30,SaidTankWarn2:1:60"
		applycontexttoworld
	},
	{
		name = "L4D1SpottedTankReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeTank],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Isc6m3_port],
			[IsNotSpeakingWeight0],
		],
		Response L4D1SpottedTankReplica
		ApplyContext "SaidTankWarn:1:20,SaidSpecialWarn:1:30,SaidTankWarn2:1:60"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedFallenReplica",
		criteria = 
		[
			[ConceptPlayerWarnSpecial],
			[IsSpecialTypeFallen],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsNotSaidFallenWarn],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedFallenReplica
		ApplyContext "SaidFallenWarn:1:20"
		applycontexttoworld
	},
	{
		name = "PlayerWitchChasingC6M1Replica",
		criteria = 
		[
			[ConceptPlayerExertionMinor],
			[IsReplica],
			[IsWitchPresent],
			[SubjectIsNotWitch],
			[IsNotSaidReplicaWitchChasing],
			[IsSaidReplicaWitchAttacking],
			[isc6m1_riverbank],
		],
		//forceweight 20
		Response PlayerWitchChasingC6M1Replica
		ApplyContext "SaidReplicaWitchChasing:1:15,TalkReplica:1:2"
	},
	{
		name = "PlayerRemarkremark_MidnightRidersBusReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[Isremark_MidnightRidersBus],
			[IsNotSaidremark_MidnightRidersBus],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1500],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkremark_MidnightRidersBusReplica
		ApplyContext "Saidremark_MidnightRidersBus:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_AcrossHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AcrossHere],
			[IsNotSaidWorldC6M1_AcrossHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_AcrossHereReplica
		ApplyContext "SaidWorldC6M1_AcrossHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyBelowReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AlleyBelow],
			[IsNotSaidWorldC6M1_AlleyBelow],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_AlleyBelowReplica
		ApplyContext "SaidWorldC6M1_AlleyBelow:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_AlleyIntoBuildingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_AlleyIntoBuilding],
			[IsNotSaidWorldC6M1_AlleyIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_AlleyIntoBuildingReplica
		ApplyContext "SaidWorldC6M1_AlleyIntoBuilding:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_InAptsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_InApts],
			[IsNotSaidWorldC6M1_InApts],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_InAptsReplica
		ApplyContext "SaidWorldC6M1_InApts:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_IntoTheStoreReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_IntoTheStore],
			[IsNotSaidWorldC6M1_IntoTheStore],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_IntoTheStoreReplica
		ApplyContext "SaidWorldC6M1_IntoTheStore:1:0,JustSaidWorldC6M1_IntoTheStore:1:30"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_PostWeddingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_PostWedding],
			[IsNotSaidWorldC6M1_PostWedding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_PostWeddingReplica
		ApplyContext "SaidWorldC6M1_PostWedding:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_SafeRoomAlleyReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_SafeRoomAlley],
			[IsNotSaidWorldC6M1_SafeRoomAlley],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear600],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_SafeRoomAlleyReplica
		ApplyContext "SaidWorldC6M1_SafeRoomAlley:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_ThroughBarReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_ThroughBar],
			[IsNotSaidWorldC6M1_ThroughBar],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_ThroughBarReplica
		ApplyContext "SaidWorldC6M1_ThroughBar:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_UpHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpHere],
			[IsNotSaidWorldC6M1_UpHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_UpHereReplica
		ApplyContext "SaidWorldC6M1_UpHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpTheStairs],
			[IsNotSaidWorldC6M1_UpTheStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_UpTheStairsReplica
		ApplyContext "SaidWorldC6M1_UpTheStairs:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_UpTheStairs2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_UpTheStairs2],
			[IsNotSaidWorldC6M1_UpTheStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_UpTheStairs2Replica
		ApplyContext "SaidWorldC6M1_UpTheStairs2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarnReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_WeddingWarn],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_WeddingWarnReplica
		then Producer RemWorldC6M1_WeddingWarn01 foo:0 -2.989 //Damn. This here wedding didn't end well.
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_WeddingWarn1],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_WeddingWarn1Replica
		then Producer RemWorldC6M1_WeddingWarn01 foo:0 -2.989 //Damn. This here wedding didn't end well.
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_WeddingWarn2],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_WeddingWarn2Replica
		then Producer RemWorldC6M1_WeddingWarn01 foo:0 -2.989 //Damn. This here wedding didn't end well.
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M1_WeddingWarn3Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M1_WeddingWarn3],
			[IsNotSaidWorldC6M1_WeddingWarn],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M1_WeddingWarn3Replica
		then Producer RemWorldC6M1_WeddingWarn01 foo:0 -2.989 //Damn. This here wedding didn't end well.
		ApplyContext "SaidWorldC6M1_WeddingWarn:1:0,AtWedding:1:60"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_AcrossPlankReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AcrossPlank],
			[IsNotSaidWorldC6M2_AcrossPlank],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear250],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_AcrossPlankReplica
		ApplyContext "SaidWorldC6M2_AcrossPlank:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AfterGate1],
			[IsNotSaidWorldC6M2_AfterGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_AfterGate1Replica
		ApplyContext "SaidWorldC6M2_AfterGate1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_AfterGate2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_AfterGate2],
			[IsNotSaidWorldC6M2_AfterGate2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_AfterGate2Replica
		ApplyContext "SaidWorldC6M2_AfterGate2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_DownHereReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_DownHere],
			[IsNotSaidWorldC6M2_DownHere],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_DownHereReplica
		ApplyContext "SaidWorldC6M2_DownHere:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_DownIntoBuildingReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_DownIntoBuilding],
			[IsNotSaidWorldC6M2_DownIntoBuilding],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear400],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_DownIntoBuildingReplica
		ApplyContext "SaidWorldC6M2_DownIntoBuilding:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalLadderReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalLadder],
			[IsNotSaidWorldC6M2_FinalLadder],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_FinalLadderReplica
		ApplyContext "SaidWorldC6M2_FinalLadder:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalWater],
			[IsNotSaidWorldC6M2_FinalWater],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_FinalWaterReplica
		ApplyContext "SaidWorldC6M2_FinalWater:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_FinalWaterGoGoReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_FinalWaterGoGo],
			[IsNotSaidWorldC6M2_FinalWaterGoGo],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_FinalWaterGoGoReplica
		ApplyContext "SaidWorldC6M2_FinalWaterGoGo:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_InJazzClubReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InJazzClub],
			[IsNotSaidWorldC6M2_InJazzClub],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear1000],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_InJazzClubReplica
		ApplyContext "SaidWorldC6M2_InJazzClub:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewer1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InSewer1],
			[IsNotSaidWorldC6M2_InSewer1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_InSewer1Replica
		ApplyContext "SaidWorldC6M2_InSewer1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_InSewerLadder1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_InSewerLadder1],
			[IsNotSaidWorldC6M2_InSewerLadder1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_InSewerLadder1Replica
		ApplyContext "SaidWorldC6M2_InSewerLadder1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoConstructionReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_IntoConstruction],
			[IsNotSaidWorldC6M2_IntoConstruction],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_IntoConstructionReplica
		ApplyContext "SaidWorldC6M2_IntoConstruction:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_IntoPoolHallReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_IntoPoolHall],
			[IsNotSaidWorldC6M2_IntoPoolHall],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_IntoPoolHallReplica
		ApplyContext "SaidWorldC6M2_IntoPoolHall:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_JukeBoxReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_JukeBox],
			[IsNotSaidWorldC6M2_JukeBox],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear150],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_JukeBoxReplica
		ApplyContext "SaidWorldC6M2_JukeBox:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_JumpDownReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_JumpDown],
			[IsNotSaidWorldC6M2_JumpDown],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_JumpDownReplica
		ApplyContext "SaidWorldC6M2_JumpDown:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OnTourWalk1],
			[IsNotSaidWorldC6M2_OnTourWalk1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_OnTourWalk1Replica
		then Any WorldC6M2_OnTourWalk101a foo:0 -2.374 //Man, this is a real...
		ApplyContext "SaidWorldC6M2_OnTourWalk1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_OnTourWalk2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OnTourWalk2],
			[IsNotSaidWorldC6M2_OnTourWalk2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_OnTourWalk2Replica
		ApplyContext "SaidWorldC6M2_OnTourWalk2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate1Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OpenGate1],
			[IsNotSaidWorldC6M2_OpenGate1],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_OpenGate1Replica
		ApplyContext "SaidWorldC6M2_OpenGate1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_OpenGate2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_OpenGate2],
			[IsNotSaidWorldC6M2_OpenGate2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSaidOpenedGate2],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_OpenGate2Replica
		ApplyContext "SaidWorldC6M2_OpenGate2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2],
			[IsNotSaidWorldC6M2_Phase2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_Phase2Replica
		ApplyContext "SaidWorldC6M2_Phase2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_Phase2DownReplica
		ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_Phase2DownIntenseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Phase2Down],
			[IsNotSaidWorldC6M2_Phase2Down],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IntensityOver75],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_Phase2DownIntenseReplica
		ApplyContext "SaidWorldC6M2_Phase2Down:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_PostGate1xReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_PostGate1],
			[IsNotSaidWorldC6M2_PostGate1],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsSaidOpenedGate1],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_PostGate1xReplica
		ApplyContext "SaidWorldC6M2_PostGate1:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_SafeRoomReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_SafeRoom],
			[IsNotSaidWorldC6M2_SafeRoom],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear800],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_SafeRoomReplica
		ApplyContext "SaidWorldC6M2_SafeRoom:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_SuitcaseReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_Suitcase],
			[IsNotSaidWorldC6M2_Suitcase],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear100],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_SuitcaseReplica
		ApplyContext "SaidWorldC6M2_Suitcase:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_TourEntranceReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_TourEntrance],
			[IsNotSaidWorldC6M2_TourEntrance],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_TourEntranceReplica
		ApplyContext "SaidWorldC6M2_TourEntrance:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_UpCatWalkReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpCatWalk],
			[IsNotSaidWorldC6M2_UpCatWalk],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_UpCatWalkReplica
		ApplyContext "SaidWorldC6M2_UpCatWalk:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairsReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpStairs],
			[IsNotSaidWorldC6M2_UpStairs],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_UpStairsReplica
		ApplyContext "SaidWorldC6M2_UpStairs:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M2_UpStairs2Replica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M2_UpStairs2],
			[IsNotSaidWorldC6M2_UpStairs2],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear200],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M2_UpStairs2Replica
		ApplyContext "SaidWorldC6M2_UpStairs2:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M3_BridgeRunReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M3_BridgeRun],
			[IsNotSaidWorldC6M3_BridgeRun],
			[IsNotCoughing],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M3_BridgeRunReplica
		then Any WorldC6M3_ByBridge01 foo:0 -3.325 //Come on people, GET TO THE CAR! GET TO THE CAR!
		ApplyContext "SaidWorldC6M3_BridgeRun:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldC6M3_ByBridgeReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldC6M3_ByBridge],
			[IsNotSaidWorldC6M3_ByBridge],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear300],
			[IsSaidFinalVehicleArrived],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldC6M3_ByBridgeReplica
		ApplyContext "SaidWorldC6M3_ByBridge:1:0"
		applycontexttoworld
	},
	{
		name = "PlayerRemarkWorldFootLockerReplica",
		criteria = 
		[
			[ConceptRemark],
			[IsReplica],
			[IsWorldFootLocker],
			[IsNotSaidWorldFootLocker],
			[IsNotCoughing],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[IsSubjectNear500],
			[IsNotSpeakingWeight0],
		],
		Response PlayerRemarkWorldFootLockerReplica
		ApplyContext "SaidWorldFootLocker:1:0"
		applycontexttoworld
	},
	{
		name = "C6M3_PourFinishedReplica",
		criteria = 
		[
			[ConceptPlayerPourFinished],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
			[Isc6m3_port],
			[ChanceToFire20Percent],
		],
		Response C6M3_PourFinishedReplica
		then Manager L4D1_NiceJobPour foo:0 0 //
		ApplyContext "Talk:1:3"
	},
	{
		name = "SurvivorNearFinaleC6M3Replica",
		criteria = 
		[
			[ConceptPlayerNearFinale],
			[IsNotCoughing],
			[IsReplica],
			[IsNotSaidFinaleAhead],
			[NotInCombat],
			[IsTalk],
			[IsTalkReplica],
			[IsNotIncapacitated],
			[IsWorldTalkReplica],
			[Isc6m3_port],
		],
		Response SurvivorNearFinaleC6M3Replica
		ApplyContext "SaidFinaleAhead:1:0"
		applycontexttoworld
	},
	{
		name = "SurvivorPickupGolfCLubReplica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpGolfClub],
			[IsNotSpeaking],
			[ReplicaNotPickedUpItem],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorPickupGolfCLubReplica
		ApplyContext "ReplicaPickedUpItem:1:30"
	},
	{
		name = "SurvivorPickupM60Replica",
		criteria = 
		[
			[ConceptPlayerPickup],
			[IsNotCoughing],
			[IsReplica],
			[IsPickedUpM60],
			[IsNotSpeaking],
			[ReplicaNotPickedUpItem],
			[IsTalk],
			[IsTalkReplica],
			[IsWorldTalkReplica],
		],
		Response SurvivorPickupM60Replica
		ApplyContext "ReplicaPickedUpItem:1:30"
	},
	{
		name = "HistoricTour02aReplica",
		criteria = 
		[
			[ConceptHistoricTour02a],
			[IsReplica],
		],
		Response HistoricTour02aReplica
		then Producer HistoricTour02b foo:0 -2.837 //Yeah, it's historic.
	},
	{
		name = "WeddingWitchDead01Replica",
		criteria = 
		[
			[ConceptWeddingWitchDead01],
			[IsReplica],
		],
		Response WeddingWitchDead01Replica
	},
	{
		name = "WeddingWitchDead02Replica",
		criteria = 
		[
			[ConceptWeddingWitchDead02],
			[IsReplica],
		],
		Response WeddingWitchDead02Replica
	},
	{
		name = "Player_LostCallC6M3Replica",
		criteria = 
		[
			[ConceptTalkIdle],
			[IsReplica],
			[IsClosestSurvivorFar3000],
			[IsNotSaidPlayerLostCall],
			[Isc6m3_port],
			[ChanceToFire100Percent],
			[IsNotSpeakingWeight0],
		],
		Response Player_LostCallC6M3Replica
		ApplyContext "SaidPlayerLostCall:1:50"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedGolfClubReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsGolfClub],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedGolfClubReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedGolfClubAutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsGolfClub],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedGolfClubAutoReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedM60Replica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsSmartLookAuto],
			[IsNotInSafeSpot],
			[IsNotAlone],
			[IsNotSaidSpotWeapons],
			[IsNotSaidSpot],
			[IsM60],
			[IsWorldTalkReplica],
			[IsNotSpeakingWeight0],
		],
		Response SurvivorSpottedM60Replica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "SurvivorSpottedM60AutoReplica",
		criteria = 
		[
			[ConceptPlayerSpotWeapon],
			[IsNotCoughing],
			[IsReplica],
			[IsTalk],
			[IsTalkReplica],
			[IsNotSmartLookAuto],
			[IsM60],
			[IsWorldTalkReplica],
		],
		Response SurvivorSpottedM60AutoReplica
		ApplyContext "SaidSpotWeapons:1:5,SaidSpot:1:20"
		applycontexttoworld
	},
	{
		name = "C3M1CallFerryReplica",
		criteria = 
		[
			[ConceptC3M1CallFerry],
			[PanicEventReplica],
			[IsNotSaidC3M1CallFerry2],
		],
		Response C3M1CallFerryReplica
		then any C3M1CallFerry2 ReplicaActor:1 0
		ApplyContext "SaidC3M1CallFerry2:1:0"
		applycontexttoworld
	},
	{
		name = "C3M2OpenDoorReplica",
		criteria = 
		[
			[ConceptC3M2OpenDoor],
			[PanicEventReplica],
		],
		Response C3M2OpenDoorReplica
		then Replica C3M2OpenDoor2 ReplicaActor:1 0
		ApplyContext "SaidC3M2OpenDoor:1:0,Talk:1:1.664,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "c5m4floatstartReplica",
		criteria = 
		[
			[Conceptc5m4floatstart],
			[PanicEventReplica],
		],
		Response c5m4floatstartReplica
		then replica c5m4floatstart2 foo:0 0
		ApplyContext "Saidc5m4floatstart:1:0,_auto_TractorStarted:1:0,_auto_InMiniFinale:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "C1M2InsideGunShopReplica",
		criteria = 
		[
			[ConceptC1M2InsideGunShop],
			[PanicEventReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M2InsideGunShopReplica
		then replica C1M2InsideGunShop2 foo:0 0 //Blank
	},
	{
		name = "C1M3AlarmOffOratorReplica",
		criteria = 
		[
			[ConceptC1M3AlarmOff],
			[PanicEventReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
		],
		Response C1M3AlarmOffOratorReplica
		then replica C1M3AlarmOff2 foo:0 0 //
		ApplyContext "_auto_Alarm:2:0"
		applycontexttoworld
	},
	{
		name = "C1M3BrokeWindowOratorReplica",
		criteria = 
		[
			[ConceptC1M3BrokeWindow],
			[PanicEventReplica],
			[AutoIsNotScavenge],
			[AutoIsNotSurvival],
			[_auto_NotAlarm],
		],
		Response C1M3BrokeWindowOratorReplica
		then replica C1M3AlarmActive foo:0 0 //
		ApplyContext "_auto_Alarm:1:0,WarnMegaMob:1:300,SaidSpecialWarn:1:30"
		applycontexttoworld
	},
	{
		name = "HitCraneButtonReplica",
		criteria = 
		[
			[ConceptAirport02CraneStarted],
			[PanicEventReplica],
		],
		Response HitCraneButtonReplica
		then Replica airport02_creshendoCrane foo:0  .01 // [BLANK]
	},
	{
		name = "Airport03FireStartedReplica",
		criteria = 
		[
			[ConceptAirport03FireStarted],
			[PanicEventReplica],
		],
		Response Airport03FireStartedReplica
		then Replica Airport03FireStartedX foo:0  .01 // [BLANK]
	},
	{
		name = "FinaleSceneTriggerZoeyReplica",
		criteria = 
		[
			[ConceptC6M3Stairs],
			[IsReplica],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsZoeyIntroActor],
			[IsNotVersus],
		],
		Response FinaleSceneTriggerZoeyReplica
		ApplyContext "SaidFinaleExchange:1:0,Talk:1:20,SaidEllisBridgeStoryStart:1:60,EndEllisBridgeStoryStart:1:0"
		applycontexttoworld
	},
	{
		name = "FinaleSceneTriggerFrancisReplica",
		criteria = 
		[
			[ConceptC6M3Stairs],
			[IsReplica],
			[IsNotSaidFinaleExchange],
			[Isc6m3_port],
			[IsFrancisIntroActor],
			[IsNotVersus],
		],
		Response FinaleSceneTriggerFrancisReplica
		ApplyContext "SaidFinaleExchange:1:0,Talk:1:35,SaidEllisBridgeStoryStart:1:60,EndEllisBridgeStoryStart:1:0"
		applycontexttoworld
	},
];

rr_ProcessRules(replica_soldier_rules);
