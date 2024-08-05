import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:provider/provider.dart";
import "package:wallet_app_ui/bottomnavbar.dart";
import "package:wallet_app_ui/provider/otp_provider.dart";


class OtpScreen1 extends StatefulWidget {
  const OtpScreen1({super.key});

  @override
  State<OtpScreen1> createState() => _OtpScreen1State();
}

class _OtpScreen1State extends State<OtpScreen1> {

  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                const SizedBox(height: 20,),
                const Text(
                  "An SMS sent to your mobile number\n 74 98XX-XXXX",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height:10,),
                const Text(
                  "Enter six-digit code",
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(120,131,141,1)
                  ),
                ),
                
          const SizedBox(height: 10,), 
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                height: 88,
                width: 200,
                 child: Consumer<OtpProvider>(
                  builder: (context, provider, child) {
                    return TextFormField(
                    controller: otpController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      provider.checkOtp(value);
                    },
                    
                    style: TextStyle( 
                      fontFamily: 'Sora',
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 3
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromRGBO(87, 50, 191, 1),
                        ),
                      ),
                      suffixIcon: provider.isotpCorrect ? Icon(
                        Icons.check_circle_outline,
                       color: Colors.green,
                       size: 30,
                       ): null 
                    )
                   );
                  },
                   
                 ),
               ),
                
             ],
           ),
    const SizedBox(height: 20,),
    GestureDetector(
      onTap: (){},
      child: Text(
        "Resend code",
        style: TextStyle(
          fontFamily: 'Sora',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(120, 131, 141, 1)
        ),
        
      ),
    ),

    const SizedBox(height:30),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Consumer<OtpProvider>(
                    builder: (context, value, child) {
                      return GestureDetector(
                      onTap: () {
                        value.reset();
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BottomNavBar(),));
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
                            "Done",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}