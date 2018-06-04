using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;
using MvcApplication1.ViewModels;
namespace MvcApplication1.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        demoEntities db = new demoEntities();
        public ActionResult Index()
        {
            return View(db.students.ToList());
        }
        public ActionResult EmployeeIndex()
        {
            
            List<Department> list = db.Departments.ToList();
            ViewBag.DepartmentList = new SelectList(list, "DepartmentId", "DepartmentName");

            return View();
        }
        [HttpPost]
        public ActionResult EmployeeIndex(EmployeeVM model)
        {
            try
            {
                List<Department> list = db.Departments.ToList();
                ViewBag.DepartmentList = new SelectList(list, "DepartmentId", "DepartmentName");

                Employee emp = new Employee();
                emp.Address = model.Address;
                emp.Name = model.Name;
                emp.DepartmentId = model.DepartmentId;
                db.Employees.Add(emp);
                db.SaveChanges();

                int ltstEmp = emp.EmployeeId;
                Site objsite = new Site();
                objsite.SiteName = model.SiteName;
                objsite.EmployeeId = ltstEmp;

                db.Sites.Add(objsite);
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
            return View(model);
        }
    }
}
