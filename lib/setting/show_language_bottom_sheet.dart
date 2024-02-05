import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage("en");
                Navigator.pop(context);
              },
              child: LanguageItem(context, "English", provider.Language=="en" )),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                provider.changeLanguage("ar");
                Navigator.pop(context);
              },
              child: LanguageItem(context, "Arabic", provider.Language=="ar")),
        ],
      ),
    );
  }

  Widget LanguageItem(BuildContext context, String text, bool isSelected) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.secondary,
                fontSize: 20),
          ),
          Icon(
            Icons.done,
            color: isSelected
                ? Theme.of(context).primaryColor
                : Theme.of(context).colorScheme.secondary,
          )
        ],
      );
}
