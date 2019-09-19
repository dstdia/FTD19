trigger TriggerDoorTwo on Door__c (before insert, before update) {

    PaintTriggerHandler.paint('White', 'TriggerPaint__c', Trigger.new);
}