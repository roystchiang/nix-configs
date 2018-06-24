import torch

device = torch.cuda.current_device()
torch.cuda.device(0)

print(f"Currently using {torch.cuda.device_count()} devices")
print(f"Device name: {torch.cuda.get_device_name(device)}")


