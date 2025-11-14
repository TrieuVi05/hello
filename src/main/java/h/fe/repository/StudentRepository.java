package h.fe.repository;

import java.util.List;
import h.fe.pojo.Student; 
import h.fe.dao.StudentDAO; 

public class StudentRepository implements IStudentRepository {
	private StudentDAO studentDAO = null;

	public StudentRepository(String fileConfig) {
		studentDAO = new StudentDAO(fileConfig);
	}

	@Override
	public void save(Student student) {
		studentDAO.save(student);
	}

	@Override
	public List<Student> findAll() {
		return studentDAO.getStudents();
	}

	@Override
	public void delete(Long studentID) {
	    studentDAO.delete(studentID.intValue()); 
	}

	@Override
	public Student findById(Long studentID) {
	    return studentDAO.findById(studentID.intValue());
	}
	@Override
	public void update(Student student) {
		studentDAO.update(student);
	}
}