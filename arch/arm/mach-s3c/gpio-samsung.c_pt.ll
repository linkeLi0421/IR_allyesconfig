; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/gpio-samsung.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/gpio-samsung.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+s3c_gpio_cfgpin\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c_gpio_cfgpin\09\09\09\09"
module asm "\09.long\09__crc_s3c_gpio_cfgpin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c_gpio_cfgpin:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c_gpio_cfgpin\22\09\09\09\09\09"
module asm "__kstrtabns_s3c_gpio_cfgpin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+s3c_gpio_cfgpin_range\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c_gpio_cfgpin_range\09\09\09\09"
module asm "\09.long\09__crc_s3c_gpio_cfgpin_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c_gpio_cfgpin_range:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c_gpio_cfgpin_range\22\09\09\09\09\09"
module asm "__kstrtabns_s3c_gpio_cfgpin_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+s3c_gpio_cfgall_range\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c_gpio_cfgall_range\09\09\09\09"
module asm "\09.long\09__crc_s3c_gpio_cfgall_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c_gpio_cfgall_range:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c_gpio_cfgall_range\22\09\09\09\09\09"
module asm "__kstrtabns_s3c_gpio_cfgall_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3c_gpio_getcfg\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c_gpio_getcfg\09\09\09\09"
module asm "\09.long\09__crc_s3c_gpio_getcfg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c_gpio_getcfg:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c_gpio_getcfg\22\09\09\09\09\09"
module asm "__kstrtabns_s3c_gpio_getcfg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3c_gpio_setpull\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c_gpio_setpull\09\09\09\09"
module asm "\09.long\09__crc_s3c_gpio_setpull\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c_gpio_setpull:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c_gpio_setpull\22\09\09\09\09\09"
module asm "__kstrtabns_s3c_gpio_setpull:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3c_gpio_getpull\22, \22a\22\09"
module asm "\09.weak\09__crc_s3c_gpio_getpull\09\09\09\09"
module asm "\09.long\09__crc_s3c_gpio_getpull\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3c_gpio_getpull:\09\09\09\09\09"
module asm "\09.asciz \09\22s3c_gpio_getpull\22\09\09\09\09\09"
module asm "__kstrtabns_s3c_gpio_getpull:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.samsung_gpio_cfg = type { i32, ptr, ptr, ptr, ptr }
%struct.samsung_gpio_chip = type { %struct.gpio_chip, ptr, ptr, ptr, i32, i32, %struct.spinlock, [4 x i32], i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.samsung_gpio_pm = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }

