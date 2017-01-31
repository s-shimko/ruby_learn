require_relative 'electro_device'
require_relative 'kettle'

device = ElectroDevice.new

device.choose_device("Kettle")
device.connect_volt("220")
device.on_device

kettle = Kettle.new

kettle.pour_water("1")
kettle.push_button
kettle.indicator_on
kettle.start_boiling
kettle.check_temperature
kettle.indicator_off
kettle.water_ready

