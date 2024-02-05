import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/models/hadeth_detials.dart';
import 'package:islami/my_theme.dart';

class HadethDetials extends StatelessWidget {
  static const String routeName = "hadethDetials";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as HadethModelArg;
    return Stack(children: [
      Image.asset(
      "assets/images/main_bg.png",
      width: double.infinity,
      fit: BoxFit.fitWidth,
    ),
    Scaffold(
    appBar: AppBar(
    title: Text(
    args.title,
    style: Theme.of(context).textTheme.bodyLarge,
    ),
    centerTitle: true,
    ),
    body: ListView.builder(
      itemCount: args.content.length,
    itemBuilder: (context,index){
      return Text(args.content[index],
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: MyThemeData.colorBlack),textAlign: TextAlign.center,
      );
    }),
    )
    ]);
    }
  }
