<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
  <!ENTITY nbsp   "&#160;">
  <!ENTITY copy   "&#169;">
  <!ENTITY reg    "&#174;">
  <!ENTITY trade  "&#8482;">
  <!ENTITY mdash  "&#8212;">
  <!ENTITY ldquo  "&#8220;">
  <!ENTITY rdquo  "&#8221;">
  <!ENTITY pound  "&#163;">
  <!ENTITY yen    "&#165;">
  <!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:lxslt="http://xml.apache.org/xslt">
  <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Project Report</title>

        <style type="text/css">
          .apptitle
          {
          font-family: Arial;
          text-align:center;
          }

          .tab_info
          {
          border: 1px solid #8064A2;
          font-family: Arial;
          font-size: 10pt;
          font-weight: normal;
          width:90%;
          margin-top:10px;
          margin-left:5%;
          margin-right:5%;
          word-wrap: normal;
          align-content:center;
          cellspacing : 0px;
          border-collapse:collapse;
          }

          .tab_test
          {
          border: 1px solid #8064A2;
          font-family: Arial;
          font-size: 10pt;
          font-weight: normal;
          width:90%;
          margin-top:10px;
          margin-left:5%;
          margin-right:5%;
          word-wrap: normal;
          align-content:center;
          cellspacing : 0px;
          border-collapse:collapse;
          }

          .tab_testDetails
          {
          border: 1px solid #8064A2;
          font-family: Arial;
          font-size: 10pt;
          font-weight: normal;
          width:80%;
          margin-top:10px;
          margin-left:5%;
          margin-right:5%;
          word-wrap: normal;
          align-content:center;
          cellspacing : 0px;
          border-collapse:collapse;
          }

          .tab_PassCriteria
          {
          border: 1px solid #8064A2;
          font-family: Arial;
          font-size: 10pt;
          font-weight: normal;
          width:80%;
          margin-top:10px;
          margin-left:0%;
          margin-right:5%;
          word-wrap: normal;
          align-content:center;
          cellspacing : 0px;
          border-collapse:collapse;
          }

          .tab_logTitle
          {
          border: 0px solid #8064A2;
          font-family: Arial;
          font-size: 10pt;
          font-weight: normal;
          width:80%;
          margin-top:10px;
          margin-left:0%;
          margin-right:5%;
          word-wrap: normal;
          align-content:center;
          cellspacing : 0px;
          border-collapse:collapse;
          }

          .tab_title
          {
          font-family: Arial;
          font-size: 10pt;
          font-weight: normal;
          width:90%;
          margin-top:10px;
          margin-left:5%;
          margin-right:5%;
          word-wrap: normal;
          align:middle;
          cellspacing : 0;
          }

          .title
          {
          font-family: Arial;
          font-size: 12pt;
          font-weight: bold;
          align:middle;
          }

          .table_title
          {
          font-family: Arial;
          font-size: 10pt;
          font-weight: bold;
          align:middle;
          }

          .tab_log
          {
          border: 1px solid #8064A2;
          font-family: Arial;
          font-size: 10pt;
          font-weight: normal;
          width:90%;
          margin-top:10px;
          margin-left:5%;
          margin-right:5%;
          word-wrap: normal;
          align-content:center;
          cellspacing : 0px;
          border-collapse:collapse;
          }

          .cell_header
          {
          height:21px;
          padding-left:10px;
          font-family: Arial;
          font-size: 10pt;
          background-color:#DFD8E8;
          font-weight:bold;
          border : 1px solid black;
          }

          .cell_value
          {
          height:21px;
          padding-left:10px;
          font-family: Arial;
          font-size: 10pt;
          font-weight:normal;
          border-top:thin;
          border-bottom:thin;
          border : 1px solid black;
          }

        </style>

      </head>

      <body>

        <br />

        <h2 class="apptitle">
          Name : <xsl:value-of select="ProjectDataModel/ProjectInfo/Name"/>
        </h2>

        <table class="tab_info">
          <tr>
            <td width="20%" class="cell_header">Product</td>
            <td width="19%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/ProjectInfo/ProductTypeObj"/>
            </td>
            <td width="23%" class="cell_header">Type</td>
            <td width="38%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/ProjectInfo/CertType"/>
            </td>
          </tr>

          <tr>
            <td width="20%" class="cell_header">Organization</td>
            <td width="19%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/ProjectInfo/Organization"/>
            </td>
            <td width="23%" class="cell_header">Created Date</td>
            <td width="38%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/ProjectInfo/StartDate"/>
            </td>
          </tr>
        </table>
        <br/>
        <table class="tab_title">
          <tr>
            <td>
              <span class="title">EoD summary</span>
            </td>
          </tr>
        </table>
        <table class="tab_info">
          <tr>
            <td width="10%" class="cell_header">Project ID</td>
            <td width="10%" class="cell_header">Total Tests</td>
            <td width="10%" class="cell_header">Total Applicable Tests</td>
            <td width="10%" class="cell_header">Total Not Applicable Tests</td>
            <td width="10%" class="cell_header">Executed Till Date</td>
            <td width="10%" class="cell_header">Executed Today</td>
            <td width="10%" class="cell_header">Executed Successfully</td>
            <td width="10%" class="cell_header">Failed Tests</td>
            <td width="10%" class="cell_header">Pending Tests</td>
            <td width="10%" class="cell_header">Remarks</td>
          </tr>
          <tr>
            <td width="10%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/ProjectID"/>
            </td>
            <td width="10%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/TotalTestcases"/>
            </td>
            <td width="10%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/ApplicableTests"/>
            </td>
            <td width="10%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/NotApplicableTests"/>
            </td>
            <td width="10%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/ExecutedTillDate"/>
            </td>
            <td width="10%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/ExecutedToday"/>
            </td>
            <td width="10%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/ExecutedSuccessfully"/>
            </td>
            <td width="10%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/FailedTestcases"/>
            </td>
            <td width="10%" class="cell_value">
              <xsl:value-of select="ProjectDataModel/PendingTestcases"/>
            </td>
            <td width="10%" class="cell_value">  </td>
          </tr>

        </table>

        <table class="tab_title">
          <tr>
            <td>
              <span class="title">Test case summary</span>
            </td>
          </tr>
        </table>

        <table class="tab_test" width="90%">
          <tr>
            <td width="20%" class="cell_header">Name</td>
            <td width="30%" class="cell_header">Description</td>
            <td width="20%" class="cell_header">Transaction Date/Time</td>
            <td width="10%" class="cell_header">RRN</td>
            <td width="20%" class="cell_header">Pass Criteria Status</td>
            <td width="20%" class="cell_header">TestCase Log  Status</td>
            <td width="20%" class="cell_header">Reviewer's Status   </td>
            <td width="15%" class="cell_header">Reviewed Date</td>
            <td width="8%" class="cell_header">Iterations</td>
          </tr>
          <xsl:for-each select="ProjectDataModel/TestList/MasterTestCase">

            <tr>
              <td width="20%" class="cell_value">
                <xsl:value-of select="TestName"/>
                <xsl:value-of select="SubCase"/>
              </td>
              <td width="30%" class="cell_value">
                <xsl:value-of select="Objective"/>
              </td>
              <td width="20%" class="cell_value">
                <xsl:value-of select="AllTestLogs/TestCaseLog[1]/StartDate"/>
              </td>
              <td width="10%" class="cell_value">
                <xsl:value-of select="AllTestLogs/TestCaseLog[1]/RRN"/>
              </td>
              <td width="20%" class="cell_value">
                <xsl:if test="SystemResult/Name = 'FAIL'">
                  <xsl:attribute name="bgcolor">red</xsl:attribute>
                </xsl:if>
                <xsl:if test="SystemResult/Name = 'PASS'">
                  <xsl:attribute name="bgcolor">green</xsl:attribute>
                </xsl:if>
                <xsl:choose>
                  <xsl:when test="SystemResult/Name = ''">
                    Not Tested
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="SystemResult/Name"/>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
              <td width="20%" class="cell_value">
                <xsl:choose>
                  <xsl:when test="AllTestLogs/TestCaseLog[1]/Status = 'false'">
                    <xsl:attribute name="bgcolor">red</xsl:attribute>
                  </xsl:when>
                  <xsl:when test="AllTestLogs/TestCaseLog[1]/Status = 'true'">
                    <xsl:attribute name="bgcolor">green</xsl:attribute>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:attribute name="bgcolor">white</xsl:attribute>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="AllTestLogs = ''">
                    Not Tested
                  </xsl:when>
                  <xsl:when test="AllTestLogs/TestCaseLog[1]/Status = 'true'">
                    PASS
                    <xsl:attribute name="bgcolor">green</xsl:attribute>
                  </xsl:when>
                  <xsl:when test="AllTestLogs/TestCaseLog[1]/Status = 'false'">
                    FAIL
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="AllTestLogs/TestCaseLog[1]/Status"/>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
              <td width="20%" class="cell_value">
                <xsl:if test="reviewerValidator = 'FAIL'">
                  <xsl:attribute name="bgcolor">red</xsl:attribute>
                </xsl:if>
                <xsl:if test="reviewerValidator = 'PASS'">
                  <xsl:attribute name="bgcolor">green</xsl:attribute>
                </xsl:if>
                <xsl:if test="reviewerValidator = 'WAIVER'">
                  <xsl:attribute name="bgcolor">green</xsl:attribute>
                </xsl:if>
                <xsl:choose>
                  <xsl:when test="reviewerValidator = ''">
                    Not Reviewed
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="reviewerValidator"/>
                  </xsl:otherwise>
                </xsl:choose>
               </td>
              <td width="15%" class="cell_value">
                <xsl:value-of select="reviewedDate"/>
              </td>
              <td width="8%" class="cell_value">
                <xsl:for-each select="AllTestLogs/TestCaseLog">
                  <xsl:if test="position()=last()">
                    <xsl:value-of select="position()"/>
                  </xsl:if>
                </xsl:for-each>
              </td>
            </tr>

          </xsl:for-each>
        </table>


        <table class="tab_title">
          <tr>
            <td>
              <span class="title">Test case details</span>
            </td>
          </tr>
        </table>

        <xsl:for-each select="ProjectDataModel/TestList/MasterTestCase">
          <xsl:variable name="varCardLogAvailable" select="IsCardLogAvailable"/>
          <xsl:variable name="idString" select="TestCaseId"/>
          <table class="tab_testDetails">
            <tr>
              <td width="20%" class="cell_header">Name</td>
              <td width="40%" class="cell_value">
                <xsl:value-of select="TestName"/>
                <xsl:value-of select="SubCase"/>
              </td>
            </tr>
            <tr>
              <td width="20%" class="cell_header">Status</td>
              <td width="40%" class="cell_value">
                <xsl:choose>
                  <xsl:when test="SystemResult/Name = ''">
                    Not Tested
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="SystemResult/Name"/>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
            <tr>

              <td colspan="2" class="cell_value">
                <br />
                <img src="expand.png" id="pass_crt_img_{$idString}" onClick="javascript:hideItem('pass_crt_table_{$idString}', 'pass_crt_img_{$idString}')" style="cursor:pointer;vertical-align:middle;"/>
                &nbsp;
                <a href="javascript:hideItem('pass_crt_table_{$idString}', 'pass_crt_img_{$idString}')">
                  <span class="table_title">Pass Criteria Validations</span>
                </a>

                <br />

                <table class="tab_info" id="pass_crt_table_{$idString}" style="display:none">
                  <tr>
                    <td class="cell_header" width="50%">Data</td>
                    <td class="cell_header" width="20%">Expected Value</td>
                    <td class="cell_header" width="20%">Actual Value</td>
                    <td class="cell_header" width="10%">Status</td>
                  </tr>
                  <xsl:for-each select="CriteriaList/TestCaseCriteria">
                    <tr>
                      <xsl:if test="UnitTest/SystemResult/Name = 'NOK'">
                        <xsl:attribute name="bgcolor">red</xsl:attribute>
                      </xsl:if>

                      <td class="cell_value" width="50%">
                        <xsl:value-of select="Data"/>
                      </td>
                      <td class="cell_value" width="20%">
                        <xsl:value-of select="UnitTest/DisplayValue"/>
                      </td>
                      <td class="cell_value" width="20%">
                        <xsl:value-of select="UnitTest/ActualValue"/>
                      </td>
                      <td class="cell_value" width="10%">
                        <xsl:choose>
                          <xsl:when test="UnitTest/SystemResult/Name = ''">

                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:value-of select="UnitTest/SystemResult/Name"/>
                          </xsl:otherwise>
                        </xsl:choose>
                      </td>
                    </tr>
                  </xsl:for-each>
                </table>

                <br />

              </td>

            </tr>

            <tr>
              <td colspan="2" class="cell_value">
                <br />
                <xsl:for-each select="AllTestLogs/TestCaseLog">

                  <table class="tab_logTitle">
                    <tr>
                      <td>
                        <b>
                          Host Log Information (Iteration : <xsl:value-of select="position()" />)
                        </b>
                      </td>
                    </tr>
                  </table>
                  <table class="tab_info">
                    <tr>
                      <td width="20%" class="cell_header">Start Date</td>
                      <td width="19%" class="cell_value">
                        <xsl:value-of select="StartDate"/>
                      </td>
                      <td width="23%" class="cell_header">End Date</td>
                      <td width="38%" class="cell_value">
                        <xsl:value-of select="EndDate"/>
                      </td>
                    </tr>

                    <tr>
                      <td width="20%" class="cell_header">RRN</td>
                      <td width="19%" class="cell_value">
                        <xsl:value-of select="RRN"/>
                      </td>
                      <td width="23%" class="cell_header">Status</td>
                      <td width="38%" class="cell_value">
                        <xsl:choose>
                          <xsl:when test="Status = 'true'">
                            PASS
                          </xsl:when>
                          <xsl:when test="Status = 'false'">
                            FAIL
                          </xsl:when>
                        </xsl:choose>
                      </td>
                    </tr>
                  </table>
                  <xsl:variable name="logIdString" select="IdString"/>
                  <table class="tab_logTitle">
                    <tr>
                      <td>
                        <b>
                          <img src="expand.png" id="log_img_{$logIdString}"
                            onClick="javascript:hideItem('log_table_{$logIdString}', 'log_img_{$logIdString}')" style="cursor:pointer;vertical-align:middle;"/>
                          &nbsp;
                          <a href="javascript:hideItem('log_table_{$logIdString}', 'log_img_{$logIdString}')">
                            <span class="table_title">Log details</span>
                          </a>
                        </b>
                      </td>
                    </tr>
                  </table>

                  <table class="tab_log" id="log_table_{$logIdString}" style="display:none">
                    <tr>
                      <td width="20%" class="cell_header" >Stream</td>
                      <td width="19%" class="cell_header">Type</td>
                      <td width="23%" class="cell_header">Field</td>
                      <td width="38%" class="cell_header">Value</td>
                    </tr>

                    <xsl:for-each select="Logs/HostLog">
                      <tr>
                        <xsl:if test="Type = 'ERROR'">
                          <xsl:attribute name="bgcolor">red</xsl:attribute>
                        </xsl:if>
                        <td width="20%" class="cell_value">
                          <xsl:value-of select="Stream"/>
                        </td>
                        <td width="19%" class="cell_value">
                          <xsl:value-of select="Type"/>
                        </td>
                        <td width="23%" class="cell_value">
                          <xsl:value-of select="Field"/>
                        </td>
                        <td width="38%" class="cell_value">
                          <xsl:value-of select="Value"/>
                        </td>
                      </tr>
                    </xsl:for-each>

                  </table>

                  <hr width="90%"/>
                  <br />
                </xsl:for-each>
              </td>
            </tr>

            <tr>
              <xsl:if test="$varCardLogAvailable = 'true'">
                <td colspan="2" class="cell_value">
                  <table class="tab_logTitle">
                    <tr>
                      <td>
                        <img src="expand.png" id="card_log_img_{$idString}"
                        onClick="javascript:hideItem('card_log_table_{$idString}', 'card_log_img_{$idString}')" style="cursor:pointer;vertical-align:middle;"/>
                        &nbsp;
                        <a href="javascript:hideItem('card_log_table_{$idString}', 'card_log_img_{$idString}')">
                          <span class="table_title">
                            Card Log Information (<xsl:value-of select="CardLog/CardFileName"/>)
                          </span>
                        </a>
                      </td>
                    </tr>
                  </table>
                  <table id="card_log_table_{$idString}" style="display:none">
                    <tr>
                      <td>
                        <pre>
                          <xsl:value-of select="CardLog/CardData"/>
                        </pre>
                      </td>
                    </tr>
                  </table>
                </td>
              </xsl:if>
            </tr>
          </table>
          <br />
          <br />
        </xsl:for-each>
        <br />
        <br />

        <script type="text/javascript">

          function hideItem(id, imgId) {

          var table = document.getElementById(id);
          var image = document.getElementById(imgId);

          if (table.style.display == "none")
          {
          table.style.display = "table";
          image.src = "collapse.png";
          }
          else
          {
          table.style.display = "none";
          image.src = "expand.png";
          }

          }

        </script>

      </body>

    </html>
  </xsl:template>
</xsl:stylesheet>