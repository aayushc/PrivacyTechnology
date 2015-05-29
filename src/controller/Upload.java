package controller;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

@WebServlet("/UploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50)
// 50MB
public class Upload extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * Name of the directory where uploaded files will be saved, relative to the
	 * web application directory.
	 */
	private static final String SAVE_DIR = "uploadFiles";

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			String fileName = "";
			// gets absolute path of the web application
			String appPath = request.getServletContext().getRealPath("");
			System.out.println("dd "+appPath);
			// constructs path of the directory to save uploaded file
			String savePath = appPath + File.separator + SAVE_DIR;

			System.out.println("Saved Path:" + savePath);

			// creates the save directory if it does not exists
			File fileSaveDir = new File(savePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}
			System.out.println("r::"+request.getParts());
			for (Part part : request.getParts()) {
				fileName = extractFileName(part);
				part.write(savePath + File.separator + fileName);
				
			}

			System.out.println(fileName);
			System.out.println("adas: "+savePath + File.separator + fileName);
			File fXmlFile = new File(savePath + File.separator + fileName);
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(fXmlFile);
			doc.getDocumentElement().normalize();

			System.out.println("Root element :"
					+ doc.getDocumentElement().getNodeName());

			NodeList nList = doc.getElementsByTagName("Staff");

			System.out.println("----------------------------"+nList.getLength());

			for (int temp = 0; temp < nList.getLength(); temp++) {

				Node nNode = nList.item(temp);

				System.out.println("\nCurrent Element :" + nNode.getNodeName());
				Page1Bean bean = new Page1Bean();
				Page2Bean bean2 = new Page2Bean();
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) nNode;
					bean.setInstitution(eElement.getElementsByTagName("institution")
							.item(0).getTextContent());
					bean.setRevdate(eElement.getElementsByTagName("revdate")
							.item(0).getTextContent());
					bean.setQ1(eElement.getElementsByTagName("q1")
							.item(0).getTextContent());
					bean.setQ2(eElement.getElementsByTagName("q2")
							.item(0).getTextContent());
					bean.setQ3(eElement.getElementsByTagName("q3")
							.item(0).getTextContent());
					bean.setQ4(eElement.getElementsByTagName("q4")
							.item(0).getTextContent());
					
					bean.setQ5(eElement.getElementsByTagName("q5")
							.item(0).getTextContent());
					bean.setQ6(eElement.getElementsByTagName("q6")
							.item(0).getTextContent());
					bean.setQ7(eElement.getElementsByTagName("q7")
							.item(0).getTextContent());
					bean.setQ8(eElement.getElementsByTagName("q8")
							.item(0).getTextContent());
					bean.setQ9(eElement.getElementsByTagName("q9")
							.item(0).getTextContent());
					bean.setQ11(eElement.getElementsByTagName("q11")
							.item(0).getTextContent());
					bean.setQ12(eElement.getElementsByTagName("q12")
							.item(0).getTextContent());
					bean.setQ13(eElement.getElementsByTagName("q13")
							.item(0).getTextContent());
					bean.setQ14(eElement.getElementsByTagName("q14")
							.item(0).getTextContent());
					bean.setQ15(eElement.getElementsByTagName("q15")
							.item(0).getTextContent());
					bean.setQ17(eElement.getElementsByTagName("q17")
							.item(0).getTextContent());
					bean.setPhone(eElement.getElementsByTagName("phone")
							.item(0).getTextContent());
					bean.setPhone1(eElement.getElementsByTagName("phone1")
							.item(0).getTextContent());
					bean.setWebsite(eElement.getElementsByTagName("website")
							.item(0).getTextContent());
					bean.setWebsite1(eElement.getElementsByTagName("website1")
							.item(0).getTextContent());
					bean.setAl1(eElement.getElementsByTagName("al1")
							.item(0).getTextContent());
					bean.setAl2(eElement.getElementsByTagName("al2")
							.item(0).getTextContent());
					bean.setCity(eElement.getElementsByTagName("city")
							.item(0).getTextContent());
					bean.setState(eElement.getElementsByTagName("state")
							.item(0).getTextContent());
					bean.setZip(eElement.getElementsByTagName("zip")
							.item(0).getTextContent());
					bean.setAccnt(eElement.getElementsByTagName("accnt")
							.item(0).getTextContent());
					bean.setDays(eElement.getElementsByTagName("days")
							.item(0).getTextContent());
					bean.setReverse1(eElement.getElementsByTagName("reverse1")
							.item(0).getTextContent());
					bean.setReverse2(eElement.getElementsByTagName("reverse2")
							.item(0).getTextContent());
					bean.setReverse3(eElement.getElementsByTagName("reverse3")
							.item(0).getTextContent());
					bean.setReverse4(eElement.getElementsByTagName("reverse4")
							.item(0).getTextContent());
					bean.setQ(eElement.getElementsByTagName("q")
							.item(0).getTextContent());
					NodeList SingleOptionNode = (NodeList) eElement
							.getElementsByTagName("checkboxvalues");
					int nodeLen = SingleOptionNode.getLength();
					if (SingleOptionNode != null && nodeLen > 0) {
						String[] field = new String[nodeLen]; 
						for (int i = 0; i < nodeLen; i++) {
							Element el1 = (Element) SingleOptionNode.item(i);
							String xxx = el1.getTextContent();
							System.out.println(xxx);
								field[i] = xxx;
						}
						//System.out.println(Arrays.toString(field));
						bean.setWhat(field);
					}
					
					System.out.println("allset");
					System.out.println("upppp:  "+request.getAttribute("UploadPage1"));
					//bean2
					if(eElement.getElementsByTagName("page2institution").item(0).getTextContent()!=null) {
					bean2.setCorpid(eElement.getElementsByTagName("page2corpid")
							.item(0).getTextContent());
					bean2.setFcomp(eElement.getElementsByTagName("page2fcomp")
							.item(0).getTextContent());
					bean2.setNfcomp(eElement.getElementsByTagName("page2nfcomp")
							.item(0).getTextContent());
					bean2.setOther(eElement.getElementsByTagName("page2other")
							.item(0).getTextContent());
					bean2.setInstitution(eElement.getElementsByTagName("page2institution")
							.item(0).getTextContent());
					bean2.setProtect(eElement.getElementsByTagName("page2protect")
							.item(0).getTextContent());
					bean2.setProvision(eElement.getElementsByTagName("page2provision")
							.item(0).getTextContent());
					bean2.setQ1(eElement.getElementsByTagName("page2q1")
							.item(0).getTextContent());
					bean2.setQ2(eElement.getElementsByTagName("page2q2")
							.item(0).getTextContent());
					bean2.setQ3(eElement.getElementsByTagName("page2q3")
							.item(0).getTextContent());
					bean2.setQ4(eElement.getElementsByTagName("page2q4")
							.item(0).getTextContent());
					bean2.setQ7(eElement.getElementsByTagName("page2q7")
							.item(0).getTextContent());
					bean2.setQ6(eElement.getElementsByTagName("page2q6")
							.item(0).getTextContent());
					bean2.setQ8(eElement.getElementsByTagName("page2q8")
							.item(0).getTextContent());
					bean2.setTa1(eElement.getElementsByTagName("page2ta1")
							.item(0).getTextContent());
					bean2.setTa2(eElement.getElementsByTagName("page2ta2")
							.item(0).getTextContent());
					bean2.setTa3(eElement.getElementsByTagName("page2ta3")
							.item(0).getTextContent());
					bean2.setTa4(eElement.getElementsByTagName("page2ta4")
							.item(0).getTextContent());
					bean2.setTa5(eElement.getElementsByTagName("page2ta5")
							.item(0).getTextContent());
					bean2.setTa6(eElement.getElementsByTagName("page2ta6")
							.item(0).getTextContent());
					
					System.out.println("wahtset");
					NodeList SingleOptionNode2 = (NodeList) eElement
							.getElementsByTagName("page2checkboxvalues");
					int nodeLen2 = SingleOptionNode2.getLength();
					if (SingleOptionNode2 != null && nodeLen2 > 0) {
						String[] field = new String[nodeLen2]; 
						for (int i = 0; i < nodeLen2; i++) {
							Element el1 = (Element) SingleOptionNode2.item(i);
							String xxx = el1.getTextContent();
							System.out.println(xxx);
								field[i] = xxx;
						}
						//System.out.println(Arrays.toString(field));
						bean2.setWhat(field);
					}
					
					}
					
					
					/*
					 * NodeList list =
					 * eElement.getElementsByTagName("income").item(0).;
					 * String[] checkboxlist = new String[list.getLength()];
					 * for(int i = 0;i<list.getLength();i++) {
					 * checkboxlist[i]=eElement
					 * .getElementsByTagName("income").item(i).getTextContent();
					 * } bean.setField6(checkboxlist);
					 */
				}
				System.out.println("forwarding");
				request.setAttribute("page1", bean);
				request.setAttribute("page2", bean2);
				
				//if(request.getAttribute("").equals(""))
				RequestDispatcher rd = getServletContext()
						.getRequestDispatcher("/Page1.jsp");
				rd.forward(request, response);
			}
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DOMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * Extracts file name from HTTP header content-disposition
	 */
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			System.out.println("s: "+s);
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}

	/*@Override
	public String getName() {
		// TODO Auto-generated method stub
		return "upload.do";
	}

	@Override
	public String perform(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		try {
			String fileName = "";
			// gets absolute path of the web application
			String appPath = request.getServletContext().getRealPath("");
			System.out.println("dd "+appPath);
			// constructs path of the directory to save uploaded file
			String savePath = appPath + File.separator + SAVE_DIR;

			System.out.println("Saved Path:" + savePath);

			// creates the save directory if it does not exists
			File fileSaveDir = new File(savePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}
			System.out.println("r::"+request.getParts());
			for (Part part : request.getParts()) {
				fileName = extractFileName(part);
				part.write(savePath + File.separator + fileName);
				
			}

			System.out.println(fileName);
			System.out.println("adas: "+savePath + File.separator + fileName);
			File fXmlFile = new File(savePath + File.separator + fileName);
			DocumentBuilderFactory dbFactory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(fXmlFile);
			doc.getDocumentElement().normalize();

			System.out.println("Root element :"
					+ doc.getDocumentElement().getNodeName());

			NodeList nList = doc.getElementsByTagName("Staff");

			System.out.println("----------------------------");

			for (int temp = 0; temp < nList.getLength(); temp++) {

				Node nNode = nList.item(temp);

				System.out.println("\nCurrent Element :" + nNode.getNodeName());
				Page1Bean bean = new Page1Bean();
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) nNode;
					bean.setInstitution(eElement.getElementsByTagName("institute")
							.item(0).getTextContent());
					bean.setRevdate(eElement.getElementsByTagName("revdate")
							.item(0).getTextContent());
					bean.setQ1(eElement.getElementsByTagName("q1")
							.item(0).getTextContent());
					bean.setQ2(eElement.getElementsByTagName("q2")
							.item(0).getTextContent());
					bean.setQ3(eElement.getElementsByTagName("q3")
							.item(0).getTextContent());
					bean.setQ4(eElement.getElementsByTagName("q4")
							.item(0).getTextContent());
					
					bean.setQ5(eElement.getElementsByTagName("q5")
							.item(0).getTextContent());
					bean.setQ6(eElement.getElementsByTagName("q6")
							.item(0).getTextContent());
					bean.setQ7(eElement.getElementsByTagName("q7")
							.item(0).getTextContent());
					bean.setQ8(eElement.getElementsByTagName("q8")
							.item(0).getTextContent());
					bean.setQ9(eElement.getElementsByTagName("q9")
							.item(0).getTextContent());
					bean.setQ10(eElement.getElementsByTagName("q10")
							.item(0).getTextContent());
					bean.setQ11(eElement.getElementsByTagName("q11")
							.item(0).getTextContent());
					bean.setQ12(eElement.getElementsByTagName("q12")
							.item(0).getTextContent());
					bean.setQ13(eElement.getElementsByTagName("q13")
							.item(0).getTextContent());
					bean.setQ14(eElement.getElementsByTagName("q14")
							.item(0).getTextContent());
					bean.setQ15(eElement.getElementsByTagName("q15")
							.item(0).getTextContent());
					bean.setQ16(eElement.getElementsByTagName("q16")
							.item(0).getTextContent());
					bean.setQ17(eElement.getElementsByTagName("q17")
							.item(0).getTextContent());
					bean.setPhone(eElement.getElementsByTagName("phone")
							.item(0).getTextContent());
					bean.setPhone1(eElement.getElementsByTagName("phone1")
							.item(0).getTextContent());
					bean.setWebsite(eElement.getElementsByTagName("website")
							.item(0).getTextContent());
					bean.setWebsite1(eElement.getElementsByTagName("website1")
							.item(0).getTextContent());
					bean.setAl1(eElement.getElementsByTagName("al1")
							.item(0).getTextContent());
					bean.setAl2(eElement.getElementsByTagName("al2")
							.item(0).getTextContent());
					bean.setCity(eElement.getElementsByTagName("city")
							.item(0).getTextContent());
					bean.setState(eElement.getElementsByTagName("state")
							.item(0).getTextContent());
					bean.setZip(eElement.getElementsByTagName("zip")
							.item(0).getTextContent());
					
					NodeList SingleOptionNode = (NodeList) eElement
							.getElementsByTagName("checkboxvalues");
					int nodeLen = SingleOptionNode.getLength();
					if (SingleOptionNode != null && nodeLen > 0) {
						String[] field = new String[nodeLen]; 
						for (int i = 0; i < nodeLen; i++) {
							Element el1 = (Element) SingleOptionNode.item(i);
							int xxx = Integer.parseInt(el1.getTextContent());
								field[xxx] = "checked";
						}
						//System.out.println(Arrays.toString(field));
						bean.setWhat(field);
					}

					
					 * NodeList list =
					 * eElement.getElementsByTagName("income").item(0).;
					 * String[] checkboxlist = new String[list.getLength()];
					 * for(int i = 0;i<list.getLength();i++) {
					 * checkboxlist[i]=eElement
					 * .getElementsByTagName("income").item(i).getTextContent();
					 * } bean.setField6(checkboxlist);
					 
				}
				//request.setAttribute("mybean", bean);
				RequestDispatcher rd = getServletContext()
						.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
				return "Page1.jsp";
			}
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DOMException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "Page1.jsp";
	}*/
}