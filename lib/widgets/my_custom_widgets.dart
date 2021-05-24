library black_cat_lib;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class MyTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final double? spacing;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  const MyTextWidget(
      {required this.text,
      this.fontSize,
      this.color,
      this.spacing,
      this.fontWeight,
      this.fontFamily,
      this.textStyle,
      this.textAlign});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize ?? 20,
            color: color ?? Colors.white70,
            letterSpacing: spacing ?? 1.0,
            fontWeight: fontWeight ?? FontWeight.normal,
            fontFamily: fontFamily ?? 'OpenSans',
          ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final Function onPressed;
  final String label;
  final String? fontFamily;
  final Color? buttonColor, fontColor;
  final double? height, width, fontSize;
  final FontWeight? fontWeight;

  const DefaultButton(
      {required this.onPressed,
      required this.label,
      this.buttonColor,
      this.width,
      this.height,
      this.fontSize,
      this.fontColor,
      this.fontFamily,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize ?? 15,
          color: fontColor ?? Colors.blueAccent[100],
          fontWeight: fontWeight ?? FontWeight.w200,
          fontFamily: 'Roboto',
        ),
      ),
      onPressed: onPressed as void Function(),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.white24)),
        backgroundColor: buttonColor ?? Colors.black54,
        minimumSize: Size(width ?? double.maxFinite, height ?? 55),
      ),
    );
  }
}

class PullToRefreshPage extends StatelessWidget {
  final Function onRefresh;
  final Widget child;

  const PullToRefreshPage({required this.onRefresh, required this.child});
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh as Future<void> Function(),
      child: child,
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final double? radius, height, width, borderWidth;
  final Color? color;
  final Color? borderColor;
  final Widget? child;

  const RoundedContainer(
      {this.radius,
      this.color,
      this.child,
      this.height,
      this.width,
      this.borderColor,
      this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 12),
        color: color ?? Colors.transparent,
        border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: borderWidth ?? 1.0),
      ),
      child: child,
    );
  }
}

class PartialRoundedContainer extends StatelessWidget {
  final double? topLeft,
      topRight,
      bottomLeft,
      bottomRight,
      height,
      width,
      borderWidth;
  final Color? color;
  final Color? borderColor;
  final Widget? child;

  const PartialRoundedContainer(
      {this.topLeft,
      this.topRight,
      this.bottomLeft,
      this.bottomRight,
      this.height,
      this.width,
      this.borderWidth,
      this.color,
      this.borderColor,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color ?? Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft ?? 10.0),
          topRight: Radius.circular(topRight ?? 10.0),
          bottomLeft: Radius.circular(bottomLeft ?? 0),
          bottomRight: Radius.circular(bottomRight ?? 0),
        ),
        border: Border.all(
            color: borderColor ?? Colors.transparent,
            width: borderWidth ?? 1.0),
      ),
      child: child,
    );
  }
}

class BlurFilter extends StatelessWidget {
  final Widget child;
  final double sigmaX;
  final double sigmaY;
  BlurFilter({required this.child, this.sigmaX = 5.0, this.sigmaY = 5.0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: sigmaX,
              sigmaY: sigmaY,
            ),
            child: Opacity(
              opacity: 0.01,
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  final double? radius;
  final Widget child;
  final Color? color;
  final double? elevation;

  const MyCard({
    this.radius,
    this.color,
    this.elevation,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? Colors.transparent,
      elevation: elevation ?? 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 15),
      ),
      child: child,
    );
  }
}

class MyAssetImage extends StatelessWidget {
  final double? width, height;
  final String path;
  final Color? color;

  const MyAssetImage({this.width, this.height, required this.path, this.color});
  @override
  Widget build(BuildContext context) {
    return Image(
      width: width,
      height: height,
      image: AssetImage(path),
      color: color,
    );
  }
}

class MyImageContainer extends StatelessWidget {
  final Widget child;
  final String imagePath;

