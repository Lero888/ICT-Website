import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "ModifyEduFilter")
public class ModifyEduFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String educational = req.getParameter("educational");

        if( educational.contains("<script>") || educational.contains("</script>"))
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in educational background.");
        }

        else
        {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
