class NaveItem {
  final int id;
  final String icon;
  final String label;

  NaveItem({required this.label, required this.id, required this.icon});
}

List<NaveItem> navItems = [
  NaveItem(id: 0, label: "홈", icon: "assets/icons/home.png"),
  NaveItem(id: 1, label: "추천", icon: "assets/icons/star.png"),
  NaveItem(id: 2, label: "카테코리", icon: "assets/icons/square.png"),
  NaveItem(id: 3, label: "검색", icon: "assets/icons/loupe.png"),
  NaveItem(id: 4, label: "마이컬리", icon: "assets/icons/user.png"),
];