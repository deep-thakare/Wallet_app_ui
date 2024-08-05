import "package:flutter/material.dart";

class OtpProvider extends ChangeNotifier{

   String  otpController = "323236";
   bool isotpCorrect = false;

   String get otp => otpController;
  
  

  void checkOtp(String otpController){
    if(otpController == otp){
      isotpCorrect =true;
    }else{
      isotpCorrect=false;
    }
    notifyListeners();
  }

  void reset(){
    isotpCorrect=false;
    otpController='';
    notifyListeners();
  }
}