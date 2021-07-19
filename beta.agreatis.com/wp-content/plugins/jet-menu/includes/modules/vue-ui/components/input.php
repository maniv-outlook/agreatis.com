<cx-vui-component-wrapper
	:elementId="currentId"
	:label="label"
	:description="description"
	:wrapper-css="wrapperCss"
	:preventWrap="preventWrap"
	v-if="isVisible()"
>
	<input
		:id="currentId"
		:type="type"
		:class="controlClasses"
		:placeholder="placeholder"
		:disabled="disabled"
		:maxlength="maxlength"
		:readonly="readonly"
		:name="name"
		:value="currentValue"
		:autofocus="autofocus"
		:min="min"
		:max="max"
		:step="step"
		@keyup.enter="handleEnter"
		@keyup="handleKeyup"
		@keypress="handleKeypress"
		@keydown="handleKeydown"
		@focus="handleFocus"
		@blur="handleBlur"
		@input="handleInput"
		@change="handleChange"
	>
	<slot></slot>
</cx-vui-component-wrapper>
