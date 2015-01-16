import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.Socket;
import java.net.UnknownHostException;


public class TCPClient
{
	public static void main(String[] args) throws UnknownHostException, IOException
	{
		String sentence;
		String modifiedSentence;
		Socket clientSocket = new Socket("localhost",6789);
		System.out.println("Running client...");
		DataOutputStream outToServer = new DataOutputStream(clientSocket.getOutputStream());
		BufferedReader inFromServer = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
		sentence = "test";
		outToServer.writeBytes(sentence);
		modifiedSentence = inFromServer.readLine();
		System.out.println("From Server: " + modifiedSentence);
		clientSocket.close();
		
		
	}
}
