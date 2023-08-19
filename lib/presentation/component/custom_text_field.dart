import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platina/presentation/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:platina/presentation/styles/theme_warpper.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String hintText;
  final String titleHintText;
  final bool isEmail;
  final bool isPassword;
  final bool obscureText;
  final int minLines;
  final int maxLines;
  final Widget? suffixIcon;
  final void Function()? onsuffixIconPressed;
  final void Function()? onPressed;
  final TextInputType keyboardType;
  final String? error;
  final int? maxLength;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatter;
  final TextAlign textAlign;
  final bool readOnly;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;

  const CustomTextField(
      {Key? key,
      this.onPressed,
      this.onsuffixIconPressed,
      this.formatter,
      this.controller,
      this.hintText = '',
      this.title = '',
      this.isPassword = false,
      this.minLines = 1,
      this.maxLines = 2,
      this.isEmail = false,
      this.keyboardType = TextInputType.text,
      this.suffixIcon,
      this.maxLength,
      this.obscureText = false,
      this.error,
      this.titleHintText = '',
      this.readOnly = false,
      this.onChanged,
      this.focusNode,
      this.textAlign = TextAlign.start})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.title.isNotEmpty
              ? Text(
                  widget.title,
                  style: fonts.regular12.copyWith(
                    color: widget.error == null ? colors.text : colors.error,
                  ),
                )
              : const SizedBox(),
          widget.title.isNotEmpty ? SizedBox(height: 6.h) : const SizedBox(),
          widget.titleHintText.isNotEmpty
              ? Text(
                  widget.titleHintText,
                  style: fonts.regular12.copyWith(
                    color: colors.grey,
                  ),
                )
              : const SizedBox(),
          widget.titleHintText.isNotEmpty
              ? SizedBox(height: 6.h)
              : const SizedBox(),
          TextFormField(
            onTap: widget.onPressed,
            textInputAction: TextInputAction.done,
            focusNode: widget.focusNode,
            maxLength: widget.maxLength,
            onChanged: widget.onChanged,
            readOnly: widget.readOnly,
            textAlign: widget.textAlign,
            inputFormatters: widget.formatter,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            controller: widget.controller,
            style: fonts.regular12.copyWith(color: colors.text),
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
              counterText: widget.maxLength == 500 ? null : '',
              suffixIcon: widget.suffixIcon != null
                  ? IconButton(
                      icon: widget.suffixIcon!,
                      onPressed: widget.onsuffixIconPressed ?? () {})
                  : null,
              focusColor: Style.primary,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(color: colors.primary, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(color: colors.primary, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(color: colors.primary, width: 1),
              ),
              hintText: widget.hintText,
              hintStyle: fonts.regular12,
              errorText: widget.error,
              errorStyle: fonts.regular12.copyWith(color: colors.error),
              contentPadding:
                  EdgeInsets.only(left: 12.w, top: 10.h, right: 12.w),
            ),
          ),
        ],
      );
    });
  }
}
