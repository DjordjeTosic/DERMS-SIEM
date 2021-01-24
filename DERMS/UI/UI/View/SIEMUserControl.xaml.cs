using LiveCharts.Wpf;
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
using UI.ViewModel;

namespace UI.View
{
    /// <summary>
    /// Interaction logic for SIEMUserControl.xaml
    /// </summary>
    public partial class SIEMUserControl : UserControl
    {
        public SIEMUserControl()
        {
            InitializeComponent();
            //var yAxis = new Axis { Separator = new LiveCharts.Wpf.Separator { StrokeThickness = 0.12 } };
            //var sAxis = new Axis { Separator = new LiveCharts.Wpf.Separator { StrokeThickness = 0.1, Step = 1 } };
            //cartesianChart.AxisY.Add(yAxis);
            //cartesianChart.AxisX.Add(sAxis);
            DataContext = new SIEMUserControlViewModel();
        }
    }
}
