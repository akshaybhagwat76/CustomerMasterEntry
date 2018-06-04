using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;
namespace MvcApplication1.Controllers
{
    public class TestController : Controller
    {
        demoEntities db = new demoEntities();
        public ActionResult Index()
        {
            return View();
        }
    }
}
