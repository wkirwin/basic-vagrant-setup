# Configuration file for ipython-notebook.

c = get_config()

c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.port = 8888
c.NotebookApp.open_browser = False
c.IPKernelApp.pylab = 'inline'
