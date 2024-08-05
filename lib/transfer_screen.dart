import "package:flutter/material.dart";
import "package:wallet_app_ui/transfer_beneficiary.dart";

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {

  List transferList = [
    {
      "image":"assets/img/tt1.png",
      "name":"John",
      "num":"+1-300-555-0161",
    },
    {
      "image":"assets/img/tt2.png",
      "name":"Steve",
      "num":"+1-800-777-0191",
    },
    { 
      "image":"assets/img/tt3.png",
      "name":"Elon",
      "num":"+1-300-666-099",
    },
  ];
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
                "Transfer to",
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
                    "New contact",
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
                        hintText: "Search contact",
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
                        "Frequent contacts",
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(83, 93, 102, 1)
                        ),
                      ),
                    ),



                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>TransferBeneficiary() ,));
                      },
                      child: ListView.builder(
                        itemCount: transferList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                          children: [
                            const SizedBox(height: 20,),
                            Row(
                              children: [
                                Image.asset("${transferList[index]["image"]}"),
                                const SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${transferList[index]["name"]}",
                                      style: TextStyle(
                                        fontFamily: 'Sora',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(25, 25, 25, 1),
                                      ),
                                    ),
                                    Text(
                                      "${transferList[index]["num"]}",
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
                                Icon(Icons.arrow_forward_ios_outlined,color: Color.fromRGBO(83, 93, 102, 1),size: 15,),
                              ],
                            ),
                            const SizedBox(height: 20,),
                            const Divider(color: Color.fromRGBO(237, 239, 246, 1),height: 1,),
                          ],
                          
                          );
                        }
                      ),
                    )
            ]
            
                    )
                    )
      )
                      );
  }         
}