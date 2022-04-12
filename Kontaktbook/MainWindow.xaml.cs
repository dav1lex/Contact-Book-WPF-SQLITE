using System;
using System.Data;
using System.Windows;
using System.Windows.Input;

namespace Kontaktbook
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void dataGrid_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            DataRowView row = (DataRowView)dataGrid.SelectedItem;
            int id = Int32.Parse(row.Row.ItemArray[0].ToString());
            Kontakt kontakt = Database.FindUser(id);
            ShowUser(kontakt);


        }

        private void btnsubmit_Click(object sender, RoutedEventArgs e)
        {

            if (ItsnotEmpty())
            {
                AddNewUser();
            }


        }

        private void btnclear_Click(object sender, RoutedEventArgs e)
        {
            Clearfields();

        }

        private void btnrefresh_Click(object sender, RoutedEventArgs e)
        {

            Refresh();

        }

        private void btndelete_Click(object sender, RoutedEventArgs e)
        {
            if (String.IsNullOrEmpty(labelid.Content.ToString()))
            {
                MessageBox.Show("Please select user from the list", "Error", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

            if (MessageBox.Show("Do you really want to delete selected user?", "Delete user", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {
                int id = Int32.Parse(labelid.Content.ToString());
                Database.DeleteUser(id);
                Clearfields();
                Refresh();
            }

        }

        private void btnupdate_Click(object sender, RoutedEventArgs e)
        {
            if (String.IsNullOrEmpty(txtName.Text))
            {
                MessageBox.Show("Please select user from the list", "Error", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

            if (ItsnotEmpty())
            {
                Kontakt kontakt = new Kontakt
                {
                    userID = Int32.Parse(labelid.Content.ToString()),
                    Name = txtName.Text,
                    Surname = txtSurname.Text,
                    PhoneNumber = txtPhone.Text,
                    Email = txtemail.Text,
                    Birthdate = btndatepicker.Text

                };



                if (Database.UpdateUser(kontakt) != -1)
                {

                    MessageBox.Show("User updated successfuly", "Update user", MessageBoxButton.OK, MessageBoxImage.Information);
                    Clearfields();
                    Refresh();
                    return;
                }

            }

            else
            {
                MessageBox.Show("An error occured", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }


        }


        private void Refresh()
        {
            dataGrid.ItemsSource = Database.GetUser();
        }        

        private void Clearfields()
        {
            txtName.Text = String.Empty;
            txtSurname.Text = String.Empty;
            txtPhone.Text = String.Empty;
            txtemail.Text = String.Empty;
            btndatepicker.Text = String.Empty;
            labelid.Content = String.Empty;

        }        

        private bool ItsnotEmpty()
        {

            if (String.IsNullOrEmpty(txtemail.Text) || String.IsNullOrEmpty(txtName.Text) || String.IsNullOrEmpty(txtSurname.Text)
                || String.IsNullOrEmpty(txtPhone.Text) || String.IsNullOrEmpty(btndatepicker.Text))
            {
                MessageBox.Show("All fields are required");
                return false;
            }
            return true;
        }

        private void AddNewUser()
        {

            Kontakt kontakt = new Kontakt
            {
                Name = txtName.Text,
                Surname = txtSurname.Text,
                PhoneNumber = txtPhone.Text,
                Email = txtemail.Text,
                Birthdate = btndatepicker.Text
            };
            if (Database.PutUser(kontakt) != -1)
            {

                MessageBox.Show("User Added Successfuly", "New user", MessageBoxButton.OK, MessageBoxImage.Information);
                Clearfields();
                Refresh();
            }
            else
            {
                MessageBox.Show("An error occured", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

        }

        private void ShowUser(Kontakt kontakt)
        {
            labelid.Content = kontakt.userID;
            txtName.Text = kontakt.Name;
            txtSurname.Text = kontakt.Surname;
            txtPhone.Text = kontakt.PhoneNumber;
            txtemail.Text = kontakt.Email;
            btndatepicker.Text = kontakt.Birthdate;
        }

    }
}
