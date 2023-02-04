import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_flutter_projects/main.dart';

class MyhomePage extends ConsumerWidget {
  const MyhomePage({Key? key}) : super(key: key);

  void onSubmit(WidgetRef ref, String value) {
    // ref.read(nameProvider.notifier).update((state) => value);
    ref.read(userProvider.notifier).updateNmae(value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // //calling one time only , this uses outside of build ,should use in functions
    // final nameRead = ref.read(nameProvider) ?? '';
    // final name = ref.watch(nameProvider) ?? '';
    final user = ref.watch(userProvider);
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) => onSubmit(ref, value),
          ),
          Container(
            child: Center(child: Text(user.name)),
          ),
        ],
      ),
    );
  }
}




// class MyhomePage extends StatelessWidget {
//   const MyhomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Consumer(
//         builder: (context, ref, child) {
//         final name = ref.watch(nameProvider);
//         // //calling one time only , this uses outside of build 
//         // final nameRead = ref.read(nameProvider);
//         return Container(
//           child: Center(child:  Text(name)),
//         );
//         },
//       ),
//     );
//   }
// }