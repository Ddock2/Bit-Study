package kr.co.mlec.homework.homework07;

public class Rectangle extends Calc{

	@Override
	public void calc() {
		int b = r.nextInt(9) + 1;
		System.out.println("직사각형의 넓이는 " + a*b + " 입니다");
		
	}

}
