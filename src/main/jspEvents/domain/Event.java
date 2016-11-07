package domain;

public class Event {
	
	private String name = "unknown";
	private String beginDate = "";
	private String place = "unknown";
	private String description;
	private int id = 0;
	
	public static int lastId = 0;
	
	public Event() {
		//super();
	}

	public Event(String name, String beginDate, String place, String description, int id){
		//super();
		this.name = name;
		this.beginDate = beginDate;
		this.place = place;
		this.description = description;
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(String beginDate) {
		this.beginDate = beginDate;
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
	
}