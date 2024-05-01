package travel.project.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter @Setter
public class Hotels {
    private long hotelId;
    private String hotelName;
    private String location;
    private int starRating; // 몇성급인지
    private String description;
}
