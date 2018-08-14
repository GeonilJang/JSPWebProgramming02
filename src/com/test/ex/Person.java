package com.test.ex;
/*
 * 여기에 설정된 값들은 getter 와 setter를 통해서 접근한다.
 * 
 * 
 * */


public class Person 
{
	private String name;
	private int age;
	private int id;
	private String gender;
	
	public Person()
	{
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
