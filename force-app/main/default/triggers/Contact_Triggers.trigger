trigger Contact_Triggers on Contact(after insert, before insert, before update) 
{
    if(trigger.isafter && trigger.isinsert)
    {
        Contact_Handlers.method5(trigger.new);
    }
    
    if(trigger.isbefore && trigger.isinsert)
    {
        Contact_Handlers.method6(trigger.new);
        Contact_Handlers.method7(trigger.new);
        Contact_Handlers.method8(trigger.new);
    }
}