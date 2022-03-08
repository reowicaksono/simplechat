import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simplechat/app/data/utils/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController homeController = Get.put(HomeController());
  List<Widget> tabs = [
   Center(child: Text("Chats")),
   Center(child: Text("Informs")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(edge * 5),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: edge * 2.3),
                  Text(
                    'Simple Chat',
                    style: BlackText.copyWith(
                        fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: edge * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: edge,
                      ),
                      GestureDetector(
                        onTap: () => homeController.changePage(0),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.chat_bubble_2_fill, color: WarnaBiru,),
                            SizedBox(width: 5),
                            Text(
                              "Chats",
                              style: BlackText.copyWith(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: edge,
                      ),
                      GestureDetector(
                        onTap: () => homeController.changePage(1),
                        child: Row(
                          children: [
                            Icon(Icons.notifications_active_rounded, color: Colors.amber,),
                            SizedBox(width: 5),
                            Text(
                              "Inform",
                              style: BlackText.copyWith(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: edge,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          backgroundColor: WarnaPutih,
          shadowColor: Colors.grey,
        ),
      ),
      body: tabs[homeController.currentPage],
    );
  }
}