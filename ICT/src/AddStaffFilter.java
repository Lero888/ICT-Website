import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "AddStaffFilter")
public class AddStaffFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        String name = req.getParameter("name");
        String position = req.getParameter("position");
        String school = req.getParameter("school");
        String tel = req.getParameter("tel");
        String email = req.getParameter("email");

        if( name.contains("<script>") || name.contains("</script>") || position.contains("<script>") || position.contains("</script>") || school.contains("<script>") || school.contains("</script>") || tel.contains("<script>") || tel.contains("</script>") || email.contains("<script>") || email.contains("</script>") )
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in title or content");
        }
        else
        {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
