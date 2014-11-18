using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RoyalBd.DataAccess.Utility
{
    public class DatabaseCommunitarian
    {
        private readonly string _dbConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; data source=";

        public DatabaseCommunitarian()
        {
            var accessFilePath = Path.Combine(LocalFolder, "RoyalDbDatabase.mdb");
            _dbConnectionString = _dbConnectionString + accessFilePath;
        }

        internal int InsertCommand(string query)
        {
            using (var connection = new OleDbConnection(_dbConnectionString))
            {
                var command = new OleDbCommand(query) { CommandType = CommandType.Text };
                connection.Open();
                command.Connection = connection;
                command.ExecuteNonQuery();
                var adapter = new OleDbDataAdapter("SELECT @@IDENTITY", connection);
                var lastAutonumber = new DataTable();
                adapter.Fill(lastAutonumber);
                var id = lastAutonumber.AsEnumerable().First().Field<int>(0);
                connection.Close();
                return id;
            }
        }
        

        internal void ExecuteCommand(string query)
        {
            var command = new OleDbCommand(query) { CommandType = CommandType.Text };
            ExecuteCommand(command);
        }

        internal void ExecuteCommand(OleDbCommand command)
        {
            using (var connection = new OleDbConnection(_dbConnectionString))
            {
                connection.Open();
                command.Connection = connection;
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        internal DataTable ReadCommand(string query)
        {
            using (var connection = new OleDbConnection(_dbConnectionString))
            {
                connection.Open();
                var adapter = new OleDbDataAdapter(query, connection);
                var dataTable = new DataTable();
                adapter.Fill(dataTable);
                return dataTable;
            }
        }


        #region Private Methods
        private static string LocalFolder
        {
            get
            {
                return Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "AzaxSoft", "RoyalBd");
            }
        }
        #endregion
    }
}
