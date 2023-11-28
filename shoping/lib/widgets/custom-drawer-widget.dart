import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class DrawerWidgrt extends StatefulWidget {
  const DrawerWidgrt({super.key});

  @override
  State<DrawerWidgrt> createState() => _DrawerWidgrtState();
}

class _DrawerWidgrtState extends State<DrawerWidgrt> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        top: Size.height / 25,
      ),
      child: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        ),

        child: Wrap(
          runSpacing: 10,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
              child: ListTile(
                TitleAlignment:,
              ),
            ),
          ],
        ),

      ),
    );
  }
}
