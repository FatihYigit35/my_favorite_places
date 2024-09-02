import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:my_favorite_places/model/place_location.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({super.key, required this.onSelectLocation});
  final void Function(PlaceLocation location) onSelectLocation;

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  PlaceLocation? _pickedLocation;
  var _isGettingLocation = false;

  void _getCurrentLocation() async {
    Location location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    setState(() {
      _isGettingLocation = true;
    });

    locationData = await location.getLocation();

    _pickedLocation = PlaceLocation(
        latitude: locationData.latitude ?? 0.0,
        longitude: locationData.longitude ?? 0.0);

    setState(() {
      _isGettingLocation = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Text(
      'No location chosen',
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: Theme.of(context).colorScheme.onSurface),
    );

    if (_isGettingLocation) {
      content = const CircularProgressIndicator();
    }

    if (_pickedLocation != null) {
      widget.onSelectLocation(_pickedLocation!);

      content = Text(
        '${_pickedLocation!.latitude}, ${_pickedLocation!.longitude}',
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: Theme.of(context).colorScheme.onSurface),
      );
    }

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
          child: content,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              label: const Text('Get Current Location'),
              icon: const Icon(Icons.location_on),
              onPressed: _getCurrentLocation,
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
