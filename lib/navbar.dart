import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Toodmuek'),
            accountEmail: const Text('Toodmuek@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/user.jpg')),
            ),
            decoration: BoxDecoration(
                color: Color.fromRGBO(164, 159, 91, 1),
                image: DecorationImage(
                    image: AssetImage('images/bg1.jpg'), fit: BoxFit.cover)),
          ),
          ListTile(
            title: Text('New arrivals'),
            onTap: () => print('New arrivals'),
          ),
          ListTile(
            title: Text('Brands'),
            onTap: () => print('Brands'),
          ),
          ListTile(
            title: Text('Categories'),
            onTap: () => print('Categories'),
          ),
          ListTile(
            title: Text('Sale'),
            onTap: () => print('Sale'),
          ),
          ListTile(
            title: Text('Log out'),
            onTap: () => print('Log out'),
          ),
        ],
      ),
    );
  }
}
