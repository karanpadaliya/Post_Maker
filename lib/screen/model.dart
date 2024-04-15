class QuoteModel {
  String? text;
  int? color;
  int? textColor;
  String? author;
  String? fontName;

  QuoteModel({
    this.text,
    this.color,
    this.textColor,
    this.author,
    this.fontName,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) {
    return QuoteModel(
      text: json["text"],
      color: json["color"],
      textColor: json["text_color"],
      author: json["author"],
      fontName: json["fontName"],
    );
  }

  Map<String, dynamic> toJson() => {
    "text": text,
    "color": color,
    "text_color": textColor,
    "author": author,
    "fontName": fontName,
  };
}