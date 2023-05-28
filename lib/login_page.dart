// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomSizedBox(spacer: 40),
          _homePageImage(),
          _homePageTitle(context),
          const CustomSizedBox(spacer: 15),
          _homePageDescription(),
          const CustomSizedBox(spacer: 150),
          _signInButton(context),
          const CustomSizedBox(spacer: 10),
          _createAccountButton(context),
        ],
      ),
    );
  }

  SizedBox _createAccountButton(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 400,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink[400],
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
        onPressed: () {},
        child: Text(
          'Create an Account',
          maxLines: 1,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  SizedBox _signInButton(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 400,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[400],
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
        onPressed: () {},
        child: Text(
          'Sign In',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  Padding _homePageDescription() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        _TextFieldData()._description,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 15.0,
        ),
      ),
    );
  }

  Text _homePageTitle(BuildContext context) {
    return Text(
      _TextFieldData()._title,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }

  Padding _homePageImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: SizedBox(
          height: SizedBoxUtility().homePageImageSize,
          width: SizedBoxUtility().homePageImageSize,
          child: Column(
            children: [
              Expanded(child: PngImage(path: ImageItems().loginImage)),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({
    Key? key,
    required this.spacer,
  }) : super(key: key);
  final double spacer;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: spacer);
  }
}

class _TextFieldData {
  final String _title = "Welcome to the World of Languages";
  final String _description =
      "Energistically implement expan arrchannels through visionary methods quickly customize act deploy functionality";
}

class SizedBoxUtility {
  final double homePageImageSize = 356;
}

class ImageItems {
  final String loginImage = "assets/images/home.png";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.path}) : super(key: key);
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(path, fit: BoxFit.cover);
  }
}
