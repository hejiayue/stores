package com.jbit.service.impl;

import java.util.List;

import com.jbit.dao.GoodsDao;
import com.jbit.entity.Goods;
import com.jbit.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {
	private GoodsDao dao;
	@Override
	public List<Goods> getAllGoods(Goods good) {
		return dao.getAllGoods(good);
	}
	public GoodsDao getDao() {
		return dao;
	}
	public void setDao(GoodsDao dao) {
		this.dao = dao;
	}
	@Override
	public void updateGoods(Goods good) {
		dao.updateGoods(good);
	}
	@Override
	public Goods getById(Long id) {
		return dao.getById(id);
	}
	
}
