import "package:flutter/material.dart";
import "package:wallet_app_ui/home_screen.dart";

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Align(
                alignment: Alignment.center,
                child: Image.asset("assets/img/PaymentDone.png")
              ),
              const SizedBox(height: 20,),
              Text(
                "Payment done!",
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),

              const SizedBox(height: 20,),
              Text(
                textAlign: TextAlign.center,
                "Bill payment has been done \nsuccessfully",
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(83, 93, 102, 1)
                ),
              ),

              const SizedBox(height: 20,),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Payment details",
                  style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),

              const SizedBox(height: 20,),

              Container(
                height: 60,
                width: double.infinity,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromRGBO(237, 239, 246, 1),
                    width: 1
                  ),
                  // color: Color.fromRGBO(255, 246, 246, 1)
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Biller",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(120, 131, 141, 1)
                        ),
                      ),
                  
                      Text(
                        "Electricity company inc.",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(83, 93, 102, 1)
                        ),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10,),


              Container(
                height: 60,
                width: double.infinity,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromRGBO(237, 239, 246, 1),
                    width: 1
                  ),
                  // color: Color.fromRGBO(255, 246, 246, 1)
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Amount",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(120, 131, 141, 1)
                        ),
                      ),
                  
                      Text(
                        "₹132.32",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(83, 93, 102, 1)
                        ),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10,),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromRGBO(237, 239, 246, 1),
                    width: 1
                  ),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Transaction no.",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(120, 131, 141, 1)
                          ),
                          ),
                          Text(
                          "23010412432431",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(83, 93, 102, 1)
                          ),
                        )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.content_copy_rounded),
                    SizedBox(width: 20,)
                  ],
                )
              ),

              const SizedBox(height: 20,),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.flag_outlined,color: Color.fromRGBO(184,50,50,1),),
                  Text(
                    "Report a problem",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(184,50,50,1)
                    ),
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen(),));
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
      ),
    );
  }
}