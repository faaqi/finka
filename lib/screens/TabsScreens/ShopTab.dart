import 'package:flutter/material.dart';

class ShopTab extends StatefulWidget {
  final BuildContext? menuScreenContext;
  final Function? onScreenHideButtonPressed;
  final bool? hideStatus;
  const ShopTab(
      {Key? key,
      this.menuScreenContext,
      this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  _ShopTabState createState() => _ShopTabState();
}

class _ShopTabState extends State<ShopTab> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
