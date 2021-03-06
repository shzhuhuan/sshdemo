package com.demo.service;

import java.util.List;
import java.util.Map;

import com.demo.model.User;

/**
 * @Author Aaron
 * @Date 创建时间：2015-12-10
 * @Version 1.0 
 *
 * @Project_Package_Description springmvc || com.demo.service
 * @Function_Description 业务层接口，处理具体的业务方面的逻辑
 *
 */
public interface UserService {

	int insertUser(User user);
	public void updateUser(User user);
	public void deleteUser(int id);
	public List<User> findAllUser();
	public User findByNameAndPassword(String name,String password);
	public User findByNameAndPassword2(Map<String, String> map);
	public User findByName(String name);
	public User findById(int id);
	
	public User loginUser(String name,String password);
	public void registerUser(User user);

}
