---
mainfont: DejaVu Serif
sansfont: DejaVu Sans
monofont: DejaVu Sans Mono
lang: ru
---

---
title: "Лабораторная работа № 2"
author: "ЧжуЖуйи"
date: "5 октября 2025 г."
---

# Цель работы
Изучение идеологии и применения средств контроля версий, приобретение практических навыков по работе с системой контроля версий git.

# Порядок выполнения лабораторной работы

1) Настройка github 
-Создана учетная запись на Github 
-https://github.com/ZhuRuiYi-git/study_2025-2026_arh-pc

2) Базовая настройка git
-Настройка git
```bash
git config --global user.name "<ZhuRuiYi-git>"
git config --global user.email "1032254675@pfur.ru"
git config --global core.quotepath false
git config --global init.defaultBranch master
git config --global core.autocrlf input
git config --global core.safecrlf warn
```
3) Создание SSH ключа
-создания приватного ключа и запись его в каталог~/.ssh/.
```bash
ssh-keygen -C "ZhuRuiYi-git <1032254675@pfur.ru>" 
cat ~/.ssh/id_ed25519.pub | xclip -sel clip
```
-Находим ключ
```bash
ls
cat id_ed25519.pub
```
-Создаем ключ на сайте и проверяем добавление ключа

4) Создание рабочего пространства и репозитория курса на основе шаблона
```bash
mkdir -p ~/work/study/2025-2026/"Архитектура компьютера"
```
5) Создание репозитория курса на основе шаблона
-Создаем репозиторий по шаблону и называем его “study_2025–2026_arh-pc”
-Переходим в каталог курса 
```bash
cd ~/work/study/2025–2026/"Архитектура компьютера"
```
-Клонируем созданный репозиторий 
```bash
git clone --recursive git@github.com:/study_2025–2026_arh-pc.git arch-pc
```

6) Настройка каталога курса
-Переходим в каталог курса 
```bash
cd ~/work/study/2023-2024/»Архитектура компьютера»/arch-pc
```
-Создаем необходимые файлы 
```bash
echo arch-pc > COURSE 
make prepare
```
-Отслеживаем файл, записываем изменения в клонированный репозиторий и отправляем данные в репозиторий :
```bash
git add .
git commit -am 'feat(main): make course structure'
git push
```
-Проверяем правильность выполнения команд в терминале
```bash
ls labs/
```
-Проверяем правильность выполнения команд в github

# Самостоятельной работа
1)Создайте отчет по выполнению лабораторной работы в соответствующем каталоге рабочего пространства (labs/lab02/report).
-Создание отчета:
```bash
cd ~/work/study/2025-2026/"Архитектура компьютера"/arch-pc/labs/lab02/report
touch
ls
```
2)Скопируйте отчеты по выполнению предыдущих лабораторных работ в соответствующие каталоги созданного рабочего пространства.
-Копируем первый отчет в соответствующий каталог:
```bash
cp Л01_ЧжуЖуйи_отчет.pdf ~/work/study/2025-2026/"Архитектура компьютера"/arch-pc/labs/lab01/report
ls ~/work/study/2025-2026/"Архитектура компьютера"/arch-pc/labs/lab01/report
```
3)Загрузите файлы на github.
-Загружаем все на github:
```bash
cd ~/work/study/2025-2026/"Архитектура компьютера"/arch-pc/labs/lab01/report
git add .
git commit -am "feat(lab01): add lab01 report PDF"
git push
git add .
git commit -am "feat(lab02): add lab02 report PDF"
git push
```

# Вывод
Освоил систему контроля версий Git: настроил локальное окружение, создал удалённый репозиторий на GitHub и загрузил в него отчёты по лабораторным работам.

