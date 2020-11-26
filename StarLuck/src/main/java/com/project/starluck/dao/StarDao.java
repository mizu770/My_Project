package com.project.starluck.dao;

import java.util.List;

import com.project.starluck.domain.Star;

public interface StarDao {
	
	public abstract List<Star>starList();
	
	public abstract Star getStarLuck(String title);
	
	public abstract void updateStar();
	

}
