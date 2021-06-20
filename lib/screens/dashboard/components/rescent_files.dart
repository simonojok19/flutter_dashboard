import 'package:admin/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'my_files.dart';


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
