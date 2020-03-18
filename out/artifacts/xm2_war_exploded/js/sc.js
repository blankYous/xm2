window.yValidate = {};
yValidate.checkEmpty = function(obj) {
    return (obj == null ||
        obj == undefined ||
        obj == "");

};

yValidate.checkNotEmpty = function(obj) {
    return !yValidate.checkEmpty(obj);

};
var uploadImgIndex = 0;
var imgArr = [];
var fileName = [];

function uploadSingleFile(imgFile) {
    var allFile = imgFile.files;
    var totalLen = allFile.length;
    if (yValidate.checkNotEmpty(imgArr) && imgArr.length > 0) {
        totalLen = totalLen + imgArr.length;
    }
    if (totalLen > 4) {
        alert("只能上传4张图片");
        return;
    }
    for (var i = 0; i < allFile.length; i++) {
        var file = allFile[i];
        if (yValidate.checkNotEmpty(imgArr) && imgArr.length > 0) {
            if (imgArr.length < 4) {
                imgArr.push(file);
                var simpleFileName = $("#upload").val()
                var strFileName = simpleFileName.substring(simpleFileName.lastIndexOf("\\")+1);
                fileName.push(strFileName);
            }
        } else {
            imgArr.push(file);
            var simpleFileName = $("#upload").val()
            var strFileName = simpleFileName.substring(simpleFileName.lastIndexOf("\\")+1);
            fileName.push(strFileName);
        }
        //添加一层过滤
        var rFilter = /^(image\/bmp|image\/gif|image\/jpeg|image\/png|image\/tiff)$/i;
        if (!rFilter.test(file.type)) {
            alert("文件格式必须为图片");
            return;
        }

        var reader = new FileReader();
        reader.readAsDataURL(file); //用文件加载器加载文件

        //文件加载完成
        reader.onload = function(e) {
            //计算最后一个窗口right边距，当时处于第3个的时候，right=0
            if((allFile.length + 1)%4 == 0){
                document.getElementById("uploadBtn").style.marginRight = "0px";
            }
            //以下就是将所有上传的图片回显到页面上，如果需要用canvas进行剪裁再回显以下代码就放入到canvas中
            var li = document.createElement('li');
            li.id = "upload_"+uploadImgIndex;
            document.getElementById("uploadBtn").style.display = "";
            uploadImgIndex++;
            li.className = "upload-li";
            li.innerHTML = '<div class="item image">'+
                '<img class="upload-image" src="'+e.target.result+'"/>'+
                '<span  class="delete-image iconfont icon-shanchu"></span>'+
                '</div>';
            document.getElementById("uploadUL").insertBefore(li, document.getElementById("uploadBtn"));
            var uploadArr = document.getElementById("uploadUL").querySelectorAll("li");
            var len = uploadArr.length ;
            if(len > 4){
                document.getElementById("uploadBtn").style.display = "none";
            }
        };
        reader.onloadend = function(e) {
            $(".delete-image").off('click');
            $(".delete-image").on('click',function(){
                var li = $(this).parent().parent()[0];
                var index = $(".upload-ul .upload-li").index(li);
                var liId = li.id;
                $("#"+liId).remove();
                imgArr.splice(index,1);
                document.getElementById("uploadBtn").style.display = "";
            });
        }

        var formData = new FormData();
        formData.append("upFile", file);
        formData.append("fileName", simpleFileName.substring(simpleFileName.lastIndexOf("\\")+1));
        //具体情况根据前后台协议而定
        //从后台请求数据，返回服务器端的一个临时文件名，最后点击上传时，传给后台这个临时文件名
//      $.ajax({
//          url: url,
//          data: formData,
//          type: 'POST',
//          cache: false,
//          processData: false,
//          contentType: false
//      }).done(function(res) {
//          //把临时文件名存起来
//          var uploadUL=$("#uploadUL").attr("value");
//          if(uploadUL==undefined){
//              $("#uploadUL").attr("value",res);
//          }else{
//              $("#uploadUL").attr("value",uploadUL+","+res);
//          }
//      }).fail(function(res) {});

    }
}