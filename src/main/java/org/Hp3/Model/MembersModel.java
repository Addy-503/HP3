package org.Hp3.Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.Hp3.Entity.HP3Members;
import org.Hp3.config.DBConfig;

public class MembersModel {

	public List<HP3Members> list() {
		List<HP3Members> listmembers = new ArrayList<HP3Members>();
		// Step 1: Initialization or creating of connection object
		Connection connet = DBConfig.getConnection();
		Statement stmt = null;
		ResultSet rs = null;

		// step 2: Create the DB query.
		String query = "select * from horse_power_3";
		try {
			stmt = connet.createStatement();
			// Step 3: Executing the statement
			rs = stmt.executeQuery(query);

			while (rs.next()) {
				listmembers.add(new HP3Members(rs.getInt("members_ID"), rs.getString("member_Name"),
						rs.getString("member_Email")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listmembers;
	}
}
