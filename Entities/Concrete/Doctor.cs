using Entities.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Concrete
{
    public class Doctor : IEntity
    {
        public int Id { get; set; }
        //public int PoliclinicId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
