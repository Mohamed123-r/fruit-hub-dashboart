import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruit_hub_dashboart/core/widgets/custom_button.dart';
import 'package:fruit_hub_dashboart/core/widgets/custom_text_field.dart';
import 'package:fruit_hub_dashboart/feature/add_product/domain/entities/add_product_input_entity.dart';
import 'package:fruit_hub_dashboart/feature/add_product/presentation/views/widgets/image_file.dart';

import 'feature_box.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AutovalidateMode _autovalidateMode = AutovalidateMode.always;
  late String name, code, description;
  late num price;
  File? image;
  bool? isFeatured;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              CustomTextField(
                onSaved: (value) => name = value!.toLowerCase(),
                hintText: "Product Name",
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onSaved: (value) => price = num.parse(value!),
                hintText: "Product Price",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onSaved: (value) => code = value!.toLowerCase(),
                hintText: "Product Code",
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onSaved: (value) => description = value!.toLowerCase(),
                maxLines: 5,
                hintText: "Product Description",
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: 16,
              ),
              FeatureBoxWidget(
                onSelected: (value) {
                  setState(() {
                    isFeatured = value;
                  });
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ImageFile(
                onFileChanged: (value) => image = value,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomButton(
                title: "Add Product",
                onPressed: () {
                  if (image != null) {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      _autovalidateMode = AutovalidateMode.disabled;
                      AddProductInputEntity entity = AddProductInputEntity(
                        name: name,
                        code: code,
                        description: description,
                        price: price,
                        image: image!,
                        isFeatured: isFeatured ?? false,
                      );
                    } else {
                      _autovalidateMode = AutovalidateMode.always;
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please select an image"),
                      ),
                    );
                  }
                },
              )
            ]),
          )),
    );
  }
}
