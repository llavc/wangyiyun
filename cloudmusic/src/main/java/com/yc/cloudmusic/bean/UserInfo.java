package com.yc.cloudmusic.bean;

public class UserInfo {
	private Integer usid;
	private String uname;
	private String pwd;
	private String sex;
	private String tel;
	private String email;
	private String photo;
	private String bir;
	private String pro;
	private String city;
	private String area;
	private String mark;
	private String focus;
	private String funs;
	
	@Override
	public String toString() {
		return "UserInfo [usid=" + usid + ", uname=" + uname + ", pwd=" + pwd + ", sex=" + sex + ", tel=" + tel
				+ ", email=" + email + ", photo=" + photo + ", bir=" + bir + ", pro=" + pro + ", city=" + city
				+ ", area=" + area + ", mark=" + mark + ", focus=" + focus + ", funs=" + funs + "]";
	}

	public UserInfo(Integer usid, String uname, String pwd, String sex, String tel, String email, String photo,
			String bir, String pro, String city, String area, String mark, String focus, String funs) {
		super();
		this.usid = usid;
		this.uname = uname;
		this.pwd = pwd;
		this.sex = sex;
		this.tel = tel;
		this.email = email;
		this.photo = photo;
		this.bir = bir;
		this.pro = pro;
		this.city = city;
		this.area = area;
		this.mark = mark;
		this.focus = focus;
		this.funs = funs;
	}

	public UserInfo() {
		super();
	}

	public Integer getUsid() {
		return usid;
	}

	public void setUsid(Integer usid) {
		this.usid = usid;
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getBir() {
		return bir;
	}

	public void setBir(String bir) {
		this.bir = bir;
	}

	public String getPro() {
		return pro;
	}

	public void setPro(String pro) {
		this.pro = pro;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getMark() {
		return mark;
	}

	public void setMark(String mark) {
		this.mark = mark;
	}

	public String getFocus() {
		return focus;
	}

	public void setFocus(String focus) {
		this.focus = focus;
	}

	public String getFuns() {
		return funs;
	}

	public void setFuns(String funs) {
		this.funs = funs;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((area == null) ? 0 : area.hashCode());
		result = prime * result + ((bir == null) ? 0 : bir.hashCode());
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((focus == null) ? 0 : focus.hashCode());
		result = prime * result + ((funs == null) ? 0 : funs.hashCode());
		result = prime * result + ((mark == null) ? 0 : mark.hashCode());
		result = prime * result + ((photo == null) ? 0 : photo.hashCode());
		result = prime * result + ((pro == null) ? 0 : pro.hashCode());
		result = prime * result + ((pwd == null) ? 0 : pwd.hashCode());
		result = prime * result + ((sex == null) ? 0 : sex.hashCode());
		result = prime * result + ((tel == null) ? 0 : tel.hashCode());
		result = prime * result + ((uname == null) ? 0 : uname.hashCode());
		result = prime * result + ((usid == null) ? 0 : usid.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserInfo other = (UserInfo) obj;
		if (area == null) {
			if (other.area != null)
				return false;
		} else if (!area.equals(other.area))
			return false;
		if (bir == null) {
			if (other.bir != null)
				return false;
		} else if (!bir.equals(other.bir))
			return false;
		if (city == null) {
			if (other.city != null)
				return false;
		} else if (!city.equals(other.city))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (focus == null) {
			if (other.focus != null)
				return false;
		} else if (!focus.equals(other.focus))
			return false;
		if (funs == null) {
			if (other.funs != null)
				return false;
		} else if (!funs.equals(other.funs))
			return false;
		if (mark == null) {
			if (other.mark != null)
				return false;
		} else if (!mark.equals(other.mark))
			return false;
		if (photo == null) {
			if (other.photo != null)
				return false;
		} else if (!photo.equals(other.photo))
			return false;
		if (pro == null) {
			if (other.pro != null)
				return false;
		} else if (!pro.equals(other.pro))
			return false;
		if (pwd == null) {
			if (other.pwd != null)
				return false;
		} else if (!pwd.equals(other.pwd))
			return false;
		if (sex == null) {
			if (other.sex != null)
				return false;
		} else if (!sex.equals(other.sex))
			return false;
		if (tel == null) {
			if (other.tel != null)
				return false;
		} else if (!tel.equals(other.tel))
			return false;
		if (uname == null) {
			if (other.uname != null)
				return false;
		} else if (!uname.equals(other.uname))
			return false;
		if (usid == null) {
			if (other.usid != null)
				return false;
		} else if (!usid.equals(other.usid))
			return false;
		return true;
	}
}
