import 'package:flutter/material.dart';
import 'package:islami/Home/home.dart';
import 'package:islami/Home/tabs/ahadeth/Hadeth_content.dart';
import 'package:islami/Home/tabs/quran/sura_view.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context)=>MyProvider(),
      child: MyAplication(),
    );
  }

}
class MyAplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: [
        // AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('ar')],
      locale: Locale(provider.Language),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),
        HadethDetials.routeName:(context)=>HadethDetials()},
      theme:MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
    );
  }
  
}
