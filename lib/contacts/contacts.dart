import 'package:flutter/material.dart';
import 'contact_sider_list.dart';
import 'contact_header.dart';
import 'contact_item.dart';
import 'contact_vo.dart';

class Contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

class ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ContractSliderList(
        items: contactData,
        headBuilder: (context, index) {
          return Container(
            child: ContactHeader(),
          );
        },
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(
              contactVO: contactData[index],
            ),
          );
        },
        sectionBuilder: (context, index) {
          return Container(
            height: 32,
            padding: EdgeInsets.only(left: 14),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            child: Text(
              contactData[index].seationKey,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF909090),
              ),
            ),
          );
        },
      ),
    );
  }
}
