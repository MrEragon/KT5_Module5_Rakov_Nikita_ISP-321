//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfApp1.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Users
    {
        public int ID { get; set; }
        public int IDRole { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string Patronymic { get; set; }
        public string Email { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
        public string PhoneNumber { get; set; }
        public int PasportSeri { get; set; }
        public int PasportNum { get; set; }
        public System.DateTime DateofBirth { get; set; }
        public Nullable<System.DateTime> LastEnter { get; set; }
        public Nullable<int> IDEnter { get; set; }
        public int IDGender { get; set; }
    
        public virtual Gender Gender { get; set; }
        public virtual Role Role { get; set; }
        public virtual TypeEnter TypeEnter { get; set; }
    }
}
