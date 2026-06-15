class SilpoChequeEntity {
  SilpoChequeEntity({
    required this.chequeId,
    required this.totalAmount,
    required this.items,
    required this.prediction,
  });

  final int chequeId;
  final double totalAmount;
  final List<String> items;
  final String prediction;
}
