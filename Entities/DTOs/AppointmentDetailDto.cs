using Entities.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.DTOs
{
    public class AppointmentDetailDto :IDto
    {
        public int AppointmentId { get; set; }
        public string  PatientName { get; set; }
        //public string PoliclinicName { get; set; }
        public string DoctorName { get; set; }
        public DateTime AppointmentDate { get; set; }
    }
}
