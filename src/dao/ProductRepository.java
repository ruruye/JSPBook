package dao;

import java.util.ArrayList;
import java.util.List;

import vo.ProductVO;

public class ProductRepository {
	//상품목록(전역변수)
	private List<ProductVO> listOfProducts = new ArrayList<ProductVO>();
	
	
	//싱글톤객체
	private static ProductRepository instance = new ProductRepository();
	//private		ProductRepository() {}
	public static ProductRepository getInstance() {return instance;}
	
	//기본생성자. 3개의 상품정보를 설정
	public ProductRepository() {
		//생성자(상품아이디, 상품명, 상품가격조회)
		ProductVO phone = new ProductVO("P1234", "iPhone 6s", 800000);
		//상품 설명
		phone.setDescription("4.7-inch, 1334x750 Renina HD display."
	            + "8-megapixel iSight Camera");
		//분류
		phone.setCategory("Smart Phone");
		//제조사
		phone.setManufacturer("Apple");
		//재고 수
		phone.setUnitsInStock(1000);
		//신상 or 중고 or 재생품
		phone.setCondition("New");
		//이미지 파읾명
		phone.setFilename("P1234.jpg");
		//-------------------휴대폰 등록 끝----------------------------
		//기본키(Primary key) : 후보키(Candidate Key) 중에서 테이블을 대표하고 데이터 길이가 짧고 자주 사용되는 컬럼을 선택함
		ProductVO notebook = new ProductVO("P1235", "LG PC 그램", 1500000);
		//상품 설명
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation"
	            + "Intel Core processors");
		//분류
		notebook.setCategory("Notebook");
		//제조사
		notebook.setManufacturer("LG");
		//재고 수
		notebook.setUnitsInStock(1000);
		//신상 or 중고 or 재생품
		notebook.setCondition("Refurbished");
		//이미지 파읾명
		notebook.setFilename("P1235.jpg");
		//-------------------노트북 등록 끝----------------------------
		//생성자(상품 아이디, 상품 명, 상품 가격 초기화)
	    ProductVO tablet = new ProductVO("P1236","Galaxy Tab S", 900000);
	    //상품 설명
	    tablet.setDescription("212.8*125.6*6.6m, Super AMOLED display, "
	          + "Octa-Core processor");
	    //분류
	    tablet.setCategory("Tablet");
	    //제조사
	    tablet.setManufacturer("Samsung");
	    //재고 수
	    tablet.setUnitsInStock(1000);
	    //신상품 or 중고품 or 재생품
	    tablet.setCondition("Old");
	    //이미지 파일명
	    tablet.setFilename("P1236.jpg");
	    //-------------------------------태블릿 등록 끝--------------------------------
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	//SELECT * FROM PRODUCT
	//ProductVO 객체 타입의 변수 listOfProducts에 저장된 모든 상품 목록을 가져옴
	public List<ProductVO> getAllProducts(){
		return listOfProducts;
	}
	
	//SELECT * FROM PRODUCT WHERE PRODUCT_ID = 'P1234'
	//상품상세보기
	//listOfProducts 변수에 저장된 3개(이상)의 상품목록 중
	//선택한 상품의 아이디와 일치하는 상품 정보를 가져오는 메소드
	public ProductVO getProductId(String productId) {
		ProductVO ProductById = null;
		//상품 목록(listOfProducts) 반복
		for(ProductVO product : listOfProducts) {
			if(product.getProductId().equals(productId)) {
				ProductById = product;
				break;
			}
		}
		return ProductById;
	}
	//INSERT INTO PRODUCT
	//새로운 상품 등록(ProductVO 타입의 파라미터를 ProductVO타입의 매개변수로 받음)
	public void addProduct(ProductVO product) {
		//기존의 상품목록에 추가
		listOfProducts.add(product);
	}
}








