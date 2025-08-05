import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    this.controller,
    this.hintText = 'Search...',
    this.onChanged,
    this.onSubmitted,
    this.width = double.infinity, // Default width to fill available space
    this.height = 56.0,          // Default height
  }) : super(key: key);

  final TextEditingController? controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    // Determine colors based on theme for better adaptability
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    final fillColor = isDarkMode ? Colors.grey[800] : Colors.grey[200];
    final borderColor = isDarkMode ? Colors.grey[700] : Colors.grey[300];
    final iconColor = isDarkMode ? Colors.grey[400] : Colors.grey[600];
    final hintColor = isDarkMode ? Colors.grey[500] : Colors.grey[500];
    final textColor = theme.colorScheme.onSurface;

    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        style: TextStyle(color: textColor, fontSize: 16),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor, fontSize: 16),
          prefixIcon: Icon(
            Icons.search,
            color: iconColor,
          ),
          filled: true,
          fillColor: fillColor,
          contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0), // Adjust corner radius
            borderSide: BorderSide(
              color: borderColor ?? Colors.transparent, // Subtle border or transparent
              width: 1.0,
            ),
          ),
          // Border when the TextField is focused
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0), // Adjust corner radius
            borderSide: BorderSide(
              color: theme.colorScheme.primary, // Use primary color when focused
              width: 1.5,
            ),
          ),
          // Border when the TextField has an error (if you use validation)
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0),
            borderSide: BorderSide(
              color: theme.colorScheme.error,
              width: 1.5,
            ),
          ),
          // Border when the TextField has an error and is focused
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0),
            borderSide: BorderSide(
              color: theme.colorScheme.error,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}