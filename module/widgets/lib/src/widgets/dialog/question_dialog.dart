import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart';

/// A dialog that shows a question message.
final class QuestionAnswer {
  /// Creates a [QuestionAnswer] widget.
  QuestionAnswer({required this.response});

  /// The response of the dialog.
  final String response;
}

final class QuestionDialog extends StatefulWidget {
  /// Creates a [QuestionDialog] widget.
  const QuestionDialog({required this.title, super.key});

  /// The title of the dialog.
  final String title;

  /// Shows the dialog.
  static Future<QuestionAnswer?> show({
    required BuildContext context,
    required String title,
  }) async {
    return DialogBase.show<QuestionAnswer>(
      context: context,
      builder: (context) => QuestionDialog(title: title),
    );
  }

  @override
  State<QuestionDialog> createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<QuestionDialog> {
  String _response = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      content: TextField(
        onChanged: (value) {
          _response = value;
        },
      ),
      actions: [
        TextButton(
          onPressed: () {
            if (_response.isEmpty) {
              Navigator.of(context).pop(null);
            }
            Navigator.of(context).pop(QuestionAnswer(response: _response));
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
