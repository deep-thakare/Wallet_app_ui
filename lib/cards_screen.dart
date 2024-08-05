import "package:flutter/material.dart";
import "package:wallet_app_ui/card_payment.dart";

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "My Cards",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      
                    ),
                  ),
                  Spacer(),
          
                  Text(
                    "Add card",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(39, 6, 133, 1)
                    ),
                  ),
                  Icon(Icons.add,color: Color.fromRGBO(39, 6, 133, 1),)
                ],
              ),

              const SizedBox(height: 50,),
              const SizedBox(height: 30,), 
              
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => CardPayment(),));
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
            ],
          ),
        ),
      ),
    );
  }
}