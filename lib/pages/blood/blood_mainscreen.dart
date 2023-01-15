import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';  //https://pub.dev/packages/nb_utils

class BloodMain extends StatefulWidget {

  @override
  BloodMainState createState() => BloodMainState();
}

class BloodMainState extends State<BloodMain> {
  List<user> userdetails = [
    user(
      name: 'Maruf A.',
      group: 'O+',
      phone: '292992',
      address: 'Baridhara,Dhaka',
    ),   user(
      name: 'Murto',
      group: 'O+',
      phone: '292992',
      address: 'Baridhara,Dhaka',
    ),   user(
      name: 'Maruf A.',
      group: 'O+',
      phone: '292992',
      address: 'Baridhara,Dhaka',
    ),   user(
      name: 'Maruf A.',
      group: 'O+',
      phone: '292992',
      address: 'Baridhara,Dhaka',
    ),   user(
      name: 'Maruf A.',
      group: 'O+',
      phone: '292992',
      address: 'Baridhara,Dhaka',
    ),   user(
      name: 'Maruf A.',
      group: 'O+',
      phone: '292992',
      address: 'Baridhara,Dhaka',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    Widget mHeading(var value) {
      return Text(value, style: boldTextStyle());
    }

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(5),
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Text('Swipe right or Landscape your device for full view', style: boldTextStyle()).paddingBottom(3),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(label: mHeading('Name')),
                  DataColumn(label: mHeading('Group')),
                  DataColumn(label: mHeading('Phone')),
                  DataColumn(label: mHeading('Address')),
                ],
                rows: userdetails
                    .map(
                      (data) => DataRow(
                    cells: [
                      DataCell(Text(data.name!, style: secondaryTextStyle())),
                      DataCell(Text(data.group!, style: secondaryTextStyle())),
                      DataCell(Text(data.phone!, style: secondaryTextStyle())),
                      DataCell(Text(data.address!, style: secondaryTextStyle())),
                    ],
                  ),
                )
                    .toList(),
              ).visible(userdetails.isNotEmpty),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class user {
  String? name;
  String? group;
  String? phone;
  String? address;

  user({ this.name, this.group, this.phone, this.address});
}