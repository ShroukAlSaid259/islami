import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Home/tabs/quran/sura_name_item.dart';
import 'package:islami/my_theme.dart';

class QuranScreen extends StatelessWidget {
List<String>suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/quran_main_bg.png"),
        Divider(thickness: 2,color: MyThemeData.colorGold,),
        Text("اسم السورة",style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: MyThemeData.colorGold,fontSize: 20),),
        Divider(thickness: 2,color:MyThemeData.colorGold),
        Expanded(
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 1,
                  color: MyThemeData.colorGold,
                  indent: 25,
                  endIndent: 25,
                );
              },
              itemCount: suraName.length,
              itemBuilder: (context, index) {
                return SuraNameItem(suraName[index],index);
              }),
        )
      ],
    );
  }
}
