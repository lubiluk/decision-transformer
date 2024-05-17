# Installation steps

## Local computer with Debian

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
    ```
4. Install dependencies
    ```
    pip install -U pip wheel
    pip install git+https://github.com/Farama-Foundation/d4rl@master#egg=d4rl
    pip install gym==0.23
    pip install 'cython<3'
    sudo apt install libglew-dev patchelf
    ```

## Ahtena

