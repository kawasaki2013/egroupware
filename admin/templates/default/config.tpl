<!-- BEGIN header -->
<form method="POST" action="{action_url}">
<table border="0" align="center" width="85%">
   <tr class="th">
    <td colspan="2"><font color="{th_text}">&nbsp;<b>{title}</b></font></td>
   </tr>
<!-- END header -->
<!-- BEGIN body -->
   <tr class="row_on">
    <td colspan="2">&nbsp;</td>
   </tr>

   <tr class="th">
    <td colspan="2"><font color="{th_text}"><b>{lang_Authentication_/_Accounts}</b></font></td>
   </tr>

   <tr class="row_off">
    <td>{lang_Select_which_type_of_authentication_you_are_using}:</td>
    <td>
     <select name="newsettings[auth_type]">
      <option value="sql"{selected_auth_type_sql}>SQL</option>
      <option value="sqlssl"{selected_auth_type_sqlssl}>SQL / SSL</option>
      <option value="ldap"{selected_auth_type_ldap}>LDAP</option>
      <option value="mail"{selected_auth_type_mail}>Mail</option>
      <option value="http"{selected_auth_type_http}>HTTP</option>
      <option value="nis"{selected_auth_type_nis}>NIS</option>
      <option value="pam"{selected_auth_type_pam}>PAM (Not Ready)</option>
     </select>
    </td>
   </tr>

   <tr class="row_on">
    <td>{lang_Select_where_you_want_to_store/retrieve_user_accounts}:</td>
    <td>
     <select name="newsettings[account_repository]">
      <option value="sql"{selected_account_repository_sql}>SQL</option>
      <option value="ldap"{selected_account_repository_ldap}>LDAP</option>
      <option value="contacts"{selected_account_repository_contacts}>Contacts - EXPERIMENTAL</option>
     </select>
    </td>
   </tr>

   <tr class="row_off">
    <td>
	{lang_Select_where_you_want_to_store/retrieve_filesystem_information}:
	<br>
	({lang_file_type,_size,_version,_etc.})
    </td>
    <td>
     <select name="newsettings[file_repository]">
      <option value="sql"{selected_file_repository_sql}>SQL</option>
     </select>
    </td>
   </tr>

   <tr class="row_off">
    <td>
	{lang_Select_where_you_want_to_store/retrieve_file_contents}:
	<br>
	({lang_Recommended:_Filesystem})
    </td>
    <td>
     <select name="newsettings[file_store_contents]">
      <option value="filesystem"{selected_file_store_contents_filesystem}>Filesystem</option>
      <option value="sql"{selected_file_store_contents_sql}>SQL</option>
     </select>
    </td>
   </tr>

   <tr class="row_on">
    <td>{lang_Minimum_account_id_(e.g._500_or_100,_etc.)}:</td>
    <td><input name="newsettings[account_min_id]" value="{value_account_min_id}"></td>
   </tr>
   <tr class="row_off">
    <td>{lang_Maximum_account_id_(e.g._65535_or_1000000)}:</td>
    <td><input name="newsettings[account_max_id]" value="{value_account_max_id}"></td>
   </tr>

   <tr class="row_on">
     <td>{lang_If_using_LDAP,_do_you_want_to_manage_homedirectory_and_loginshell_attributes?}:</td>
     <td>
      <select name="newsettings[ldap_extra_attributes]">
       <option value="">{lang_No}</option>
       <option value="True"{selected_ldap_extra_attributes_True}>{lang_Yes}</option>
      </select>
     </td>
    </tr>

   <tr class="row_off">
    <td>&nbsp;&nbsp;&nbsp;{lang_LDAP_Default_homedirectory_prefix_(e.g._/home_for_/home/username)}:</td>
    <td><input name="newsettings[ldap_account_home]" value="{value_ldap_account_home}"></td>
   </tr>

   <tr class="row_on">
    <td>&nbsp;&nbsp;&nbsp;{lang_LDAP_Default_shell_(e.g._/bin/bash)}:</td>
    <td><input name="newsettings[ldap_account_shell]" value="{value_ldap_account_shell}"></td>
   </tr>

   <tr class="row_off">
    <td>{lang_Auto_create_account_records_for_authenticated_users}:</td>
    <td>
      <select name="newsettings[auto_create_acct]">
       <option value="">{lang_No}</option>
       <option value="True"{selected_auto_create_acct_True}>{lang_Yes}</option>
      </select>
    </td>
   </tr>

   <tr class="row_on">
    <td>{lang_Auto-created_user_accounts_expire}:</td>
    <td>
     <select name="newsettings[auto_create_expire]">
      <option value="604800"{selected_auto_create_expire_604800}>{lang_one_week}</option>
      <option value="1209600"{selected_auto_create_expire_1209600}>{lang_two_weeks}</option>
      <option value="2592000"{selected_auto_create_expire_2592000}>{lang_one_month}</option>
      <option value="never"{selected_auto_create_expire_never}>{lang_Never}</option>
     </select>
    </td>
   </tr>

   <tr class="row_off">
    <td>{lang_Add_auto-created_users_to_this_group_('Default'_will_be_attempted_if_this_is_empty.)}:</td>
    <td><input name="newsettings[default_group_lid]" value="{value_default_group_lid}"></td>
   </tr>

   <tr class="row_on">
    <td>{lang_If_no_ACL_records_for_user_or_any_group_the_user_is_a_member_of}:</td>
    <td>
     <select name="newsettings[acl_default]">
      <option value="deny"{selected_acl_default_deny}>{lang_Deny_Access}</option>
      <option value="grant"{selected_acl_default_grant}>{lang_Grant_Access}</option>
     </select>
    </td>
   </tr>

   <tr class="row_off">
    <td>{lang_LDAP_host}:</td>
    <td><input name="newsettings[ldap_host]" value="{value_ldap_host}"></td>
   </tr>

   <tr class="row_on">
    <td>{lang_LDAP_accounts_context}:</td>
    <td><input name="newsettings[ldap_context]" value="{value_ldap_context}" size="40"></td>
   </tr>

   <tr class="row_off">
    <td>{lang_LDAP_groups_context}:</td>
    <td><input name="newsettings[ldap_group_context]" value="{value_ldap_group_context}" size="40"></td>
   </tr>

   <tr class="row_on">
    <td>{lang_LDAP_rootdn}:</td>
    <td><input name="newsettings[ldap_root_dn]" value="{value_ldap_root_dn}" size="40"></td>
   </tr>

   <tr class="row_off">
    <td>{lang_LDAP_root_password}:</td>
    <td><input name="newsettings[ldap_root_pw]" type="password" value="{value_ldap_root_pw}"></td>
   </tr>

   <tr class="row_on">
    <td>{lang_LDAP_encryption_type}:</td>
    <td>
     <select name="newsettings[ldap_encryption_type]">
{hook_passwdhashes}
     </select>
    </td>
   </tr>

   <tr class="th">
    <td colspan="2"><font color="{th_text}"><b>{lang_Mcrypt_Settings_(requires_mcrypt_PHP_extension)}</b></font></td>
   </tr>

   <tr class="row_off">
    <td>{lang_Enter_some_random_text_for_app_session_encryption}:</td>
    <td><input name="newsettings[encryptkey]" value="{value_encryptkey}" size="40"></td>
   </tr>

   <tr class="row_on">
    <td>{lang_Mcrypt_algorithm_(default_TRIPLEDES)}:</td>
    <td>
     <select name="newsettings[mcrypt_algo]">
{hook_encryptalgo}
     </select>
    </td>
   </tr>

   <tr class="row_off">
    <td>{lang_Mcrypt_mode_(default_CBC)}:</td>
    <td>
     <select name="newsettings[mcrypt_mode]">
{hook_encryptmode}
     </select>
    </td>
   </tr>
<!-- END body -->

<!-- BEGIN footer -->
  <tr class="th">
    <td colspan="2">
&nbsp;
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="submit" name="submit" value="{lang_submit}">
      <input type="submit" name="cancel" value="{lang_cancel}">
    </td>
  </tr>
</table>
</form>
<!-- END footer -->
