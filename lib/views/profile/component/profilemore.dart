import 'package:flutter/material.dart';

class profileMore extends StatelessWidget {
  const profileMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 35,
          width: 700,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              "See more",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          children: [
            Icon(Icons.handshake),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(
                "Community resources",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_drop_down)
          ],
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          children: [
            Icon(Icons.question_mark_rounded),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(
                "Help & support",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_drop_down)
          ],
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          children: [
            Icon(Icons.settings),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(
                " Settings & Privacy",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_drop_down)
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 700,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.3)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Log out",
            style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        )
      ],
    );
  }
}
