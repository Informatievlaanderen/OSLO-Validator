<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="nl">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script>
/* 		function maxOne {
			
		} */
	</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Start page content -->

        <div class="main-content" id="main" itemprop="mainContentOfPage" role="main" tabindex="-1">
        	<section class="region">
				<div class="layout layout--wide" id="form">
							
					<div class="grid" data-tabs data-tabs-responsive-label="Navigatie">
				          <div class="col--1-1">
				            <div class="tabs__wrapper">
				              <ul class="tabs" data-tabs-list>
				                <li class="tab tab--active">
				                  <a class="tab__link" id="tab-2-nummer-1" href="#" data-tab>Valideer via opladen van bestand</a>
				                </li>
				                <li class="tab">
				                  <a class="tab__link" id="tab-2-nummer-2" href="#" data-tab>Valideer via URL</a>
				                </li>
				              </ul>
				            </div>
				          </div>
				          
				          <section class="col--1-1 tab__pane" data-tab-pane>
				  
				            <h1 class="h1">Valideer via opladen van bestand</h1>
				            <div class="typography">
				              	<!--Put Content for first tab here-->
				        		 <form method="POST" action="validate" enctype="multipart/form-data">
				        	    	<h2 class="h2">OSLO� applicatie profiel</h2>
				        	    	Selecteer hieronder het OSLO� applicatie profiel waartegen u uw data wil valideren.
				        	    	</br>
				        	    	<select class="select" name="shapes">
				        	    		<c:forEach items="${options}" var="option">
					                		<option>${option}</option>
					                	</c:forEach>
				        	    	</select>
				        	    	<h2 class="h2">Data</h2>
							       	Selecteer hieronder het bestand dat u wil valideren.</br>
							        
							        <!-- component -->
							        <div class="upload js-upload"
							          data-upload-t-close="Sluiten"
							        >
							          <div class="upload__element" onclick="maxOne">
							            <input class="upload__element__input" type="file" id="data" name="data"
							            data-upload-error-message-filesize="Het bestand mag max :maxFsz zijn."
							            data-upload-max-size="20000000" accept=".ttl, .rdf, .xml, .json, .jsonld" />
							            <label class="upload__element__label" for="data">
							              <i class="vi vi-paperclip"></i><span>Bijlage toevoegen</span>
							            </label>
							          </div>
							        </div>
							        <!-- end component -->
							        
							        <h2 class="h2">Valideer</h2>
							       	<input type="submit" class="button" value="Klik hier om te valideren" name="upload" id="upload" />
							    </form>
				            </div>
				          </section>
				
				          <section class="col--1-1 tab__pane" data-tab-pane>
				            <h1 class="h1">Valideer via URL</h1>
				            <div class="typography">
				              	<!--Put Content for second tab here-->
				        		<form method="POST" action="validate" enctype="multipart/form-data">
				        	    	<h2 class="h2">OSLO� applicatie profiel</h2>
				        	    	Selecteer hieronder het OSLO� applicatie profiel waartegen u uw data wil valideren.
				        	    	</br>
				        	    	<select class="select" name="shapes">
				        	    		<c:forEach items="${options}" var="option">
					                		<option>${option}</option>
					                	</c:forEach>
				        	    	</select>
				        	    	<h2 class="h2">Data</h2>
				        	    	Geef hieronder de URL op waarop de data gepubliceerd is die u wilt valideren.</br>
							       							       	
							       	<!-- input-field component -->          
						          	<label for="input-field" class="form__label">URI </label>
						          	<input class="input-field" id="input-field" type="text" placeholder="" name="dataURI" />
							       	
							       	<h2 class="h2">Valideer</h2>
							       	<input type="submit" class="button" value="Klik hier om te valideren" name="upload" id="upload" />
							    </form>
				            </div>
				          </section>
				
				        </div>
					
					</br>
					</br>
            		<p>Last updated: 2017-12-06</p>
            		
            		
        		</div>
        	</section>
        </div>

    </div>
    
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>