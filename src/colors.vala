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

namespace Colors
{
	public const Gdk.Color white = {0, 0xffff, 0xffff, 0xffff};
	public const Gdk.Color black = {0, 0, 0, 0};

	public Gdk.Color parse(string color)
	{
		Gdk.Color value;
		// FIXME: this function return a boolean to check if the function has failed.
		Gdk.Color.parse(color, out value);
		return value;
	}
}