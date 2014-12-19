echo "Creating MySQL Capsule...."
apc capsule create cap-mysql -i ubuntu --allow-egress
echo "Connect to capsule...."
apc capsule connect cap-mysql
