package org.pxxy.service;

import org.pxxy.domain.Manager;

public interface ManagerService {
	public Manager register(Manager manager);
	public Manager login(Manager manager);
}
