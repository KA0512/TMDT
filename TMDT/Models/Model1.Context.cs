﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class TMDTThucAnNhanhEntities : DbContext
    {
        public TMDTThucAnNhanhEntities()
            : base("name=TMDTThucAnNhanhEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    

        public virtual DbSet<Address> Address { get; set; }

        public virtual DbSet<Category> Category { get; set; }
        public virtual DbSet<Combo> Combo { get; set; }
        public virtual DbSet<ComboDetail> ComboDetail { get; set; }
        public virtual DbSet<Condition> Condition { get; set; }
        public virtual DbSet<Employees> Employees { get; set; }

        public virtual DbSet<Invoice> Invoice { get; set; }
        public virtual DbSet<InvoiceDetails> InvoiceDetails { get; set; }
        public virtual DbSet<Ingredient> Ingredient { get; set; }

        public virtual DbSet<location> location { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<OrderDetail> OrderDetail { get; set; }
        public virtual DbSet<Position> Position { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<Recipe> Recipe { get; set; }

        public virtual DbSet<Unit> Unit { get; set; }
        public virtual DbSet<User> User { get; set; }
    
        public virtual int AddProductAndCombo(string name, Nullable<decimal> price, string image, Nullable<int> typeID, Nullable<decimal> priceUp)
        {
            var nameParameter = name != null ?
                new ObjectParameter("name", name) :
                new ObjectParameter("name", typeof(string));
    
            var priceParameter = price.HasValue ?
                new ObjectParameter("price", price) :
                new ObjectParameter("price", typeof(decimal));
    
            var imageParameter = image != null ?
                new ObjectParameter("image", image) :
                new ObjectParameter("image", typeof(string));
    
            var typeIDParameter = typeID.HasValue ?
                new ObjectParameter("typeID", typeID) :
                new ObjectParameter("typeID", typeof(int));
    
            var priceUpParameter = priceUp.HasValue ?
                new ObjectParameter("priceUp", priceUp) :
                new ObjectParameter("priceUp", typeof(decimal));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("AddProductAndCombo", nameParameter, priceParameter, imageParameter, typeIDParameter, priceUpParameter);
        }
    }
}
