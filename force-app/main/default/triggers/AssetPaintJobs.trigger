trigger AssetPaintJobs on Asset (before insert, before update) {
    
    String s = '<p>Painted <font color="blue"><b>Blue</b></font> by Trigger</p>';
    
    
    for (Asset a : Trigger.new) {
        
        a.Color__c = 'Trigger Blue';
        a.PaintJobs__c ++;
        a.WorkLog__c += s;
        //a.WorkLog__c = (a.Worklog__c == NULL ) ? s : a.WorkLog__c + s;
        
        if (Trigger.isUpdate) {
            Asset old = Trigger.oldMap.get(a.Id);
            System.debug('Color was: ' + old.Color__c);
            System.debug('Paintjob # was: ' + old.PaintJobs__c);
            System.debug('Painted: ' + a.Color__c);
            System.debug('Paintjob # is now: ' + a.PaintJobs__c);
        }
    }
}