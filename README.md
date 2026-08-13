<style>
    .zapp{
        color: #32D951;
    }

    .splashs{
        width: 100%;
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 20px;
    }
</style>

# <span class="zapp">Zapp</span> - le meilleur clone partiel(pour l'instant) de WhatsApp

<p align="center">
    <img src="assets/icons/Zapp.png" alt="Logo de l'application zapp">
</p>

# Les fonctionnalités implémentées
- Splash screen natif s'adaptant aux thème (clair/sombre)
- Listing des discussions
- Gestion dynamique des photos de profil des discussion en fonction de leur type (personne/groupe/communauté)
- La navigation entre les pages est effective
- Le changement de thème de l'application (light/dark)

# Les fonctionnalités à venir
- Splash screen animé avec le logo de WhatsApp faisant la transition avec celui de Zapp
- Animer la transition entre les screens comme sur le vrai whatsapp
- Recherche d'une discussion selon les proprietes des chats grace a la barre de recherche déjà présente
- Filtrage des discussions selon leur état (toutes/non lues/groupes/communauté)
- Ajout de nouvelles discussions via le bouton(FloatingActionButton) se traouvant au chats_screen
- Implémentation des interface Inbox des discussions

# Les dépendances utilisés
- ***go_router***: pour la gestion de la navigation et du routing (`flutter pud add go_router`)
- ***provider***: pour fournir le theme globale à l'app (`flutter pub add provider`)
- ***flutter_native_splash***: gestion du splash screen natif (`flutter pub add flutter_native_splash`)

# Screenshots de l'application <span class="zapp">Zapp</span>
## Splash screens
<div class="splashs">
    <img src="assets/screenshots/splash-screen-light.png" alt="splash screen en light mode">
    <img src="assets/screenshots/splash-screen-dark.png" alt="splash screen en dark mode">
</div>

## Page des discussions (Chats)
<p align="center">
    <img src="assets/screenshots/chats.png" alt="screenshot de la page des discussions">
</p>

## Page des appels (Calls)
<p align="center">
    <img src="assets/screenshots/calls.png" alt="screenshot de la page des appels">
</p>

## Page des actus (Updates)
<p align="center">
    <img src="assets/screenshots/updates.png" alt="screenshot de la page des actus">
</p>

## Page des outils (Tools)
<p align="center">
    <img src="assets/screenshots/tools.png" alt="screenshot de la page des outils">
</p>