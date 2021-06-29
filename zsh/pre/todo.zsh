todo.sh() {
_things3_content="$(osascript -e 'tell application "System Events"
if (name of processes) does not contain "Things3"
error "Things is not running."
end if
end tell
tell application "Things3"
set result to "List of todos"
repeat with toDo in to dos of list "Today"
set result to result & linefeed & (name of toDo)
end repeat
result
end tell' 2> /dev/null)"
if [[ "$(echo -n $_things3_content | head -n 1)" == "List of todos" ]]; then
    echo -n $_things3_content | sed 1d > ~/.todo/todo.txt
fi
    /usr/local/bin/todo.sh $@
}
