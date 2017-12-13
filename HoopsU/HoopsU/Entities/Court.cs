using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HoopsU.Entities
{

    public class Court
    {
        public string Name { get; set; }
        public int ID { get; set; }
        public int Capacity { get; set; }
        public bool FullSize { get; set; }
        public string Address { get; set; }
        public bool ParkingAvailable { get; set; }
        public string Zone { get; set; } 
    }
}