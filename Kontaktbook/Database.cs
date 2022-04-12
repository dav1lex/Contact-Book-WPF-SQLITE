using System;
using System.Data;
using System.Data.SQLite;
using System.Windows;

namespace Kontaktbook
{
    public class Database
    {
        protected static string connstr = "Data Source=library.db;Version=3;";


        public static DataView GetUser()
        {
            using (SQLiteConnection con = new SQLiteConnection(connstr))
            {
                con.Open();
                SQLiteDataAdapter dataAdapter = new SQLiteDataAdapter("SELECT * FROM kontaks", con);
                con.Close();
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);

                return dataSet.Tables[0].DefaultView;

            }

        }

        public static int PutUser(Kontakt kontakt)
        {

            using (SQLiteConnection con = new SQLiteConnection(connstr))
            {
                int result = -1;

                con.Open();
                using (SQLiteCommand cmd = new SQLiteCommand(con))
                {
                    cmd.CommandText = "INSERT INTO kontaks(name, surname, phonenumber, email, birthdate) VALUES (@name, @surname, @phonenumber, @email, @birthdate)";
                    cmd.Prepare();
                    cmd.Parameters.AddWithValue("@name", kontakt.Name);
                    cmd.Parameters.AddWithValue("@surname", kontakt.Surname);
                    cmd.Parameters.AddWithValue("@phonenumber", kontakt.PhoneNumber);
                    cmd.Parameters.AddWithValue("@email", kontakt.Email);
                    cmd.Parameters.AddWithValue("@birthdate", kontakt.Birthdate);
                    try
                    {
                        result = cmd.ExecuteNonQuery();

                    }
                    catch (SQLiteException e)
                    {
                        MessageBox.Show(e.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return -1;
                    }
                    con.Close();
                    return result;
                }

            }
        }

        public static int UpdateUser(Kontakt kontakt)
        {

            using (SQLiteConnection con = new SQLiteConnection(connstr))
            {
                int result = -1;
                con.Open();
                using (SQLiteCommand command = new SQLiteCommand(con))
                {
                    command.CommandText = "UPDATE kontaks SET name = @name, surname = @surname, phonenumber = @phonenumber, email = @email, birthdate = @birthdate WHERE id = @id";
                    command.Prepare();
                    command.Parameters.AddWithValue("@name", kontakt.Name);
                    command.Parameters.AddWithValue("@surname", kontakt.Surname);
                    command.Parameters.AddWithValue("@phonenumber", kontakt.PhoneNumber);
                    command.Parameters.AddWithValue("@email", kontakt.Email);
                    command.Parameters.AddWithValue("@birthdate", kontakt.Birthdate);
                    command.Parameters.AddWithValue("@id", kontakt.userID);
                    try
                    {
                        result = command.ExecuteNonQuery();

                    }
                    catch (SQLiteException e)
                    {
                        MessageBox.Show(e.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return -1;
                    }


                }
                con.Close();
                return result;
            }

        }

        public static int DeleteUser(int id)
        {

            using (SQLiteConnection con = new SQLiteConnection(connstr))
            {

                int result = -1;
                con.Open();
                using (SQLiteCommand cmd = new SQLiteCommand(con))
                {

                    cmd.CommandText = "DELETE FROM kontaks WHERE id = @id";
                    cmd.Prepare();
                    cmd.Parameters.AddWithValue("@id", id);
                    try
                    {
                        result = cmd.ExecuteNonQuery();
                    }
                    catch (SQLiteException e)
                    {
                        MessageBox.Show(e.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        return -1;
                    }
                }
                con.Close();
                return result;
            }
        }

        public static Kontakt FindUser(int id)
        {

            using (SQLiteConnection con = new SQLiteConnection(connstr))
            {
                con.Open();
                using (SQLiteCommand command = new SQLiteCommand("SELECT * FROM kontaks WHERE id = @id LIMIT 1", con))
                {
                    command.Parameters.AddWithValue("@id", id);
                    SQLiteDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        Kontakt kontakt = new Kontakt
                        {
                            Name = reader[1].ToString(),
                            Surname = reader[2].ToString(),
                            PhoneNumber = reader[3].ToString(),
                            Email = reader[4].ToString(),
                            Birthdate = reader[5].ToString(),
                            userID = Int32.Parse(reader[0].ToString())
                        };

                        return kontakt;
                    }


                }

                con.Close();
                return new Kontakt();
            }

        }
    }
}
