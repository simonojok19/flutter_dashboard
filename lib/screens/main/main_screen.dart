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
              child: Drawer(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DrawerHeader(
                        child: Image.asset("assets/images/logo.png"),
                      ),
                      DrawerListTile(
                        svgSrc: "assets/icons/menu_dashbord.svg",
                        title: "Dashboard",
                        onTap: () {},
                      ),
                      DrawerListTile(
                        svgSrc: "assets/icons/menu_tran.svg",
                        title: "Transaction",
                        onTap: () {},
                      ),
                      DrawerListTile(
                        svgSrc: "assets/icons/menu_task.svg",
                        title: "Task",
                        onTap: () {},
                      ),
                      DrawerListTile(
                        svgSrc: "assets/icons/menu_store.svg",
                        title: "Store",
                        onTap: () {},
                      ),
                      DrawerListTile(
                        svgSrc: "assets/icons/menu_notification.svg",
                        title: "Notification",
                        onTap: () {},
                      ),
                      DrawerListTile(
                        svgSrc: "assets/icons/menu_profile.svg",
                        title: "Profile",
                        onTap: () {},
                      ),
                      DrawerListTile(
                        svgSrc: "assets/icons/menu_setting.svg",
                        title: "Settings",
                        onTap: () {},
                      ),
                    ],
                  ),
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

class DrawerListTile extends StatelessWidget {
  final String title;
  final String svgSrc;
  final VoidCallback onTap;
  const DrawerListTile({
    Key key,
    @required this.title,
    @required this.svgSrc,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