@s3c24xx_gpiocfg_default = dso_local global { %struct.samsung_gpio_cfg, [44 x i8] } { %struct.samsung_gpio_cfg { i32 0, ptr null, ptr null, ptr @samsung_gpio_getcfg_2bit, ptr @samsung_gpio_setcfg_2bit }, [44 x i8] zeroinitializer }, align 32
@s3c24xx_gpios = dso_local global { [0 x %struct.samsung_gpio_chip], [32 x i8] } zeroinitializer, align 32
@__initcall__kmod_gpio_samsung__231_1199_samsung_gpiolib_init1 = internal global ptr @samsung_gpiolib_init, section ".initcall1.init", align 4
@__kstrtab_s3c_gpio_cfgpin = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c_gpio_cfgpin = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c_gpio_cfgpin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c_gpio_cfgpin to i32), ptr @__kstrtab_s3c_gpio_cfgpin, ptr @__kstrtabns_s3c_gpio_cfgpin }, section "___ksymtab+s3c_gpio_cfgpin", align 4
@__kstrtab_s3c_gpio_cfgpin_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c_gpio_cfgpin_range = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c_gpio_cfgpin_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c_gpio_cfgpin_range to i32), ptr @__kstrtab_s3c_gpio_cfgpin_range, ptr @__kstrtabns_s3c_gpio_cfgpin_range }, section "___ksymtab_gpl+s3c_gpio_cfgpin_range", align 4
@__kstrtab_s3c_gpio_cfgall_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c_gpio_cfgall_range = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c_gpio_cfgall_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c_gpio_cfgall_range to i32), ptr @__kstrtab_s3c_gpio_cfgall_range, ptr @__kstrtabns_s3c_gpio_cfgall_range }, section "___ksymtab_gpl+s3c_gpio_cfgall_range", align 4
@__kstrtab_s3c_gpio_getcfg = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c_gpio_getcfg = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c_gpio_getcfg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c_gpio_getcfg to i32), ptr @__kstrtab_s3c_gpio_getcfg, ptr @__kstrtabns_s3c_gpio_getcfg }, section "___ksymtab+s3c_gpio_getcfg", align 4
@__kstrtab_s3c_gpio_setpull = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c_gpio_setpull = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c_gpio_setpull = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c_gpio_setpull to i32), ptr @__kstrtab_s3c_gpio_setpull, ptr @__kstrtabns_s3c_gpio_setpull }, section "___ksymtab+s3c_gpio_setpull", align 4
@__kstrtab_s3c_gpio_getpull = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3c_gpio_getpull = external dso_local constant [0 x i8], align 1
@__ksymtab_s3c_gpio_getpull = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3c_gpio_getpull to i32), ptr @__kstrtab_s3c_gpio_getpull, ptr @__kstrtabns_s3c_gpio_getpull }, section "___ksymtab+s3c_gpio_getpull", align 4
@s3c_gpios = dso_local global { [204 x ptr], [208 x i8] } zeroinitializer, align 32
@samsung_gpio_cfgs = internal global { [8 x %struct.samsung_gpio_cfg], [32 x i8] } { [8 x %struct.samsung_gpio_cfg] [%struct.samsung_gpio_cfg zeroinitializer, %struct.samsung_gpio_cfg { i32 3, ptr null, ptr null, ptr null, ptr null }, %struct.samsung_gpio_cfg { i32 7, ptr null, ptr null, ptr null, ptr null }, %struct.samsung_gpio_cfg { i32 15, ptr null, ptr null, ptr null, ptr null }, %struct.samsung_gpio_cfg { i32 0, ptr null, ptr null, ptr @samsung_gpio_getcfg_2bit, ptr @samsung_gpio_setcfg_2bit }, %struct.samsung_gpio_cfg { i32 2, ptr null, ptr null, ptr @samsung_gpio_getcfg_2bit, ptr @samsung_gpio_setcfg_2bit }, %struct.samsung_gpio_cfg { i32 3, ptr null, ptr null, ptr @samsung_gpio_getcfg_2bit, ptr @samsung_gpio_setcfg_2bit }, %struct.samsung_gpio_cfg { i32 0, ptr null, ptr null, ptr @samsung_gpio_getcfg_2bit, ptr @samsung_gpio_setcfg_2bit }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_gpios_2bit = internal global { [7 x %struct.samsung_gpio_chip], [752 x i8] } { [7 x %struct.samsung_gpio_chip] [%struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 38, i16 16, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr getelementptr (i8, ptr @samsung_gpio_cfgs, i64 120), ptr null, ptr inttoptr (i32 -162529120 to ptr), i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 74, i16 16, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr getelementptr (i8, ptr @samsung_gpio_cfgs, i64 140), ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 91, i16 12, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr getelementptr (i8, ptr @samsung_gpio_cfgs, i64 140), ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 161, i16 16, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr getelementptr (i8, ptr @samsung_gpio_cfgs, i64 120), ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 178, i16 15, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr getelementptr (i8, ptr @samsung_gpio_cfgs, i64 120), ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 194, i16 9, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr getelementptr (i8, ptr @samsung_gpio_cfgs, i64 120), ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_gpiolib_to_irq, ptr null, ptr null, ptr null, i32 144, i16 16, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr getelementptr (i8, ptr @samsung_gpio_cfgs, i64 100), ptr null, ptr inttoptr (i32 -162527184 to ptr), i32 101, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }], [752 x i8] zeroinitializer }, align 32
@s3c64xx_gpios_4bit = internal global { [7 x %struct.samsung_gpio_chip], [752 x i8] } { [7 x %struct.samsung_gpio_chip] [%struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.19, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 8, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr null, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 9, i16 7, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr null, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 17, i16 8, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr null, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 26, i16 5, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr null, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 32, i16 5, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr @samsung_gpio_cfgs, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 55, i16 7, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr null, ptr null, ptr inttoptr (i32 -162529088 to ptr), i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c64xx_gpiolib_mbank_to_irq, ptr null, ptr null, ptr null, i32 137, i16 6, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr getelementptr (i8, ptr @samsung_gpio_cfgs, i64 20), ptr null, ptr inttoptr (i32 -162527200 to ptr), i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }], [752 x i8] zeroinitializer }, align 32
@s3c64xx_gpios_4bit2 = internal global { [3 x %struct.samsung_gpio_chip], [336 x i8] } { [3 x %struct.samsung_gpio_chip] [%struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.29, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 63, i16 10, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr null, ptr null, ptr inttoptr (i32 -162529052 to ptr), i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 104, i16 16, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr @samsung_gpio_cfgs, ptr null, ptr inttoptr (i32 -162527228 to ptr), i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }, %struct.samsung_gpio_chip { %struct.gpio_chip { ptr @.str.31, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c64xx_gpiolib_lbank_to_irq, ptr null, ptr null, ptr null, i32 121, i16 15, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr getelementptr (i8, ptr @samsung_gpio_cfgs, i64 20), ptr null, ptr inttoptr (i32 -162527212 to ptr), i32 0, i32 0, %struct.spinlock zeroinitializer, [4 x i32] zeroinitializer, i32 0 }], [336 x i8] zeroinitializer }, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@samsung_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@samsung_gpio_pm_2bit = external dso_local global %struct.samsung_gpio_pm, align 4
@samsung_gpiolib_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@samsung_gpiolib_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gpio: %s has missing PM functions\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"samsung_gpiolib_add\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arch/arm/mach-s3c/gpio-samsung.c\00", [63 x i8] zeroinitializer }, align 32
@samsung_gpiolib_add._entry_ptr = internal global ptr @samsung_gpiolib_add._entry, section ".printk_index", align 4
@samsung_gpiolib_add._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013gpio: %s has no PM function\0A\00", [33 x i8] zeroinitializer }, align 32
@samsung_gpiolib_add._entry_ptr.6 = internal global ptr @samsung_gpiolib_add._entry.4, section ".printk_index", align 4
@samsung_gpiolib_add.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@samsung_gpiolib_add.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPF\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPI\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPJ\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPO\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPP\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPQ\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPN\00", [28 x i8] zeroinitializer }, align 32
@samsung_gpio_pm_4bit = external dso_local global %struct.samsung_gpio_pm, align 4
@samsung_gpiolib_4bit_input.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_samsung\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung_gpiolib_4bit_input\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: %p: CON now %08lx\0A\00", [41 x i8] zeroinitializer }, align 32
@samsung_gpiolib_4bit_output.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"samsung_gpiolib_4bit_output\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: %p: CON %08lx, DAT %08lx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPA\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPB\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPC\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPD\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPE\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPG\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPM\00", [28 x i8] zeroinitializer }, align 32
@samsung_gpiolib_4bit2_input.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"samsung_gpiolib_4bit2_input\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %p: CON %08lx\0A\00", [45 x i8] zeroinitializer }, align 32
@samsung_gpiolib_4bit2_output.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.28, ptr @.str.3, ptr @.str.18, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"samsung_gpiolib_4bit2_output\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPH\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPK\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GPL\00", [28 x i8] zeroinitializer }, align 32
@switch.table.s3c2443_gpio_setpull = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.s3c2443_gpio_getpull = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 0, i32 1, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 910163968, i64 910229504]
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"s3c24xx_gpiocfg_default\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 371, i32 25 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"s3c24xx_gpios\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 897, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"s3c_gpios\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 699, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"samsung_gpio_cfgs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 383, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"s3c64xx_gpios_2bit\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1108, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"s3c64xx_gpios_4bit\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1025, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"s3c64xx_gpios_4bit2\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1078, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 733, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 747, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 750, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 754, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1116, i32 13 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1123, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1130, i32 13 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1137, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1144, i32 13 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1151, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1160, i32 13 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 505, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 533, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1031, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1037, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1043, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1049, i32 13 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1056, i32 13 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1063, i32 13 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1071, i32 13 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 577, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 612, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1085, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1093, i32 13 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [36 x i8] c"../arch/arm/mach-s3c/gpio-samsung.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1101, i32 13 }
@___asan_gen_.160 = private unnamed_addr constant [34 x i8] c"switch.table.s3c2443_gpio_setpull\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [34 x i8] c"switch.table.s3c2443_gpio_getpull\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @__initcall__kmod_gpio_samsung__231_1199_samsung_gpiolib_init1, ptr @__ksymtab_s3c_gpio_cfgall_range, ptr @__ksymtab_s3c_gpio_cfgpin, ptr @__ksymtab_s3c_gpio_cfgpin_range, ptr @__ksymtab_s3c_gpio_getcfg, ptr @__ksymtab_s3c_gpio_getpull, ptr @__ksymtab_s3c_gpio_setpull, ptr @samsung_gpiolib_add._entry, ptr @samsung_gpiolib_add._entry.4, ptr @samsung_gpiolib_add._entry_ptr, ptr @samsung_gpiolib_add._entry_ptr.6, ptr @s3c24xx_gpiocfg_default, ptr @s3c24xx_gpios, ptr @s3c_gpios, ptr @samsung_gpio_cfgs, ptr @s3c64xx_gpios_2bit, ptr @s3c64xx_gpios_4bit, ptr @s3c64xx_gpios_4bit2, ptr @samsung_gpiolib_add.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @samsung_gpiolib_add.lock_key, ptr @samsung_gpiolib_add.request_key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @switch.table.s3c2443_gpio_setpull, ptr @switch.table.s3c2443_gpio_getpull], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_gpiocfg_default to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_gpios to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_gpios to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpio_cfgs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_gpios_2bit to i32), i32 3024, i32 3776, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_gpios_4bit to i32), i32 3024, i32 3776, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_gpios_4bit2 to i32), i32 1296, i32 1632, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpiolib_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpiolib_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpiolib_add._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpiolib_add.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpiolib_add.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s3c2443_gpio_setpull to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s3c2443_gpio_getpull to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @samsung_gpio_setpull_updown(ptr nocapture noundef readonly %chip, i32 noundef %off, i32 noundef %pull) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %mul = shl i32 %off, 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !103
  %shl = shl i32 3, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  %shl1 = shl i32 %pull, %mul
  %or = or i32 %and, %shl1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #7, !srcloc !104
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @samsung_gpio_getpull_updown(ptr nocapture noundef readonly %chip, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %mul = shl i32 %off, 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !103
  %shr = lshr i32 %2, %mul
  %and = and i32 %shr, 3
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c2443_gpio_setpull(ptr nocapture noundef readonly %chip, i32 noundef %off, i32 noundef %pull) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pull)
  %0 = icmp ult i32 %pull, 3
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.s3c2443_gpio_setpull, i32 0, i32 %pull
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %pull.addr.0 = phi i32 [ %pull, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %base.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  %mul.i = shl i32 %off, 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %shl.i = shl i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %4, %neg.i
  %shl1.i = shl i32 %pull.addr.0, %mul.i
  %or.i = or i32 %and.i, %shl1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #7, !srcloc !104
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c2443_gpio_getpull(ptr nocapture noundef readonly %chip, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %mul.i = shl i32 %off, 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %shr.i = lshr i32 %2, %mul.i
  %and.i = and i32 %shr.i, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.s3c2443_gpio_getpull, i32 0, i32 %and.i
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c24xx_gpio_getpull_1up(ptr nocapture noundef readonly %chip, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %shl.i = shl nuw i32 1, %off
  %and.i = and i32 %2, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 2, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c24xx_gpio_setpull_1up(ptr nocapture noundef readonly %chip, i32 noundef %off, i32 noundef %pull) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %3 = zext i32 %pull to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pull, label %entry.s3c24xx_gpio_setpull_1.exit_crit_edge [
    i32 2, label %if.then.i
    i32 0, label %if.then2.i
  ]

entry.s3c24xx_gpio_setpull_1.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c24xx_gpio_setpull_1.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 1, %off
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %2, %neg.i
  br label %if.end5.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl3.i = shl nuw i32 1, %off
  %or.i = or i32 %2, %shl3.i
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.then.i
  %pup.0.i = phi i32 [ %and.i, %if.then.i ], [ %or.i, %if.then2.i ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %pup.0.i) #7, !srcloc !104
  br label %s3c24xx_gpio_setpull_1.exit

s3c24xx_gpio_setpull_1.exit:                      ; preds = %if.end5.i, %entry.s3c24xx_gpio_setpull_1.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -22, %entry.s3c24xx_gpio_setpull_1.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c24xx_gpio_getpull_1down(ptr nocapture noundef readonly %chip, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %3 = xor i32 %2, -1
  %4 = lshr i32 %3, %off
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c24xx_gpio_setpull_1down(ptr nocapture noundef readonly %chip, i32 noundef %off, i32 noundef %pull) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !103
  %3 = zext i32 %pull to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %pull, label %entry.s3c24xx_gpio_setpull_1.exit_crit_edge [
    i32 1, label %if.then.i
    i32 0, label %if.then2.i
  ]

entry.s3c24xx_gpio_setpull_1.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %s3c24xx_gpio_setpull_1.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 1, %off
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %2, %neg.i
  br label %if.end5.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl3.i = shl nuw i32 1, %off
  %or.i = or i32 %2, %shl3.i
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.then.i
  %pup.0.i = phi i32 [ %and.i, %if.then.i ], [ %or.i, %if.then2.i ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %pup.0.i) #7, !srcloc !104
  br label %s3c24xx_gpio_setpull_1.exit

s3c24xx_gpio_setpull_1.exit:                      ; preds = %if.end5.i, %entry.s3c24xx_gpio_setpull_1.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -22, %entry.s3c24xx_gpio_setpull_1.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpio_getcfg_2bit(ptr nocapture noundef readonly %chip, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !103
  %mul = shl i32 %off, 1
  %shr = lshr i32 %2, %mul
  %and = and i32 %shr, 3
  %or = or i32 %and, -16
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpio_setcfg_2bit(ptr nocapture noundef readonly %chip, i32 noundef %off, i32 noundef %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mul = shl i32 %off, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %cfg)
  %cmp = icmp ugt i32 %cfg, -17
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %and1 = and i32 %cfg, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and1)
  %cmp2 = icmp ugt i32 %and1, 3
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %and1, %mul
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %cfg.addr.0 = phi i32 [ %shl, %if.end ], [ %cfg, %entry.if.end4_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !103
  %shl5 = shl i32 3, %mul
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %2, %neg
  %or = or i32 %and6, %cfg.addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or) #7, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @samsung_gpiolib_to_irq(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %irq_base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_base, align 4
  %add = add i32 %1, %offset
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpiolib_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %0 = load ptr, ptr @of_root, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @samsung_cpu_id to i32))
  %1 = load i32, ptr @samsung_cpu_id, align 4
  %and.i = and i32 %1, -4096
  %2 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %and.i, label %if.end.return_crit_edge [
    i32 910163968, label %if.end.if.then4_crit_edge
    i32 910229504, label %if.end.if.then4_crit_edge10
  ]

if.end.if.then4_crit_edge10:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.if.then4_crit_edge10
  tail call fastcc void @samsung_gpiolib_set_cfg() #10
  tail call fastcc void @samsung_gpiolib_add_2bit_chips() #10
  tail call fastcc void @samsung_gpiolib_add_4bit_chips() #10
  tail call fastcc void @samsung_gpiolib_add_4bit2_chips() #10
  br label %return

return:                                           ; preds = %if.then4, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_gpio_cfgpin(i32 noundef %pin, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %pin)
  %cmp.i = icmp ult i32 %pin, 204
  br i1 %cmp.i, label %samsung_gpiolib_getchip.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

samsung_gpiolib_getchip.exit:                     ; preds = %entry
  %arrayidx.i = getelementptr [204 x ptr], ptr @s3c_gpios, i32 0, i32 %pin
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %samsung_gpiolib_getchip.exit.cleanup_crit_edge, label %if.end

samsung_gpiolib_getchip.exit.cleanup_crit_edge:   ; preds = %samsung_gpiolib_getchip.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %samsung_gpiolib_getchip.exit
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %sub = sub i32 %pin, %3
  %lock = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %config1.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config1.i, align 4
  %set_config.i = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %set_config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_config.i, align 4
  %call.i = tail call i32 %7(ptr noundef nonnull %1, i32 noundef %sub, i32 noundef %config) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %samsung_gpiolib_getchip.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %samsung_gpiolib_getchip.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_gpio_cfgpin_range(i32 noundef %start, i32 noundef %nr, i32 noundef %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp.not7 = icmp eq i32 %nr, 0
  br i1 %cmp.not7, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %umax = call i32 @llvm.umax.i32(i32 %start, i32 204)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %nr.addr.09 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %nr, %for.body.preheader ]
  %start.addr.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %start, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.08, i32 %umax)
  %exitcond.not = icmp eq i32 %start.addr.08, %umax
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %samsung_gpiolib_getchip.exit.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

samsung_gpiolib_getchip.exit.i:                   ; preds = %for.body
  %arrayidx.i.i = getelementptr [204 x ptr], ptr @s3c_gpios, i32 0, i32 %start.addr.08
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %samsung_gpiolib_getchip.exit.i.cleanup_crit_edge, label %s3c_gpio_cfgpin.exit

samsung_gpiolib_getchip.exit.i.cleanup_crit_edge: ; preds = %samsung_gpiolib_getchip.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s3c_gpio_cfgpin.exit:                             ; preds = %samsung_gpiolib_getchip.exit.i
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i, align 4
  %sub.i = sub i32 %start.addr.08, %3
  %lock.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 6
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %config1.i.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config1.i.i, align 4
  %set_config.i.i = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %set_config.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_config.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef nonnull %1, i32 noundef %sub.i, i32 noundef %cfg) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp1.not, label %for.inc, label %s3c_gpio_cfgpin.exit.cleanup_crit_edge

