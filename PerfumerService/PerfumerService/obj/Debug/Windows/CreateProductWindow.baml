   M S B A M L   `   `   `  ????J  FPerfumerService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:PerfumerService.WindowsPerfumerService.Windows  5   	   1    +PerfumerService.Windows.CreateProductWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:PerfumerService.Windows     5   	   -   5          ? Title$  CreateProductWindow??5   	   $	??450??6%   $	??800??62    ? 
ResizeMode$ NoResize=?5	   	   .??5
      ? .+?5   
   ?? .+?5      ??  ?? Orientation$ 
Horizontal=?6   .+?5      ?? $??Артикул??6   ?? 5      -   5         ??Name$ stockNumberTextBox??5      $	??150??66   5      ?? 5      $ 
Horizontal=?6   .+?5      ?? $??Наименование??6   ?? 5      -   5        $ nameTextBox??5      $	??150??6/   5      ?? 5      $ 
Horizontal=?6   .+?5      ?? $??Категория??6   ?? 5      -   5         ??Name$ categoryListBox??5      $	??150??63   5      ?? 5      $ 
Horizontal=?6   .+?5      ?? $'??!Единица измерения??6   ?? 5      -   5        $ unitsTextBox??5      $	??150??60   5      ?? 5      $ 
Horizontal=?6   .+?5      ?? $.??(Количество в упаковке??6   ?? 5      -   5        $ inBoxCountTextBox??5      $	??150??65   5      ?? 5       $ 
Horizontal=?6   .+?5!      ?? $1??+Минимальное количество??6   ?? 5"      -   5        $ minCountTextBox??5"      $	??150??63   5#      ?? 5$      $ 
Horizontal=?6   .+?5%      ?? $??Поставщик??6   ?? 5&      -   5        $ manufacturerTextBox??5&      $	??150??67   5'      ?? 5(      $ 
Horizontal=?6   .+?5)      ?? $+??%Максимальная скидка??6   ?? 5*      -	   5        $ maxDiscountTextBox??5*      $	??150??66   5+      ?? 5,      $ 
Horizontal=?6   .+?5-      ?? $!??Текущая скидка??6   ?? 5.      -
   5        $ currentDiscountTextBox??5.      $	??150??6:   5/      ?? 50      $ 
Horizontal=?6   .+?51      ?? $,??&Стоимость за единицу??6   ?? 52      -   5        $ priceTextBox??52      $	??150??60   53      ?? 54      $ 
Horizontal=?6   .+?55      ?? $??Описание??6   ?? 56      -   5        $ descriptionTextBox??56      $	??150??66    ?? TextWrapping$
 Wrap=?6B    ?? AcceptsReturn . 6V   57      ?? 58      -   5         ??Name$ commitButton??58   .   $!??Добавить товар??6   6D   59      5:      5;      