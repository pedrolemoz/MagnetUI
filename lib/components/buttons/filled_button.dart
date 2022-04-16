import 'package:flutter/material.dart';

import 'icon_location.dart';

class FilledButton extends StatelessWidget {
  // Main functionality
  final Function() onPressed;

  // Properties to manipulate the text
  final bool enableText;
  final String? text;
  final TextStyle? texStyle;

  // Properties to manipulate the icon
  final bool enableIcon;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;

  // Properties to manipulate the button structure
  final IconLocation iconLocation;
  final Color? color;
  final double? height;
  final double? elevation;
  final double? borderRadius;

  const FilledButton({
    Key? key,
    required this.onPressed,
    this.enableText = true,
    this.text,
    this.texStyle,
    this.enableIcon = false,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.iconLocation = IconLocation.beforeText,
    this.color,
    this.height,
    this.elevation,
    this.borderRadius,
  })  : assert(
          !(!enableText && !enableIcon),
          'You must provide either a text or an icon to the button',
        ),
        assert(
          enableText ? text != null : true,
          'A text should be assigned if enableText is true',
        ),
        assert(
          enableIcon ? icon != null : true,
          'An icon should be assigned if enableIcon is true',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? Theme.of(context).colorScheme.primary,
      height: height ?? 48,
      elevation: elevation ?? 0,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
      ),
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusElevation: 4,
      disabledElevation: 0,
      hoverElevation: 0,
      highlightElevation: 4,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          textDirection: iconLocation == IconLocation.beforeText
              ? TextDirection.ltr
              : TextDirection.rtl,
          children: [
            if (enableIcon) ...[
              Icon(
                icon,
                color: iconColor ?? Theme.of(context).colorScheme.surface,
                size: iconSize ?? 18,
              ),
            ],
            if (enableIcon && enableText) ...[
              const VerticalDivider(color: Colors.transparent),
            ],
            if (enableText) ...[
              Text(
                text!,
                overflow: TextOverflow.ellipsis,
                style: texStyle ??
                    Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
