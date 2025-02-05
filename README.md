# dpa Connect Design Kit

http://design-kit.dpa-connect.de

## Beitragen

Before working on this, read https://confluence.mecom.de/display/EC/Developing+for+the+documentation+sites

https://design-kit.dpa-connect.de/tree/Connect-Design-Kit/Prozess/Beitragen

## Documentation

### Requirements

* [A sligthly customized DSK build](https://github.com/dpa-gmbh/dsk)

The documentation is rendered with the help of a custom DSK build.
DSK stands for Design System Kit. The origin DSK ist build and maintained by Atelier Disko.

Read more, here: 

- https://atelierdisko.de/journal/post-167-announcing-dsk-1-0
- https://github.com/atelierdisko/dsk
- https://rundsk.com

### Development

Make your relevant changes locally in the design-kit directory. You can test these changes on devel.

### Deployment

For Deployment verify your changes locally, *only then* merge them into the Master Branch and push. This
will trigger an automated deployment of a new version of the design-kit to
https://devel-designkit.dpa-id.de/.

### Test environment 

The test environment is deployed using the devel branch. For deployment 
to the test environment, verify your changes locally. *Only then* merge it into the devel branch 
and push. This will trigger an automated deployment of a new version of the *devel branch* design-kit to
https://devel-design-kit.dpa-connect.de. 

