package aug12;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
class A {A(){ 
	System.out.println("A");
	int r = (int)(Math.random() *10 + 1);
	}
}
class B extends A { 
	B(){ 
		super();//super ������
		System.out.println("B");
		}
	}
class C extends B { 
	C(){
			super();//super ������
			System.out.println("C");
		}
	}
class D extends C { 
	D(){ 
			super();//super ������ : �θ��� �����ڸ� ȣ���ϴ� �� // �Է� �� �� �� �ڹ� �����Ϸ��� �ڵ����� ����
			System.out.println("D");
		}
	}
@WebServlet("/Test2")
public class Test2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Test2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		D d = new D(); //class�� �����ͷ� �ٲٴ� �� instance
		//D�� ������ ���� instance�� �ٲ��� ��
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}