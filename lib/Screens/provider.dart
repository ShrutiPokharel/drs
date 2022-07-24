import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final boolProvider = StateProvider<bool>((ref) {
  return false;
});

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer(builder: (context, ref, c) {
          final isSelected = ref.watch(boolProvider.state).state;
          return Container(
            color: isSelected ? Colors.red : Colors.blue,
            child: GestureDetector(
              onTap: () {
                ref.read(boolProvider.state).state = !isSelected;
              },
            ),
          );
        }),
        const Text('data')
      ],
    );
  }
}
