import 'package:flutter/material.dart';
import 'package:signup/src/constants/text_strings.dart';

class DashboardSearchBox extends StatelessWidget {
  const DashboardSearchBox({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);
  final TextTheme txtTheme;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(border: Border(left: BorderSide(width: 4))),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(tDashboardsearch,
              style: txtTheme.headline4
                  ?.apply(color: Colors.grey.withOpacity(0.5))),
          const Icon(Icons.mic, size: 25),
        ],
      ),
    );
  }
}
