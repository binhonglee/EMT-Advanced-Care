cd ../
echo "Deleting program files..."
rm -rf EMT-Advanced-Care
echo "Removing added dependency files..."
rm ~/anttasks.jar
rm -rf ~/.ant
echo "Uninstallation completed!"
read -n1 -r -p "Press any key to continue..." key
