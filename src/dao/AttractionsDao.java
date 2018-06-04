package dao;

import java.util.List;

import dto.Attractions;

public interface AttractionsDao {

	List<Attractions> findAll() throws Exception;

	String findName(int att_id) throws Exception;
}
