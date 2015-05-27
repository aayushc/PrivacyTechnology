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
			Element staff = doc.createElement("institute");
			rootElement.appendChild(staff);

			// set attribute to staff element
			Attr attr = doc.createAttribute("id");
			attr.setValue("1");
			staff.setAttributeNode(attr);

			// shorten way
			Page1Bean bean1= (Page1Bean)request.getSession().getAttribute("page1");
			// username elements
			System.out.println("ddd: "+bean1.getInstitution());
			Element institution = doc.createElement("institution");
			institution.appendChild(doc.createTextNode(bean1.getInstitution()));
			staff.appendChild(institution);

			// name elements
			Element revdate = doc.createElement("revdate");
			revdate.appendChild(doc.createTextNode(bean1.getRevdate()));
			staff.appendChild(revdate);

			// surname elements
			/*Element what = doc.createElement("what");
			what.appendChild(doc.createTextNode(bean1.getWhat()));
			staff.appendChild(what);*/

			// phone elements
			Element q1 = doc.createElement("q1");
			q1.appendChild(doc.createTextNode(bean1.getQ1()));
			staff.appendChild(q1);

			// salary elements
			Element q2 = doc.createElement("q2");
			q2.appendChild(doc.createTextNode(bean1.getQ2()));
			staff.appendChild(q2);
			
			Element q3 = doc.createElement("q3");
			q3.appendChild(doc.createTextNode(bean1.getQ3()));
			staff.appendChild(q3);
			
			Element q4 = doc.createElement("q4");
			q4.appendChild(doc.createTextNode(bean1.getQ4()));
			staff.appendChild(q4);
			
			Element q5 = doc.createElement("q5");
			q5.appendChild(doc.createTextNode(bean1.getQ5()));
			staff.appendChild(q5);
			
			Element q6 = doc.createElement("q6");
			q6.appendChild(doc.createTextNode(bean1.getQ6()));
			staff.appendChild(q6);
			
			Element q7 = doc.createElement("q7");
			q7.appendChild(doc.createTextNode(bean1.getQ7()));
			staff.appendChild(q7);
			
			Element q8 = doc.createElement("q8");
			q8.appendChild(doc.createTextNode(bean1.getQ8()));
			staff.appendChild(q8);
			
			Element q9 = doc.createElement("q9");
			q9.appendChild(doc.createTextNode(bean1.getQ9()));
			staff.appendChild(q9);
			
			Element q10 = doc.createElement("q10");
			q10.appendChild(doc.createTextNode(bean1.getQ10()));
			staff.appendChild(q10);
			
			Element q11 = doc.createElement("q11");
			q11.appendChild(doc.createTextNode(bean1.getQ11()));
			staff.appendChild(q11);
			
			Element q12 = doc.createElement("q12");
			q12.appendChild(doc.createTextNode(bean1.getQ12()));
			staff.appendChild(q12);
			
			Element q13 = doc.createElement("q13");
			q13.appendChild(doc.createTextNode(bean1.getQ13()));
			staff.appendChild(q13);
			
			Element q14 = doc.createElement("q14");
			q14.appendChild(doc.createTextNode(bean1.getQ14()));
			staff.appendChild(q14);
			
			Element q15 = doc.createElement("q15");
			q15.appendChild(doc.createTextNode(bean1.getQ15()));
			staff.appendChild(q15);
			
			Element q16 = doc.createElement("q16");
			q16.appendChild(doc.createTextNode(bean1.getQ16()));
			staff.appendChild(q16);
			
			Element q17 = doc.createElement("q17");
			q17.appendChild(doc.createTextNode(bean1.getQ17()));
			staff.appendChild(q17);
			
			Element phone = doc.createElement("phone");
			phone.appendChild(doc.createTextNode(bean1.getPhone()));
			staff.appendChild(phone);
			
			Element phone1 = doc.createElement("phone1");
			phone1.appendChild(doc.createTextNode(bean1.getPhone1()));
			staff.appendChild(phone1);
			
			Element website = doc.createElement("website");
			website.appendChild(doc.createTextNode(bean1.getWebsite()));
			staff.appendChild(website);
			
			Element website1 = doc.createElement("website1");
			website1.appendChild(doc.createTextNode(bean1.getWebsite()));
			staff.appendChild(website1);
			
			Element al1 = doc.createElement("al1");
			al1.appendChild(doc.createTextNode(bean1.getAl1()));
			staff.appendChild(al1);
			
			Element al2 = doc.createElement("al2");
			al2.appendChild(doc.createTextNode(bean1.getAl2()));
			staff.appendChild(al2);
			
			Element city = doc.createElement("city");
			city.appendChild(doc.createTextNode(bean1.getCity()));
			staff.appendChild(city);
			
			Element state = doc.createElement("state");
			al1.appendChild(doc.createTextNode(bean1.getState()));
			staff.appendChild(state);
			
			Element zip = doc.createElement("zip");
			zip.appendChild(doc.createTextNode(bean1.getZip()));
			staff.appendChild(zip);
			
			String[] what = bean1.getWhat();
			for (int i = 0; i < what.length; i++) {
				Element checkboxvalues = doc.createElement("checkboxvalues");
				checkboxvalues.appendChild(doc.createTextNode(what[i]));
				staff.appendChild(checkboxvalues);
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
