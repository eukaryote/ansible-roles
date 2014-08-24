shorewall role
##############

A simple (and simpleminded) role for shorewall configuration.  By default,
it uses the templates defined in the templates directory, which are designed
for a "one interface" shorewall setup on Digital Ocean that just allows
HTTP, HTTPS, DNS, and SSH.

To use a custom template instead of the predefined template, supply a
variable that gives the path to your custom template. For example, to use
a custom file for 'zones' that lives in your ansible project 'shorewall_zones.j2'
inside the 'templates' directory, you would include a
'shorewall_template_zones: templates/shorewall_zones.j2' as role variable, and
your custom template would be used instead of the default.

The 'shorewall.conf' file may be replaced like the other template files, but
there is also the option of just specifying one or more variables to be
configured in the default template file, rather than having to just override
the entire file. See the 'shorewall_default_shorewall.conf.j2' file in
templates for which variables can be used and what their default values are.
