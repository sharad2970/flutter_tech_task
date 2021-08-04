import 'package:flutter/material.dart';
import 'package:flutter_base/utils/color_utils.dart';

class GoalOneTextField extends StatefulWidget {
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
  final bool validField;
  final Color hintTextColor;
  final bool showLabel;
  final FocusNode focusNode;

  GoalOneTextField(
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
      this.validField: false,
      this.hintTextColor: GoalOneColor.pinkishGrey,
      this.showLabel: true,
      this.focusNode})
      : super(key: key);

  @override
  GoalOneTextFieldState createState() => GoalOneTextFieldState();
}

class GoalOneTextFieldState extends State<GoalOneTextField> {
  bool _secureText;

  @override
  void initState() {
    super.initState();
    _secureText = widget.obscureText;
  }

  bool get secureText => _secureText;

  set secureText(bool value) {
    setState(() {
      _secureText = value;
    });
  }

  validate() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: this.widget.width,
        height: this.widget.height,
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: (widget.showLabel)
                    ? Text(widget.labelText.toUpperCase(),
                        style: TextStyle(
                          color: GoalOneColor.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.7,
                        ))
                    : SizedBox(),
              ),
              TextFormField(
                // key: widget.key,
                focusNode: widget.focusNode,
                maxLength: widget.maxLength,
                style: TextStyle(
                  color: GoalOneColor.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.3,
                ),
                initialValue: widget.initialValue,
                autofocus: widget.autoFocus,
                textInputAction: widget.inputAction,
                keyboardType: widget.inputType,
                readOnly: widget.readOnly,
                showCursor: true,
                obscureText: secureText,
                obscuringCharacter: widget.obscuringCharacter,
                decoration: InputDecoration(
                  fillColor: GoalOneColor.white,
                  prefix: widget.prefix,
                  contentPadding: EdgeInsets.symmetric(horizontal: 22),
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: widget.hintTextColor),
                  counterText: "",
                  suffixIcon: widget.suffixIcon?.call(secureText),
                  enabled: widget.enabled,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: GoalOneColor.grass,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          widget.validField ? GoalOneColor.grass : Colors.grey,
                    ),
                  ),
                ),
                controller: widget.controller,
                validator: this.widget.validator,
                onChanged: this.widget.onChanged,
                onFieldSubmitted: this.widget.onFieldSubmitted,
                onSaved: this.widget.onSaved,
              ),
            ],
          ),
        ));
  }
}
