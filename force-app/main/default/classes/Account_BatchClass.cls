public class Account_BatchClass implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([Select Id,Name from Account]);
    }
    
    public void execute(Database.BatchableContext bc, List<sObject> accList){
		List<Account> aList = new List<Account>();
        for(sObject obj : accList){
            Account acc = (Account)obj;
            acc.Rating = 'Hot';
            aList.add(acc);
        }
        update aList;
    }
    
    public void finish(Database.BatchableContext bc){
        System.debug('Records Updated');
    }
}