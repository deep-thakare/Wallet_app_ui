import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wallet_app_ui/create_account.dart';
import 'package:wallet_app_ui/otp_screen1.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {

TextEditingController passwordController = TextEditingController();
  void bottomSheet1(){
    showModalBottomSheet(
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            right: 20,
            left: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Done",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(29, 98, 202, 1)
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
        
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "e.g. email@example.com",
                  hintStyle: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(186, 194, 199, 1)
                  ),
                prefixIconConstraints: BoxConstraints(),            
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                   color: Color.fromRGBO(225, 227, 237, 1) 
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(225, 227, 237, 1)
                  )
                ),
                border: OutlineInputBorder(
                borderSide: BorderSide(),
               ),
               ),
              ),
              const SizedBox(height: 60,),

              GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color.fromRGBO(87, 50, 191, 1)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Send reset link",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  bottomSheet2();
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Use mobile instead",
                      style:TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(29, 98, 202, 1)
                      ) ,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60,),
            ],
          ),
        );  
      },
    );
  }
  void bottomSheet2(){
    showModalBottomSheet(
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            right: 20,
            left: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text(
                    "Forgot your password?",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Done",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(29, 98, 202, 1)
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20,),
              const Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5,),
        
              IntlPhoneField(
                dropdownIconPosition: IconPosition.trailing,
               decoration: const InputDecoration(
                prefixIconConstraints: BoxConstraints(),            
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                   color: Color.fromRGBO(225, 227, 237, 1) 
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(225, 227, 237, 1)
                  )
                ),
                border: OutlineInputBorder(
                borderSide: BorderSide(),
               ),
               ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                 print(phone.completeNumber);
                },
              ),
              const SizedBox(height: 60,),

              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtpScreen1(),));
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color.fromRGBO(87, 50, 191, 1)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Send reset link",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Use email instead",
                      style:TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(29, 98, 202, 1)
                      ) ,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60,),
            ],
          ),
        );  
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Container(
              height: 384,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(247, 244, 255, 1)
              ),
              child: Column(
                children: [
                  SafeArea(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_outlined,size: 15,color: Color.fromRGBO(29, 98, 202, 1),),
                        ),
                        const Text(
                          "Back",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(29, 98, 202, 1),
                          ),
                        ),
                        const SizedBox(width: 80,),
                        SvgPicture.asset(       
                          "assets/img/lg1.svg"
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                  SvgPicture.asset(       
                    "assets/img/ca1.svg"
                  ),
                ],
              ),
            ),
        
            const SizedBox(height: 10,),
              const Row(
                children: [
                SizedBox(width: 20,),
                  Text(
                    "Enter your Password",
                    style: TextStyle(
                      fontFamily:'Sora',
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5,),
        
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(186, 194, 199, 1)
                    ),
                  prefixIconConstraints: BoxConstraints(),            
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(
                     color: Color.fromRGBO(225, 227, 237, 1) 
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(225, 227, 237, 1)
                    )
                  ),
                  border: OutlineInputBorder(
                  borderSide: BorderSide(),
                 ),
                 ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        bottomSheet1();
                      },
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(29, 98, 202, 1)
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 180,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: GestureDetector(
                onTap: () {
                  if (passwordController.text == "123456") {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Login Successful")));
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CreateAccount()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("password")));
                    }
                 
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color.fromRGBO(87, 50, 191, 1)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
