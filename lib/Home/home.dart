import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Home/tabs/ahadeth/hadeth.dart';
import 'package:islami/Home/tabs/quran/quran.dart';
import 'package:islami/Home/tabs/radio/radio.dart';
import 'package:islami/Home/tabs/sebha/sebha.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/setting/settings.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.getBackground(),
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islami",
              style: TextStyle(color: Color.fromRGBO(183, 147, 95, 1.0),fontSize: 25,fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/quran.png")),
                    label: "Quran",
                    backgroundColor: MyThemeData.colorGold),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
                    label: "Hadeth", backgroundColor: MyThemeData.colorGold),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                    label: "Sebha", backgroundColor: MyThemeData.colorGold),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio.png",)),
                    label: "Radio", backgroundColor: MyThemeData.colorGold),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "Setting", backgroundColor: MyThemeData.colorGold),
              ]),
          body:tabs[currentIndex] ,
        ),
      ],
    );
  }
  List<Widget>tabs=[
QuranScreen(),
    AhadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    SettingTab()
  ];
}
