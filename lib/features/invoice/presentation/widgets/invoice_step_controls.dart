import 'package:flutter/material.dart';

class InvoiceStepControls extends StatelessWidget {
  final int currentStep;
  final VoidCallback? onBack;
  final VoidCallback? onNext;

  const InvoiceStepControls({
    super.key,
    required this.currentStep,
    this.onBack,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final isLastStep = currentStep == 3;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          currentStep > 0
              ? OutlinedButton(
                  onPressed: onBack,
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue),
                    foregroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("Back", style: TextStyle(fontSize: 16)),
                )
              : const SizedBox(width: 88),

          ElevatedButton(
            onPressed: onNext,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
            ),
            child: Text(
              isLastStep ? "Save" : "Next",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
