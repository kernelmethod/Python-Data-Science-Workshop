# Python Data Science Workshop
![LISA logo](https://raw.githubusercontent.com/wshand/Python-Data-Science-Workshop/master/assets/LISA_logo_medium.jpg)

Notebooks and code for the Spring 2019 Python Data Science Workshop at CU Boulder. Sponsored by the [Laboratory for Interdisciplinary Statistical Analysis (LISA)](https://www.colorado.edu/lab/lisa/).

## Courses
I am currently developing notebooks for the following short courses:

### Python Data Wrangling
> This course teaches some of the building blocks for handling data in Python. We will show how to parse and manipulate data using Numpy and Pandas, and perform visualization with Matplotlib. We analyze a real dataset using Scipy, demonstrating how to perform linear regression, confidence interval computation, and other basic statistical tasks.

### Intro to Machine Learning in Python with Scikit-learn
> This course introduces the Scikit-learn library for doing machine learning in Python. We start with simple linear regression, and gradually look at other machine learning methods such as PCA, k-means clustering, and random decision forests. Throughout this session, students will learn how to use Scikit-learn to create their own machine learning pipeline for real-world problems.

### Building Neural Networks with Keras
> Neural networks are becoming an increasingly important tool in machine learning. In this short course, we demonstrate how to rapidly prototype an artificial neural network (ANN) in Python using the Keras library. We briefly introduce ANNs, including important variations like convolutional networks. Using Keras, students will build their own networks for some basic natural language processing and computer vision tasks.

## Installing requirements for notebooks
To run these notebooks, you need to install the required libraries from `requirements.txt`. For Anaconda, run

```
conda install --yes --file requirements.txt
```

in your terminal while `cd`'d into this directory. If that command doesn't work, you can also try [this workaround](https://stackoverflow.com/a/38609653) from StackOverflow:

```
while read requirement; do conda install --yes $requirement; done < requirements.txt
```

To install with `pip`, run

```
pip install -r requirements.txt
```

Alternatively, if you're a fan of [Python virtual environments](https://docs.python.org/3/tutorial/venv.html), you can create a virtual environment for these notebooks and install the requirements from `requirements.txt` there. Then, with the environment activated, you can install the virtual environment as a kernel for Jupyter by running the following snippet (credit: [tschundler on StackOverflow](https://stackoverflow.com/a/37891993)):

```
pip install ipykernel
python -m ipykernel --user --name workshop-kernel
```
