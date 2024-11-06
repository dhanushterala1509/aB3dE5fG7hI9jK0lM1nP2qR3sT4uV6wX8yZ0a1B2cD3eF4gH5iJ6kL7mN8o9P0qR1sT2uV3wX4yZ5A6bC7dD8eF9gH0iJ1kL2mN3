public class Foo{
public void correct() {
        String name = '\'DEV\' OR Name LIKE \'INT%\''; // includes SOQL injection
        String baseQuery = 'SELECT Id, Name FROM copado__Environment__c  WHERE Name = ';
        List<copado__Environment__c> records3a = Database.query(baseQuery+name); // CORRECT SOQL Injection possiblecodescan(sf:SOQLInjection)
    }
}
