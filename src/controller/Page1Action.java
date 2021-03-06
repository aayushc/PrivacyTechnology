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


public class Page1Action  extends Action{

	private FormBeanFactory<Page1Form> formBeanFactory = FormBeanFactory.getInstance(Page1Form.class);
	
	@Override
	public String getName() {
		return "page.do";
	}

	@Override
	public String perform(HttpServletRequest request, HttpServletResponse resp) throws IOException,
			ServletException {
		// TODO Auto-generated method stub
		List<String> errors = new ArrayList<String>();
        request.setAttribute("errors",errors);
        try {
        	System.out.println("dsfsd");
			Page1Form form= formBeanFactory.create(request);
			if(!form.isPresent()) {
				System.out.println("inside4324");
				return "Page1.jsp";
			}
			Page1Bean p1= new Page1Bean();
			p1.setInstitution(form.getInstitution());
			p1.setRevdate(form.getRevdate());
			p1.setWhat(form.getWhat());
			p1.setQ1(form.getQ1());
			p1.setQ2(form.getQ2());
			p1.setQ3(form.getQ3());
			p1.setQ4(form.getQ4());
			p1.setQ5(form.getQ5());
			p1.setQ6(form.getQ6());
			p1.setQ7(form.getQ7());
			p1.setQ8(form.getQ8());
			p1.setQ9(form.getQ9());
			//p1.setQ10(form.getQ10());
			p1.setQ11(form.getQ11());
			p1.setQ12(form.getQ12());
			p1.setQ13(form.getQ13());
			p1.setQ14(form.getQ14());
			p1.setQ15(form.getQ15());
			//p1.setQ16(form.getQ16());
			p1.setQ(form.getQ());
			p1.setQ17(form.getQ17());
			p1.setPhone(form.getPhone());			
			p1.setPhone1(form.getPhone1());
			p1.setWebsite(form.getWebsite());
			p1.setWebsite1(form.getWebsite1());
			p1.setAl1(form.getAl1());
			p1.setAl2(form.getAl2());
			p1.setCity(form.getCity());
			p1.setState(form.getState());
			p1.setZip(form.getZip());
			p1.setAccnt(form.getAccnt());
			p1.setDays(form.getDays());
			p1.setReverse1(form.getReverse1());
			p1.setReverse2(form.getReverse2());
			p1.setReverse3(form.getReverse3());
			p1.setReverse4(form.getReverse4());			
			request.setAttribute("page1", p1);
			HttpSession session= request.getSession();
			session.setAttribute("page1", p1);
			System.out.println(p1.getQ2());
			/*System.out.println("button: "+form.getDownload());
			System.out.println("button: "+form.getButton());*/
			if(form.getDownload()!=null && form.getDownload().equals("Download")) {
				return "download.do";
			}
		} catch (FormBeanException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        //System.out.println(form.g);
        //if(form.ge)
        return "Page2.jsp";
	}

}
