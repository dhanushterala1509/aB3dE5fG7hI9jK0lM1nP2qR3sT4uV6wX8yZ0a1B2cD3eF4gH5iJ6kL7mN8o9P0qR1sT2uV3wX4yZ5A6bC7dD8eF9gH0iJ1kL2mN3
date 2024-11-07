public class Foo{


                        public void falseNegative() {
                                String name = '\'DEV\' OR Name LIKE \'INT%\''; // includes SOQL injection

                                String baseQuery = 'SELECT Id, Name FROM copado__Environment__c  WHERE Name = ';
                                System.debug('selectByName2: records3='+records3.size());
                                List<copado__Environment__c> records3a = Database.query(baseQuery+name); // FALSE NEGATIVE


                            }



}


