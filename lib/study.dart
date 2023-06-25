import 'package:flutter/material.dart';

class PinnedTabBarScreen extends StatefulWidget {
  @override
  _PinnedTabBarScreenState createState() => _PinnedTabBarScreenState();
}

class _PinnedTabBarScreenState extends State<PinnedTabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _tabs = ['Overview', 'Photos', 'About'];
  final List<Widget> _tabChildren = [
    Container(
      color: Colors.green,
      height: 100,
    ),
    Container(
      color: Colors.blue,
      height: 700,
    ),
    Container(
      color: Colors.orange,
      height: 500,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange(int index) {
    setState(() {
      _tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps'),
      ),
      body: Stack(
        children: [
          TabBarView(
            controller: _tabController,
            children: _tabChildren,
          ),
          Positioned(
            top: _tabController.index > 0 ? 0.0 : null,
            child: Container(
              color: Colors.grey[300],
              child: TabBar(
                controller: _tabController,
                tabs: _tabs.map((String tab) => Tab(text: tab)).toList(),
                onTap: _handleTabChange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
