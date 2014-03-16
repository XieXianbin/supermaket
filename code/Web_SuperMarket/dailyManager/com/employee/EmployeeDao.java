package com.employee;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mvc.connection.basic.ConnectionAware;

public class EmployeeDao extends ConnectionAware{
	
	
	
	
//	Ա����employee_tab)					
//	�ֶ�	�ֶ�����	����	�Ƿ�Ϊ��	�Ƿ�����	˵��
//	employeeId	int		��	��	Ա�����
//	employeeName	varchar	20			Ա������
//	employeeBirthday	varchar				Ա������
//	employeeSex	varchar	10			�Ա�
//	employeeIdNum	varchar	18			���֤
//	empPoliState	varchar	20	��		������ò
//	employeePicture	image				Ա��ͷ��
//	employeeTel	varchar	20			�绰
//	employeeQq	varchar	20			QQ
//	employeeEmail	varchar	50			����
//	employeeSchool	varchar	50			Ա��ѧ��
//	employeeAddress	varchar	100			Ա����ַ
//	employeePosition	varchar	20			Ա��ְλ
//	basicWage	float				��������
//	deptId	int				�������ű��
//	entryTime	varchar	30			��ְʱ��
//	leaveTime	varchar	30			��ְʱ��
//	employeeState	varchar	10			�Ƿ���ְ
//	remarks	text				��ע
	
	
	//��ȡ�û��Ļ�����Ϣ
	public String getDeptInfo(int deptId) {
//		System.out.println(deptId);
		// TODO Auto-generated method stub
		String deptInfo = new String();
		try {
			PreparedStatement ps = conn.prepareStatement("select deptId,deptName from dept_tab where deptId=?");
			ps.setInt(1, deptId);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				deptInfo+=rs.getString("deptId");
				deptInfo+=","+rs.getString("deptName");
//				System.out.println(deptInfo);
			}
			closeConn(conn, rs, ps);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return deptInfo;
	}
	
	

