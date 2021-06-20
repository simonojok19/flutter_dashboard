import 'package:admin/models/MyFiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5, vertical: defaultPadding),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text(
                "Add New",
              ),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiels.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) => FileInfoCard(
            info: demoMyFiels[index],
          ),
        ),
      ],
    );
  }
}

class FileInfoCard extends StatelessWidget {
  final CloudStorageInfo info;
  const FileInfoCard({
    Key key,
    @required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75,),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
                child: SvgPicture.asset(
                  info.svgSrc,
                  color: info.color,
                ),
              ),
              Icon(Icons.more, color: Colors.white54,)
            ],
          )
        ],
      ),
    );
  }
}
