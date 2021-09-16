import 'package:cached_network_image/cached_network_image.dart';
import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _MainScreen3State createState() => _MainScreen3State();
}

class _MainScreen3State extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints size) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 7.w,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 1,
          title: Text(
            'Notifications',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 12.0.sp),
          ),
        ),
        body: Container(
          height: size.maxHeight,
          width: size.maxWidth,
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.0.w,
                    vertical: 1.0.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  NotificationWidget(
                                    notificationType: index % 4,
                                    friendImageUrl:
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyvHGp14CvJyWf53Q0HzXgv4vfI8b-z3cfdA&usqp=CAU",
                                    status: 0,
                                    onFriendAccept: () {},
                                    onFriendDecline: () {},
                                    text:
                                        "Arham invited to start saving for Higher education",
                                    time: "1d",
                                  ),
                                  Divider(),
                                ],
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class NotificationWidget extends StatefulWidget {
  final text;
  final time;
  final friendImageUrl;
  final onFriendAccept;
  final onFriendDecline;
  final notificationType;
  final status;

  const NotificationWidget(
      {Key? key,
      this.text,
      this.time,
      this.friendImageUrl,
      this.onFriendAccept,
      this.onFriendDecline,
      this.notificationType,
      this.status})
      : super(key: key);

  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 0.5.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.translate(
            offset: Offset(0, 0),
            child: Container(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(
                      widget.friendImageUrl != null ? 0.0.w : 1.0.w),
                  child: widget.friendImageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: widget.friendImageUrl,
                          fit: BoxFit.cover,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            width: 12.0.h,
                            height: 12.0.h,
                            child: Image.asset(
                              'assets/images/pic.jpg',
                            ),
                          ),
                        )
                      : Image.asset('assets/images/download.jpg'),
                ),
              ),
              height: 5.0.h,
              width: 10.0.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.greenAccent),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 3.0.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.text}',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.0.sp,
                    ),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Text(
                    '${widget.time}',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 9.0.sp,
                    ),
                  ),
                  widget.notificationType == 3
                      ? Container()
                      : SizedBox(
                          height: 1.5.h,
                        ),
                  widget.notificationType == 3
                      ? Container()
                      : widget.status == 2 && widget.notificationType == 1
                          ? Text(
                              'You are now friends',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.0.sp,
                              ),
                            )
                          : widget.status == 3 && widget.notificationType == 1
                              ? Text(
                                  'You declined the friend request',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10.0.sp,
                                  ),
                                )
                              : widget.status == 4 &&
                                      widget.notificationType == 2
                                  ? Text(
                                      'You accepted the invite',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10.0.sp,
                                      ),
                                    )
                                  : widget.status == 5 &&
                                          widget.notificationType == 2
                                      ? Text(
                                          'You declined the invite',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10.0.sp,
                                          ),
                                        )
                                      : Row(
                                          children: [
                                            CustomButton2(
                                              title: widget.notificationType < 3
                                                  ? 'Accept'
                                                  : 'Yes',
                                              height: 4.5.h,
                                              width: 20.0.w,
                                              onpress: widget.onFriendAccept,
                                              hMargin: 0.0.w,
                                              color: purpleColor,
                                            ),
                                            SizedBox(
                                              width: 3.0.w,
                                            ),
                                            widget.notificationType == 3
                                                ? Container()
                                                : OutlineCustomButton(
                                                    title:
                                                        widget.notificationType <
                                                                3
                                                            ? 'Decline'
                                                            : 'No',
                                                    onpress:
                                                        widget.onFriendDecline,
                                                    height: 4.5.h,
                                                    width: 20.0.w,
                                                    hMargin: 0.0.w,
                                                  ),
                                          ],
                                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
