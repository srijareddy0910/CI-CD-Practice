trigger Case_Triggers on Case (before update) {
    if(trigger.isBefore && trigger.isUpdate){
        Case_Handlers.preventUpdatesToPriority(trigger.new, trigger.oldMap);
        Case_Handlers.updateReason(trigger.new, trigger.oldMap);
    }

}