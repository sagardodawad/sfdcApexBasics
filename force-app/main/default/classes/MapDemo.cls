public class MapDemo {
    public static void main(){
        Map<Integer,String> nameList=new Map<Integer,String>();
        nameList.put(1,'Raj');
        nameList.put(2,'Ranjith');
        nameList.put(3,'Rohan');
        nameList.put(4,'Ranjani');
 
        System.debug(nameList);
        System.debug(nameList.get(3));
        System.debug(nameList.containsKey(2));
        System.debug(nameList.values()); //List
        System.debug(nameList.keySet()); //Set
 
        Map<Integer,Employee> employeeList=new Map<Integer,Employee>();
        Address ads=new Address(10,'somestreet','somecity','somestate','65554');
        employeeList.put(123,new Employee('Gopi','gopi@gmail.com',908767,ads,123,'Trainer'));
        employeeList.put(124,new Employee('Gokul','gokul@gmail.com',934247,ads,124,'HR'));
        employeeList.put(125,new Employee('mano','mano@gmail.com',9088753,ads,125,'Manager'));
 
        System.debug(employeeList.get(124));
    }
}
 