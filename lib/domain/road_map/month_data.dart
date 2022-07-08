enum MonthMessageDirection {
  left,
  right,
}

class MonthData {
  final String title;
  final String description;
  final String month;
  final MonthMessageDirection direction;

  MonthData({
    required this.title,
    required this.month,
    required this.description,
    required this.direction,
  });
}