s3c_gpio_cfgpin.exit.cleanup_crit_edge:           ; preds = %s3c_gpio_cfgpin.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %s3c_gpio_cfgpin.exit
  %dec = add i32 %nr.addr.09, -1
  %inc = add i32 %start.addr.08, 1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %s3c_gpio_cfgpin.exit.cleanup_crit_edge, %samsung_gpiolib_getchip.exit.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %samsung_gpiolib_getchip.exit.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call.i.i, %s3c_gpio_cfgpin.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_gpio_cfgall_range(i32 noundef %start, i32 noundef %nr, i32 noundef %cfg, i32 noundef %pull) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp.not20 = icmp eq i32 %nr, 0
  br i1 %cmp.not20, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %umax = call i32 @llvm.umax.i32(i32 %start, i32 204)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %start.addr.022 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %start, %for.body.preheader ]
  %nr.addr.021 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %nr, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.addr.022, i32 %umax)
  %exitcond.not = icmp eq i32 %start.addr.022, %umax
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %samsung_gpiolib_getchip.exit.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

samsung_gpiolib_getchip.exit.i:                   ; preds = %for.body
  %arrayidx.i.i = getelementptr [204 x ptr], ptr @s3c_gpios, i32 0, i32 %start.addr.022
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %samsung_gpiolib_getchip.exit.i.cleanup_crit_edge, label %samsung_gpiolib_getchip.exit.i10

