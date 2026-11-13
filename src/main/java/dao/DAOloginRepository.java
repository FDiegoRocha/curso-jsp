package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelLogin;

public class DAOloginRepository {
	private Connection connection;
	
	public DAOloginRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	public boolean validarAutenticacao(ModelLogin modelLogin) throws Exception {
		String sql = "SELECT * FROM model_login WHERE upper(login) = upper(?) and upper(senha) = upper(?) ";
		
		PreparedStatement st = connection.prepareStatement(sql);
		st.setString(1, modelLogin.getLogin());
		st.setString(2, modelLogin.getSenha());
		ResultSet rs = st.executeQuery();
		
		if(rs.next()) {
			return true;
		}
		
		return false;
	}

}
