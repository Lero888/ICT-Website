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
        String tel = req.getParameter("tel");
        String email = req.getParameter("email");
        String educational = req.getParameter("Educational-Background");
        String research = req.getParameter("Research-Interest");
        String academic = req.getParameter("Academic-Experience");
        String representative = req.getParameter("Representative-Publications");
        PrintWriter out = resp.getWriter();

        if( name.contains("<script>") || name.contains("</script>")
           || position.contains("<script>") || position.contains("</script>")
           || tel.contains("<script>") || tel.contains("</script>")
           || email.contains("<script>") || email.contains("</script>")
        )
        {
            out.println("Invalid character in name, position, tel or email.");
        }

        else if( educational.contains("<script>") || educational.contains("</script>")
                || research.contains("<script>") || research.contains("</script>")
                || academic.contains("<script>") || academic.contains("</script>")
                || representative.contains("<script>") || representative.contains("</script>")
        )
        {
            out.println("Invalid character in educational background, research interest, academic experience or representative publication. ");
        }

        else
        {
            chain.doFilter(req, resp);
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
