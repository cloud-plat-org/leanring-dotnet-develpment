# Remove any old dotnet packages to prevent conflicts
sudo apt remove 'dotnet*' 'aspnet*' 'netstandard*'

# Add Microsoft’s package repository and signing key
wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -r -s)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# Update packages and install .NET SDK
sudo apt update
sudo apt install -y dotnet-sdk-8.0

dotnet new console -o TestApp
cd TestApp
dotnet run

dotnet --list-sdks
dotnet --list-runtimes

