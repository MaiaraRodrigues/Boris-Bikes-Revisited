In this project, I will recreate the London's Boris Bikes and emulate all the docking stations, bikes, and infrastructure.

User stories 

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

|Objects 		   	  |       Messages     |
|----------------|--------------------|
|Person		        |		                  |
|Bike				        |     Working?       |
|Docking station	|   	Release_bike    |

Diagram 

```
Bike <-- working? --> true/false
DockingStation <-- release_bike --> a Bike
```
