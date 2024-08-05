import "package:flutter/material.dart";
import "package:wallet_app_ui/payment_fail.dart";

class TransferBeneficiary extends StatelessWidget {
  const TransferBeneficiary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.arrow_back_ios_new_outlined,color: Color.fromRGBO(29, 98, 202, 1),size: 15,),
                  const SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(29, 98, 202, 1)
                      ),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20,),

              const Text(
                "Transfer to",
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 24,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/img/Transfer.png"),
                                const SizedBox(width: 10,),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "John",
                                      style: TextStyle(
                                        fontFamily: 'Sora',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(25, 25, 25, 1),
                                      ),
                                    ),
                                    Text(
                                      "+1-300-555-0161",
                                      style: TextStyle(
                                        fontFamily: 'Sora',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(120, 131, 141, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ), const SizedBox(height:10,),
                const Text(
                  "Enter amount",
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
                width: 160,
                child:  Center(
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        
                      },
                      
                      style: TextStyle( 
                        fontFamily: 'Sora',
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 3
                      ),
                      decoration: InputDecoration(
                        hintText: "₹00.00",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Color.fromRGBO(87, 50, 191, 1),
                          ),
                        ) 
                      ),
                  ),
                )
               )
             ]
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentFail(),));
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
            ),
            ]
          )
        )
      )
    );
  }
}