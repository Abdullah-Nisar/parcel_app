import 'package:flutter/material.dart';
import 'package:parcel_app/ui/widgets/my_parcel_size.dart';

class SendParcelScreen extends StatelessWidget {
  const SendParcelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(children: [
        Text(
          'Send Parcel',
          style: Theme.of(context).textTheme.headline1,
        ),
        const SizedBox(
          height: 17,
        ),
        Text(
          'Parcel Size',
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(
          height: 11,
        ),
        MyParcelSize(key,
            parcelSize: 'Small',
            parcelSizeDescription: 'Fits in an envelope',
            parcelSizeDimension: 'Max. 3 kg, 8 x 20 x 40 cm',
            parcelSizeImage: 'assets/images/img_parcel_size_small.png'),
        MyParcelSize(key,
            parcelSize: 'Medium',
            parcelSizeDescription: 'Fits in a show box',
            parcelSizeDimension: 'Max. 15 kg, 20 x 30 x 50 cm',
            parcelSizeImage: 'assets/images/img_parcel_size_medium.png'),
        MyParcelSize(key,
            parcelSize: 'Large',
            parcelSizeDescription: 'Fits in an cardboard box',
            parcelSizeDimension: 'Max. 30 kg, 40 x 50 x 60 cm',
            parcelSizeImage: 'assets/images/img_parcel_size_large.png'),
        MyParcelSize(key,
            parcelSize: 'Custom',
            parcelSizeDescription: 'Fits on a skid',
            parcelSizeDimension: 'Max. 30 kg, 60 x 60 x 60 cm',
            parcelSizeImage: 'assets/images/img_parcel_size_custom.png')
      ]),
    ));
  }
}
