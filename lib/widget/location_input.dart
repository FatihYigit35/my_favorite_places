import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key});

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 1,
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.2))),
          height: 180,
          width: double.infinity,
          child: Text(
            'No location chosen',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              label: const Text('Get Current Location'),
              icon: const Icon(Icons.location_on),
              onPressed: () {},
            ),
            TextButton.icon(
              label: const Text('Select On Map'),
              icon: const Icon(Icons.map),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
