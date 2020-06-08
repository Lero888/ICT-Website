import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "ModifyNameFilter")
public class ModifyNameFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String name = req.getParameter("name");

        if( name.contains("<script>") || name.contains("</script>"))
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in name.");
        }

        else
        {
            chain.doFilter(req, resp);
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
