import 'package:flutter/material.dart';
import 'package:spotify_redesign/screens/sign_up_screen.dart';

class GreenButton extends StatelessWidget {
  const GreenButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF1ED760),
        ),
        child: Text(text,
            style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}

class CustomBorderButton extends StatelessWidget {
  const CustomBorderButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.leading,
  });

  final String text;
  final void Function()? onPressed;
  final Widget leading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(80),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leading,
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}

class OptionLogin extends StatelessWidget {
  const OptionLogin({
    super.key,
    required this.image,
  });
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: image,
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
  }
}
