using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder error = new StringBuilder();
                if (string.IsNullOrEmpty(LoginBox.Text))
                {
                    error.AppendLine("Введите логин");
                }
                if (string.IsNullOrEmpty(PasswordTextBox.Password))
                {
                    error.AppendLine("Введите пароль");
                }

                if(error.Length > 1)
                {
                    MessageBox.Show(error.ToString(), "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                if (Data.KT05Entities.GetContext().Users.Any(d => d.Login == LoginBox.Text && d.Password == PasswordTextBox.Password))
                {
                    var user = Data.KT05Entities.GetContext().Users.Where(d => d.Login == LoginBox.Text && d.Password == PasswordTextBox.Password).FirstOrDefault();
                    switch (user.Role.Name)
                    {
                        case "Администратор":
                            {
                                Classes.Manager.MainFrame.Navigate(new Pages.ListViewPage());
                                break;
                            }
                        case "Менеджер":
                            {
                                Classes.Manager.MainFrame.Navigate(new Pages.ListViewPage());
                                break;
                            }
                        case "Исполнитель":
                            {
                                Classes.Manager.MainFrame.Navigate(new Pages.ListViewPage());
                                break;
                            }
                    }
                }
            }
            catch
            {

            }
        }
    }
}
