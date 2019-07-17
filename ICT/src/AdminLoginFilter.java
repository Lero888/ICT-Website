import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "AdminLoginFilter")
public class AdminLoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if( username.contains("\'") || password.contains("\'"))
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in username or password");
        }

        else
        {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}