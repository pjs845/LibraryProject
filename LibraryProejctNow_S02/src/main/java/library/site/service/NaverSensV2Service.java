package library.site.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class NaverSensV2Service{
	
	@Value("${naver-cloud-sms.accessKey}")
	private String accessKey;
	
	@Value("${naver-cloud-sms.secretKey}")
	private String secretKey;
	
	@Value("${naver-cloud-sms.serviceId}")
	private String serviceId;
 
	@Value("${naver-cloud-sms.senderPhone}")
	private String phone;

	
	@SuppressWarnings("unchecked") //��Ȯ�� ���۷��̼ǰ� ���õ� ��� ����
	public String send_msg(String tel) {
		String hostNameUrl = "https://sens.apigw.ntruss.com";
		String requestUrl = "/sms/v2/services/";
		String requestUrlType = "/messages";
		String method = "POST";
		String timestamp = Long.toString(System.currentTimeMillis());
		requestUrl += serviceId + requestUrlType;
		String apiUrl = hostNameUrl + requestUrl;
		
		//log.info("##���̹� ������accessKey: "+accessKey);
		//log.info("##���̹� ������secretKey: "+secretKey);
		//log.info("##���̹� ������serviceId: "+serviceId);
		
		//��ȭ ��ȣ - �ڸ���
		String[] phoneNumber = tel.split("-");
		String forontNum = phoneNumber[0];
		String middleNum = phoneNumber[1];
		String backNum = phoneNumber[2];
		String to = forontNum+middleNum+backNum;
		log.info("���̹� ������to: "+to);
		
		//���� ������ȣ ����
		String numStr = "";
		Random random = new Random();
		for (int i=0; i<6; i++) {
			String ran = Integer.toString(random.nextInt(10));
			numStr += ran;
		}
		//log.info("##���̹� ������ ���� ��ȣ: "+numStr);
		
		//JSON �� Ȱ���� body data ����
		Map<String, Object> bodys = new LinkedHashMap<String, Object>();

		JSONObject bodyJson = new JSONObject();

		bodyJson.put("type","SMS");							
		bodyJson.put("contentType","COMM");
		//bodyJson.put("countryCode","82");
		bodyJson.put("from",phone);
		bodyJson.put("content","[������4��] �������� ["+numStr+"]");
		
		JSONObject inMessage = new JSONObject();
		inMessage.put("to",to);
		
		JSONObject inFile = new JSONObject();
		inFile.put("name","test.jpg");
		inFile.put("body","test.jpg");
		
		JSONArray message = new JSONArray();
		message.add(inMessage);
		JSONArray file = new JSONArray();
		file.add(inFile);
		
		bodyJson.put("messages", message);
		//bodyJson.put("files", file);
		
		
		String body = bodyJson.toString();
		log.info("##���̹� �޴��� ����body: "+body);
		
		try {
            URL url = new URL(apiUrl);
            
            log.info("##���̹� �޴��� ����URL: "+url);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setUseCaches(false);
            con.setDoOutput(true);
            con.setDoInput(true);
            con.setRequestProperty("content-type", "application/json; charset=utf-8");
            con.setRequestProperty("x-ncp-apigw-timestamp", timestamp);
            con.setRequestProperty("x-ncp-iam-access-key", accessKey);
            con.setRequestProperty("x-ncp-apigw-signature-v2", makeSignature(requestUrl, timestamp, method, accessKey, secretKey));
            con.setRequestMethod(method);
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            
            wr.write(body.getBytes("UTF-8"));
            wr.flush();
            wr.close();

			int responseCode = con.getResponseCode();
			BufferedReader br;
			log.info("##���̹� �޴��� ����responseCode: "+responseCode);
			if(responseCode == 202) { // ���� ȣ��
                br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
            } else { // ���� �߻�
                br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "utf-8"));
            }

			String inputLine = null;
			StringBuffer response = new StringBuffer();
			while((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			br.close();
			log.info("##���̹� �޴��� ����response: "+response.toString());
			
			
			
		}catch(MalformedURLException mu) {
			log.info("##���̹� �� ��������MalformedURLException: "+mu);
		}catch(IOException ie) {
			log.info("##���̹� �� ��������IOException: "+ie);
		}
		return numStr;
	}
	
	private String makeSignature(String url, String timestamp, String method, String accessKey, String secretKey) {
		String space = " ";
		String newLine = "\n";
		
		String message = new StringBuilder()
				.append(method)
				.append(space)
				.append(url)
				.append(newLine)
				.append(timestamp)
				.append(newLine)
				.append(accessKey)
				.toString();
		log.info("##���̹� �� message: "+message);
		SecretKeySpec signingKey;
		String encodeBase64String = "null";
		
		try {
			signingKey = new SecretKeySpec(secretKey.getBytes("utf-8"), "HmacSHA256");	//UnsupportedEncodingException
			Mac mac = Mac.getInstance("HmacSHA256");	//NoSuchAlgorithmException
			mac.init(signingKey);
			byte[] rawHmac = mac.doFinal(message.getBytes("utf-8"));
			encodeBase64String = Base64.getEncoder().encodeToString(rawHmac);
			
		}catch(UnsupportedEncodingException uee) {
			log.info("##���̹� �� ��������UnsupportedEncodingException: "+uee);
		}catch(NoSuchAlgorithmException nsae) {
			log.info("##���̹� �� ��������NoSuchAlgorithmException: "+nsae);
		}catch(InvalidKeyException ike) {
			log.info("##���̹� �� ��������InvalidKeyException: "+ike);
		}
		//log.info("##encodeBase64String: "+encodeBase64String);
		return encodeBase64String;

	}
}
