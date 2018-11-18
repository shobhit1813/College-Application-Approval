<html>
<head>
<title>Personal Detail</title>
<style>
              body{
                  background-image:url("regi.jpg");
                  background-size:1500px 880px;
            }
            .avatar{
                    width: 100px;
                    height: 100px;
                    border-radius: 75%;
                    position: absolute;
                    top: -40px;
                    left: calc(50% - 50px);
            }
         .loginbox{
                    width: 320px;
                    height: 500px;
                    background: #000;
                    color: #fff;
                    top: 50%;
                    left: 50%;
                    position: absolute;
                    transform: translate(-50%,-50%);
                    box-sizing: border-box;
                    padding: 70px 30px;
                    opacity: 0.76;
                    border-radius:30px;
                }
                .loginbox p{
                    margin: 0;
                    padding: 0;
                    font-weight: bold;
                }

                .loginbox input{
                    width: 100%;
                    margin-bottom: 20px;
                }
                .loginbox input[type="text"], input[type="password"] {
                    border: none;
                    border-bottom: 1px solid #fff;
                    background: transparent;
                    outline: none;
                    height: 40px;
                    color: #fff;
                    font-size: 16px;
                }
                .loginbox input[type="submit"]{
                    border: none;
                    outline: none;
                    height: 40px;
                    background: #fb2525;
                    color: #fff;
                    font-size: 18px;
                    border-radius: 20px;
                }
.loginbox input[type="submit"]:hover
{
    cursor: pointer;
    background: #ffc107;
    color: #000;
}
           
</style>
<script>
            function disableUserName(){
                document.getElementById("un").disabled = true;
            }
</script>
<body>
    <div class="loginbox">
        <img src = "avtar2.png" class = "avatar">
        <form action = "ApplyServlet" method = "post">
           <table>
               <p>UserName</p>
               <input type="text" name = "usnm" id = "un" value = <% out.print(request.getAttribute("Username")); %> onmouseover= "disableUserName()">
                <p>Father's Name</p>
                <input type="text" name="ftnm" placeholder="Enter Username" required>
                <p>Father's occupation</p> 
               <select name = "ftoccp">
                    <option value = "Business">Business</option>
                    <option value = "Govt">Govt job</option>
                    <option value = "Private">Private job</option>
                    <option value ="others">Others</option>
                </select>
                <p>10th cgpa</p>
                <input type ="text" name="cgpa" placeholder ="Enter Cgpa" required>
                <p>12th per</p>
                <input type ="text" name ="twno" placeholder="Enter Percentage" required>
                <br>
                <input type = "Submit" value = "Apply">
           </table>
        </form>
        
    </div>

</body>
</head>
</html>