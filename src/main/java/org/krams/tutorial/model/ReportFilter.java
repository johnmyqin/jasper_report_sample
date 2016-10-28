package org.krams.tutorial.model;

import java.util.HashMap;
import java.util.Map;

public class ReportFilter {
	private String startDate;
	private String endDate;
	
	private String exportType;
	private String template;
	private String fileName;
	
	private Map<String, Object> paramsMap = new HashMap<String, Object>();
	
	public Map<String, Object> getParamsMap() {
		return paramsMap;
	}
	public void putParamsMap(String field, Object value) {
		this.paramsMap.put(field, value);
	}
	
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	public String getExportType() {
		return exportType;
	}
	public void setExportType(String exportType) {
		this.exportType = exportType;
	}
	public String getTemplate() {
		return template;
	}
	public void setTemplate(String template) {
		this.template = template;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
}
