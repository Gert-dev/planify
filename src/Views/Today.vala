public class Views.Today : Gtk.EventBox {
    construct {
        var icon_image = new Gtk.Image ();
        icon_image.valign = Gtk.Align.CENTER;
        icon_image.gicon = new ThemedIcon ("user-bookmarks-symbolic");
        icon_image.get_style_context ().add_class ("today");
        icon_image.pixel_size = 24; 

        var title_label = new Gtk.Label ("<b>%s</b>".printf (_("Today")));
        title_label.get_style_context ().add_class (Granite.STYLE_CLASS_H2_LABEL);
        //title_label.get_style_context ().add_class ("today");
        title_label.use_markup = true;

        var date_label = new Gtk.Label (new GLib.DateTime.now_local ().format (Granite.DateTime.get_default_date_format (false, true, false)));
        date_label.valign = Gtk.Align.CENTER;
        date_label.margin_top = 6;
        date_label.use_markup = true;

        var title_box = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 0);
        title_box.hexpand = true;
        title_box.valign = Gtk.Align.START;
        title_box.margin_start = 24;
        title_box.margin_end = 24;

        title_box.pack_start (icon_image, false, false, 0);
        title_box.pack_start (title_label, false, false, 6);
        title_box.pack_start (date_label, false, false, 0);

        add (title_box);
    }
}