package com.spring.biz.event;

import java.util.List;
import java.util.Map;

public interface EventService {
	
	List<EventVO> getEventList(Map<String, Object> map);

	int countEvent(String key);
}