using DERMSCommon.UIModel;
using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

namespace DERMSCommon
{
	[DataContract]
	[Serializable()]
	public class SIEMScadaData : BindableBase
	{
		[DataMember]
		private DateTime timeOfEvent;
		[DataMember]
		private string address;
		[DataMember]
		private string logLevel;
		[DataMember]
		private string eventInfo;
		[DataMember]
		private int sizeOfModel;
		[DataMember]
		private int securityInfo;
		[DataMember]
		private PackIconKind _alarmImage;
		[DataMember]
		private SolidColorBrush _alarmImageColor;
		public SIEMScadaData(DateTime time, string add, string logl, string eventi, int seci,int siz)
		{
			this.Address = add;
			this.TimeOfEvent = time;
			this.Loglevel = logl;
			this.EventInfo = eventi;
			this.SecurityInfo = seci;
			this.SizeOfModel = siz;
			//this.AlarmImageColor = new SolidColorBrush();
			//this.AlarmImage = new PackIconKind();
		}
		public DateTime TimeOfEvent
		{
			get { return timeOfEvent; }
			set { timeOfEvent = value; OnPropertyChanged("TimeOfEvent"); }
		}
		public string Address
		{
			get { return address; }
			set { address = value; OnPropertyChanged("Address"); }
		}
		public string Loglevel
		{
			get { return logLevel; }
			set { logLevel = value; OnPropertyChanged("Loglevel"); }
		}
		public string EventInfo
		{
			get { return eventInfo; }
			set { eventInfo = value; OnPropertyChanged("EventInfo"); }
		}
		public int SizeOfModel
		{
			get { return sizeOfModel; }
			set { sizeOfModel = value; OnPropertyChanged("SizeOfModel"); }
		}
		public int SecurityInfo
		{
			get { return securityInfo; }
			set { securityInfo = value; OnPropertyChanged("SecurityInfo"); }
		}
		public PackIconKind AlarmImage
		{
			get
			{
				return _alarmImage;
			}
			set
			{
				_alarmImage = value;
			}
		}

		public SolidColorBrush AlarmImageColor
		{
			get
			{
				return _alarmImageColor;
			}
			set
			{
				_alarmImageColor = value;
			}
		}
	}
}
