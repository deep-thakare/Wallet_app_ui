import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:intl_phone_field/intl_phone_field.dart";
import "package:wallet_app_ui/password_screen.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 384,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(247, 244, 255, 1)
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  SafeArea(
                    child: SvgPicture.asset(
                      "assets/img/lg1.svg"
                    ),
                  ),
                  const SizedBox(height: 50,),
                  SvgPicture.asset(
                    "assets/img/lg2.svg"
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Row(
              children: [
              SizedBox(width: 20,),
                Text(
                  "Enter your\nmobile number",
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
                    "Mobile number",
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
              child: IntlPhoneField(
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
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PasswordScreen(),));
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
                      "Continue",
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
            SvgPicture.asset(
              "assets/img/lg3.svg"
            ),
          ],
        ),
      ),
    );
  }
}