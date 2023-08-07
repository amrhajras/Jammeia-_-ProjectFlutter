
import 'package:awesome_dialog/awesome_dialog.dart';

showAwesomeDialog({required context,
  required title,
  required desc
}){
  AwesomeDialog(
    context: context,
    dialogType: DialogType.error,
    animType: AnimType.rightSlide,
    title: title,
    desc: desc,
    btnCancelOnPress: () {},
    btnOkOnPress: () {},
  ).show();
}