import 'package:flutter/material.dart';

class CustomDropdownList extends StatelessWidget {
  final List<String> dropdownItems;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;
  final String? name;

  CustomDropdownList({
    required this.name,
    required this.dropdownItems,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name ?? ""),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: InputDecorator(
            decoration: const InputDecoration(
                border: InputBorder.none, enabledBorder: InputBorder.none),
            child: DropdownButton<String>(
              value: selectedValue,
              onChanged: onChanged,
              items: dropdownItems.map((item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item),
                    ],
                  ),
                );
              }).toList(),
              iconSize: 24,
              elevation: 10,
              isExpanded: true,
              style: const TextStyle(color: Colors.black, fontSize: 16),
              underline: null, // Remove the underline here
            ),
          ),
        ),
      ],
    );
  }
}
