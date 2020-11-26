package com.project.starluck.service;

import java.util.List;

import com.project.starluck.domain.Star;

public interface StarService {
	
	public abstract List<Star>starList();
	
	public abstract Star getStarLuck(String title);


	
}
