package com.test.ex;

public class CountBean {
	private int cntNumber;
	
	//�⺻������
	public CountBean() {
		System.out.println("CountBead ����!!!");
	}
	
	public void setCount(int n) {
		cntNumber += n;
	}
	
	public int getCount() {
		return cntNumber;
	}
	
	
	
	
}
