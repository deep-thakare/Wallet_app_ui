import "package:flutter/material.dart";

class HistoryScreen extends StatefulWidget{
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  void showBottomView(){
    showModalBottomSheet(
      isDismissible: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20,),
              Row(
                children: [
                  Image.asset(
                    "assets/img/BottomWallmart.png"
                  ),
                  const SizedBox(width: 20,),
                   const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Walmart",
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
                    "₹35.60",
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
                        "Today",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(120, 131, 141, 1)
                        ),
                      ),
                  
                      Text(
                        "Jully 29, 2023 - 12:30 ",
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

              const SizedBox(height: 40,),

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

              const SizedBox(height: 20,),
            ],
          ),
        );  
      },
    );
  }

  @override  
  Widget build (BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "History",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
        
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 43,
                    width: 253,
                    child: TextFormField(
                      
                      decoration: const InputDecoration(
                        hintText: "Value goes here",
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
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 43,
                    width: 107,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(225, 227, 237,1)
                      )
                    ),
                    child: const Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.filter_alt_outlined),
                        Text(
                          "Filter",
                          style: TextStyle(
                            fontFamily: 'Sora',
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
             const Padding(
               padding: EdgeInsets.only(left: 20,right: 20),
               child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Today",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(142, 142, 142, 1)
                    ),
                  ),
                ),
             ),
        
              const SizedBox(height: 20,),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
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
                          showBottomView();
                        },
                        child: const Icon(Icons.arrow_forward_ios_outlined,size: 15,color: Color.fromRGBO(83, 93, 102, 1),)
                      ),
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(color: Color.fromRGBO(237, 239, 246, 1),thickness: 1,),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
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
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(color: Color.fromRGBO(237, 239, 246, 1),thickness: 1,),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
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
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Divider(
                    thickness: 6,
                    color: Color.fromRGBO(237, 239, 246, 1),
                  ),
        
        
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Container(
                        height: 32,
                        width: 32,
                        child: Image.asset("assets/img/amazon.png"),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amazon",
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
                        "-₹112.23",
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
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(color: Color.fromRGBO(237, 239, 246, 1),thickness: 1,),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Container(
                        height: 32,
                        width: 32,
                        child: Image.asset("assets/img/nike.png"),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nike",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            "Yesterday 01:19",
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
                        "-₹435.23",
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
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(color: Color.fromRGBO(237, 239, 246, 1),thickness: 1,),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Container(
                        height: 32,
                        width: 32,
                        child: Image.asset("assets/img/Depot.png"),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Home Depot",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            "Dec 23 12:50",
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
                        "-₹105.23",
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
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Divider(
                    thickness: 6,
                    color: Color.fromRGBO(237, 239, 246, 1),
                  ),
        
        
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Container(
                        height: 32,
                        width: 32,
                        child: Image.asset("assets/img/amazon.png"),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amazon",
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
                        "-₹112.23",
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
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(color: Color.fromRGBO(237, 239, 246, 1),thickness: 1,),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Container(
                        height: 32,
                        width: 32,
                        child: Image.asset("assets/img/nike.png"),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nike",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            "Yesterday 01:19",
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
                        "-₹435.23",
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
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(color: Color.fromRGBO(237, 239, 246, 1),thickness: 1,),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const SizedBox(width: 20,),
                      Container(
                        height: 32,
                        width: 32,
                        child: Image.asset("assets/img/Depot.png"),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Home Depot",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            "Dec 23 12:50",
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
                        "-₹105.23",
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
                      const SizedBox(width: 20,),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Divider(
                    thickness: 6,
                    color: Color.fromRGBO(237, 239, 246, 1),
                  ),
          ],
        ),
      ),
    );
  }
}