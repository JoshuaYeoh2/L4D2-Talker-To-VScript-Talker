function IsShotMannReplica(query) {
    if("worldshotmannreplica" in query) { return query.worldshotmannreplica > 3; } 
    else return false;
}
function IsNotSaidShotMannequinReplica2(query) {
    if("worldsaidshotmannequinreplica2" in query) { return query.worldsaidshotmannequinreplica2 != 1; } 
    else return true;
}
function IsReplicaActor(query) {
    if("replicaactor" in query) { return query.replicaactor == 1; } 
    else return false;
}
function IsNotSaidreplicareplicaes(query) {
    if("worldsaidreplicareplicaes" in query) { return query.worldsaidreplicareplicaes != 1; } 
    else return true;
}
function Conceptreplicareplicaes(query) {
    if("concept" in query) { return query.concept == "replicareplicaes"; } 
    else return false;
}
function IsNotReplicaIntroduced(query) {
    if("worldreplicaintroduced" in query) { return query.worldreplicaintroduced != 1; } 
    else return true;
}
function IsReplicaIntroduced(query) {
    if("worldreplicaintroduced" in query) { return query.worldreplicaintroduced == 1; } 
    else return false;
}
function _auto_NotC4ReplicaInCover(query) {
    if("world_auto_c4replicaincover" in query) { return query.world_auto_c4replicaincover < 1; } 
    else return true;
}
function _auto_NotCaneExitedReplica(query) {
    if("world_auto_caneexitedreplica" in query) { return query.world_auto_caneexitedreplica < 1; } 
    else return true;
}
function _auto_NotReplicaAngry(query) {
    if("world_auto_replicaangry" in query) { return query.world_auto_replicaangry < 1; } 
    else return true;
}
function _auto_NotReplicaFoodBreak(query) {
    if("world_auto_replicafoodbreak" in query) { return query.world_auto_replicafoodbreak < 1; } 
    else return true;
}
function _auto_NotReplicaHappy(query) {
    if("world_auto_replicahappy" in query) { return query.world_auto_replicahappy < 1; } 
    else return true;
}
function _auto_IsReplicaInCane(query) {
    if("world_auto_replicaincane" in query) { return query.world_auto_replicaincane == 1; } 
    else return false;
}
function _auto_NotReplicaInCane(query) {
    if("world_auto_replicaincane" in query) { return query.world_auto_replicaincane < 1; } 
    else return true;
}
function _auto_IsReplicaWavWindow(query) {
    if("world_auto_replicawavwindow" in query) { return query.world_auto_replicawavwindow == 1; } 
    else return false;
}
function _auto_NotLastSurvivorTalkedReplica(query) {
    if("world_auto_lastsurvivortalkedreplica" in query) { return query.world_auto_lastsurvivortalkedreplica < 1; } 
    else return true;
}
function _auto_IsReplicaInWitchville(query) {
    if("world_auto_replicainwitchville" in query) { return query.world_auto_replicainwitchville == 1; } 
    else return false;
}
function _auto_NotReplicaInWitchville(query) {
    if("world_auto_replicainwitchville" in query) { return query.world_auto_replicainwitchville < 1; } 
    else return true;
}
function _auto_ReplicaIsPressing(query) {
    if("world_auto_replicapressing" in query) { return query.world_auto_replicapressing == 1; } 
    else return false;
}
function _auto_IsTalkingReplica(query) {
    if("world_auto_talkingreplica" in query) { return query.world_auto_talkingreplica == 1; } 
    else return false;
}
function _auto_NotTimerLockReplica(query) {
    if("world_auto_timerlockreplica" in query) { return query.world_auto_timerlockreplica < 1; } 
    else return true;
}
function _auto_ReplicaSawC6M3Bill(query) {
    if("world_auto_replicac6m3bill" in query) { return query.world_auto_replicac6m3bill == 1; } 
    else return false;
}
function IsNotTalkReplica(query) {
    if("talkreplica" in query) { return query.talkreplica == 1; } 
    else return false;
}
function IsTalkReplica(query) {
    if("talkreplica" in query) { return query.talkreplica != 1; } 
    else return true;
}
function IsWorldTalkReplica(query) {
    if("worldtalkreplica" in query) { return query.worldtalkreplica != 1; } 
    else return true;
}
function IsReplicaNotAlive(query) {
    if("isreplicaalive" in query) { return query.isreplicaalive != 1; } 
    else return true;
}
function IsReplicaAlive(query) {
    if("isreplicaalive" in query) { return query.isreplicaalive == 1; } 
    else return false;
}
function IsReplicaNear125(query) {
    if("disttoreplica" in query) { return query.disttoreplica < 125; } 
    else return true;
}
function IsReplicaNear200(query) {
    if("disttoreplica" in query) { return query.disttoreplica < 200; } 
    else return true;
}
function IsReplicaNear400(query) {
    if("disttoreplica" in query) { return query.disttoreplica < 400; } 
    else return true;
}
function IsReplicaNear800(query) {
    if("disttoreplica" in query) { return query.disttoreplica < 800; } 
    else return true;
}
function IsReplicaFar400(query) {
    if("disttoreplica" in query) { return query.disttoreplica >= 400; } 
    else return false;
}
function IsReplicaFar1000(query) {
    if("disttoreplica" in query) { return query.disttoreplica > 600; } 
    else return false;
}
function IsNotSaidFaultFriendlyFireReplica(query) {
    if("worldsaidfaultfriendlyfirereplica" in query) { return query.worldsaidfaultfriendlyfirereplica != 1; } 
    else return true;
}
function IsSaidFaultFriendlyFireReplica(query) {
    if("worldsaidfaultfriendlyfirereplica" in query) { return query.worldsaidfaultfriendlyfirereplica == 1; } 
    else return false;
}
function IsShotTeammateReplica(query) {
    if("worldshotteammatereplica" in query) { return query.worldshotteammatereplica == 1; } 
    else return false;
}
function IsNotShotTeammateReplica(query) {
    if("worldshotteammatereplica" in query) { return query.worldshotteammatereplica != 1; } 
    else return true;
}
function WhoPutColaReplica(query) {
    if("worldwhoputcola" in query) { return query.worldwhoputcola == "replica"; } 
    else return false;
}
function PanicEventReplica(query) {
    if("whodidit" in query) { return query.whodidit == "replica"; } 
    else return false;
}
function IsReplica(query) {
    if("who" in query) { return query.who == "replica"; } 
    else return false;
}
function IsTriggeredByReplica(query) {
    if("triggeredby" in query) { return query.triggeredby == "replica"; } 
    else return false;
}
function IsDeadReplica(query) {
    if("deadcharacter" in query) { return query.deadcharacter == "replica"; } 
    else return false;
}
function IsNotDeadReplica(query) {
    if("deadcharacter" in query) { return query.deadcharacter != "replica"; } 
    else return true;
}
function SubjectIsReplica(query) {
    if("subject" in query) { return query.subject == "replica"; } 
    else return false;
}
function SubjectIsNotReplica(query) {
    if("subject" in query) { return query.subject != "replica"; } 
    else return true;
}
function FromIsReplica(query) {
    if("from" in query) { return query.from == "replica"; } 
    else return false;
}
function FromIsNotReplica(query) {
    if("from" in query) { return query.from != "replica"; } 
    else return true;
}
function Iswitch_aggro_onReplica(query) {
    if("witch_aggro_on" in query) { return query.witch_aggro_on == "replica"; } 
    else return false;
}
function IsNotSaidBeenJockeyedReplica(query) {
    if("worldsaidbeenjockeyedreplica" in query) { return query.worldsaidbeenjockeyedreplica != 1; } 
    else return true;
}
function IsSaidBeenJockeyedReplica(query) {
    if("worldsaidbeenjockeyedreplica" in query) { return query.worldsaidbeenjockeyedreplica == 1; } 
    else return false;
}
function IsNotSaidReplicaPounced(query) {
    if("worldsaidreplicapounced" in query) { return query.worldsaidreplicapounced != 1; } 
    else return true;
}
function IsNotNickInsultedReplicaC1(query) {
    if("worldnickinsultedreplica" in query) { return query.worldnickinsultedreplica != 1; } 
    else return true;
}
function IsSaidC1M3ReplicaFoodCourt(query) {
    if("worldsaidc1m3replicafoodcourt" in query) { return query.worldsaidc1m3replicafoodcourt == 1; } 
    else return false;
}
function ConceptReplicaSuggestsCrane(query) {
    if("concept" in query) { return query.concept == "replicasuggestscrane"; } 
    else return false;
}
function ConceptLaughReplica(query) {
    if("concept" in query) { return query.concept == "laughreplica"; } 
    else return false;
}
function NotReplicaMadAtRiders(query) {
    if("worldreplicamadatriders" in query) { return query.worldreplicamadatriders < 1; } 
    else return true;
}
function ReplicaMadAtRiders(query) {
    if("worldreplicamadatriders" in query) { return query.worldreplicamadatriders == 1; } 
    else return false;
}
function Concept_C2M2_ReplicaApocolypse(query) {
    if("concept" in query) { return query.concept == "_c2m2_replicaapocolypse"; } 
    else return false;
}
function ConceptPlayer_CoverMeC1RReplica1(query) {
    if("concept" in query) { return query.concept == "player.covermec1rreplica1"; } 
    else return false;
}
function ConceptPlayer_CoverMeC1RReplica2(query) {
    if("concept" in query) { return query.concept == "player.covermec1rreplica2"; } 
    else return false;
}
// function FromSet1(query) { return ( FromIsReplica(query) || FromIsAnOrator(query) ); }
function ReplicaCake(query) {
    if("worldreplicacake" in query) { return query.worldreplicacake == 1; } 
    else return false;
}
function IsDonorReplica(query) {
    if("itemdonor" in query) { return query.itemdonor == "replica"; } 
    else return false;
}
function IsNotDonorReplica(query) {
    if("itemdonor" in query) { return query.itemdonor != "replica"; } 
    else return true;
}
// function HasDonor(query) { return ( IsDonorBiker(query) || IsDonorTeenGirl(query) || IsDonorNamVet(query) || IsDonorManager(query) || IsDonorReplica(query) || IsDonorGambler(query) || IsDonorMechanic(query) || IsDonorProducer(query) || IsDonorUnknown(query) ); }
function IsReplicaAVampire(query) {
    if("worldc6m1_replicaisavampire" in query) { return query.worldc6m1_replicaisavampire == 1; } 
    else return false;
}
// function PanicEventDS(query) { return ( PanicEventReplica(query) || PanicEventGambler(query) || PanicEventMechanic(query) || PanicEventProducer(query) || PanicEventBiker(query) || PanicEventNamVet(query) || PanicEventManager(query) || PanicEventTeenGirl(query) ); }
