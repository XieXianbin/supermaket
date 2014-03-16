package com.salary;

import java.awt.Font;
import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.general.DatasetUtilities;

public class Bar extends HttpServlet{

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("1112334");
		String row[]={"��","Ů"};
		String col[]={"����","����","����","׳��","*��"};
		double num[][]={{60,40,30,70,50},{40,60,70,30,50}};
		CategoryDataset cd=DatasetUtilities.createCategoryDataset(row, col, num);
		JFreeChart chart=ChartFactory.createBarChart3D("��������Ů����", "����", "����", cd, PlotOrientation.VERTICAL, true, true, true);
		
		chart.getTitle().setFont(new Font("����", Font.BOLD, 20));
		Font font=new Font("����",Font.ITALIC,14);
		
		chart.getLegend().setItemFont(font);
		
		CategoryPlot plot= chart.getCategoryPlot();
		
		//��ȡX��
		CategoryAxis X=plot.getDomainAxis();
			X.setLabelFont(font);
			X.setTickLabelFont(font);
				
		//��ȡY��
	    ValueAxis Y=plot.getRangeAxis();
			Y.setLabelFont(font);
			Y.setTickLabelFont(font);
		//�洢�ļ�·��
		File file=new File("D://image");
		if(!file.exists()){
				file.mkdirs();
		}
		Date date=new Date();
		long time=date.getTime();
			
		File files=new File(file,time+".jpg");
		//�����ļ������浽files��	
		ChartUtilities.saveChartAsJPEG(files, chart, 800, 500);
		//ת����show.jsp	
//		req.setAttribute("file", files.toString());
//		req.getRequestDispatcher("show.jsp").forward(req, resp);
//		resp.sendRedirect("kong.jsp");
		req.setAttribute("mess", files.toString());
		req.getRequestDispatcher("kong.jsp").forward(req, resp);
		
		System.out.println(files.toString());
	}

}
