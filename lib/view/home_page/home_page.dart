import 'package:flutter/material.dart';
import 'package:my_own_post_put/controller/getproducts_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<GetproductsController>().getproducts();
      }),
    );
  }
}
