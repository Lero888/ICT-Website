import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "ModifyNewsFilter")
public class ModifyNewsFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //AddStaff
        String title = req.getParameter("title");
        String caption = req.getParameter("caption");
        String n_content = req.getParameter("n_content");

        if( title.contains("<script>") || title.contains("</script>")
            || caption.contains("<script>") || caption.contains("</script>")
            || n_content.contains("<script>") || n_content.contains("</script>")
        )

        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in title, caption, date or news content.");
        }

        else
        {
            chain.doFilter(req, resp);
        }


    }

    public void init(FilterConfig config) throws ServletException {

    }

}
