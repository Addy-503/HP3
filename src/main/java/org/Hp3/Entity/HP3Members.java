package org.Hp3.Entity;

public class HP3Members {
	private int Members_ID;
	private String Member_Name;
	private String Member_Email;
	public HP3Members(int members_ID, String member_Name, String member_Email) {
		super();
		Members_ID = members_ID;
		Member_Name = member_Name;
		Member_Email = member_Email;
	}
	public int getMembers_ID() {
		return Members_ID;
	}
	public void setMembers_ID(int members_ID) {
		Members_ID = members_ID;
	}
	public String getMember_Name() {
		return Member_Name;
	}
	public void setMember_Name(String member_Name) {
		Member_Name = member_Name;
	}
	public String getMember_Email() {
		return Member_Email;
	}
	public void setMember_Email(String member_Email) {
		Member_Email = member_Email;
	}

}
