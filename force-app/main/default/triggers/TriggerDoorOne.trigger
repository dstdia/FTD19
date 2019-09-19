trigger TriggerDoorOne on Door__c (before insert, before update) {
 //edit
    PaintTriggerHandler.paint('Black', 'TriggerPaint__c', Trigger.new);
}