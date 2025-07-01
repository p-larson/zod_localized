import i18next from 'i18next';
import en from 'localize/en';
import es from 'localize/es';

i18next.init({
    lng: 'en',
    fallbackLng: 'en',
    resources: {
        en: {
            translation: en
        },
        es: {
            translation: es
        }
    }
});
console.log(en, es);
window.i18next = i18next; // Make i18next globally available

console.log('i18next initialized with languages:', i18next.languages);

export default i18next;
