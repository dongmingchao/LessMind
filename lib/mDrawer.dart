import 'package:flutter/material.dart';

class MDrawerItem extends StatelessWidget {
  final String text;
  final Icon icon;

  MDrawerItem(
    this.text, {
    this.icon: const Icon(Icons.settings),
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class MDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      UserAccountsDrawerHeader(
        accountEmail: Text('wo shi Email'),
        accountName: Text('我是Drawer'),
        onDetailsPressed: () {},
        currentAccountPicture: CircleAvatar(),
      ),
      MDrawerItem('云端', icon: Icon(Icons.cloud)),
      Divider(),
      MDrawerItem('收藏', icon: Icon(Icons.star)),
      Divider(),
      MDrawerItem('草稿', icon: Icon(Icons.drafts)),
      Divider(),
      MDrawerItem('设置'),
    ]));
  }
}
