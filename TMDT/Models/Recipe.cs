//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TMDT.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Recipe
    {
        public int ingID { get; set; }
        public int cateID { get; set; }
        public double quantity { get; set; }
    
        public virtual Ingredient Ingredient { get; set; }
        public virtual Product Product { get; set; }
    }
}
