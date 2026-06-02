using MySql.Data.MySqlCliente;

namespace GymManager.Data
{
    public class ConexaoDB
    {
        private string StringDeConexao = "Server=localhost;Database=GymManager;Uid=root;Pwd=67676767";
        
        public MySqlConexao ObterConexao()
        {
            return new MySqlConexao(StringDeConexao);
        }
    }
}