samsung_gpiolib_getchip.exit.i.cleanup_crit_edge: ; preds = %samsung_gpiolib_getchip.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

samsung_gpiolib_getchip.exit.i10:                 ; preds = %samsung_gpiolib_getchip.exit.i
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i, align 4
  %sub.i = sub i32 %start.addr.022, %3
  %lock.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 6
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %config.i.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i.i, align 4
  %set_pull.i.i = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %set_pull.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_pull.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef nonnull %1, i32 noundef %sub.i, i32 noundef %pull) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i9 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i9, label %samsung_gpiolib_getchip.exit.i10.cleanup_crit_edge, label %s3c_gpio_cfgpin.exit

samsung_gpiolib_getchip.exit.i10.cleanup_crit_edge: ; preds = %samsung_gpiolib_getchip.exit.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s3c_gpio_cfgpin.exit:                             ; preds = %samsung_gpiolib_getchip.exit.i10
  %base.i11 = getelementptr inbounds %struct.gpio_chip, ptr %.pr, i32 0, i32 19
  %9 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i11, align 4
  %sub.i12 = sub i32 %start.addr.022, %10
  %lock.i13 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %.pr, i32 0, i32 6
  %call4.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i13) #7
  %config1.i.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %.pr, i32 0, i32 1
  %11 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config1.i.i, align 4
  %set_config.i.i = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %set_config.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_config.i.i, align 4
  %call.i.i15 = tail call i32 %14(ptr noundef nonnull %.pr, i32 noundef %sub.i12, i32 noundef %cfg) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i13, i32 noundef %call4.i14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %cmp2.not = icmp eq i32 %call.i.i15, 0
  br i1 %cmp2.not, label %for.inc, label %s3c_gpio_cfgpin.exit.cleanup_crit_edge

s3c_gpio_cfgpin.exit.cleanup_crit_edge:           ; preds = %s3c_gpio_cfgpin.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %s3c_gpio_cfgpin.exit
  %dec = add i32 %nr.addr.021, -1
  %inc = add i32 %start.addr.022, 1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %s3c_gpio_cfgpin.exit.cleanup_crit_edge, %samsung_gpiolib_getchip.exit.i10.cleanup_crit_edge, %samsung_gpiolib_getchip.exit.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %samsung_gpiolib_getchip.exit.i.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %samsung_gpiolib_getchip.exit.i10.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call.i.i15, %s3c_gpio_cfgpin.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_gpio_setpull(i32 noundef %pin, i32 noundef %pull) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %pin)
  %cmp.i = icmp ult i32 %pin, 204
  br i1 %cmp.i, label %samsung_gpiolib_getchip.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

