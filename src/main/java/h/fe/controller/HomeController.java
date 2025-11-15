package h.fe.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import h.fe.pojo.Student;
import h.fe.repository.IStudentRepository;
import h.fe.repository.StudentRepository;

@Controller
public class HomeController {

    // (Giữ nguyên Constructor)
    public HomeController (){
        super();
    }

    // 1. TRANG CHỦ (Chỉ ánh xạ tới "/")
    @RequestMapping(value = {"/", "/layouts-blank"}, method = RequestMethod.GET)
    public String LayoutBlank(Model model){
        IStudentRepository studentRepository = new StudentRepository("JPAs");
        List<Student> students = studentRepository.findAll();
        model.addAttribute("studentsList", students);
        return "home";
    }
    
    // 2. TRANG CÀI ĐẶT TÀI KHOẢN (Chỉ ánh xạ tới địa chỉ cụ thể)
    @RequestMapping(value = "/pages-account-settings-account", method = RequestMethod.GET)
    public String AccountSetting(){
        return "pages-account-settings-account";
    }

    // 3. TRANG DANH SÁCH SINH VIÊN (Chỉ ánh xạ tới địa chỉ cụ thể)
    // LƯU Ý QUAN TRỌNG: Cần sử dụng Model để truyền dữ liệu tới View (Thymeleaf)
    @RequestMapping(value = "/pages-account", method = RequestMethod.GET)
    public String Students(Model model){
        // Lưu ý: Việc khởi tạo Repository trực tiếp như này không phải là Best Practice
        // Bạn nên dùng Dependency Injection (@Autowired)
        IStudentRepository studentRepository = new StudentRepository("JPAs");
        List<Student> students = studentRepository.findAll();
        
        // Thêm danh sách sinh viên vào Model để View có thể truy cập
        model.addAttribute("studentsList", students); 
        
        // Trả về tên file view (ví dụ: pages-account.html)
        return "home";
    }

}