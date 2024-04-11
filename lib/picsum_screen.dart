import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PicsumScreen extends ConsumerStatefulWidget {
  const PicsumScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PicsumScreenState();
}

class _PicsumScreenState extends ConsumerState<PicsumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("http 패키지 예시"),
        ),
        body: Center(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text("id : author"),
                  subtitle: Text("url: wwww.mroh1226.com"),
                  leading: Icon(Icons.abc),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: 10),
        ));
  }
}
