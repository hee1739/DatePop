<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<html lang="en">
 <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <script type="text/javascript" src="/DatePopPrj/resources/common/ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="/DatePopPrj/resources/admin/css/script.css">
 </head>
 <body>
    <section>
      <div class="content_title">
        <p>전체 상품 관리<span>상품 관리</span></p>
      </div>
      <div class="Pcreate">
        <!--form 시작-->
        <form
          name="product_create"
          target="_blank"
          enctype="multipart/form-data"
        >
          <p class="product_title" id="PC_c1_title"><label>가게 등록</label></p>
          <table>
            <tr>
              <th>카테고리 선택</th>
              <td colspan="3">
                <select class="cate1" id="Pl_sel_1">
                  <option value="대분류">대분류</option>
                </select>
                <select class="cate2" id="PL_sel_2">
                  <option value="중분류">중분류</option>
                </select>
              </td>
            </tr>
            <tr>
              <th>가게 명</th>
              <td colspan="3">
                <input
                  type="text"
                  name="store_name"
                  placeholder="가게명을 입력하세요"
                  id="name"
                />
              </td>
            </tr>
            <tr>
              <th>가게 상품명</th>
              <td colspan="3">
                <input
                  type="text"
                  name="store_goods"
                  placeholder="가게 상품명을 기재하세요"
                  id="des"
                />
              </td>
            </tr>
            <tr>
              <th>판매가</th>
              <td colspan="3">
                <input
                  type="text"
                  name="store_price"
                  placeholder="숫자만 입력 가능합니다"
                  id="netPrice"
                /><span>원</span>
              </td>
            </tr>
            <tr>
              <th>할인율</th>
              <td colspan="3">
                <input
                  type="text"
                  name="store_sale"
                  placeholder="0~100%"
                  id="salePrice"
                /><span>%</span>
              </td>
            </tr>
            <tr>
              <th>가게 연락처</th>
              <td colspan="3">
                <input
                  type="text"
                  name="store_call"
                  placeholder="010-0000-0000"
                  id="sizeWeight"
                />
              </td>
            </tr>
            <tr>
              <th>가게 위치</th>
              <td colspan="3">
                <input
                  type="text"
                  name="store_loc"
                  placeholder="OO시 OO구 OO동"
                  id="count"
                />
              </td>
            </tr>
            <tr>
              <th>가게 대표사진</th>
              <td>
                <div class="file_input_div_s">
                  <img
                    src="img/plus_icon.png"
                    class="file_input_button_s"
                    id="preview_1"
                  />
                  <input
                    type="file"
                    class="file_input_hidden_s"
                    id="imgfile_1"
                    name="store_thumbnail"
                  />
                </div>
              </td>
              <th>가게 상품사진</th>
              <td>
                <div class="file_input_div_s">
                  <img src="img/plus_icon.png" class="file_input_button_s" />
                  <input
                    type="file"
                    class="file_input_hidden_s"
                    id="imgfile_2"
                    name="store_img"
                  />
                </div>
              </td>
            </tr>
            <tr>
              <th>상세설명</th>
              <td colspan="3">
                <div class="MCT_c3_htmllist">
                  <div class="create_html"><span>HTML</span></div>
                  <textarea class="textarea" name="textarea"></textarea>
                </div>
                <script type="text/javascript">
                  CKEDITOR.replace("textarea", {
                    height: 300,
                    filebrowserUploadUrl: "${contextPath}/mine/imageUpload.do",
                  });
                </script>
                
                
              </td>
            </tr>
            <!--파일 등록시 미리보기 스크립트 시작-->
            <script type="text/javascript" src="/DatePopPrj/resources/admin/js/Admin_imeage.js"></script>
            <!--파일 등록시 미리보기 스크립트 끝-->
          </table>
          <!--PC_c1_btnBox 시작-->
          <div id="PC_c1_btnBox" class="bottom_btn">
            <span><input type="reset" name="reset" value="초기화" /></span>
            <span><input
                type="submit"
                name="submit"
                value="등록"
                onclick="sendit()"
            /></span>
          </div>
          <!--PC_c1_btnBox 끝-->
        </form>
        <!--form 끝-->
      </div>
      <!--Pcreate 끝-->
    </section>
    
    <script>
    	function sendit(){
    		var product_create = document.product_create;
    		var store_name = product_create.store_name.value;
    		var store_goods = product_create.store_goods.value;
    		var store_price = product_create.store_price.value;
    		var store_sale = product_create.store_sale.value;
    		var store_call = product_create.store_call.value;
    		var store_loc = product_create.store_loc.value;
    		var store_thumbnail = product_create.store_thumbnail.value;
    		var store_img = product_create.store_img.value;
    		var store_content = product_create.store_content.value;
    		
    		if(store_name ==""|| store_name==null){
    			alert('가게명을 입력해주세요.');
    		}else if(store_goods ==""|| store_goods==null){
    			alert('상품명을 입력해주세요.');
    		}else if(store_price == "" || store_price == null){
    			alert('상품가격을 입력해주세요');
    		}else if(store_sale == "" || store_sale == null){
    			alert('할인가격을 입력해주세요. 없으면 0원을 입력하세요.')
    		}else if(store_call == "" || store_call == null){
    			alert('가게 전화번호를 입력해주세요.');
    		}else if(store_loc == "" || store_loc == null){
    			alert('가게 위치를 입력해주세요.');
    		}else if(store_thumbnail == "" || store_thumbnail == null){
    			alert('가게 사진을 넣어주세요');
    		}else if(store_content == "" || store_content == null ){
    			alert('설명을 입력해주세요');
    		}else if(CKEDITOR.instances.mcntnt.getData().length < 1){
				alert("내용을 입력해 주세요.");
    			
    		}else{
    		product_create.method="POST";
    		product_create.action = "/admin/regProd.do";
    		product_create.submit();
    		}
    			/* $.ajax({
    				type: "post",
    				async: false,
    				url: "http://localhost:8080/DatePopPrj/admin/regProd.do",
    				dataType: "text",
    				data: {
    					store_name: store_name, store_goods: store_goods, store_price: store_price,
    					store_sale:store_sale,store_call:store_call,store_loc:store_loc,store_thumbnail:store_thumbnail,
    					store_img:store_img,store_content:store_content
    					},
    				success: {
    						alert("이미지를 삭제했습니다.");
    						location.href="http://localhost:8080/DatePopPrj/admin/Admin_productCreate.do";
    				},
    				error : {			
    					alert("에러가 발생했습니다.")	
    				},
    				complete :  {			
    					alert('완료')
    				}				 */	
    		
    	}
    	$(document).ready(function(){
    		let cateList = JSON.parse('${cateList}');
    		
    		let cate1Array = new Array();
    		let cate2Array = new Array();
    		
    		let cate1Obj = new Object();
    		let cate2Obj = new Object();
    		
    		let cateSelect1 = $(".cate1");		
    		let cateSelect2 = $(".cate2");
    		var a = 1;
    		for(let i = 0; i < cateList.length; i++){
    			
    			if(cateList[i].cate_idx == a){
    				let cate1Obj = new Object();
    				cate1Obj.cate_idx = cateList[i].cate_idx;
    				cate1Obj.cate_name = cateList[i].cate_name;
    				cate1Obj.cate_parent = cateList[i].cate_parent;
    				cate1Array.push(cate1Obj);				
    				
    			}
    			a = a+1;
    		}
    		
    		
    		function makeCateArray(obj,array,cateList){
    			for(let i = 0; i < cateList.length; i++){
    					obj = new Object();
    					obj.cate_idx = cateList[i].cate_idx;
    					obj.cate_name = cateList[i].cate_name;
    					obj.cate_parent = cateList[i].cate_parent;
    					
    					array.push(obj);				
    				}
    		}	
    		
    		makeCateArray(cate2Obj,cate2Array,cateList);
    		
    		for(let i = 0; i < cate1Array.length; i++){
    			cateSelect1.append("<option value='"+cate1Array[i].cate_idx+"'>" + cate1Array[i].cate_name + "</option>");
    		}
    		
    		$(cateSelect1).on("change",function(){
    			let selectVal1 = $(this).find("option:selected").val();	
    			
    			cateSelect2.children().remove();
    			
    			cateSelect2.append("<option value='none'>선택</option>");
    			
    			for(let i = 0; i < cate2Array.length; i++){
    				if(selectVal1 == cate2Array[i].cate_parent){
    					cateSelect2.append("<option value='"+cate2Array[i].cate_idx+"'>" + cate2Array[i].cate_name + "</option>");	
    				}
    			}
    		});
    	});
    			
    			
    </script>
  </body>
</html>
