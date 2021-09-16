import 'TabsScreens/ChatsTab.dart';
import 'TabsScreens/HomeTab/HomeTab.dart';
import 'package:Kollektivet/screens/TabsScreens/ShopTab.dart';
import 'TabsScreens/ProfileTab.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CustomNavBarWidget extends StatelessWidget {
  final int? selectedIndex;
  final List<BottomIcon>? items;
  final ValueChanged<int>? onItemSelected;

  CustomNavBarWidget(
      {Key? key,
      this.selectedIndex,
      @required this.items,
      this.onItemSelected});

  BottomIcon _buildItem(BottomIcon item, bool isSelected) {
    return BottomIcon(
      unselectedImage: item.unselectedImage,
      selectedImage: item.selectedImage,
      isSelected: isSelected,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: double.infinity,
        height: kBottomNavigationBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: (items)!.map((item) {
            int index = items!.indexOf(item);
            return Flexible(
              child: GestureDetector(
                onTap: () {
                  this.onItemSelected!(index);
                },
                child: _buildItem(item, selectedIndex == index),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class BottomIcon extends StatefulWidget {
  String? unselectedImage;
  String? selectedImage;
  bool? isSelected;

  BottomIcon({this.selectedImage, this.unselectedImage, this.isSelected});

  @override
  _BottomIconState createState() => _BottomIconState();
}

class _BottomIconState extends State<BottomIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15.0.w,
      height: 3.0.h,
      child: widget.isSelected!
          ? Image.asset(widget.selectedImage!)
          : Image.asset(widget.unselectedImage!),
    );
  }
}

class HomeBottomTabs extends StatefulWidget {
  final BuildContext? menuScreenContext;
  int index;
  HomeBottomTabs({
    Key? key,
    this.menuScreenContext,
    this.index = 0,
  }) : super(key: key);

  @override
  _HomeBottomTabsState createState() => _HomeBottomTabsState();
}

class _HomeBottomTabsState extends State<HomeBottomTabs> {
  PersistentTabController? _controller;
  bool? _hideNavBar;
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    _controller = PersistentTabController(initialIndex: widget.index);

    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      HomeTab(
        menuScreenContext: widget.menuScreenContext,
        hideStatus: _hideNavBar,
        onScreenHideButtonPressed: () {
          // setState(() {
          //   _hideNavBar = !_hideNavBar;
          // });
        },
      ),
      ChatsTab(
        menuScreenContext: widget.menuScreenContext,
        hideStatus: _hideNavBar,
        onScreenHideButtonPressed: () {
          // setState(() {
          //   _hideNavBar = !_hideNavBar;
          // });
        },
      ),
      ShopTab(
        menuScreenContext: widget.menuScreenContext,
        hideStatus: _hideNavBar,
        onScreenHideButtonPressed: () {
          // setState(() {
          //   _hideNavBar = !_hideNavBar;
          // });
        },
      ),
      ProfileTab(
        menuScreenContext: widget.menuScreenContext,
        hideStatus: _hideNavBar,
        onScreenHideButtonPressed: () {
          // setState(() {
          //   _hideNavBar = !_hideNavBar;
          // });
        },
      ),
    ];
  }

  List<BottomIcon> bottomItems() {
    return [
      BottomIcon(
        isSelected: false,
        unselectedImage: 'assets/bottomIcons/home_unselected.png',
        selectedImage: 'assets/bottomIcons/home_selected.png',
      ),
      BottomIcon(
        isSelected: false,
        unselectedImage: 'assets/bottomIcons/chat_icon_unselected.png',
        selectedImage: 'assets/bottomIcons/chat_icon_selected.png',
      ),
      BottomIcon(
        isSelected: false,
        unselectedImage: 'assets/bottomIcons/fvrt_icon_unselected.png',
        selectedImage: 'assets/bottomIcons/fvrt_icon_selected.png',
      ),
      BottomIcon(
        isSelected: false,
        unselectedImage: 'assets/bottomIcons/profile_unselected.png',
        selectedImage: 'assets/bottomIcons/profile_unselected.png',
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: ("Rewards"),
        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add),
        title: ("Shop"),
        activeColorPrimary: Colors.deepOrange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: ("Profile"),
        activeColorPrimary: Colors.indigo,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: scaffoldkey,
      backgroundColor: Colors.white,
      body: Stack(children: [
        PersistentTabView.custom(
          context,
          controller: _controller,
          screens: _buildScreens(),
          confineInSafeArea: true,
          itemCount: 4,
          handleAndroidBackButtonPress: true,
          stateManagement: true,
          hideNavigationBar: _hideNavBar,
          screenTransitionAnimation: ScreenTransitionAnimation(
            animateTabTransition: false,
            curve: Curves.ease,
            duration: Duration(milliseconds: 300),
          ),
          customWidget: CustomNavBarWidget(
            key: globalKey,
            items: bottomItems(),
            onItemSelected: (index) {
              setState(() {
                _controller?.index = index;
              });
            },
            selectedIndex: _controller?.index,
          ),
        ),
      ]),
    );
  }
}