  const MyImageContainer({required this.child, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}

class MyToggleSwitch extends StatefulWidget {
  final bool settingsBool;
  final Function onToggle;

  const MyToggleSwitch({required this.settingsBool, required this.onToggle});
  @override
  _MyToggleSwitchState createState() => _MyToggleSwitchState();
}

class _MyToggleSwitchState extends State<MyToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
// value: settingsController.notificationSound,
      value: widget.settingsBool,
      onChanged: (value) {
        setState(() {});
      },
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.green,
    );
  }
}

class LoginButtonWithIcon extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Icon icon;
  final bool iconIsImage;
  final String imageIcon;

  const LoginButtonWithIcon({
    required this.onPressed,
    required this.text,
    required this.icon,
    required this.iconIsImage,
    required this.imageIcon,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!iconIsImage)
            icon
          else
            ImageIcon(
              AssetImage(imageIcon),
              color: Colors.black,
            ),
          sizedBox5Wide,
          Text(text, style: kGoogleFontOpenSansCondensed),
        ],
      ),
    );
  }

  Widget weatherIcon() {
    return !iconIsImage
        ? icon
        : ImageIcon(
            AssetImage(imageIcon),
            color: Colors.black,
          );
  }
}

class LoginButtonNoIcon extends StatelessWidget {
  final String text;
  final Function onPressed;

  const LoginButtonNoIcon({
    required this.onPressed,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: kGoogleFontOpenSansCondensed),
        ],
      ),
    );
  }
}

class DefaultTextField extends StatelessWidget {
  final int? maxTitleLength;
  final TextEditingController controller;
  final String? hintText, fontFamily;
  final Color? fillColor, borderColor;
  final ValueChanged<String>? onChanged, onFieldSubmitted;
  final GestureTapCallback? onTap;
  final double? borderRadius, hintSize, fontSize;
  final bool? autofocus;

  const DefaultTextField(
      {this.maxTitleLength,
      required this.controller,
      this.hintText,
      this.fillColor,
      this.borderColor,
      this.onChanged,
      this.borderRadius,
      this.onFieldSubmitted,
      this.onTap,
      this.hintSize,
      this.fontSize,
      this.fontFamily,
      this.autofocus});

  @override
  Widget build(BuildContext context) {
    bool obscureText;
    if (hintText == 'Password') {
      obscureText = true;
    } else {
      obscureText = false;
    }
    return TextFormField(
      controller: controller,
      autofocus: true,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.center,
      maxLength: maxTitleLength,
      obscureText: obscureText,
      style: kGoogleFontOpenSansCondensed.copyWith(
        color: fillColor,
      ),
      onTap: onTap,
      decoration: InputDecoration(
        filled: autofocus ?? false,
        fillColor: fillColor ?? Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          borderSide: BorderSide(color: borderColor ?? Colors.black),
        ),
        focusedBorder: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: hintSize ?? 19,
            color: Colors.grey[600],
            fontFamily: fontFamily ?? 'Roboto',
            fontWeight: FontWeight.w200),
        counterText: '',
      ),
    );
  }
}

class CircleContainer extends StatelessWidget {
  final Color? color;
  final double size;
  final Widget child;

  const CircleContainer({this.color, required this.size, required this.child});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color ?? Colors.black38,
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    ).paddingSymmetric(horizontal: 10);
  }
}

class BorderTextStack extends StatelessWidget {
  final String? text;
  final double? fontSize, height;
  final Color textColor, borderColor;

  const BorderTextStack(
      {this.text,
      this.fontSize,
      this.height,
      required this.textColor,
      required this.borderColor});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text!,
          style: kGoogleFontOpenSansCondensed.copyWith(
            fontSize: fontSize ?? 20,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1.5
              ..color = borderColor,
            height: height,
          ),
        ),
        Text(
          text!,
          style: kGoogleFontOpenSansCondensed.copyWith(
            color: textColor,
            // color: Colors.white,
            fontSize: fontSize ?? 20,
            height: height,
          ),
        ),
      ],
    );
  }
}