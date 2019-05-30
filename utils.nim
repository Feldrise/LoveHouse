import strutils

proc chooseAction*(actions: seq[string]): int = 
    for i, action in actions:
        echo(i + 1, ") ", action)

    readLine(stdin).parseInt - 1;