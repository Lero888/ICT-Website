import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "AddNewsFilter")
public class AddNewsFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        String title = req.getParameter("title");
        String caption = req.getParameter("caption");
        String news_content = req.getParameter("n_content");
        String news_c[] = news_content.split("\n");

        boolean news = true;



        if(title.contains("<script>") || title.contains("</script>")
           || caption.contains("<script>") || caption.contains("</script>")
           || news_content.contains("<script>") || news_content.contains("</script>")
        )
        {
            PrintWriter out = resp.getWriter();
            out.println("Invalid character in title, caption or content.");
        }

        else
        {
            chain.doFilter(req, resp);
        }

    }

    public void init(FilterConfig config) throws ServletException {

    }

}
