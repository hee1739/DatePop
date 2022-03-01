package com.syhcds.prj.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonObject;
import com.syhcds.prj.dto.CateDTO;
import com.syhcds.prj.dto.StoreDTO;
import com.syhcds.prj.dto.UploadFileDTO;
import com.syhcds.prj.service.StoreService;

@Controller("storeControllerImpl")
public class StoreControllerImpl implements StoreController{

	private static String ARTICLE_IMAGE_REPO = "C:\\work-spring-datapop\\";

	@Autowired
	private StoreService storeService;

	@Autowired
	private StoreDTO storeDTO;
	
	@Autowired
	private CateDTO cateDTO;

	@Override
	@RequestMapping (value="/admin/Admin_productCreate.do",method=RequestMethod.GET)
	public ModelAndView regProdForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		ModelAndView mav = new ModelAndView();
		
		ObjectMapper  objm = new ObjectMapper();
		
		List<CateDTO> list = storeService.listCate();
		
		String cateList = objm.writeValueAsString(list);
		mav.addObject("cateList", cateList);
		
		return mav;
	}
	
	@Override
	@RequestMapping (value="/admin/Admin_productList.do",method=RequestMethod.GET)
	public ModelAndView storeList(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();	
		List<StoreDTO> storeList = storeService.listStore();
		mav.addObject("storeList",storeList);

		return mav;
	}

	@Override
	@RequestMapping(value="/admin/regProd.do",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity listStores(MultipartHttpServletRequest mhsq,
			@ModelAttribute("storeDTO") StoreDTO storeDTO,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		mhsq.setCharacterEncoding("utf-8");
		String imageFileName = null;

		Map prodMap = new HashMap();
		Enumeration enun = mhsq.getParameterNames();
		while (enun.hasMoreElements()) {
			String name = (String) enun.nextElement();
			String value = mhsq.getParameter(name);
			prodMap.put(name, value);
		}

		List<String> fileList = upload(mhsq);
		List<UploadFileDTO> imageFileList = new ArrayList<>();
		if (fileList != null && fileList.size() != 0) {
			for (String fileName : fileList) {
				UploadFileDTO uploadFileDTO = new UploadFileDTO();
				uploadFileDTO.setFile_name(fileName);
				imageFileList.add(uploadFileDTO);
			}
			prodMap.put("imageFileList", imageFileList);
		}

		HttpHeaders responseHeaders = new HttpHeaders(); 
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		String message;
		ResponseEntity resEnt = null;

		try {
			//�꽌鍮꾩뒪 �샇異�
			int articleNO = storeService.addNewStore(prodMap);

			if (imageFileList != null && imageFileList.size() != 0) {
				for (UploadFileDTO uploadFileDTO : imageFileList) {
					imageFileName = uploadFileDTO.getFile_name();
					File srcFile = new File(ARTICLE_IMAGE_REPO +"\\"+ "temp" +"\\"+ imageFileName);
					File destFile = new File(ARTICLE_IMAGE_REPO +"\\"+ articleNO);
					FileUtils.moveFileToDirectory(srcFile, destFile, true);
				}
			}

			message = "<script>";
			message += " alert('�깉湲��쓣 異붽��뻽�뒿�땲�떎.');" ;
			message += " location.href='"+mhsq.getContextPath()+"/board/listArticles.do';";
			message += "</script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);
		}catch (Exception e) {
			if (imageFileList != null && imageFileList.size() != 0) {
				for (UploadFileDTO uploadFileDTO : imageFileList) {
					imageFileName = uploadFileDTO.getFile_name();
					File srcFile = new File(ARTICLE_IMAGE_REPO +"\\"+ "temp" +"\\"+ imageFileName);
					srcFile.delete();
				}
			}

			message = "<script>";
			message += " alert('�삤瑜섍� 諛쒖깮�뻽�뒿�땲�떎. �떎�떆 �떆�룄�빐 二쇱꽭�슂.');" ;
			message += " location.href='"+mhsq.getContextPath()+"/board/articleForm.do';";
			message += "</script>";
			resEnt = new ResponseEntity(message, responseHeaders, HttpStatus.CREATED);			

			e.printStackTrace();
		}

		return resEnt;
	}

	private List<String> upload(MultipartHttpServletRequest multipartRequest) throws ServletException, IOException {

		List<String> fileList = new ArrayList<>();
		Iterator<String> fileNames = multipartRequest.getFileNames();
		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFilename = mFile.getOriginalFilename();

			if (originalFilename != "" && originalFilename != null) {
				fileList.add(originalFilename);
				File file = new File(ARTICLE_IMAGE_REPO +"\\"+ fileName);
				if(mFile.getSize() != 0) {		
					if (!file.exists() ) {		
						file.getParentFile().mkdirs();	
						mFile.transferTo(new File(ARTICLE_IMAGE_REPO +"\\"+ "temp" +"\\"+ originalFilename));  //�엫�떆濡�
					}															// ���옣�븳 MultipartFile�쓣 �떎�젣 �뙆�씪濡� �쟾�넚
				}
			}
		}
		return fileList;
	}


	@RequestMapping(value="/mine/imageUpload.do", method = RequestMethod.POST) 
	public void imageUpload(HttpServletRequest request, HttpServletResponse response, 
			MultipartHttpServletRequest multiFile , @RequestParam MultipartFile upload) throws Exception{ 
		UUID uid = UUID.randomUUID(); 
		OutputStream out = null; 
		PrintWriter printWriter = null; 
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8"); 
		try{ 
			String fileName = upload.getOriginalFilename(); 
			byte[] bytes = upload.getBytes(); 
			String path = ARTICLE_IMAGE_REPO+"store\\";
			String ckUploadPath = path + uid + "_" + fileName;
			System.out.println("path:"+ckUploadPath);
			File folder = new File(path); 
			if(!folder.exists()){ 
				try{ folder.mkdirs(); 
				}catch(Exception e){ 
					e.getStackTrace(); 
				} 
			} 
			out = new FileOutputStream(new File(ckUploadPath)); 
			out.write(bytes); 
			out.flush(); 
			String callback = request.getParameter("CKEditorFuncNum"); 
			printWriter = response.getWriter(); 
			String fileUrl = "/DatePopPrj/mine/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName;
			printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}"); 
			printWriter.flush(); 
			System.out.println("upload complete");
		}catch(IOException e){
			e.printStackTrace();
		} finally { 
			try {
				if(out != null) { 
					out.close(); 
				} 
				if(printWriter != null) { 
					printWriter.close(); 
				} 
			} catch(IOException e) { 
				e.printStackTrace(); 
			} 
		}return; 
	}
	
	@RequestMapping(value="/mine/ckImgSubmit.do")
	public void ckSubmit(@RequestParam(value="uid") String uid , @RequestParam(value="fileName") String fileName 
			, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{ 
		String path = ARTICLE_IMAGE_REPO+"store\\"; 
		String sDirPath = path + uid + "_" + fileName; 
		File imgFile = new File(sDirPath); 
		if(imgFile.isFile()){ 
			byte[] buf = new byte[1024]; 
			int readByte = 0; 
			int length = 0;
			byte[] imgBuf = null; 
			FileInputStream fileInputStream = null; 
			ByteArrayOutputStream outputStream = null; 
			ServletOutputStream out = null; 
			try{ 
				fileInputStream = new FileInputStream(imgFile); 
				outputStream = new ByteArrayOutputStream(); 
				out = response.getOutputStream();
				while((readByte = fileInputStream.read(buf)) != -1){ 
					outputStream.write(buf, 0, readByte); 
				} 
				imgBuf = outputStream.toByteArray(); 
				length = imgBuf.length; out.write(imgBuf, 0, length); 
				out.flush(); 
			}catch(IOException e){ 
				e.printStackTrace();
			}finally { 
				outputStream.close(); 
				fileInputStream.close(); 
				out.close(); 
			}
		}

	}

}
