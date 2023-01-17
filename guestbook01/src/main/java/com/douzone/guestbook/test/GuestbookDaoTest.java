package com.douzone.guestbook.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {
	
	public static void main(String[] args) {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("조영인");
		vo.setPassword("1234");
		vo.setMessage("안눙하세요");
		
		testInsert(vo);
		//testDeleteByPassword("1234");
		testFindAll();
	}

	private static void testDeleteByPassword(String password) {
		new GuestbookDao().deleteByPassword(password);
	}

	private static void testFindAll() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}

	private static void testInsert(GuestbookVo vo) {
		new GuestbookDao().insert(vo);
	}
}
