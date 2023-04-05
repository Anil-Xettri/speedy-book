

List<Movie> moviesFromJson(List<dynamic> moviesJson) => List<Movie>.from(
    moviesJson.map((movieJson) => Movie.fromJson(movieJson)));

    List<ShowTimes> showTimesFromJson(List<dynamic> showTimesJson) => List<ShowTimes>.from(
    showTimesJson.map((showTimeJson) => ShowTimes.fromJson(showTimeJson)));

class Movie {
  int? id;
  int? vendorId;
  int? theaterId;
  String? title;
  String? duration;
  String? image;
  String? trailer;
  String? status;
  String? description;
  String? createdAt;
  String? updatedAt;
  String? imageUrl;
  String? trailerUrl;
  List<ShowTimes>? showTimes;

  Movie(
      {this.id,
      this.vendorId,
      this.theaterId,
      this.title,
      this.duration,
      this.image,
      this.trailer,
      this.status,
      this.description,
      this.createdAt,
      this.updatedAt,
      this.imageUrl,
      this.trailerUrl,
      this.showTimes});

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vendorId = json['vendor_id'];
    theaterId = json['theater_id'];
    title = json['title'];
    duration = json['duration'];
    image = json['image'];
    trailer = json['trailer'];
    status = json['status'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    imageUrl = json['image_url'];
    trailerUrl = json['trailer_url'];
    if (json['show_times'] != null) {
      showTimes = showTimesFromJson(json['show_times']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['vendor_id'] = vendorId;
    data['theater_id'] = theaterId;
    data['title'] = title;
    data['duration'] = duration;
    data['image'] = image;
    data['trailer'] = trailer;
    data['status'] = status;
    data['description'] = description;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['image_url'] = imageUrl;
    data['trailer_url'] = trailerUrl;
    if (showTimes != null) {
      data['show_times'] = showTimes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ShowTimes {
  int? id;
  int? vendorId;
  int? theaterId;
  int? movieId;
  String? showDetails;
  String? description;
  String? createdAt;
  String? updatedAt;

  ShowTimes(
      {this.id,
      this.vendorId,
      this.theaterId,
      this.movieId,
      this.showDetails,
      this.description,
      this.createdAt,
      this.updatedAt});

  ShowTimes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vendorId = json['vendor_id'];
    theaterId = json['theater_id'];
    movieId = json['movie_id'];
    showDetails = json['show_details'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['vendor_id'] = vendorId;
    data['theater_id'] = theaterId;
    data['movie_id'] = movieId;
    data['show_details'] = showDetails;
    data['description'] = description;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
