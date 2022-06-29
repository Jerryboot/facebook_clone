import 'package:fbclone/constants/shortcutlist.dart';
import 'package:flutter/material.dart';

import '../../../constants/shortcuticonslist.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData? icon;
//final String text;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        childAspectRatio: 1.9,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        children: List.generate(
          8,
          (index) => Container(
            margin: EdgeInsets.all(10),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Visibility(
                // visible: icon != null,
                //   child: Icon(icon,
                //       size: 20,
                //   ),
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      color: Colors.blue,
                      iconList.elementAt(index),
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(profileList.elementAt(index)),
                    ),
                  ],
                ),
              ],
            ),

            // height: 70,
            width: 170,
          ),
        ));
  }
}
