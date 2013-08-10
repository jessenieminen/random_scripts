# prints recursive count of lines of python source code from current directory
# includes an ignore_list. also prints total sloc
# usage:
# 	cd <project_root>
# 	python count_sourcelines.py

### NOTE: THE ignore_set IS FOR THE LEGACY CODEBASE OF CODENAME MONEYFACTOR, CHANGE WHENEVER WANTED ###

import os
cur_path = os.getcwd()
ignore_set = set(["__init__.py", "count_sourcelines.py", "jquery.js", "backbone.js", "jquery-ui-1.10.0.custom.js", "lodash.js", "require.js", "count_SLOC.py", "d3.js", "raphael-min.js", "jquery-ui.custom.js", "bootstrap.js", "jquery.pnotify.js", "jquery.dotdotdot.js", "jasmine.js", "jasmine-html.js"])

loclist = []

for pydir, _, pyfiles in os.walk(cur_path):
    for pyfile in pyfiles:
        if (pyfile.endswith(".py") or pyfile.endswith(".js") or pyfile.endswith(".html") or pyfile.endswith(".sh")) and pyfile not in ignore_set:
            totalpath = os.path.join(pydir, pyfile)
            loclist.append( ( len(open(totalpath, "r").read().splitlines()),
                               totalpath.split(cur_path)[1]) )

for linenumbercount, filename in loclist: 
    print "%05d lines in %s" % (linenumbercount, filename)

print "\nTotal: %s lines (%s)" %(sum([x[0] for x in loclist]), cur_path)
