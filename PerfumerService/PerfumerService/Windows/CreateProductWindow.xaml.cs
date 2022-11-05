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
    /// Логика взаимодействия для CreateProductWindow.xaml
    /// </summary>
    public partial class CreateProductWindow : Window
    {
        private readonly PerfumerEntities _db;
        public CreateProductWindow()
        {
            InitializeComponent();
            _db = new PerfumerEntities();

            categoryListBox.ItemsSource = _db.Category.ToList();
        }

        private Product CreateProduct()
        {
            try
            {
                Product product = new Product()
                {
                    Category = (Category)categoryListBox.SelectedItem,
                    Code = stockNumberTextBox.Text,
                    Name = nameTextBox.Text,
                    Manufacturer = manufacturerTextBox.Text,
                    Discount = float.Parse(currentDiscountTextBox.Text),
                    Description = descriptionTextBox.Text,
                    Price = float.Parse(priceTextBox.Text),
                    StockCount = int.Parse(minCountTextBox.Text)
                };
                _db.Product.Add(product);
                return product;
            } catch (Exception ex)
            {
                MessageBox.Show("Некоректно ввведены поля");
            }
            return null;
            
        }

        private void commitButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var product = CreateProduct();
                if (product != null)
                {
                    _db.Product.Add(product);
                    _db.SaveChanges();
                } else
                {
                    DialogResult = false;
                    return;
                }
            } catch (Exception ex)
            {
                foreach (var error in _db.GetValidationErrors())
                {
                    foreach (var message in error.ValidationErrors)
                    {
                        MessageBox.Show(message.ErrorMessage);
                    }
                }
                DialogResult = false;
                return ;
            }
            DialogResult = true;
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            _db.Dispose();
        }
    }
}
