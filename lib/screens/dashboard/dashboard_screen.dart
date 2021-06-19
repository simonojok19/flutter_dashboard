import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Dashboard",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Spacer(),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: secondaryColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            10,
                          ),
                        ),
                      ),
                      suffixIcon: Container(
                        padding: EdgeInsets.all(
                          defaultPadding * 0.75,
                        ),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            )),
                        child: SvgPicture.asset(
                          "assets/icons/Search.svg",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
