import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

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
provider.changeTheme(ThemeMode.light);
              },
              child: ThemeItem(context, "Light", provider.themeMode== ThemeMode.light)),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);

              },
              child: ThemeItem(context, "Dark", provider.themeMode== ThemeMode.dark)),
        ],
      ),
    );
  }

  Widget ThemeItem(BuildContext context, String text, bool isSelected) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: isSelected
                    ? Color.fromRGBO(183, 147, 95, 1.0)
                    :  Color.fromRGBO(15, 20, 36, 1.0),
                fontSize: 20),
          ),
          Icon(
            Icons.done,
            color: isSelected
                ? Color.fromRGBO(183, 147, 95, 1.0)
                :  Color.fromRGBO(15, 20, 36, 1.0),
          )
        ],
      );
}
