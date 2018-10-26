![harvard-logo](http://logonoid.com/images/harvard-logo.png)
# An end to end tutorial of a machine learning pipeline

This tutorial tries to do what most Most Machine Learning tutorials available online do not. It is not a 30 minute tutorial which teaches you how to "Train your own neural network" or "Learn deep learning in under 30 minutes". It's a full pipeline which you would need to do if you actually work with machine learning - introducing you to all the parts, and all the implementation decisions and details that need to be made. The dataset is not one of the standard sets like MNIST or CIFAR, you will make you very own dataset. Then you will go through a couple conventional machine learning algorithms, before finally getting to deep learning!

In the fall of 2016, I was a Teaching Fellow (Harvard's version of TA) for the graduate class on "Advanced Topics in Data Science (CS209/109)" at Harvard University. I was in-charge of designing the class project given to the students, and this tutorial has been built on top of the project I designed for the class.

# UPDATE 24th October 2018
The tutorial has now been re-written in PyTorch thanks to Anshul Basia (https://github.com/AnshulBasia)

You can access the HTML here: https://spandan-madan.github.io/DeepLearningProject/PyTorch_version/Deep_Learning_Project-Pytorch.html
and the IPython Notebook with the code in PyTorch here:https://github.com/Spandan-Madan/DeepLearningProject/blob/master/PyTorch_version/Deep_Learning_Project-Pytorch.ipynb 



# Citing if you use the work here
If you would like to use this work, please cite the work using the doi - 
[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.830003.svg)](http://dx.doi.org/10.5281/zenodo.830003)

# Reading/Viewing the Tutorial
To view the project as an HTML file, visit - https://spandan-madan.github.io/DeepLearningProject/

# The Code
If you would like to access to Code, please go through the ipython notebook `Deep_Learning_Project.ipynb`

# SETUP

Python 
- We will be using Python 2.7. Primary reason is that Tensorflow is not compatible with python > 3.5, and some other libraries are not compatible with python 3.

To make setup easy, we are going to use conda. 
- Please install conda 3 from https://www.continuum.io/downloads
- The repository has a conda config file which will make setting up super easy. It's the file `deeplearningproject_environment.yml`
- Then create a new conda environment using the command with `conda env create -f deeplearningproject_environment.yml`
- Now, you can activate the environment with: `source activate deeplearningproject`  
- `jupyter notebook` 
If all the isntallations go through, you are good to go! If not, here is a list of packages that need to be installed: `requests imDbPy wget tmdbsimple seaborn sklearn Pillow keras tensorflow h5py gensim nltk stop_words`

Please install imdbpy using 'pip install imdbpy==6.6' since earlier versions are broken
### Setting up conda environment in jupyter notebook
To be able to run the environment you just created on a juputer notebook, first check that you have the python package `ipykernel` installed. If you don't simply install it using 

```bash
pip install ipykernel
``` 

Now, add this to your jupyter notebook using the command: 

```bash
python -m ipykernel install --user --name deeplearningproject --display-name "deeplearningproject"
```

Needless to say, remove all single quotes before running commands.

Go to the directory and run jupyter notbeook by "jupyter notebook" and open the respective notebook on browser.
TO install TMDB: pip install tmdbsimple
Use "import tmdbsimple as tmdb"
 
# Known common bugs
I will keep updating this as issues pop up on this repository. 

- One known bug is because Keras 2.0 is not compatible with some Keras 1.2 functionalities. You may run into errors with importing `VGG16`. If so, just update keras using the following command: 
```bash
sudo pip install git+git://github.com/fchollet/keras.git --upgrade
```

-OS Error: Too Many Open Files
Refer to: https://stackoverflow.com/questions/16526783/python-subprocess-too-many-open-files
or, shut down notebook and execute following the the same terminal
``bash
ulimit -Sn 10000
```

And restart the jupyter notebook.

Hope this repo helps introduce you to a full machine learning pipeline! If you spot an error, please create an issue to help out others using this resource!
To prevent problems with installation and setting up, this repository comes with a conda environment profile. The only thing you will need is to install the newest version of conda, and use this profile to create a new environment and it will come set up with all the libraries you will need for the tutorial.