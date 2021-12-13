//package activities.dao;
//
//import java.io.BufferedReader;
//import java.io.DataOutputStream;
//import java.io.IOException;
//import java.io.InputStream;
//import java.io.InputStreamReader;
//import java.io.OutputStream;
//import java.net.HttpURLConnection;
//import java.net.MalformedURLException;
//import java.net.URL;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.ModelAndView;
//import org.springframework.web.servlet.view.RedirectView;
//
//@Controller
//@RequestMapping("/jq")
//public class Jqurey {
//	@Autowired
//	ActivitiesDAO adao;
//
//	@RequestMapping("/jq.cls")
//	public ModelAndView main(ModelAndView mv, HttpSession s, RedirectView rv) {
//		mv.setViewName("jq/test");
//		return mv;
//	}
//
//	@RequestMapping("pay.cls")
//	public ModelAndView serve(ModelAndView mv, HttpSession s, RedirectView rv) {
//		mv.setViewName("jq/serve");
//		return mv;
//	}
//
//	@RequestMapping("/kakaopay.cls")
//	@ResponseBody
//	public String kakaopay() {
//		try {
//			URL address = new URL("https://kapi.kakao.com//v1/payment/ready");
//			HttpURLConnection Server = (HttpURLConnection) address.openConnection();
//			Server.setRequestMethod("POST");
//			Server.setRequestProperty("Authorization", "KakaoAK d1dc4fcd7d7caf59ebb781f1de6e0caf");
//			Server.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//			Server.setDoOutput(true);
//			String Parameters = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=초코파이&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=https://localhost8080/cls/jq/pay.cls&fail_url=https://localhost8080/fail&cancel_url=https://localhost8080/cancel";
//			OutputStream Ops = Server.getOutputStream();
//			DataOutputStream Dops = new DataOutputStream(Ops);
//			Dops.writeBytes(Parameters);
//			Dops.close();
//
//			int resultcode = Server.getResponseCode();
//
//			InputStream Ips;
//			if (resultcode == 200) {
//				Ips = Server.getInputStream();
//			} else {
//				Ips = Server.getErrorStream();
//			}
//			InputStreamReader Ipsr = new InputStreamReader(Ips);
//			BufferedReader Br = new BufferedReader(Ipsr);
//			return Br.readLine();
//
//		} catch (MalformedURLException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		return "{\"result\":\"NO\"}";
//	}
//
//}
