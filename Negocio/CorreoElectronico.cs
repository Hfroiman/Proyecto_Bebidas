using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Mail;

namespace Negocio
{
    public class CorreoElectronico
    {
        public void EnviarEmail(string msj, string destinatario)
        {
            try
            {
                string remitente = "TecnoClinicaProgramacion@gmail.com";
                string contraseña = "uctpwzdjhtkfamhw";

                MailMessage correo = new MailMessage();
                correo.From = new MailAddress(remitente);
                correo.To.Add(destinatario);
                correo.Subject = "RECUPERO DE EMAIL";
                correo.Body = msj;
                correo.IsBodyHtml = false; 


                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential(remitente, contraseña);
                smtp.EnableSsl = true;

                smtp.Send(correo);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error al enviar el correo: {ex.Message}");
            }
        }
    }
}
