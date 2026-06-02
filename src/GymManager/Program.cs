using System;
using MySql.Data.MySqlClient;
using GymManager.Data;

class Program
{
    static void Main(string[] args)
    {
        ConexaoDB conexao = new ConexaoDB();

        try
        {
            using (MySqlConnection conect = conexao.ObterConexao())
            {
                conect.Open();
                System.Console.WriteLine("Deu bom");
            }
        }
        catch (System.Exception)
        {

            System.Console.WriteLine("Deu ruim");
        }
    }
}