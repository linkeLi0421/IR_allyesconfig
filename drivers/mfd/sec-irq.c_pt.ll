; ModuleID = '/llk/IR_all_yes/drivers/mfd/sec-irq.c_pt.bc'
source_filename = "../drivers/mfd/sec-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sec_irq_init\22, \22a\22\09"
module asm "\09.weak\09__crc_sec_irq_init\09\09\09\09"
module asm "\09.long\09__crc_sec_irq_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sec_irq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22sec_irq_init\22\09\09\09\09\09"
module asm "__kstrtabns_sec_irq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sec_pmic_dev = type { ptr, ptr, ptr, ptr, i32, i32, ptr }

@sec_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No interrupt specified, no interrupts\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sec_irq_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/sec-irq.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sec_irq_init._entry_ptr = internal global ptr @sec_irq_init._entry, section ".printk_index", align 4
@sec_irq_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 477, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown device type %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sec_irq_init._entry_ptr.8 = internal global ptr @sec_irq_init._entry.5, section ".printk_index", align 4
@sec_irq_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 485, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register IRQ chip: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sec_irq_init._entry_ptr.11 = internal global ptr @sec_irq_init._entry.9, section ".printk_index", align 4
@__kstrtab_sec_irq_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_sec_irq_init = external dso_local constant [0 x i8], align 1
@__ksymtab_sec_irq_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sec_irq_init to i32), ptr @__kstrtab_sec_irq_init, ptr @__kstrtabns_sec_irq_init }, section "___ksymtab_gpl+sec_irq_init", align 4
@__UNIQUE_ID_author188 = internal constant [50 x i8] c"sec_irq.author=Sangbeom Kim <sbkim73@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [52 x i8] c"sec_irq.author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [53 x i8] c"sec_irq.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [54 x i8] c"sec_irq.description=Interrupt support for the S5M MFD\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [33 x i8] c"sec_irq.file=drivers/mfd/sec-irq\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [20 x i8] c"sec_irq.license=GPL\00", section ".modinfo", align 1
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5m8763\00", [24 x i8] zeroinitializer }, align 32
@s5m8763_irqs = internal constant { [18 x %struct.regmap_irq], [184 x i8] } { [18 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 2, %struct.regmap_irq_type zeroinitializer }], [184 x i8] zeroinitializer }, align 32
@s5m8763_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.12, i32 0, i32 0, ptr null, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 4, ptr @s5m8763_irqs, i32 18, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5m8767\00", [24 x i8] zeroinitializer }, align 32
@s5m8767_irqs = internal constant { [17 x %struct.regmap_irq], [156 x i8] } { [17 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 32, %struct.regmap_irq_type zeroinitializer }], [156 x i8] zeroinitializer }, align 32
@s5m8767_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.14, i32 0, i32 0, ptr null, i32 0, i32 1, i32 4, i32 0, i32 1, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 3, ptr @s5m8767_irqs, i32 17, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s2mps14\00", [24 x i8] zeroinitializer }, align 32
@s2mps14_irqs = internal constant { [17 x %struct.regmap_irq], [156 x i8] } { [17 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }], [156 x i8] zeroinitializer }, align 32
@s2mps14_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.16, i32 0, i32 0, ptr null, i32 0, i32 1, i32 4, i32 0, i32 1, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 3, ptr @s2mps14_irqs, i32 17, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s2mps11\00", [24 x i8] zeroinitializer }, align 32
@s2mps11_irqs = internal constant { [16 x %struct.regmap_irq], [128 x i8] } { [16 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }], [128 x i8] zeroinitializer }, align 32
@s2mps11_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.18, i32 0, i32 0, ptr null, i32 0, i32 1, i32 4, i32 0, i32 1, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 3, ptr @s2mps11_irqs, i32 16, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s2mps13\00", [24 x i8] zeroinitializer }, align 32
@s2mps13_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.20, i32 0, i32 0, ptr null, i32 0, i32 1, i32 4, i32 0, i32 1, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 3, ptr @s2mps14_irqs, i32 17, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s2mps15\00", [24 x i8] zeroinitializer }, align 32
@s2mps15_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.22, i32 0, i32 0, ptr null, i32 0, i32 1, i32 4, i32 0, i32 1, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 3, ptr @s2mps14_irqs, i32 17, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s2mpu02\00", [24 x i8] zeroinitializer }, align 32
@s2mpu02_irqs = internal constant { [17 x %struct.regmap_irq], [156 x i8] } { [17 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }], [156 x i8] zeroinitializer }, align 32
@s2mpu02_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.24, i32 0, i32 0, ptr null, i32 0, i32 1, i32 4, i32 0, i32 1, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 3, ptr @s2mpu02_irqs, i32 17, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@switch.table.sec_irq_init = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @s5m8763_irq_chip, ptr @s5m8767_irq_chip, ptr @s2mps14_irq_chip, ptr @s2mps11_irq_chip, ptr @s2mps13_irq_chip, ptr @s2mps14_irq_chip, ptr @s2mps15_irq_chip, ptr @s2mpu02_irq_chip], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 445, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 476, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 485, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 429, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"s5m8763_irqs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 300, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"s5m8763_irq_chip\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 428, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 419, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"s5m8767_irqs\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 229, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"s5m8767_irq_chip\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 418, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 399, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"s2mps14_irqs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 87, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"s2mps14_irq_chip\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 398, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 376, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"s2mps11_irqs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 20, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"s2mps11_irq_chip\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 375, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 394, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"s2mps13_irq_chip\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 393, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 404, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"s2mps15_irq_chip\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 403, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 409, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"s2mpu02_irqs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 158, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"s2mpu02_irq_chip\00", align 1
@___asan_gen_.114 = private constant [25 x i8] c"../drivers/mfd/sec-irq.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 408, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant [26 x i8] c"switch.table.sec_irq_init\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__ksymtab_sec_irq_init, ptr @sec_irq_init._entry, ptr @sec_irq_init._entry.5, ptr @sec_irq_init._entry.9, ptr @sec_irq_init._entry_ptr, ptr @sec_irq_init._entry_ptr.11, ptr @sec_irq_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @s5m8763_irqs, ptr @s5m8763_irq_chip, ptr @.str.14, ptr @s5m8767_irqs, ptr @s5m8767_irq_chip, ptr @.str.16, ptr @s2mps14_irqs, ptr @s2mps14_irq_chip, ptr @.str.18, ptr @s2mps11_irqs, ptr @s2mps11_irq_chip, ptr @.str.20, ptr @s2mps13_irq_chip, ptr @.str.22, ptr @s2mps15_irq_chip, ptr @.str.24, ptr @s2mpu02_irqs, ptr @s2mpu02_irq_chip, ptr @switch.table.sec_irq_init], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_irq_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_irq_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8763_irqs to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8763_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_irqs to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5m8767_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps14_irqs to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps14_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_irqs to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps11_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps13_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mps15_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mpu02_irqs to i32), i32 612, i32 768, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2mpu02_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sec_irq_init to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sec_irq_init(ptr noundef %sec_pmic) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device_type = getelementptr inbounds %struct.sec_pmic_dev, ptr %sec_pmic, i32 0, i32 4
  %0 = ptrtoint ptr %device_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_type, align 4
  %irq = getelementptr inbounds %struct.sec_pmic_dev, ptr %sec_pmic, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %sec_pmic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sec_pmic, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 8
  br i1 %6, label %switch.lookup, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %sec_pmic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sec_pmic, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %1) #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.sec_irq_init, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %10 = ptrtoint ptr %sec_pmic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sec_pmic, align 4
  %regmap_pmic = getelementptr inbounds %struct.sec_pmic_dev, ptr %sec_pmic, i32 0, i32 2
  %12 = ptrtoint ptr %regmap_pmic to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_pmic, align 4
  %irq_data = getelementptr inbounds %struct.sec_pmic_dev, ptr %sec_pmic, i32 0, i32 6
  %call = tail call i32 @devm_regmap_add_irq_chip(ptr noundef %11, ptr noundef %13, i32 noundef %3, i32 noundef 8192, i32 noundef 0, ptr noundef nonnull %switch.load, ptr noundef %irq_data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %switch.lookup.cleanup_crit_edge, label %do.end18

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end18:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %sec_pmic to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sec_pmic, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.10, i32 noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %switch.lookup.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end10 ], [ %call, %do.end18 ], [ 0, %do.end ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/sec-irq.c", i32 445, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sec_irq_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sec_irq_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/sec-irq.c", i32 476, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sec_irq_init._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @sec_irq_init._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mfd/sec-irq.c", i32 485, i32 3}
!15 = !{ptr @sec_irq_init._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @sec_irq_init._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_sec_irq_init, !18, !"__ksymtab_sec_irq_init", i1 false, i1 false}
!18 = !{!"../drivers/mfd/sec-irq.c", i32 497, i32 1}
!19 = !{ptr @__UNIQUE_ID_author188, !20, !"__UNIQUE_ID_author188", i1 false, i1 false}
!20 = !{!"../drivers/mfd/sec-irq.c", i32 499, i32 1}
!21 = !{ptr @__UNIQUE_ID_author189, !22, !"__UNIQUE_ID_author189", i1 false, i1 false}
!22 = !{!"../drivers/mfd/sec-irq.c", i32 500, i32 1}
!23 = !{ptr @__UNIQUE_ID_author190, !24, !"__UNIQUE_ID_author190", i1 false, i1 false}
!24 = !{!"../drivers/mfd/sec-irq.c", i32 501, i32 1}
!25 = !{ptr @__UNIQUE_ID_description191, !26, !"__UNIQUE_ID_description191", i1 false, i1 false}
!26 = !{!"../drivers/mfd/sec-irq.c", i32 502, i32 1}
!27 = !{ptr @__UNIQUE_ID_file192, !28, !"__UNIQUE_ID_file192", i1 false, i1 false}
!28 = !{!"../drivers/mfd/sec-irq.c", i32 503, i32 1}
!29 = !{ptr @__UNIQUE_ID_license193, !28, !"__UNIQUE_ID_license193", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/sec-irq.c", i32 429, i32 10}
!32 = !{ptr @s5m8763_irq_chip, !33, !"s5m8763_irq_chip", i1 false, i1 false}
!33 = !{!"../drivers/mfd/sec-irq.c", i32 428, i32 37}
!34 = !{ptr @s5m8763_irqs, !35, !"s5m8763_irqs", i1 false, i1 false}
!35 = !{!"../drivers/mfd/sec-irq.c", i32 300, i32 32}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/sec-irq.c", i32 419, i32 10}
!38 = !{ptr @s5m8767_irq_chip, !39, !"s5m8767_irq_chip", i1 false, i1 false}
!39 = !{!"../drivers/mfd/sec-irq.c", i32 418, i32 37}
!40 = !{ptr @s5m8767_irqs, !41, !"s5m8767_irqs", i1 false, i1 false}
!41 = !{!"../drivers/mfd/sec-irq.c", i32 229, i32 32}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/sec-irq.c", i32 399, i32 10}
!44 = !{ptr @s2mps14_irq_chip, !45, !"s2mps14_irq_chip", i1 false, i1 false}
!45 = !{!"../drivers/mfd/sec-irq.c", i32 398, i32 37}
!46 = !{ptr @s2mps14_irqs, !47, !"s2mps14_irqs", i1 false, i1 false}
!47 = !{!"../drivers/mfd/sec-irq.c", i32 87, i32 32}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/sec-irq.c", i32 376, i32 10}
!50 = !{ptr @s2mps11_irq_chip, !51, !"s2mps11_irq_chip", i1 false, i1 false}
!51 = !{!"../drivers/mfd/sec-irq.c", i32 375, i32 37}
!52 = !{ptr @s2mps11_irqs, !53, !"s2mps11_irqs", i1 false, i1 false}
!53 = !{!"../drivers/mfd/sec-irq.c", i32 20, i32 32}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/sec-irq.c", i32 394, i32 10}
!56 = !{ptr @s2mps13_irq_chip, !57, !"s2mps13_irq_chip", i1 false, i1 false}
!57 = !{!"../drivers/mfd/sec-irq.c", i32 393, i32 37}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/sec-irq.c", i32 404, i32 10}
!60 = !{ptr @s2mps15_irq_chip, !61, !"s2mps15_irq_chip", i1 false, i1 false}
!61 = !{!"../drivers/mfd/sec-irq.c", i32 403, i32 37}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/sec-irq.c", i32 409, i32 10}
!64 = !{ptr @s2mpu02_irq_chip, !65, !"s2mpu02_irq_chip", i1 false, i1 false}
!65 = !{!"../drivers/mfd/sec-irq.c", i32 408, i32 37}
!66 = !{ptr @s2mpu02_irqs, !67, !"s2mpu02_irqs", i1 false, i1 false}
!67 = !{!"../drivers/mfd/sec-irq.c", i32 158, i32 32}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
