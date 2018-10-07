package org.pxxy.dao;

import org.pxxy.domain.Manager;


public interface ManagerDao{
	public Manager addManager(Manager manager);
	public Manager login(Manager manager);
}
