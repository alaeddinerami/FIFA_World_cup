<?php


include 'config.php'

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>World cup</title>
    <link rel="stylesheet" href="stl.css">
    <script src="https://cdn.tailwindcss.com"></script>
    
    <link rel="stylesheet" href="style.css">
    <script src="filter.js"></script>
</head>

<body class="bg-white">
    <section class=" h-[100vh]">

      <div>
        <form action="" method="post">
            <label for="">Séléctionez un groupe</label>
            <select name="gr" >
                <option value="a">all</option>
                <option value="1">A</option>
                <option value="2">B</option>
                <option value="3">C</option>
                <option value="4">D</option>
                <option value="5">E</option>
                <option value="6">F</option>
                <option value="7">G</option>
                <option value="8">H</option>
            </select>
            <input type="submit" name = 'submit' value="Filter">
        </form>
        

<div class="relative overflow-x-auto">
    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
                <th scope="col" class="px-6 py-3">
                Equipe
                </th>
                <th scope="col" class="px-6 py-3">
                Point
                </th>
                <th scope="col" class="px-6 py-3">
                Info
                </th>
               
        </thead>
        <tbody>
            <?php
                if(@$_POST['submit']){
                    $ff = 0;
                    $idall = $_POST['gr'];
                    if($_POST['gr'] == 'a'){
                        $sql = "select * from equipe";
                    }
                    else{
                        $sql = "select * from equipe where id_groupe = $idall";
                    }
                   
                   $req = mysqli_query($conn,$sql);
                   while($row = mysqli_fetch_row($req)){
                   


                        

            ?>



            <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="flex px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    <img src="<?php echo $row[8] ?>  " alt="" class="w-6">
                <?php echo $row[1] ?>
                </th>
                <td class="px-6 py-4">
                <?php echo $row[2] ?>
                </td>
                <td>
                <a href="info.php?id=<?php echo $row[0] ?> ">info</a>
                
                </td>
                
                
            </tr>
            <?php
                     $ff++;
                     if($ff == 4){
                         $ff = 0;
                ?>
                <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="flex px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    -----------------------------------------------------------------------------------------
                    <br>-----------------------------------------------------------------------------------------
                
                </th>
                <td class="px-6 py-4">
                    ----------------------------------------------------------------------------
                    <br>----------------------------------------------------------------------------
                </td>
                <td>
                --------------------------------------------------------------------------------------
                <br>--------------------------------------------------------------------------------------
                
                </td>
                
                
            </tr>
             


                <?php        
                     }
                 ?>



            <?php
                   }
                }

            ?>





            <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    
                </th>
                <td class="px-6 py-4">
                    
                </td>
                
            </tr>






            
        </tbody>
    </table>
</div>

      </div>
    </section>

    
</body>

</html>
