import "package:flutter/material.dart";
import "package:wallet_app_ui/transfer_screen.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [ 
            Container(
              height: 295,
              width: double.infinity,
              color: const Color.fromRGBO(39, 6, 133, 1),
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: [
                SafeArea(
                  child: Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurpleAccent
                      ),
                      child: Image.asset("assets/img/pp.png")
                    ),
                    const SizedBox(width: 20,),
                    const Column(
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          "Deep!",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset("assets/img/setting.png")      
                  ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                height: 168,
                width: 328,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(80, 51, 164, 1),
                  Color.fromRGBO(51, 16, 152, 0.65),              
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft
                )
                ),
                child:  Column(
                  children: [
                    const SizedBox(height: 20,),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Main Balance",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(178, 161, 228, 1)
                          ),
                        )
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                              "₹36,000",
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 36,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                              ),
                            ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          child: Column(
                            children: [
                              Image.asset("assets/img/v1.png"),
                              const SizedBox(height: 5,),
                              const Text(
                                "Top up",
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ),
                        
                        Container(
                          height: 48,
                          width: 48,
                          child: Column(
                            children: [
                              Image.asset("assets/img/v2.png"),
                              const SizedBox(height: 5,),
                              const Text(
                                "Top up",
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ),
                        
                        Container(
                          height: 48,
                          width: 48,
                          child: Column(
                            children: [
                              Image.asset("assets/img/v3.png"),
                              const SizedBox(height: 5,),
                              const Text(
                                "Top up",
                                style: TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
             const Row(
                children: [
                  SizedBox(width: 20,),
                  Text(
                    "Recent Transfers",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TransferScreen(),));
                      },
                      child: Container(
                        
                        height: 94,
                        child: Column(
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(230, 221, 255, 1)
                              ),
                              child: const Icon(Icons.add),
                            ),
                            const SizedBox(height: 5,),
                            const Text(
                              "Add",
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                              ),
                              )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      height: 94,
                      child: Column(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(230, 221, 255, 1)
                            ),
                            child: Image.asset("assets/img/p1.png"),
                          ),
                           const SizedBox(height: 5,),
                          const Text(
                            "Ali",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                            ),
                            )
                        ],
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      height: 94,
                      child: Column(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(230, 221, 255, 1)
                            ),
                            child: Image.asset("assets/img/p2.png"),
                          ),
                           const SizedBox(height: 5,),
                          const Text(
                            "Stevae",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                            ),
                            )
                        ],
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      height: 94,
                      child: Column(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(230, 221, 255, 1)
                            ),
                            child: Image.asset("assets/img/p3.png"),
                          ),
                           const SizedBox(height: 5,),
                          const Text(
                            "Ahmed",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                            ),
                            )
                        ],
                      ),
                      
                    ),
                    
                     const SizedBox(width: 20,),
                    Container(
                      height: 94,
                      child: Column(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(230, 221, 255, 1)
                            ),
                            child: Image.asset("assets/img/p2.png"),
                          ),
                           const SizedBox(height: 5,),
                          const Text(
                            "Steve",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 12,
                              fontWeight: FontWeight.w400
                            ),
                            ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
              const SizedBox(height: 10,),
        
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Latest Transactions",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(107, 107, 107, 1)
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          child: Image.asset("assets/img/Wallmart.png"),
                        ),
                        const SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Walmart",
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              "Today 12:30",
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(120, 131, 141, 1),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "-₹35.23",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(184, 50, 50, 1)
                          ),
                        ),
                        const SizedBox(width: 5,),
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: const Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Color.fromRGBO(83, 93, 102, 1),)
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Divider(color: Color.fromRGBO(237, 239, 246, 1),thickness: 1,),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          child: Image.asset("assets/img/Topup.png"),
                        ),
                        const SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Top up",
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              "Yesterday 02:12",
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(120, 131, 141, 1),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "+₹435.23",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(40, 155, 79, 1)
                          ),
                        ),
                        const SizedBox(width: 5,),
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: const Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Color.fromRGBO(83, 93, 102, 1),)
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Divider(color: Color.fromRGBO(237, 239, 246, 1),thickness: 1,),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          child: Image.asset("assets/img/Netflix.png"),
                        ),
                        const SizedBox(width: 10,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Netflix",
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              "Aug 01 02:30",
                              style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(120, 131, 141, 1),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "-₹15.23",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(184, 50, 50, 1)
                          ),
                        ),
                        const SizedBox(width: 5,),
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: const Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Color.fromRGBO(83, 93, 102, 1),)
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
