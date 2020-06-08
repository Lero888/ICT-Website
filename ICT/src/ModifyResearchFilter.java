import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "ModifyResearchFilter")
public class ModifyResearchFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String research = req.getParameter("research");

        if( research.contains("<script>") || research.contains("</script>"))
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in research interest.");
        }

        else
        {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
