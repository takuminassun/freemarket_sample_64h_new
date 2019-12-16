// $(function(){
//   $fileField = $('#file')
 
//   // 選択された画像を取得し表示
//   $($fileField).on('change', $fileField, function(e) {
//     file = e.target.files[0]
//     reader = new FileReader(),
//     $preview = $("#img_field");
 
//     reader.onload = (function(file) {
//       return function(e) {
//         $preview.empty();
//         $preview.append($('<img>').attr({
//           src: e.target.result,
//           width: "100%",
//           class: "preview",
//           title: file.name
//         }));
//       };
//     })(file);
//     reader.readAsDataURL(file);
//   });
// });


$(function(){
  //画像ファイルプレビュー表示のイベント追加 fileを選択時に発火するイベントを登録
  $('form').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0],
        reader = new FileReader(),
        $preview = $(".preview");
        t = this;

    // 画像ファイル以外の場合は何もしない
    if(file.type.indexOf("image") < 0){
      return false;
    }

    // ファイル読み込みが完了した際のイベント登録
    reader.onload = (function(file) {
      return function(e) {
        //既存のプレビューを削除
        $preview.empty();
        // .prevewの領域の中にロードした画像を表示するimageタグを追加
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "150px",
                  class: "preview",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
});


// $(document).ready(function () {
//   $(".file").on('change', function(){
//      var fileprop = $(this).prop('files')[0],
//          find_img = $(this).parent().find('img'),
//          filereader = new FileReader(),
//          view_box = $(this).parent('.view_box');
     
//     if(find_img.length){
//        find_img.nextAll().remove();
//        find_img.remove();
//     }
     
//     var img = '<div class="img_view"><img alt="" class="img"><p><a href="#" class="img_del">画像を削除する</a></p></div>';
     
//     view_box.append(img);
 
//     filereader.onload = function() {
//       view_box.find('img').attr('src', filereader.result);
//       img_del(view_box);
//     }
//     filereader.readAsDataURL(fileprop);
//   });
   
//   function img_del(target){
//     target.find("a.img_del").on('click',function(){
//       var self = $(this),
//           parentBox = self.parent().parent().parent();
//       if(window.confirm('画像を削除します。\nよろしいですか？')){
//         setTimeout(function(){
//           parentBox.find('input[type=file]').val('');
//           parentBox.find('.img_view').remove();
//         } , 0);            
//       }
//       return false;
//     });
//   }  
     
});


// $(function(){
//   $('#icon').change(function(){
//     if ( !this.files.length ) {
//       return;
//     }
//     $('#preview').text('');
 
//     var $files = $(this).prop('files');
//     var len = $files.length;
//     for ( var i = 0; i < len; i++ ) {
//       var file = $files[i];
//       var fr = new FileReader();
 
//       fr.onload = function(e) {
//         var src = e.target.result;
//         var img = '<img src="'+ src +'" style="width:100px;">';

//         $('#preview').append(img);
//       }
 
//       fr.readAsDataURL(file);
//     }
 
//     $('#preview').css('display','block');
//   });
// });

