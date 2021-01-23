﻿using DERMSCommon;
using DERMSCommon.UIModel;
using LiveCharts;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;
using UI.Communication;
using static DERMSCommon.Enums;

namespace UI.ViewModel
{
    public class SIEMUserControlViewModel: BindableBase
    {
        CommunicationWithSIEM proxy;
        private string siemString;
        private string cpuUsage;
        private Thread timerWorker;
        private Thread timerWorkerChart;
        private Thread timerWorkerSiem;
        private bool timerThreadStopSignal = true;
        private bool timerThreadStopSignalChart = true;
        private bool timerThreadStopSignalSiem = true;
        private bool disposed = false;
        private bool disposedChart = false;
        private bool disposedSiem = false;
        private DateTime currentTime;
        private TimeSpan elapsedTime = new TimeSpan();
        private int brojac = 0;

        private SolidColorBrush color1;
        private SolidColorBrush color2;
        private Visibility visibilityCPU;
        private Visibility visibilityRAM;
        private IChartValues chartValues1;
        private IChartValues chartValues2;
        private bool showCPU;
        private bool showRAM;
        private ObservableCollection<SIEMData> siemData;
        public SIEMUserControlViewModel()
        {
            proxy = new CommunicationWithSIEM();
            proxy.Open();
            SiemData = new ObservableCollection<SIEMData>();
            
            ShowCPU = true;
            ShowRAM = true;
            CpuUsage = "";
            Color1 = new SolidColorBrush(Colors.Red);
            Color2 = new SolidColorBrush(Colors.Blue);
            ChartValues1 = new ChartValues<double>();
            ChartValues2 = new ChartValues<double>();
            InitializeAndStartThreads();
        }
        public SolidColorBrush Color1 { get { return color1; } set { color1 = value; OnPropertyChanged("Color1"); } }
        public SolidColorBrush Color2 { get { return color2; } set { color2 = value; OnPropertyChanged("Color2"); } }
        public ObservableCollection<SIEMData> SiemData { get { return siemData; } set { siemData = value; OnPropertyChanged("SiemData"); } }
        public IChartValues ChartValues1
        {
            get { return chartValues1; }
            set
            {
                chartValues1 = value;
                OnPropertyChanged("ChartValues1");
            }
        }

        public IChartValues ChartValues2
        {
            get { return chartValues2; }
            set
            {
                chartValues2 = value;
                OnPropertyChanged("ChartValues2");
            }
        }
        public bool ShowCPU
        {
            get
            {
                return showCPU;
            }
            set
            {
                showCPU = value;
                if (showCPU == true)
                {
                    VisibilityCPU = Visibility.Visible;
                }
                else
                {
                    VisibilityCPU = Visibility.Collapsed;
                }
                OnPropertyChanged("ShowCPU");
            }
        }
        public bool ShowRAM
        {
            get
            {
                return showRAM;
            }
            set
            {
                showRAM = value;
                if (showRAM == true)
                {
                    VisibilityRAM = Visibility.Visible;
                }
                else
                {
                    VisibilityRAM = Visibility.Collapsed;
                }
                OnPropertyChanged("ShowRAM");
            }
        }
        public Visibility VisibilityCPU { get { return visibilityCPU; } set { visibilityCPU = value; OnPropertyChanged("VisibilityCPU"); } }
        public Visibility VisibilityRAM { get { return visibilityRAM; } set { visibilityRAM = value; OnPropertyChanged("VisibilityRAM"); } }
        public string SiemString { get => siemString; set { siemString = value; OnPropertyChanged("SiemString"); } }
        public string CpuUsage { get => cpuUsage; set { cpuUsage = value; OnPropertyChanged("CpuUsage"); } }
        private void InitializeAndStartThreads()
        {
            InitializeTimerThread();
            StartTimerThread();
        }

        private void InitializeTimerThread()
        {
            timerWorker = new Thread(TimerWorker_DoWork);
            timerWorker.Name = "Timer Thread";
            timerWorkerChart = new Thread(TimerWorker_DoWork_Chart);
            timerWorkerChart.Name = "Timer Chart Thread";
            timerWorkerSiem = new Thread(TimerWorker_DoWork_Siem);
            timerWorkerSiem.Name = "Timer Siem Thread";
        }

