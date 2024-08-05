import "package:flutter/material.dart";
import "package:wallet_app_ui/cards_screen.dart";
import "package:wallet_app_ui/history_screen.dart";
import "package:wallet_app_ui/home_screen.dart";
import "package:wallet_app_ui/more_screen.dart";

class BottomNavBarProvider extends ChangeNotifier{

  int selectedTab = 0;

  final List<Widget> pages = [
    const HomeScreen(),
    const HistoryScreen(),
    const CardsScreen(),
    const MoreScreen(),
    
  ];

   void changeTab(int index) {
      selectedTab = index;
      notifyListeners();
   }
}