package service;

import java.util.List;

import dto.Hotel;
import dto.Order;

public interface OrderService {

	void commitFirstOrder(Order order) throws Exception;

	int findId(int userid) throws Exception;

	List<Hotel> findHotel(String att_name) throws Exception;

	void insertHotel(String hid, int oid) throws Exception;

	void insertTraf(String tid, Integer oid) throws Exception;
}
