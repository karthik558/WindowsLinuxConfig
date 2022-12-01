os.setenv('STARSHIP_CONFIG', 'C:\\Users\\karth\\.starship\\starship.toml')
load(io.popen('starship init cmd'):read("*a"))()