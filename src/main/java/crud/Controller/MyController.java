package crud.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import crud.dao.MyDao;
import crud.dto.Employee;

@Controller
public class MyController {
	
	@Autowired
	MyDao dao;
	
	@GetMapping("/")
	public String loadHome(Model model)
	{
		model.addAttribute("popup", "Welcome!");
		return "home";
	}
	
	@GetMapping("/add")
	public String loadAdd()
	{
		//internally uses Request Dispatcher
		return "add";
	}
	
	@PostMapping("/add")
//	public String add(@RequestParam String name, @RequestParam String mobile, @RequestParam String domain,
//			@RequestParam String email, @RequestParam double salary)
	//or
	public String add(@ModelAttribute Employee employee,ModelMap map,Model model)
	{
		dao.saveEmployee(employee);
//		map.put("msg1", "Data Saved Successfully");
		model.addAttribute("popup", "Data Added Successfully!");
		return "home";
		//return "redirect:/";
	}
	
	@GetMapping("/fetch")
	public String fetch(@ModelAttribute Employee employee,ModelMap map)
	{
		List<Employee> list= dao.fetchAllEmployee();
		map.put("data1", list);
		return "fetch";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam int id,ModelMap map,Model model)
	{
		Employee emp = dao.fetchEmployeeById(id);
		dao.deleteEmployee(emp);
//		map.put("msg2", "Data deleted Success");
		model.addAttribute("popup", "Data Deleted Successfully!");
		return "home";
	}
	
	@GetMapping("/edit")
	public String edit(@RequestParam int id,ModelMap map,Model model)
	{
		Employee emp = dao.fetchEmployeeById(id);
		map.put("data2", emp);
		return "edit";
	}
	
	@PostMapping("/edit")
	public String update(@ModelAttribute Employee employee,Model model)
	{
		dao.updateEmployee(employee);
		model.addAttribute("popup", "Data Edited Successfully!");
		return "home";
	}
	
}
