using System.Data.SqlClient;
using System.Data;
using System;

public class ConexionBDD
{
    private string cadena_conexion;

    public ConexionBDD(string server, string baseDeDatos, string username, string password)
    {
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        builder.DataSource = server;
        builder.InitialCatalog = baseDeDatos;
        builder.UserID = username;
        builder.Password = password;
        cadena_conexion = builder.ToString();
    }

    public DataSet ConsultarDatos(string consulta)
    {
        DataSet resultadoDB = new DataSet();

        using (SqlConnection conexion = new SqlConnection(cadena_conexion))
        {
            try
            {
                conexion.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
                adapter.Fill(resultadoDB);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Ocurrió un error al ejectutar la consulta." + ex.ToString());
            }
        }

        return resultadoDB;
    }

    public int ConsultarNumeroFilasAfectadas(string consulta)
    {
        int filasAfectadas = 0;

        using (SqlConnection connection = new SqlConnection(cadena_conexion))
        {
            try
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(consulta, connection))
                {
                    filasAfectadas = command.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Ocurrió un error al ejectutar la consulta." + ex.ToString());
            }
        }

        return filasAfectadas;
    }
}