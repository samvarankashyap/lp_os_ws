useradd -m -p '{{ admin_passwd }}' -G wheel admin
echo 'admin:adminpass' | chpasswd
mkdir -p /home/admin/.ssh
cat <<'EOF' >> /home/admin/.ssh/authorized_keys
ssh-rsa {{ admin_ssh_rsa }}
EOF
chown -R admin:admin /home/admin/.ssh
chmod -R 0700 /home/admin/.ssh
