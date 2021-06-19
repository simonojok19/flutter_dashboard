import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    DrawerHeader(
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    ListTile(
                      onTap: () {},
                      horizontalTitleGap: 0.0,
                      leading: SvgPicture.asset(
                        "assets/icons/menu_dashbord.svg",
                        color: Colors.white54,
                        height: 16,
                      ),
                      title: Text("Dashboard", style: TextStyle(
                        color: Colors.white54
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
