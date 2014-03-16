package com.verification_code.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ImgServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		//������Ӧ��ͷ
		resp.setContentType("image/jpeg");
		//����ҳ�治����
		resp.setHeader("pragma", "no-cache");
		resp.setHeader("cache-control", "no-cache");
		resp.setDateHeader("expires", 0);
		OutputStream out = resp.getOutputStream();
		//����ͼƬ�Ŀ��
		int width=88,height=20;
		BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		//���������
		Random random = new Random();
		g.setColor(Color.WHITE);
		g.fillRect(0, 0, width, height);
		//��������
		g.setFont(new Font("Times New Roman",Font.BOLD+Font.ITALIC,18));
		// ���߿�
        g.setColor(getRandColor(0, 20)); // ---2
        g.drawRect(0, 0, width - 1, height - 1);
        // �������������
        int count = 100;
        int lineWidth = 3; // �����ߵĿ��
        for (int i = 0; i < count; i++) {
            g.setColor(getRandColor(150, 200)); // ---3
            int x = random.nextInt(width - lineWidth - 1) + 1; // ��֤���ڱ߿�֮��
            int y = random.nextInt(height - lineWidth - 1) + 1;
            int xl = random.nextInt(lineWidth);
            int yl = random.nextInt(lineWidth);
            g.drawLine(x, y, x + xl, y + yl);
        }
        //���������֤��
		String sRand="";
		String str[]={"0","1","2","3","4","5","6","7","8","9",
				"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
		for(int i=0;i<4;i++){
			int rand = random.nextInt(36);
			sRand+=str[rand];
			//���������ɫ
			g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
			//����
			g.drawString(str[rand], 20*i+8, 16);
		}
		req.getSession().setAttribute("Verification_code",sRand);
		g.dispose();
		ImageIO.write(image, "JPEG", out);
	}
	public Color getRandColor(int fc, int bc) { // ȡ�ø�����Χ�����ɫ
        Random random = new Random();
        if (fc > 255) {
            fc = 255;
        }
        if (bc > 255) {
            bc = 255;
        }
        int r = fc + random.nextInt(bc - fc);
        int g = fc + random.nextInt(bc - fc);
        int b = fc + random.nextInt(bc - fc);
        return new Color(r, g, b);
    }

}
