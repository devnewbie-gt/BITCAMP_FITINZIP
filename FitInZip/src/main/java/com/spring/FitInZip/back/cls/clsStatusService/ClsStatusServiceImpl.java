package com.spring.FitInZip.back.cls.clsStatusService;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.FitInZip.back.cls.clsStatus.Criteria;
import com.spring.FitInZip.back.cls.dao.ClsStatusDAO;
import com.spring.FitInZip.back.cls.vo.ClsVO;

@Service
public class ClsStatusServiceImpl implements ClsStatusService {
	@Autowired
	private ClsStatusDAO dao;
	
	@Override
	public List<ClsVO> getList(Criteria crt){
		List<ClsVO> list = dao.getListWithPaging(crt);
		return list;
	}
	
	
	
	@Override
	public Integer getTotal(Map<String, String> map) {
		return dao.getClassCount(map);
	}



	@Override
	public void register(ClsVO cls) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ClsVO getClass(ClsVO cls) {
		return dao.getCls(cls);
	}

	@Override
	public void updateClass(ClsVO cls) {
		dao.updateCls(cls);
		
	}

	@Override
	public void insertClass(ClsVO cls) {
		dao.insertCls(cls);
		
	}

	// 클래스 번호 생성을 위한 시퀀스 채번
	@Override
	public String getClassSeq() {
		return dao.getSequence();
	}
	
}
