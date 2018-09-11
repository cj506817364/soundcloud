package cn.ppj.springBoot.pojo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public class RequestModel {
	public RequestModel(HttpServletRequest request,Model model) {
		this.request = request;
		this.model = model;
	}
	private HttpServletRequest request;
	private Model model;
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public Model getModel() {
		return model;
	}
	public void setModel(Model model) {
		this.model = model;
	}
	
}
