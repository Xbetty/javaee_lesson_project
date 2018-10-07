package org.pxxy.service.impl;
import javax.annotation.Resource;

import org.pxxy.dao.ManagerDao;
import org.pxxy.domain.Manager;
import org.pxxy.service.ManagerService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service(value="managerService") //UserServiceImpl userService=new UserServiceImpl();
@Transactional
public class ManagerServiceImpl implements ManagerService {
	@Resource(name="managerDao")	
	private ManagerDao managerDao;//UserDao userDao=new UserDao()
	@Override
	public Manager register(Manager manager) {
		// TODO Auto-generated method stub
		return managerDao.addManager(manager);
	}
	@Override
	public Manager login(Manager manager) {
		return managerDao.login(manager);
		// TODO Auto-generated method stub
	}
}
