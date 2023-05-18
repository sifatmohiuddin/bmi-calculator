import 'dart:math';
class Brain{

  Brain({this.height , this.weight });

  final  height;
  final  weight;
  double bmi=9  ;


  String calculatebmi(){

     bmi = weight/pow(height/100,2);
    return bmi.toStringAsFixed(1);

  }

  String getresult( ){

     if(bmi >= 25){

       return 'Overweight';
     } else if( bmi > 18.5) {

       return 'Normal';

     }
     else {
       return 'underweight';
     }
     }

  String lines(){

    if(bmi >= 25){

      return 'Body fat percentage is higher then usual. try maintaing a good diet and do exercise';
    } else if( bmi > 18.5) {

      return 'You have perfect body weight, stay healthy';

    }
    else {
      return 'Body weight is lower then usual, eat more protien and nutrtion and gain some muscle by weight training';
    }
  }

  }









