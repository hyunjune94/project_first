
 package com.projectfw.infra.common.constants;
 
 public final class Constants {
 
  // for paging 
	 public static final int ROW_NUM_TO_SHOW = 10; 
	 public static final int PAGE_NUM_TO_SHOW = 5;
  
  // insert, update후 페이지 전환 타입: 1-form, 2-list
	public static final int INSERT_AFTER_TYPE = 1;
	public static final int UPDATE_AFTER_TYPE = 1;
	
	public static final int SESSION_MINUTE = 30; 
	
	public static final String URL_LOGINFORM = "/member/loginForm";
  
	public static final String DATETIME_FORMAT_BASIC = "yyyy-MM-dd HH:mm:ss";
	public static final String TIME_FORMAT_BASIC = "HH:mm:ss"; 
  
	public static final int DATE_INTERVAL = -7; 
 }
 