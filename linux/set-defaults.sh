# Sets many Solus Linux settings to the way I like it.
#
# Run ./set-defaults.sh to apply settings.

if [[ "$(lsb_release -d)" == *"Solus"* ]]; then
    # If Solus linux, enable the Budgie dark theme.
    gsettings set com.solus-project.budgie-panel dark-theme true
fi