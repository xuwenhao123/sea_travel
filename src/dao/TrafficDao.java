package dao;

import java.util.List;

import dto.Traffic;

public interface TrafficDao {

	List<Traffic> findAlltraf() throws Exception;

}
