using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using TatilSitesi.Models.Siniflar;

namespace TatilSitesi.Controllers
{
    public class GirisYapController : Controller
    {
        // GET: GirisYap
        Context c = new Context();
        public ActionResult Index()
        {
            return View();
        }
        
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Admin admin)
        {
            var bilgiler = c.Admins.FirstOrDefault
                (x => x.Kullanici == admin.Kullanici && x.Sifre == admin.Sifre);
            if (bilgiler != null)
            {
                FormsAuthentication.SetAuthCookie(bilgiler.Kullanici,false);
                Session["Kullanici"] = bilgiler.Kullanici.ToString();
                return RedirectToAction("Index","Admin");
            }
            else
            {
                return View();
            }
        }
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login","GirisYap");
        }
    }
}