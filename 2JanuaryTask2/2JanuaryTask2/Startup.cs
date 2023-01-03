using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_2JanuaryTask2.Startup))]
namespace _2JanuaryTask2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
