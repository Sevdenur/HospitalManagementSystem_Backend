using DataAccess.Abstract;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Core.Utilities.Results;

namespace DataAccess.Concrete.EntityFramework
{
    public class EfAppointmentDal : EfEntityRepositoryBase<Appointment, DatabaseContext>, IAppointmentDal
    {
        public List<AppointmentDetailDto> GetAppointmentDetails()
        {
            using(DatabaseContext context = new DatabaseContext())
            {
                var result = from appointment in context.Appointments
                             join patient in context.Patients
                             on appointment.PatientId equals patient.Id
                             join doctor in context.Doctors
                             on appointment.DoctorId equals doctor.Id
                             //join policlinic in context.Policlinics
                             //on doctor.PoliclinicId equals policlinic.Id
                             select new AppointmentDetailDto
                             {
                                 AppointmentId = appointment.Id,
                                 PatientName = patient.FirstName + " " + patient.LastName,
                                 DoctorName = doctor.FirstName + " " + doctor.LastName,
                                 //PoliclinicName = policlinic.PoliclinicName,
                                 AppointmentDate = appointment.AppointmentDate,                               
                             };
                return result.ToList();
            }
        }
    }
}
