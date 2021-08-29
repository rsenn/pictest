--- interfacing LUA with Pinguino
--- jean-pierre mandon 2010

require('libusb')

local buses=libusb.get_busses()    --- locate USB buses on the computer

function find_pinguino()
    for dirname, bus in pairs(buses) do
        local devices=libusb.get_devices(bus)
        for filename, device in pairs(devices) do
            local descriptor=libusb.device_descriptor(device)
            if ((descriptor.idVendor==0x04D8) and (descriptor.idProduct==0xFEAA)) then
                local handle=libusb.open(device)
                if     ((libusb.set_configuration(handle,3))     and
                    (libusb.claim_interface(handle,0))) then
                    return handle
                else return nil
                end   
            end
        end
    end
end

local pinguino
local keyboard

pinguino=find_pinguino()
if (pinguino~=nil) then                             --- try to find a Pinguino
    print('Pinguino initialised with success !!')
    else print('Pinguino initialisation failed !!')
    end
libusb.bulk_write(pinguino,0x01,'W7',2,20)
while (character~="x") do
    print("Pin state menu")
    print("0: reverse state of pin 0")
    print("1: reverse state of pin 1")
    print("2: reverse state of pin 2")
    print("3: reverse state of pin 3")
    print("4: reverse state of pin 4")
    print("5: reverse state of pin 5")
    print("6: reverse state of pin 6")
    print("7: reverse state of pin 7")
    print("x: exit")
    io.write("enter your choice: ")
    character=io.input(io.stdin):read()
    if ((character>="0") and (character<="7")) then
        libusb.bulk_write(pinguino,0x01,'W'..character,2,0.01)
        end
    end
libusb.close(pinguino)                                --- close Pinguino