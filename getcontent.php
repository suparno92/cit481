<?php


include('mysql_connection.php');


if(isset($_POST['club_id'])){

  $clicked_club = preg_replace("/[^0-9]/", "", $_POST['club_id']);

      echo '<div class="info"><div id="infotop"></div><div>';
      $dataquery = $conn->prepare("SELECT date,time,description,meeting_id FROM meeting_detail WHERE club_id = :value1");
      $dataquery->bindParam(':value1', $clicked_club, PDO::PARAM_INT);
      $dataquery->setFetchMode(PDO::FETCH_ASSOC);

      if ($dataquery->execute())
         {
           // Fetch one and one row
             echo  '
               <div class="card-panel grey lighten-5 z-depth-1">
              <div class="valign">
                 <div class="col s10">
                   <span class="black-text small">
                     <strong> MISA </strong><br><br> We are a student organization dedicated to empowering ambitious students as they transition from the classroom to industry professionals. We host weekly meetings and networking events with professionals that enhance student education in the form of professional development, internships, and career opportunities.  <br><br> <strong>UPCOMMING EVENTS--</strong>
                   </span>
                 </div>
               </div>
             </div>
             <ul class="collection">';

             while ($row = $dataquery->fetch(PDO::FETCH_ASSOC) )
               {

                 echo '
                      <li class="collection-item ">
                          <span class="title"><strong>MEET THE FIRMS </strong></span>
                          <p><strong>Meeting Date: '. date("d/m/Y", strtotime($row['date'])).' Time: '.$row['time'].'  Room No: JD 27366 <br><br>
                            We are a student organization dedicated to empowering ambitious students as they transition from the classroom to industry professionals. We host weekly meetings and networking events with professionals that enhance student education in the form of professional development, internships, and career opportunities.</strong>
                          </p>
                          <a class="btn" onclick="reply_click(this)" id="'.  $row['meeting_id'].'" >attend</a>
                        ';


              }
              echo  '</li>
                    </ul>';


      }
    }






?>
