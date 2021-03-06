# walma-remote-start

This application can automatically launch the browser in the same room, when you create a new room to Walma by the [walma-ios](https://github.com/opinsys/walma-ios/ "walma-ios") or [walma-android](https://github.com/opinsys/walma-android/ "walma-android") (coming soon)

# Installing

Install Node.js 0.6.x

    git clone git://github.com/opinsys/walma-remote-start.git
    cd walma-remote-start

Set Walma server and remote key (config.json)

    {
      "walmaServer": "http://localhost",
      "cameraId": "testsecretkey"
      "resolution": { "width": 1024, "height": 768 }
    }

Run

    coffee client.coffee

# Test

You can test the application by sending the image to the walma server.

    curl -F "image=@test.jpg" -F "cameraId=testsecretkey" http://localhost/api/create_multipart

# Copyright

Copyright © 2010 Opinsys Oy

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the Free Software Foundation, Inc., 51 Franklin
Street, Fifth Floor, Boston, MA 02110-1301, USA.