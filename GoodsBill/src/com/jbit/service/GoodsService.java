package com.jbit.service;

import java.util.List;

import com.jbit.entity.Goods;

public interface GoodsService {

	public List<Goods> getAllGoods(Goods good);
	public void updateGoods(Goods good);
	public Goods getById(Long id);
}
