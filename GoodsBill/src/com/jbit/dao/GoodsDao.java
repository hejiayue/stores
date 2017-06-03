package com.jbit.dao;

import java.util.List;

import com.jbit.base.BaseDao;
import com.jbit.entity.Goods;

public interface GoodsDao extends BaseDao<Goods>{
	
		public List<Goods> getAllGoods(Goods good);
		public void updateGoods(Goods good);
		
		public Goods getById(Long id);

}
