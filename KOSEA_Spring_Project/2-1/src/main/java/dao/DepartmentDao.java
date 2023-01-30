package dao;

import java.util.List;

import model.Department;
import model.Employee;
import model.Location;

public interface DepartmentDao {
	public List<Department> getDeparttments();
	public List<Employee> getEmployees();
	public List<Location> getLocations();
}
