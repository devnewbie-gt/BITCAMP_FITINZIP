package com.spring.FitInZip.back.cls.dto;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class ClsListDTO {

	private String clsCode;			// 클래스코드
	private String trainerId;		// 강사아이디
	private String name;			// 강사 이름
	private String commonName;		// 카테고리 한글로
	private String clsName;			// 수업명		
	private String startDate;		// 시작날짜
	private String startYoil;       // 시작요일
	private String yoil;			// 요일
	private String pm;				// 오전/오후
	private String startTime;		// 시작시간
	private Integer lapse;			// 회차
	private String clsLevel;		// 난이도
	private String perPrice;		// 회당 가격	
	private String totalPrice;		// 전체 가격	
	private Integer maxMem;			// 최대인원
	private Integer join;			// 신청인원
	private Integer reminder;		// 남은인원
	private String thumbnailFileName;
	
	public void setReminder() {
		this.reminder = maxMem - join;
	}
}
