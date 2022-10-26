package library.site.service;


import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Log4j
@WebListener
@Service
public class SessionUserCounter implements HttpSessionListener {
	@Autowired
	private static final Map<String, HttpSession> sessions = new ConcurrentHashMap<>();

	public synchronized static String memberSessionCheck(String type, String mem_email) {
		String result = "";
		log.info("@@ type: "+type+", mem_email: "+mem_email);
		log.info("@@ �α��� ������ sessions: "+sessions);
		for(String key : sessions.keySet()) {
			HttpSession value = sessions.get(key);
			log.info("@@ �α��� ������ value: "+value);
			log.info("@@ �α��� ������ value(type): "+value.getAttribute(type));
			log.info("@@ �α��� ������ key: "+key.toString());
			if(value != null && value.getAttribute("mem_email") != null && value.getAttribute("mem_email").toString().equals(mem_email)) {
				result = key.toString();
				log.info("@@ �α��� if result: "+result);
			}
			
		}
		//removeMemberSession(result);
		return result;
	}
	
	private static void removeMemberSession(String id) {
		log.info("@@ �α��� remove id: "+id);
		if(id != null && id.length() > 0) {
			sessions.get(id).invalidate();
			sessions.remove(id);
			log.info("@@ �α��� remove sessions: "+sessions);
		}
	}
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		log.info("@@ �α��� ���� ���� 1. "+se);
		sessions.put(se.getSession().getId(), se.getSession());
		log.info("@@ �α��� ���� ���� 2. "+sessions);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		if(sessions.get(se.getSession().getId()) != null) {
			log.info("@@ �α��� ���� ���� 1. "+se);
			sessions.get(se.getSession().getId()).invalidate();
			sessions.remove(se.getSession().getId());
			log.info("@@ �α��� ���� ���� 2. "+sessions);
		}
		log.info("@@ �α��� ���� ���� 3. "+se);
		log.info("@@ �α��� ���� ���� 4. "+sessions);
	}

}
