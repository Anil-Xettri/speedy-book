
List<Seat> seatsFromJson(List<dynamic> seatsJson) => List<Seat>.from(
    seatsJson.map((seatJson) => Seat.fromJson(seatJson)));

class Seat {
  int? id;
  int? vendorId;
  int? theaterId;
  int? bookingId;
  int? rowNo;
  int? columnNo;
  String? seatName;
  String? status;
  String? createdAt;
  String? updatedAt;

  Seat(
      {this.id,
      this.vendorId,
      this.theaterId,
      this.bookingId,
      this.rowNo,
      this.columnNo,
      this.seatName,
      this.status,
      this.createdAt,
      this.updatedAt});

  Seat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vendorId = json['vendor_id'];
    theaterId = json['theater_id'];
    bookingId = json['booking_id'];
    rowNo = json['row_no'];
    columnNo = json['column_no'];
    seatName = json['seat_name'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['vendor_id'] = vendorId;
    data['theater_id'] = theaterId;
    data['booking_id'] = bookingId;
    data['row_no'] = rowNo;
    data['column_no'] = columnNo;
    data['seat_name'] = seatName;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
