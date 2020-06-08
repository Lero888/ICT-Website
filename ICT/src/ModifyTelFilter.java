import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "ModifyTelFilter")
public class ModifyTelFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String tel = req.getParameter("tel");

        if( tel.contains("<script>") || tel.contains("</script>"))
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in telephone.");
        }

        else
        {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
