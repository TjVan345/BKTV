using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;
using Microsoft.AspNet.FriendlyUrls.Resolvers;

namespace BK_TJ
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Temporary;
            routes.EnableFriendlyUrls(settings);

            routes.MapPageRoute("UtilitiesSoftware", "Utilities/Software", "~/Software");
            routes.MapPageRoute("UtilitiesHardware", "Utilities/Hardware", "~/Hardware");
            routes.MapPageRoute("UtilitiesInstallations", "Utilities/Installations", "~/Installations");
        }
    }

    public class MyUrlResolver : WebFormsFriendlyUrlResolver
    {
        public override string ConvertToFriendlyUrl(string path)
        {
            if (path.Contains("Software") || path.Contains("Hardware") || path.Contains("Installations"))
            {
                return "~/Utilities" + path.Replace(".aspx", "");
            }
            return base.ConvertToFriendlyUrl(path);
        }

        protected override bool TrySetMobileMasterPage(HttpContextBase ctx,
            System.Web.UI.Page page, string mobileSuffix)
        {
            return false;
        }
    }
}
