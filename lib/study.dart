import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/Manage%20Ev/Select_Vehicle.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/Wallet/Wallet.dart';
import 'User/Formscreens/Homescreen/Offers/Offers.dart';

class PinnedTabBarScreen extends StatefulWidget {
  const PinnedTabBarScreen({Key? key}) : super(key: key);

  @override
  _PinnedTabBarScreenState createState() => _PinnedTabBarScreenState();
}

class _PinnedTabBarScreenState extends State<PinnedTabBarScreen> with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController _tabController;
  int _currentIndex = 0;
  double _bottomSheetHeight = 0.5;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    _tabController.removeListener(_handleTabSelection);
    super.dispose();
  }

  void _handleTabSelection() {
    setState(() {
      
      if (_currentIndex == 0) {
        _bottomSheetHeight = 1.0;
      } else {
        _bottomSheetHeight = 0.5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: DraggableScrollableSheet(
                initialChildSize: _bottomSheetHeight,
                minChildSize: 0.5,
                maxChildSize: 1.0,
                builder: (BuildContext context, ScrollController? scrollController) {
                  _scrollController = scrollController!;
                  return Column(
                    children: [
                      TabBar( indicatorColor: Colors.blueAccent,
                        dividerColor: Colors.red,
                    
                        controller: _tabController,
                        labelColor: Colors.blue,
                        tabs: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                // _tabController.index = 0; // Select Tab One
                                _currentIndex = 0;
                                _bottomSheetHeight = 1.0; // Set bottom sheet height to 1
                              });
                            },
                            child: Tab(
                              icon: Icon(Icons.looks_one, color: Colors.red),
                              text: 'Tab One',
                            ),
                          ),
                          GestureDetector(
                            onTap:(){
                            setState(() {
                                if (_currentIndex == 1) {
  _bottomSheetHeight = 1.0;
}                 });
                            } ,
                            child: Tab(
                              icon: Icon(Icons.looks_two, color: Colors.red),
                              text: 'Tab Two',
                            ),
                          ),
                          GestureDetector(onTap: (){
                          setState(() {
                              if (_currentIndex == 2) {
  _bottomSheetHeight = 1.0;
} 
                          });
                          },
                            child: Tab(
                              icon: Icon(Icons.looks_3, color: Colors.red),
                              text: 'Tab Three',
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Offers(),
                            WAllet(),
                            SelectVehicle(),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
