package cn.ppj.springBoot.pojo;

/**
 * 此类用于保存当前城市的注册人数,数据库中并没有此表
 * 只是为了便于返回json,所以存在此类
 * @author ppj(皮皮今)
 *
 */
public class CityNum {
	private String name;//城市名
	private Integer value;//注册人数
	
	public CityNum() {
		// TODO Auto-generated constructor stub
	}
	
	
	public CityNum(String name, Integer value) {
		super();
		this.name = name;
		this.value = value;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getValue() {
		return value;
	}
	public void setValue(Integer value) {
		this.value = value;
	}
	@Override
	public String toString() {
		return "CityNum [name=" + name + ", value=" + value + "]";
	}
	
}