samsung_gpiolib_getchip.exit:                     ; preds = %entry
  %arrayidx.i = getelementptr [204 x ptr], ptr @s3c_gpios, i32 0, i32 %pin
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %samsung_gpiolib_getchip.exit.cleanup_crit_edge, label %if.end

samsung_gpiolib_getchip.exit.cleanup_crit_edge:   ; preds = %samsung_gpiolib_getchip.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %samsung_gpiolib_getchip.exit
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %sub = sub i32 %pin, %3
  %lock = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %config.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i, align 4
  %set_pull.i = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %set_pull.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_pull.i, align 4
  %call.i = tail call i32 %7(ptr noundef nonnull %1, i32 noundef %sub, i32 noundef %pull) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %samsung_gpiolib_getchip.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %samsung_gpiolib_getchip.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_gpio_getcfg(i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %pin)
  %cmp.i = icmp ult i32 %pin, 204
  br i1 %cmp.i, label %samsung_gpiolib_getchip.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

samsung_gpiolib_getchip.exit:                     ; preds = %entry
  %arrayidx.i = getelementptr [204 x ptr], ptr @s3c_gpios, i32 0, i32 %pin
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %samsung_gpiolib_getchip.exit.if.end_crit_edge, label %if.then

samsung_gpiolib_getchip.exit.if.end_crit_edge:    ; preds = %samsung_gpiolib_getchip.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %samsung_gpiolib_getchip.exit
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %sub = sub i32 %pin, %3
  %lock = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %config.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i, align 4
  %get_config.i = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %get_config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_config.i, align 4
  %call.i = tail call i32 %7(ptr noundef nonnull %1, i32 noundef %sub) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %samsung_gpiolib_getchip.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then ], [ 0, %samsung_gpiolib_getchip.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_gpio_getpull(i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %pin)
  %cmp.i = icmp ult i32 %pin, 204
  br i1 %cmp.i, label %samsung_gpiolib_getchip.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

samsung_gpiolib_getchip.exit:                     ; preds = %entry
  %arrayidx.i = getelementptr [204 x ptr], ptr @s3c_gpios, i32 0, i32 %pin
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %samsung_gpiolib_getchip.exit.if.end_crit_edge, label %if.then

samsung_gpiolib_getchip.exit.if.end_crit_edge:    ; preds = %samsung_gpiolib_getchip.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %samsung_gpiolib_getchip.exit
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %sub = sub i32 %pin, %3
  %lock = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %config.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i, align 4
  %get_pull.i = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %get_pull.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pull.i, align 4
  %call.i = tail call i32 %7(ptr noundef nonnull %1, i32 noundef %sub) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %samsung_gpiolib_getchip.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %pup.0 = phi i32 [ %call.i, %if.then ], [ 0, %samsung_gpiolib_getchip.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %pup.0
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_gpiolib_set_cfg() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %nr_chips.addr.02 = phi i32 [ 8, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %chipcfg.addr.01 = phi ptr [ @samsung_gpio_cfgs, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %set_config = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %chipcfg.addr.01, i32 0, i32 4
  %0 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_config, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @samsung_gpio_setcfg_4bit, ptr %set_config, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %get_config = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %chipcfg.addr.01, i32 0, i32 3
  %3 = ptrtoint ptr %get_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_config, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %get_config to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @samsung_gpio_getcfg_4bit, ptr %get_config, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %set_pull = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %chipcfg.addr.01, i32 0, i32 2
  %6 = ptrtoint ptr %set_pull to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_pull, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %set_pull to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @samsung_gpio_setpull_updown, ptr %set_pull, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %get_pull = getelementptr inbounds %struct.samsung_gpio_cfg, ptr %chipcfg.addr.01, i32 0, i32 1
  %9 = ptrtoint ptr %get_pull to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_pull, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.then11, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %get_pull to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @samsung_gpio_getpull_updown, ptr %get_pull, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.end9.for.inc_crit_edge
  %dec = add nsw i32 %nr_chips.addr.02, -1
  %incdec.ptr = getelementptr %struct.samsung_gpio_cfg, ptr %chipcfg.addr.01, i32 1
  %cmp = icmp ugt i32 %nr_chips.addr.02, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_gpiolib_add_2bit_chips() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %if.end13.for.body_crit_edge ]
  %chip.addr.01 = phi ptr [ @s3c64xx_gpios_2bit, %entry ], [ %incdec.ptr, %if.end13.for.body_crit_edge ]
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %chip.addr.01, i32 0, i32 8
  %0 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @samsung_gpiolib_2bit_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %chip.addr.01, i32 0, i32 9
  %1 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @samsung_gpiolib_2bit_output, ptr %direction_output, align 4
  %config = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr getelementptr inbounds ([8 x %struct.samsung_gpio_cfg], ptr @samsung_gpio_cfgs, i32 0, i32 7), ptr %config, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %pm = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 0, i32 2
  %5 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pm, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then5, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @samsung_gpio_pm_2bit, ptr %pm, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then5, %if.end.land.lhs.true_crit_edge
  %base9 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 0, i32 3
  %8 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base9, align 4
  %cmp10 = icmp eq ptr %9, null
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %i.02, 5
  %add.ptr = getelementptr i8, ptr inttoptr (i32 -162529056 to ptr), i32 %mul
  %10 = ptrtoint ptr %base9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %base9, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true.if.end13_crit_edge
  tail call fastcc void @samsung_gpiolib_add(ptr noundef %chip.addr.01) #10
  %inc = add nuw nsw i32 %i.02, 1
  %incdec.ptr = getelementptr %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_gpiolib_add_4bit_chips() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %if.end13.for.body_crit_edge ]
  %chip.addr.01 = phi ptr [ @s3c64xx_gpios_4bit, %entry ], [ %incdec.ptr, %if.end13.for.body_crit_edge ]
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %chip.addr.01, i32 0, i32 8
  %0 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @samsung_gpiolib_4bit_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %chip.addr.01, i32 0, i32 9
  %1 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @samsung_gpiolib_4bit_output, ptr %direction_output, align 4
  %config = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr getelementptr inbounds ([8 x %struct.samsung_gpio_cfg], ptr @samsung_gpio_cfgs, i32 0, i32 2), ptr %config, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %pm = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 0, i32 2
  %5 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pm, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then5, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @samsung_gpio_pm_4bit, ptr %pm, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then5, %if.end.land.lhs.true_crit_edge
  %base9 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 0, i32 3
  %8 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base9, align 4
  %cmp10 = icmp eq ptr %9, null
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %i.02, 5
  %add.ptr = getelementptr i8, ptr inttoptr (i32 -162529280 to ptr), i32 %mul
  %10 = ptrtoint ptr %base9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %base9, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true.if.end13_crit_edge
  %bitmap_gpio_int = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 0, i32 8
  %11 = ptrtoint ptr %bitmap_gpio_int to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bitmap_gpio_int, align 4
  tail call fastcc void @samsung_gpiolib_add(ptr noundef %chip.addr.01) #10
  %inc = add nuw nsw i32 %i.02, 1
  %incdec.ptr = getelementptr %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_gpiolib_add_4bit2_chips() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %entry
  %nr_chips.addr.02 = phi i32 [ 3, %entry ], [ %dec, %if.end7.for.body_crit_edge ]
  %chip.addr.01 = phi ptr [ @s3c64xx_gpios_4bit2, %entry ], [ %incdec.ptr, %if.end7.for.body_crit_edge ]
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %chip.addr.01, i32 0, i32 8
  %0 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @samsung_gpiolib_4bit2_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %chip.addr.01, i32 0, i32 9
  %1 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @samsung_gpiolib_4bit2_output, ptr %direction_output, align 4
  %config = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr getelementptr inbounds ([8 x %struct.samsung_gpio_cfg], ptr @samsung_gpio_cfgs, i32 0, i32 2), ptr %config, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %pm = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 0, i32 2
  %5 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pm, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @samsung_gpio_pm_4bit, ptr %pm, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  tail call fastcc void @samsung_gpiolib_add(ptr noundef %chip.addr.01) #10
  %dec = add nsw i32 %nr_chips.addr.02, -1
  %incdec.ptr = getelementptr %struct.samsung_gpio_chip, ptr %chip.addr.01, i32 1
  %cmp = icmp ugt i32 %nr_chips.addr.02, 1
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %for.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpio_setcfg_4bit(ptr nocapture noundef readonly %chip, i32 noundef %off, i32 noundef %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %off)
  %cmp = icmp ult i32 %off, 8
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %cmp2 = icmp ugt i16 %3, 8
  %spec.select.idx = select i1 %cmp2, i32 -4, i32 0
  %spec.select = getelementptr i8, ptr %1, i32 %spec.select.idx
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %reg.0 = phi ptr [ %1, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %and = shl i32 %off, 2
  %mul = and i32 %and, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %cfg)
  %cmp5 = icmp ugt i32 %cfg, -17
  %and8 = and i32 %cfg, 15
  %shl = shl nuw i32 %and8, %mul
  %cfg.addr.0 = select i1 %cmp5, i32 %shl, i32 %cfg
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0) #7, !srcloc !103
  %shl10 = shl nuw i32 15, %mul
  %neg = xor i32 %shl10, -1
  %and11 = and i32 %4, %neg
  %or = or i32 %and11, %cfg.addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0, i32 %or) #7, !srcloc !104
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpio_getcfg_4bit(ptr nocapture noundef readonly %chip, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %off)
  %cmp = icmp ult i32 %off, 8
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %cmp2 = icmp ugt i16 %3, 8
  %spec.select.idx = select i1 %cmp2, i32 -4, i32 0
  %spec.select = getelementptr i8, ptr %1, i32 %spec.select.idx
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %reg.0 = phi ptr [ %1, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %and = shl i32 %off, 2
  %mul = and i32 %and, 28
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0) #7, !srcloc !103
  %shr = lshr i32 %4, %mul
  %or = or i32 %shr, -16
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpiolib_2bit_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %lock = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !103
  %mul = shl i32 %offset, 1
  %shl = shl i32 3, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %and) #7, !srcloc !104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpiolib_2bit_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %lock = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !103
  %shl = shl nuw i32 1, %offset
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %or = or i32 %2, %shl
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %spec.select) #7, !srcloc !104
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !103
  %mul = shl i32 %offset, 1
  %shl12 = shl i32 3, %mul
  %neg13 = xor i32 %shl12, -1
  %and14 = and i32 %3, %neg13
  %shl16 = shl nuw i32 1, %mul
  %or17 = or i32 %and14, %shl16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or17) #7, !srcloc !104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %spec.select) #7, !srcloc !104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_gpiolib_add(ptr noundef %chip) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.body11, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-s3c/gpio-samsung.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 729, 0\0A.popsection", ""() #7, !srcloc !106
  unreachable

