package crud.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import crud.dto.Employee;

@Component
public class MyDao {
	@Autowired
	EntityManager manager;

	public void saveEmployee(Employee employee) {
		manager.getTransaction().begin();
		manager.persist(employee);
		manager.getTransaction().commit();
	}

	public List<Employee> fetchAllEmployee() {
		return manager.createQuery("select x from Employee x").getResultList();
	}

	public void deleteEmployee(Employee employee) {
		manager.getTransaction().begin();
		manager.remove(employee);
		manager.getTransaction().commit();
	}

	public Employee fetchEmployeeById(int id) {
		return manager.find(Employee.class, id);
	}

	public void updateEmployee(Employee employee) {
		manager.getTransaction().begin();
		manager.merge(employee);
		manager.getTransaction().commit();
	}
}
