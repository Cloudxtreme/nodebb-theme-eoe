		<div class="{children.class}" data-cid="{children.cid}" data-numRecentReplies="{children.numRecentReplies}">
			<meta itemprop="name" content="{children.name}">
			<!-- IF !children.link -->
				<span class="category-info badge"><i class="fa fa-book" data-toggle="tooltip" title="[[global:topics]]"></i> <span class="human-readable-number" title="{children.topic_count}">{children.topic_count}</span>&nbsp; <i class="fa fa-pencil" data-toggle="tooltip" title="[[global:posts]]"></i> <span class="human-readable-number" title="{children.post_count}">{children.post_count}</span></span>
			<!-- ENDIF !children.link -->
			<h4 class="category-title">
				<!-- IF children.link -->
				<a href="{children.link}" itemprop="url" target="_blank">
				<!-- ELSE -->
				<a href="{relative_path}/category/{children.slug}" itemprop="url">
				<!-- ENDIF children.link -->
				{children.name}
				</a>
			</h4>

			<!-- IF children.link -->
			<a style="color: {children.color};" href="{children.link}" itemprop="url" target="_blank">
			<!-- ELSE -->
			<a style="color: {children.color};" href="{relative_path}/category/{children.slug}" itemprop="url">
			<!-- ENDIF children.link -->
				<div
					id="category-{children.cid}" class="category-header icon category-header-image-{children.imageClass}"
					title="{children.description}"
					style="
						<!-- IF children.backgroundImage -->background-image: url({children.backgroundImage});<!-- ENDIF children.backgroundImage -->
						<!-- IF children.bgColor -->background-color: {children.bgColor};<!-- ENDIF children.bgColor -->
					"
				>
					<div class="category-slider-{children.post_count}" style="
							<!-- IF children.bgColor -->background-color: {children.bgColor}; border-color: {children.bgColor};<!-- ENDIF children.bgColor -->
						">
						<!-- IF children.icon -->
						<div class="category-box icon-container"><i class="fa {children.icon} fa-4x"></i></div>
						<!-- ENDIF children.icon -->
						<div class="category-box description-container" itemprop="description">{children.description}</div>

						<!-- BEGIN posts -->
						<div class="category-box">
							<div class="post-preview">
								<img src="{children.posts.user.picture}" class="pull-left" />
								<p class=""><strong>{children.posts.user.username}</strong>: {children.posts.content}</p>
							</div>
						</div>
						<!-- END posts -->
					</div>
				</div>
			</a>
		</div>