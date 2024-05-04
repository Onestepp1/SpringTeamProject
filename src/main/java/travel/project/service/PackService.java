package travel.project.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import travel.project.domain.Attraction;
import travel.project.domain.Destination;
import travel.project.domain.Hotels;
import travel.project.domain.Pack;
import travel.project.domain.Restaurants;

public interface PackService {
	
	// 호텔 등록
	public Hotels saveHotel(Hotels hotels);
	
	// 호텔 이미지 등록
	public void saveHotelImg(List<String> imgNames, long id);
	
	// 호텔 편의시설 등록

	List<Pack> getPackageListByDestination(String destination);
	
	public void saveHotelAmenities(List<String> amenities, long id);
	
	// 이미지 업로드
	public List<String> uploadImage(MultipartFile[] files, long id, String category);
	
	// Destination 등록
	public long saveDestination(Destination destination);
	
	// Destination 리스트 반환
	public List<Destination> findAllDestination();
	
	// Restaurants 등록
	public void saveRestaurant(Restaurants restaurants, long destination_Id);
	
	// 식당, 명소, 관광지 이미지 등록
	public void saveImg(List<String> imgNames, String type, long id);
	
	// Attraction 등록
	public void saveAttraction(Attraction attraction, long id);
	

}
