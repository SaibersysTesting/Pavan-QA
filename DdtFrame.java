package DAtaDriven;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;


public class DdtFrame {

WebDriver driver;

@Test(dataProvider="WordSpaceData")
	public void setup(String username, String password)  {  
   	 System.setProperty("webdriver.firefox.marionette","E:\\geckodriver.exe");	
		// System.setProperty("webdriver.chrome.driver", "E:\\chromedriver.exe");
		 //System.setProperty("webdriver.ie.driver", "E:\\IEDriverServer.exe");
   	 
   	 WebDriver driver=new FirefoxDriver();{
   	//	
   		 driver.manage().window().maximize();
   		 driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
   		 driver.get("https://login.wordpress.org/");
   		 driver.findElement(By.xpath("html/body/div[1]/form/p[1]/input")).sendKeys(username);
   		 driver.findElement(By.xpath("html/body/div[1]/form/p[2]/input")).sendKeys(password);
   		driver.findElement(By.xpath("html/body/div[1]/form/p[4]/input[1]")).click();
   		
  		   	 }
   	 }
@AfterTest
public void close()
{
	 
	 driver.quit();
}

	
@DataProvider(name="WordSpaceData")
public Object[][] passData()
{
	Object[][] data =new Object[3][2];
	
	data[0][0]="admin1";
	data[0][1]="demo34";
	
	data[1][0]="admin";
	data[1][1]="demo123";
	
	data[2][0]="admin1";
	data[2][1]="demo12";
	return data;

}
}



