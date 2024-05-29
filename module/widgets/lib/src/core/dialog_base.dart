import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final class DialogBase {
  DialogBase._();


  /// Shows a generic dialog with.
  /// [builder] is the builder of the dialog.
  static Future<T?> show<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) async {
    await showDialog<T>(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: builder,
    );
  }
}
