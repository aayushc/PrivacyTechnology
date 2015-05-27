package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybeans.form.FormBeanException;
import org.mybeans.form.FormBeanFactory;

public class Page2Action extends Action{

	private FormBeanFactory<Page2Form> formBeanFactory = FormBeanFactory.getInstance(Page2Form.class);
	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return "page1.do";
	}

	@Override
	public String perform(HttpServletRequest request) throws IOException,
			ServletException {
		// TODO Auto-generated method stub
		List<String> errors = new ArrayList<String>();
        request.setAttribute("errors",errors);
        try {
			Page2Form form= formBeanFactory.create(request);
			if(!form.isPresent()) {
				return "Page2.jsp";
			}
			Page2Bean p1= new Page2Bean();
			p1.setInstitution(form.getInstitution());
			p1.setProtect(form.getProtect());
			p1.setWhat(form.getWhat());
			p1.setQ1(form.getQ1());
			p1.setQ2(form.getQ2());
			p1.setQ3(form.getQ3());
			p1.setQ4(form.getQ4());
			p1.setQ5(form.getQ5());
			p1.setQ6(form.getQ6());
			p1.setQ7(form.getQ7());
			p1.setCorpid(form.getCorpid());
			p1.setNfcomp(form.getNfcomp());
			p1.setFcomp(form.getFcomp());
			p1.setOther(form.getOther());
			request.setAttribute("page2", p1);
			System.out.println(p1.getInstitution());
			System.out.println(form.getInstitution());
			System.out.println(form.getQ1());
			HttpSession session= request.getSession();
			session.setAttribute("page2", p1);
		} catch (FormBeanException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "Form.jsp";
	}

}
