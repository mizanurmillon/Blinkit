import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    required double fontsize,
    String? fontFamily,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontweight,
        fontSize: fontsize,
        fontFamily: fontFamily ?? 'Regular',
      ),
    );
  }

  static CustomTextField({
    required TextEditingController controller,
    required String text,
  }) {
    return Container(
      height: 45,
      width: 380,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFFC5C5C5)),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Image.asset("assets/images/search.png"),
          suffixIcon: Image.asset("assets/images/mic.png"),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static Widget CustomButton({
    required String text,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      height: 20,
      width: 35,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF27AF34),
          side: const BorderSide(color: Color(0xFF27AF34)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFF27AF34),
            fontSize: 9,
            fontWeight: FontWeight.w700,
            fontFamily: 'Regular',
          ),
        ),
      ),
    );
  }
}
