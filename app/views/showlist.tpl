

<div class="campl-wp-content">
	
	<h2>{$list.name|htmlspecialchars}</h2>
	
	{if $isEditor}
	<div class="clearfix">
		<p class="primaryaction right"><a href="https://talks.cam.ac.uk/list/edit_details/{$list.talksdotcamListNumber}" title="Edit the list details, on talks.cam"><img src="/images/icons/pencil.png" class="icon" /> Edit list description</a></p>
	</div>
	{/if}
	
	<div class="details">
		{$list.detailsHtml}
	</div>
	
	{if $isEditor}
	<div class="clearfix">
		<p class="primaryaction right"><a href="https://talks.cam.ac.uk/list/edit/{$list.talksdotcamListNumber}" title="Edit the seminars listing, on talks.cam"><img src="/images/icons/pencil.png" class="icon" /> Edit seminars</a></p>
	</div>
	{/if}
	
	{if !$list.archived}
		
		{if ($seminars)}
		{foreach from=$seminars item=seminar}
			
			<div class="graybox" id="id{$seminar.id}">
				<h2>
					<div>
					<div class="campl-highlight-event-item clearfix">
						<div class="campl-highlight-date-container">
							<div class="campl-highlight-date">
								<div class="campl-highlight-day">{$seminar.day}</div>{$seminar.month}
							</div>
						</div>
						<div>{$seminar.title|htmlspecialchars}</div>
					</div>
				</div>
			</h2>
			{if ($seminar.special_message)}
				<p class="specialmessage">{$seminar.special_message|htmlspecialchars}</p>
			{/if}
			<p><strong>Speaker:</strong> {$seminar.speaker|htmlspecialchars}</p>
			<p><strong>Time:</strong> {$seminar.time}</p>
			<p><strong>Location:</strong> {$seminar.venue|htmlspecialchars}</p>
			{$seminar.abstractHtml}
		</div>
			
		{/foreach}
		
		{else}
			<div class="graybox">
				<p><strong>There are no forthcoming seminars scheduled at present.</strong></p>
			</div>
		{/if}
		
	{/if}
	
	{if ($archived)}
	<h3 id="previous">Previous seminars</h3>
	<div class="graybox">
		<ul class="spaced small">
		{foreach from=$archived item=seminar}
			<li id="id{$seminar.id}"><strong>{$seminar.date} - {$seminar.speaker|htmlspecialchars}</strong>:<br />{$seminar.title|htmlspecialchars}. <a href="{$seminar.url}">Details&hellip;</a></li>
		{/foreach}
		</ul>
	</div>
	{/if}
	
</div>


<div class="campl-wp-sidebar">
	
	{if $droplist}
	<p>Switch to:</p>
	{$droplist}
	{/if}
	
	{if $administrator}
	<div class="clearfix">
		<p class="primaryaction right"><a href="{$baseUrl}/data/lists/{$list.id}/edit.html" title="Edit the seminars listing, on talks.cam"><img src="/images/icons/pencil.png" class="icon" /> Edit list status</a></p>
	</div>
	{/if}
	
	<h2>More details</h2>
	
	<ul>
		<li><a href="{$list.talksdotcamUrl}">More info on talks.cam</a></li>
		<li><a href="{$list.talksdotcamIcal}"><img src="/images/icons/date.png" class="icon" /> Add to your calendar</a></li>
	</ul>
	
</div>
