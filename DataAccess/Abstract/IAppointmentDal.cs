using Core.Utilities.Results;
using Entities.Concrete;
using Entities.DTOs;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Abstract
{
    public interface IAppointmentDal : IEntityRepository<Appointment>
    {
        List<AppointmentDetailDto> GetAppointmentDetails();
        //void DeleteDto(AppointmentDetailDto appointmentDetail);
    }
}
