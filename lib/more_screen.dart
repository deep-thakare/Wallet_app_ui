import "package:flutter/material.dart";
import "package:wallet_app_ui/about_screen.dart";
import "package:wallet_app_ui/paybills.dart";

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

  List itemlist = [
    {
      "Img" :"assets/img/m1.png",
      "title":"Pay bills",       
    },
    {
      "Img" :"assets/img/m2.png",
      "title":"Transfer", 
    },
    {
      "Img" :"assets/img/m3.png",
      "title":"Top Up", 
    },
    {
      "Img" :"assets/img/m4.png",
      "title":"Withdraw", 
    },
    {
      "Img" :"assets/img/m5.png",
      "title":"Analytics", 
    },
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           const SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "More",
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PayBills(),));
                },
                child: ListView.builder(
                
                  
                  shrinkWrap: true,
                  itemCount: itemlist.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(height: 10,),
                        Row(
                        children: [
                          Image.asset("${itemlist[index]["Img"]}"),
                          const SizedBox(width: 10,),
                                        
                          Text(
                            "${itemlist[index]["title"]}",
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          const Spacer(),
                          Icon(Icons.arrow_forward_ios_outlined,color: Color.fromRGBO(83, 93, 102, 1),size: 20,)
                        ],
                        ),
                        const SizedBox(height: 10,),
                        const Divider(color: Color.fromRGBO(237, 239, 246, 1),),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20,),
            const Divider(
                   thickness: 6,
                   color: Color.fromRGBO(237, 239, 246, 1),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(width: 20,),
                    Image.asset("assets/img/m6.png"),
                    const SizedBox(width: 10,),                 
                    Text(
                     "Help",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(83, 93, 102, 1),size: 20,
                      ),
                    const SizedBox(width: 20,),
              ],
            ),
            const SizedBox(height: 10,),
            const Divider(color: Color.fromRGBO(237, 239, 246, 1),),
            const SizedBox(height: 10,),
            Row(
              children: [
                const SizedBox(width: 20,),
                    Image.asset("assets/img/m7.png"),
                    const SizedBox(width: 10,),                 
                    Text(
                     "Contact us",
                      style: TextStyle(
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(83, 93, 102, 1),size: 20,
                      ),
                    const SizedBox(width: 20,),
             ],
            ), 

            const SizedBox(height: 10,),
            const Divider(color: Color.fromRGBO(237, 239, 246, 1),),
            const SizedBox(height: 10,),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen(),));
              },
              child: Row(
                children: [
                  const SizedBox(width: 20,),
                      Image.asset("assets/img/m8.png"),
                      const SizedBox(width: 10,),                 
                      Text(
                       "About",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color.fromRGBO(83, 93, 102, 1),size: 20,
                        ),
                      const SizedBox(width: 20,),
                         ],
                        ),
            ),
        ]
      )
    );
  }
}