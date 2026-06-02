using MySql.Data.MySqlClient;

namespace GymManager.Data
{
    public class ConexaoDB
    {
        private string StringDeConexao = "Server=localhost;Database=GymManager;Uid=root;Pwd=67";
        
        public MySqlConnection ObterConexao()
        {
            return new MySqlConnection(StringDeConexao);
        }
    }
}