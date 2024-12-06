<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        .image-container {
            display: flex;
            flex-direction: column; /* يضع الصور فوق بعضها */
            align-items: center;   /* يوسّط الصور أفقيًا */
            justify-content: center; /* يوسّط الصور عموديًا إذا كان العنصر الأب محدد الطول */
            height: 100vh; /* يجعل العنصر الأب يغطي كامل الشاشة */
        }

        .image-container img {
            max-width: 100%;
            height: auto; /* يحافظ على نسبة العرض إلى الارتفاع */
            margin: 10px 0; /* إضافة مسافة بين الصور */
        }
    </style>
</head>
<body>
    <div class="image-container">
        <img src="art/Export/logo.jpg" alt="Logo">
        <img src="art/Export/background.jpg" alt="Background">
    </div>
</body>
</html>
