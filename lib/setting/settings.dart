import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/setting/show_language_bottom_sheet.dart';
import 'package:islami/setting/show_theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Container(

      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: Text(provider.Language=="en"?"Englage":"Arabic",style: TextStyle(color: Colors.black)),
            ),
          ),
          SizedBox(height: 30,),
          Text(
            "Theme",
            style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                  border:
                  Border.all(color: Theme.of(context).colorScheme.primary),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: Text(provider.themeMode==ThemeMode.light?"Light":"Dark",style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
    );
  }
void showLanguageBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (c){
return LanguageBottomSheet();
    });
}
  void showThemeBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (c){
      return ThemeBottomSheet();
    });
  }
}
