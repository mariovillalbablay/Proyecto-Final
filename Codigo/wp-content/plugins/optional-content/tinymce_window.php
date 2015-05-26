<?php
require_once(dirname(dirname(dirname(dirname(__FILE__)))) . '/wp-config.php');
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>[if] Optional Content</title>

	<script language="javascript" type="text/javascript" src="<?php echo get_option('siteurl'); ?>/wp-includes/js/tinymce/tiny_mce_popup.js"></script>
	<script language="javascript" type="text/javascript" src="<?php echo get_option('siteurl'); ?>/wp-includes/js/jquery/jquery.js"></script>

<script>
function set_and_go(tag){
	window.tinyMCE.execInstanceCommand('content', 'mceInsertContent', false, "[optional_content " + tag + "]<br />Place your content here<br />[/optional_content]");
	tinyMCEPopup.close();
}


function insert_tag(){
	var flags = '';
	type = jQuery("#htype").val();
	if(type == 'time' || type == 'date'){
		flags = "when='" + jQuery("#when").val() + "' dt='" + jQuery("#date1").val() + "'";
		if(jQuery("#when").val() == 'between'){
			flags = flags + " dt2='" + jQuery("#date2").val() + "'";
		}
	}
	else if (type == 'GET' || type == 'POST' || type == 'REQUEST'){
		flags = "value='" + jQuery("#variable").val() + "=" + jQuery("#value").val() + "'";
	}
	else if (type == 'user-id'){
		if( jQuery("#userid").val()  instanceof Array ) {
			flags = "value='" + jQuery("#userid").val().join(",") + "'";
		}else{
			flags = "value='" + jQuery("#userid").val() + "'";
		}
	}
	else if (type == 'manual'){
		flags = "value='" + jQuery("#onoff").val() +"'";
	}

	tag = "type='" + type + "' " + flags;
	set_and_go(tag);
}

function swap_optional_content_fields(){
	type = jQuery("#oc_type").val();
	if(type == 'logged-in' || type == 'not-logged-in'){
		set_and_go("type='" + type + "'");
	}
	else if(type == 'user-id'){
		jQuery("#htype").val("user-id");
		jQuery(".oc_field").hide();
		jQuery("#users_grp").show();
	}
	else if(type == 'time-before'){
		jQuery("#htype").val("time");
		jQuery("#when").val("before");
		jQuery(".oc_field").hide();
		jQuery("#date1_grp").show();
		jQuery("#date1_lbl").html("Time (HH:MM:SS)");
		//jQuery("#date1").val("asdf");
	}
	else if (type == 'date-before'){
		jQuery("#htype").val("date");
		jQuery("#when").val("before");
		jQuery(".oc_field").hide();
		jQuery("#date1_grp").show();
		jQuery("#date1_lbl").html("Date (YYYY-mm-dd)");
		//jQuery("#date1").val("asdf");
	}
	else if (type == 'date-after'){
		jQuery("#htype").val("date");
		jQuery("#when").val("after");
		jQuery(".oc_field").hide();
		jQuery("#date1_grp").show();
		jQuery("#date1_lbl").html("Date (YYYY-mm-dd)");
	}
	else if (type == 'time-after'){
		jQuery("#htype").val("time");
		jQuery("#when").val("after");
		jQuery(".oc_field").hide();
		jQuery("#date1_grp").show();
		jQuery("#date1_lbl").html("Time (HH:MM:SS)");
	}
	else if (type == 'date-between'){
		jQuery("#htype").val("date");
		jQuery("#when").val("between");
		jQuery(".oc_field").hide();
		jQuery("#date1_grp").show();
		jQuery("#date2_grp").show();
		jQuery("#date1_lbl").html("Enter the date range <br />From Date (YYYY-mm-dd)");
		jQuery("#date2_lbl").html("To Date (YYYY-mm-dd)");
	}
	else if (type == 'time-between'){
		jQuery("#htype").val("time");
		jQuery("#when").val("between");
		jQuery(".oc_field").hide();
		jQuery("#date1_grp").show();
		jQuery("#date2_grp").show();
		jQuery("#date1_lbl").html("Enter the time range <br />From Time (HH:MM:SS)");
		jQuery("#date2_lbl").html("To Time (HH:MM:SS)");
	}
	else if (type == 'GET' || type == 'POST' || type == 'REQUEST'){
		jQuery("#htype").val(type);
		jQuery(".oc_field").hide();
		jQuery("#variable_grp").show();	
	}
	else if (type == 'manual'){
		jQuery("#htype").val(type);		
		jQuery(".oc_field").hide();
		jQuery("#manual_grp").show();	
	}

}

