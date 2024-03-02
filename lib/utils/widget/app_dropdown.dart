import 'package:flutter/material.dart';

class AppDropdown extends StatefulWidget {
  final double width;
  final List<String> items;
  final String initialSelectedItem;
  final String label;

  const AppDropdown({
    Key? key,
    required this.width,
    required this.initialSelectedItem,
    required this.items,
    required this.label,
  }) : super(key: key);

  @override
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.initialSelectedItem;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: DropdownMenu<String>(
        width: widget.width,
        label: Text(widget.label),
        initialSelection: widget.initialSelectedItem,
        onSelected: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        dropdownMenuEntries:
            widget.items.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(value: value, label: value);
        }).toList(),
        menuHeight: 300,
      ),
    );
  }
}
