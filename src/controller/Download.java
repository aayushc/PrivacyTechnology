package controller;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class Download extends Action {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return "download.do";
	}

	@Override
	public String perform(HttpServletRequest request, HttpServletResponse response) throws IOException,
			ServletException {
		// TODO Auto-generated method stub
		System.out.println("Inside Doget");
		try {

			DocumentBuilderFactory docFactory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

			// root elements
			Document doc = docBuilder.newDocument();
			Element rootElement = doc.createElement("page1");
			doc.appendChild(rootElement);

			// staff elements
			Element staff = doc.createElement("Staff");
			rootElement.appendChild(staff);

			// set attribute to staff element
			Attr attr = doc.createAttribute("id");
			attr.setValue("1");
			staff.setAttributeNode(attr);

			// shorten way
			Page1Bean bean1= (Page1Bean)request.getSession().getAttribute("page1");
			// username elements
			
			if(bean1.getInstitution()!=null) {
				//System.out.println("ddd: "+bean1.getInstitution());
				Element institution = doc.createElement("institution");
				institution.appendChild(doc.createTextNode(bean1.getInstitution()));
				staff.appendChild(institution);
			}
			
			if(bean1.getRevdate()!=null) {
				// name elements
				Element revdate = doc.createElement("revdate");
				revdate.appendChild(doc.createTextNode(bean1.getRevdate()));
				staff.appendChild(revdate);
			}
			
			if(bean1.getQ1()!=null) {
				// phone elements
				Element q1 = doc.createElement("q1");
				q1.appendChild(doc.createTextNode(bean1.getQ1()));
				staff.appendChild(q1);
			}
			
			if(bean1.getQ2()!=null) {
				// salary elements
				Element q2 = doc.createElement("q2");
				q2.appendChild(doc.createTextNode(bean1.getQ2()));
				staff.appendChild(q2);
			}
			
			if(bean1.getQ3()!=null) {
				Element q3 = doc.createElement("q3");
				q3.appendChild(doc.createTextNode(bean1.getQ3()));
				staff.appendChild(q3);
			}
			
			if(bean1.getQ4()!=null) {
				Element q4 = doc.createElement("q4");
				q4.appendChild(doc.createTextNode(bean1.getQ4()));
				staff.appendChild(q4);
			}
			
			if(bean1.getQ5()!=null) {
				Element q5 = doc.createElement("q5");
				q5.appendChild(doc.createTextNode(bean1.getQ5()));
				staff.appendChild(q5);
			}
			
			if(bean1.getQ6()!=null) {
				Element q6 = doc.createElement("q6");
				q6.appendChild(doc.createTextNode(bean1.getQ6()));
				staff.appendChild(q6);
			}
			
			if(bean1.getQ7()!=null) {
				Element q7 = doc.createElement("q7");
				q7.appendChild(doc.createTextNode(bean1.getQ7()));
				staff.appendChild(q7);
			}
			
			if(bean1.getQ8()!=null) {
				Element q8 = doc.createElement("q8");
				q8.appendChild(doc.createTextNode(bean1.getQ8()));
				staff.appendChild(q8);
			}
			
			if(bean1.getQ9()!=null) {
				Element q9 = doc.createElement("q9");
				q9.appendChild(doc.createTextNode(bean1.getQ9()));
				staff.appendChild(q9);
			}
			
			/*Element q10 = doc.createElement("q10");
			q10.appendChild(doc.createTextNode(bean1.getQ10()));
			staff.appendChild(q10);
			*/
			if(bean1.getQ11()!=null) {
				Element q11 = doc.createElement("q11");
				q11.appendChild(doc.createTextNode(bean1.getQ11()));
				staff.appendChild(q11);
			}
			
			if(bean1.getQ12()!=null) {
				Element q12 = doc.createElement("q12");
				q12.appendChild(doc.createTextNode(bean1.getQ12()));
				staff.appendChild(q12);
				//System.out.println(bean1.getQ12());
			}
			
			if(bean1.getQ13()!=null) {
				Element q13 = doc.createElement("q13");
				q13.appendChild(doc.createTextNode(bean1.getQ13()));
				staff.appendChild(q13);
			}
			
			if(bean1.getQ14()!=null) {
				Element q14 = doc.createElement("q14");
				q14.appendChild(doc.createTextNode(bean1.getQ14()));
				staff.appendChild(q14);
			}
			
			if(bean1.getQ15()!=null) {
				Element q15 = doc.createElement("q15");
				q15.appendChild(doc.createTextNode(bean1.getQ15()));
				staff.appendChild(q15);
			}
			
			/*Element q16 = doc.createElement("q16");
			q16.appendChild(doc.createTextNode(bean1.getQ16()));
			staff.appendChild(q16);*/
			
			if(bean1.getQ17()!=null) {
				Element q17 = doc.createElement("q17");
				q17.appendChild(doc.createTextNode(bean1.getQ17()));
				staff.appendChild(q17);
			}
			
			if(bean1.getQ()!=null) {
				Element q = doc.createElement("q");
				q.appendChild(doc.createTextNode(bean1.getQ()));
				staff.appendChild(q);
			}
			
			if(bean1.getPhone()!=null) {
				Element phone = doc.createElement("phone");
				phone.appendChild(doc.createTextNode(bean1.getPhone()));
				staff.appendChild(phone);
			}
			
			if(bean1.getPhone1()!=null) {
				Element phone1 = doc.createElement("phone1");
				phone1.appendChild(doc.createTextNode(bean1.getPhone1()));
				staff.appendChild(phone1);
			}
			
			if(bean1.getWebsite()!=null) {
				Element website = doc.createElement("website");
				website.appendChild(doc.createTextNode(bean1.getWebsite()));
				staff.appendChild(website);
			}
			
			if(bean1.getWebsite1()!=null) {
				Element website1 = doc.createElement("website1");
				website1.appendChild(doc.createTextNode(bean1.getWebsite1()));
				staff.appendChild(website1);
			}
			
			if(bean1.getAl1()!=null) {
				Element al1 = doc.createElement("al1");
				al1.appendChild(doc.createTextNode(bean1.getAl1()));
				staff.appendChild(al1);
			}
			
			if(bean1.getAl2()!=null) {
				Element al2 = doc.createElement("al2");
				al2.appendChild(doc.createTextNode(bean1.getAl2()));
				staff.appendChild(al2);
			}
			
			if(bean1.getCity()!=null) {
				Element city = doc.createElement("city");
				city.appendChild(doc.createTextNode(bean1.getCity()));
				staff.appendChild(city);
			}
			
			if(bean1.getState()!=null) {
				Element state = doc.createElement("state");
				state.appendChild(doc.createTextNode(bean1.getState()));
				staff.appendChild(state);
			}
			
			if(bean1.getZip()!=null) {
				Element zip = doc.createElement("zip");
				zip.appendChild(doc.createTextNode(bean1.getZip()));
				staff.appendChild(zip);
			}
			
			if(bean1.getAccnt()!=null) {
				Element accnt = doc.createElement("accnt");
				accnt.appendChild(doc.createTextNode(bean1.getAccnt()));
				staff.appendChild(accnt);
			}
			
			if(bean1.getDays()!=null) {
				Element days = doc.createElement("days");
				days.appendChild(doc.createTextNode(bean1.getDays()));
				staff.appendChild(days);
			}
			
			if(bean1.getReverse1()!=null) {
				Element reverse1 = doc.createElement("reverse1");
				reverse1.appendChild(doc.createTextNode(bean1.getReverse1()));
				staff.appendChild(reverse1);
			}
			
			if(bean1.getReverse2()!=null) {
				Element reverse2 = doc.createElement("reverse2");
				reverse2.appendChild(doc.createTextNode(bean1.getReverse2()));
				staff.appendChild(reverse2);
			}
			
			if(bean1.getReverse3()!=null) {
				Element reverse3 = doc.createElement("reverse3");
				reverse3.appendChild(doc.createTextNode(bean1.getReverse3()));
				staff.appendChild(reverse3);
			}
			
			if(bean1.getReverse4()!=null) {
				Element reverse4 = doc.createElement("reverse4");
				reverse4.appendChild(doc.createTextNode(bean1.getReverse4()));
				staff.appendChild(reverse4);
			}
			
			String[] what = bean1.getWhat();
			for (int i = 0; i < what.length; i++) {
				Element checkboxvalues = doc.createElement("checkboxvalues");
				checkboxvalues.appendChild(doc.createTextNode(what[i]));
				staff.appendChild(checkboxvalues);
			}
			
			if(request.getSession().getAttribute("page2")!=null ) {
				Page2Bean bean2= (Page2Bean)request.getSession().getAttribute("page2");
				
				if(bean2.getInstitution()!=null) {
					Element page2institution = doc.createElement("page2institution");
					page2institution.appendChild(doc.createTextNode(bean2.getInstitution()));
					staff.appendChild(page2institution);
				}
				
				if(bean2.getProtect()!=null) {
					Element page2protect = doc.createElement("page2protect");
					page2protect.appendChild(doc.createTextNode(bean2.getProtect()));
					staff.appendChild(page2protect);
				}
				
				if(bean2.getProvision()!=null) {
					Element page2provision = doc.createElement("page2provision");
					page2provision.appendChild(doc.createTextNode(bean2.getProvision()));
					staff.appendChild(page2provision);
				}
				
				if(bean2.getQ1()!=null) {
					Element page2q1 = doc.createElement("page2q1");
					page2q1.appendChild(doc.createTextNode(bean2.getQ1()));
					staff.appendChild(page2q1);
				}
				
				if(bean2.getQ2()!=null) {
					Element page2q2 = doc.createElement("page2q2");
					page2q2.appendChild(doc.createTextNode(bean2.getQ2()));
					staff.appendChild(page2q2);
				}
				
				if(bean2.getQ3()!=null) {
					Element page2q3 = doc.createElement("page2q3");
					page2q3.appendChild(doc.createTextNode(bean2.getQ3()));
					staff.appendChild(page2q3);
				}
				
				if(bean2.getQ4()!=null) {
					Element page2q4 = doc.createElement("page2q4");
					page2q4.appendChild(doc.createTextNode(bean2.getQ4()));
					staff.appendChild(page2q4);
				}
				/*
				Element page2q5 = doc.createElement("page2q5");
				page2q5.appendChild(doc.createTextNode(bean2.getQ5()));
				staff.appendChild(page2q5);*/
				
				if(bean2.getQ6()!=null) {
					Element page2q6 = doc.createElement("page2q6");
					page2q6.appendChild(doc.createTextNode(bean2.getQ6()));
					staff.appendChild(page2q6);
				}
				
				
				if(bean2.getQ7()!=null) {
					Element page2q7 = doc.createElement("page2q7");
					page2q7.appendChild(doc.createTextNode(bean2.getQ7()));
					staff.appendChild(page2q7);
				}
				
				if(bean2.getQ8()!=null) {
					Element page2q8 = doc.createElement("page2q8");
					page2q8.appendChild(doc.createTextNode(bean2.getQ8()));
					staff.appendChild(page2q8);
				}
				
				if(bean2.getTa1()!=null) {				
					Element page2ta1 = doc.createElement("page2ta1");
					page2ta1.appendChild(doc.createTextNode(bean2.getTa1()));
					staff.appendChild(page2ta1);
				}
				
				if(bean2.getTa2()!=null) {				
					Element page2ta2 = doc.createElement("page2ta2");
					page2ta2.appendChild(doc.createTextNode(bean2.getTa2()));
					staff.appendChild(page2ta2);
				}
				
				if(bean2.getTa3()!=null) {
					Element page2ta3 = doc.createElement("page2ta3");
					page2ta3.appendChild(doc.createTextNode(bean2.getTa3()));
					staff.appendChild(page2ta3);
				}
				
				if(bean2.getTa4()!=null) {
					Element page2ta4 = doc.createElement("page2ta4");
					page2ta4.appendChild(doc.createTextNode(bean2.getTa4()));
					staff.appendChild(page2ta4);
				}
				
				if(bean2.getTa5()!=null) {
					Element page2ta5 = doc.createElement("page2ta5");
					page2ta5.appendChild(doc.createTextNode(bean2.getTa5()));
					staff.appendChild(page2ta5);
				}
				
				if(bean2.getTa6()!=null) {
					Element page2ta6= doc.createElement("page2ta6");
					page2ta6.appendChild(doc.createTextNode(bean2.getTa6()));
					staff.appendChild(page2ta6);
				}
				
				if(bean2.getOther()!=null) {
					Element page2other= doc.createElement("page2tother");
					page2other.appendChild(doc.createTextNode(bean2.getOther()));
					staff.appendChild(page2other);
				}
				
				if(bean2.getCorpid()!=null) {				
					Element page2corpid= doc.createElement("page2corpid");
					page2corpid.appendChild(doc.createTextNode(bean2.getCorpid()));
					staff.appendChild(page2corpid);
				}
				
				if(bean2.getFcomp()!=null) {
					Element page2fcomp= doc.createElement("page2fcomp");
					page2fcomp.appendChild(doc.createTextNode(bean2.getFcomp()));
					staff.appendChild(page2fcomp);
				}
				
				if(bean2.getNfcomp()!=null) {
					Element page2nfcomp= doc.createElement("page2nfcomp");
					page2nfcomp.appendChild(doc.createTextNode(bean2.getNfcomp()));
					staff.appendChild(page2nfcomp);
				}
				
				String[] page2what = bean2.getWhat();
				
				for (int i = 0; i < page2what.length; i++) {
					Element page2checkboxvalues = doc.createElement("page2checkboxvalues");
					page2checkboxvalues.appendChild(doc.createTextNode(what[i]));
					staff.appendChild(page2checkboxvalues);
				}				
			}
			// income elements
			
			// write the content into xml file
			TransformerFactory transformerFactory = TransformerFactory
					.newInstance();
			Transformer transformer = transformerFactory.newTransformer();
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			transformer.setOutputProperty(
					"{http://xml.apache.org/xslt}indent-amount", "2");
			DOMSource source = new DOMSource(doc);
			StreamResult result = new StreamResult(new File("E:\\file.xml"));

			System.out.println("File saved successfully on server!!!!");
			// Output to console for testing

			try {
				transformer.transform(source, result);
			} catch (TransformerException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			System.out.println("File saved!");
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String filename = "file.xml";
			String filepath = "e:\\";
			response.setContentType("APPLICATION/OCTET-STREAM");
			response.setHeader("Content-Disposition", "attachment; filename=\""
					+ filename + "\"");

			java.io.FileInputStream fileInputStream = new java.io.FileInputStream(
					filepath + filename);

			int i;
			while ((i = fileInputStream.read()) != -1) {
				out.write(i);
			}
			fileInputStream.close();
			out.close();
		} catch (ParserConfigurationException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (TransformerConfigurationException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return null;
	}
}
