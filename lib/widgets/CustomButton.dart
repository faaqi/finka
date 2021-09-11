import 'package:finka/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPress;
  final Color? color;

  const CustomButton({Key? key, this.title, this.onPress, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.0.w,
      ),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          side: BorderSide(
            width: 0,
            color: blueColor,
          ),
          elevation: 0,
          padding: EdgeInsets.symmetric(
            vertical: 2.5.h,
          ),
          backgroundColor: color ?? blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
        onPressed: onPress,
        child: Text(
          '$title',
          style: TextStyle(
            fontSize: 12.0.sp,
          ),
        ),
      ),
    );
  }
}

class OutlineCustomButton extends StatefulWidget {
  final height;
  final width;
  final hMargin;
  final onpress;
  final fontSize;
  final String? title;
  OutlineCustomButton({
    Key? key,
    this.height,
    this.width,
    this.onpress,
    this.fontSize,
    this.hMargin,
    this.title,
  }) : super(key: key);

  @override
  _OutlineCustomButtonState createState() => _OutlineCustomButtonState();
}

class _OutlineCustomButtonState extends State<OutlineCustomButton> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return Center(
        child: InkWell(
          onTap: widget.onpress,
          child: Container(
            child: Center(
              child: Text(
                '${widget.title}',
                style: TextStyle(
                    fontSize: widget.fontSize ?? 12.0.sp, color: blueColor),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: widget.hMargin),
            height: widget.height,
            width: widget.width,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                side: BorderSide(width: 2, color: blueColor),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class CustomButton2 extends StatefulWidget {
  final height;
  final width;
  final hMargin;
  final onpress;
  final String? title;
  final Color? color;
  final double? fontSize;
  final borderRadius;
  final fontWeight;
  final textColor;
  CustomButton2(
      {Key? key,
      this.height,
      this.width,
      this.onpress,
      this.hMargin,
      this.title,
      this.color,
      this.fontSize,
      this.borderRadius,
      this.fontWeight,
      this.textColor})
      : super(key: key);

  @override
  _CustomButton2State createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return InkWell(
        onTap: widget.onpress,
        child: Container(
          child: Center(
            child: Text(
              '${widget.title}',
              style: TextStyle(
                fontSize: widget.fontSize ?? 11.0.sp,
                color: widget.textColor ?? Colors.white,
                fontFamily: 'Avenir-Black',
                fontWeight: widget.fontWeight ?? FontWeight.normal,
              ),
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: widget.hMargin),
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.0.w),
              color: widget.color ?? blueColor),
        ),
      );
    });
  }
}
