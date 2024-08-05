import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
        
          children: [
            SafeArea(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Row(
                  children: [
                
                    Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 15,
                      color: Color.fromRGBO(29, 98, 202,1),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "Back",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(29, 98, 202,1)
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            const Row(
              children: [
                Text(
                  "About eWallet",
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30,),
            const Text(
              "Our app allows you to easily store, manage, and spend your money on the go. With our secure platform, you can make transactions, check your balance, and track your spending all in one place.",
              style: TextStyle(
                fontFamily: 'Sora',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(83,93,102,1)
              ),
            ),

            const SizedBox(height: 20,),
             const Text(
              "Whether you're paying bills, shopping online, or sending money to friends and family, our app makes it easy and convenient to do so. Plus, with our various promotions and discounts, you can save even more while using our app. ",
              style: TextStyle(
                fontFamily: 'Sora',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(83,93,102,1)
              ),
            ),

            const SizedBox(height: 20,),
             const Text(
              "Thank you for choosing us as your preferred e-wallet solution. If you have any questions or feedback, please don't hesitate to contact us. We're always here to help. ",
              style: TextStyle(
                fontFamily: 'Sora',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(83,93,102,1)
              ),
            )
          ],
        ),
      ),
    );
  }
}