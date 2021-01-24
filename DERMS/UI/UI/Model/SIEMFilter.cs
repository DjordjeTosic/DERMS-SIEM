using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UI.Model
{
    public class SIEMFilter
    {
        public SIEMFilter()
        {
            FilterByTime = false;
            SelectedFilterType = "";
            SelectedFilterAlarm = "";
            Address = "Address";
            From = DateTime.Today.AddDays(-1);
            To = DateTime.Today.AddDays(1);
        }

        public bool FilterByTime
        {
            get;
            set;
        }

        public string Address
        {
            get;
            set;
        }
        public string Content
        {
            get;
            set;
        }
        public string SelectedFilterType
        {
            get;
            set;
        }
        public string SelectedFilterAlarm
        {
            get;
            set;
        }
        public DateTime From
        {
            get;
            set;
        }
        public DateTime To
        {
            get;
            set;
        }
       
    }
}
