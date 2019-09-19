public class PaintTriggerHandler {
    
    public static void paint(String color, String fieldName, List<sObject> records) {
        
        for (sObject record : records) {
            record.put(fieldname, color);
        }
    }

}