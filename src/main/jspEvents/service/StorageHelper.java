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
		Event newEvent = new Event(event.getName(), event.getBeginDate(), event.getPlace(), event.getDescription(), Event.lastId++);
		events.add(newEvent);
		return true;
	}
	
	public List<Event> getAllEvents(){
		return events;
	}
	
	public void updateEvent(int index, Event event)
	{
		events.set(index,  event);
	}
	
	public void deleteEvent(int index)
	{
		
		events.remove(index);
	}
	
}
