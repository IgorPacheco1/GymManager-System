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
    }
}