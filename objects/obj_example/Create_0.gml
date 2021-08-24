/* set the owner window for the dialogs;
the default is the foreground window. */
widget_set_owner(hwnd_main);

// set an icon for the dialogs from a *.png file.
widget_set_icon(working_directory + "/icon.png");

filter = "Sprite Images (*.png *.gif *.jpg *.jpeg)|*.png;*.gif;*.jpg;*.jpeg|Background Images (*.png)|*.png|All Files (*.*)|*.*";
dlg = 0;
ret = 0;

alarm[0] = 2;