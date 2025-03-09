void main() {
  int n = 6;
  List<List<int>> pascal = [];

  for (int i = 0; i <  n; i++) {
    List<int> row = [1];
    if (i > 0) {
      for (int j = 1; j < i; j++){
        row.add(pascal[i - 1][j - 1] + pascal[i - 1][j]);
      }
      row.add(1);
    }
    pascal.add(row);
  }

  for (int i = 0; i < pascal.length; i++) {
    String rowString = pascal[i].map((e) => e.toString()).join(" ");
    int spaces = (n - i) * 1;
    print(" " * spaces + rowString);
  }
}
