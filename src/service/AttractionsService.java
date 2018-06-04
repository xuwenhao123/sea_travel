package service;

import java.util.List;

import dto.Attractions;

public interface AttractionsService {

	List<Attractions> findAll() throws Exception;

	String findName(int att_id) throws Exception;
}
