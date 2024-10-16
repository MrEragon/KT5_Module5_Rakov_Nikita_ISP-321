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
    /// Логика взаимодействия для ListViewPage.xaml
    /// </summary>
    public partial class ListViewPage : Page
    {
        public ListViewPage()
        {
            InitializeComponent();
            init();
        }

        public void init()
        {
            ListViewBox.ItemsSource = Data.KT05Entities.GetContext().Users.ToList();
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddOrEditPage());
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
            Classes.Manager.MainFrame.Navigate(new Pages.AddOrEditPage());
        }
    }
}
