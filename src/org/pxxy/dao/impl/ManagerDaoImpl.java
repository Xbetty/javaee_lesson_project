package org.pxxy.dao.impl;
import java.util.List;
import javax.annotation.Resource;
import org.pxxy.dao.ManagerDao;
import org.pxxy.domain.Manager;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
@Repository("managerDao")
public class ManagerDaoImpl implements ManagerDao {
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;//h5
	@Override
	public Manager addManager(Manager manager) {
		List<Manager> list= (List<Manager>) hibernateTemplate.find("from Manager where managerName=?",manager.getManagerName());
		System.out.println("addManager   list.isEmpty()："+list.isEmpty());
		if(list.isEmpty()==true){
			hibernateTemplate.save(manager);
			return null;
		}else{
			System.out.println("该用户已存在，请重新注册！");
			return list.get(0);
		}
	}
	@Override
	public Manager login(Manager manager) {
		// TODO Auto-generated method stub
		List<Manager> list= (List<Manager>) hibernateTemplate.find("from Manager where managerName=? and managerPassword=? ",manager.getManagerName(),manager.getManagerPassword());
		System.out.println("managerLogin   list.isEmpty()："+list.isEmpty());
		return list.isEmpty()?null:list.get(0);
	}
	
}
