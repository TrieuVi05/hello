package h.fe.repository;

import java.util.List;
import h.fe.pojo.Student;

public interface IStudentRepository {
	public List<Student> findAll();

	public void save(Student student);

	public void delete(Long studentID);

	public Student findById(Long studentID);

	public void update(Student student);
}