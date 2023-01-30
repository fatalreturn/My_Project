package sample3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"sample3/beans.xml");
		Human human = (Sato)ctx.getBean("sato");
		human.has();
		human = (Gobayasi)ctx.getBean("gobayasi");
		human.has();
		human = (Danaka)ctx.getBean("danaka");
		human.has();
	}

}
