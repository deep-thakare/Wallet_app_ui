import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app_ui/otp_screen1.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isChecked = true;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
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
        
            const SizedBox(height: 60,),
        
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Create Account",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 21,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "Name",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  
                const SizedBox(height: 5,),
          
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter your name",
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
                const SizedBox(height: 10,),
                
                  const Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
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
        
                const SizedBox(height: 10,),
                
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  
                const SizedBox(height: 5,),
          
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter your Password",
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

                Row(
                  children: [
                    Checkbox(
                      value: isChecked, 
                      onChanged: (val){
                        setState(() {
                          isChecked = val!;
                        });
                      }
                    ),
                    const Text(
                      "I accept",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 3,),
                    const Text(
                      "terms and conditions",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(29, 98, 202, 1)
                      ),
                    ),
                    const SizedBox(width: 3,),
                    const Text(
                      "and privacy policy",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(29, 98, 202, 1)
                      ),
                    ),
                  ],
                ),
                const SizedBox(height:30),
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
                        "Create a new account",
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Or Continue using",
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(120, 131, 141, 1)
                  ),
                ), 
              ],
            ),
        
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/img/lg3.svg"
                ),
              ],
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}