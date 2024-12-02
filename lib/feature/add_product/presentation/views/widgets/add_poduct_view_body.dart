import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboart/core/widgets/custom_text_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(children: [
              CustomTextField(
                hintText: "Product Name",
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hintText: "Product Price",
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hintText: "Product Code",
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                maxLines: 5,
                hintText: "Product Description",
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 16,
              ),
            ]),
          )),
    );
  }
}
