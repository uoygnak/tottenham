package blog.vo;

public class MemberVO {
	
	private int bno;
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_birth;
	private String mem_email;
	private String mem_phone;
	private String mem_gender;
	private String mem_oaddress;
	private String mem_address;
	private String mem_detailaddress;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public String getMem_oaddress() {
		return mem_oaddress;
	}
	public void setMem_oaddress(String mem_oaddress) {
		this.mem_oaddress = mem_oaddress;
	}
	public String getMem_address() {
		return mem_address;
	}
	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}
	public String getMem_detailaddress() {
		return mem_detailaddress;
	}
	public void setMem_detailaddress(String mem_detailaddress) {
		this.mem_detailaddress = mem_detailaddress;
	}
	
	@Override
	public String toString() {
		return "MemberVO [bno=" + bno + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name=" + mem_name
				+ ", mem_birth=" + mem_birth + ", mem_email=" + mem_email + ", mem_phone=" + mem_phone + ", mem_gender="
				+ mem_gender + ", mem_oaddress=" + mem_oaddress + ", mem_address=" + mem_address
				+ ", mem_detailaddress=" + mem_detailaddress + "]";
	}
	
	
	
	

}
