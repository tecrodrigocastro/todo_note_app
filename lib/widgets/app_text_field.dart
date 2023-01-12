import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controlName,
    required this.label,
    this.isRequired = false,
    this.maxLines = 1,
    this.hintext,
    this.onSubmitted,
    this.nextFocusControlName,
    this.formGroup,
    this.autofocus = false,
  });
  final String controlName;
  final String label;
  final bool isRequired;
  final int maxLines;
  final String? hintext;
  final void Function(FormControl<Object?>)? onSubmitted;
  final String? nextFocusControlName;
  final FormGroup? formGroup;
  final bool autofocus;

  _onSubmited(FormControl<Object?> control) {
    if (onSubmitted != null) {
      onSubmitted!(control);
    }

    if (nextFocusControlName != null && formGroup != null) {
      formGroup!.focus(nextFocusControlName!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      autofocus: autofocus,
      maxLines: maxLines,
      keyboardType: maxLines > 1 ? TextInputType.multiline : TextInputType.text,
      formControlName: controlName,
      validationMessages: isRequired
          ? {'required': (error) => '$label can not be empty'}
          : null,
      decoration: InputDecoration(
        hintText: hintext,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        labelText: maxLines > 1 ? null : "$label${isRequired ? "*" : ""}",
      ),
      onSubmitted: _onSubmited,
    );
  }
}
