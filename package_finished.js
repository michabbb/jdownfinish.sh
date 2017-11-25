script = '/opt/pushover/scripts/jdownfinish.sh';
var event = package;
var name = package.getName();

callAsync(function(exitCode, stdOut, errOut) {}, script, name, event);
