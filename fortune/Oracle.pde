class Oracle {
  String name;
  String description;
  PImage image;

  Oracle() {
  }

  Oracle(String name, String description, PImage image) {
    this.name = name;
    this.description = description;
    this.image = image;
  }

  Oracle(TableRow tableRow) {
    this.name = tableRow.getString("名称");
    this.description = tableRow.getString("説明");
    String imageFile = tableRow.getString("画像ファイル");
    this.image = loadImage(imageFile);
  }
}
