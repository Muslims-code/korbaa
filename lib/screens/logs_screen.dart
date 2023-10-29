

import 'package:flutter/material.dart';
import 'package:korbaa/widgets/widgets.dart';

class LogsScreen extends StatefulWidget {
  const LogsScreen({Key? key}) : super(key: key);

  @override
  State<LogsScreen> createState() => _LogsScreenState();
}

class _LogsScreenState extends State<LogsScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
          child: TextField(
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
              hintText: 'اكتب اسم القريب',
              // Add a clear button to the search bar

              suffixIcon: SizedBox(
                width: 20,
                height: 20,
                child: IconButton(
                  iconSize: 20,
                  splashRadius: 1,
                  icon: const Icon(
                    Icons.search,
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
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return RelativeTile(
                showRatings: true,
                icon: Icons.edit,
              );
            },
          ),
        )
      ],
    );
  }
}
