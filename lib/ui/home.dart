import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final String? title;

  const Home({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
     body: const Center(
       child: CustomButton(),
     ),
   );
  }

}

class CustomButton  extends StatelessWidget{
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("Abra Cadabraaaa "),
        backgroundColor: Theme.of(context).backgroundColor,
        duration: const Duration(hours: 0, minutes: 0, seconds: 0, milliseconds: 1500, microseconds: 0),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },

      //actual Button
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color:Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(5.5)
        ),
        child: const Text("Click Me To see a Magic"),
      ),
    );
  }
}