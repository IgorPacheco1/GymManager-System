using MySql.Data.MySqlClient;
using GymManager.Data;
using GymManager.Models;

namespace GymManager.Repositories
{
    public class ClienteRepository
    {
        private ConexaoDB _conexao = new ConexaoDB();

        public void Adicionar(Cliente cliente)
        {
            using (var conn = _conexao.ObterConexao())
            {
                conn.Open();
                string query = "INSERT INTO CLIENTE (id_usuario, nome, cpf, telefone) VALUES (@id_usuario, @nome, @cpf, @telefone)";

                using (var cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@id_usuario", cliente.IdUsuario);
                    cmd.Parameters.AddWithValue("@nome", cliente.Nome);
                    cmd.Parameters.AddWithValue("@cpf", cliente.Cpf);
                    cmd.Parameters.AddWithValue("@telefone", cliente.Telefone);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public List<Cliente> ListarTodos()
        {
            List<Cliente> lista = new List<Cliente>();
            using (var conn = _conexao.ObterConexao())
            {
                conn.Open();
                string query = "SELECT id_cliente, id_usuario, nome, cpf, telefone FROM CLIENTE";
                using (var cmd = new MySqlCommand(query, conn))
                using (var reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        lista.Add(new Cliente
                        {
                            IdCliente = reader.GetInt32("id_cliente"),
                            IdUsuario = reader.GetInt32("id_usuario"),
                            Nome = reader.GetString("nome"),
                            Cpf = reader.GetString("cpf"),
                            Telefone = reader.GetString("telefone")
                        });
                    }
                }
            }
            return lista;
        }

        public void Atualizar(Cliente cliente)
        {
            using (var conn = _conexao.ObterConexao())
            {
                conn.Open();
                string query = "UPDATE CLIENTE SET nome = @nome, cpf = @cpf, telefone = @telefone WHERE id_cliente = @id_cliente";

                using (var cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@id_cliente", cliente.IdCliente);
                    cmd.Parameters.AddWithValue("@nome", cliente.Nome);
                    cmd.Parameters.AddWithValue("@cpf", cliente.Cpf);
                    cmd.Parameters.AddWithValue("@telefone", cliente.Telefone);

                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}