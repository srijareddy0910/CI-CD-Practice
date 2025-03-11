trigger Lead_Triggers on Lead (before insert, before update) {
    /*if(trigger.isBefore && trigger.isInsert){
        Lead_Handlers.updateLeadField(Trigger.new);
	}*/
    
    if(trigger.isBefore && trigger.isUpdate){
       Lead_Handlers.statusCannotBeUpdated(Trigger.new, Trigger.oldMap);
      }  
 }

   /*//Before Update
   //If lead status is same as before then throw an error
   Trigger Lead_Triggers on Lead (Before Update){
		for(Lead ldNew : Trigger.new){
			Lead ldOld = Trigger.OldMap.get(ldNew.Id);
			if(ldNew.Status != ldOld.Status){
				ldNew.addError('Lead status is same..Please change it');
		}
    } 
}*/