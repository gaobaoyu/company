package cn.dataService;

import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.MqttCallback;  
import org.eclipse.paho.client.mqttv3.MqttMessage;
   
public class PushCallback implements MqttCallback {  
  
    public void connectionLost(Throwable cause) {  
        // 连接丢失后，一般在这里面进行重连  
        System.out.println("连接断开，可以做重连");  
    }  
    
    public void deliveryComplete(IMqttDeliveryToken token) {
        System.out.println("deliveryComplete---------" + token.isComplete());  
    }

    public void messageArrived(String topic, MqttMessage message) throws Exception {

    	String str = new String(message.getPayload());
    	String[] strs = str.split(" ");
    	if(strs[0].equals("H")){
    	
    		
	    	Post post = new Post();
	    	post.sendPost("http://139.199.97.82:8080/company/data/save.htm", str, strs[1], strs[2]);
	    	
	    	
	    	System.out.println("接收消息内容 : " + str);  
    	}   

    }  
}
