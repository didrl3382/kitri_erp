<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/user_sidebar.jsp" %>
<%@ include file="/doc/doc_header_view.jsp" %>

         <!-- 기본형 휴가계/출장계 -->

      <tr class="change_height_on_print">
         <td id="eword_content" class="eword_content_layout">
            <table id="eword_special" class="eword_meta">
               <col class="eword_th_width">
               <col style="width:87.5%;">
                       
               <!-- 출장계 > 출장 보고서 -->
                  <tr class="eword_meta_height">
                     <th style="border-top: none; border-left: none;">기간</th>
                     <td class="pad15l" style="border-top: none;" >
						 ${document.start_date} ~ ${document.end_date}
                     </td>
                  </tr>
                  <tr class="eword_meta_height">
                     <th style="border-left: none;">출장지</th>
                     <td class="pad15l">
						${document.btrip_location}
                     </td>
                  </tr>
                  <tr>
                     <th style="border-left: none;">출장보고</th>
                     <td class="pad15l pad5tb">
                           <textarea readonly="readonly" name="doc_content" id="doc_content" style="width:98%;height:50px;">${document.doc_content }</textarea>
                     </td>
                  </tr>
                  <tr>
                     <th style="border-left: none;">출장여비</th>
                     <td>
                        <table id="expense_detail" class="eword_meta">
                           <col class="eword_th_width">
                           <col>
                           <col class="eword_th_width">
                           <col>
                           <tr class="eword_meta_height">
                              <th style="border-top: none; border-left: none;">일비</th>
                              <td class="pad15l" style="border-top: none;">
                                                                  ${document.exp_daily}원
                              </td>
                              <th style="border-top: none;">숙박비</th>
                              <td class="pad15l" style="border-top: none;">
                                                                  ${document.exp_room}원
                              </td>
                           </tr>
                           <tr class="eword_meta_height">
                              <th style="border-left: none;">식비</th>
                              <td class="pad15l">
                                                                  ${document.exp_food}원
                              </td>
                              <th>교통비</th>
                              <td class="pad15l">
                                                                  ${document.exp_trans}원
                              </td>
                           </tr>
                           <tr class="eword_meta_height">
                              <th style="border-left: none;">기타비</th>
                              <td class="pad15l">
                                                                  ${document.exp_etc}원
                              </td>
                              <th>합계</th>
                              <td class="pad15l">
                                                                  ${document.exp_total}원
                              </td>
                           </tr>
                        </table>
                     </td>
                  </tr>
                  <tr style="height:100px;">
                     <td colspan="2" class="txt_ce"  style="border-left: none;">상기와 같이 출장 보고서를 제출하오니 재가바랍니다.</td>
                  </tr>
             </table>
         </td>
      </tr>
      </form>
   </table>


<%@ include file="/doc/doc_footer_view.jsp" %>
