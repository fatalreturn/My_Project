package menu;

import java.util.List;
import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.DepartmentDao;
import model.Department;
import model.Employee;
import model.Location;

public class Menu {
	private DepartmentDao dd;
	
	public void setDd(DepartmentDao dd) {
		this.dd = dd;
	}
	
	public void showMenu() {
		System.out.println("**************************");
		System.out.println("           부서 정보 관리 시스템");
		System.out.println("  1. 종료");
		System.out.println("  2. 부서 목록 보기");
		System.out.println("  3. 사원 목록 보기");
		System.out.println("  4. 위치 목록 보기");
		System.out.println();
		System.out.println("원하시는 번호를 입력하고 Enter를 누르세요.");
	}
	public String getInput() {
		Scanner scan = new Scanner(System.in);
		return scan.nextLine();
	}
	
	public void show() {
		showMenu();
		String input = getInput();
		switch(Integer.parseInt(input)) {
		case 1 : System.out.println("이용해 주셔서 감사합니다.");
					   System.exit(0);
					   break;
		case 2 : List<Department> l = dd.getDeparttments();
					   showDepartmentList(l);
					   break;
		case 3 : List<Employee> e = dd.getEmployees();
					   showEmployeeList(e);
					   break;
		case 4 : List<Location> ll = dd.getLocations();
					   showLocationList(ll);
					   break;
		}
	}
	
	public void showLocationList(List<Location> list) {
		System.out.println("====조회 결과====");
		System.out.println("주소 번호/주소명/우편번호/도시 이름");
		for(Location l : list) {
			System.out.print(l.getLocation_id()+" ");
			System.out.print(l.getStreet_address()+" ");
			System.out.print(l.getPostal_code()+" ");
			System.out.println(l.getCity());
		}
		System.out.println("====조회가 완료되었습니다.====");
	}
	public void showEmployeeList(List<Employee> list) {
		System.out.println("====조회 결과====");
		System.out.println("사번/이름(성)/이름(이름)/전화번호");
		for(Employee e : list) {
			System.out.print(e.getEmployee_id()+" ");
			System.out.print(e.getFirst_name()+" ");
			System.out.print(e.getLast_name()+" ");
			System.out.println(e.getPhone_number());
		}
		System.out.println("====조회가 완료되었습니다.====");
	}
	public void showDepartmentList(List<Department> list) {
		System.out.println("====조회 결과====");
		System.out.println("부서번호/부서이름/관리자사번/위치번호");
		for(Department d : list) {
			System.out.print(d.getDepartment_id()+"/");
			System.out.print(d.getDepartment_name()+"/");
			System.out.print(d.getManager_id()+"/");
			System.out.println(d.getLocation_id());
		}
		System.out.println("====조회가 종료되었습니다.====");
	}
	
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"beans.xml");
		Menu menu = (Menu)ctx.getBean("menu");
		menu.show();
	}

}
