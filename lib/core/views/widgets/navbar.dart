import 'package:flutter/material.dart';

import '../../../helper/storage_helper.dart';

class NavBar extends StatelessWidget {
   NavBar({super.key});

  @override
   StorageHelper storageHelper=StorageHelper.instance;
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
             // image: DecorationImage(image: AssetImage('assets/images/image_backgraond.jpeg')),
            ),
            accountName: Text(storageHelper.readKey("name")),
            accountEmail: Text(storageHelper.readKey("email")),
            currentAccountPicture: CircleAvatar(
              //child: Image.asset(''),
            ),
          ),
        ],
      ),
    );
  }
}
