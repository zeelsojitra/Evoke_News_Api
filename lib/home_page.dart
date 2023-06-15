import 'package:evoke_new_api/view/Home_screen.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selected = 0;
  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 24,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
                color: Colors.grey,
                size: 25,
              ))
        ],
        title: Center(
          child: Image.asset(
            'assert/image/news_logo.png',
            height: height * 0.1,
            width: width * 0.41,
          ),
        ),
        bottom: TabBar(
          controller: tabController,
          labelPadding: EdgeInsets.symmetric(vertical: 10),
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          tabs: [
            Text(
              'HOME',
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              'NEWS',
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              'SHOWBIZ',
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              'EXTRA',
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              'STYLE',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Home_Scrren(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ],
      ),
    );
  }
}
