package vo;

//VO : Value Object / DTO : Data Transport Object 
//자바빈 클래스(멤버변수, 기본생성자, getter/setter메소드)
public class UsersVO {
	//멤버변수
	private String id;
	private String passwd;
	private String name;
	private String phone;
	private String phone1;
	private String phone2;
	private String phone3;
	private String email;
	
	//동일 클래스에서 같은 이름의 메소드를 사용 : 오버로딩(파라미터개수, 파라미터타입이 다름)
	//기본생성자(생략가능,기본생성자*쓰는 순간 요거 생략하면 안됨)
	public UsersVO() {}
	//기본생성자*(constructor)
	public UsersVO(String phone1, String phone2, String phone3) {
		this.phone = phone1 + "-" + phone2 + "-" + phone3;
	}
	
	//getter setter메소드
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	//setter메소드
	//010,1111,2222파라미터를 받아서 010-1111-2222를 phone멤버변수에 setting해주는 메소드
	public void setPhones(String phone1, String phone2, String phone3) {
		this.phone = phone1 + "-" + phone2 + "-" + phone3;
	}
	
	@Override
	public String toString() {
		return "UsersVO [id=" + id + ", passwd=" + passwd + ", name=" + name + ", phone=" + phone + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + ", email=" + email + "]";
	}
	
	
	
}
