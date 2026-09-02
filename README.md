# Arab tili qo‘llanmalari — Daraja yo‘li

O‘quvchi va o‘qituvchilar uchun arab tili qo‘llanmalarini yosh, daraja va maqsad bo‘yicha tartiblaydigan zamonaviy ta’lim platformasi.

## Asosiy imkoniyatlar

- o‘quvchilar uchun bosqichma-bosqich o‘qish yo‘li;
- o‘qituvchilar uchun qo‘llanmalar asosida dastur yaratish;
- 44 ta qo‘llanmaning tizimli katalogi;
- A0–C1 darajalari bo‘yicha tavsiyalar;
- alohida ko‘nikmalar uchun maxsus yo‘nalishlar;
- qisqa daraja testi;
- telefon, Telegram va onlayn do‘kon orqali aloqa.

## Railway orqali ishga tushirish

Loyiha Railway uchun tayyor. Qo‘shimcha muhit o‘zgaruvchilari hozircha talab qilinmaydi.

1. Railway’da **New Project** tugmasini bosing.
2. **Deploy from GitHub repo** variantini tanlang.
3. Ushbu repositoryni tanlang.
4. Railway loyiha yig‘ilishi va ishga tushirilishini avtomatik bajaradi.
5. **Networking** bo‘limidan ommaviy domen yarating.

Railway quyidagi mavjud buyruqlardan foydalanadi:

```bash
npm run build
npm run start
```

`npm run start` Railway tomonidan beriladigan `PORT` qiymatini avtomatik qabul qiladi.

## Mahalliy ishga tushirish

Node.js `22.13.0` yoki undan yuqori versiya kerak.

```bash
npm ci
npm run build
npm run start
```

Sayt odatda `http://localhost:3000` manzilida ochiladi.

## Yangilanishlar

Asosiy tarmoq — `main`. Unga yangi o‘zgarish yuborilganda, GitHub’ga ulangan Railway xizmati saytni avtomatik qayta deploy qiladi.
