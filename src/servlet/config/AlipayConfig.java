package servlet.config;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */
@WebServlet("/alipay")
public class AlipayConfig extends HttpServlet {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016101800716788";

	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCH3leImZXByc7dxLTEjEv/HrBRIeLw5/zEg/8aY8mtVIPYMYZ+gvLsUH61Dw1/+OQ49Qp52xAls5sNd9vEuTvJNuj2yhf6Y6BFOzLowiQD9e6WU23V2p+dcR/xNCTbq92DvOAES+//p4aDlxkpMQRISMFlHvE0Zj/5Hn/NOtw1ihsQslXK7pdg+VGHR0/3SiIj8vcL7LGVggQTyQPs/WmjO2Xc37n9YCYPCg05jrqGo8qcaEXqYe3HTEoeCZZH2kpMSnCmi7/grUk432m6wVPhUA6v9Ez4B1WESJgoHJqbYAC7xx5Vc310IeGk0FYketO8W+t9EYKwhfhst1eo5aZNAgMBAAECggEAdgO1qowlHU9KZSzAC10FgdLJOZ+ifLg0wQkaI3T7r5eScc4K0YaytHrypBgwFLE+ow6NC+0wqF7KVjd+5/AxMwSD9CD0FORGSPwzqyM+n0YV9/L9m1yredjR8vPk8/3jidMcDf9btodv+orbKwFNg+/WNBxdTLNn694HCl+O+Nz5yDW7b3mLvxnq6ksoDgOH4zoKd0dwG7DGo+tniWNEvtuO0/4jK/K40r0OISEIB6uGPpTDRKXpkciSAvESpI5VjHwlGiI7rwUyijVsrk8yVEOJD9BV4mNWaNFFrAJmxETSTcAuFHbcAcFGk3DAX5AQ2UIs/crpzjvrVKpa418SwQKBgQC7oT9XaZfFbRWjyM3pjMWcxw2yB7A2LK11+5L2ZP9svWqKnL9n1nztj+E6186LAU7g5+xC47xxc1Gp9E5Lj+RP2OmRTu5WTcyyl8qSjkdbUCLBjlhEG61CznlyptNDSGVU51xZosP9VZyXAb9cFmpO9A6isCzdrwwDNgfSWWpM/QKBgQC5YJ6qw41o9HZGzIcIqc/2BHfyBAsWkuyRfcUdLqXyWMsBz6A1wazg0qLSKkcYQ0+khBYLUkPeoMWJqn5VviYmudUCMaFoHGxLUE7vZYTPisTmCqnNPktPU5akZSysPZ/EkOPnewLbgMFKfWa4XkO/kVHWv5dMygKFJ9ZkPoOnkQKBgC5Z8Uno3gN5pUTm0GeHzTGjwvBeEdvwQZHJ6k5QOQFl8bH4cxh11jrhtmRQ98dDNXc+FBGaLO1h7aSso8Lq8x3+mgS5mQtdANqFwRdfaqVWMJ/cSFXa+HxugXYfXEVc1xuYZCoImZ41zg9H8TwQlYaXqB3so8jH+5G3gUsnp6kJAoGBAIGpo1GuFmsjEtfSl2Dn5h4eYgdV7KuNeQsK/aS7zDcHBHfv0g/HuDRJILn/+FpwOnTILuMcV3yQ15rDNjqjFexgby1pqYw41UaYlZ29VHgWiEKfksWMnQCPZv72BZk0QVwsPDzdPdJq7Mg9jmvHA3wrGSMsP5fmdHzOsJbNYykBAoGAE5LQNgRfvwlNYgaNYRuwtcmBQBTMtYTTPamJaS6XKFUHcNvJRx6wxI44n/8/NECeZUvkaHxlDSS3Y8K89AxigXUcSOb3vwKbJRpBleBfMXQn4oW7o7OeuCr7pakAvTvUppfKOuhKPclOnAuqoSktbZDbNoFiB2uhIDxjNOZ3ilg=";


	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzU5MkW2ZBcwZ38Aig+oSOxUxauh4MTQ0IVIhdOE69x821T4VtSH3TDSkwRxQlLfUSkJAvhXKyFw4yO1G2D2nSSRAR8BN0bJtA1aWprsVKpk9PaWh43unNxybK9OYl+66HQjcM1J3Y5fqkonRT43RbIeI/yEL7ibJ3sjrfTVW9gB0gH2K6KKnRAMgkJBTRo8wgNEglCST8vY74NKa3k66rsBD+vFTncfqwD1YLJQ2e9lzP0P8nQwWPJovQlmvSTJBryICKU9FqNhJo/ocpGJiblsXaKlVPKBuG8FZOISjJUPY/4Z14dtZJMOiGqXY3XeiJ3uTVI4qkYC44eQH/6XCEQIDAQAB";


	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//	public static String notify_url = "http://139.129.208.80/AsynAlipayNotifyController";
//
//	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//	public static String return_url = "http://domain.com/CallBack/notify_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";

	// 字符编码格式
	public static String charset = "utf-8";

	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑
       public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           //获得初始化的AlipayClient
           AlipayClient alipayClient = new DefaultAlipayClient(gatewayUrl,app_id,merchant_private_key, "json",
                   charset, alipay_public_key,sign_type);

           //设置请求参数122.51.150.166
           AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
           alipayRequest.setReturnUrl("http://localhost:8080/xm2_war_exploded/return_url.jsp");
           alipayRequest.setNotifyUrl("http://localhost:8080/xm2_war_exploded/notify_url.jsp");
           //商户订单号，商户网站订单系统中唯一订单号，必填
           String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"),"UTF-8");
           //付款金额，必填
           String total_amount = new String(request.getParameter("WIDtotal_amount").getBytes("ISO-8859-1"),"UTF-8");
           //订单名称，必填
           String subject = new String(request.getParameter("WIDsubject").getBytes("ISO-8859-1"),"UTF-8");
           //商品描述，可空
//           String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"),"UTF-8");
           alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
                   + "\"total_amount\":\""+ total_amount +"\","
                   + "\"subject\":\""+ subject +"\","
//                   + "\"timeout_express\":\"1m\","
                   + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

           //若想给BizContent增加其他可选请求参数，以增加自定义超时时间参数timeout_express来举例说明
           //alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\","
           //		+ "\"total_amount\":\""+ total_amount +"\","
           //		+ "\"subject\":\""+ subject +"\","
           //		+ "\"body\":\""+ body +"\","
           //		+ "\"timeout_express\":\"10m\","
           //		+ "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
           //请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节
           String result="";
           //请求

           try {
               result=alipayClient.pageExecute(alipayRequest).getBody();
           } catch (AlipayApiException e) {
               e.printStackTrace();
           }

           System.out.println(result);
           //输出
           response.setContentType("text/html;charset="+charset);
           response.getWriter().write(result);

       }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           this.doPost(request, response);
    }
}

