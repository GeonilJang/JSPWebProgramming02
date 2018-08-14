package com.test.ex;

public class CountBean {
	private int cntNumber;
	
	//扁夯积己磊
	public CountBean() {
		System.out.println("CountBead 积己!!!");
	}
	
	public void setCount(int n) {
		cntNumber += n;
	}
	
	public int getCount() {
		return cntNumber;
	}
	
	
	
	
}
