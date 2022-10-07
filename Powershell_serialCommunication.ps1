#Returns a list of all the currently available serial ports.
[System.IO.Ports.SerialPort]::getportnames() 
#Creates a new COM port object for COM5 with a baud rate of 9600.
$port = new-Object System.IO.Ports.SerialPort COM5,9600,None,8,one 
#Open the connection.
$port.open()
$port.WriteLine("some string") #Sends string.
$port.ReadLine()               #Receives string.
#Close the connection when done.
$port.Close()
