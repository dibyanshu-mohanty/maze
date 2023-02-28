class AvailableTickers {
  final String symbol, name, icon, category;
  final double profit, current_price;

  AvailableTickers(
      {this.category = "",
      this.current_price = 0.0,
      this.icon = "",
      this.name = "",
      this.profit = 0.0,
      this.symbol = ""});
}
