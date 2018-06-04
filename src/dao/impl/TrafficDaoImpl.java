package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.TrafficDao;
import dto.Traffic;
import utils.DataSourceUtils;

public class TrafficDaoImpl implements TrafficDao {

	@Override
	public List<Traffic> findAlltraf() throws Exception {
    QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
    String sql = " select * from traf_tools";
	return qr.query(sql, new BeanListHandler<>(Traffic.class));
	}

}
