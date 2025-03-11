trigger Oppty_Triggers on Opportunity (before update, before insert) {
    
    if(trigger.isBefore && trigger.isUpdate){
        Oppty_Handlers.closedWonCannotBeUpdated(trigger.new, trigger.oldMap);
        Oppty_Handlers.updateDescription(trigger.new, trigger.oldMap);
    } 
    
    if(trigger.isBefore && trigger.isInsert){
        Oppty_Handlers.duplicateOrderNumber(trigger.new);
        Oppty_Handlers.duplicateName(trigger.new);
    }
}