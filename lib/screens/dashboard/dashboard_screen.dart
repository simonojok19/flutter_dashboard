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
                      Container(
                        padding: EdgeInsets.all(
                          defaultPadding,
                        ),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Recent Files",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: DataTable(
                                horizontalMargin: 0,
                                columnSpacing: defaultPadding,
                                columns: [
                                  DataColumn(
                                    label: Text(
                                      "File Name",
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text(
                                      "Date",
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text(
                                      "Size",
                                    ),
                                  ),
                                ],
                                rows: List.generate(
                                  demoRecentFiles.length,
                                      (index) => recentFileDataRow(
                                    demoRecentFiles[index],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
