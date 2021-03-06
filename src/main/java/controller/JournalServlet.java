package controller;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import dao.CampaignDAO;
import dao.CampaignDAOException;
import dao.CampaignDAOImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "JournalServlet", value = "/JournalServlet")
public class JournalServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        final CampaignDAO campaignDAO = new CampaignDAOImpl();
        final int user_id = ((int)session.getAttribute("user_id"));

        try {
            final List notes = campaignDAO.retrieveNotes(user_id);
            Gson gson = new Gson();
//            String json = gson.toJson(notes);
//            response.getWriter().println(json);
            JsonElement element = gson.toJsonTree(notes);
            JsonArray jsonArray = element.getAsJsonArray();
            response.getWriter().print(jsonArray);
            request.setAttribute("message", "Retrieved journal entries.");

        } catch (CampaignDAOException exception) {
            exception.printStackTrace();
            request.setAttribute("message", exception.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        final CampaignDAO campaignDAO = new CampaignDAOImpl();
        final int user_id = ((int)session.getAttribute("user_id"));
        final String contents = request.getParameter("contents");

        try {
            campaignDAO.addNote(user_id,contents);
            request.setAttribute("message", "Journal entry added successfully.");
        } catch (CampaignDAOException exception) {
            exception.printStackTrace();
            request.setAttribute("message", exception.getMessage());
        }


    }
}