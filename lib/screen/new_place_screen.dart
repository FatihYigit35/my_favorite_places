import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_favorite_places/widget/image_input.dart';
import 'package:my_favorite_places/widget/location_input.dart';
import 'package:my_favorite_places/widget/text_input_field_item.dart';

import '../model/place.dart';
import '../provider/place_provider.dart';

class NewPlaceScreen extends ConsumerStatefulWidget {
  const NewPlaceScreen({super.key});

  @override
  ConsumerState<NewPlaceScreen> createState() => _NewPlaceScreenState();
}

class _NewPlaceScreenState extends ConsumerState<NewPlaceScreen> {
  final _formKey = GlobalKey<FormState>();
  final place = Place();

  void _savePlace() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      ref.read(placeProvider.notifier).addPlace(place);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextInputFieldItem(
                label: 'Title',
                onSaved: (newValue) => place.title = newValue,
              ),
              TextInputFieldItem(
                label: 'Description',
                onSaved: (newValue) => place.description = newValue,
              ),
              const SizedBox(
                height: 20,
              ),
              ImageInput(
                onSelectedImage: (image) {
                  place.image = image;
                },
              ),
              const SizedBox(height: 20),
              LocationInput(
                onSelectLocation: (location) {
                  place.location = location;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _savePlace,
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
