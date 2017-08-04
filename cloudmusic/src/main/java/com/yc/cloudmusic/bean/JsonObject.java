package com.yc.cloudmusic.bean;

public class JsonObject {
	private int pageNo=1;
	private int pageSize=10;
	private int total=0;
	private Object rows=null;
	
	@Override
	public String toString() {
		return "JsonObject [pageNo=" + pageNo + ", pageSize=" + pageSize + ", total=" + total + ", rows=" + rows + "]";
	}

	public JsonObject(int pageNo, int pageSize, int total, Object rows) {
		super();
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.total = total;
		this.rows = rows;
	}
	
	public JsonObject(int pageNo, int pageSize) {
		super();
		this.pageNo = pageNo;
		this.pageSize = pageSize;
	}

	public JsonObject() {
		super();
	}
	
	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Object getRows() {
		return rows;
	}

	public void setRows(Object rows) {
		this.rows = rows;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + pageNo;
		result = prime * result + pageSize;
		result = prime * result + ((rows == null) ? 0 : rows.hashCode());
		result = prime * result + total;
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
		JsonObject other = (JsonObject) obj;
		if (pageNo != other.pageNo)
			return false;
		if (pageSize != other.pageSize)
			return false;
		if (rows == null) {
			if (other.rows != null)
				return false;
		} else if (!rows.equals(other.rows))
			return false;
		if (total != other.total)
			return false;
		return true;
	}
	
}
