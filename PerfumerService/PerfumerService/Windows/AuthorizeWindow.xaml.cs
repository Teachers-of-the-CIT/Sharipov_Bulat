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
using System.Windows.Shapes;

namespace PerfumerService.Windows
{
    /// <summary>
    /// Логика взаимодействия для AuthorizeWindow.xaml
    /// </summary>
    public partial class AuthorizeWindow : Window
    {
        private readonly PerfumerEntities _db;
        public Users User { get; set; }

        public AuthorizeWindow()
        {
            InitializeComponent();
            _db = new PerfumerEntities();
        }

        private Users GetUser()
        {
            var login = loginTextBox.Text;

            var user =_db.Users.Where(x => x.Login == login).FirstOrDefault();

            return user;
        }

        private void authorizeButton_Click(object sender, RoutedEventArgs e)
        {
            var user = GetUser();
            if (user != null)
            {
                if (user.Password == passwordTextBox.Text)
                {
                    User = user;
                    DialogResult = true;
                }
            } else
            {
                MessageBox.Show("Пользователь не найден");
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            _db.Dispose();
        }
    }
}