do.body11:                                        ; preds = %entry
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %tobool12.not = icmp eq ptr %3, null
  br i1 %tobool12.not, label %do.body22, label %do.body31, !prof !105

do.body22:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-s3c/gpio-samsung.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 730, 0\0A.popsection", ""() #7, !srcloc !107
  unreachable

do.body31:                                        ; preds = %do.body11
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %4 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool32.not = icmp eq i16 %5, 0
  br i1 %tobool32.not, label %do.body42, label %do.body51, !prof !105

do.body42:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-s3c/gpio-samsung.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 731, 0\0A.popsection", ""() #7, !srcloc !108
  unreachable

do.body51:                                        ; preds = %do.body31
  %lock = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @samsung_gpiolib_add.__key, i16 noundef signext 3) #7
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 8
  %6 = ptrtoint ptr %direction_input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %direction_input, align 4
  %tobool54.not = icmp eq ptr %7, null
  br i1 %tobool54.not, label %if.then55, label %do.body51.if.end57_crit_edge

do.body51.if.end57_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then55:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @samsung_gpiolib_2bit_input, ptr %direction_input, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %do.body51.if.end57_crit_edge
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 9
  %9 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %direction_output, align 4
  %tobool58.not = icmp eq ptr %10, null
  br i1 %tobool58.not, label %if.then59, label %if.end57.if.end61_crit_edge

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @samsung_gpiolib_2bit_output, ptr %direction_output, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57.if.end61_crit_edge
  %set = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 12
  %12 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set, align 4
  %tobool62.not = icmp eq ptr %13, null
  br i1 %tobool62.not, label %if.then63, label %if.end61.if.end65_crit_edge

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @samsung_gpiolib_set, ptr %set, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61.if.end65_crit_edge
  %get = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 10
  %15 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get, align 4
  %tobool66.not = icmp eq ptr %16, null
  br i1 %tobool66.not, label %if.then67, label %if.end65.if.end69_crit_edge

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @samsung_gpiolib_get, ptr %get, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end65.if.end69_crit_edge
  %pm = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 2
  %18 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pm, align 4
  %cmp.not = icmp eq ptr %19, null
  br i1 %cmp.not, label %if.end69.if.end88.sink.split_crit_edge, label %if.then70

