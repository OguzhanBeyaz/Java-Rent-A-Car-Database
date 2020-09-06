
	import java.io.IOException;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.Scanner;
	
	
	public class VeriTabaný {
	
		public static final String database_connection_string = "jdbc:postgresql://localhost:5432/Araç Kiralama Oto";
		public static final String database_user_name= "postgres";
		public static final String database_user_password= "kastamonu37";
		public static Connection baglantý =null;
		
		public static Statement stmt=null;
		public static String sqlCumlesi=null;
		public static Scanner secim = new Scanner(System.in);
		
		
		
		public Connection Eslestirme() {
			try {
				Class.forName("org.postgresql.Driver");
				baglantý = DriverManager.getConnection(database_connection_string,database_user_name,database_user_password);
			
				if (baglantý != null) {
						
				System.out.println("Veri Tabanýna Baglandý. ");
			
			}
				else {
					System.out.println("Baðlantý Hatasý.");
				}
			
			}catch(Exception eror) {
				
				System.out.println(eror.getMessage());
				
			}
			
			return baglantý;
		}
		public static void Menu() {
			System.out.println("\n\n");
			System.out.println("////////C*////////");
			System.out.println("");
			System.out.println("////////// Sisteme Hosgeldiniz //////////");
			System.out.println("1- Ekle");
			System.out.println("2- Arama Yap");
			System.out.println("3- Kayýtlarý Listele");	
			System.out.println("4- Sil");
			System.out.println("5- Güncelleme");
			System.out.println("6- Çýkýþ");

		}

		public static void kayýtekle() {
			try {
				
				System.out.println("Müþteri Ýd Giriniz");
				String mid=secim.next();
				System.out.println("Müþteri Adýný Giriniz :");
				String ad=secim.next();
				System.out.println("Müþteri Soyadýný Giriniz :");
				String soyad=secim.next();
				System.out.println("Marka Ýd Giriniz :");
				String markaid=secim.next();
				System.out.println("Motor Ýd Giriniz :");
				String motorid=secim.next();
				System.out.println("Kasa Ýd Giriniz :");
				String kasaid=secim.next();
				System.out.println("Renk Ýd Giriniz :");
				String renkid=secim.next();
				System.out.println("Þehir Ýd Giriniz :");
				String sehirid=secim.next();
				System.out.println("Araç KM Giriniz :");
				String km=secim.next();
				System.out.println("Araç Fiyatý Adýný Giriniz :");
				String fiyat=secim.next();
				System.out.println("Kiralama Tarihi Giriniz :");
				String ktarihi=secim.next();
				
				
				sqlCumlesi ="insert into public.\"müþteri\" (mid,ad,soyad,markaid,motorid,kasaid,renkid,sehirid,km,fiyat,ktarihi) Values("+mid+","+ "'"+ad+"'"+","+ "'"+soyad+"'"+","+ "'"+markaid+"'"+","+ "'"+motorid+"'"+","+ "'"+kasaid+"'"+","+ "'"+renkid+"'"+","+ "'"+sehirid+"'"+","+ "'"+km+"'"+","+ "'"+fiyat+"'"+","+ "'"+ktarihi+ "');";
				stmt =baglantý.createStatement();
				stmt.executeUpdate(sqlCumlesi);
				stmt.close();
				
			    }
			    catch(Exception eror) {
				
				System.err.println(eror.getClass().getName()+":"+eror.getMessage());
				System.exit(0);
				
			    }
			
			    System.out.println(">>>>>>Ýþlem Tamamlandý<<<<<<");
			   
		        }
		public static void kayýtara() {
			 
			 try {
				 System.out.println("Müþteri Ýd Giriniz : ");
				 int mid=secim.nextInt();
				 sqlCumlesi ="select * from  public.\"müþteri\" where mid="+mid+";";
				 stmt =baglantý.createStatement();
				 ResultSet Rs =stmt.executeQuery(sqlCumlesi);
		 
			     if(Rs.next()) {
				 
				 System.out.println("Müþteri Ýd = "+ Rs.getInt(1));
				 System.out.println("Müþteri Adý = "+ Rs.getString(2));
				 System.out.println("Müþteri Soyadý = "+ Rs.getString(3));
				 System.out.println("Araç Marka Ýd = "+ Rs.getInt(4));
				 System.out.println("Araç Motor Ýd = "+ Rs.getInt(5));
				 System.out.println("Araç Kasa Ýd = "+ Rs.getInt(6));
				 System.out.println("Araç Renk Ýd = "+ Rs.getInt(7));
				 System.out.println("Þehir Ýd = "+ Rs.getInt(8));
				 System.out.println("Araç KM= "+ Rs.getInt(9));
				 System.out.println("Araç Fiyat = "+ Rs.getInt(10));
				 System.out.println("Kiralama Tarihi = "+ Rs.getString(11));
				
			      }
			     
			      else {
				 
				  System.out.println("Yanlýþ veya Eksik Bilgi Girdiniz.");
			      
			            }
			 
			     Rs.close();
			     stmt.close();
			
			     }
			
			     catch(Exception eror) {
				 System.out.println(eror.getMessage());
		 
		             	 }
			 
			     System.out.println(">>>>>>Ýþlem Tamamlandý<<<<<<");
			  
		             }
		public static void sil() {
			try {
				
				System.out.println("Silinecek Müþteri Ýd Giriniz : ");
				String mid=secim.next();
				
				sqlCumlesi ="delete from  public.\"müþteri\" where mid="+mid+";";
				stmt =baglantý.createStatement();
				stmt.executeUpdate(sqlCumlesi);
				stmt.close();
				
		       	}
			
			    catch(Exception eror) {
		       		
		       	System.out.println(eror.getMessage());
		       		
		       	}
			
		       	System.out.println(">>>>>>Ýþlem Tamamlandý<<<<<<");
		 	
		        }
		
		
			  
		             
		  public static void guncelle() {
			    try {
				   
			    	System.out.println("Müþteri Ýd Giriniz");
					String mid=secim.next();
					
					System.out.println("Kiralama Tarihi Giriniz :");
					String ktarihi=secim.next();
				   
				  
				   sqlCumlesi ="update public.\"müþteri\" set ktarihi = '" +ktarihi+"' where mid="+mid+";";
				   stmt =baglantý.createStatement();
				   stmt.executeUpdate(sqlCumlesi);
				   stmt.close();
				   
			     }
			    catch(Exception eror) {
				   
				   System.out.println(eror.getMessage());
				   
			     }
			
		   	   System.out.println("Güncelleme tamamlandý ....");
			 	 
		        }
		  public static void kayýtlistele() {
				 System.out.println("\n\n");
				 try {
					 PreparedStatement stmt =baglantý.prepareStatement("select*from public.\"müþteri\"");
					 ResultSet Rs = stmt.executeQuery();
					 System.out.println(">>>>>>>>>>>>>>>>>>Var Olan Kayýtlar<<<<<<<<<<<<<<<<<<<");
					 while(Rs.next()) {
						 
						 System.out.println(Rs.getInt(1)+", "+Rs.getString(2)+", "+Rs.getString(3)+", "+Rs.getInt(4)+", "+Rs.getInt(5)+", "+Rs.getInt(6)+", "+Rs.getInt(7)+", "+Rs.getInt(8)+", "+Rs.getInt(9)+", "+Rs.getInt(10)+", "+Rs.getString(11));
						 
					 }
					 
					 
			     	 }
		     		 catch(Exception eror) {
					 
					 System.out.println(eror.getMessage());
					 
				 }
		 
			     }
			
		
		

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		VeriTabaný conn = new VeriTabaný();
		conn.Eslestirme();
		while(1==1) {
			Menu();
			String islem="";
			System.out.println("");
			System.out.println(" Yapmak Ýstediðiniz Ýþlemi Seçiniz = ");

			islem=secim.next();
			switch(islem) {
			case "1":
				System.out.println("\n\n");
				kayýtekle();
				kayýtlistele();
				continue;
			
			case "2":
				System.out.println("\n\n");
				kayýtara();
				kayýtlistele();
				continue;
			
			case "3":
				kayýtlistele();
				continue;
				
			case "4":
				System.out.println("\n\n");
			    sil();
				kayýtlistele();
				continue;
				
			case "5":
				System.out.println("\n\n");
			    guncelle();
				kayýtlistele();
				continue;
				
			case "6":
				System.out.println("\n\n");
			    System.out.println("Güle Güle. ");
			    System.exit(0);
			    break;
			    
			   default:
				   System.out.println("Yanlýþ Veya Hatalý Ýþlem Yaptýnýz!!!");
				   break;
					
			
			}
			
				
			
					}
		

	}


		
		
		
		
	
		
		
		
		
		
		

	}


