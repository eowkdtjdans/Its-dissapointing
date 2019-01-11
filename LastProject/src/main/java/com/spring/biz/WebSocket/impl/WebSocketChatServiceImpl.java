package com.spring.biz.WebSocket.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.WebSocket.WebSocketchatService;

@Service("WebSocketService")
public class WebSocketChatServiceImpl implements WebSocketchatService{
	@Autowired
	private WebSocketDAO webSocketDAO;
	
	
	@Override
	public void insertWebSocketChatting(String message) {
		webSocketDAO.insertWebSocketChatting(message);	
	}
	
	
	
}
