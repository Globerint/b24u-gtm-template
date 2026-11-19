# B24U AI Chat Widget for Google Tag Manager

Adds the [B24U](https://b24u.com) AI chat assistant to your site through Google Tag Manager.
The assistant answers visitors from your site content and sends leads to your CRM.

## Setup

1. In Google Tag Manager: Tags, New, Tag Configuration, then choose **B24U AI Chat Widget**
   from the Community Template Gallery.
2. **Site domain in B24U**: the domain your site is registered with in B24U, for example
   `example.com`.
3. **B24U server**: `b24u.com`, or `b24u.ru` if your B24U account is on b24u.ru.
4. Trigger: **All Pages**. Save and publish the container.

Appearance, texts and behaviour of the chat are managed in your B24U account. A site that is
not a B24U client yet shows nothing: register it at https://b24u.com/signup.

## What the tag loads

`https://i.b24u.com/<domain>` (or `https://i.b24u.ru/<domain>`), the same widget script as the
B24U embed code. Nothing else is loaded or sent by the tag itself.

Publisher: Globerint Pte. Ltd. Plugins for other platforms: https://b24u.com/plugins
