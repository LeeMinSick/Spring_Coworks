package com.coworks.persistence;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.coworks.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Test
	public void testMapper() {
		System.out.println("ddddddddddddddddddddddddddddddddddddddddddd");
		
		log.info(mapper.getClass().getName());
		System.out.println("ssssssssssssssssssssssssssssssssssssssssssss");
		log.info(mapper.getTime());
		System.out.println("ffffffffffffffffffffffffffffffffffffffffffff");
	}
}
