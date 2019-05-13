# "Listen closely" button

- Probably want to copy direct speaking / radio press button - while it is held, some global variable is changed

- Look at changing it in sys_core/fnc_processDirectSpeaker - probably not a good idea, should change it in plugin

- `magnetar` says to make sure we don't change anything that affects sys_core/fnc_monitorAIPFH as that handles the AI

- ACRE2Core/AmplitureAttenuation.cpp is where the curve that needs to be changed lives. see fnc_setSelectableVoiceCurve to see how global variables work and are shared
