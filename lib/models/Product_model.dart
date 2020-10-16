class ProductDetails {
  String image;
  String location;
  String name;
  bool discount;
  String markedprice; //price before Discont
  String sellingprice; //price after Discount
  String description;
  ProductDetails({
    this.discount,
    this.image,
    this.location,
    this.markedprice,
    this.name,
    this.sellingprice,
    this.description,
  });
}
