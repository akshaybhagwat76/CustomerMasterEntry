//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MvcApplication1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class city
    {
        public city()
        {
            this.students = new HashSet<student>();
        }
    
        public int city_id { get; set; }
        public string city_name { get; set; }
        public Nullable<int> state_id { get; set; }
    
        public virtual state state { get; set; }
        public virtual ICollection<student> students { get; set; }
    }
}
