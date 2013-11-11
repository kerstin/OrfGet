#!/bin/bash
#
# OrfGet - an orf videothek download helper script
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#

ASX_URL="http://tvthek.orf.at`wget -O - -q "$1" | grep -oh "\/.*download.asx" `"
MMS="`wget -O - -q "$ASX_URL" |  grep -oh 'mms:[^\"]*' `" 
MMS_URL=`echo $MMS | sed -e 's/\s\+/\r\n/g'`
echo "$MMS_URL"
echo "orf"
