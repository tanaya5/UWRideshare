/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UWRideshare.servlets;

import UWRideshare.services.OTPServices;
import UWRideshare.services.SignUpServices;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.entity.*;
import org.apache.http.HttpResponse;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.commons.httpclient.*;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.http.HttpRequest;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;



/**
 *
 * @author tanay
 */
public class SMSOTPServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException ,UnsupportedOperationException {
       try {
           System.out.println("hi");
            HttpSession s = req.getSession(false);
            if (s != null) {
                String email = (String) s.getAttribute("email");
                 String email1=(String)s.getAttribute("email1");
                 String phnum=null;
                if(email!=null)
                 phnum = SignUpServices.returnMobile(email);
                else if(email1!=null)
                   phnum = SignUpServices.returnMobile(email1); 
                System.out.println(phnum);
                phnum="+"+phnum;
                if (phnum == null) {
                    resp.getWriter().write("not provided");
                } else if (phnum.equals("not registered")) {
                    resp.getWriter().write(phnum);
                } else {
                    System.out.println("in else");
                    int otp = OTPServices.otpGenerator();
                    String message = "Your OTP IS: "+otp;
                    try {
                        System.out.println("in else1");
                        final BasicNameValuePair[] data = {
                        new BasicNameValuePair("phone", phnum),
                        new BasicNameValuePair("userID", message),
                        new BasicNameValuePair("key", "66a8f02843daa54c386f1f2acf32038a903f529f6WRQSDSCEXUmlalPnvqnip55q")
                            };
                        
                    // String   response=new HttpRequest("https://textbelt.com/text").prepare(HttpRequest.Method.POST).withData(data).sendAndReadString();
              /*     URL url = new URL("https://textbelt.com/text");
                      
                   HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                    conn.setRequestMethod("POST");

// read the response
                    System.out.println("Response Code: " + conn.getResponseCode());
                    BufferedInputStream in = new BufferedInputStream(conn.getInputStream());
                        String response = org.apache.commons.io.IOUtils.toString(in, "UTF-8");
                        System.out.println(response);   */


                   /*     PostMethod post = new PostMethod("https://textbelt.com/text");
                          post.setRequestBody(data);
                          InputStream in = post.getResponseBodyAsStream(); */

                        HttpClient client = HttpClients.createMinimal();
                            
                        System.out.println("pls");
                        HttpPost httpPost = new HttpPost("https://textbelt.com/text");
                        httpPost.setEntity(new UrlEncodedFormEntity(Arrays.asList(data)));
                       // HttpResponse httpResponse = httpClient.execute(httpPost);
                        System.out.println("lol");
                        //CloseableHttpClient client = HttpClients.createDefault();
                 //       HttpClient client = new HttpClient() {};
                        System.out.println("ppp");
                        HttpResponse httpResponse=client.execute(httpPost);
                        String responseString = EntityUtils.toString(httpResponse.getEntity());
                        System.out.println(responseString);
                        JSONObject response = new JSONObject(responseString);  
                    } catch (Exception e) {
                        
                        System.out.println("error" + e);
                    }
                    resp.getWriter().write(""+otp);
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
       finally
       {
           
       }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    
}
