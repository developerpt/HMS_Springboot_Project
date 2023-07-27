package com.hmsproject.HMSProject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@Autowired
	SessionFactory sf;

	@RequestMapping("/hms")
	String login() {
		return "login"; // login.jsp is in the "view" folder
	}

	// set login page restrictions
	@RequestMapping("/login")
	public String login(@ModelAttribute Login login, Model model) {
		Session session = sf.openSession();
		Login dblogin = session.get(Login.class, login.getUsername());
		String page = "login";
		String msg = null;
		if (dblogin != null) {
			if (login.getPassword().equals(dblogin.getPassword())) {
				page = "home";
			} else {
				msg = "Invalid Password";
			}
		} else {
			msg = "Invalid Username";
		}
		model.addAttribute("msg", msg); // go to front end

		return page;
	}

	@RequestMapping("/homepage")
	String homepage() {
		return "home";
	}

	@RequestMapping("/createaccount")
	String createaccount() {
		return "signin";
	}

	@RequestMapping("/signin")
	String createaccount2(Login login) {
		Session ss = sf.openSession();
		Transaction tx = ss.beginTransaction();
		ss.save(login); // username and password
		tx.commit();
		return null;
	}

	@RequestMapping("/aboutpage")
	String aboutpage() {
		return "about";
	}

	@RequestMapping("/servicepage")
	String servicepage() {
		return "service";
	}

	@RequestMapping("/contactpage")
	String contactpage() {
		return "contact";
	}

	@RequestMapping("/contact")
	String contactrun(contact contact) {
		Session ss = sf.openSession();
		Transaction tx = ss.beginTransaction();
		ss.save(contact); // name, address, email and contact
		tx.commit();
		return null;
	}

}
