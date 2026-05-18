class SearchClientParams {
  final String query;
  final int page;
  final int size;

  const SearchClientParams({
    required this.query,
    this.page = 0,
    this.size = 10,
  });
}