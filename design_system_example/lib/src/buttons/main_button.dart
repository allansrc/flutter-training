import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.isEnabled,
    required this.isBusy,
    required this.label,
    required this.onPressed,
  });

  final bool isEnabled;
  final bool isBusy;
  final String label;
  final VoidCallback onPressed;

  final borderRadius = const BorderRadius.all(Radius.circular(8));
  final buttonHeight = 56.0;

  factory MainButton.outlined({
    required String label,
    required VoidCallback onPressed,
    required Widget icon,
  }) {
    return _OutlinedMainButton(
      isEnabled: true,
      isBusy: false,
      label: label,
      onPressed: onPressed,
      icon: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: isEnabled ? theme.primaryColor : theme.disabledColor,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: (isEnabled && isBusy == false) ? onPressed : null,
        borderRadius: borderRadius,
        child: Container(
          alignment: Alignment.center,
          height: buttonHeight,
          decoration: BoxDecoration(borderRadius: borderRadius),
          width: MediaQuery.of(context).size.width,
          child: isBusy
              ? const CircularProgressIndicator()
              : Text(label, style: theme.textTheme.labelLarge),
        ),
      ),
    );
  }
}

class _OutlinedMainButton extends MainButton {
  const _OutlinedMainButton({
    required super.isEnabled,
    required super.isBusy,
    required super.label,
    required super.onPressed,
    required this.icon,
  });

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      key: key,
      color: Colors.transparent,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onPressed,
        borderRadius: borderRadius,
        child: Container(
          height: buttonHeight,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            border: Border.all(color: Theme.of(context).primaryColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 8),
              Text(
                label,
                style: theme.textTheme.labelLarge
                    ?.copyWith(color: theme.primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
