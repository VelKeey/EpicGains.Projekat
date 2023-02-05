using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Najnoviji_Projekat.Startup))]
namespace Najnoviji_Projekat
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
