# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


>
    $(function () {
           $.ajax({
              beforeSend: function(xhr) {     //요청을 전송하기전에 실행
               if(xhr.overrideMimeType)  {    //지원되면
                 xhr.overrideMimeType("application/json")
                 //오류 방지하기 위해 MIME 타입설정
               }
             }
           });    
       
       /*$('#content').on('click', '#event a', function(e) {  //행사클릭
      
          e.preventDefault();  //페이지 이동 취소 
          var loc = this.id.toUpperCase();  //id 특성 값을 가져온다.
     
          var newContent = ' ';    //시간표를 생성한다. 
          for (var i = 0; i < times[loc].length; i++) {
            newContent += '<li><span class="time">' 
                           +times[loc][i].time + '</span>';
            newContent += '<a href = "description.html#';
            newContent += times[loc][i].title.replace(/ /g, '-') = '">';
            newContent += times[loc][i].title + '</a></li>';
          }
    
         $('#sessions').html('<ul>' + newContent + '</ul>');
         //페이지에 시간표를 출력한다
    
         $('#event a.current').removeClass('current'); //현재메뉴수정
         $(this).addClass('current');
    
         $('#datails').text(' ');  //세번째 열을 비운다. 
       });*/
   
   
   
   
   
        
      $('#myTab a:last').tab('show').on('click', function(e) {
         e.preventDefault();
         $('#second').remove();
         
      }
      
      );
      
      $('#button').on('click', function(e) {
        e.preventDefault();
        
        
        $('#first').remove();
        $('#second').load('test.html').hide().fadeIn('slow');
      });
      
      /*$('#submit').on('click', function(e) { 
          $.ajax({
                    type: 'POST',
                    url: "/mypage/create",
                    data: $('#come').serialize(),
               }).done( function(data) {
                 $('#second').remove();
                 $('#second').load('result.html');
               }).fail( function() {
                 $('#view').html('데이터를 가져오지 못했습니다.');
          });
      });  */     
       
      
    });
  
    
    
    
  