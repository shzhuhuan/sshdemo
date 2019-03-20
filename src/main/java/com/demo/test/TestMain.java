package com.demo.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.demo.model.User;
import com.demo.service.UserService;

/**
 * @Author Aaron
 * @Date 创建时间：2015-12-11
 * @Version 1.0 
 *
 * @Project_Package_Description springmvc || com.demo.test
 * @Function_Description 测试功能
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)		//表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:conf/spring-mybatis.xml"})
public class TestMain {
	
	private Logger logger = Logger.getLogger(TestMain.class);
	 
	@Resource
	private UserService userService;
	
	@Test
	public void testinsertUser(){
		User user=new User();
		user.setName("222");
		user.setPassword("11111");
		user.setBirthday("2015-01-01");
		user.setOthertitle("123");
		int i  = userService.insertUser(user);
		System.out.println(i);
	}
	
	@Test
	public void testupdateUser(){
		User user=new User();
		user.setId(4);
		user.setName("2222");
		user.setPassword("11222111");
		user.setBirthday("2015-02-02");
		user.setOthertitle("1234");
		userService.updateUser(user);
		System.out.println(JSONObject.fromObject(user));
	}
	
	@Test
	public void testdeleteUser(){
		userService.deleteUser(6);
	}

	@Test
	public void testfindAllUser(){
		List<User> users = userService.findAllUser();
		JSONArray jsonObject = JSONArray.fromObject(users);
		System.out.println("查询所有用户"+jsonObject);
		logger.info("查询所有用户"+jsonObject);
	}

	@Test
	public void testfindUserById(){
		User user = userService.findById(8);
		System.out.println("查询id用户"+JSONObject.fromObject(user));
	}
	
	@Test
	public void testfindUserByNameAndPass(){
		User user = userService.findByNameAndPassword("123", "123");
		System.out.println("查询id用户"+JSONObject.fromObject(user));
	}
	@Test
	public void testfindUserByNameAndPass2(){
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", "123");
		map.put("password", "123");
		User user = userService.findByNameAndPassword2(map);
		System.out.println("查询id用户"+JSONObject.fromObject(user));
	}
	
	
	@Test
	public void testfindUserByName(){
		User user = userService.findByName("123");
		System.out.println("查询id用户"+JSONObject.fromObject(user));
	}


}
