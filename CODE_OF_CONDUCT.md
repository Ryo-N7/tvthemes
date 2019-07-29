# Contributor Code of Conduct

For the `theme_*()` follow the order of the arguments:

* text.font = __,
* title.font = __,
*  legend.font = __,
*  title.size = __,
*  text.size = __,
*  subtitle.size = __,
*  axis.title.size = __,
*  axis.text.size = __,
*  legend.title.size = __,
*  legend.text.size = __,
*  title.color = __,
*  subtitle.color = __,
*  text.color = __,
*  axis.title.color = __,
*  axis.text.color = __,
*  legend.title.color = __,
*  legend.text.color = __,
*  legend.position = __,
*  ticks = __

For the ordering of the actual `theme()` elements: 
* text (text, plot.title, plot.subtitle)
* axis 
* background/panel
* legend
* axis ticks toggle

The best way to go about it is to just copy-paste an existing theme in the package and start editing from there.

For the `palettes`:
* palette, if multiple then in a list
* pal object
* scale_color and colour
* scale_fill

As with the `themes` it's best to just copy-paste an existing palette in the package and start editing from there.

As contributors and maintainers of this project, we pledge to respect all people who 
contribute through reporting issues, posting feature requests, updating documentation,
submitting pull requests or patches, and other activities.

We are committed to making participation in this project a harassment-free experience for
everyone, regardless of level of experience, gender, gender identity and expression,
sexual orientation, disability, personal appearance, body size, race, ethnicity, age, or religion.

Examples of unacceptable behavior by participants include the use of sexual language or
imagery, derogatory comments or personal attacks, trolling, public or private harassment,
insults, or other unprofessional conduct.

Project maintainers have the right and responsibility to remove, edit, or reject comments,
commits, code, wiki edits, issues, and other contributions that are not aligned to this 
Code of Conduct. Project maintainers who do not follow the Code of Conduct may be removed 
from the project team.

Instances of abusive, harassing, or otherwise unacceptable behavior may be reported by 
opening an issue or contacting one or more of the project maintainers at ryonakagawara@gmail.com.

This Code of Conduct is adapted from the Contributor Covenant 
(http://contributor-covenant.org), version 1.0.0, available at 
http://contributor-covenant.org/version/1/0/0/
