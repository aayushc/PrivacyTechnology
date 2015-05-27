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

	/**
	 * handles file upload
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			String fileName = "";
			// gets absolute path of the web application
			String appPath = request.getServletContext().getRealPath("");
			// constructs path of the directory to save uploaded file
			String savePath = appPath + File.separator + SAVE_DIR;

			System.out.println("Saved Path:" + savePath);

			// creates the save directory if it does not exists
			File fileSaveDir = new File(savePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}

			for (Part part : request.getParts()) {
				fileName = extractFileName(part);
				part.write(savePath + File.separator + fileName);
			}

		

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
				MyBean bean = new MyBean();
				if (nNode.getNodeType() == Node.ELEMENT_NODE) {

					Element eElement = (Element) nNode;
					bean.setField1(eElement.getElementsByTagName("username")
							.item(0).getTextContent());
					bean.setField2(eElement.getElementsByTagName("name")
							.item(0).getTextContent());
					bean.setField3(eElement.getElementsByTagName("surname")
							.item(0).getTextContent());
					bean.setField4(eElement.getElementsByTagName("phone")
							.item(0).getTextContent());
					bean.setField5(eElement.getElementsByTagName("salary")
							.item(0).getTextContent());

					NodeList SingleOptionNode = (NodeList) eElement
							.getElementsByTagName("checkboxvalues");
					int nodeLen = SingleOptionNode.getLength();
					if (SingleOptionNode != null && nodeLen > 0) {
						String[] field = new String[4]; /////////////Checkbox hardcoded
						for (int i = 0; i < nodeLen; i++) {
							Element el1 = (Element) SingleOptionNode.item(i);
							int xxx = Integer.parseInt(el1.getTextContent());
								field[xxx] = "checked";
						}
						System.out.println(Arrays.toString(field));
						bean.setField6(field);
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
				request.setAttribute("mybean", bean);
				RequestDispatcher rd = getServletContext()
						.getRequestDispatcher("/login.jsp");
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
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}
}