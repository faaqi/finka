import 'package:flutter/material.dart';

class RewardsTab extends StatefulWidget {
  final BuildContext? menuScreenContext;
  final Function? onScreenHideButtonPressed;
  final bool? hideStatus;
  const RewardsTab(
      {Key? key,
      this.menuScreenContext,
      this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  _RewardsTabState createState() => _RewardsTabState();
}

class _RewardsTabState extends State<RewardsTab> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
