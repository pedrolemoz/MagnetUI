import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  // Main functionality
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onSaved;
  final Function()? onTap;
  final TextInputAction textInputAction;
  final bool isPassword;
  final TextInputType keyboardType;
  final String? initialValue;
  final TextCapitalization textCapitalization;

  // Properties to manipulate hint text
  final String? hintText;
  final TextStyle? hintTextStyle;
  final int? hintMaxLines;

  // Properties to manipulate error text
  final bool hasError;
  final String? errorText;
  final TextStyle? errorTextStyle;

  // Properties to manipulate prefix icon
  final bool enablePrefixIcon;
  final IconData? prefixIcon;
  final Function()? onPrefixIconTap;
  final Color? prefixIconColor;
  final double? prefixIconSize;

  // Properties to manipulate suffix icon
  final bool enableSuffixIcon;
  final IconData? suffixIcon;
  final Function()? onSuffixIconTap;
  final Color? suffixIconColor;
  final double? suffixIconSize;

  // Properties to manipulate the input text structure
  final int? maxLines;
  final double? borderRadius;
  final EdgeInsets? padding;

  const InputText({
    Key? key,
    this.controller,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.onSaved,
    this.onTap,
    this.textInputAction = TextInputAction.done,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.initialValue,
    this.textCapitalization = TextCapitalization.sentences,
    this.hintText,
    this.hintTextStyle,
    this.hintMaxLines,
    this.hasError = false,
    this.errorText,
    this.errorTextStyle,
    this.enablePrefixIcon = false,
    this.prefixIcon,
    this.onPrefixIconTap,
    this.prefixIconColor,
    this.prefixIconSize,
    this.enableSuffixIcon = false,
    this.suffixIcon,
    this.onSuffixIconTap,
    this.suffixIconColor,
    this.suffixIconSize,
    this.maxLines,
    this.borderRadius,
    this.padding,
  })  : assert(
          controller != null ? initialValue == null : true,
          'An initial value cannot be assigned if the controller is specified',
        ),
        assert(
          enablePrefixIcon ? prefixIcon != null : true,
          'An icon should be assigned if enablePrefixIcon is true',
        ),
        assert(
          enableSuffixIcon ? suffixIcon != null : true,
          'An icon should be assigned if enableSuffixIcon is true',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      initialValue: controller == null ? initialValue : null,
      maxLines: maxLines ?? 1,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onSaved: onSaved,
      onTap: onTap,
      textInputAction: textInputAction,
      enableSuggestions: true,
      textAlign: TextAlign.left,
      textCapitalization: textCapitalization,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: hasError
                ? Theme.of(context).colorScheme.onError
                : Theme.of(context).colorScheme.onSurface,
          ),
      decoration: InputDecoration(
        contentPadding: padding ?? const EdgeInsets.all(12),
        fillColor: hasError
            ? Theme.of(context).colorScheme.error
            : Theme.of(context).colorScheme.surface,
        filled: true,
        prefixIcon: enablePrefixIcon
            ? GestureDetector(
                onTap: onPrefixIconTap,
                child: Icon(
                  prefixIcon,
                  size: prefixIconSize ?? 18,
                  color: prefixIconColor ??
                      (hasError
                          ? Theme.of(context).colorScheme.error
                          : Theme.of(context).colorScheme.onSurface),
                ),
              )
            : null,
        suffixIcon: enableSuffixIcon
            ? GestureDetector(
                onTap: onSuffixIconTap,
                child: Icon(
                  suffixIcon,
                  size: suffixIconSize ?? 18,
                  color: suffixIconColor ??
                      (hasError
                          ? Theme.of(context).colorScheme.error
                          : Theme.of(context).colorScheme.onSurface),
                ),
              )
            : null,
        hintMaxLines: hintMaxLines,
        hintText: hintText,
        hintStyle: hintTextStyle ??
            Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: hasError
                      ? Theme.of(context).colorScheme.onError
                      : Theme.of(context).colorScheme.onSurface,
                ),
        errorText: hasError ? errorText ?? 'An error ocurred' : null,
        errorStyle: errorTextStyle ??
            Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Theme.of(context).colorScheme.error),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
      ),
    );
  }
}
