; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/samsung/pinctrl-exynos-arm.c_pt.bc'
source_filename = "../drivers/pinctrl/samsung/pinctrl-exynos-arm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_pin_ctrl = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.samsung_pinctrl_of_match_data = type { ptr, i32 }
%struct.samsung_pin_bank_data = type { ptr, i32, i8, i8, i8, i32, i32, i32, ptr }
%struct.samsung_retention_data = type { ptr, i32, i32, ptr, ptr }
%struct.samsung_pin_bank_type = type { [6 x i8], [6 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.samsung_pinctrl_drv_data = type { %struct.list_head, ptr, ptr, i32, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.samsung_retention_ctrl = type { ptr, i32, i32, ptr, ptr, ptr, ptr }

@s5pv210_pin_ctrl = internal constant [1 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @s5pv210_pin_bank, i32 34, i32 0, ptr @s5pv210_retention_data, ptr @exynos_eint_gpio_init, ptr @exynos_eint_wkup_init, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }], section ".init.rodata", align 4
@s5pv210_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @s5pv210_pin_ctrl, i32 1 }, section ".init.rodata", align 4
@exynos3250_pin_ctrl = internal constant [2 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @exynos3250_pin_banks0, i32 7, i32 0, ptr @exynos3250_retention_data, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos3250_pin_banks1, i32 16, i32 0, ptr @exynos3250_retention_data, ptr @exynos_eint_gpio_init, ptr @exynos_eint_wkup_init, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }], section ".init.rodata", align 4
@exynos3250_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @exynos3250_pin_ctrl, i32 2 }, section ".init.rodata", align 4
@exynos4210_pin_ctrl = internal constant [3 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @exynos4210_pin_banks0, i32 16, i32 0, ptr @exynos4_retention_data, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos4210_pin_banks1, i32 20, i32 0, ptr @exynos4_retention_data, ptr @exynos_eint_gpio_init, ptr @exynos_eint_wkup_init, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos4210_pin_banks2, i32 1, i32 0, ptr @exynos4_audio_retention_data, ptr null, ptr null, ptr null, ptr null }], section ".init.rodata", align 4
@exynos4210_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @exynos4210_pin_ctrl, i32 3 }, section ".init.rodata", align 4
@exynos4x12_pin_ctrl = internal constant [4 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @exynos4x12_pin_banks0, i32 13, i32 0, ptr @exynos4_retention_data, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos4x12_pin_banks1, i32 23, i32 0, ptr @exynos4_retention_data, ptr @exynos_eint_gpio_init, ptr @exynos_eint_wkup_init, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos4x12_pin_banks2, i32 1, i32 0, ptr @exynos4_audio_retention_data, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos4x12_pin_banks3, i32 5, i32 0, ptr null, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }], section ".init.rodata", align 4
@exynos4x12_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @exynos4x12_pin_ctrl, i32 4 }, section ".init.rodata", align 4
@exynos5250_pin_ctrl = internal constant [4 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @exynos5250_pin_banks0, i32 25, i32 0, ptr @exynos4_retention_data, ptr @exynos_eint_gpio_init, ptr @exynos_eint_wkup_init, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5250_pin_banks1, i32 9, i32 0, ptr @exynos4_retention_data, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5250_pin_banks2, i32 5, i32 0, ptr null, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5250_pin_banks3, i32 1, i32 0, ptr @exynos4_audio_retention_data, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }], section ".init.rodata", align 4
@exynos5250_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @exynos5250_pin_ctrl, i32 4 }, section ".init.rodata", align 4
@exynos5260_pin_ctrl = internal constant [3 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @exynos5260_pin_banks0, i32 21, i32 0, ptr null, ptr @exynos_eint_gpio_init, ptr @exynos_eint_wkup_init, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5260_pin_banks1, i32 5, i32 0, ptr null, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5260_pin_banks2, i32 2, i32 0, ptr null, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }], section ".init.rodata", align 4
@exynos5260_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @exynos5260_pin_ctrl, i32 3 }, section ".init.rodata", align 4
@exynos5410_pin_ctrl = internal constant [4 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @exynos5410_pin_banks0, i32 35, i32 0, ptr null, ptr @exynos_eint_gpio_init, ptr @exynos_eint_wkup_init, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5410_pin_banks1, i32 9, i32 0, ptr null, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5410_pin_banks2, i32 5, i32 0, ptr null, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5410_pin_banks3, i32 1, i32 0, ptr null, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }], section ".init.rodata", align 4
@exynos5410_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @exynos5410_pin_ctrl, i32 4 }, section ".init.rodata", align 4
@exynos5420_pin_ctrl = internal constant [5 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @exynos5420_pin_banks0, i32 5, i32 0, ptr @exynos5420_retention_data, ptr @exynos_eint_gpio_init, ptr @exynos_eint_wkup_init, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5420_pin_banks1, i32 13, i32 0, ptr @exynos5420_retention_data, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5420_pin_banks2, i32 8, i32 0, ptr @exynos5420_retention_data, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5420_pin_banks3, i32 9, i32 0, ptr @exynos5420_retention_data, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }, %struct.samsung_pin_ctrl { ptr @exynos5420_pin_banks4, i32 1, i32 0, ptr @exynos4_audio_retention_data, ptr @exynos_eint_gpio_init, ptr null, ptr @exynos_pinctrl_suspend, ptr @exynos_pinctrl_resume }], section ".init.rodata", align 4
@exynos5420_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @exynos5420_pin_ctrl, i32 5 }, section ".init.rodata", align 4
@s5pv210_pin_bank = internal constant [34 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 4, i8 0, i32 1, i32 0, i32 4, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.2 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 5, i8 0, i32 1, i32 0, i32 12, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 5, i8 0, i32 1, i32 0, i32 16, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 4, i8 0, i32 1, i32 0, i32 20, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 6, i8 0, i32 1, i32 0, i32 24, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 8, i8 0, i32 1, i32 0, i32 28, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 5, i8 0, i32 1, i32 0, i32 32, ptr @.str.8 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 288, i8 0, i8 8, i8 0, i32 1, i32 0, i32 36, ptr @.str.9 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 320, i8 0, i8 8, i8 0, i32 1, i32 0, i32 40, ptr @.str.10 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 352, i8 0, i8 8, i8 0, i32 1, i32 0, i32 44, ptr @.str.11 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 384, i8 0, i8 6, i8 0, i32 1, i32 0, i32 48, ptr @.str.12 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 416, i8 0, i8 7, i8 0, i32 1, i32 0, i32 52, ptr @.str.13 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 448, i8 0, i8 7, i8 0, i32 1, i32 0, i32 56, ptr @.str.14 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 480, i8 0, i8 7, i8 0, i32 1, i32 0, i32 60, ptr @.str.15 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 512, i8 0, i8 7, i8 0, i32 1, i32 0, i32 64, ptr @.str.16 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 576, i8 0, i8 8, i8 0, i32 1, i32 0, i32 68, ptr @.str.17 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 608, i8 0, i8 6, i8 0, i32 1, i32 0, i32 72, ptr @.str.18 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 640, i8 0, i8 8, i8 0, i32 1, i32 0, i32 76, ptr @.str.19 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 672, i8 0, i8 8, i8 0, i32 1, i32 0, i32 80, ptr @.str.20 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 704, i8 0, i8 5, i8 0, i32 1, i32 0, i32 84, ptr @.str.21 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 544, i8 0, i8 7, i8 0, i32 0, i32 0, i32 0, ptr @.str.22 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 736, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.23 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 768, i8 0, i8 4, i8 0, i32 0, i32 0, i32 0, ptr @.str.24 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 800, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.25 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 832, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.26 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 864, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.27 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 896, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.28 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 928, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.29 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3072, i8 0, i8 8, i8 0, i32 2, i32 0, i32 0, ptr @.str.30 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3104, i8 0, i8 8, i8 0, i32 2, i32 0, i32 4, ptr @.str.31 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3136, i8 0, i8 8, i8 0, i32 2, i32 0, i32 8, ptr @.str.32 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3168, i8 0, i8 8, i8 0, i32 2, i32 0, i32 12, ptr @.str.33 }], section ".init.rodata", align 4
@s5pv210_retention_data = internal constant %struct.samsung_retention_data { ptr null, i32 0, i32 0, ptr null, ptr @s5pv210_retention_init }, section ".init.rodata", align 4
@bank_type_off = internal constant { %struct.samsung_pin_bank_type, [20 x i8] } { %struct.samsung_pin_bank_type { [6 x i8] c"\04\01\02\02\02\02", [6 x i8] c"\00\04\08\0C\10\14" }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpa0\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpa1\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpb\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpc0\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpc1\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpd0\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpd1\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpe0\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpe1\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpf0\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpf1\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpf2\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpf3\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpg0\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpg1\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpg2\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpg3\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpj0\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpj1\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpj2\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpj3\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpj4\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpi\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mp01\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mp02\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mp03\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mp04\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mp05\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mp06\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mp07\00", [27 x i8] zeroinitializer }, align 32
@bank_type_alive = internal constant { %struct.samsung_pin_bank_type, [20 x i8] } { %struct.samsung_pin_bank_type { [6 x i8] c"\04\01\02\02\00\00", [6 x i8] c"\00\04\08\0C\00\00" }, [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gph0\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gph1\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gph2\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gph3\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung,s5pv210-clock\00", [42 x i8] zeroinitializer }, align 32
@s5pv210_retention_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.37, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: failed to find clock controller DT node\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s5pv210_retention_init\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/pinctrl/samsung/pinctrl-exynos-arm.c\00", [51 x i8] zeroinitializer }, align 32
@s5pv210_retention_init._entry_ptr = internal global ptr @s5pv210_retention_init._entry, section ".printk_index", align 4
@s5pv210_retention_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.37, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: failed to map clock registers\0A\00", [59 x i8] zeroinitializer }, align 32
@s5pv210_retention_init._entry_ptr.40 = internal global ptr @s5pv210_retention_init._entry.38, section ".printk_index", align 4
@exynos3250_pin_banks0 = internal constant [7 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 6, i8 0, i32 1, i32 0, i32 4, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.2 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 5, i8 0, i32 1, i32 0, i32 12, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 5, i8 0, i32 1, i32 0, i32 16, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 4, i8 0, i32 1, i32 0, i32 20, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 4, i8 0, i32 1, i32 0, i32 24, ptr @.str.6 }], section ".init.rodata", align 4
@exynos3250_retention_data = internal constant %struct.samsung_retention_data { ptr @exynos3250_retention_regs, i32 9, i32 268435456, ptr @exynos_shared_retention_refcnt, ptr @exynos_retention_init }, section ".init.rodata", align 4
@exynos3250_pin_banks1 = internal constant [16 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 288, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 320, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.8 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 384, i8 0, i8 3, i8 0, i32 0, i32 0, i32 0, ptr @.str.41 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.42 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 7, i8 0, i32 1, i32 0, i32 12, ptr @.str.43 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 7, i8 0, i32 1, i32 0, i32 16, ptr @.str.44 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 4, i8 0, i32 1, i32 0, i32 24, ptr @.str.45 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 608, i8 0, i8 8, i8 0, i32 1, i32 0, i32 36, ptr @.str.46 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 640, i8 0, i8 7, i8 0, i32 1, i32 0, i32 40, ptr @.str.47 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 672, i8 0, i8 5, i8 0, i32 1, i32 0, i32 44, ptr @.str.48 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 704, i8 0, i8 8, i8 0, i32 1, i32 0, i32 48, ptr @.str.49 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 736, i8 0, i8 8, i8 0, i32 1, i32 0, i32 52, ptr @.str.50 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3072, i8 0, i8 8, i8 0, i32 2, i32 0, i32 0, ptr @.str.51 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3104, i8 0, i8 8, i8 0, i32 2, i32 0, i32 4, ptr @.str.52 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3136, i8 0, i8 8, i8 0, i32 2, i32 0, i32 8, ptr @.str.53 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3168, i8 0, i8 8, i8 0, i32 2, i32 0, i32 12, ptr @.str.54 }], section ".init.rodata", align 4
@exynos3250_retention_regs = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 12328, i32 12552, i32 12584, i32 12616, i32 12648, i32 12680, i32 12712, i32 12488, i32 12744], [60 x i8] zeroinitializer }, align 32
@exynos_shared_retention_refcnt = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpe2\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpk0\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpk1\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpk2\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpl0\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpm0\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpm1\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpm2\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpm3\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpm4\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpx0\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpx1\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpx2\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpx3\00", [27 x i8] zeroinitializer }, align 32
@exynos4210_pin_banks0 = internal constant [16 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 6, i8 0, i32 1, i32 0, i32 4, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.2 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 5, i8 0, i32 1, i32 0, i32 12, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 5, i8 0, i32 1, i32 0, i32 16, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 4, i8 0, i32 1, i32 0, i32 20, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 4, i8 0, i32 1, i32 0, i32 24, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 5, i8 0, i32 1, i32 0, i32 28, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 8, i8 0, i32 1, i32 0, i32 32, ptr @.str.8 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 288, i8 0, i8 6, i8 0, i32 1, i32 0, i32 36, ptr @.str.41 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 320, i8 0, i8 8, i8 0, i32 1, i32 0, i32 40, ptr @.str.55 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 352, i8 0, i8 8, i8 0, i32 1, i32 0, i32 44, ptr @.str.56 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 384, i8 0, i8 8, i8 0, i32 1, i32 0, i32 48, ptr @.str.9 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 416, i8 0, i8 8, i8 0, i32 1, i32 0, i32 52, ptr @.str.10 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 448, i8 0, i8 8, i8 0, i32 1, i32 0, i32 56, ptr @.str.11 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 480, i8 0, i8 6, i8 0, i32 1, i32 0, i32 60, ptr @.str.12 }], section ".init.rodata", align 4
@exynos4_retention_data = internal constant %struct.samsung_retention_data { ptr @exynos4_retention_regs, i32 6, i32 268435456, ptr @exynos_shared_retention_refcnt, ptr @exynos_retention_init }, section ".init.rodata", align 4
@exynos4210_pin_banks1 = internal constant [20 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str.17 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 5, i8 0, i32 1, i32 0, i32 4, ptr @.str.18 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 7, i8 0, i32 1, i32 0, i32 8, ptr @.str.42 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 7, i8 0, i32 1, i32 0, i32 12, ptr @.str.43 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 7, i8 0, i32 1, i32 0, i32 16, ptr @.str.44 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 7, i8 0, i32 1, i32 0, i32 20, ptr @.str.57 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 8, i8 0, i32 1, i32 0, i32 24, ptr @.str.45 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 3, i8 0, i32 1, i32 0, i32 28, ptr @.str.58 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 8, i8 0, i32 1, i32 0, i32 32, ptr @.str.59 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 288, i8 0, i8 6, i8 0, i32 0, i32 0, i32 0, ptr @.str.60 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 320, i8 0, i8 4, i8 0, i32 0, i32 0, i32 0, ptr @.str.61 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 352, i8 0, i8 6, i8 0, i32 0, i32 0, i32 0, ptr @.str.62 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 384, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.63 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 416, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.64 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 448, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.65 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 480, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.66 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3072, i8 0, i8 8, i8 0, i32 2, i32 0, i32 0, ptr @.str.51 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3104, i8 0, i8 8, i8 0, i32 2, i32 0, i32 4, ptr @.str.52 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3136, i8 0, i8 8, i8 0, i32 2, i32 0, i32 8, ptr @.str.53 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3168, i8 0, i8 8, i8 0, i32 2, i32 0, i32 12, ptr @.str.54 }], section ".init.rodata", align 4
@exynos4210_pin_banks2 = internal constant [1 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 7, i8 0, i32 0, i32 0, i32 0, ptr @.str.67 }], section ".init.rodata", align 4
@exynos4_audio_retention_data = internal constant %struct.samsung_retention_data { ptr @exynos4_audio_retention_regs, i32 1, i32 268435456, ptr null, ptr @exynos_retention_init }, section ".init.rodata", align 4
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpe3\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpe4\00", [27 x i8] zeroinitializer }, align 32
@exynos4_retention_regs = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 12552, i32 12584, i32 12616, i32 12648, i32 12680, i32 12712], [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpk3\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpl1\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpl2\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpy0\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpy1\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpy2\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpy3\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpy4\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpy5\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpy6\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpz\00", [28 x i8] zeroinitializer }, align 32
@exynos4_audio_retention_regs = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 12328], [28 x i8] zeroinitializer }, align 32
@exynos4x12_pin_banks0 = internal constant [13 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 6, i8 0, i32 1, i32 0, i32 4, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.2 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 5, i8 0, i32 1, i32 0, i32 12, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 5, i8 0, i32 1, i32 0, i32 16, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 4, i8 0, i32 1, i32 0, i32 20, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 4, i8 0, i32 1, i32 0, i32 24, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 384, i8 0, i8 8, i8 0, i32 1, i32 0, i32 48, ptr @.str.9 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 416, i8 0, i8 8, i8 0, i32 1, i32 0, i32 52, ptr @.str.10 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 448, i8 0, i8 8, i8 0, i32 1, i32 0, i32 56, ptr @.str.11 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 480, i8 0, i8 6, i8 0, i32 1, i32 0, i32 60, ptr @.str.12 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 576, i8 0, i8 8, i8 0, i32 1, i32 0, i32 64, ptr @.str.17 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 608, i8 0, i8 5, i8 0, i32 1, i32 0, i32 68, ptr @.str.18 }], section ".init.rodata", align 4
@exynos4x12_pin_banks1 = internal constant [23 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 7, i8 0, i32 1, i32 0, i32 8, ptr @.str.42 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 7, i8 0, i32 1, i32 0, i32 12, ptr @.str.43 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 7, i8 0, i32 1, i32 0, i32 16, ptr @.str.44 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 7, i8 0, i32 1, i32 0, i32 20, ptr @.str.57 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 7, i8 0, i32 1, i32 0, i32 24, ptr @.str.45 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 2, i8 0, i32 1, i32 0, i32 28, ptr @.str.58 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 8, i8 0, i32 1, i32 0, i32 32, ptr @.str.59 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 608, i8 0, i8 8, i8 0, i32 1, i32 0, i32 36, ptr @.str.46 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 640, i8 0, i8 7, i8 0, i32 1, i32 0, i32 40, ptr @.str.47 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 672, i8 0, i8 5, i8 0, i32 1, i32 0, i32 44, ptr @.str.48 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 704, i8 0, i8 8, i8 0, i32 1, i32 0, i32 48, ptr @.str.49 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 736, i8 0, i8 8, i8 0, i32 1, i32 0, i32 52, ptr @.str.50 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 288, i8 0, i8 6, i8 0, i32 0, i32 0, i32 0, ptr @.str.60 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 320, i8 0, i8 4, i8 0, i32 0, i32 0, i32 0, ptr @.str.61 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 352, i8 0, i8 6, i8 0, i32 0, i32 0, i32 0, ptr @.str.62 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 384, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.63 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 416, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.64 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 448, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.65 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 480, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.66 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3072, i8 0, i8 8, i8 0, i32 2, i32 0, i32 0, ptr @.str.51 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3104, i8 0, i8 8, i8 0, i32 2, i32 0, i32 4, ptr @.str.52 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3136, i8 0, i8 8, i8 0, i32 2, i32 0, i32 8, ptr @.str.53 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3168, i8 0, i8 8, i8 0, i32 2, i32 0, i32 12, ptr @.str.54 }], section ".init.rodata", align 4
@exynos4x12_pin_banks2 = internal constant [1 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 7, i8 0, i32 1, i32 0, i32 0, ptr @.str.67 }], section ".init.rodata", align 4
@exynos4x12_pin_banks3 = internal constant [5 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str.68 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 8, i8 0, i32 1, i32 0, i32 4, ptr @.str.69 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.70 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 8, i8 0, i32 1, i32 0, i32 12, ptr @.str.71 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 2, i8 0, i32 1, i32 0, i32 16, ptr @.str.72 }], section ".init.rodata", align 4
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpv0\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpv1\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpv2\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpv3\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpv4\00", [27 x i8] zeroinitializer }, align 32
@exynos5250_pin_banks0 = internal constant [25 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 6, i8 0, i32 1, i32 0, i32 4, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.73 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 5, i8 0, i32 1, i32 0, i32 12, ptr @.str.74 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 5, i8 0, i32 1, i32 0, i32 16, ptr @.str.75 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 4, i8 0, i32 1, i32 0, i32 20, ptr @.str.76 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 4, i8 0, i32 1, i32 0, i32 24, ptr @.str.77 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 7, i8 0, i32 1, i32 0, i32 28, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 4, i8 0, i32 1, i32 0, i32 32, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 288, i8 0, i8 7, i8 0, i32 1, i32 0, i32 36, ptr @.str.78 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 320, i8 0, i8 7, i8 0, i32 1, i32 0, i32 40, ptr @.str.79 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 352, i8 0, i8 4, i8 0, i32 1, i32 0, i32 44, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 384, i8 0, i8 8, i8 0, i32 1, i32 0, i32 48, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 736, i8 0, i8 7, i8 0, i32 1, i32 0, i32 52, ptr @.str.80 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 416, i8 0, i8 6, i8 0, i32 0, i32 0, i32 0, ptr @.str.60 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 448, i8 0, i8 4, i8 0, i32 0, i32 0, i32 0, ptr @.str.61 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 480, i8 0, i8 6, i8 0, i32 0, i32 0, i32 0, ptr @.str.62 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 512, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.63 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 544, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.64 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 576, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.65 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 608, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.66 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3072, i8 0, i8 8, i8 0, i32 2, i32 0, i32 0, ptr @.str.51 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3104, i8 0, i8 8, i8 0, i32 2, i32 0, i32 4, ptr @.str.52 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3136, i8 0, i8 8, i8 0, i32 2, i32 0, i32 8, ptr @.str.53 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3168, i8 0, i8 8, i8 0, i32 2, i32 0, i32 12, ptr @.str.54 }], section ".init.rodata", align 4
@exynos5250_pin_banks1 = internal constant [9 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 2, i8 0, i32 1, i32 0, i32 4, ptr @.str.8 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 4, i8 0, i32 1, i32 0, i32 8, ptr @.str.9 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 4, i8 0, i32 1, i32 0, i32 12, ptr @.str.10 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 8, i8 0, i32 1, i32 0, i32 16, ptr @.str.13 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 8, i8 0, i32 1, i32 0, i32 20, ptr @.str.14 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 2, i8 0, i32 1, i32 0, i32 24, ptr @.str.15 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 4, i8 0, i32 1, i32 0, i32 28, ptr @.str.30 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 8, i8 0, i32 1, i32 0, i32 32, ptr @.str.31 }], section ".init.rodata", align 4
@exynos5250_pin_banks2 = internal constant [5 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str.68 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 8, i8 0, i32 1, i32 0, i32 4, ptr @.str.69 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.70 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 8, i8 0, i32 1, i32 0, i32 12, ptr @.str.71 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 2, i8 0, i32 1, i32 0, i32 16, ptr @.str.72 }], section ".init.rodata", align 4
@exynos5250_pin_banks3 = internal constant [1 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 7, i8 0, i32 1, i32 0, i32 0, ptr @.str.67 }], section ".init.rodata", align 4
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpa2\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpb0\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpb1\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpb2\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpb3\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpc2\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpc3\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpc4\00", [27 x i8] zeroinitializer }, align 32
@exynos5260_pin_banks0 = internal constant [21 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 4, i8 0, i32 1, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 7, i8 0, i32 1, i32 0, i32 4, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.73 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 5, i8 0, i32 1, i32 0, i32 12, ptr @.str.74 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 4, i8 0, i32 1, i32 0, i32 16, ptr @.str.75 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 5, i8 0, i32 1, i32 0, i32 20, ptr @.str.76 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 8, i8 0, i32 1, i32 0, i32 24, ptr @.str.77 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 8, i8 0, i32 1, i32 0, i32 28, ptr @.str.81 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 8, i8 0, i32 1, i32 0, i32 32, ptr @.str.82 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 288, i8 0, i8 8, i8 0, i32 1, i32 0, i32 36, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 320, i8 0, i8 7, i8 0, i32 1, i32 0, i32 40, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 352, i8 0, i8 5, i8 0, i32 1, i32 0, i32 44, ptr @.str.83 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 384, i8 0, i8 8, i8 0, i32 1, i32 0, i32 48, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 416, i8 0, i8 5, i8 0, i32 1, i32 0, i32 52, ptr @.str.8 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 448, i8 0, i8 4, i8 0, i32 1, i32 0, i32 56, ptr @.str.9 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 480, i8 0, i8 8, i8 0, i32 1, i32 0, i32 60, ptr @.str.10 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 512, i8 0, i8 2, i8 0, i32 1, i32 0, i32 64, ptr @.str.42 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3072, i8 0, i8 8, i8 0, i32 2, i32 0, i32 0, ptr @.str.51 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3104, i8 0, i8 8, i8 0, i32 2, i32 0, i32 4, ptr @.str.52 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3136, i8 0, i8 8, i8 0, i32 2, i32 0, i32 8, ptr @.str.53 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3168, i8 0, i8 8, i8 0, i32 2, i32 0, i32 12, ptr @.str.54 }], section ".init.rodata", align 4
@exynos5260_pin_banks1 = internal constant [5 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 7, i8 0, i32 1, i32 0, i32 0, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 6, i8 0, i32 1, i32 0, i32 4, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 7, i8 0, i32 1, i32 0, i32 8, ptr @.str.78 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 4, i8 0, i32 1, i32 0, i32 12, ptr @.str.79 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 4, i8 0, i32 1, i32 0, i32 16, ptr @.str.80 }], section ".init.rodata", align 4
@exynos5260_pin_banks2 = internal constant [2 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 7, i8 0, i32 1, i32 0, i32 0, ptr @.str.84 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 4, i8 0, i32 1, i32 0, i32 4, ptr @.str.85 }], section ".init.rodata", align 4
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpb4\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpb5\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpd2\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpz0\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpz1\00", [27 x i8] zeroinitializer }, align 32
@exynos5410_pin_banks0 = internal constant [35 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 6, i8 0, i32 1, i32 0, i32 4, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.73 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 5, i8 0, i32 1, i32 0, i32 12, ptr @.str.74 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 5, i8 0, i32 1, i32 0, i32 16, ptr @.str.75 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 4, i8 0, i32 1, i32 0, i32 20, ptr @.str.76 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 4, i8 0, i32 1, i32 0, i32 24, ptr @.str.77 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 7, i8 0, i32 1, i32 0, i32 28, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 4, i8 0, i32 1, i32 0, i32 32, ptr @.str.79 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 288, i8 0, i8 7, i8 0, i32 1, i32 0, i32 36, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 320, i8 0, i8 7, i8 0, i32 1, i32 0, i32 40, ptr @.str.78 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 384, i8 0, i8 8, i8 0, i32 1, i32 0, i32 44, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 416, i8 0, i8 8, i8 0, i32 1, i32 0, i32 48, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 448, i8 0, i8 2, i8 0, i32 1, i32 0, i32 52, ptr @.str.8 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 480, i8 0, i8 6, i8 0, i32 1, i32 0, i32 56, ptr @.str.9 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 512, i8 0, i8 8, i8 0, i32 1, i32 0, i32 60, ptr @.str.10 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 544, i8 0, i8 8, i8 0, i32 1, i32 0, i32 64, ptr @.str.13 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 576, i8 0, i8 8, i8 0, i32 1, i32 0, i32 68, ptr @.str.14 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 608, i8 0, i8 2, i8 0, i32 1, i32 0, i32 72, ptr @.str.15 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 640, i8 0, i8 4, i8 0, i32 1, i32 0, i32 76, ptr @.str.30 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 672, i8 0, i8 8, i8 0, i32 1, i32 0, i32 80, ptr @.str.31 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 352, i8 0, i8 2, i8 0, i32 0, i32 0, i32 0, ptr @.str.86 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 704, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.87 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 736, i8 0, i8 6, i8 0, i32 0, i32 0, i32 0, ptr @.str.60 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 768, i8 0, i8 4, i8 0, i32 0, i32 0, i32 0, ptr @.str.61 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 800, i8 0, i8 6, i8 0, i32 0, i32 0, i32 0, ptr @.str.62 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 832, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.63 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 864, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.64 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 896, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.65 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 928, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.66 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 960, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.88 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3072, i8 0, i8 8, i8 0, i32 2, i32 0, i32 0, ptr @.str.51 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3104, i8 0, i8 8, i8 0, i32 2, i32 0, i32 4, ptr @.str.52 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3136, i8 0, i8 8, i8 0, i32 2, i32 0, i32 8, ptr @.str.53 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3168, i8 0, i8 8, i8 0, i32 2, i32 0, i32 12, ptr @.str.54 }], section ".init.rodata", align 4
@exynos5410_pin_banks1 = internal constant [9 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 5, i8 0, i32 1, i32 0, i32 0, ptr @.str.17 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 8, i8 0, i32 1, i32 0, i32 4, ptr @.str.18 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.19 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 8, i8 0, i32 1, i32 0, i32 12, ptr @.str.20 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 2, i8 0, i32 1, i32 0, i32 16, ptr @.str.21 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 8, i8 0, i32 1, i32 0, i32 20, ptr @.str.42 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 8, i8 0, i32 1, i32 0, i32 24, ptr @.str.43 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 8, i8 0, i32 1, i32 0, i32 28, ptr @.str.44 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 7, i8 0, i32 1, i32 0, i32 32, ptr @.str.57 }], section ".init.rodata", align 4
@exynos5410_pin_banks2 = internal constant [5 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str.68 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 8, i8 0, i32 1, i32 0, i32 4, ptr @.str.69 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.70 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 8, i8 0, i32 1, i32 0, i32 12, ptr @.str.71 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 2, i8 0, i32 1, i32 0, i32 16, ptr @.str.72 }], section ".init.rodata", align 4
@exynos5410_pin_banks3 = internal constant [1 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 7, i8 0, i32 1, i32 0, i32 0, ptr @.str.67 }], section ".init.rodata", align 4
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpm5\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpm7\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpy7\00", [27 x i8] zeroinitializer }, align 32
@exynos5420_pin_banks0 = internal constant [5 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str.88 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3072, i8 0, i8 8, i8 0, i32 2, i32 0, i32 0, ptr @.str.51 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3104, i8 0, i8 8, i8 0, i32 2, i32 0, i32 4, ptr @.str.52 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3136, i8 0, i8 8, i8 0, i32 2, i32 0, i32 8, ptr @.str.53 }, %struct.samsung_pin_bank_data { ptr @bank_type_alive, i32 3168, i8 0, i8 8, i8 0, i32 2, i32 0, i32 12, ptr @.str.54 }], section ".init.rodata", align 4
@exynos5420_retention_data = internal constant %struct.samsung_retention_data { ptr @exynos5420_retention_regs, i32 12, i32 268435456, ptr @exynos_shared_retention_refcnt, ptr @exynos_retention_init }, section ".init.rodata", align 4
@exynos5420_pin_banks1 = internal constant [13 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 8, i8 0, i32 1, i32 0, i32 4, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 7, i8 0, i32 1, i32 0, i32 8, ptr @.str.78 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 4, i8 0, i32 1, i32 0, i32 12, ptr @.str.79 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 2, i8 0, i32 1, i32 0, i32 16, ptr @.str.80 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 8, i8 0, i32 1, i32 0, i32 20, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 6, i8 0, i32 0, i32 0, i32 0, ptr @.str.60 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 4, i8 0, i32 0, i32 0, i32 0, ptr @.str.61 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 6, i8 0, i32 0, i32 0, i32 0, ptr @.str.62 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 288, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.63 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 320, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.64 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 352, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.65 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 384, i8 0, i8 8, i8 0, i32 0, i32 0, i32 0, ptr @.str.66 }], section ".init.rodata", align 4
@exynos5420_pin_banks2 = internal constant [8 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 2, i8 0, i32 1, i32 0, i32 4, ptr @.str.8 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 6, i8 0, i32 1, i32 0, i32 8, ptr @.str.9 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 8, i8 0, i32 1, i32 0, i32 12, ptr @.str.10 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 8, i8 0, i32 1, i32 0, i32 16, ptr @.str.13 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 8, i8 0, i32 1, i32 0, i32 20, ptr @.str.14 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 2, i8 0, i32 1, i32 0, i32 24, ptr @.str.15 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 4, i8 0, i32 1, i32 0, i32 28, ptr @.str.21 }], section ".init.rodata", align 4
@exynos5420_pin_banks3 = internal constant [9 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 8, i8 0, i32 1, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 32, i8 0, i8 6, i8 0, i32 1, i32 0, i32 4, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 64, i8 0, i8 8, i8 0, i32 1, i32 0, i32 8, ptr @.str.73 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 96, i8 0, i8 5, i8 0, i32 1, i32 0, i32 12, ptr @.str.74 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 128, i8 0, i8 5, i8 0, i32 1, i32 0, i32 16, ptr @.str.75 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 160, i8 0, i8 4, i8 0, i32 1, i32 0, i32 20, ptr @.str.76 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 192, i8 0, i8 8, i8 0, i32 1, i32 0, i32 24, ptr @.str.77 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 224, i8 0, i8 2, i8 0, i32 1, i32 0, i32 28, ptr @.str.81 }, %struct.samsung_pin_bank_data { ptr @bank_type_off, i32 256, i8 0, i8 8, i8 0, i32 1, i32 0, i32 32, ptr @.str.30 }], section ".init.rodata", align 4
@exynos5420_pin_banks4 = internal constant [1 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_off, i32 0, i8 0, i8 7, i8 0, i32 1, i32 0, i32 0, ptr @.str.67 }], section ".init.rodata", align 4
@exynos5420_retention_regs = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 12296, i32 12360, i32 12488, i32 12520, i32 12552, i32 12584, i32 12616, i32 12648, i32 12680, i32 12712, i32 12744, i32 12776], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"bank_type_off\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 25, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 93, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 94, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 95, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 96, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 97, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 98, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 99, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 100, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 101, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 102, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 103, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 104, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 105, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 106, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 107, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 108, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 109, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 110, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 111, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 112, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 113, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 114, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 115, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 116, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 117, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 118, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 119, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 120, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 121, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 122, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"bank_type_alive\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 30, i32 43 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 123, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 124, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 125, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 126, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 66, i32 43 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 68, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 76, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [26 x i8] c"exynos3250_retention_regs\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 187, i32 18 }
@___asan_gen_.221 = private unnamed_addr constant [31 x i8] c"exynos_shared_retention_refcnt\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 148, i32 17 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 167, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 168, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 169, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 170, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 171, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 172, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 173, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 174, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 175, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 176, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 177, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 178, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 179, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 180, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 250, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 251, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [23 x i8] c"exynos4_retention_regs\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 290, i32 18 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 266, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 268, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 269, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 270, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 271, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 272, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 273, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 274, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 275, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 276, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 286, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [29 x i8] c"exynos4_audio_retention_regs\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 308, i32 18 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 409, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 410, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 411, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 412, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 413, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 466, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 467, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 468, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 469, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 470, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 473, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 474, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 477, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 576, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 577, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 580, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 605, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 606, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 668, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 669, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 677, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [26 x i8] c"exynos5420_retention_regs\00", align 1
@___asan_gen_.375 = private constant [48 x i8] c"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 818, i32 18 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @s5pv210_retention_init._entry, ptr @s5pv210_retention_init._entry.38, ptr @s5pv210_retention_init._entry_ptr, ptr @s5pv210_retention_init._entry_ptr.40, ptr @bank_type_off, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @bank_type_alive, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @exynos3250_retention_regs, ptr @exynos_shared_retention_refcnt, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @exynos4_retention_regs, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @exynos4_audio_retention_regs, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @exynos5420_retention_regs], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_type_off to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_type_alive to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_retention_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_retention_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos3250_retention_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_shared_retention_refcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_retention_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4_audio_retention_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_retention_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_eint_gpio_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_eint_wkup_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_pinctrl_suspend(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_pinctrl_resume(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s5pv210_retention_init(ptr nocapture noundef readonly %drvdata, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 28, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34) #3
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @of_iomap(ptr noundef nonnull %call2, i32 noundef 0) #3
  tail call void @of_node_put(ptr noundef nonnull %call2) #3
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %priv = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %priv, align 4
  %disable = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @s5pv210_retention_disable, ptr %disable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end17 ], [ inttoptr (i32 -22 to ptr), %do.end13 ], [ inttoptr (i32 -19 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5pv210_retention_disable(ptr nocapture noundef readonly %drvdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %retention_ctrl = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %drvdata, i32 0, i32 14
  %0 = ptrtoint ptr %retention_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retention_ctrl, align 4
  %priv = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 57344
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !293
  %or = or i32 %4, -268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #3, !srcloc !294
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_retention_init(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282}
!llvm.module.flags = !{!284, !285, !286, !287, !288, !289, !290, !291}
!llvm.ident = !{!292}

!0 = !{ptr @s5pv210_of_data, !1, !"s5pv210_of_data", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 142, i32 44}
!2 = !{ptr @exynos3250_of_data, !3, !"exynos3250_of_data", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 232, i32 44}
!4 = !{ptr @exynos4210_of_data, !5, !"exynos4210_of_data", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 349, i32 44}
!6 = !{ptr @exynos4x12_of_data, !7, !"exynos4x12_of_data", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 456, i32 44}
!8 = !{ptr @exynos5250_of_data, !9, !"exynos5250_of_data", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 561, i32 44}
!10 = !{ptr @exynos5260_of_data, !11, !"exynos5260_of_data", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 639, i32 44}
!12 = !{ptr @exynos5410_of_data, !13, !"exynos5410_of_data", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 751, i32 44}
!14 = !{ptr @exynos5420_of_data, !15, !"exynos5420_of_data", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 890, i32 44}
!16 = !{ptr @s5pv210_pin_ctrl, !17, !"s5pv210_pin_ctrl", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 129, i32 38}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 93, i32 2}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 94, i32 2}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 95, i32 2}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 96, i32 2}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 97, i32 2}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 98, i32 2}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 99, i32 2}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 100, i32 2}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 101, i32 2}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 102, i32 2}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 103, i32 2}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 104, i32 2}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 105, i32 2}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 106, i32 2}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 107, i32 2}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 108, i32 2}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 109, i32 2}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 110, i32 2}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 111, i32 2}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 112, i32 2}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 113, i32 2}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 114, i32 2}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 115, i32 2}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 116, i32 2}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 117, i32 2}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 118, i32 2}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 119, i32 2}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 120, i32 2}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 121, i32 2}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 122, i32 2}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 123, i32 2}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 124, i32 2}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 125, i32 2}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 126, i32 2}
!86 = !{ptr @s5pv210_pin_bank, !87, !"s5pv210_pin_bank", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 91, i32 43}
!88 = !{ptr @bank_type_off, !89, !"bank_type_off", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 25, i32 43}
!90 = !{ptr @bank_type_alive, !91, !"bank_type_alive", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 30, i32 43}
!92 = !{ptr @s5pv210_retention_data, !93, !"s5pv210_retention_data", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 86, i32 44}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 66, i32 43}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 68, i32 3}
!98 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @s5pv210_retention_init._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @s5pv210_retention_init._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 76, i32 3}
!104 = !{ptr @s5pv210_retention_init._entry.38, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @s5pv210_retention_init._entry_ptr.40, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @exynos3250_pin_ctrl, !107, !"exynos3250_pin_ctrl", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 211, i32 38}
!108 = !{ptr @exynos3250_pin_banks0, !109, !"exynos3250_pin_banks0", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 151, i32 43}
!110 = !{ptr @exynos3250_retention_data, !111, !"exynos3250_retention_data", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 199, i32 44}
!112 = !{ptr @exynos3250_retention_regs, !113, !"exynos3250_retention_regs", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 187, i32 18}
!114 = !{ptr @exynos_shared_retention_refcnt, !115, !"exynos_shared_retention_refcnt", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 148, i32 17}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 167, i32 2}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 168, i32 2}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 169, i32 2}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 170, i32 2}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 171, i32 2}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 172, i32 2}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 173, i32 2}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 174, i32 2}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 175, i32 2}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 176, i32 2}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 177, i32 2}
!138 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 178, i32 2}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 179, i32 2}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 180, i32 2}
!144 = !{ptr @exynos3250_pin_banks1, !145, !"exynos3250_pin_banks1", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 163, i32 43}
!146 = !{ptr @exynos4210_pin_ctrl, !147, !"exynos4210_pin_ctrl", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 323, i32 38}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 250, i32 2}
!150 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 251, i32 2}
!152 = !{ptr @exynos4210_pin_banks0, !153, !"exynos4210_pin_banks0", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 238, i32 43}
!154 = !{ptr @exynos4_retention_data, !155, !"exynos4_retention_data", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 299, i32 44}
!156 = !{ptr @exynos4_retention_regs, !157, !"exynos4_retention_regs", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 290, i32 18}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 266, i32 2}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 268, i32 2}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 269, i32 2}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 270, i32 2}
!166 = !{ptr @.str.61, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 271, i32 2}
!168 = !{ptr @.str.62, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 272, i32 2}
!170 = !{ptr @.str.63, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 273, i32 2}
!172 = !{ptr @.str.64, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 274, i32 2}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 275, i32 2}
!176 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 276, i32 2}
!178 = !{ptr @exynos4210_pin_banks1, !179, !"exynos4210_pin_banks1", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 259, i32 43}
!180 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 286, i32 2}
!182 = !{ptr @exynos4210_pin_banks2, !183, !"exynos4210_pin_banks2", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 284, i32 43}
!184 = !{ptr @exynos4_audio_retention_data, !185, !"exynos4_audio_retention_data", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 312, i32 44}
!186 = !{ptr @exynos4_audio_retention_regs, !187, !"exynos4_audio_retention_regs", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 308, i32 18}
!188 = !{ptr @exynos4x12_pin_ctrl, !189, !"exynos4x12_pin_ctrl", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 420, i32 38}
!190 = !{ptr @exynos4x12_pin_banks0, !191, !"exynos4x12_pin_banks0", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 355, i32 43}
!192 = !{ptr @exynos4x12_pin_banks1, !193, !"exynos4x12_pin_banks1", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 373, i32 43}
!194 = !{ptr @exynos4x12_pin_banks2, !195, !"exynos4x12_pin_banks2", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 401, i32 43}
!196 = !{ptr @.str.68, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 409, i32 2}
!198 = !{ptr @.str.69, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 410, i32 2}
!200 = !{ptr @.str.70, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 411, i32 2}
!202 = !{ptr @.str.71, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 412, i32 2}
!204 = !{ptr @.str.72, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 413, i32 2}
!206 = !{ptr @exynos4x12_pin_banks3, !207, !"exynos4x12_pin_banks3", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 407, i32 43}
!208 = !{ptr @exynos5250_pin_ctrl, !209, !"exynos5250_pin_ctrl", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 525, i32 38}
!210 = !{ptr @.str.73, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 466, i32 2}
!212 = !{ptr @.str.74, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 467, i32 2}
!214 = !{ptr @.str.75, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 468, i32 2}
!216 = !{ptr @.str.76, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 469, i32 2}
!218 = !{ptr @.str.77, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 470, i32 2}
!220 = !{ptr @.str.78, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 473, i32 2}
!222 = !{ptr @.str.79, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 474, i32 2}
!224 = !{ptr @.str.80, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 477, i32 2}
!226 = !{ptr @exynos5250_pin_banks0, !227, !"exynos5250_pin_banks0", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 462, i32 43}
!228 = !{ptr @exynos5250_pin_banks1, !229, !"exynos5250_pin_banks1", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 492, i32 43}
!230 = !{ptr @exynos5250_pin_banks2, !231, !"exynos5250_pin_banks2", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 506, i32 43}
!232 = !{ptr @exynos5250_pin_banks3, !233, !"exynos5250_pin_banks3", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 516, i32 43}
!234 = !{ptr @exynos5260_pin_ctrl, !235, !"exynos5260_pin_ctrl", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 613, i32 38}
!236 = !{ptr @.str.81, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 576, i32 2}
!238 = !{ptr @.str.82, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 577, i32 2}
!240 = !{ptr @.str.83, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 580, i32 2}
!242 = !{ptr @exynos5260_pin_banks0, !243, !"exynos5260_pin_banks0", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 567, i32 43}
!244 = !{ptr @exynos5260_pin_banks1, !245, !"exynos5260_pin_banks1", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 593, i32 43}
!246 = !{ptr @.str.84, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 605, i32 2}
!248 = !{ptr @.str.85, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 606, i32 2}
!250 = !{ptr @exynos5260_pin_banks2, !251, !"exynos5260_pin_banks2", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 603, i32 43}
!252 = !{ptr @exynos5410_pin_ctrl, !253, !"exynos5410_pin_ctrl", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 718, i32 38}
!254 = !{ptr @.str.86, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 668, i32 2}
!256 = !{ptr @.str.87, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 669, i32 2}
!258 = !{ptr @.str.88, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 677, i32 2}
!260 = !{ptr @exynos5410_pin_banks0, !261, !"exynos5410_pin_banks0", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 645, i32 43}
!262 = !{ptr @exynos5410_pin_banks1, !263, !"exynos5410_pin_banks1", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 685, i32 43}
!264 = !{ptr @exynos5410_pin_banks2, !265, !"exynos5410_pin_banks2", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 699, i32 43}
!266 = !{ptr @exynos5410_pin_banks3, !267, !"exynos5410_pin_banks3", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 709, i32 43}
!268 = !{ptr @exynos5420_pin_ctrl, !269, !"exynos5420_pin_ctrl", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 845, i32 38}
!270 = !{ptr @exynos5420_pin_banks0, !271, !"exynos5420_pin_banks0", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 757, i32 43}
!272 = !{ptr @exynos5420_retention_data, !273, !"exynos5420_retention_data", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 833, i32 44}
!274 = !{ptr @exynos5420_retention_regs, !275, !"exynos5420_retention_regs", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 818, i32 18}
!276 = !{ptr @exynos5420_pin_banks1, !277, !"exynos5420_pin_banks1", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 767, i32 43}
!278 = !{ptr @exynos5420_pin_banks2, !279, !"exynos5420_pin_banks2", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 785, i32 43}
!280 = !{ptr @exynos5420_pin_banks3, !281, !"exynos5420_pin_banks3", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 798, i32 43}
!282 = !{ptr @exynos5420_pin_banks4, !283, !"exynos5420_pin_banks4", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/samsung/pinctrl-exynos-arm.c", i32 812, i32 43}
!284 = !{i32 1, !"wchar_size", i32 2}
!285 = !{i32 1, !"min_enum_size", i32 4}
!286 = !{i32 8, !"branch-target-enforcement", i32 0}
!287 = !{i32 8, !"sign-return-address", i32 0}
!288 = !{i32 8, !"sign-return-address-all", i32 0}
!289 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!290 = !{i32 7, !"uwtable", i32 1}
!291 = !{i32 7, !"frame-pointer", i32 2}
!292 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!293 = !{i64 4921970}
!294 = !{i64 4921552}
