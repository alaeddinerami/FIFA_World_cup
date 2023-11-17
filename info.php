<?php




include 'config.php';
$id = $_GET['id'];

            ?>





<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Document</title>
</head>
<body class="flex justify-center items-center h-screen bg-gray-900">
    <?php
    
        
       $sql = "select * from equipe where id = $id";
       $req = mysqli_query($conn,$sql);
       $row = mysqli_fetch_row($req);
       


     ?>

<div class="max-w-sm rounded overflow-hidden shadow-lg bg-slate-50">
  <img class="w-full" src="<?php echo $row[8] ?> " alt="Sunset in the mountains">
  <div class="px-6 py-4">
    <div class="font-bold text-xl mb-2"><?php echo $row[1] ?> </div>
    <p class="text-gray-700 text-base">
    
    <br>Nombre de joueurs : <?php echo $row[3] ?> 
    <br>Capitale : <?php echo $row[4] ?> 
    <br>Continent : <?php echo $row[5] ?> 
    <br>Populatio : <?php echo $row[6] ?> 
    <br>joueur : <?php echo $row[7] ?> 
    </p>
  </div>
  
</div>

</body>
</html>