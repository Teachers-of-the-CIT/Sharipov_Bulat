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
using PerfumerService.Windows;

namespace PerfumerService
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Users _user;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void productsButton_Click(object sender, RoutedEventArgs e)
        {
            var window = new ProductsWindow();
            window.Show();
        }

        private void authorizeButton_Click(object sender, RoutedEventArgs e)
        {
            var window = new AuthorizeWindow();
            var result = window.ShowDialog();

            if ((bool) result)
            {
                _user = window.User;
            }

            if (_user != null)
            {
                authorizationInfo.Text = "Вы вошли в систему как " + _user.Role;
                authorizeButton.Visibility = Visibility.Hidden;
            }  
        }
    }
}
