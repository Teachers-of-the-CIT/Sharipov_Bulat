using System;
using System.Collections.Generic;
using System.Data.Entity;
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
    /// Логика взаимодействия для ProductsWindow.xaml
    /// </summary>
    public partial class ProductsWindow : Window
    {
        private readonly PerfumerEntities _db;

        public ProductsWindow()
        {
            InitializeComponent();

            _db = new PerfumerEntities();

            _db.Product.Load();
            productsList.ItemsSource = _db.Product.Local;
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            _db.Dispose();
        }

        private void createButton_Click(object sender, RoutedEventArgs e)
        {
            var window = new CreateProductWindow();
            window.ShowDialog();
            _db.Product.Load();
            productsList.Items.Refresh();
        }

        private void editButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void delteButton_Click(object sender, RoutedEventArgs e)
        {
            var product = (Product) productsList.SelectedItem;

            _db.Product.Remove(product);
            _db.SaveChanges();

            productsList.Items.Refresh();
        }
    }
}
