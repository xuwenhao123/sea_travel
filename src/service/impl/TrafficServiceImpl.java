package service.impl;

import java.util.List;

import dao.TrafficDao;
import dao.impl.TrafficDaoImpl;
import dto.Traffic;
import service.TrafficService;

public class TrafficServiceImpl implements TrafficService {

	@Override
	public List<Traffic> findAllTraf() throws Exception {
		TrafficDao dao = new TrafficDaoImpl();
		return dao.findAlltraf();
	}

}
