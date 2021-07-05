expect { help } .to output(/^(?=.*help) (?=.*list) ?=.*play) (?+.*exit).+/m) .to_stdout
expect { play(songs) } .to output(/Phoenix - 1901/) .to_stdout
expect { play(songs) } .to_output(/Phoenix - 1901/) .to_stdout
expect { play(songs) } .to output(/Invalid input, please try again/) .to_stdout
expect { list(songs) } .to output(/1. Phoenix - 1901/) .to_stdout
expect {exit_jukebox } .to output(/Goodbye/) .to_stdout
exit_output = capture_stdout { run(songs) }
help_output = capture_stdout { run(songs) }
list_output = capture_stdout { run(songs) }
list_output = capture_stdout { run(songs) }