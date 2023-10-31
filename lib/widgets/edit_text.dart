import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool isNumber;
  const EditText({
    super.key,
    this.isNumber = false,
    required TextEditingController searchController,
    required this.icon,
    required this.hint,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      controller: _searchController,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        isDense: true, // and add this line

        contentPadding: EdgeInsets.all(10),
        hintStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0xff000000).withOpacity(0.5),
          height: 19 / 12,
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        // Add a clear button to the search bar

        suffixIcon: SizedBox(
          width: 20,
          height: 20,
          child: IconButton(
            iconSize: 20,
            splashRadius: 1,
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            onPressed: () => _searchController.clear(),
          ),
        ),
        // Add a search icon or button to the search bar

        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
