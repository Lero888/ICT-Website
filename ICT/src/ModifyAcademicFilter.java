import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "ModifyAcademicFilter")
public class ModifyAcademicFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        String academic = req.getParameter("academic");

        if( academic.contains("<script>") || academic.contains("</script>"))
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in academic experience.");
        }

        else
        {
            chain.doFilter(req, resp);
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
