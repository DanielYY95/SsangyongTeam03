package springweb.Service;
/*

package Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import a01_diexp.db.Emp;
import springweb.a02_MVC.a03_dao.A01_EmpDao;

@Service
public class Reference_Service {
	
	// A01_EmpDao 인터페이스로 선언한 내용을 상속한 실제 객체가 컨테이너에서
	// 생성되어있을 때 사용
	
	@Autowired
	private Reference_Repository dao;
	
	public ArrayList<Emp> getEmpList(Emp sch){
		
		// 요청값으로 초기화면일때, null을 "" 으로 처리
		if(sch.getEname()==null) sch.setEname("");
		if(sch.getJob()==null) sch.setJob("");
		
		
		dao.getCount(10);
		dao.getJobCount("A");
		dao.getEmp(7468);
		
		
		System.out.println(dao.getEmpnos("SALESMAN"));
		System.out.println(dao.getSalbyGrade().size());
		
		return dao.getEmpList(sch);
	}
	
	
	
}

*/