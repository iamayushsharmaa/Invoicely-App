class GeneratePdfParams {
  final String invoiceId;
  final String template;

  const GeneratePdfParams({required this.invoiceId, this.template = 'default'});
}
