import 'package:haze/models/aqicn/citystationfeed.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'aqicnclient.g.dart';

@RestApi(baseUrl: "https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/")
abstract class AqicnClient {
  factory AqicnClient(Dio dio) = _AqicnClient;

  @GET("feed/geo:{lat};{lng}/?token=11c5b5b6f4ce91bc8cc0d4c3d9c8c6eb24b17489")
  Future<StationFeed> getStationFeedByLatLng(@Path("lat") String lat,
      @Path("lng") String lng);

  @GET("feed/{station}/?token=11c5b5b6f4ce91bc8cc0d4c3d9c8c6eb24b17489")
  Future<StationFeed> getStationFeed(@Path("station") String station);

  @GET("feed/search/?token=11c5b5b6f4ce91bc8cc0d4c3d9c8c6eb24b17489")
  Future<StationFeed> searchStation(@Query("keyword") String keyword);
}
