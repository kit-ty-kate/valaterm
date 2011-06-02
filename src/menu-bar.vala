/****************************
** Copyright © 2011 Jacques-Pascal Deplaix
**
** ValaTerm is free software: you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation, either version 3 of the License, or
** (at your option) any later version.
**
** This program is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with this program.  If not, see <http://www.gnu.org/licenses/>.
****************************/

public class Menubar : Gtk.MenuBar
{
	private ImageMenuItem item_about = new ImageMenuItem(Icons.ABOUT);
	private ImageMenuItem item_preferences = new ImageMenuItem(Icons.PREFERENCES);
	private ImageMenuItem item_clear = new ImageMenuItem(Icons.CLEAR);
	private ImageMenuItem item_copy = new ImageMenuItem(Icons.COPY);
	private ImageMenuItem item_paste = new ImageMenuItem(Icons.PASTE);
	private ImageMenuItem item_new_window = new ImageMenuItem(Icons.NEW, _("New Window"));
	private ImageMenuItem item_quit = new ImageMenuItem(Icons.QUIT);

	public signal void about();
	public signal void preferences();
	public signal void clear();
	public signal void copy();
	public signal void paste();
	public signal void new_window();
	public signal void quit();

	public Menubar()
	{
		var menu_file = new MenuItem(_("File"), {
				this.item_new_window,
				new Gtk.SeparatorMenuItem(),
				this.item_quit});

		var menu_edit = new MenuItem(_("Edit"), {
				this.item_copy,
				this.item_paste,
				new Gtk.SeparatorMenuItem(),
				this.item_preferences});

		var menu_tools = new MenuItem(_("Tools"), {
				this.item_clear});

		var menu_help = new MenuItem(_("Help"), {
				this.item_about});

		this.append(menu_file);
		this.append(menu_edit);
		this.append(menu_tools);
		this.append(menu_help);

		this.active_signals();
	}

	private void active_signals()
	{
		this.item_about.activate.connect(() => this.about());
		this.item_preferences.activate.connect(() => this.preferences());
		this.item_clear.activate.connect(() => this.clear());
		this.item_copy.activate.connect(() => this.copy());
		this.item_paste.activate.connect(() => this.paste());
		this.item_new_window.activate.connect(() => this.new_window());
		this.item_quit.activate.connect(() => this.quit());
	}
}