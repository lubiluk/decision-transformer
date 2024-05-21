# Installation steps

## Local computer with Debian 12

0. Use python version between 3.7 and 3.10 (including)
1. Download and install mujoco into .mujoco/mujoco210
2. 
    ```
    pip install mujoco-py<2.2,>=2.1
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.mujoco/mujoco210/bin
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia
    ```
    You will have to export those everytime you use mujoco so perhaps add them to bashrc
3. Create pip env
    ```
    python3 -m venv [path to a dir]
    source [path to a dir]/bin/activate
    ```
4. Install dependencies
    ```
    pip install -U pip wheel
    pip install gym==0.23
    pip install 'cython<3'
    sudo apt install libglew-dev patchelf
    ```
5. Install D4RL
    ```
    git clone https://github.com/Farama-Foundation/d4rl.git
    cd d4rl
    ```
    Now, edit setup.py, so that it allows higher version of python (3.11)
    ```
    python_requires=">=3.7, <3.12",
    ```
    And install it
    ```
    pip install -e .
    ```
6. Pybullet doesn't work becaus of carla. I ended up commenting out pybullet from d4rl/__init__.py

7. Download datasets:
    ```
    cd gym/data
    python download_d4rl_datasets.py
    ```

## Ahtena

