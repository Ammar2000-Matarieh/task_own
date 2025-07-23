final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

final RegExp passwordRegExp = RegExp(
  r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*?&]{8,}$',
);

final RegExp phoneRegExp = RegExp(r'^(\+?\d{1,3}[- ]?)?\d{9,15}$');
