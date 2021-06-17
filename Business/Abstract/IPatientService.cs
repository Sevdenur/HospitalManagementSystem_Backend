using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface IPatientService
    {
        IDataResult<List<Patient>> GetAll();
        IDataResult<Patient> GetById(int id);
        IResult Add(Patient patient);
        IResult Delete(Patient patient);
        IResult Update(Patient patient);
    }
}
