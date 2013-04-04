package persistence;

import java.util.ArrayList;
import java.util.List;

import entity.Contato;

public class ContatoDao extends Dao {

	public void create(Contato c) throws Exception {
		open();
		stmt = con
				.prepareStatement("insert into contato values(null, ?, ?, ?)");
		stmt.setString(1, c.getNome());
		stmt.setString(2, c.getEmail());
		stmt.setString(3, c.getTelefone());
		stmt.execute();
		stmt.close();
		close();
	}

	public List<Contato> findAll() throws Exception {
		open();
		List<Contato> listagem = new ArrayList<Contato>();
		Contato c = null;
		stmt = con.prepareStatement("select * from contato");
		rs = stmt.executeQuery();
		while (rs.next()) {
			c = new Contato(rs.getInt(1), rs.getString(2), rs.getString(3),
					rs.getString(4));
			listagem.add(c);
		}
		close();
		return listagem;
	}

	public Contato findOne(Integer id) throws Exception {
		open();
		Contato c = null;
		stmt = con.prepareStatement("select * from contato where id=?");
		stmt.setInt(1, id);
		rs = stmt.executeQuery();
		if (rs.next()) {
			c = new Contato(rs.getInt(1), rs.getString(2), rs.getString(3),
					rs.getString(4));
		}
		close();
		return c;
	}

	public void delete(Integer id) throws Exception {
		open();
		stmt = con.prepareStatement("delete from contato where id=?");
		stmt.setInt(1, id);
		stmt.execute();
		close();
	}

	public void update(Contato c) throws Exception {
		open();
		stmt = con
				.prepareStatement("update contato set nome=?, email=?, telefone=? where id=?");
		stmt.setString(1, c.getNome());
		stmt.setString(2, c.getEmail());
		stmt.setString(3, c.getTelefone());
		stmt.setInt(4, c.getId());
		stmt.execute();
		close();
	}

	public static void main(String[] args) {
		Contato c = new Contato(12, "Haryowaldo", "hari@gmail.com", "441155");
		ContatoDao cd = new ContatoDao();
		try {
			// cd.create(c);
			// System.out.println("Dados gravados com sucesso!");
			// List<Contato> lista = cd.findAll();
			// for (Contato c1 : lista) {
			// System.out.println(c1);
			// }
			//Contato c1 = cd.findOne(9);
			//System.out.println(c1);
			//cd.delete(9);
			//System.out.println("Dados excluídos com sucesso!");
			cd.update(c);
			System.out.println("Dados alterados com sucesso!");
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
			e.printStackTrace();
		}
	}
}
