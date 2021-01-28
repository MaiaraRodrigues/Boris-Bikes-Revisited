In this project, I recreate the London's Boris Bikes and emulate all the docking stations, bikes, and infrastructure.

User stories 

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```

```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
```

```
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
```

```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
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
