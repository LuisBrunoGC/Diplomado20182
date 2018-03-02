#Observaciones

La app crasheaba, mostró el mensaje:

_Thread 1: signal SIGABRT_

y el codigo:

_libc++abi.dylib: terminating with uncaught exception of type NSException
(lldb)_

Se realizarón las siguientes acciones:

- El storyboard, tenía 2 botones encimados, se borró uno de ellos y se modifico su ancho para desplegar bien el texto.
- Se agregó en el ViewController:
un @IBOutlet en la línea: _weak var outtletText: UITextField!_
- se agregó el @IBAction en la línea: _func actionButton( sender: Any)_
- En el storyboard, se reconectó tanto el _IBOutlet_ como el _IBAction_