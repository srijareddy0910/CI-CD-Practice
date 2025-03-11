trigger Account_Triggers on Account (before insert, before update, before delete, after insert, after delete, after update) {

    if(trigger.isbefore && trigger.isinsert)
    {
        Account_Handlers.updateAccDescription(trigger.new);
        Account_Handlers.updateRatingBasedOnIndustry(trigger.new);
        Account_Handlers.updateRevenueBasedOnIndustry(trigger.new);
        Account_Handlers.duplicateAccName(trigger.new);
        Account_Handlers.method9(trigger.new);
        Account_Handlers.method10(trigger.new);
    }
  
    if(trigger.isbefore && trigger.isupdate)
    {
        Account_Handlers.updateAccFax(trigger.new, trigger.oldMap);
        Account_Handlers.accNameCannotBeUpdated(trigger.new, trigger.oldMap);
        for(Account accNew11 : Trigger.new){
            Account accOld11 = Trigger.oldMap.get(accNew11.Id);
            if(accNew11.Name != accOld11.Name){
                accNew11.addError('Account can not be updated');
            }
        }
    }
      
    if(trigger.isbefore && trigger.isdelete)
    {
        Account_Handlers.method3(trigger.old);
    }
  
    if(trigger.isafter && trigger.isinsert)
    {
       Account_Handlers.method4(trigger.new);
       Account_Handlers.method5(trigger.new);
       Account_Handlers.method6(trigger.new);
       Account_Handlers.method7(trigger.new); 
    }
    if(trigger.isafter && trigger.isdelete)
    {
       Account_Handlers.method12(trigger.old);
    }
    
    if(trigger.isbefore && trigger.isupdate)
    {
        Account_Handlers.updateAccFax(trigger.new, trigger.oldMap);
    }
    
    if(trigger.isafter && trigger.isupdate)
    {
     	Account_Handlers.updateConMailAddress(trigger.new, trigger.oldMap);
        Account_Handlers.updateRelatedContPhone(trigger.new, trigger.oldMap);
        Account_Handlers.updateRelatedContName(trigger.new, trigger.oldMap);
    }
}