if.end69.if.end88.sink.split_crit_edge:           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88.sink.split

if.then70:                                        ; preds = %if.end69
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool72.not = icmp eq ptr %21, null
  br i1 %tobool72.not, label %if.then70.if.end88.sink.split_crit_edge, label %lor.lhs.false

if.then70.if.end88.sink.split_crit_edge:          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88.sink.split

lor.lhs.false:                                    ; preds = %if.then70
  %resume = getelementptr inbounds %struct.samsung_gpio_pm, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resume, align 4
  %tobool74.not = icmp eq ptr %23, null
  br i1 %tobool74.not, label %lor.lhs.false.if.end88.sink.split_crit_edge, label %lor.lhs.false.if.end88_crit_edge

lor.lhs.false.if.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

lor.lhs.false.if.end88.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88.sink.split

if.end88.sink.split:                              ; preds = %lor.lhs.false.if.end88.sink.split_crit_edge, %if.then70.if.end88.sink.split_crit_edge, %if.end69.if.end88.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %if.then70.if.end88.sink.split_crit_edge ], [ @.str.1, %lor.lhs.false.if.end88.sink.split_crit_edge ], [ @.str.5, %if.end69.if.end88.sink.split_crit_edge ]
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.1.sink, ptr noundef %25) #11
  br label %if.end88

if.end88:                                         ; preds = %if.end88.sink.split, %lor.lhs.false.if.end88_crit_edge
  %call90 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef %chip, ptr noundef nonnull @samsung_gpiolib_add.lock_key, ptr noundef nonnull @samsung_gpiolib_add.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call90)
  %cmp91 = icmp sgt i32 %call90, -1
  br i1 %cmp91, label %if.then92, label %if.end88.if.end93_crit_edge

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then92:                                        ; preds = %if.end88
  %26 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp20.not.i = icmp eq i16 %27, 0
  br i1 %cmp20.not.i, label %if.then92.if.end93_crit_edge, label %do.body.preheader.i

if.then92.if.end93_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

