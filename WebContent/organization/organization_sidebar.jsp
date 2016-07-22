<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<div class="col-lg-5">
	<table class="table">
		<tbody>

			<tr>
				<td colspan="3">

					<div class="panel panel-default">
						<div class="panel-heading">부서구조</div>
						<!-- .panel-heading -->
						<div class="panel-body">

							<c:set var="dep_id" value="" />
							<c:set var="grade_id" value="" />
							<c:if test="${olist.size()!=0}">
								<c:forEach varStatus="i" var="org" items="${olist}">
									<c:if test="${dep_id != org.dep_id}">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
						
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#collapse${org.dep_id}">${org.dep_name} </a>
													</h4>
												</div>
												<div id="collapse${org.dep_id}"
													class="panel-collapse collapse in">
													<div class="panel-body">
														<ul>
															<c:set var="dep_id" value="${org.dep_id}" />
									</c:if>
									<c:if test="${grade_id != org.grade_id}">
										<!-- 직급 -->
										<li>
											<ul>
												<c:set var="grade_id" value="${org.grade_id}" />
									</c:if>
									<a
										href="javascript:select('${org.emp_id}','${org.emp_name}','${org.grade_name}','${org.grade_id}');"><li>${org.grade_name}
											${org.emp_name}</li></a>
									<c:if test="${i.index < olist.size() - 1 }">
										<c:if test="${grade_id != olist.get(i.index + 1).grade_id}">
											</ul>
											</li>
										</c:if>

										<c:if test="${dep_id != olist.get(i.index + 1).dep_id}">
											</ul>
										            </div>
	        	</div>
	    	</div>
    	</div>
   		</c:if>
   	</c:if>
</c:forEach>
	</div>
	</c:if>

<!-- .panel-body -->
					</div>

				</td>
			</tr>
		</tbody>
	</table>
</div>