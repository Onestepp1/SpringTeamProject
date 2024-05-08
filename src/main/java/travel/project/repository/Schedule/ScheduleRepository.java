package travel.project.repository.Schedule;

import travel.project.domain.*;

import java.util.List;

public interface ScheduleRepository {


    List<Schedule> findScheduleById(long packId);

    int getMaxDayNum(long packId);

    List<Attraction> findAttractionByDayNum(int i,long packId);

    Hotels findHotelByDayNum(int i,long packId);

    List findRestaurantByDayNum(int i,long packId);

    List<Hotels_Img> getHotelImages(long hotelId);

    List<destinations_Img> getDestinationImages(long destId);

    List<HotelAmenities> getHotelAmenities(long hotelId);
}
