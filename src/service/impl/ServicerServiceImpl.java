package service.impl;

import java.util.List;

import dao.ServicerDao;
import dao.impl.ServicerDaoImpl;
import dto.Servicer;
import service.ServicerService;

public class ServicerServiceImpl implements ServicerService {

	public List<Servicer> findServicer() throws Exception {
        ServicerDao sd = new ServicerDaoImpl();
		return sd.findServicer();
	}
}
