## Introduction

This assignment uses data from the <a href="http://archive.ics.uci.edu/ml/">
UC Irvine Machine Learning Repository</a>, a popular repository for machine learning
datasets. In particular, it uses the "Individual household electric power consumption 
Data Set" taken from the link included below:

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a>

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.

The following descriptions of the 9 variables in the dataset are taken
from the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading and tidying the data

About the data processing:

* Data has not been uploaded to GitHub repository but can be downloaded from the link
provided in this file and it is also included in the scripts. The scripts download 
the data but later delete the files to avoid taking up disk space.

* Only data from the dates 2007-02-01 and 2007-02-02 is used for the plots. 
Rest of data set has been discarded.

* Date and Time variables have been merged into one single variable -> Time.

## Scripts and Plots

The script files include code for downloading and reading the data so that the 
plots can be fully reproduced. The data is downloaded first but the files are 
removed by the code itself to avoid filling up the hard disk.

There is a separate R code file (`plot1.R`, `plot2.R`, etc.) that
constructs the corresponding plot, i.e. code in `plot1.R` constructs
the `plot1.png` plot and so on.

There is a total of four scripts and their corresponding four PNG plots, the last 
of them a combination of four plots itself. They have been generated using the 
base plotting system and saved as PNG file with a width of 480 pixels and a height 
of 480 pixels.

