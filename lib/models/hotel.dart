class Hotel {
  final List<String> imgList;
  final String name;
  final double review;
  final double reviewCount;
  final String location;
  final String details;
  final double price;
  bool isLiked;

  Hotel(this.imgList, this.name, this.review, this.reviewCount, this.location,
      this.details, 
      {this.isLiked = false, this.price = 1200});
}
