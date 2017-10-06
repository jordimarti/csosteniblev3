function uploadAttachment(attachment) {
	var file = attachment.file;
  var form = new FormData;
  form.append("Content-Type", file.type);
  form.append("photo[image]", file);

	

  // Create our XHR request
  var xhr = new XMLHttpRequest;
  xhr.open("POST", "/photos.json", true);
  xhr.setRequestHeader("X-CSRF-Token", Rails.csrfToken());

	// Report file uploads back to Trix
  xhr.upload.onprogress = function(event) {
    var progress = event.loaded / event.total * 100;
    attachment.setUploadProgress(progress);
  }

  // Tell Trix what url and href to use on successful upload
  xhr.onload = function() {
    if (xhr.status === 201) {
      var data = JSON.parse(xhr.responseText);
      return attachment.setAttributes({
        url: data.image_url,
        href: data.image_url
      })
    }
  }

  return xhr.send(form);
}

document.addEventListener("trix-attachment-add", function(event) {
	// Create our form data to submit
	var attachment = event.attachment;
  if (attachment.file) {
    return uploadAttachment(attachment);
  }

});