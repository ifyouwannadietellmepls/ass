using System;
using System.Collections.Generic;
using System.Data;
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

namespace BibleoRY
{
    /// <summary>
    /// Логика взаимодействия для Admin.xaml
    /// </summary>
    public partial class Admin : Window
    {
        static Random rnd = new Random();

        BibleoRY.DataSet1 dataSet1;
        BibleoRY.DataSet1TableAdapters.employeeTableAdapter dataSet1employeeTableAdapter;
        System.Windows.Data.CollectionViewSource employeeViewSource;
        BibleoRY.DataSet1TableAdapters.subscription_TableAdapter dataSet1subscription_TableAdapter;
        System.Windows.Data.CollectionViewSource subscription_ViewSource;
        BibleoRY.DataSet1TableAdapters.bookTableAdapter dataSet1bookTableAdapter;
        System.Windows.Data.CollectionViewSource bookViewSource;
        public Admin()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            dataSet1 = ((BibleoRY.DataSet1)(this.FindResource("dataSet1")));
            // Загрузить данные в таблицу employee. Можно изменить этот код как требуется.
            dataSet1employeeTableAdapter = new BibleoRY.DataSet1TableAdapters.employeeTableAdapter();
            dataSet1employeeTableAdapter.Fill(dataSet1.employee);
            employeeViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("employeeViewSource")));
            employeeViewSource.View.MoveCurrentToFirst();
            // Загрузить данные в таблицу subscription_. Можно изменить этот код как требуется.
            dataSet1subscription_TableAdapter = new BibleoRY.DataSet1TableAdapters.subscription_TableAdapter();
            dataSet1subscription_TableAdapter.Fill(dataSet1.subscription_);
            subscription_ViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("subscription_ViewSource")));
            subscription_ViewSource.View.MoveCurrentToFirst();
            // Загрузить данные в таблицу book. Можно изменить этот код как требуется.
            dataSet1bookTableAdapter = new BibleoRY.DataSet1TableAdapters.bookTableAdapter();
            dataSet1bookTableAdapter.Fill(dataSet1.book);
            bookViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("bookViewSource")));
            bookViewSource.View.MoveCurrentToFirst();
        }

        private void DeletePers_Copy4_Click(object sender, RoutedEventArgs e)
        {
            dataSet1subscription_TableAdapter.InsertQuery(DateTime.Today.AddYears(1), "Действителен", MaskedRandom("AAADDDDDDDDD"));
            dataSet1subscription_TableAdapter.Fill(dataSet1.subscription_);
        }



        private string MaskedRandom(string mask)
        {
            Char[] pwdChars = new Char[26] { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
            StringBuilder str = new StringBuilder();
            char[] mas = mask.ToCharArray();
            foreach (char c in mas)
            {
                switch (c)
                {

                    case 'A': //Это буква
                        {
                            str.Append(pwdChars[rnd.Next(0, 25)]);
                            break;
                        }
                    case 'D': //Это цифра
                        {
                            str.Append(rnd.Next(0, 9).ToString());
                            break;
                        }
                    default:
                        { break; }
                }
            }
            return str.ToString();
        }

        private void InsertPers_Copy7_Click(object sender, RoutedEventArgs e)
        {
            dataSet1bookTableAdapter.InsertQuery(Name__Copy.Text.ToString(), Name__Copy30.Text.ToString());
            dataSet1bookTableAdapter.Fill(dataSet1.book);
        }

        private void UpdatePers_Copy7_Click(object sender, RoutedEventArgs e)
        {
            DataRowView row1 = (DataRowView)bookDataGrid.SelectedItem;
            dataSet1bookTableAdapter.UpdateQuery(Name__Copy.Text.ToString(), Name__Copy30.Text.ToString(), Int32.Parse(row1.Row.ItemArray[0].ToString()));
            dataSet1bookTableAdapter.Fill(dataSet1.book);
        }

        private void DeletePers_Copy7_Click(object sender, RoutedEventArgs e)
        {
            DataRowView row1 = (DataRowView)bookDataGrid.SelectedItem;
            dataSet1bookTableAdapter.DeleteQuery(Int32.Parse(row1.Row.ItemArray[0].ToString()));
            dataSet1bookTableAdapter.Fill(dataSet1.book);
        }
    }
}
