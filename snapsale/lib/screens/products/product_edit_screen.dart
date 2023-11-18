import 'package:flutter/material.dart';
import 'package:snapsale/widgets/reusable_text_field.dart';
import 'package:snapsale/widgets/reusable_elevated_button.dart';

class ProductEditScreen extends StatefulWidget {

  const ProductEditScreen({Key? key}) : super(key: key);

  @override
  _ProductEditScreenState createState() => _ProductEditScreenState();
}

class _ProductEditScreenState extends State<ProductEditScreen> {
  final TextEditingController _controller = TextEditingController();
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Edit"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ReusableTextField(
              hintText: 'Enter Value',
              leadingIcon: Icons.edit, // Replace with suitable icon
              isObscure: false,
              controller: _controller,
            ),
            // Add more fields as needed
            ReusableElevatedButton(
              icon: const Icon(Icons.save),
              buttonText: 'Save',
              onTap: () {
                // Implement save logic
              },
            ),
          ],
        ),
      ),
    );
  }
}