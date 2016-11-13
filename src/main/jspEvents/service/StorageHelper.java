package service;

import java.util.ArrayList;
import java.util.List;

import domain.Event;

public class StorageHelper {
	private List<Event> events = new ArrayList<Event>();
	
	public Boolean add(Event event){
		for(Event ev: events){
			if(ev.getName().equalsIgnoreCase(event.getName()))
				return false;
		}
		if(!event.getName().equals("unknown") && !event.getPlace().equals("unknown")){			
			Event newEvent = new Event(event.getName(), event.getOrganizer(), event.getPlace(), event.getDescription(), Event.lastId++, event.getMaxCapacity());
			events.add(newEvent);
			return true;
		}
		else 
			return false;
	}
	
	public List<Event> getAllEvents(){
		return events;
	}
	
	public Event getEvent(int index){
		return events.get(index);
	}
	
	public Boolean updateEvent(Event event)
	{
		for(Event ev: events){
			if(ev.getName().equalsIgnoreCase(event.getName()) && ev.getId() != event.getId())
				return false;
		}
		events.set(event.getId(),  event);
		return true;
	}
	
	public void deleteEvent(int index)
	{
		Event.lastId--;
		events.remove(index);
	}
	
}
