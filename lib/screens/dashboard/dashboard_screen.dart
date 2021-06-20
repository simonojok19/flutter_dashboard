import 'package:admin/constants.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/header.dart';
import 'components/my_files.dart';
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
                  child: RecentFiles(),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
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

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

DataRow recentFileDataRow(RecentFile file) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              file.icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Text(file.title,),
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          file.date,
        ),
      ),
      DataCell(
        Text(
          file.size,
        ),
      ),
    ],
  );
}
