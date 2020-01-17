# Copyright 2020 Atelier Disko. All rights reserved.
#
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

# Build stage to retrieve and build the frontend. Will pull in the frontend from
# the project root `frontend` folder. This stage hardcodes the build process for
# the built-in frontend. If you have a custom frontend with a different build
# process (although this one may work for you, as it's pretty standard), you'll
# need to create a new Dockerfile basing it off this one.
FROM dpa/dsk:1.0.0

RUN mkdir docs

EXPOSE 8080
CMD /dsk -host 0.0.0.0 -port 8080 -allow-origin "https://developerdocs.dpa-id.de, https://designdocs.dpa-id.de" docs