package dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import dao.AttractionsDao;
import dto.Attractions;
import utils.DataSourceUtils;

public class AttractionsDaoImpl implements AttractionsDao {

	
	@Override
	public List<Attractions> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from attractions  ";
		return qr.query(sql, new BeanListHandler<>(Attractions.class));
	}

	@Override
	public String findName(int att_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select att_name from attractions where att_id = ?";
		return (String) qr.query(sql, new ScalarHandler(),att_id);
	}

}
