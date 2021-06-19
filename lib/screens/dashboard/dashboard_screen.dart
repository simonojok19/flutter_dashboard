import 'package:admin/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/chart.dart';
import 'components/header.dart';

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
                  child: Container(
                    height: 500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
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
                          "Storage Details",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        SizedBox(
                          height: 200,
                          child: Chart(),
                        ),
                        StorageInfoCard(
                          svgSrc: "assets/icons/Documents.svg",
                          title: "Document Files",
                          files: "1.3 GB",
                          numFiles: 1328,
                        ),
                        StorageInfoCard(
                          svgSrc: "assets/icons/media.svg",
                          title: "Media Files",
                          files: "15 GB",
                          numFiles: 108,
                        ),
                        StorageInfoCard(
                          svgSrc: "assets/icons/folder.svg",
                          title: "Other Files",
                          files: "8.3 GB",
                          numFiles: 1328,
                        ),
                        StorageInfoCard(
                          svgSrc: "assets/icons/unknown.svg",
                          title: "Unknown",
                          files: "10 MB",
                          numFiles: 140,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StorageInfoCard extends StatelessWidget {
  final String title;
  final String svgSrc;
  final files;
  final int numFiles;

  const StorageInfoCard({
    Key key,
    @required this.title,
    @required this.svgSrc,
    @required this.files,
    @required this.numFiles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding,),
      padding: EdgeInsets.all(
        defaultPadding,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(
            0.15,
          ),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            defaultPadding,
          ),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              svgSrc,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$numFiles Files",
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text(files)
        ],
      ),
    );
  }
}
