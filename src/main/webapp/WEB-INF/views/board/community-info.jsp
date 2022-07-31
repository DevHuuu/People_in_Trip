<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Community</title>
    
    <link rel="stylesheet" href="css/bootstrap.css">
    <style type="text/css">
	.table-hover thead tr:hover th, .table-hover tbody tr:hover td {
    	background-color: #9966ff;
    	color: white;
	}
	</style>
</head>

<body>
<header>
		<jsp:include page="/header_lhj/header.jsp" flush="false" />
	</header>
<div class="container">
	<div>
		<table class="table">
			<br><br>
			<tr>
				<th><h4><strong>정보게시판</strong></h4></th>
				<th><b class="text-muted">동행구해요</b></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th>
					<div class="btn-group">
  						<button type="button" class="btn btn-white dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    						전체
  						</button>
  						<ul class="dropdown-menu">
    						<li><a class="dropdown-item" href="#">자유</a></li>
    						<li><a class="dropdown-item" href="#">질문</a></li>
   						 	<li><a class="dropdown-item" href="#">정보</a></li>
  						</ul>
					</div>
				</th>
			</tr>
		</table>
	</div>
	<table class="table table-hover">
		<thead>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>추천</td>
				<td>조회수</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>42</td>
				<td>[정보] 경복궁 야간개장 시간~~[1]</td>
				<td>test</td>
				<td>2022.06.12</td>
				<td>5</td>
				<td>26</td>
			</tr>
			<tr>
				<td>41</td>
				<td>[정보] 서귀포 비와요ㅜ[2]</td>
				<td>test2</td>
				<td>2022.06.12</td>
				<td>15</td>
				<td>16</td>
			</tr>
			<tr>
				<td>40</td>
				<td>[자유] 데스노트 존잼[12]</td>
				<td>test3</td>
				<td>2022.06.12</td>
				<td>30</td>
				<td>48</td>
			</tr>
			<tr>
				<td>39</td>
				<td>[정보] 남산타워맛집</td>
				<td>test4</td>
				<td>2022.06.11</td>
				<td>13</td>
				<td>20</td>
			</tr>
			<tr>
				<td>38</td>
				<td>[자유] 아 오늘 날씨 좋네요![1]</td>
				<td>test5</td>
				<td>2022.06.11</td>
				<td>8</td>
				<td>9</td>
			</tr>
			<tr>
				<td>37</td>
				<td>[자유] 여기 진짜 맛있어요!!!</td>
				<td>test6</td>
				<td>2022.06.11</td>
				<td>5</td>
				<td>9</td>
			</tr>
			<tr>
				<td>36</td>
				<td>[정보] 지금 비 많이 와용</td>
				<td>test7</td>
				<td>2022.06.11</td>
				<td>3</td>
				<td>9</td>
			</tr>
			<tr>
				<td>35</td>
				<td>[질문] XX역 근처 맛집 있나요?[2]</td>
				<td>test8</td>
				<td>2022.06.10</td>
				<td>10</td>
				<td>28</td>
			</tr>
			<tr>
				<td>34</td>
				<td>[질문] ㅁㅁ축제 입장료 초등학생도 할인 되나요?</td>
				<td>test9</td>
				<td>2022.06.10</td>
				<td>1</td>
				<td>5</td>
			</tr>
			<tr>
				<td>33</td>
				<td>[자유] 오늘 A공원 앞 먹자골목에서 ㅁㅁ곱창집</td>
				<td>test0</td>
				<td>2022.06.10</td>
				<td>2</td>
				<td>3</td>
			</tr>
		</tbody>
		
	</table>
	<hr/>
	<div class="text-lg-end text-end">
		<button type="button" class="btn text-white" style="background-color: #9966ff;">글쓰기</button>
	</div>
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#">이전</a></li>
			<li class="page-item disabled">
				<a class="page-link" href="#" tabindex="-1">1</a>
			</li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">6</a></li>
			<li class="page-item"><a class="page-link" href="#">7</a></li>
			<li class="page-item"><a class="page-link" href="#">8</a></li>
			<li class="page-item"><a class="page-link" href="#">9</a></li>
			<li class="page-item"><a class="page-link" href="#">10</a></li>
			<li class="page-item"><a class="page-link" href="#">다음</a></li>
		</ul>
	</nav>
	
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>