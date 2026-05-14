class InvoiceFormValidator {
  static String? validateClientStep({
    required String? clientName,
    required String? clientEmail,
  }) {
    if (clientName == null || clientName.trim().isEmpty) {
      return 'Client name is required';
    }
    if (clientEmail == null || clientEmail.trim().isEmpty) {
      return 'Client email is required';
    }
    if (!_isValidEmail(clientEmail.trim())) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? validateInvoiceDetailsStep({
    required String invoiceNumber,
    required DateTime? invoiceDate,
    required DateTime? dueDate,
  }) {
    if (invoiceNumber.trim().isEmpty) {
      return 'Invoice number is required';
    }
    if (invoiceDate == null) {
      return 'Invoice date is required';
    }
    if (dueDate == null) {
      return 'Due date is required';
    }
    if (dueDate.isBefore(invoiceDate)) {
      return 'Due date cannot be before invoice date';
    }
    return null;
  }

  static String? validateItemsStep({required List items}) {
    if (items.isEmpty) {
      return 'Add at least one invoice item';
    }
    return null;
  }

  static bool _isValidEmail(String email) {
    return RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}