do.body.preheader.i:                              ; preds = %if.then92
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base.i, align 4
  %30 = tail call i32 @llvm.usub.sat.i32(i32 204, i32 %29) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.end12.i.do.body.i_crit_edge, %do.body.preheader.i
  %i.022.i = phi i32 [ %inc.i, %do.end12.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %gpn.021.i = phi i32 [ %inc13.i, %do.end12.i.do.body.i_crit_edge ], [ %29, %do.body.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.022.i, i32 %30)
  %exitcond.i = icmp eq i32 %i.022.i, %30
  br i1 %exitcond.i, label %do.body7.i, label %do.end12.i, !prof !105

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-s3c/gpio-samsung.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 708, 0\0A.popsection", ""() #7, !srcloc !109
  unreachable

do.end12.i:                                       ; preds = %do.body.i
  %arrayidx.i = getelementptr [204 x ptr], ptr @s3c_gpios, i32 0, i32 %gpn.021.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %chip, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %inc13.i = add nuw nsw i32 %gpn.021.i, 1
  %32 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ngpio, align 4
  %conv.i = zext i16 %33 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %do.end12.i.do.body.i_crit_edge, label %do.end12.i.if.end93_crit_edge

do.end12.i.if.end93_crit_edge:                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

do.end12.i.do.body.i_crit_edge:                   ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end93:                                         ; preds = %do.end12.i.if.end93_crit_edge, %if.then92.if.end93_crit_edge, %if.end88.if.end93_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_gpiolib_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %lock = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !103
  %shl = shl nuw i32 1, %offset
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %or = or i32 %2, %shl
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %spec.select) #7, !srcloc !104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpiolib_get(ptr nocapture noundef readonly %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !103
  %shr = lshr i32 %2, %offset
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpiolib_4bit_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !103
  %bitmap_gpio_int = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 8
  %3 = ptrtoint ptr %bitmap_gpio_int to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bitmap_gpio_int, align 4
  %shl = shl nuw i32 1, %offset
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %mul4 = shl i32 %offset, 2
  %shl5 = shl i32 15, %mul4
  %or = or i32 %2, %shl5
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %2, %neg
  %con.0 = select i1 %tobool.not, i32 %and6, i32 %or
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %con.0) #7, !srcloc !104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_gpiolib_4bit_input.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_gpiolib_4bit_input, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !110

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_gpiolib_4bit_input.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef %con.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpiolib_4bit_output(ptr nocapture noundef readonly %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !103
  %mul = shl i32 %offset, 2
  %shl = shl i32 15, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  %shl4 = shl nuw i32 1, %mul
  %or = or i32 %and, %shl4
  %add.ptr5 = getelementptr i8, ptr %1, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl9 = shl nuw i32 1, %offset
  %or8 = or i32 %3, %shl9
  %neg10 = xor i32 %shl9, -1
  %and11 = and i32 %3, %neg10
  %dat.0 = select i1 %tobool.not, i32 %and11, i32 %or8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %dat.0) #7, !srcloc !104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or) #7, !srcloc !104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %dat.0) #7, !srcloc !104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_gpiolib_4bit_output.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_gpiolib_4bit_output, %if.then19)) #7
          to label %do.end [label %if.then19], !srcloc !110

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_gpiolib_4bit_output.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %1, i32 noundef %or, i32 noundef %dat.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then19, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c64xx_gpiolib_mbank_to_irq(ptr nocapture noundef readnone %chip, i32 noundef %pin) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %pin)
  %cmp = icmp ult i32 %pin, 5
  %add = add i32 %pin, 124
  %spec.select = select i1 %cmp, i32 %add, i32 -6
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpiolib_4bit2_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %offset)
  %cmp = icmp ugt i32 %offset, 7
  %regcon.0.idx = select i1 %cmp, i32 0, i32 -4
  %regcon.0 = getelementptr i8, ptr %1, i32 %regcon.0.idx
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %regcon.0) #7, !srcloc !103
  %3 = shl i32 %offset, 2
  %4 = add i32 %3, -32
  %mul = select i1 %cmp, i32 %4, i32 %3
  %shl = shl i32 15, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %regcon.0, i32 %and) #7, !srcloc !104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_gpiolib_4bit2_input.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_gpiolib_4bit2_input, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !110

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_gpiolib_4bit2_input.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef %1, i32 noundef %and) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_gpiolib_4bit2_output(ptr nocapture noundef readonly %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %offset)
  %cmp = icmp ugt i32 %offset, 7
  %regcon.0.idx = select i1 %cmp, i32 0, i32 -4
  %regcon.0 = getelementptr i8, ptr %1, i32 %regcon.0.idx
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %regcon.0) #7, !srcloc !103
  %3 = shl i32 %offset, 2
  %4 = add i32 %3, -32
  %mul = select i1 %cmp, i32 %4, i32 %3
  %shl = shl i32 15, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  %shl4 = shl nuw i32 1, %mul
  %or = or i32 %and, %shl4
  %add.ptr5 = getelementptr i8, ptr %1, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl11 = shl nuw i32 1, %offset
  %or9 = or i32 %5, %shl11
  %neg12 = xor i32 %shl11, -1
  %and13 = and i32 %5, %neg12
  %dat.0 = select i1 %tobool.not, i32 %and13, i32 %or9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %dat.0) #7, !srcloc !104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %regcon.0, i32 %or) #7, !srcloc !104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %dat.0) #7, !srcloc !104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_gpiolib_4bit2_output.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_gpiolib_4bit2_output, %if.then21)) #7
          to label %do.end [label %if.then21], !srcloc !110

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_gpiolib_4bit2_output.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.28, ptr noundef %1, i32 noundef %or, i32 noundef %dat.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then21, %entry
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s3c64xx_gpiolib_lbank_to_irq(ptr nocapture noundef readnone %chip, i32 noundef %pin) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pin)
  %cmp = icmp ugt i32 %pin, 7
  %sub = add i32 %pin, 109
  %spec.select = select i1 %cmp, i32 %sub, i32 -6
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !85, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @s3c24xx_gpiocfg_default, !1, !"s3c24xx_gpiocfg_default", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 371, i32 25}
!2 = !{ptr @s3c24xx_gpios, !3, !"s3c24xx_gpios", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 897, i32 26}
!4 = !{ptr @__initcall__kmod_gpio_samsung__231_1199_samsung_gpiolib_init1, !5, !"__initcall__kmod_gpio_samsung__231_1199_samsung_gpiolib_init1", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1199, i32 1}
!6 = !{ptr @__ksymtab_s3c_gpio_cfgpin, !7, !"__ksymtab_s3c_gpio_cfgpin", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1219, i32 1}
!8 = !{ptr @__ksymtab_s3c_gpio_cfgpin_range, !9, !"__ksymtab_s3c_gpio_cfgpin_range", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1234, i32 1}
!10 = !{ptr @__ksymtab_s3c_gpio_cfgall_range, !11, !"__ksymtab_s3c_gpio_cfgall_range", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1250, i32 1}
!12 = !{ptr @__ksymtab_s3c_gpio_getcfg, !13, !"__ksymtab_s3c_gpio_getcfg", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1269, i32 1}
!14 = !{ptr @__ksymtab_s3c_gpio_setpull, !15, !"__ksymtab_s3c_gpio_setpull", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1288, i32 1}
!16 = !{ptr @__ksymtab_s3c_gpio_getpull, !17, !"__ksymtab_s3c_gpio_getpull", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1307, i32 1}
!18 = !{ptr @s3c_gpios, !19, !"s3c_gpios", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 699, i32 27}
!20 = !{ptr @samsung_gpio_cfgs, !21, !"samsung_gpio_cfgs", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 383, i32 32}
!22 = !{ptr @samsung_gpiolib_add.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 733, i32 2}
!24 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 747, i32 4}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @samsung_gpiolib_add._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @samsung_gpiolib_add._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 750, i32 3}
!33 = !{ptr @samsung_gpiolib_add._entry.4, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @samsung_gpiolib_add._entry_ptr.6, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @samsung_gpiolib_add.lock_key, !36, !"lock_key", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 754, i32 8}
!37 = !{ptr @samsung_gpiolib_add.request_key, !36, !"request_key", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1116, i32 13}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1123, i32 13}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1130, i32 13}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1137, i32 13}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1144, i32 13}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1151, i32 13}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1160, i32 13}
!52 = !{ptr @s3c64xx_gpios_2bit, !53, !"s3c64xx_gpios_2bit", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1108, i32 33}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 505, i32 2}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @samsung_gpiolib_4bit_input.__UNIQUE_ID_ddebug227, !55, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 533, i32 2}
!61 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @samsung_gpiolib_4bit_output.__UNIQUE_ID_ddebug228, !60, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1031, i32 13}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1037, i32 13}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1043, i32 13}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1049, i32 13}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1056, i32 13}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1063, i32 13}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1071, i32 13}
!77 = !{ptr @s3c64xx_gpios_4bit, !78, !"s3c64xx_gpios_4bit", i1 false, i1 false}
!78 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1025, i32 33}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 577, i32 2}
!81 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @samsung_gpiolib_4bit2_input.__UNIQUE_ID_ddebug229, !80, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 612, i32 2}
!85 = !{ptr @samsung_gpiolib_4bit2_output.__UNIQUE_ID_ddebug230, !84, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1085, i32 13}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1093, i32 13}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1101, i32 13}
!92 = !{ptr @s3c64xx_gpios_4bit2, !93, !"s3c64xx_gpios_4bit2", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-s3c/gpio-samsung.c", i32 1078, i32 33}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 3658776}
!104 = !{i64 3658358}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2154054727, i64 2154055224, i64 2154054764, i64 2154054820, i64 2154054854, i64 2154054878, i64 2154054919, i64 2154054940, i64 2154054968, i64 2154055002}
!107 = !{i64 2154060403, i64 2154060900, i64 2154060440, i64 2154060496, i64 2154060530, i64 2154060554, i64 2154060595, i64 2154060616, i64 2154060644, i64 2154060678}
!108 = !{i64 2154062018, i64 2154062515, i64 2154062055, i64 2154062111, i64 2154062145, i64 2154062169, i64 2154062210, i64 2154062231, i64 2154062259, i64 2154062293}
!109 = !{i64 2154052918, i64 2154053415, i64 2154052955, i64 2154053011, i64 2154053045, i64 2154053069, i64 2154053110, i64 2154053131, i64 2154053159, i64 2154053193}
!110 = !{i64 2148720721, i64 2148720726, i64 2148720739, i64 2148720783, i64 2148720817, i64 2148720838}
