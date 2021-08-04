import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base/ui/molecule/stream_builder/goal_one_stream_builder.dart';
import 'package:flutter_base/utils/color_utils.dart';
import 'package:flutter_base/utils/resource.dart';
import 'package:flutter_base/utils/status.dart';
import 'package:flutter_base/utils/style_manager.dart';

class GoalOneStreamTextField extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final Function() onPressed;
  final TextEditingController controller;
  final TextInputAction inputAction;
  final TextInputType inputType;
  final String labelText;
  final String hintText;
  final String initialValue;
  final bool autoFocus;
  final Function(String) validator;
  final Function(String) onChanged;
  final Function(String) onSaved;
  final Function(String) onFieldSubmitted;
  final bool readOnly;
  final int maxLength;
  final bool obscureText;
  final String obscuringCharacter;
  final Widget Function(bool enabled) suffixIcon;
  final Key key;
  final Widget prefix;
  final bool enabled;
  final bool busy;
  final Color hintTextColor;
  final bool showLabel;
  final FocusNode focusNode;
  final List<TextInputFormatter> inputFormatter;

  final Stream<Resource<String>> stream;

  GoalOneStreamTextField(
      {this.height,
      this.width,
      this.child,
      this.onPressed,
      this.controller,
      this.inputAction,
      this.inputType,
      @required this.labelText,
      @required this.hintText,
      this.initialValue,
      this.autoFocus: false,
      this.validator,
      this.onChanged,
      this.onSaved,
      this.onFieldSubmitted,
      this.readOnly: false,
      this.maxLength,
      this.key,
      this.obscureText: false,
      this.obscuringCharacter: '•',
      this.suffixIcon,
      this.prefix,
      this.enabled: true,
      this.busy: false,
      this.hintTextColor: GoalOneColor.pinkishGrey,
      this.showLabel: true,
      this.focusNode,
      this.inputFormatter,
      this.stream})
      : super(key: key) {
    _secureText = obscureText;
  }

  bool _secureText;

  bool get secureText => _secureText;

  set secureText(bool value) {
    _secureText = value;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: this.width,
        height: this.height,
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: (showLabel)
                    ? Text(labelText.toUpperCase(),
                        style: TextStyle(
                          color: GoalOneColor.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.7,
                        ))
                    : SizedBox(),
              ),
              GoalOneStreamBuilder<Resource<String>>(
                  initialData: Resource.success(),
                  stream: stream,
                  dataBuilder: (context, data) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          // key: widget.key,
                          focusNode: focusNode,
                          maxLength: maxLength,
                          style: TextStyle(
                            color: GoalOneColor.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.3,
                          ),
                          textCapitalization: TextCapitalization.sentences,
                          initialValue: initialValue,
                          autofocus: autoFocus,
                          textInputAction: inputAction,
                          keyboardType: inputType,
                          readOnly: readOnly,
                          showCursor: true,
                          obscureText: secureText,
                          obscuringCharacter: obscuringCharacter,

                          inputFormatters: inputFormatter ?? null,

                          decoration: InputDecoration(
                              fillColor: GoalOneColor.white,
                              prefix: prefix,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 16),
                              hintText: hintText,
                              errorStyle: TextStyle(height: 0),
                              hintStyle: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  color: hintTextColor),
                              counterText: "",
                              suffixIcon: suffixIcon?.call(secureText),
                              enabled: enabled,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: data.status == Status.SUCCESS
                                      ? GoalOneColor.grass
                                      : GoalOneColor.orangeRed,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: getEnableColor(data.status),
                                ),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: getEnableColor(data.status),
                                ),
                              )),
                          controller: controller,
                          validator: this.validator,
                          onChanged: this.onChanged,
                          onFieldSubmitted: this.onFieldSubmitted,
                          onSaved: this.onSaved,
                        ),
                        data.status == Status.SUCCESS
                            ? Container()
                            : Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(data.data,
                                    style: StyleManager.errorTextStyle()),
                              )
                      ],
                    );
                  })
            ],
          ),
        ));
  }

  Color getEnableColor(Status status) {
    if (status == Status.SUCCESS) {
      return GoalOneColor.grass;
    } else if (status == Status.ERROR) {
      return GoalOneColor.orangeRed;
    } else {
      return GoalOneColor.black;
    }
  }
}
