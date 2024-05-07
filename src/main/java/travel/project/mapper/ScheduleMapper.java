package travel.project.mapper;

import org.apache.ibatis.annotations.Mapper;
import travel.project.domain.Attraction;
import travel.project.domain.Hotels;
import travel.project.domain.Hotels_Img;
import travel.project.domain.Schedule;

import java.util.List;

@Mapper
public interface ScheduleMapper {
    List<Schedule> findScheduleById(long packId);

    int getMaxDayNum(long packId);

    List<Attraction> findAttractionByDayNum(int i,long packId);

    Hotels findHotelByDayNum(int i,long packId);

    List findRestaurantByDayNum(int i,long packId);

    List<Hotels_Img> getHotelImages(long hotelId);
}
