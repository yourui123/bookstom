package cn.ces.entity;

import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.command.BaseModel;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;




@Table(name="users")
public class Users extends BaseModel {

		@Column(name = "uid",type = MySqlTypeConstant.INT,length = 11,isKey = true)
	    private Integer	uid;

	    @Column(name = "uname",type = MySqlTypeConstant.VARCHAR,length = 50)
	    private String	uname;
	    
	    @Column(name = "pwd",type = MySqlTypeConstant.VARCHAR,length = 50)
	    private String	pwd;

	    @Column(name = "sex",type = MySqlTypeConstant.VARCHAR,length = 50,isNull = true)
	    private String	sex; 
	    
	    @Column(name = "phone",type = MySqlTypeConstant.VARCHAR,length = 50,isNull = true)
	    private String	phone;
	    
	    @Column(name = "rid",type = MySqlTypeConstant.INT,length = 50)
	    private Integer	rid;


	    private String rname;

	    private String other_name;

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getOther_name() {
		return other_name;
	}

	public void setOther_name(String other_name) {
		this.other_name = other_name;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getRid() {
		return rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}
}