	public  ArrayList<EmployeeBean> getEmployeeList(){
		
		ArrayList<EmployeeBean> list=new ArrayList<EmployeeBean>();
		

		
		try {
			PreparedStatement ps=conn.prepareStatement("select * from employee_tab where employeeState='��ְ'");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				EmployeeBean eb=new EmployeeBean();
				eb.setEmployeeId(rs.getInt("employeeId"));
				eb.setEmployeeName(rs.getString("employeeName"));
				eb.setEmployeeBirthday(rs.getString("employeeBirthday"));         
				eb.setEmployeeSex(rs.getString("employeeSex"));
				eb.setEmployeeIdNum(rs.getString("employeeIdNum"));
				eb.setEmpPoliState(rs.getString("empPoliState"));
				eb.setEmployeePicture(rs.getString("employeePicture"));
				eb.setEmployeeTel(rs.getString("employeeTel"));
				eb.setEmployeeQq(rs.getString("employeeQq"));
				eb.setEmployeeEmail(rs.getString("employeeEmail"));
				eb.setEmployeeSchool(rs.getString("employeeSchool"));
				eb.setEmployeeAddress(rs.getString("employeeAddress"));
				eb.setEmployeePosition(rs.getString("employeePosition"));
				eb.setBasicWage(rs.getFloat("basicWage"));
				eb.setDeptId(rs.getInt("deptId"));
				eb.setEntryTime(rs.getString("entryTime"));
				eb.setLeaveTime(rs.getString("leaveTime"));
				eb.setEmployeeState(rs.getString("employeeState"));
				eb.setRemarks(rs.getString("remarks"));
				
				
				list.add(eb);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	public int insertEmployee(EmployeeBean eb){
		int row=0;
		try {
			PreparedStatement ps=conn.prepareStatement("insert into employee_tab(employeeName,employeeBirthday,employeeSex,employeeIdNum,empPoliState,employeeTel,employeeQq,employeeEmail,employeeSchool,employeeAddress,employeePosition,basicWage,deptId,entryTime,leaveTime,employeeState,remarks)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			ps.setString(1, eb.getEmployeeName());
			ps.setString(2, eb.getEmployeeBirthday());
			ps.setString(3, eb.getEmployeeSex());
			ps.setString(4, eb.getEmployeeIdNum());
			ps.setString(5, eb.getEmpPoliState());
//			ps.setString(6, eb.getEmployeePicture());
			ps.setString(6, eb.getEmployeeTel());
			ps.setString(7, eb.getEmployeeQq());
			ps.setString(8, eb.getEmployeeEmail());
			ps.setString(9, eb.getEmployeeSchool());
			ps.setString(10, eb.getEmployeeAddress());
			ps.setString(11, eb.getEmployeePosition());
			ps.setFloat(12, eb.getBasicWage());
			ps.setInt(13, eb.getDeptId());
			ps.setString(14, eb.getEntryTime());
			ps.setString(15, eb.getLeaveTime());
			ps.setString(16, eb.getEmployeeState());
			ps.setString(17, eb.getRemarks());
			
			
			row=ps.executeUpdate();
		
			closeConn(conn, ps);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return row;
		
	}
	
	
	public int deleteEmployee(int id){
		int row=0;
		try {
			PreparedStatement ps=conn.prepareStatement("delete from employee_tab where employeeId=?");
			ps.setInt(1, id);
			row=ps.executeUpdate();
			closeConn(conn, ps);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return row;
		
	}
	
	
	
	public EmployeeBean findEmployee(int id){
		
		try {
			PreparedStatement ps=conn.prepareStatement("select * from employee_tab where employeeId=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){

				EmployeeBean eb=new EmployeeBean();
				eb.setEmployeeId(id);//1
				eb.setEmployeeName(rs.getString("employeeName"));
				eb.setEmployeeBirthday(rs.getString("employeeBirthday"));     
				eb.setEmployeeSex(rs.getString("employeeSex"));
				eb.setEmployeeIdNum(rs.getString("employeeIdNum"));//5
				eb.setEmpPoliState(rs.getString("empPoliState"));//6
				eb.setEmployeePicture(rs.getString("employeePicture"));
				eb.setEmployeeTel(rs.getString("employeeTel"));
				eb.setEmployeeQq(rs.getString("employeeQq"));
				eb.setEmployeeEmail(rs.getString("employeeEmail"));//10
				eb.setEmployeeSchool(rs.getString("employeeSchool"));//11
				eb.setEmployeeAddress(rs.getString("employeeAddress"));
				eb.setEmployeePosition(rs.getString("employeePosition"));
				eb.setBasicWage(rs.getFloat("basicWage"));
				eb.setDeptId(rs.getInt("deptId"));//15
				eb.setEntryTime(rs.getString("entryTime"));
				eb.setLeaveTime(rs.getString("leaveTime"));
				eb.setEmployeeState(rs.getString("employeeState"));
				eb.setRemarks(rs.getString("remarks"));
				return eb;
			}else{
				return null;
			}
//			closeConn(conn, rs, ps);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	
		
	}
	
	
	
	public int updateUser(EmployeeBean eb){
		int row=0;
		try {
			PreparedStatement ps=conn.prepareStatement("update employee_tab set employeeName=?,employeeBirthday=?,employeeSex=?,employeeIdNum=?,empPoliState=?,employeeTel=?,employeeQq=?,employeeEmail=?,employeeSchool=?,employeeAddress=?,employeePosition=?,basicWage=?,deptId=?,entryTime=?,leaveTime=?,employeeState=?,remarks=? where employeeId=?");
			ps.setString(1, eb.getEmployeeName());
			ps.setString(2, eb.getEmployeeBirthday());
			ps.setString(3, eb.getEmployeeSex());
			ps.setString(4, eb.getEmployeeIdNum());
			ps.setString(5, eb.getEmpPoliState());
			
			
//			ps.setString(6, eb.getEmployeePicture());
			
			
			ps.setString(6, eb.getEmployeeTel());
			ps.setString(7, eb.getEmployeeQq());
			ps.setString(8, eb.getEmployeeEmail());
			ps.setString(9, eb.getEmployeeSchool());
			ps.setString(10, eb.getEmployeeAddress());
			ps.setString(11, eb.getEmployeePosition());
			ps.setFloat(12, eb.getBasicWage());
			ps.setInt(13, eb.getDeptId());
			ps.setString(14, eb.getEntryTime());
			ps.setString(15, eb.getLeaveTime());
			ps.setString(16, eb.getEmployeeState());
			ps.setString(17, eb.getRemarks());
			ps.setInt(18, eb.getEmployeeId());
			row=ps.executeUpdate();
			
			closeConn(conn, ps);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return row;
	}
	
	

	
}
