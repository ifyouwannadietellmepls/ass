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

namespace BibleoRY
{
    /// <summary>
    /// Логика взаимодействия для Auth.xaml
    /// </summary>
    public partial class Auth : Window
    {

        BibleoRY.DataSet1 dataSet1;
        BibleoRY.DataSet1TableAdapters.employeeTableAdapter dataSet1employeeTableAdapter;
        System.Windows.Data.CollectionViewSource employeeViewSource;
        public Auth()
        {
            InitializeComponent();
        }

        private void DeletePers_Copy4_Click(object sender, RoutedEventArgs e)
        {
            string role = " ";
            dataSet1employeeTableAdapter.Fill(dataSet1.employee);
            if (dataSet1employeeTableAdapter.LoginQuery(Name__Copy23.Text.ToString()) != null)
            {
                if (dataSet1employeeTableAdapter.PasswordQuery(Name__Copy.Text.ToString()) != null)
                {
                    role = dataSet1employeeTableAdapter.RoleQuery(Name__Copy23.Text, Name__Copy.Text).ToString();
                    switch (role)
                    {
                        case "Студент":
                            {

                                Order w = new Order();
                                w.Show();
                                w.Name__Copy2.Text = Name__Copy23.Text;
                                w.Name__Copy1.Text = Name__Copy.Text;
                                w.Name__Copy3.Text = "Студент";
                                this.Close();
                                break;
                            }
                        case "Преподаватель":
                            {
                                Order w = new Order();
                                w.Show();
                                w.Name__Copy2.Text = Name__Copy23.Text;
                                w.Name__Copy1.Text = Name__Copy.Text;
                                w.Name__Copy3.Text = "Преподаватель";
                                this.Close();
                                break;
                               
                            }
                        case "Слушатель":
                            {
                                Order w = new Order();
                                w.Show();
                                w.Name__Copy2.Text = Name__Copy23.Text;
                                w.Name__Copy1.Text = Name__Copy.Text;
                                w.Name__Copy3.Text = "Слушатель";
                              
                               
                                this.Close();

                                break;
                            }
                        case "Администратор":
                            {
                                Order w = new Order();
                                w.Show();
                                w.Name__Copy2.Text = Name__Copy23.Text;
                                w.Name__Copy1.Text = Name__Copy.Text;
                                w.Name__Copy3.Text = "Администратор";
                                this.Close();
                                break;
                              
                            }
                        default:
                            {

                                MessageBox.Show("Wrong Login or Password");
                                break;
                            }
                    }
                }
                else
                    MessageBox.Show("Недействительный пароль");
            }   
            else
                MessageBox.Show("Пользователь не найден");
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            dataSet1 = ((BibleoRY.DataSet1)(this.FindResource("dataSet1")));
            // Загрузить данные в таблицу employee. Можно изменить этот код как требуется.
            dataSet1employeeTableAdapter = new BibleoRY.DataSet1TableAdapters.employeeTableAdapter();
            dataSet1employeeTableAdapter.Fill(dataSet1.employee);
            employeeViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("employeeViewSource")));
            employeeViewSource.View.MoveCurrentToFirst();
        }

        private void DeletePers_Copy_Click(object sender, RoutedEventArgs e)
        {
            RegP w = new RegP();
            w.Show();
            this.Hide();

        }

        private void DeletePers_Copy1_Click(object sender, RoutedEventArgs e)
        {
            RegSt w = new RegSt();
            w.Show();
            this.Hide();
        }

        private void DeletePers_Copy2_Click(object sender, RoutedEventArgs e)
        {
            RegS w = new RegS();
            w.Show();
            this.Hide();
        }
    }
}
