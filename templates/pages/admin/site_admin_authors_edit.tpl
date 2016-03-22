{include file='file:core/header.tpl'}

	<!-- B. MAIN -->
	<div class="main">

		{include file='file:sidebars/left.tpl'}
 
		<!-- B.2 MAIN CONTENT -->
		<div class="main-content">
        
			<!-- Pagetitle -->
			<h1 class="pagetitle">Edit Author</h1>

			<div class="column1-unit">
{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{/if}
{if $skip_form neq true}
				<div class="simpleform">
					<form method="post" action="{$script_url}">
						<input type="hidden" name="act" value="admin" />
						<input type="hidden" name="sact" value="authoredit" />
						<input type="hidden" name="edit" value="1" />
						<input type="hidden" name="id" value="{$form_id}" />
						<p><label for="dl_category" class="left">Author:</label>
							<input type="text" name="na_author" id="na_author" class="field" value="{$form_author}" tabindex="1" style="width:340px;" /></p>
						<p><input type="submit" name="submit" id="submit" class="button" value="Edit" tabindex="2" /></p>
						<p>&nbsp;</p>
					</form>
				</div>
{/if}
			</div>
		</div>
                
		{include file='file:sidebars/right.tpl'}

	</div>

{include file='file:core/footer.tpl'}