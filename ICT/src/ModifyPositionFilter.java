import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "ModifyPositionFilter")
public class ModifyPositionFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String position = req.getParameter("position");

        if( position.contains("<script>") || position.contains("</script>"))
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in position.");
        }

        else
        {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
