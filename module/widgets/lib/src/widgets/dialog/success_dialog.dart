import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart';

/// A dialog that shows a success message.
/// [title] is the title of the dialog.
/// [content] is the content of the dialog.
final class SuccessDialog extends StatelessWidget {
  /// Creates a [SuccessDialog] widget.
  const SuccessDialog({required this.title, super.key});

  /// The title of the dialog.
  final String title;

  /// Shows the dialog.
  /// This will always return [true].
  static Future<bool?> show({
    required BuildContext context,
    required String title,
  }) async {
    await DialogBase.show<bool>(
      context: context,
      builder: (context) => SuccessDialog(title: title),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
