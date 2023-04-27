import 'package:flutter/material.dart';
import 'package:firstapp/Export%20Folder/ExportedFiles.dart';

class DropDown extends StatefulWidget {
  String name;
  Icon icon;
   DropDown({Key? key, required this.name, required this.icon}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String _selectedItem = 'Option 1';
  final List<String> _dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 16.0, vertical: 7),
      child: Container(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: AppColors.DropDownColor,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.icon, // Use widget.icon to access the icon value
            const  SizedBox(width: 16.0),
            Text(
              widget.name, // Use widget.name to access the name value
              style:const TextStyle(
                fontSize: 17.0,
                color: AppColors.TextColor
              ),
            ),
            const Spacer(),
            DropdownButtonHideUnderline(
              child: DropdownButton(
                value: _selectedItem,
                icon:const Icon(Icons.arrow_forward_ios,  color: AppColors.TextColor),

                items: _dropdownItems
                    .map((item) => DropdownMenuItem(
                  value: item,
                  child:const SizedBox.shrink(),
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedItem = value.toString();
                  });
                },
              ),
            ),

          ],
        ),
      ),
    );;
  }
}
