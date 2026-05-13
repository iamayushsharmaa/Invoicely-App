import 'package:flutter/material.dart';

import 'invoice_date_picker.dart';
import 'invoice_text_field.dart';

class InvoiceFormSection extends StatelessWidget {
  final TextEditingController clientNameController;
  final TextEditingController clientEmailController;
  final TextEditingController clientAddressController;

  final TextEditingController invoiceNumberController;

  final TextEditingController issueDateController;
  final TextEditingController dueDateController;

  final VoidCallback onIssueDateTap;
  final VoidCallback onDueDateTap;

  const InvoiceFormSection({
    super.key,
    required this.clientNameController,
    required this.clientEmailController,
    required this.clientAddressController,
    required this.invoiceNumberController,
    required this.issueDateController,
    required this.dueDateController,
    required this.onIssueDateTap,
    required this.onDueDateTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InvoiceTextField(
          controller: clientNameController,
          label: 'Client Name',
          hint: 'Enter client name',

          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Client name required';
            }

            return null;
          },
        ),

        const SizedBox(height: 16),

        InvoiceTextField(
          controller: clientEmailController,
          label: 'Client Email',
          hint: 'Enter client email',
          keyboardType: TextInputType.emailAddress,

          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Client email required';
            }

            final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

            if (!emailRegex.hasMatch(value.trim())) {
              return 'Enter valid email';
            }

            return null;
          },
        ),

        const SizedBox(height: 16),

        InvoiceTextField(
          controller: clientAddressController,
          label: 'Client Address',
          hint: 'Enter client address',
          maxLines: 3,

          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Address required';
            }

            return null;
          },
        ),

        const SizedBox(height: 16),

        InvoiceTextField(
          controller: invoiceNumberController,
          label: 'Invoice Number',
          hint: 'INV-001',

          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Invoice number required';
            }

            return null;
          },
        ),

        const SizedBox(height: 16),

        Row(
          children: [
            Expanded(
              child: InvoiceDatePicker(
                label: 'Issue Date',
                controller: issueDateController,
                onTap: onIssueDateTap,

                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Required';
                  }

                  return null;
                },
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: InvoiceDatePicker(
                label: 'Due Date',
                controller: dueDateController,
                onTap: onDueDateTap,

                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Required';
                  }

                  return null;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
