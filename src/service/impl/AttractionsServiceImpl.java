package service.impl;

import java.util.List;

import dao.AttractionsDao;
import dao.impl.AttractionsDaoImpl;
import dto.Attractions;
import service.AttractionsService;

public class AttractionsServiceImpl implements AttractionsService {

	@Override
	public List<Attractions> findAll() throws Exception {
		AttractionsDao dao = new AttractionsDaoImpl();
		return dao.findAll();
	}

	@Override
	public String findName(int att_id) throws Exception {

		AttractionsDao dao = new AttractionsDaoImpl();
		return dao.findName(att_id);
	}
}
