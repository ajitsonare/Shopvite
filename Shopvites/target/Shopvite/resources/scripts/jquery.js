$(document).ready(function () {
    $('.footer').css('margin-top',$(document).height() - $('.container-fluid').height());
    $('#cartInfo').click(function () {
        $('#mySidenav').css('width','375px');
    });
 
    $('#mens').click(function(){
        $('#mensCata').css('visibility', 'visible');
        $('#womensCata').css('visibility','hidden');
        $('#electronicsCata').css('visibility','hidden');
    });
    $('#womens').click(function(){
        $('#mensCata').css('visibility','hidden');
        $('#womensCata').css('visibility','visible');
        $('#electronicsCata').css('visibility','hidden');
    });
    $('#electronics').click(function(){
        $('#mensCata').css('visibility','hidden');
        $('#womensCata').css('visibility','hidden');
        $('#electronicsCata').css('visibility','visible');
    });
    $('#shopNow').click(function(){
        $('.navbar').css('background-color','rgba(0, 178, 176, 1)');
        $('#section1') .css('display','none');
        $('#dropdownMenu1') .css('background-color','rgba(0, 178, 176, 1)');
    });
    $('.itemImages').hover(function(){
        $(this).css('width', '100%').css('height','370px');
        }, function(){
        $(this).css('width', '80%').css('height','250px');
    });
});
function closeNav() {
    document.getElementById('mySidenav').style.width ='0';
}
closeNav();


