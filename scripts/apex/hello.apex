// HelloWorld obj=new HelloWorld();
// obj.sayHello();


// Person person = new Person('Akash','akash@gmail.com',98765,'Pune');
// String res=person.greetUser('Akash');
// System.debug(res);
// System.debug(person.toString());


// Employee emp=new Employee();
// emp.name='John Doe';
// emp.email='john.doe@example.com';
// emp.phone=123456;
// emp.address='123 Main St';
// emp.empId=101;
// emp.designation='Developer';
// System.debug(emp.toString());
// System.debug(emp.greetUser('John Doe'));

// Address addr=new Address(12,'MG Road','Pune','MH','411001');
// Person per =new Person('Akash','akash@gmail.com',98765, addr);
// System.debug(per.toString());


// PremiumCalculation pc=new PremiumCalculation( 50000, 4,'Unmarried','Temporary Job');
// double premium=pc.calculatePremium(pc.income, pc.maritalStatus, pc.EmployeeStatus, pc.serviceYears);
// System.debug('Calculated Premium: '+premium);


// Notification notification=new Notification();
// notification.sendNotification('This is a general notification.');
// EmailNotification emailNotif=new EmailNotification();
// emailNotif.sendNotification('This is an email notification.');
// SMSNotification smsNotif=new SMSNotification();
// smsNotif.sendNotification('This is an SMS notification.');



// Payment payment=new Payment();
// payment.processPayment(250);    
// payment.processPayment(100, 'Credit Card');
// payment.processPayment(200, 'PayPal', 10);

// ListDemo.main();


// Set<Integer> data=new Set<Integer>();
 
// data.add(10);
// data.add(20);
// data.add(10);  
// System.debug('Set contents: '+data);
 
Set<Employee> emps=new Set<Employee>();
Address add1=new Address(12,'MG Road','Pune','MH','411001');
Address add2=new Address(34,'FC Road','Pune','MH','411002');
 
Employee emp1=new Employee('john','john@gmail.com',123456,add1,101,'Developer');
Employee emp2=new Employee('ram','ram@gmail.com',123456,add2,102,'Developer');
emps.add(emp1);
emps.add(emp2);
emps.add(emp2);
System.debug('Employee Set contents: '+emps);