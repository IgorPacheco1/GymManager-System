using System;
using MySql.Data.MySqlClient;
using GymManager.Data;
using GymManager.Models;
using GymManager.Repositories;

class Program
{
    static void Main(string[] args)
    {
        // ConexaoDB conexao = new ConexaoDB();

        // try
        // {
        //     using (MySqlConnection conect = conexao.ObterConexao())
        //     {
        //         conect.Open();
        //         System.Console.WriteLine("Deu bom");
        //     }
        // }
        // catch (System.Exception)
        // {

        //     System.Console.WriteLine("Deu ruim");
        // }

        // Cliente novoCliente = new Cliente
        // {
        //     IdUsuario = 1,
        //     Nome = "teste",
        //     Cpf = "00000000011",
        //     Telefone = "40028922"
        // };

        // try
        // {
        //     ClienteRepository repo = new ClienteRepository();
        //     repo.Adicionar(novoCliente);
        //     System.Console.WriteLine("Cliente inserido no bando de dados");
        // }
        // catch
        // {
        //     System.Console.WriteLine("Cliente não inserido no banco de dados");
        // }


        try
        {
            ClienteRepository repo = new ClienteRepository();

            Console.WriteLine("--- Lista de Clientes ---");
            var clientes = repo.ListarTodos();

            foreach (var c in clientes)
            {
                Console.WriteLine($"ID: {c.IdCliente} | Nome: {c.Nome} | CPF: {c.Cpf}");
            }
        }
        catch
        {
            Console.WriteLine("Erro: ");
        }

    }
}