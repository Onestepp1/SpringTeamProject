package travel.project.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Attraction { // 관광지 목적지에 어떤 관광지가 있는지
    private long attractionId;
    private long destinationId;
    private String name;
    private String type;
    private String description;


}
