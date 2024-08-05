import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class CardPayment extends StatefulWidget {
  const CardPayment({super.key});

  @override
  State<CardPayment> createState() => _CardPaymentState();
}

class _CardPaymentState extends State<CardPayment> {
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
                Icon(Icons.arrow_back_ios_new_outlined,color: Color.fromRGBO(29, 98, 202, 1),size: 15,),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Text(
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
            const SizedBox(height: 50,),
             GestureDetector(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => CardPayment,));
                    },
                    child: Container(
                      height: 220,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color:const Color.fromRGBO(39, 6, 133,1),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Stack(
                        children: [
                    
                          
                          
                          Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset("assets/img/shape1.png")
                          ),
                                            
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("assets/img/shape3.png")
                          ),
                          
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("assets/img/shape2.png")
                          ),
                    
                          const Padding(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Rohit Kumar",
                                      style: TextStyle(
                                        fontFamily: 'Sora',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "**** 3245",
                                      style: TextStyle(
                                        fontFamily: 'Sora',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white
                                      ),
                                    )
                                  ],
                                ),
                    
                                Spacer(),
                    
                                Row(
                                  children: [
                                    Text(
                                      "Balance",
                                      style: TextStyle(
                                        fontFamily: 'Sora',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(230, 221, 255, 1)
                                      ),
                                    )
                                  ],
                                ),
                    
                                Row(
                                  children: [
                                    Text(
                                      "23,500",
                                      style: TextStyle(
                                        fontFamily: 'Sora',
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(255, 255, 255, 1)
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.rss_feed_sharp,color: Colors.white,)
                                  ],
                                ),
                                
                                
                              ],
                            ),
                          )
                          
                        ]
                      ),
                    ),
                  ),

                  const SizedBox(height: 70,),

                  Icon(Icons.rss_feed_sharp,color: Color.fromRGBO(120, 131, 141, 1),),
                  Text(
                    "Move near a device to pay",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(120, 131, 141, 1)
                    ),
                  ),
                  const Spacer(),

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
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            const Icon(Icons.qr_code,color: Colors.white,),
                            const SizedBox(width: 10,),
                             Text(
                               "QR Pay",
                               style: TextStyle(
                                 fontFamily: 'Sora',
                                 fontSize: 14,
                                 fontWeight: FontWeight.w600,
                                 color: Colors.white
                               ),
                             ),
                           ],
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