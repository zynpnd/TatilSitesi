using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TatilSitesi.Models.Siniflar;

namespace TatilSitesi.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        Context c = new Context();
        [Authorize]
        public ActionResult Index()
        {
            var degerler = c.Blogs.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult YeniBlog()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniBlog(Blog p)
        {
            c.Blogs.Add(p);
            c.SaveChanges();//değişikleri kaydet
            return RedirectToAction("Index");
        }
        public ActionResult BlogSil(int id)
        {
            var b = c.Blogs.Find(id); //id yi bul
            c.Blogs.Remove(b);//blogdan gelen değeri sil
            c.SaveChanges();//değişikleri kaydet
            return RedirectToAction("Index");
        }
        public ActionResult BlogGetir(int id)
        {
            var bl = c.Blogs.Find(id);
            return View("BlogGetir", bl);
        }
        public ActionResult BlogGuncelle(Blog b)
        {
            var blg = c.Blogs.Find(b.ID);
            blg.Aciklama = b.Aciklama;
            blg.Baslik = b.Baslik;
            blg.BlogImage = b.BlogImage;
            blg.Fiyat = b.Fiyat;
            blg.Tarih = b.Tarih;
            c.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult YorumListesi()
        {
            var yorumlar = c.Yorumlars.ToList();
            return View(yorumlar);
        }
        public ActionResult YorumSil(int id)
        {
            var b = c.Yorumlars.Find(id);
            c.Yorumlars.Remove(b);
            c.SaveChanges();
            return RedirectToAction("YorumListesi");
        }
        public ActionResult YorumGetir(int id)
        {
            var yorum = c.Yorumlars.Find(id);
            return View("YorumGetir", yorum);
        }
        public ActionResult YorumGuncelle(Yorumlar yorumlar)
        {
            var yorum = c.Yorumlars.Find(yorumlar.ID);
            yorum.KullaniciAdi = yorumlar.KullaniciAdi;
            yorum.Mail = yorumlar.Mail;
            yorum.Yorum = yorumlar.Yorum;
            c.SaveChanges();
            return RedirectToAction("YorumListesi");
        }
        public ActionResult iletisimListesi()
        {
            var iletisim = c.Iletisims.ToList();
            return View(iletisim);
        }

        public ActionResult HakkimizdaListesi()
        {
            var hakkimizda = c.Hakkimizdas.ToList();
            return View(hakkimizda);
        }
        public ActionResult HakkimizdaSil(int id)
        {
            var h = c.Hakkimizdas.Find(id);
            c.Hakkimizdas.Remove(h);
            c.SaveChanges();
            return RedirectToAction("HakkimizdaListesi");
        }

        public ActionResult HakkimizdaGetir(int id)
        {
            var hakkimizda = c.Hakkimizdas.Find(id);
            return View("HakkimizdaGetir", hakkimizda);
        }
       public ActionResult HakkimizdaGuncelle(Hakkimizda h)
        {
            var hakkimizda = c.Hakkimizdas.Find(h.ID);
            hakkimizda.FotoUrl = h.FotoUrl;
            hakkimizda.Aciklama = h.Aciklama;
            c.SaveChanges();
            return RedirectToAction("HakkimizdaListesi");
        }
    }
}