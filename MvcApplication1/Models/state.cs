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
    
    public partial class state
    {
        public state()
        {
            this.students = new HashSet<student>();
        }
    
        public int state_id { get; set; }
        public string state_name { get; set; }
        public Nullable<int> country_id { get; set; }
    
        public virtual city city { get; set; }
        public virtual country country { get; set; }
        public virtual ICollection<student> students { get; set; }
    }
}
