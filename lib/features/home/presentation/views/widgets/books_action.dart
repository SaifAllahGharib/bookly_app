import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  final BookModel bookModel;

  const BooksAction({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              text: "Free",
              textColor: Colors.black,
              bgColor: Colors.white,
              topLeftBorder: buttonBorderRadios,
              bottomLeftBorder: buttonBorderRadios,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                try {
                  await launchUrl(Uri.parse(bookModel.volumeInfo!.infoLink!));
                } catch (e) {
                  Fluttertoast.showToast(
                    msg: "Can't go to this URL",
                    gravity: ToastGravity.BOTTOM,
                    toastLength: Toast.LENGTH_SHORT,
                  );
                }
              },
              text: "Free Preview",
              textColor: Colors.white,
              bgColor: const Color(0xffEF8262),
              topRightBorder: buttonBorderRadios,
              bottomRightBorder: buttonBorderRadios,
            ),
          ),
        ],
      ),
    );
  }
}
