import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "ModifyEmailFilter")
public class ModifyEmailFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String email = req.getParameter("email");

        if( email.contains("<script>") || email.contains("</script>"))
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in email.");
        }

        else
        {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
