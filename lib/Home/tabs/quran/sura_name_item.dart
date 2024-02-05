import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Home/tabs/quran/sura_view.dart';

import '../../../models/sura_details.dart';

class SuraNameItem extends StatelessWidget {
  String suraName;
int index;
  SuraNameItem(this.suraName,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.pushNamed(context, SuraDetails.routeName,arguments:SuraDetailsArg(suraName,index));
      },
      child: Center(
          child: Text(
        suraName,
        style: TextStyle(color:Color.fromRGBO(183, 147, 95, 1.0),fontSize: 25),
      )),
    );
  }
}
