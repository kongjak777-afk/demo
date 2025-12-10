package com.example.demo;                     // package 선언문: 소스 파일이 속한 패키지(폴더 그룹)를 지정

import java.io.*;                              // import문: 입출력 관련 클래스들을 가져오는 코드
import jakarta.servlet.http.*;                 // import문: HttpServlet, HttpServletRequest 등을 사용하기 위해 불러옴
import jakarta.servlet.annotation.*;           // import문: @WebServlet 같은 어노테이션을 사용하기 위한 패키지

@WebServlet(                                   // 어노테이션(Annotation): 서블릿 설정을 작성하는 문법
        name = "helloServlet_2",                 // name 속성: 서블릿의 이름
        value = "/hello-servlet"               // value 속성: 이 서블릿이 실행될 URL 패턴
)
public class HelloServlet extends HttpServlet { // 클래스 선언: HttpServlet 클래스를 상속한 서블릿 클래스
    // extends: 상속 문법으로 부모(HttpServlet)의 기능을 가져옴

    private String message;                    // 멤버 변수(Field): 클래스에서 사용할 데이터 저장 변수

    public void init() {                       // init() 메서드: 서블릿이 최초 1회 생성될 때 실행되는 생명주기(Lifecycle) 메서드
        message = "Hello World!!!^-^";              // 문자열 초기화
    }

    public void doGet(HttpServletRequest request,   // doGet(): GET 요청이 들어올 때 실행되는 메서드 (서블릿 생명주기 메서드)
                      HttpServletResponse response) // request: 클라이언트 요청 정보
            throws IOException {                    // throws: 이 메서드가 IOException을 던질 수 있다는 선언

        response.setContentType("text/html");       // 응답 헤더 설정: 브라우저에게 HTML 형식임을 알림

        PrintWriter out = response.getWriter();     // PrintWriter: 클라이언트에게 텍스트로 응답을 보내는 출력 객체

        out.println("<html><body>");                // HTML 문서 시작 태그 출력
        out.println("<h1>" + message + "</h1>");    // message 값을 h1 태그로 출력
        out.println("</body></html>");              // HTML 문서 종료
    }

    public void destroy() {                          // destroy(): 서블릿이 메모리에서 제거될 때 실행되는 생명주기(Lifecycle) 메서드
        // 리소스 정리 코드가 필요할 때 사용
    }
}
