trigger AccountTrigger on Account (after insert, after update) 
{
  AccountTriggerHandler objHandler=new AccountTriggerHandler();
  
  if(trigger.isAfter && trigger.isInsert)
  {
  	objHandler.onAfterInsert(trigger.newmap);
  }
  
  if(trigger.isAfter && trigger.isUpdate)
  {
  	objHandler.onAfterUpdate(trigger.oldmap,trigger.newmap);
  }
  
  
}