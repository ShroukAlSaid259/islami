import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Home/tabs/ahadeth/Hadeth_content.dart';

import '../../../models/hadeth_detials.dart';

class AhadethNameItem extends StatelessWidget {
  String name;
  HadethModelArg hadethModelArg;
  AhadethNameItem(this.name,this.hadethModelArg);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.pushNamed(context, HadethDetials.routeName,arguments: hadethModelArg);
      },
      child: Center(
          child: Text(
        name,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 25),
      )),
    );
  }
}
