import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class StudenttListServert extends HttpServlet {
    @Override
    public void init() throws ServletException {
        System.out.println("init");

    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("config init");
        super.init(config);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        System.out.println("doGet");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("DoPost");
    }

    @Override
    public void destroy() {
        System.out.println("destory");
        super.destroy();
    }


    public static void main(String[] args) {
        return null；

        int a[] = new int[];
    }