</script>

<style>
	.oc_field { display:none; } 
</style>

</head>
<body>
<input type="hidden" name="type" id="htype" value="" />
<input type="hidden" name="when" id="when" value="" />
Show the included content 
<select name="type_selector" id="oc_type" onchange="return swap_optional_content_fields();">
	<option>Select when the content will be displayed</option>	
	<optgroup label="User">
		<option value="logged-in">Only to logged in users</option>
		<option value="not-logged-in">Only to visitors NOT logged in</option>
		<option value="user-id">Only to a specific user</option>
	</optgroup>
	<optgroup label="Date/Time">
		<option value="time-before">Only before a specific time each day</option>
		<option value="date-before">Only before a specific date/time</option>
		<option value="time-after">Only after a specific time each day</option>
		<option value="date-after">Only after a specific date/time</option>
		<option value="date-between">Only between a specific date/time range</option>
		<option value="time-between">Only between a specific time range each day</option>
	</optgroup>
	<optgroup label="Variable">
		<option value="GET">Only if a specific GET variable is present (?variable=value on the URL)</option>	
		<option value="POST">Only if a specific POST variable is present</option>
		<option value="REQUEST">Only if a specific GET or POST (REQUEST) variable is present</option>
	</optgroup>
	<optgroup label="Manual">
		<option value="manual">Only when manually enabled</option>
	</optgroup>
</select>
<br /><br />

<div id="optional_content_fields">
	<span id="date1_grp" class="oc_field">
		<label id="date1_lbl">Date: </label><input type="text" name="date1" id="date1" />
	</span>
	<span id="date2_grp" class="oc_field">
		<br />
		<label id="date2_lbl">Date: </label><input type="text" name="date2" id="date2" />
	</span>

	<span id="users_grp" class="oc_field">
			<?php
				global $wpdb;
				$q = "SELECT ID, user_login FROM {$wpdb->users} ORDER BY user_login";
				$users = $wpdb->get_results($q);
			?>
		<label>Select a user that can view this content: </label><br />

		<select name="userid" id="userid" size="5" multiple>
			<?php
			foreach($users as $user){
			?>
			<option value="<?=$user->ID?>"><?php echo $user->user_login . " (" . $user->ID . ")"; ?></option>
			<?php
			}
			?>
		</select>
	</span>

	<span id="variable_grp" class="oc_field">
		<label>To show this content based on a variable please enter: </label><br />
		<label>Variable Name: </label><input type="text" value="" name="variable" id="variable" /><br />
		<label>Value Value:</label><input type="text" value="" name="value" id="value" /> <i>(Use an '&' to allow for any value)</i>
	</span>

	<span id="manual_grp" class="oc_field">
		<label>Manually turn this content on or off.</label>
		<select name="onoff" id="onoff">
			<option value="on">on</option>
			<option value="off">off</option>
		</select>
	</span>

</div>
<br />

<button onclick="return insert_tag();" value="insert">Insert Conditional Content</button> 
What is your <a href='http://www.seopageexplorer.com/explore/<?=get_option('home')?>'>SEO Page Score?</a> | <a href="http://getson.info/donate/">Consider Donating</a>
<br /><br /><br /><br />
</body>
</html>