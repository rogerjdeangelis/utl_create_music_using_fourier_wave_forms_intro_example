WPS/Python: Create_music_using_fourier_wave_forms_intro_example

see
http://pythonforengineers.com/audio-and-digital-signal-processingdsp-in-python/

INPUT (Fourier series?)
=======================

   signal = np.sin(2 * np.pi * f * samples)

PROCESS
=======

   f = 440;     * frequency 440 cycles per second?;
   t = 10;      * ten second tone;
   fs = 44100;  * number of samples?;
   samples = np.linspace(0, t, int(fs*t), endpoint=False);
   signal = np.sin(2 * np.pi * f * samples);
   signal *= 32767;  * multipy each value (-1 to -1) from sine curve by 21767(volume?);
   signal = np.int16(signal); * convert  to signed integer 16bit (min=-32767 nax=32767);
   wavfile.write("d:/wav/utl_create_music_from_fourier_wave_forms.wav", fs, signal);

OUTPUT
======

  d:/wav/utl_create_music_from_fourier_wave_forms.wav

*                _               _       _
 _ __ ___   __ _| | _____     __| | __ _| |_ __ _
| '_ ` _ \ / _` | |/ / _ \   / _` |/ _` | __/ _` |
| | | | | | (_| |   <  __/  | (_| | (_| | || (_| |
|_| |_| |_|\__,_|_|\_\___|   \__,_|\__,_|\__\__,_|

;

 sine wave is created within the script

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;


%utl_submit_wps64('
options set=PYTHONHOME "C:\Program Files\Python 3.5\";
options set=PYTHONPATH "C:\Program Files\Python 3.5\lib\";
libname sd1 "d:/sd1";
proc python;
submit;
import numpy as np;
from scipy.io import wavfile;
fs = 44100;
f = 440;
t = 10;
samples = np.linspace(0, t, fs*t, endpoint=False);
signal = np.sin(2 * np.pi * f * samples);
signal *= 32767;
signal = np.int16(signal);
wavfile.write("d:/wav/utl_create_music_from_fourier_wave_forms.wav", fs, signal);
endsubmit;
run;quit;
');

