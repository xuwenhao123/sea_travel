package service;

import java.util.List;

import dto.Traffic;

public interface TrafficService {

	List<Traffic> findAllTraf() throws Exception;

}
