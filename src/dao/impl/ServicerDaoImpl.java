package dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.ServicerDao;
import dto.Servicer;
import utils.DataSourceUtils;

public class ServicerDaoImpl implements ServicerDao {

	@Override
	public List<Servicer> findServicer() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from servicer order by sid limit 6";
		return qr.query(sql, new BeanListHandler<>(Servicer.class));
	}

}
