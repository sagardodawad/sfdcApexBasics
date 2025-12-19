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


Notification notification=new Notification();
notification.sendNotification('This is a general notification.');
EmailNotification emailNotif=new EmailNotification();
emailNotif.sendNotification('This is an email notification.');
SMSNotification smsNotif=new SMSNotification();
smsNotif.sendNotification('This is an SMS notification.');



