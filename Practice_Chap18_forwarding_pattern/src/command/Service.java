package command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.PersonDto;

public interface Service {
	//공통적으로 Service인터페이스를 기능별로 구현을 할 클래스들을 만들어준다.
	public ArrayList<PersonDto> execute(HttpServletRequest request, HttpServletResponse response);
}
