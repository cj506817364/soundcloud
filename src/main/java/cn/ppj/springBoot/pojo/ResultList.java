package cn.ppj.springBoot.pojo;

import java.io.Serializable;
import java.util.List;

public class ResultList implements Serializable{
	private List<SearchAudio> audioList;
	private long recourdCount;
	private long totalPages;
	public List<SearchAudio> getAudioList() {
		return audioList;
	}
	public void setAudioList(List<SearchAudio> audioList) {
		this.audioList = audioList;
	}
	public long getRecourdCount() {
		return recourdCount;
	}
	public void setRecourdCount(long recourdCount) {
		this.recourdCount = recourdCount;
	}
	public long getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(long totalPages) {
		this.totalPages = totalPages;
	}
	
	
}
