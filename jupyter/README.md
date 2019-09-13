# Jupyter Notebook Notes

Install the Anaconda Python distribution as your default Python distribution. The following assumes you are using the `conda` tool.

## Configuring Jupyter Notebooks to be aware of virtual environments.

Install the `nb_conda_kernels` package into your root environment.  
(Or what ever environment you want to run Jupyter from by default.)

`conda install nb_conda_kernels`

When you create a new python virtual environment, install the `ipykernel` package.  
If using conda:

`conda create -n new_env ipykernel`

With these packages, conda will configure Jupyter to be able to use the environments for new notebooks, or even switch between them.

If you would like to create environments, or view metadata about them, from Jupyter, install the `nb_conda` package.

`conda install nb_conda_kernels`