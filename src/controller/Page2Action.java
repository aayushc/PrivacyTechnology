package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	public String perform(HttpServletRequest request, HttpServletResponse resp) throws IOException,
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
			p1.setProvision(form.getProvision());
			p1.setQ4(form.getQ4());
			//p1.setQ5(form.getQ5());
			p1.setQ6(form.getQ6());
			p1.setTa1(form.getTa1());
			p1.setTa2(form.getTa2());
			p1.setTa3(form.getTa3());
			p1.setTa4(form.getTa4());
			p1.setTa5(form.getTa5());
			p1.setTa6(form.getTa6());
			p1.setQ7(form.getQ7());
			p1.setQ8(form.getQ8());
			p1.setOther(form.getOther());
			p1.setCorpid(form.getCorpid());
			p1.setNfcomp(form.getNfcomp());
			p1.setFcomp(form.getFcomp());			
			request.setAttribute("page2", p1);
			HttpSession session= request.getSession();
			session.setAttribute("page2", p1);
			if(form.getDownload()!=null && form.getDownload().equals("Download")) {
				return "download.do";
			}
		} catch (FormBeanException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return "Form.jsp";
	}

}
