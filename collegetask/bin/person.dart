//the first class person ,,,,,,,,,,,,,,,,



class Person {

 
String name ,address , id ,age ;


Person(   this.id 
      , this.age 
      , this.name 
      , this.address) ;

/*void studentdata(){

print('student id  is : $id ,,,,  student age  is : $age ,,,, student name  is $name  ,,,,,,student address is  $address ') ;

}*/

}

// the second class student ,,,,,,,,,,,,,,,,,,,,
enum subType {math , science , history , deutch} 

class Student extends Person {

String email , phone ;
String sub ;
Map< String ,double> Subject = {};

Student(String id , String age ,  String name ,  String address, this.email
       , this.phone 
       , this.sub) :   super( id , age , name , address) ;


//@override
  void studentdata (){

//super.studentdata();

print('student id  is : $id ,,,,  student age  is : $age ,,,, student name  is $name  ,,,,,,student address is  $address ,,student email  is : $email ,,,,  student phone  is : $phone ,,,, student subjects   is $Subject ') ;

}


void addsubject(String subs , double grade){


Subject.addAll({subs : grade});

print ('the subject $subs is added with grade $grade' ) ;


}

}

class  Students {

List <Student> _students = [] ;

void addstudent({required String id , required String age ,
        required String  name , required String address ,
        required String email , required String phone,
        required String sub }){

_students.add(Student(id, age, name, address, email, phone, sub));
          

        }

void removestudent (String id){

_students.removeWhere((element) => element.id == id) ;

}

void PrintStudentData( String? id){
//print('your student id not found and all students are $_students');
var specificstudent = _students.firstWhere((element) => element.id == id ) ;
specificstudent.studentdata() ;


} 



void addSubject(String id, String subject, double grade){

var student = _students.firstWhere((element) => element.id == id);

student.addsubject(subject, grade) ;

}


void calculateStudentGrade(String id){

var specificstudent = _students.firstWhere((element) => element.id == id ) ;
var supjects =specificstudent.Subject ;
print ('your student subjects is $supjects' );

supjects.forEach((key, value) {if(value >= 50 ){print('pass in supject $key');}else{print('fail in supject $key');} });

}



}