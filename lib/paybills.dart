import"package:flutter/material.dart";
import "package:wallet_app_ui/payment_Success.dart";

class PayBills extends StatefulWidget {
  const PayBills({super.key});

  @override
  State<PayBills> createState() => _PayBillsState();
}

class _PayBillsState extends State<PayBills> {

  void billBottomSheet(){
    showModalBottomSheet(
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding:  EdgeInsets.all(20),
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20,),
              Row(
                children: [
                  Image.asset(
                    "assets/img/Electricity2.png"
                  ),
                  const SizedBox(width: 20,),
                   const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Electricity",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                       Text(
                        "Retailer corporation",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(120, 131, 141, 1)
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Text(
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

              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(255, 246, 246, 1)
                ),
                child: const Center(
                  child: Text(
                    "Due: ₹135.60",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(184, 50, 50, 1)
                    ),
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
                        "Due date",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(120, 131, 141, 1)
                        ),
                      ),
                  
                      Text(
                        "Jully 29, 2024 - 12:30 ",
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
                            "Registration no.",
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

              const SizedBox(height: 40,),

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentSuccess(),));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(253, 194, 40,1)
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.security_sharp,color: Color.fromRGBO(39,6,133,1),),
                      const SizedBox(width: 5,),
                      Text(
                        "Secure payment",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(39,6,133,1)
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20,),
            ],
          ),
        );  
      },
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding : const EdgeInsets.only(left: 20,right: 20),
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
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Pay to",
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 0, 0, 1)
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                        height: 50,
                        width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(230, 221, 255, 1)
                          ),
                          child: const Icon(Icons.add),
                ),
                const SizedBox(width: 10,),
                 const Text(
                    "New biller",
                  style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(25, 25, 25, 1),
                  ),
            )
              ],
            ),
            const SizedBox(height: 20,),
            TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search Biller",
                        prefixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(186, 194, 199, 1)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(225, 227, 237, 1)
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(225, 227, 237,1 )
                          )
                        )
                      ),
                    ),

                    const SizedBox(height: 20,),

                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Saved billers",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(83, 93, 102, 1)
                        ),
                      ),
                    ),


                    const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                billBottomSheet();
              },
              child: Row(
                children: [
                  
                      Image.asset("assets/img/Electricity.png"),
                      const SizedBox(width: 10,),                 
                      const Text(
                       "Electricity",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color.fromRGBO(83, 93, 102, 1),size: 20,
                        ),
                   
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Divider(color: Color.fromRGBO(237, 239, 246, 1),),
            const SizedBox(height: 10,),
            Row(
              children: [
                
                    Image.asset("assets/img/Water.png"),
                    const SizedBox(width: 10,),                 
                    const Text(
                     "Water",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(83, 93, 102, 1),size: 20,
                      ),
                   
             ],
            ), 

            const SizedBox(height: 10,),
            const Divider(color: Color.fromRGBO(237, 239, 246, 1),),
            const SizedBox(height: 10,),

            Row(
              children: [
                    Image.asset("assets/img/Phone.png"),
                    const SizedBox(width: 10,),                 
                    const Text(
                     "Phone",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(83, 93, 102, 1),size: 20,
                      ),
                    
                       ],
                      ),
            
            
          ],
        ),
      ),
                 
    ),
  );    
  }
}