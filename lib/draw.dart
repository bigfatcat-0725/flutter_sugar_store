import 'package:flutter/material.dart';
import 'package:flutter_sugar/splash.dart';

class Draw extends StatelessWidget {
  const Draw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Row(children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('My Orders')
              ]),
              textColor: Colors.white,
              onTap: () {},
            ),
            ListTile(
              title: Row(children: [
                Icon(
                  Icons.description_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Feedback')
              ]),
              textColor: Colors.white,
              onTap: () {},
            ),
            ListTile(
              title: Row(children: [
                Icon(
                  Icons.near_me_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Stores Near You')
              ]),
              textColor: Colors.white,
              onTap: () {},
            ),
            ListTile(
              title: Row(children: [
                Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Settings')
              ]),
              textColor: Colors.white,
              onTap: () {},
            ),
            ListTile(
              title: Row(children: [
                Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Log Out')
              ]),
              textColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Splash(),
                  ),
                );
              },
            ),
          ],
        ),
        backgroundColor: Color(0xFFFF91A4),
      ),
    );
  }
}
