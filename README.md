# docker-exim

## Для пуникода:
 https://github.com/politsin/docker-exim/commit/b0082cee604abbfbb96b2617e5c71116f333d96c
 Почта с кирилицей не пройдёт, почта с пуникодом пройдёт если отключить верификацию require verify = sender

## Для верификации почты:
 https://github.com/politsin/docker-exim/commit/634206bd354f2c87adc1d7804f89fedfd8070469
 "Системе GMail не удалось подтвердить, что это письмо отправлено из домена ******. Возможно это спам.
 Решается вставкой в конфиг настоящего хостнейма, или определением хостнейма через 
 docker-exim :
   hostname: n22.s3dev.ru
