**FPGA-Based Traffic Light Controller with Priority System**

**Objective**

To design and implement a traffic light controller using Verilog HDL that controls traffic signals and provides priority access to emergency vehicles.

**Components Used**

•	Verilog HDL 

•	FPGA Design Methodology 

•	Traffic Signal Logic 

•	Emergency Vehicle Priority Input 

**Procedure**

1.	Studied the working of a standard traffic signal system. 

2.	Identified three traffic light states: 
	
	o	Red 
	
	o	Yellow 
	
	o	Green 

3.	Designed the state transition logic using Verilog HDL. 

4.	Added an emergency input signal. 

5.	Programmed the controller to switch immediately to Green when an emergency vehicle is detected. 

6.	Developed a testbench to verify the functionality. 

7.	Verified the sequence of traffic lights and emergency override operation.
   
**Implementation**

The system was implemented using Verilog HDL. A finite state machine (FSM) controls the traffic light sequence. Under normal conditions, the controller cycles through Red, Green, and Yellow states. When the emergency signal becomes active, the controller overrides the normal sequence and provides a Green signal to allow emergency vehicles to pass safely.
Working Principle

**Normal Operation**

•	Red Light → Stop 

•	Green Light → Go 

•	Yellow Light → Prepare to Stop 

**Emergency Mode**

•	Emergency signal detected. 

•	Controller immediately switches to Green. 

•	Normal operation resumes after the emergency signal is removed. 

**Applications**

•	Smart Traffic Management Systems 

•	Emergency Vehicle Routing 

•	Smart Cities 

•	Highway Traffic Control 

•	Urban Transportation Networks 

**Advantages**

•	Reduces emergency response time. 

•	Improves traffic flow efficiency. 

•	Enhances road safety. 

•	Easy FPGA implementation. 

**Results**

The traffic light controller successfully executed the required signal sequence. Emergency vehicle priority functionality was implemented successfully, ensuring immediate Green signal activation during emergency conditions.

**Conclusion**

The FPGA-Based Traffic Light Controller with Priority System was successfully designed using Verilog HDL. The system demonstrated correct traffic signal sequencing and effective emergency vehicle priority control, making it suitable for intelligent transportation applications.

**Future Scope**

•	Integration with IoT sensors. 

•	Vehicle density-based traffic control. 

•	AI-based smart traffic management. 

•	Real-time monitoring using cloud platforms.

