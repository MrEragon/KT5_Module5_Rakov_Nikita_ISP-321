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
    /// Логика взаимодействия для AddOrEditPage.xaml
    /// </summary>
    public partial class AddOrEditPage : Page
    {
        public AddOrEditPage()
        {
            InitializeComponent();
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (Classes.Manager.MainFrame.CanGoBack)
            {
                Classes.Manager.MainFrame.GoBack();
            }
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder error = new StringBuilder();
                if (string.IsNullOrEmpty(LastNameBox.Text))
                {
                    error.AppendLine("Введите фамилию");
                }
                if (string.IsNullOrEmpty(FirstNameBox.Text))
                {
                    error.AppendLine("Введите имя");
                }
                if (string.IsNullOrEmpty(PatronymicBox.Text))
                {
                    error.AppendLine("Введите Отчество");
                }
                if (string.IsNullOrEmpty(LastNameBox.Text))
                {
                    error.AppendLine("Введите фамилию");
                }
                if (RoleComboBox.SelectedItem == null)
                {
                    error.AppendLine("Выберите должность");
                }
                if (DateOfBirthBox.SelectedDate == null)
                {
                    error.AppendLine("Выберите дату");
                }
                if (string.IsNullOrEmpty(PhoneNumberBox.Text))
                {
                    error.AppendLine("Введите номер телефона");
                }
                if (GenderBox.SelectedItem == null)
                {
                    error.AppendLine("Выберите пол");
                }
                if (string.IsNullOrEmpty(EmailBox.Text))
                {
                    error.AppendLine("Введите почту");
                }
                if (string.IsNullOrEmpty(LoginBox.Text))
                {
                    error.AppendLine("Введите логин");
                }
                if (string.IsNullOrEmpty(PasswordTextBox.Password))
                {
                    error.AppendLine("Введите пароль");
                }
                if (PasswordTextBox.Password.Length < 8)
                {
                    error.AppendLine("Пароль должен состоять из 8-ми знаков");
                }
                if (string.IsNullOrEmpty(AcceptPasswordBox.Password))
                {
                    error.AppendLine("Подтвердите пароль");
                }
                if (AcceptPasswordBox.Password != PasswordTextBox.Password)
                {
                    error.AppendLine("Пароли не совпадают");
                }
                if (error.Length > 1)
                {
                    MessageBox.Show(error.ToString(), "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }
        }
    }
}
