<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%	//스크립틀릿
	
	//폼 페이지에서 전송된 파일을 저장할 서버의 경로를 작성
	String fileUploadPath = "C:\\upload";
	//Cmmons-fileupload라이브러리 패키지에 포함되어 있는 DiskfileUpload의 인스턴스를 생성
	DiskFileUpload upload = new DiskFileUpload();
	//웹 브라우저(크롬)가 전송한 multipart/form 유형의 요청 파라미터들을 가져옴
	//parse(파싱) : 구문분석, 의미분석
	List items = upload.parseRequest(request);
	//폼 페이지에서 전송된 요청 파라미터를 Iterator 클래스로 변환
	Iterator params = items.iterator();
	//폼 페이지에서 전송된 요청 파라미터가 더이상 없을때까지 반복
	while(params.hasNext()){
		//params.next()의 리턴타입은 Object이므로 FileItem 타입으로 형변환
		FileItem fileItem =  (FileItem)params.next();
		//FileItem클래스의 메소드를 사용하여 요청 파라미터가
		//일반 데이터인지 파일인지 분석 및 처리하여
		//파일을 업로드함
		//FormField : <input type="text", <input type="radio". <select..
		if(!fileItem.isFormField()){
			//파일명 가져옴
			String fileName =  fileItem.getName();
			//업로드 대상(고객쪽)
			fileName.substring(fileName.lastIndexOf("\\")+1);
			//이곳으로 업로드 => c:\\upload + / + cloud03.jpg
			File file = new File(fileUploadPath + "/" + fileName);
			//설계대로 복사 실행
			fileItem.write(file);
		}
	}
%>