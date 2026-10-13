@echo off
setlocal enabledelayedexpansion

:: List of available GPUs in the system ::
echo [*] If you want to use - activate a specific GPU set it with "set HIP_VISIBLE_DEVICES=<index of the GPU>"
echo [*] for example : "set HIP_VISIBLE_DEVICES=0" at the start of comfyui-user.bat.
echo.
python_env\python.exe -c "import torch; [print(i, torch.cuda.get_device_name(i)) for i in range(torch.cuda.device_count())]"
echo.
pause