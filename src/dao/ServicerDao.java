package dao;

import java.util.List;

import dto.Servicer;

public interface ServicerDao {

	List<Servicer> findServicer() throws Exception;
}
