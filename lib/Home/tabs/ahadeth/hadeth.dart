import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/hadeth_detials.dart';
import '../../../my_theme.dart';
import 'hadeth_item.dart';

class AhadethScreen extends StatefulWidget {
  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
  List<HadethModelArg> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Ahadeth.isEmpty) {
      loadHadeth();
    }

    return Column(
      children: [
        Image.asset("assets/images/hadeth_main_bg.png"),
        Divider(
          thickness: 2,
          color: MyThemeData.colorGold,
        ),
        Text(
          "الاحاديث",
          style: Theme
              .of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: MyThemeData.colorGold),
        ),
        Divider(thickness: 2, color: MyThemeData.colorGold),
        Expanded(
          child: Ahadeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
              separatorBuilder: (context, index) =>
                  Divider(
                    color: MyThemeData.colorGold,
                    indent: 30,
                    endIndent: 30,
                  ),
              itemCount: Ahadeth.length,
              itemBuilder: (context, index) {
                return AhadethNameItem(Ahadeth[index].title,Ahadeth[index]);
              }),
        )
      ],
    );
  }

  void loadHadeth() async {
    //   rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
    //     List<String> AhadethContent = value.trim().split("#");
    //     for (int i = 0; i < AhadethContent.length; i++) {
    //       int lastIndex = AhadethContent[i].trim().indexOf("\n");
    //       String title = AhadethContent[i].trim().substring(0, lastIndex);
    //       print(title);
    //       String content = AhadethContent[i].trim().substring(lastIndex + 1);
    //       HadethModelArg hadethModel =
    //           HadethModelArg(title, content as List<String>);
    //       Ahadeth.add(hadethModel);
    //     }
    //     setState(() {});
    //   }).catchError((error) {
    //     print(error);
    //   });
    // }
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> AllHadeth = content.trim().split("#");
    for (int i = 0; i <= AllHadeth.length; i++) {
      String hadeth = AllHadeth[i];
      print(hadeth);
      print("---------------------");
      List<String> HadethLine = hadeth.trim().split("\n");
      String title = HadethLine[0];
      print(title);
      HadethLine.removeAt(0);
      HadethModelArg HadethData = HadethModelArg(title, HadethLine);
      Ahadeth.add(HadethData);
      print(HadethLine);
      setState(() {});
    }
  }
}