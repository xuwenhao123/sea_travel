package service.impl;

import java.util.List;

import dao.OrderDao;
import dao.impl.OrderDaoImpl;
import dto.Hotel;
import dto.Order;
import service.OrderService;

public class OrderServiceImpl implements OrderService {

	@Override
	public void commitFirstOrder(Order order) throws Exception {
		OrderDao dao = new OrderDaoImpl();
		dao.commitFirstOrder(order);
	}

	@Override
	public int findId(int userid) throws Exception {
		OrderDao dao = new OrderDaoImpl();
		return dao.findId(userid);
	}

	@Override
	public List<Hotel> findHotel(String att_name) throws Exception {
		OrderDao dao = new OrderDaoImpl();
		return dao.findHotel(att_name);
	}

	@Override
	public void insertHotel(String hid,int oid) throws Exception {
		OrderDao dao = new OrderDaoImpl();
		dao.insertHotel(hid,oid);
		
	}

	@Override
	public void insertTraf(String tid, Integer oid) throws Exception {
		OrderDao dao = new OrderDaoImpl();
		dao.insertTraf(tid,oid);
	}
}
