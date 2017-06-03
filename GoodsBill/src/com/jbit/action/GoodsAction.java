package com.jbit.action;

import java.util.List;

import com.jbit.base.BaseAction;
import com.jbit.entity.Goods;
import com.jbit.service.GoodsService;

@SuppressWarnings("all")
public class GoodsAction extends BaseAction{
	private GoodsService service;
	private List<Goods> list;
	private Goods good;
	//显示页面上的信息
	public String Show(){
		try {
			if(good!=null){
				good=null;
			}
			list=service.getAllGoods(good);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//修改订单
	public String updateGoods(){
		service.updateGoods(good);
		return SUCCESS;
	}
	//单个查询
	public String getById(){
		good=service.getById(good.getId());
		return SUCCESS;
	}
	
	public GoodsService getService() {
		return service;
	}
	public void setService(GoodsService service) {
		this.service = service;
	}
	public List<Goods> getList() {
		return list;
	}
	public void setList(List<Goods> list) {
		this.list = list;
	}
	public Goods getGood() {
		return good;
	}
	public void setGood(Goods good) {
		this.good = good;
	}
	
	
}
