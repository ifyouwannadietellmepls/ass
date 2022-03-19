using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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
using Fare;

namespace BibleoRY
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        static Random rnd = new Random();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Rand.Text = MaskedRandom("AAADDDDDDDDD");
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
    }
}
