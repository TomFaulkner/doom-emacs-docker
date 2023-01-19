xhost +
sudo podman run -it --rm --network host -e DISPLAY=:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/tom/dev/emacs:/root/project emacs:latest emacs
