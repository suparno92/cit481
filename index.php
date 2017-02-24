
<!DOCTYPE html>
<html>
 <?php include('functions.php'); ?>

   <head>
     <!--Import Google Icon Font-->
           <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
           <!--Import materialize.css-->
           <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>


           <!--Let browser know website is optimized for mobile-->
           <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
           <style type="text/css">

        .footer{

         }

         #month{padding: 10px;}


         html { height: 1300px; width: 100%;  background-color: #f9f9f9;}

         @media screen and (min-width: 600px) {
            body {
                 height: 1300px; width: 1200px; background-color: #f9f9f9;   margin: auto;
            }
          }

         @media screen and (min-width: 1500px) {
            body {
                 height: 1300px; width: 80%; background-color: #f9f9f9;   margin: auto;
              }
            }

   /* these ids are inside the body container which is 1000 x 1300    box-shadow: 0px 5px 4px 2px rgba(0,0,0,.2);*/
           #map-container{ height: 900px ; width: 100%; margin: auto; background-color: #f9f9f9;  margin-top: 1px;  padding: 0px; border: 1px solid #f9f9f9; padding-top: 0px;  }

              #map-canvas { float: left; height: 100% ; width:72%; z-index: 0;  border:none;}
              #nav{ width: 27%; height: 100%; margin-left:1%; padding-top: 0px;float: left; background-color: white; z-index: -1; overflow-y: scroll; overflow-x: hidden;}
           #bottom{ height: 400px ; width:100%; background-color: #eaeaea; margin-top: 10px;  z-index: 0;  }
           #navo {height: 60px;}

      /* top bar fixed */
           #map-top {  height: 120px; width: 100%; position: relative; top: 0px; left: 0px; background-color: white; z-index: 1;}
            #map-top2 {  height: 60px; width: 100%; position: relative; float: left; top: 0px; left: 0px; background-color: white; z-index: 1;  box-shadow: 0 8px 6px -6px #999;}
           #map-top-inside { height: 100%; width: 30%; background-image: url(""); background-repeat:no-repeat; float:left; z-index: 1;}
           #map-top-inside-middle { height: 100%; width: 40%; background-color: white; float:left; z-index: 1;}
           #map-top-inside-right { height: 100%; width: 20%;float:right; z-index: 1;}


         div#test{ border:#000 1px solid; padding:10px 40px 40px 40px; }




         .info{ height: 300px; width: 500px; padding: 0px; margin: 0px;}



        ::-webkit-scrollbar {
            width: 15px;  /* remove scrollbar space */
            background: transparent;  /* optional: just make scrollbar invisible */

        }
        /* optional: show position indicator in red */
        ::-webkit-scrollbar-thumb {
            background: white;
            border: 1px solid #f4f4f4;


        }


         .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }



      </style>

      <script src="https://cdnjs.cloudflare.com/ajax/libs/snap.svg/0.3.0/snap.svg-min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC_qy9QdBjjV1w8c4hQ5o52DmAWMact_xg&callback=initMap"
      async defer></script>


      <script type="text/javascript">


      $(document).ready(function(){
        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
          $('.modal').modal();

          var videoElement = document.getElementById('video_grabber');
          document.getElementById("clickMe").onclick = function () {
            videoElement.pause();
            videoElement.currentTime = 0;
          };


        });



      var locations = [
           ['oviatt', 34.240198,-118.529697, 1],
           ['univ_hall',34.239937, -118.532031, 2],
           ['sequoia', 34.240487, -118.528308, 3],
           ['jacaranda',34.241325, -118.528332, 4]
      ];

       var map;
       var marker_store=[];
       var infowindow;
       var response;

      function club_infowindow(z){

          var myLatLng;
          var i;

           for (i = 0; i < marker_store.length; i++) {
                var which_id = marker_store[i].get("id");


              if(z.getAttribute("id") ==  which_id){
          /*        alert("I am an alert box2!" + marker_store[i].get("id") + " | " + z.getAttribute("id") ); */
                  infowindow.close();
                  var formData =  {club_id: which_id};

                  $.ajax({
                       url: "getcontent.php",
                       type: "post",
                       data: formData,
                       success: function (getresponse) {
                         response = getresponse;
                          // you will get response from your php page (what you echo or print)
                         infowindow.setContent(response);

                       },
                       error: function(jqXHR, textStatus, errorThrown) {
                          console.log(textStatus, errorThrown);
                       }

                     });


                  infowindow.open(map, marker_store[i]);
                  /*infowindow animation*/
                    var iw_container = $(".gm-style-iw").parent();
                    iw_container.stop().hide();
                    iw_container.fadeIn(800);
                  map.setZoom(18);
                  map.setCenter(marker_store[i].getPosition());
                }
           }
         }
      function reply_image(){

        infowindow.setContent('<div class="info"><div id="infotop"></div><h1>IMAGE GOES HERE</h2><div></div></div>');

      }



      function reply_click(obj){

           var id = obj.id;
           var txt;
           var formData =  {name: id};
           var user_response = window.confirm("Confirm addition to Meeting");

           if (user_response == true) {

           /* returns a Window.alert box after adding to database*/
             $.ajax({
                  url: "addstudent.php",
                  type: "post",
                  data: formData,
                  success: function (response) {
                     // you will get response from your php page (what you echo or print)
                     window.alert(response);

                  },
                  error: function(jqXHR, textStatus, errorThrown) {
                     console.log(textStatus, errorThrown);
                  }

                });


            } else {
                txt = "You have cancelled addition to the meeting";
                  window.alert(txt);
            }


      }




      function createmarker(){
      var i;
      var marker;

        for (i = 0; i < locations.length; i++) {
          marker = new google.maps.Marker({
          animation: google.maps.Animation.DROP,
          position: new google.maps.LatLng(locations[i][1], locations[i][2]),
          map: map,

        });
        marker.set("id", locations[i][3]);
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
          return function() {
            map.setZoom(18);
            map.setCenter(marker.getPosition());

        /*    infowindow.setContent("locations[i][0]");
            infowindow.open(map, marker)
        */
          }
        })(marker, i ));



       marker_store.push(marker);
     }


     }




    	function doubleClicked(e)//array for locations
      {

        }

        function init()//initial map location
          {
            	var mapOptions = {
        		    zoom: 17,
        		    center: new google.maps.LatLng(34.240591, -118.528769),
        		    mapTypeId: google.maps.MapTypeId.ROADMAP,
        			disableDoubleClickZoom: true,
        			disableDefaultUI: true,
        			zoomControl: false,
        			draggable: false,
        			scrollwheel: false

        	    }
        	  	map = new google.maps.Map(document.getElementById("map-canvas"),
        	  							mapOptions);
              createmarker();
        	  	google.maps.event.addListener(map, 'dblclick', doubleClicked);
              infowindow = new google.maps.InfoWindow();

        	  }

        	  window.addEventListener("load", init, false);

        $(document).ready(function(){

                $('ul.tabs').tabs();

              });

      // modal gallery pop up
        $(document).ready(function(){
            // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
            $('.modal').modal();
          });



   </script>


  </head>

  <body>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>




    <div id="map-top" >
      <div id="map-top-inside">
      </div>
      <div id="map-top-inside-middle">

        </div>

      <div id="map-top-inside-right">


      </div>

    </div>


        <nav id="navo" >

            <a href="#!" class="brand-logo center">Logo</a>
            <ul class="left hide-on-med-and-down ">
              <li><a href="openclub.html" class="secondary-content"> &nbsp&nbsp&nbspOpen a Club</a><i class="material-icons dark-grey-text">supervisor_account</i></li>
              <li><a href="#!" class="secondary-content" >&nbsp&nbsp&nbspProfile</a><i class="material-icons dark-grey-text">perm_identity</i></li>
              <li class="active"><a href="mymap.php" class="secondary-content"> &nbsp&nbsp&nbspMap View</a><i class="material-icons dark-grey-text">my_location</i></li>
              <li><a href="index.html" class="secondary-content" >&nbsp&nbsp&nbspSearch</a><i class="material-icons dark-grey-text">search</i></li>
            </ul>
            <ul class="right hide-on-med-and-down ">
              <li><a href="#!" class="secondary-content dropdown-button" data-activates='dropdown1'> &nbsp&nbsp&nbspHi, Suparno</a> <i class="material-icons dark-grey-text">settings</i> </li>

              <ul id='dropdown1' class='dropdown-content'>

                <a href="#!" class="collection-item ">profile</a>
                <a href="#!" class="collection-item">settings</a>
                <a href="#!" class="collection-item">logout</a>

                </ul>



            </ul>

        </nav>




    <div id="map-container" >

           <div id="map-canvas"></div>

        <div id="nav">


            <ul class="collapsible" data-collapsible="accordion">
               <li>
                 <div class="collapsible-header"><i class="material-icons">list</i><strong>Business & Economics </strong></div>
                 <div class="collapsible-body">

                   <?php getcomputer(); ?>

                 </div>
                </li>
                <li>
                  <div  class="collapsible-header"> <span class="new badge">4</span><i class="material-icons">list</i><strong>Education</strong></div>
                  <div class="collapsible-body">

                  </div>
                </li>
                 <li>
                   <div class="collapsible-header"><span class="new badge">1</span><i class="material-icons">list</i><strong>Engineering & Computer Sci.</strong> </div>
                   <div class="collapsible-body">
                     <div class="card-panel grey lighten-5 z-depth-1">
                     <div class="row valign-wrapper">
                        <div class="col s10">
                          <img src="img/misa2.jpg" alt="" class="circle responsive-img"> <!-- notice the "circle" class -->
                        </div>
                        <div class="col s10">
                          <span class="black-text small">
                            <strong> MISA </strong><br><br> <small>Expose yourself to careers.  </small><br><br>
                            <a href="#modal2" class="secondary-content" ><i class="material-icons" >picture_in_picture</i></a>
                            <a href="#!" class="secondary-content" id="blue"><i class="material-icons" >room</i></a>
                            <a href="#modal1" class="secondary-content" id="red"><i class="material-icons" >video_library</i></a>
                            <a href="#!"> sign up?</a>

                          </span>
                        </div>
                      </div>
                    </div>
                   </div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Health & Human Development</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Humanities</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Science & Mathematics</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Arts, Media & Communication</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Social & Behaviorial Science</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Community Service</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Cultural</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Fraternity</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Sorority</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Political</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Recreational & Sports</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Religion</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>
                 <li>
                   <div class="collapsible-header"><i class="material-icons">list</i><strong>Special Interest</strong> </div>
                   <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                 </li>

            </ul>







      <script type="text/javascript">


          var temp = document.getElementsByClassName("club_x1");


          for(var i=0; i < temp.length; i++){

            temp[i].addEventListener("click", function(){ club_infowindow(this,temp[i]); },false);

          }





      </script>

     </div>
    </div>

    <div id="modal1" class="modal">
    <div class="modal-content">

      <video id="video_grabber" class="responsive-video" controls>
        <source src="video/sample_vid.mp4" type="video/mp4">
      </video>

    </div>
    <div class="modal-footer">
      <a href="#!" id="clickMe" class=" modal-action modal-close waves-effect waves-green btn-flat">close</a>
    </div>
    </div>

    <div id="bottom">

          <div class="container">

          </div>


    </div>



    <div >
      <footer class="page-footer">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Footer Content</h5>
                <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Links</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 1</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 2</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 3</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Link 4</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2014 Copyright Text
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
          </div>
        </footer>
    </div>

   </body>

   </html>
