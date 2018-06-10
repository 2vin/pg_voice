
import os
import sys
scriptpath = "../binding/python"
# Add the directory containing your module to the Python path (wants absolute paths)
sys.path.append(os.path.abspath(scriptpath))
# Do the import
import porcupine


## Path to Porcupine's C library available under lib/${SYSTEM}/${MACHINE}/
library_path = '../lib/linux/x86_64/libpv_porcupine.so' 

## It is available at lib/common/porcupine_params.pv
model_file_path = '../lib/common/porcupine_params.pv' 

## Path to single or multiple .ppn files 
keyword_file_paths = ['../ppn/p and g_linux.ppn', '../ppn/tangent_linux.ppn', '../ppn/tint click_linux.ppn']

## Within [0, 1]. A higher sensitivity reduces miss rate at cost of increased false alarm rate
sensitivities = [0.5, 0.4, 0.5]

handle = porcupine.Porcupine(library_path, model_file_path, keyword_file_paths=keyword_file_paths, sensitivities=sensitivities)


def get_next_audio_frame():
	handle.sample_rate()
	handle.frame_length()
	pass
    
while True:
    pcm = get_next_audio_frame()
    keyword_index = handle.process(pcm)
    if keyword_index >= 0:

        # detection event logic/callback
        print("detected")

        pass



handle.delete()