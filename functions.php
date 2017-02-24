<?php

  function getcomputer() {

  include('mysql_connection.php');

  $listquery = $conn->prepare("SELECT club_id,name FROM club");
  $listquery->setFetchMode(PDO::FETCH_ASSOC);

    if($listquery->execute()){
       // Fetch one and one row
       while ($row = $listquery->fetch(PDO::FETCH_ASSOC))
         {
           echo '<div class="card-panel grey lighten-5 z-depth-1">
           <div class="row valign-wrapper"><div class="col s10">
             <img src="img/misa.jpg" alt="" class="circle responsive-img"> <!-- notice the "circle" class -->
           </div>
           <div class="col s10">
             <span class="black-text"><strong>'
              . strtoupper($row['name']) . '</strong><br><br> Add the "circle" class to it to make it appear circular. <br><br>
              <a href="#!" class="secondary-content"><i class="material-icons" >room</i></a>
              <a href="#!"  class="secondary-content" ><i class="club_x1 material-icons"   id="' .$row['club_id'].'">schedule</i></a>
             </span>
           </div>
           </div>
            </div>';

    /*   echo '<li class="collection-item avatar">
               <img src="img/misa.jpg" alt="" class="circle">
               <span class="title">' . $row['club_name'] . '</span>
               <p>First Line <br>
                  Second Line
               </p>
               <a href="#!" class="secondary-content"><i class="material-icons" id="' . $row['club_id'] . '">grade</i></a>
             </li>'; */


        }
      }


  }




 ?>
