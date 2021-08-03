
	var detectingDoubleClick = false;

	var detectedLongTouch = false;
	var detectingLongTouch = false;

	var longTouchTimeout

	var isViewing = false;

	var clickEventListener

	var processingTouch = false;

	var tmpTarget 

	var currentDisplayedImage = null;
	var currentImageSource    = null;

	function changePhoto(elem, id){
		document.getElementById('changing-'+id).src = elem.src
		console.log(elem);
	}

	function createImageViewer(imageCollection){
		currentImageSource = imageCollection


		let displayedChild = imageCollection.getAttribute('currentImage');
		if(imageCollection.children.length != 1){
			if(displayedChild-1 < 0){
				displayedChild = imageCollection.children.length - 1
			} else {
				displayedChild -= 1
			}
		} else {
			displayedChild = 0
		}
		console.log('Created with '+displayedChild);

		isViewing = true
		let viewerWrapper = document.createElement('div')
		viewerWrapper.className = 'viewer-wrapper'
		viewerWrapper.id = 'imgv'

		let changePhotoButtonLeft = document.createElement('div')
		changePhotoButtonLeft.id = 'changePhotoL'
		changePhotoButtonLeft.className = 'change-button left-button'
		changePhotoButtonLeft.innerHTML = '<p class="button-content left-button"> < </p>'

		let changePhotoButtonRight = document.createElement('div')
		changePhotoButtonRight.id = 'changePhotoR'
		changePhotoButtonRight.className = 'change-button right-button'
		changePhotoButtonRight.innerHTML = '<p class="button-content right-button"> > </p>'


		let categoryHeader = document.createElement('h2')
		categoryHeader.className = 'viewer-category'
		categoryHeader.id 	     = 'cgh-1';
		categoryHeader.innerHTML = imageCollection.getAttribute('categoryname') + " &nbsp; фотография: <span id='imgcounter'> " + (displayedChild+1) + "</span> из " + imageCollection.children.length 
		

		let imageWrapper = document.createElement('div')
		imageWrapper.className = 'viewer-image-wrapper'

		let viewedImage = document.createElement('img')
		viewedImage.className = 'viewer-image'
		viewedImage.id = 'vwimg-1'
		viewedImage.src = imageCollection.children[displayedChild].getAttribute('original')

		currentDisplayedImage = displayedChild


		viewerWrapper.append(categoryHeader)

		imageWrapper.append(viewedImage)
		
		viewerWrapper.append(imageWrapper)
		viewerWrapper.append(changePhotoButtonRight, changePhotoButtonLeft)
		
		document.body.append(viewerWrapper)
		console.log('Created');
	}

	function changeDisplayedImage(direction){
		switch(direction){
			case 'left':
				if( (currentDisplayedImage-1 > 0) || (currentDisplayedImage-1 == 0) ){
					currentDisplayedImage-=1
					document.getElementById("vwimg-1").src = currentImageSource.children[currentDisplayedImage].getAttribute('original')
				} else {
					currentDisplayedImage = currentImageSource.children.length-1
					document.getElementById("vwimg-1").src = currentImageSource.children[currentDisplayedImage].getAttribute('original')
				}
				break;
			
			case 'right':
				if( (currentDisplayedImage + 1 < currentImageSource.children.length-1) || (currentDisplayedImage + 1 == currentImageSource.children.length-1) ){
					currentDisplayedImage += 1
					document.getElementById("vwimg-1").src = currentImageSource.children[currentDisplayedImage].getAttribute('original')
				} else {
					currentDisplayedImage = 0
					document.getElementById("vwimg-1").src = currentImageSource.children[currentDisplayedImage].getAttribute('original')
				}
				break;
		}
		currentImageSource.setAttribute('currentImage', currentDisplayedImage)
		document.getElementById('imgcounter').innerText = currentDisplayedImage+1
		chagneSmallDisplayImage(currentImageSource)
	}	

	function chagneSmallDisplayImage(target){
		let childAmount = target.children.length
		let currentId = parseFloat(target.getAttribute('currentimage'))
		target.style.backgroundImage = "url("+target.children[currentId].src+")"
	}

	function processClick(target){
		if(target.classList.contains('left-button') && !(target.classList.contains('inner-button'))){
			document.getElementById('changePhotoL').classList.add('active-button')
			setTimeout(() =>{
				document.getElementById('changePhotoL').classList.remove('active-button')
			}, 200)
			
			changeDisplayedImage('left')
			return 
		}

		if(target.classList.contains('right-button')){
			document.getElementById('changePhotoR').classList.add('active-button')
			setTimeout(() =>{
				document.getElementById('changePhotoR').classList.remove('active-button')
			}, 200)

			changeDisplayedImage('right')
			return
		}


		if(target.classList.contains('viewer-wrapper') || target.classList.contains('viewer-image-wrapper') || target.classList.contains('viewer-image')){
			document.getElementById('imgv').remove()
			isViewing = false
			return
		}


		if(target.classList.contains('image-holder')){ //Обработчик на листание картинок 
			if(!detectingDoubleClick){

				if(detectingLongTouch){
					console.log('Long touch');

					console.log('Creating view with image number '+target.getAttribute('currentImage'));
					createImageViewer(target)

					clearTimeout(longTouchTimeout)
					detectingLongTouch = false;

					return;
				}

				clearTimeout(longTouchTimeout)
				detectingLongTouch = false;

				setTimeout(() => { //Таймаут, после которого перестаёт отслеживаться двойное нажатие
					detectingDoubleClick = false;
				}, 250)
				detectingDoubleClick = true;

				let childAmount = target.children.length
				let currentId = parseFloat(target.getAttribute('currentimage'))
				if( currentId+1 > childAmount-1){
					target.setAttribute('currentimage', 0);
					target.style.backgroundImage = "url("+target.children[0].src+")"
				} else {
					target.setAttribute('currentimage', currentId+1)
					target.style.backgroundImage = "url("+target.children[currentId+1].src+")"
				}

			} else { //Если двойной клик 
				console.log('Creating view with image number '+target.getAttribute('currentImage'));
				createImageViewer(target)
			}
		}

	}


	clickEventListener = document.addEventListener('click', (e) => {
		let target = e.target
		processClick(target)
	})

	document.addEventListener('touchstart',(e) => { //Слушает клики, определяет длинный тап (не работает)

		tmpTarget = e.target
		clearTimeout(longTouchTimeout)
		longTouchTimeout = setTimeout(()=>{
			detectingLongTouch = true
		},800)

		setTimeout(()=>{
			detectingLongTouch = false
		}, 2000)
	})
