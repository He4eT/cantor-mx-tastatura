# Usage example: make flash blackpill=f411-8mhz half=left

# Current half: 'left' or 'right'
half ?= left
# See ./keyboards/custom-cantor-[blackpill]
blackpill ?= f401

qmk_dir := vial-qmk
keyboard := custom-cantor-${blackpill}
keymap := vial
target := dfu-util-split-$(half)

build_cmd = sudo util/docker_build.sh ${keyboard}:${keymap}:${target}

keyboards_clean:
	cd ${qmk_dir} && git clean -fd

keyboards_copy: keyboards_clean
	cp -r keyboards/* ${qmk_dir}/keyboards/

qmk_flash:
	cd ${qmk_dir} && ${build_cmd}

flash:
	@make keyboards_copy
	@echo '---'
	@make qmk_flash
	@echo '---'
	@make keyboards_clean
