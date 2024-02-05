import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/sura_details.dart';
import 'package:islami/my_theme.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "suraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    if(verses.isEmpty){
      loadFiles(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          "assets/images/main_bg.png",
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              args.suraName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Center(
                child: ListView.separated(
                            separatorBuilder: (context,index)=>Divider(color: MyThemeData.colorGold,indent: 30,endIndent: 30,),
                itemCount: verses.length,
                itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(width: 2.0)),
                        child: Text(verses[index],style: TextStyle(color: MyThemeData.colorBlack,fontSize: 25,letterSpacing: .45),textAlign: TextAlign.center,));
                  }),
              ),
        ),
      ],
    );
  }

  void loadFiles(int index) async {
    String content =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = content.split("\n");
    verses = lines;
    setState(() {});
  }
}
