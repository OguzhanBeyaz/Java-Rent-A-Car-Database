
	import java.io.IOException;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.Scanner;
	
	
	public class VeriTaban� {
	
		public static final String database_connection_string = "jdbc:postgresql://localhost:5432/Ara� Kiralama Oto";
		public static final String database_user_name= "postgres";
		public static final String database_user_password= "kastamonu37";
		public static Connection baglant� =null;
		
		public static Statement stmt=null;
		public static String sqlCumlesi=null;
		public static Scanner secim = new Scanner(System.in);
		
		
		
		public Connection Eslestirme() {
			try {
				Class.forName("org.postgresql.Driver");
				baglant� = DriverManager.getConnection(database_connection_string,database_user_name,database_user_password);
			
				if (baglant� != null) {
						
				System.out.println("Veri Taban�na Bagland�. ");
			
			}
				else {
					System.out.println("Ba�lant� Hatas�.");
				}
			
			}catch(Exception eror) {
				
				System.out.println(eror.getMessage());
				
			}
			
			return baglant�;
		}
		public static void Menu() {
			System.out.println("\n\n");
			System.out.println("////////C*////////");
			System.out.println("");
			System.out.println("////////// Sisteme Hosgeldiniz //////////");
			System.out.println("1- Ekle");
			System.out.println("2- Arama Yap");
			System.out.println("3- Kay�tlar� Listele");	
			System.out.println("4- Sil");
			System.out.println("5- G�ncelleme");
			System.out.println("6- ��k��");

		}

		public static void kay�tekle() {
			try {
				
				System.out.println("M��teri �d Giriniz");
				String mid=secim.next();
				System.out.println("M��teri Ad�n� Giriniz :");
				String ad=secim.next();
				System.out.println("M��teri Soyad�n� Giriniz :");
				String soyad=secim.next();
				System.out.println("Marka �d Giriniz :");
				String markaid=secim.next();
				System.out.println("Motor �d Giriniz :");
				String motorid=secim.next();
				System.out.println("Kasa �d Giriniz :");
				String kasaid=secim.next();
				System.out.println("Renk �d Giriniz :");
				String renkid=secim.next();
				System.out.println("�ehir �d Giriniz :");
				String sehirid=secim.next();
				System.out.println("Ara� KM Giriniz :");
				String km=secim.next();
				System.out.println("Ara� Fiyat� Ad�n� Giriniz :");
				String fiyat=secim.next();
				System.out.println("Kiralama Tarihi Giriniz :");
				String ktarihi=secim.next();
				
				
				sqlCumlesi ="insert into public.\"m��teri\" (mid,ad,soyad,markaid,motorid,kasaid,renkid,sehirid,km,fiyat,ktarihi) Values("+mid+","+ "'"+ad+"'"+","+ "'"+soyad+"'"+","+ "'"+markaid+"'"+","+ "'"+motorid+"'"+","+ "'"+kasaid+"'"+","+ "'"+renkid+"'"+","+ "'"+sehirid+"'"+","+ "'"+km+"'"+","+ "'"+fiyat+"'"+","+ "'"+ktarihi+ "');";
				stmt =baglant�.createStatement();
				stmt.executeUpdate(sqlCumlesi);
				stmt.close();
				
			    }
			    catch(Exception eror) {
				
				System.err.println(eror.getClass().getName()+":"+eror.getMessage());
				System.exit(0);
				
			    }
			
			    System.out.println(">>>>>>��lem Tamamland�<<<<<<");
			   
		        }
		public static void kay�tara() {
			 
			 try {
				 System.out.println("M��teri �d Giriniz : ");
				 int mid=secim.nextInt();
				 sqlCumlesi ="select * from  public.\"m��teri\" where mid="+mid+";";
				 stmt =baglant�.createStatement();
				 ResultSet Rs =stmt.executeQuery(sqlCumlesi);
		 
			     if(Rs.next()) {
				 
				 System.out.println("M��teri �d = "+ Rs.getInt(1));
				 System.out.println("M��teri Ad� = "+ Rs.getString(2));
				 System.out.println("M��teri Soyad� = "+ Rs.getString(3));
				 System.out.println("Ara� Marka �d = "+ Rs.getInt(4));
				 System.out.println("Ara� Motor �d = "+ Rs.getInt(5));
				 System.out.println("Ara� Kasa �d = "+ Rs.getInt(6));
				 System.out.println("Ara� Renk �d = "+ Rs.getInt(7));
				 System.out.println("�ehir �d = "+ Rs.getInt(8));
				 System.out.println("Ara� KM= "+ Rs.getInt(9));
				 System.out.println("Ara� Fiyat = "+ Rs.getInt(10));
				 System.out.println("Kiralama Tarihi = "+ Rs.getString(11));
				
			      }
			     
			      else {
				 
				  System.out.println("Yanl�� veya Eksik Bilgi Girdiniz.");
			      
			            }
			 
			     Rs.close();
			     stmt.close();
			
			     }
			
			     catch(Exception eror) {
				 System.out.println(eror.getMessage());
		 
		             	 }
			 
			     System.out.println(">>>>>>��lem Tamamland�<<<<<<");
			  
		             }
		public static void sil() {
			try {
				
				System.out.println("Silinecek M��teri �d Giriniz : ");
				String mid=secim.next();
				
				sqlCumlesi ="delete from  public.\"m��teri\" where mid="+mid+";";
				stmt =baglant�.createStatement();
				stmt.executeUpdate(sqlCumlesi);
				stmt.close();
				
		       	}
			
			    catch(Exception eror) {
		       		
		       	System.out.println(eror.getMessage());
		       		
		       	}
			
		       	System.out.println(">>>>>>��lem Tamamland�<<<<<<");
		 	
		        }
		
		
			  
		             
		  public static void guncelle() {
			    try {
				   
			    	System.out.println("M��teri �d Giriniz");
					String mid=secim.next();
					
					System.out.println("Kiralama Tarihi Giriniz :");
					String ktarihi=secim.next();
				   
				  
				   sqlCumlesi ="update public.\"m��teri\" set ktarihi = '" +ktarihi+"' where mid="+mid+";";
				   stmt =baglant�.createStatement();
				   stmt.executeUpdate(sqlCumlesi);
				   stmt.close();
				   
			     }
			    catch(Exception eror) {
				   
				   System.out.println(eror.getMessage());
				   
			     }
			
		   	   System.out.println("G�ncelleme tamamland� ....");
			 	 
		        }
		  public static void kay�tlistele() {
				 System.out.println("\n\n");
				 try {
					 PreparedStatement stmt =baglant�.prepareStatement("select*from public.\"m��teri\"");
					 ResultSet Rs = stmt.executeQuery();
					 System.out.println(">>>>>>>>>>>>>>>>>>Var Olan Kay�tlar<<<<<<<<<<<<<<<<<<<");
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
		
		
		VeriTaban� conn = new VeriTaban�();
		conn.Eslestirme();
		while(1==1) {
			Menu();
			String islem="";
			System.out.println("");
			System.out.println(" Yapmak �stedi�iniz ��lemi Se�iniz = ");

			islem=secim.next();
			switch(islem) {
			case "1":
				System.out.println("\n\n");
				kay�tekle();
				kay�tlistele();
				continue;
			
			case "2":
				System.out.println("\n\n");
				kay�tara();
				kay�tlistele();
				continue;
			
			case "3":
				kay�tlistele();
				continue;
				
			case "4":
				System.out.println("\n\n");
			    sil();
				kay�tlistele();
				continue;
				
			case "5":
				System.out.println("\n\n");
			    guncelle();
				kay�tlistele();
				continue;
				
			case "6":
				System.out.println("\n\n");
			    System.out.println("G�le G�le. ");
			    System.exit(0);
			    break;
			    
			   default:
				   System.out.println("Yanl�� Veya Hatal� ��lem Yapt�n�z!!!");
				   break;
					
			
			}
			
				
			
					}
		

	}


		
		
		
		
	
		
		
		
		
		
		

	}


