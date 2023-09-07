import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="lens"
export default class extends Controller {
  static values = {
    gcloudId: String,
    gcloudSecret: String,
    gcloudRefresh: String,
    gcloudProject: String
  }
  connect() {
    const captureButton = document.getElementById("captureButton");
    const capturImgButton = document.getElementById("captureImgButton");
    const sendImgButton = document.getElementById("sendImgButton")
    const loadingAnimation = document.getElementById("lds-roller");
    const searchContainer = document.getElementById("search-container");

    const getImgKeyWords = async (encodedImage) => {
      const apiUrl = `https://vision.googleapis.com/v1/images:annotate`;
      const gcloudId = this.gcloudIdValue
      const gcloudSecret = this.gcloudSecretValue
      const gcloudRefresh = this.gcloudRefreshValue
      const gcloudProject = this.gcloudProjectValue
      
      const apiKey = await fetch("https://oauth2.googleapis.com/token", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        "client_id": `${gcloudId}`,
        "client_secret": `${gcloudSecret}`,
        "refresh_token": `${gcloudRefresh}`,
        "quota_project_id": `${gcloudProject}`,
        "grant_type": "refresh_token"
      })
      })
      .then(response => response.json())
      .then(data => data.access_token)

      try {
        const response = await fetch(apiUrl, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json, charset=utf-8',
            'Authorization': `Bearer ${apiKey}`,
            'x-goog-user-project': 'gca-supply-web-app'
            },
            body: JSON.stringify({
              "requests": [
                {
                  "image": {
                      "content": `${encodedImage}`
                    },
                  "features": [
                    {
                      "type": "WEB_DETECTION"
                    }
                  ]
                }
              ]
            })
          });

        const data = await response.json();
        const webDetection = data.responses[0].webDetection;
        const label = webDetection.bestGuessLabels[0].label;

        const searchInput = document.getElementById("search-input");
        const btnSearch = document.getElementById("btn-search");
        loadingAnimation.classList.add('d-none');

        if (searchInput) {
          searchInput.value = label;
          btnSearch.click()
        }

      } catch (error) {
        loadingAnimation.classList.add('d-none');
        console.error('Error:', error);
      }
    }

    captureButton.addEventListener("click", async function() {
      searchContainer.classList.add("flex-column")
      // Accéder à la caméra de l'utilisateur
      if ('mediaDevices' in navigator && 'getUserMedia' in navigator.mediaDevices) {
        // ok, browser supports it
      }
      // Définit le format du retour vidéo de la camera
      const constraints = {
        video: {
          width: {
            min: 320,
            ideal: 640,
            max: 1920,
          },
          height: {
            min: 240,
            ideal: 480,
            max: 1080,
          },
          facingMode: "environment"
        },
      }

      // Selectionne le bloc video généré dans le DOM
      const video = document.querySelector('#video')
      // lance le stream de la camera en récupérant les paramêtres définits par les constraints
      const videoStream = await navigator.mediaDevices.getUserMedia(constraints)
      // Lance la caméra
      video.srcObject = videoStream
      video.classList.remove("hidden");
      captureButton.classList.add("hidden")
      captureImgButton.classList.remove("hidden")
    });

    captureImgButton.addEventListener("click", async function() {
      // Récupère le retour de l'image affichée dans une boite
      const canvas = document.querySelector('#canvas')
      canvas.width = video.videoWidth
      canvas.height = video.videoHeight
      canvas.getContext('2d').drawImage(video, 0, 0)

      // Récupère et converti le format de l'image
      const img = document.createElement('img')
      img.src = canvas.toDataURL('image/png')
      const encodedImage = img.src.match(/,(.*)$/)[1];
      // Construit un bouton pour envoyer l'image vers l'API
      const buttonValidate = document.createElement('button')

      // Arrêt du flux de la caméra
      const stream = video.srcObject
      const tracks = stream.getTracks();

      tracks.forEach((track) => {
        track.stop();
      });

      video.srcObject = null;

      // Gestion de l'affichage des boutons et envoi de la photo vers l'API
      capturImgButton.classList.add("hidden");
      sendImgButton.classList.remove("hidden");
      sendImgButton.addEventListener("click", () => {
        searchContainer.classList.remove("flex-column")
        loadingAnimation.classList.remove('d-none');
        canvas.classList.add("hidden");
        sendImgButton.classList.add("hidden");
        captureButton.classList.remove("hidden");
        getImgKeyWords(encodedImage);
      });
      video.classList.add("hidden");
      canvas.classList.remove("hidden");
    });
  }
}
