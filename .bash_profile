# .bash_profile

# Get the aliases and functions
if [ -f $HOME/.bashrc ]; then
	source $HOME/.bashrc
fi

# User specific environment and startup programs

# Keychain tool that works with ssh-agent.
# Prevents me from having to type my ssh passphrase
# except for once on system reboot
eval `keychain --eval --agents ssh id_rsa`

# Cleanup from last execution and start pulse audio
#alias audio="sudo rm -r /tmp/.esd-*; pulseaudio --start"
#audio
