import "package:flutter/material.dart";
import "package:wallet_app_ui/home_screen.dart";

class PaymentFail extends StatelessWidget {
  const PaymentFail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 250,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/img/PaymentFail.png"),
              ],
            ),
        
            const Text(
              "Transfer Failed :(",
              style: TextStyle(
                fontFamily: 'Sora',
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            ),
        
            const Text(
              textAlign: TextAlign.center,
              "Your transfer has been declined \ndue to a technical issue",
              style: TextStyle(
                fontFamily: 'Sora',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(83, 93, 102, 1),
              ),
            ),
        
            const Spacer(),
            // const SizedBox(height: 100,),
            GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
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
                        "Back to Wallet",
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
          ],
          
        ),
      ),
    );
  }
}