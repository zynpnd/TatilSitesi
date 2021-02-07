using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TatilSitesi.Models.Siniflar;

namespace TatilSitesi.Controllers
{
    public class ContactController : Controller
    {
        // GET: Contact
        Context c = new Context();
        public ActionResult Index()
        {
            return View();
        }
       
        [HttpGet]
        public PartialViewResult iletisimYap()
        {
            return PartialView();
        }
        [HttpPost]
        public PartialViewResult iletisimYap(Iletisim i)
        {
            c.Iletisims.Add(i);
            c.SaveChanges();
            return PartialView();
        }


    }
}