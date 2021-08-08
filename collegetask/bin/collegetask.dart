
import 'dart:io' ;
import  'person.dart' ;


void main () {
  var student =Students() ;
loop :
while(true) {

print('to add sudent enter 1');
print('to remove sudent enter 2');
print ('to show student data enter 3');
print('to add supject to student enter 4');
print('to calculate grade enter 5');
print ('to Exit print ant other key');

var input = stdin.readLineSync();

switch (input){

case '1' :
      print('to add student we need some data');
      print(' enter student id , age , name , address , email , phone ');
      
      var input =stdin.readLineSync()!.split(', ');
      print('enter supject as 1 for math , 2 for science , 3 for history , 5 for deutch');
      var cat = stdin.readLineSync();
      var  cat1 = getsubject(cat!);
      student.addstudent(id: input[0],
               age: input[1], name: input[2]
               , address: input[3], email: input[4]
               , phone: input[5], sub: cat1);

break ;
case '2' :
      print('enter student id to remove');
      var id =stdin.readLineSync();
      student.removestudent(id!);
break ;      

case '3' :
       print('enter student id to show his data');
       var id =stdin.readLineSync();
       student.PrintStudentData(id) ;
break ;

case '4' :
      print('enter student id , subject {NOTE:supject as 1 for math , 2 for science , 3 for history , 5 for deutch} , grade');
      var input =stdin.readLineSync()!.split(', ');
      var id = input[0];
      var supject = getsubject(input[1]);
      var grade = double.parse(input[2]) ;
      student.addSubject(id , supject, grade) ;
break ;

case '5':
     print('enter student id to check his grade');
     var id =stdin.readLineSync();
     student.calculateStudentGrade(id!) ;
break ;

default :
    print('thanks to use our program');
break loop ;
}


}

}


String getsubject (String x)
{

switch (x){ 
    case '1' :
    return ('math') ;

    case '2':
    return ('science') ;

    case '3':
    return ('history') ;


    default :
    return ('deutch') ;

}


}