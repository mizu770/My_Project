package com.project.starluck.service;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.project.starluck.dao.StarDao;
import com.project.starluck.domain.Star;
@Service
public class StarServiceImpl implements StarService {
	
	@Autowired
	private StarDao starDao;
	
	
	@Override
	public List<Star> starList() {
		
		return starDao.starList();
	}

	@Override
	public Star getStarLuck(String title) {
		
		return starDao.getStarLuck(title);
	}
}
