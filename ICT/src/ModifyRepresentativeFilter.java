import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "ModifyRepresentativeFilter")
public class ModifyRepresentativeFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String representative = req.getParameter("representative");

        if( representative.contains("<script>") || representative.contains("</script>"))
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in representative publications.");
        }

        else
        {
            chain.doFilter(req, resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
