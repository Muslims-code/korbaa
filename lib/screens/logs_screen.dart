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
          child: EditText(
            searchController: _searchController,
            icon: Icons.search,
            hint: 'اكتب اسم القريب',
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
