public class Foo{

public void method(){

if(Schema.sObjectType.Contact.isAccessible()){
List<List<SObject>> searchList = [FIND 'Loan Officer OR "Branch Manager"' IN ALL FIELDS RETURNING Contact(Id, FirstName, LastName, Title WHERE Title LIKE '%Loan Officer%' OR Title LIKE '%Branch Manager%')];

for (List<SObject> lst : searchList) {
    for (SObject sobj : lst) {
        Contact con = (Contact) sobj;
        System.debug('Contact Name: ' + con.FirstName + ' ' + con.LastName + ', Title: ' + con.Title);
    }
}
}
}
}