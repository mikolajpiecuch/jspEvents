package domain;

public class Event {
	
	private String name = "unknown";
	private String organizer = "";
	private String place = "unknown";
	private String description;
	private int maxCapacity;
	private int id = 0;
	
	public static int lastId = 0;
	
	public Event() {
		//super();
	}

	public Event(String name, String organizer, String place, String description, int id, int max){
		//super();
		this.name = name;
		this.organizer = organizer;
		this.place = place;
		this.description = description;
		this.id = id;
		this.setMaxCapacity(max);
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrganizer() {
		return organizer;
	}

	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}

	public int getMaxCapacity() {
		return maxCapacity;
	}

	public void setMaxCapacity(int maxCapacity) {
		this.maxCapacity = maxCapacity;
	}
	
}