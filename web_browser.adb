with Ada.Text_IO;
with Gtk.Main;
with Gtk.Widget;
with Gtk.Window;
with WebKit.Web_View;
with WebKit.URI;

procedure Web_Browser is

   -- Create a new main window
   Main_Window : Gtk.Window.Gtk_Window;

   -- Create a new web view widget
   Web_View : WebKit.Web_View.Web_View;

begin

   -- Initialize the GTK+ library
   Gtk.Main.Init;

   -- Create the main window
   Main_Window := new Gtk.Window.Gtk_Window;
   Gtk.Window.Set_Title(Main_Window, "My Web Browser");
   Gtk.Window.Set_Default_Size(Main_Window, 800, 600);

   -- Create the web view widget
   Web_View := new WebKit.Web_View.Web_View;

   -- Add the web view widget to the main window
   Gtk.Container.Add(Main_Window, Web_View);

   -- Load a web page
   Web_View.Load_URI(WebKit.URI.Web("http://netbsd.org/"));

   -- Show the main window and run the main loop
   Gtk.Widget.Show_All(Main_Window);
   Gtk.Main.Main;

end Web_Browser;
