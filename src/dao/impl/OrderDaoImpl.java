package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import dao.OrderDao;
import dto.Hotel;
import dto.Order;
import utils.DataSourceUtils;

public class OrderDaoImpl implements OrderDao {

	@Override
	public void commitFirstOrder(Order order) throws Exception {
        QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
        String sql="insert into myorder(userid,people_num,att_id,start_data,end_data,content) values(?,?,?,?,?,?);";
	    qr.update(sql, order.getUserid(),order.getPeople_num(),order.getAtt_id(),order.getStart_data(),order.getEnd_data(),order.getContent());
	}

	/*
	 * 查找最新的id
	 * (non-Javadoc)
	 * @see dao.OrderDao#findId()
	 */
	@Override
	public int findId(int userid) throws Exception {
        QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
        String sql = "select max(o_id) from myorder where userid = ?";
		return (int) qr.query(sql, new ScalarHandler(),userid);
	}

	@Override
	public List<Hotel> findHotel(String att_name) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from hotel where ofwhere = ?";
		return qr.query(sql, new BeanListHandler<>(Hotel.class),att_name);
	}

	@Override
	public void insertHotel(String hid,int oid) throws Exception {
		 QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
	     String sql="UPDATE myorder SET h_id = ? WHERE o_id = ?";
	     qr.update(sql, hid,oid);
		 
	}

	@Override
	public void insertTraf(String tid, Integer oid) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="UPDATE myorder SET t_id = ? WHERE o_id = ?";
		qr.update(sql,tid,oid);
	}
}
