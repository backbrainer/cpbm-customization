<!-- Copyright 2013 Citrix Systems, Inc. Licensed under the BSD 2 license. See LICENSE for more details. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<div id="bundle_with_selection_summary_div">
    <c:if test="${not viewChannelCatalog && not anonymousBrowsing && resourceType != '__SERVICE__'}">
  <div style="float:left;width:100%;">
  <span class="title" style="float:left;padding-top:8px;font-size:11px;font-weight:normal;">Showing Bundles :</span>
  <ul class="widgets_transparent_tab" style="width:auto;">
    <li class="js_bundle_subscriptions_tabs" id="view_bundles_tab"><spring:message code="message.New.subscriptions" /></li>
    <li class="js_bundle_subscriptions_tabs" id="view_subscriptions_tab" style="display:none;"><spring:message code="message.My.unprovisioned.subscriptions" /></li>
  </ul>
  </div>
    </c:if>
  <div id="no_screen_wrapper_div" class="no-listscreen_wrapper" style="display: None;">
    <div class="no-listbox">
      <div class="widgetcatalog_bundlesbox blank"></div>
      <div class="no-listbox textbox">
        <h2 id="msg_no_product_bundles" style="display: none;">
          <spring:message code="label.bundle.no.product.bundle" />
        </h2>
        <h2 id="msg_no_subscriptions" style="display: none;">
          <spring:message code="message.No.Subscriptions" />
        </h2>
      </div>
    </div>
  </div>

  <div id="bundle_container">
    <div class="widgetcatalog_cataloglist" id="bundle_template" style="display: none; width: 650px;">
      <div class="widgetcatalog_cataloglist sections bundles" style="border-right: none;">
        <div id="entitlmentsribbon" class="widgetcatalog_bundlesbox">
          <div class="widgetcatalog_bundlesbox iconbox">
            <span class="compute"></span>
          </div>

          <div id="offering" class="widgetcatalog_bundlesbox offerings"></div>
        </div>
        <h3 class="ellipsis" id="name"></h3>
        <ul id="entitlements">
        </ul>

        <div id="totalentitlmentsdiv" title='<spring:message code="label.details"/>'
          style="display: none; overflow: hidden;">
          <div class="dialog_formcontent_entitlement_selectedbox">
            <div id="totalentitlmentsribbon" class="widgetcatalog_bundlesbox" style="width:100px; margin-top: 0;">
              <div class="widgetcatalog_bundlesbox iconbox">
                <span class="compute"></span>
              </div>
            </div>
            <div style="width:80%; height:inherit; margin-left:120px;">
              <h2 id="bundle_name" style="width:80%; margin-left:10px;"></h2>
              <p id="bundle_description" style="width:80%; margin-top: 0px; margin-left:10px; text-align:justify;"></p>
            </div>
          </div>
          <div style="max-height:500px;overflow:auto;float:left;">
          <div class="entitlementlightbox_bundledetails entitlements_div">
            <div class="utility_table">
                <table  id="table_service_offering" class="table table-condensed table-hover table-bordered">
                  <thead class="table_header fixedHeader">  
                    <tr>  
                      <th style="width:200px;"><spring:message code="label.bundle.list.includes.title" /></th>
                      <th style="width:240px;"><spring:message code="label.bundle.list.resource.title" /></th>
                      <th style="width:216px;"><spring:message code="label.bundle.list.overages.title" /></th>  
                    </tr>  
                  </thead>  
                  <tbody id="totalentitlments" class="scrollContent">
                  
                  </tbody>
                </table>
            </div>
          </div>
          <div class="entitlementlightbox_bundledetails js_extra_usage_tab" >
              <a href="javascript:void(0);" style="float:left;" class="more_info more_down js_view_utility_link"><spring:message code="message.bundle.details.dialog.utility.rates" /></a>
          </div>
          <div class="entitlementlightbox_bundledetails js_extra_usage_div" style="display:none;max-height:160px;">
            <div id="utilityrate_table_bundle_details" class="full_width_box utility_table" style="height:100%"></div>
          </div>
          </div>
        </div>
        
        
        
      </div>

      <div class="widgetcatalog_cataloglist sections subscription">
        <div class="widgetcatalog_cataloglist sections subscription contentarea">
          <h4><spring:message code="label.subscribe.price.message"/>:</h4>
          <div class="widgetcatalog_cataloglist_rateswrapper">
            <div class="widgetcatalog_cataloglist_ratesbox">
              <span class="currency" id="currencySign"></span> <span class="rate" id="recurringCharges"></span> <span
                class="pertime" id="recurrenceType"></span>
            </div>
          </div>
          <span class="charges" id="activationCharges"></span>
          <c:if test="${not viewChannelCatalog && not anonymousBrowsing}">
          <div id="configure_button_group_choice_div">
          <div class="configure_subscribe_button" data-hover="dropdown" data-delay="1000" data-close-others="false">
            <a class="subscribebutton btn btn-info" id="subscribe" href="javascript:void(0)"> 
              <spring:message code="label.configure" /> &amp; <spring:message code="label.subscribe.confirm" />
            </a>
          </div>
            <ul id="group_choice_radios" class="dropdown-menu dropdown-menu-blue" style="width: 235px;position:relative;top:0px;left:-46px;"></ul>
            </div>
          </c:if>
        </div>
      </div>
    </div>
  </div>
  <div id="infinite_scrollbarbox_div" class="infinite_scrollbarbox" style="display: none; cursor: pointer;">
    <p id="show_more">
      <spring:message code="label.show.more" />
      &hellip;
    </p>
    <!--for loading-->
  <div class="infinite_loading" style="display: none;"></div>
  </div>
</div>

<!-- Group Row Template to show on click of Subscribe button Start-->
  <li id="group_row_template_payg" style="display:none;"><a href="javascript:void(0);" class="ellipsis" id="group_components_text"></a></li>
<!-- Group Row Template to show on click of Subscribe button End-->