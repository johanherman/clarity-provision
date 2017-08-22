# Extensions for our installation of Clarity

echo "Setting up environment variables..."
export PATH=$PATH:/usr/local/miniconda/bin

# Place the clarity bin folder at the front of the path for the glsai and glsjboss users
if [ "$USER" == "glsai" -o "$USER" == "labadmin" ]; then
    # The gls users should always be in the clarity virtual environment
    # giving them another version of Python and required pip packages
    echo "Activating the clarity conda environment"
    source activate clarity
fi
