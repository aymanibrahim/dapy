import importlib

packages = ['numpy', 'matplotlib', 'pandas', 'seaborn', 'jupyterlab', 'rise']

bad = []
for package in packages:
    try:
        importlib.import_module(package)
    except ImportError:
        bad.append(f"Can't import {package}")
else:
    if len(bad) > 0:
        print('Your workshop environment is not yet fully set up:')
        print('\n'.join(bad))
    else:
        print("Your workshop environment is set up")

