Pet Link API

It an API which works with Pet Link. 
It Has a one to many relationships between user and pets.
Each user can have many pets that they can create, index, update, and destroy. Each user also has the ability to sign-up, sign-in, change password, and sign-out.
The rows created on the pets table are saved to the database when created. To remove them from the database, the user must remove them, or they will remain.


API Repo:
https://github.com/natGalynker/Pets-rails-project-server

Client Repo:
https://github.com/natGalynker/vets-client-project


<!--  Future plans:
to add a level to the relationships to pets by creating a vets table. The vets table will have a one to many relationship with both the pets and the owners. There will then be a joint table for appointments, on that table the appointments will have many pets, owners and vets. It will enable the vets to get access to the pets information, and the vets to create pet records which the owners can access
-->
