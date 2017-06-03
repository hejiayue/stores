package com.jbit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.jbit.base.impl.BaseDaoImpl;
import com.jbit.dao.GoodsDao;
import com.jbit.entity.Goods;

public class GoodSDaoImpl extends BaseDaoImpl<Goods> implements GoodsDao {

	@Override
	public List<Goods> getAllGoods(Goods good) {
		List<Goods> list=new ArrayList<Goods>();
		String hql="";
		try {
			if(good==null || good.getGoodsdistrict()==0){
				hql="from Goods order by id";
			}else{
				hql="from Goods where goodsdistrict="+good.getGoodsdistrict()+" order by id";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return this.findByHql(hql, null);
	}

	@Override
	public void updateGoods(Goods good) {
		this.update(good);
	}

	@Override
	public Goods getById(Long id) {
		return this.findById(id);
	}

}
