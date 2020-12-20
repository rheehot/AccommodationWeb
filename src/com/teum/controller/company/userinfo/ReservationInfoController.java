package com.teum.controller.company.userinfo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.teum.dao.entity.ReservationForCompanyView;
import com.teum.service.AccService;
import com.teum.service.ReservationService;

@WebServlet("/company/userInfo/reservationInfo")
public class ReservationInfoController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("email")==null) {
			response.sendRedirect("/signin");
		}
		else if(((int)session.getAttribute("type")) != 1) {
			response.sendRedirect("/index");
		}
		else {
			int accType = 0;
			int accType_ = Integer.parseInt(request.getParameter("accType"));
			if(request.getParameter("accType") != null && !request.getParameter("accType").equals(""))
				accType = accType_;
			
			int page = 1;
			int page_ = Integer.parseInt(request.getParameter("page"));
			if(request.getParameter("page") != null && !request.getParameter("page").equals(""))
				page = page_;
			
			int companyId = (int)session.getAttribute("id");
			AccService service = new AccService();
			List<Integer> accIds = service.getIds(companyId,accType);
			
			Integer[] accIds_ = accIds.toArray(new Integer[accIds.size()]);
			List<String> accIdsList = new ArrayList<>();
			
			for (int i = 0; i < accIds_.length; i++)
				accIdsList.add(String.valueOf(accIds_[i]));
			
			String accIdsCSV = String.join(",", accIdsList);
			
			ReservationService reservationService = new ReservationService();
			List<ReservationForCompanyView> list = reservationService.getList(accIdsCSV, accType, page);
			
			request.setAttribute("list", list);
			request.setAttribute("accType", accType);
			request.getRequestDispatcher("reservationInfo.jsp").forward(request, response);
			
		}
	}
}