package com.tann.java.dog;

public class Dog {
	public String color;
	public String name;
	public String breed;
	
	public Dog(String color, String name, String breed) {
		this.color = color;
		this.name = name;
		this.breed = breed;
	}
	
	public void wagging(String waggingTheTail) {
		System.out.println("hanh dong cua con cho: " +waggingTheTail);
	}
}
