import 'package:admin/constants.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/my_files.dart';
import 'components/rescent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      RecentFiles(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(
                  context,
                ))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(
                  context,
                ))
                  Expanded(
                    flex: 2,
                    child: StorageDetail(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}