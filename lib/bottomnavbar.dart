import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:wallet_app_ui/provider/bottomnavbar_provider.dart";
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (context, provider, child) {
        return Scaffold(
        body: IndexedStack(
          
          index: provider.selectedTab,
          children: provider.pages,
        ), 
        
       
        bottomNavigationBar:BottomNavigationBar(
      
          currentIndex: provider.selectedTab,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Color.fromRGBO(111, 69, 233, 1),),

          onTap: (index) {
           provider.changeTab(index);
          },
      
          items:  [
              const BottomNavigationBarItem(
                icon:Icon(Icons.home),    
                label: "Home"
              ),
              const BottomNavigationBarItem(
                icon:Icon(Icons.description_outlined),
                label: "History"
              ),
              const BottomNavigationBarItem(
                icon:Icon(Icons.credit_card_outlined),
                label: "Cards"
              ),
              BottomNavigationBarItem(
              icon: Image.asset("assets/img/more.png"),
                label: "More"
              ),
            ],
        ),
        );
      },
    );
  }
}