        private void StartTimerThread()
        {
            timerWorker.Start();
            timerWorkerChart.Start();
            timerWorkerSiem.Start();
        }

        /// <summary>
        /// Timer thread:
        ///		Refreshes timers on UI and signalizes to acquisition thread that one second has elapsed
        /// </summary>
        private void TimerWorker_DoWork()
        {

            while (timerThreadStopSignal)
            {
                if (disposed)
                    return;
                brojac++;
                currentTime = DateTime.Now;
                elapsedTime = elapsedTime.Add(new TimeSpan(0, 0, 1));
                PerformanceCounter cpuCounter;

                double memory = 0.0;
                cpuCounter = new PerformanceCounter();
                using (Process proc = Process.GetCurrentProcess())
                {
                    // The proc.PrivateMemorySize64 will returns the private memory usage in byte.
                    // Would like to Convert it to Megabyte? divide it by 2^20
                    memory = (double)(proc.PrivateMemorySize64 / (1024 * 1024));
                    ChartValues2.Add((memory / 4024) * 100);
                }

                cpuCounter.CategoryName = "Processor";
                cpuCounter.CounterName = "% Processor Time";
                cpuCounter.InstanceName = "_Total";
                string x = cpuCounter.NextValue() + "%";
                
                Thread.Sleep(1000);
                double newCpuValue =(double)cpuCounter.NextValue();
                ChartValues1.Add(newCpuValue);
                Thread.Sleep(1000);
            }
        }
        private void TimerWorker_DoWork_Chart()
        {
            while (timerThreadStopSignalChart)
            {
                if (disposedChart)
                    return;

                var mapper = new LiveCharts.Configurations.CartesianMapper<double>().X((values, index) => index).Y((values) => values).Fill((v, i) => i == DateTime.Now.Hour ? Brushes.Green : Brushes.White).Stroke((v, i) => i == DateTime.Now.Hour ? Brushes.Green : Brushes.White);

                LiveCharts.Charting.For<double>(mapper, LiveCharts.SeriesOrientation.Horizontal);

                //CurrentTime = DateTime.Now.ToString("HH:mm:ss");
                Thread.Sleep(1000);
            }
        }
        private void TimerWorker_DoWork_Siem()
        {
            while (timerThreadStopSignalSiem)
            {
                if (disposedSiem)
                    return;

                List<SIEMData> tempSiem = new List<SIEMData>();
                List<SIEMData> tempSiem2 = new List<SIEMData>();
                foreach (SIEMData s in SiemData)
                {
                    tempSiem2.Add(s);
                }
                tempSiem = proxy.sendToSIEM.Hello();
                foreach (SIEMData s in tempSiem)
                {
                    tempSiem2.Add(s);
                }
                SiemData = new ObservableCollection<SIEMData>(tempSiem2);
                //foreach (SIEMData siem in SiemData)
                //{
                //    siem.AlarmImage = new MaterialDesignThemes.Wpf.PackIconKind();
                //    siem.AlarmImageColor = new SolidColorBrush();
                //    switch (siem.SecurityInfo)
                //    {
                //        case 0:
                //            siem.AlarmImage = MaterialDesignThemes.Wpf.PackIconKind.Safe;
                //            siem.AlarmImageColor = (SolidColorBrush)(new BrushConverter().ConvertFrom("#ff33cc"));
                //            break;
                //        case 1:
                //            siem.AlarmImage = MaterialDesignThemes.Wpf.PackIconKind.ServerSecurity;
                //            siem.AlarmImageColor = (SolidColorBrush)(new BrushConverter().ConvertFrom("#cc0000"));
                //            break;
                //        case 2:
                //            siem.AlarmImage = MaterialDesignThemes.Wpf.PackIconKind.SecurityAccount;
                //            siem.AlarmImageColor = (SolidColorBrush)(new BrushConverter().ConvertFrom("#cc0000"));
                //            break;

                //    }
                //}

                //CurrentTime = DateTime.Now.ToString("HH:mm:ss");
                Thread.Sleep(2000);
            }
        }
    }
}
