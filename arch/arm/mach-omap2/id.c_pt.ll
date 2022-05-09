; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/id.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/id.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+omap_rev\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_rev\09\09\09\09"
module asm "\09.long\09__crc_omap_rev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_rev:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_rev\22\09\09\09\09\09"
module asm "__kstrtabns_omap_rev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+omap_type\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_type\09\09\09\09"
module asm "\09.long\09__crc_omap_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_type:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_type\22\09\09\09\09\09"
module asm "__kstrtabns_omap_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.omap_id = type { i16, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.omap_die_id = type { i32, i32, i32, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@omap_revision = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_omap_rev = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_rev = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_rev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_rev to i32), ptr @__kstrtab_omap_rev, ptr @__kstrtabns_omap_rev }, section "___ksymtab+omap_rev", align 4
@omap_type.val = internal global { i32, [28 x i8] } { i32 1792, [28 x i8] zeroinitializer }, align 32
@omap_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Cannot detect omap type!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap_type\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-omap2/id.c\00", [39 x i8] zeroinitializer }, align 32
@omap_type._entry_ptr = internal global ptr @omap_type._entry, section ".printk_index", align 4
@__kstrtab_omap_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_type = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_type to i32), ptr @__kstrtab_omap_type, ptr @__kstrtabns_omap_type }, section "___ksymtab+omap_type", align 4
@tap_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_id__288_145___omap_feed_randpool6 = internal global ptr @__omap_feed_randpool, section ".initcall6.init", align 4
@tap_prod_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@omap2xxx_check_revision.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap2xxx_check_revision\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"OMAP_TAP_IDCODE 0x%08x REV %i HAWKEYE 0x%04x MANF %03x\0A\00", [40 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"OMAP_TAP_DIE_ID_0: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"OMAP_TAP_DIE_ID_1: 0x%08x DEV_REV: %i\0A\00", [57 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"OMAP_TAP_DIE_ID_2: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"OMAP_TAP_DIE_ID_3: 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"OMAP_TAP_PROD_ID_0: 0x%08x DEV_TYPE: %i\0A\00", [55 x i8] zeroinitializer }, align 32
@omap_ids = internal unnamed_addr constant [6 x %struct.omap_id] [%struct.omap_id { i16 -18983, i8 0, i32 606076964 }, %struct.omap_id { i16 -18983, i8 1, i32 606081060 }, %struct.omap_id { i16 -18983, i8 2, i32 606085156 }, %struct.omap_id { i16 -18983, i8 4, i32 606208036 }, %struct.omap_id { i16 -18983, i8 8, i32 606273572 }, %struct.omap_id { i16 -18806, i8 0, i32 607125540 }], section ".init.data", align 4
@omap2xxx_check_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Unknown OMAP CPU id\0A\00", [41 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision._entry_ptr = internal global ptr @omap2xxx_check_revision._entry, section ".printk_index", align 4
@omap2xxx_check_revision._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Unknown OMAP device type. Handling it as OMAP%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision._entry_ptr.14 = internal global ptr @omap2xxx_check_revision._entry.12, section ".printk_index", align 4
@soc_name = internal global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP%04x\00", [23 x i8] zeroinitializer }, align 32
@soc_rev = internal global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ES%x\00", [27 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision._entry_ptr.19 = internal global ptr @omap2xxx_check_revision._entry.17, section ".printk_index", align 4
@omap2xxx_check_revision._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%s\00", [27 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision._entry_ptr.22 = internal global ptr @omap2xxx_check_revision._entry.20, section ".printk_index", align 4
@omap2xxx_check_revision._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@omap2xxx_check_revision._entry_ptr.25 = internal global ptr @omap2xxx_check_revision._entry.23, section ".printk_index", align 4
@omap_features = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.1\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.0\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.1\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.1.2\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.1\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@omap3xxx_check_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014Warning: unknown chip type: hawkeye %04x, assuming OMAP3630ES1.2\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap3xxx_check_revision\00", [40 x i8] zeroinitializer }, align 32
@omap3xxx_check_revision._entry_ptr = internal global ptr @omap3xxx_check_revision._entry, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ES%s\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ES%d.%d\00", [24 x i8] zeroinitializer }, align 32
@omap4xxx_check_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap4xxx_check_revision\00", [40 x i8] zeroinitializer }, align 32
@omap4xxx_check_revision._entry_ptr = internal global ptr @omap4xxx_check_revision._entry, section ".printk_index", align 4
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ES%d.0\00", [25 x i8] zeroinitializer }, align 32
@omap5xxx_check_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.41, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap5xxx_check_revision\00", [40 x i8] zeroinitializer }, align 32
@omap5xxx_check_revision._entry_ptr = internal global ptr @omap5xxx_check_revision._entry, section ".printk_index", align 4
@dra7xxx_check_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: unknown idcode=0x%08x (hawkeye=0x%08x,rev=0x%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dra7xxx_check_revision\00", [41 x i8] zeroinitializer }, align 32
@dra7xxx_check_revision._entry_ptr = internal global ptr @dra7xxx_check_revision._entry, section ".printk_index", align 4
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DRA%03x\00", [24 x i8] zeroinitializer }, align 32
@dra7xxx_check_revision._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.43, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dra7xxx_check_revision._entry_ptr.46 = internal global ptr @dra7xxx_check_revision._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OMAP3630/DM3730\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP3621\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DM3725\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OMAP3615/AM3715\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM3703\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP3611\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM3517\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM3505\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TI816X\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM335X\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM437x\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TI814X\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OMAP3430/3530\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP3525\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP3515\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP3503\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s (\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l2cache \00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iva \00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sgx \00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"neon \00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isp \00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"192mhz_clk \00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c")\0A\00", [29 x i8] zeroinitializer }, align 32
@omap3_cpuinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.72, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap3_cpuinfo\00", [18 x i8] zeroinitializer }, align 32
@omap3_cpuinfo._entry_ptr = internal global ptr @omap3_cpuinfo._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OMAP2\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OMAP3\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OMAP4\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OMAP5\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM33xx\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM43xx\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DRA7\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@omap_soc_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @omap_soc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@omap_soc_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_type, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@omap_types = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TST\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EMU\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HS\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GP\00", [29 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BAD\00", [28 x i8] zeroinitializer }, align 32
@switch.table.omap_get_family = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 855638016, i64 1124073472, i64 2164260864]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 8, i64 52, i64 68, i64 84]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 68, i64 84]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 875562036, i64 875562292]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 875562036, i64 875562292]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 32, i64 860880896, i64 1131413504, i64 2168455168, i64 2170552320]
@__sancov_gen_cov_switch_values.93 = internal global [10 x i64] [i64 8, i64 16, i64 47022, i64 47134, i64 47208, i64 47249, i64 47346, i64 47428, i64 47464, i64 47500]
@__sancov_gen_cov_switch_values.94 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 16, i64 47438, i64 47477]
@__sancov_gen_cov_switch_values.101 = internal global [6 x i64] [i64 4, i64 16, i64 47186, i64 47438, i64 47452, i64 47477]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 16, i64 47426, i64 47512]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 16, i64 47504, i64 47548, i64 47952]
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"omap_revision\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 39, i32 21 }
@___asan_gen_.107 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 52, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 73, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [9 x i8] c"tap_base\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 117, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"tap_prod_id\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 118, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 162, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 164, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 165, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 167, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 168, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 169, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 179, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 189, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [9 x i8] c"soc_name\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 40, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 194, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant [8 x i8] c"soc_rev\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 41, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 195, i32 19 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 197, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 199, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 200, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [14 x i8] c"omap_features\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 42, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 363, i32 13 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 384, i32 14 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 388, i32 14 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 392, i32 14 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 396, i32 14 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 402, i32 14 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 420, i32 14 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 438, i32 14 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 518, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 521, i32 19 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 597, i32 19 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 599, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 640, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 642, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 709, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 714, i32 20 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 718, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 224, i32 35 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 224, i32 55 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 226, i32 15 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 228, i32 15 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 230, i32 35 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 230, i32 46 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 233, i32 34 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 233, i32 45 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 235, i32 14 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 237, i32 15 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 239, i32 15 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 241, i32 14 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 244, i32 14 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 246, i32 14 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 248, i32 14 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 250, i32 14 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 253, i32 40 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 256, i32 39 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 258, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 259, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 260, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 261, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 262, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 263, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 266, i32 43 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 267, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 753, i32 32 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 755, i32 32 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 757, i32 32 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 759, i32 32 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 761, i32 32 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 763, i32 32 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 765, i32 32 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 767, i32 32 }
@___asan_gen_.374 = private unnamed_addr constant [15 x i8] c"omap_soc_group\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 783, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant [15 x i8] c"omap_soc_attrs\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 778, i32 26 }
@___asan_gen_.380 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 776, i32 8 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 773, i32 22 }
@___asan_gen_.389 = private unnamed_addr constant [11 x i8] c"omap_types\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 742, i32 27 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 743, i32 29 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 744, i32 29 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 745, i32 29 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 746, i32 28 }
@___asan_gen_.404 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.405 = private constant [28 x i8] c"../arch/arm/mach-omap2/id.c\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 747, i32 29 }
@___asan_gen_.407 = private unnamed_addr constant [29 x i8] c"switch.table.omap_get_family\00", align 1
@llvm.compiler.used = appending global [118 x ptr] [ptr @__initcall__kmod_id__288_145___omap_feed_randpool6, ptr @__ksymtab_omap_rev, ptr @__ksymtab_omap_type, ptr @__omap_feed_randpool, ptr @dra7xxx_check_revision._entry, ptr @dra7xxx_check_revision._entry.45, ptr @dra7xxx_check_revision._entry_ptr, ptr @dra7xxx_check_revision._entry_ptr.46, ptr @omap2xxx_check_revision._entry, ptr @omap2xxx_check_revision._entry.12, ptr @omap2xxx_check_revision._entry.17, ptr @omap2xxx_check_revision._entry.20, ptr @omap2xxx_check_revision._entry.23, ptr @omap2xxx_check_revision._entry_ptr, ptr @omap2xxx_check_revision._entry_ptr.14, ptr @omap2xxx_check_revision._entry_ptr.19, ptr @omap2xxx_check_revision._entry_ptr.22, ptr @omap2xxx_check_revision._entry_ptr.25, ptr @omap3_cpuinfo._entry, ptr @omap3_cpuinfo._entry_ptr, ptr @omap3xxx_check_revision._entry, ptr @omap3xxx_check_revision._entry_ptr, ptr @omap4xxx_check_revision._entry, ptr @omap4xxx_check_revision._entry_ptr, ptr @omap5xxx_check_revision._entry, ptr @omap5xxx_check_revision._entry_ptr, ptr @omap_type._entry, ptr @omap_type._entry_ptr, ptr @omap_revision, ptr @omap_type.val, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tap_base, ptr @tap_prod_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @soc_name, ptr @.str.15, ptr @soc_rev, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @omap_features, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @omap_soc_group, ptr @omap_soc_attrs, ptr @dev_attr_type, ptr @.str.81, ptr @.str.82, ptr @omap_types, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @switch.table.omap_get_family], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_revision to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_type.val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tap_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tap_prod_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2xxx_check_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2xxx_check_revision._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_rev to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2xxx_check_revision._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2xxx_check_revision._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2xxx_check_revision._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3xxx_check_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4xxx_check_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5xxx_check_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xxx_check_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dra7xxx_check_revision._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_cpuinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_soc_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_soc_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_types to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_get_family to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_rev() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @omap_revision, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_type() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @omap_type.val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %0)
  %cmp = icmp ult i32 %0, 1792
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @omap_revision, align 4
  %and.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 36
  br i1 %cmp.i.not, label %if.end.if.end38_crit_edge, label %if.else

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else:                                          ; preds = %if.end
  %shr.mask.i = and i32 %1, -16777216
  %2 = zext i32 %shr.mask.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.mask.i, label %if.else14 [
    i32 -2130706432, label %if.else.if.end38_crit_edge
    i32 855638016, label %if.else.if.end38_crit_edge61
    i32 1124073472, label %if.else.if.end38_crit_edge62
  ]

if.else.if.end38_crit_edge62:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.if.end38_crit_edge61:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else14:                                        ; preds = %if.else
  %trunc = trunc i32 %1 to i8
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %trunc, label %lor.lhs.false27 [
    i8 52, label %if.else14.if.end38_crit_edge
    i8 68, label %if.then22
    i8 84, label %if.else14.if.then30_crit_edge
  ]

if.else14.if.then30_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.else14.if.end38_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then22:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

lor.lhs.false27:                                  ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i)
  %cmp.i59.not = icmp eq i32 %shr.mask.i, 117440512
  br i1 %cmp.i59.not, label %lor.lhs.false27.if.then30_crit_edge, label %do.end

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %if.else14.if.then30_crit_edge
  %call31 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 308) #10
  %and = lshr i32 %call31, 6
  %shr = and i32 %and, 7
  store i32 %shr, ptr @omap_type.val, align 4
  br label %out

do.end:                                           ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %out

if.end38:                                         ; preds = %if.then22, %if.else14.if.end38_crit_edge, %if.else.if.end38_crit_edge, %if.else.if.end38_crit_edge61, %if.else.if.end38_crit_edge62, %if.end.if.end38_crit_edge
  %.sink = phi i16 [ 708, %if.then22 ], [ 760, %if.end.if.end38_crit_edge ], [ 64, %if.else.if.end38_crit_edge ], [ 64, %if.else.if.end38_crit_edge61 ], [ 64, %if.else.if.end38_crit_edge62 ], [ 752, %if.else14.if.end38_crit_edge ]
  %call6 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext %.sink) #10
  %and39 = lshr i32 %call6, 8
  %shr40 = and i32 %and39, 7
  store i32 %shr40, ptr @omap_type.val, align 4
  br label %out

out:                                              ; preds = %if.end38, %do.end, %if.then30
  %4 = load i32, ptr @omap_type.val, align 4
  br label %return

return:                                           ; preds = %out, %entry.return_crit_edge
  %retval.0 = phi i32 [ %4, %out ], [ %0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_ctrl_readl(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_get_die_id(ptr nocapture noundef writeonly %odi) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @omap_revision, align 4
  %trunc = trunc i32 %0 to i8
  %1 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %trunc, label %lor.lhs.false3 [
    i8 68, label %entry.if.then_crit_edge
    i8 84, label %entry.if.then_crit_edge52
  ]

entry.if.then_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false3:                                   ; preds = %entry
  %shr.mask.i = and i32 %0, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i)
  %cmp.i49.not = icmp eq i32 %shr.mask.i, 117440512
  br i1 %cmp.i49.not, label %lor.lhs.false3.if.then_crit_edge, label %if.end

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %entry.if.then_crit_edge, %entry.if.then_crit_edge52
  %2 = load ptr, ptr @tap_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 512
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !219
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %odi to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %odi, align 4
  %6 = load ptr, ptr @tap_base, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 520
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !219
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %id_1 = getelementptr inbounds %struct.omap_die_id, ptr %odi, i32 0, i32 1
  %9 = ptrtoint ptr %id_1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %id_1, align 4
  %10 = load ptr, ptr @tap_base, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 524
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #10, !srcloc !219
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %id_2 = getelementptr inbounds %struct.omap_die_id, ptr %odi, i32 0, i32 2
  %13 = ptrtoint ptr %id_2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %id_2, align 4
  %14 = load ptr, ptr @tap_base, align 4
  %add.ptr16 = getelementptr i8, ptr %14, i32 528
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #10, !srcloc !219
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  %16 = load ptr, ptr @tap_base, align 4
  %add.ptr20 = getelementptr i8, ptr %16, i32 536
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #10, !srcloc !219
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %odi to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %odi, align 4
  %20 = load ptr, ptr @tap_base, align 4
  %add.ptr25 = getelementptr i8, ptr %20, i32 540
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !219
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %id_128 = getelementptr inbounds %struct.omap_die_id, ptr %odi, i32 0, i32 1
  %23 = ptrtoint ptr %id_128 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %id_128, align 4
  %24 = load ptr, ptr @tap_base, align 4
  %add.ptr30 = getelementptr i8, ptr %24, i32 544
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #10, !srcloc !219
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %id_233 = getelementptr inbounds %struct.omap_die_id, ptr %odi, i32 0, i32 2
  %27 = ptrtoint ptr %id_233 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %id_233, align 4
  %28 = load ptr, ptr @tap_base, align 4
  %add.ptr35 = getelementptr i8, ptr %28, i32 548
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #10, !srcloc !219
  br label %return

return:                                           ; preds = %if.end, %if.then
  %.sink51 = phi i32 [ %29, %if.end ], [ %15, %if.then ]
  %30 = tail call i32 @llvm.bswap.i32(i32 %.sink51)
  %id_338 = getelementptr inbounds %struct.omap_die_id, ptr %odi, i32 0, i32 3
  %31 = ptrtoint ptr %id_338 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %id_338, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @__omap_feed_randpool() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @omap_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i.not = icmp eq i32 %0, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @omap_feed_randpool() #14
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_feed_randpool() unnamed_addr #6 section ".init.text" align 64 {
entry:
  %odi = alloca %struct.omap_die_id, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %odi) #10
  %0 = call ptr @memset(ptr %odi, i32 255, i32 16)
  call void @omap_get_die_id(ptr noundef nonnull %odi)
  call void @add_device_randomness(ptr noundef nonnull %odi, i32 noundef 16) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %odi) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_check_revision() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  %odi = alloca %struct.omap_die_id, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %odi) #10
  %0 = getelementptr inbounds %struct.omap_die_id, ptr %odi, i32 0, i32 1
  %1 = getelementptr inbounds %struct.omap_die_id, ptr %odi, i32 0, i32 2
  %2 = getelementptr inbounds %struct.omap_die_id, ptr %odi, i32 0, i32 3
  %3 = call ptr @memset(ptr %odi, i32 255, i32 16)
  %4 = load ptr, ptr @tap_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 516
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !219
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = load ptr, ptr @tap_base, align 4
  %8 = load i16, ptr @tap_prod_id, align 2
  %conv = zext i16 %8 to i32
  %add.ptr2 = getelementptr i8, ptr %7, i32 %conv
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !219
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %shr = lshr i32 %6, 12
  %shr9 = lshr i32 %10, 16
  %11 = trunc i32 %shr9 to i8
  %conv11 = and i8 %11, 15
  call void @omap_get_die_id(ptr noundef nonnull %odi)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2xxx_check_revision, %if.then)) #10
          to label %do.body20 [label %if.then], !srcloc !220

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr6 = lshr i32 %6, 28
  %conv17 = and i32 %shr, 65535
  %shr18 = lshr i32 %6, 1
  %and19 = and i32 %shr18, 2047
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2xxx_check_revision.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef %shr6, i32 noundef %conv17, i32 noundef %and19) #10
  br label %do.body20

do.body20:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2xxx_check_revision, %if.then32)) #10
          to label %do.body36 [label %if.then32], !srcloc !220

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %odi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %odi, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2xxx_check_revision.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.6, i32 noundef %13) #10
  br label %do.body36

do.body36:                                        ; preds = %if.then32, %do.body20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2xxx_check_revision, %if.then48)) #10
          to label %do.body55 [label %if.then48], !srcloc !220

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  %shr50 = lshr i32 %15, 28
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2xxx_check_revision.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.7, i32 noundef %15, i32 noundef %shr50) #10
  br label %do.body55

do.body55:                                        ; preds = %if.then48, %do.body36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2xxx_check_revision, %if.then67)) #10
          to label %do.body71 [label %if.then67], !srcloc !220

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2xxx_check_revision.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.8, i32 noundef %17) #10
  br label %do.body71

do.body71:                                        ; preds = %if.then67, %do.body55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2xxx_check_revision, %if.then83)) #10
          to label %do.body87 [label %if.then83], !srcloc !220

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2xxx_check_revision.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.9, i32 noundef %19) #10
  br label %do.body87

do.body87:                                        ; preds = %if.then83, %do.body71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2xxx_check_revision, %if.then99)) #10
          to label %do.end103 [label %if.then99], !srcloc !220

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  %conv100 = zext i8 %conv11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2xxx_check_revision.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.10, i32 noundef %10, i32 noundef %conv100) #10
  br label %do.end103

do.end103:                                        ; preds = %if.then99, %do.body87
  %20 = trunc i32 %shr to i16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end103
  %i.0219 = phi i32 [ 0, %do.end103 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.omap_id], ptr @omap_ids, i32 0, i32 %i.0219
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %20)
  %cmp108 = icmp eq i16 %22, %20
  br i1 %cmp108, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0219, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0219)
  %cmp112 = icmp eq i32 %i.0219, 6
  br i1 %cmp112, label %for.end.cleanup_crit_edge, label %for.cond121.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond121.preheader:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0219)
  %cmp122220 = icmp ult i32 %i.0219, 6
  br i1 %cmp122220, label %for.cond121.preheader.for.body124_crit_edge, label %for.cond121.preheader.if.end145_crit_edge

for.cond121.preheader.if.end145_crit_edge:        ; preds = %for.cond121.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

for.cond121.preheader.for.body124_crit_edge:      ; preds = %for.cond121.preheader
  br label %for.body124

for.body124:                                      ; preds = %for.inc132.for.body124_crit_edge, %for.cond121.preheader.for.body124_crit_edge
  %j.0221 = phi i32 [ %inc133, %for.inc132.for.body124_crit_edge ], [ %i.0219, %for.cond121.preheader.for.body124_crit_edge ]
  %dev = getelementptr [6 x %struct.omap_id], ptr @omap_ids, i32 0, i32 %j.0221, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dev, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv11, i8 %24)
  %cmp128 = icmp eq i8 %conv11, %24
  br i1 %cmp128, label %for.body124.if.end145_crit_edge, label %for.inc132

for.body124.if.end145_crit_edge:                  ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

for.inc132:                                       ; preds = %for.body124
  %inc133 = add nuw nsw i32 %j.0221, 1
  %exitcond222.not = icmp eq i32 %inc133, 6
  br i1 %exitcond222.not, label %do.end140, label %for.inc132.for.body124_crit_edge

for.inc132.for.body124_crit_edge:                 ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body124

do.end140:                                        ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr [6 x %struct.omap_id], ptr @omap_ids, i32 0, i32 %i.0219, i32 2
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  %shr143 = lshr i32 %26, 16
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %shr143) #13
  br label %if.end145

if.end145:                                        ; preds = %do.end140, %for.body124.if.end145_crit_edge, %for.cond121.preheader.if.end145_crit_edge
  %27 = load i32, ptr @omap_revision, align 4
  %shr147 = lshr i32 %27, 16
  %call148 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_name, ptr noundef nonnull @.str.15, i32 noundef %shr147)
  %28 = load i32, ptr @omap_revision, align 4
  %shr150 = lshr i32 %28, 12
  %and151 = and i32 %shr150, 15
  %call152 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_rev, ptr noundef nonnull @.str.16, i32 noundef %and151)
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @soc_name) #13
  %29 = load i32, ptr @omap_revision, align 4
  %30 = and i32 %29, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool161.not = icmp eq i32 %30, 0
  br i1 %tobool161.not, label %if.end145.cleanup_crit_edge, label %do.end165

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end165:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @soc_rev) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end165, %if.end145.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %.str.24.sink = phi ptr [ @.str.11, %for.end.cleanup_crit_edge ], [ @.str.24, %if.end145.cleanup_crit_edge ], [ @.str.24, %do.end165 ], [ @.str.11, %for.inc.cleanup_crit_edge ]
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24.sink) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %odi) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3xxx_check_features() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @omap_features, align 4
  %call = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1100) #10
  %0 = and i32 %call, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i32, ptr @omap_features, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr @omap_features, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = and i32 %call, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3.not.not = icmp eq i32 %2, 0
  br i1 %cmp3.not.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load i32, ptr @omap_features, align 4
  %or5 = or i32 %3, 2
  store i32 %or5, ptr @omap_features, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %4 = and i32 %call, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %4)
  %cmp9.not = icmp eq i32 %4, 16384
  br i1 %cmp9.not, label %if.end6.if.end12_crit_edge, label %if.then10

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %5 = load i32, ptr @omap_features, align 4
  %or11 = or i32 %5, 4
  store i32 %or11, ptr @omap_features, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %6 = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp15.not.not = icmp eq i32 %6, 0
  br i1 %cmp15.not.not, label %if.then16, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %7 = load i32, ptr @omap_features, align 4
  %or17 = or i32 %7, 8
  store i32 %or17, ptr @omap_features, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12.if.end18_crit_edge
  %8 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp21.not.not = icmp eq i32 %8, 0
  br i1 %cmp21.not.not, label %if.then22, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %9 = load i32, ptr @omap_features, align 4
  %or23 = or i32 %9, 16
  store i32 %or23, ptr @omap_features, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end18.if.end24_crit_edge
  %10 = load i32, ptr @omap_revision, align 4
  %shr.mask.i = and i32 %10, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 909115392, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 909115392
  br i1 %cmp.i.not, label %if.end28.thread, label %if.end28

if.end28:                                         ; preds = %if.end24
  %shr.mask.i57 = and i32 %10, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 875560960, i32 %shr.mask.i57)
  %cmp.i58.not = icmp eq i32 %shr.mask.i57, 875560960
  br i1 %cmp.i58.not, label %switch.early.test.critedge, label %lor.lhs.false38.critedge

if.end28.thread:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %11 = load i32, ptr @omap_features, align 4
  %or34.c = or i32 %11, 96
  store i32 %or34.c, ptr @omap_features, align 4
  br label %if.then44

switch.early.test.critedge:                       ; preds = %if.end28
  %12 = load i32, ptr @omap_features, align 4
  %or34.c74 = or i32 %12, 64
  store i32 %or34.c74, ptr @omap_features, align 4
  %13 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %10, label %switch.early.test.critedge.if.end46_crit_edge [
    i32 875562292, label %switch.early.test.critedge.if.then44_crit_edge
    i32 875562036, label %switch.early.test.critedge.if.then44_crit_edge75
  ]

switch.early.test.critedge.if.then44_crit_edge75: ; preds = %switch.early.test.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

switch.early.test.critedge.if.then44_crit_edge:   ; preds = %switch.early.test.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

switch.early.test.critedge.if.end46_crit_edge:    ; preds = %switch.early.test.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

lor.lhs.false38.critedge:                         ; preds = %if.end28
  %14 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %10, label %lor.lhs.false38.critedge.if.end46_crit_edge [
    i32 875562036, label %lor.lhs.false38.critedge.if.then44_crit_edge
    i32 875562292, label %lor.lhs.false38.critedge.if.then44_crit_edge76
  ]

lor.lhs.false38.critedge.if.then44_crit_edge76:   ; preds = %lor.lhs.false38.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.lhs.false38.critedge.if.then44_crit_edge:     ; preds = %lor.lhs.false38.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

lor.lhs.false38.critedge.if.end46_crit_edge:      ; preds = %lor.lhs.false38.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %lor.lhs.false38.critedge.if.then44_crit_edge, %lor.lhs.false38.critedge.if.then44_crit_edge76, %switch.early.test.critedge.if.then44_crit_edge, %switch.early.test.critedge.if.then44_crit_edge75, %if.end28.thread
  %15 = load i32, ptr @omap_features, align 4
  %or45 = or i32 %15, 256
  store i32 %or45, ptr @omap_features, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %lor.lhs.false38.critedge.if.end46_crit_edge, %switch.early.test.critedge.if.end46_crit_edge
  %16 = load i32, ptr @omap_features, align 4
  %or47 = or i32 %16, 128
  %shr.mask.i66 = and i32 %10, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 889192448, i32 %shr.mask.i66)
  %cmp.i67.not = icmp eq i32 %shr.mask.i66, 889192448
  %and51 = and i32 %or47, -19
  %spec.select = select i1 %cmp.i67.not, i32 %and51, i32 %or47
  store i32 %spec.select, ptr @omap_features, align 4
  tail call fastcc void @omap3_cpuinfo() #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap3_cpuinfo() unnamed_addr #6 section ".init.text" align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #10
  %0 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %1 = load i32, ptr @omap_revision, align 4
  %shr.mask.i = and i32 %1, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 909115392, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 909115392
  br i1 %cmp.i.not, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @omap_features, align 4
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  %and.i165 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i165)
  %tobool13.not = icmp eq i32 %and.i165, 0
  br i1 %tobool2.not, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  br i1 %tobool13.not, label %land.lhs.true.if.end68_crit_edge, label %if.then5

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %and.i163 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool7.not = icmp eq i32 %and.i163, 0
  %cond = select i1 %tobool7.not, ptr @.str.48, ptr @.str.47
  br label %if.end68

if.else11:                                        ; preds = %if.then
  br i1 %tobool13.not, label %if.else15, label %if.else11.if.end68_crit_edge

if.else11.if.end68_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.else15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  %and.i166 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166)
  %tobool17.not = icmp eq i32 %and.i166, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.52, ptr @.str.51
  br label %if.end68

if.else21:                                        ; preds = %entry
  %shr.mask.i167 = and i32 %1, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 889192448, i32 %shr.mask.i167)
  %cmp.i168.not = icmp eq i32 %shr.mask.i167, 889192448
  br i1 %cmp.i168.not, label %if.then24, label %if.else28

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load i32, ptr @omap_features, align 4
  %and.i170 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i170)
  %tobool26.not = icmp eq i32 %and.i170, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.54, ptr @.str.53
  br label %if.end68

if.else28:                                        ; preds = %if.else21
  %4 = zext i32 %shr.mask.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %shr.mask.i, label %if.else44 [
    i32 -2124414976, label %if.else28.if.end68_crit_edge
    i32 860880896, label %if.end68.fold.split
    i32 1131413504, label %if.end68.fold.split194
    i32 -2126512128, label %if.end68.fold.split195
  ]

if.else28.if.end68_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.else44:                                        ; preds = %if.else28
  %5 = load i32, ptr @omap_features, align 4
  %and.i183 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool46.not = icmp eq i32 %and.i183, 0
  %and.i186 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %tobool57.not = icmp eq i32 %and.i186, 0
  br i1 %tobool46.not, label %if.else55, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select193 = select i1 %tobool57.not, ptr @.str.60, ptr @.str.59
  br label %if.end68

if.else55:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  %.str.62..str.61 = select i1 %tobool57.not, ptr @.str.62, ptr @.str.61
  br label %if.end68

if.end68.fold.split:                              ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68.fold.split194:                           ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68.fold.split195:                           ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68:                                         ; preds = %if.end68.fold.split195, %if.end68.fold.split194, %if.end68.fold.split, %if.else55, %land.lhs.true47, %if.else28.if.end68_crit_edge, %if.then24, %if.else15, %if.else11.if.end68_crit_edge, %if.then5, %land.lhs.true.if.end68_crit_edge
  %cpu_name.0 = phi ptr [ %cond, %if.then5 ], [ %cond18, %if.else15 ], [ %cond27, %if.then24 ], [ @.str.50, %if.else11.if.end68_crit_edge ], [ @.str.55, %if.else28.if.end68_crit_edge ], [ %.str.62..str.61, %if.else55 ], [ @.str.49, %land.lhs.true.if.end68_crit_edge ], [ %spec.select193, %land.lhs.true47 ], [ @.str.56, %if.end68.fold.split ], [ @.str.57, %if.end68.fold.split194 ], [ @.str.58, %if.end68.fold.split195 ]
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull @soc_name, i32 noundef 16, ptr noundef nonnull @.str.63, ptr noundef nonnull %cpu_name.0) #10
  %call71 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.64, ptr noundef nonnull @soc_name, ptr noundef nonnull @soc_rev) #10
  %6 = load i32, ptr @omap_features, align 4
  %and.i187 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool73.not = icmp eq i32 %and.i187, 0
  br i1 %tobool73.not, label %if.end68.if.end79_crit_edge, label %if.then74

if.end68.if.end79_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %buf, i32 %call71
  %sub76 = sub i32 64, %call71
  %call77 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub76, ptr noundef nonnull @.str.65) #10
  %add78 = add i32 %call77, %call71
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end68.if.end79_crit_edge
  %n.0 = phi i32 [ %add78, %if.then74 ], [ %call71, %if.end68.if.end79_crit_edge ]
  %7 = load i32, ptr @omap_features, align 4
  %and.i188 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i188)
  %tobool81.not = icmp eq i32 %and.i188, 0
  br i1 %tobool81.not, label %if.end79.if.end88_crit_edge, label %if.then82

if.end79.if.end88_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr84 = getelementptr i8, ptr %buf, i32 %n.0
  %sub85 = sub i32 64, %n.0
  %call86 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr84, i32 noundef %sub85, ptr noundef nonnull @.str.66) #10
  %add87 = add i32 %call86, %n.0
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.end79.if.end88_crit_edge
  %n.1 = phi i32 [ %add87, %if.then82 ], [ %n.0, %if.end79.if.end88_crit_edge ]
  %8 = load i32, ptr @omap_features, align 4
  %and.i189 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool90.not = icmp eq i32 %and.i189, 0
  br i1 %tobool90.not, label %if.end88.if.end97_crit_edge, label %if.then91

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr93 = getelementptr i8, ptr %buf, i32 %n.1
  %sub94 = sub i32 64, %n.1
  %call95 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr93, i32 noundef %sub94, ptr noundef nonnull @.str.67) #10
  %add96 = add i32 %call95, %n.1
  br label %if.end97

if.end97:                                         ; preds = %if.then91, %if.end88.if.end97_crit_edge
  %n.2 = phi i32 [ %add96, %if.then91 ], [ %n.1, %if.end88.if.end97_crit_edge ]
  %9 = load i32, ptr @omap_features, align 4
  %and.i190 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %tobool99.not = icmp eq i32 %and.i190, 0
  br i1 %tobool99.not, label %if.end97.if.end106_crit_edge, label %if.then100

if.end97.if.end106_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr102 = getelementptr i8, ptr %buf, i32 %n.2
  %sub103 = sub i32 64, %n.2
  %call104 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr102, i32 noundef %sub103, ptr noundef nonnull @.str.68) #10
  %add105 = add i32 %call104, %n.2
  br label %if.end106

if.end106:                                        ; preds = %if.then100, %if.end97.if.end106_crit_edge
  %n.3 = phi i32 [ %add105, %if.then100 ], [ %n.2, %if.end97.if.end106_crit_edge ]
  %10 = load i32, ptr @omap_features, align 4
  %and.i191 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i191)
  %tobool108.not = icmp eq i32 %and.i191, 0
  br i1 %tobool108.not, label %if.end106.if.end115_crit_edge, label %if.then109

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr111 = getelementptr i8, ptr %buf, i32 %n.3
  %sub112 = sub i32 64, %n.3
  %call113 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr111, i32 noundef %sub112, ptr noundef nonnull @.str.69) #10
  %add114 = add i32 %call113, %n.3
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %if.end106.if.end115_crit_edge
  %n.4 = phi i32 [ %add114, %if.then109 ], [ %n.3, %if.end106.if.end115_crit_edge ]
  %11 = load i32, ptr @omap_features, align 4
  %and.i192 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i192)
  %tobool117.not = icmp eq i32 %and.i192, 0
  br i1 %tobool117.not, label %if.end115.if.end124_crit_edge, label %if.then118

if.end115.if.end124_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr120 = getelementptr i8, ptr %buf, i32 %n.4
  %sub121 = sub i32 64, %n.4
  %call122 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr120, i32 noundef %sub121, ptr noundef nonnull @.str.70) #10
  %add123 = add i32 %call122, %n.4
  br label %if.end124

if.end124:                                        ; preds = %if.then118, %if.end115.if.end124_crit_edge
  %n.5 = phi i32 [ %add123, %if.then118 ], [ %n.4, %if.end115.if.end124_crit_edge ]
  %add.ptr126 = getelementptr i8, ptr %buf, i32 %n.5
  %add.ptr127 = getelementptr i8, ptr %add.ptr126, i32 -1
  %12 = ptrtoint ptr %add.ptr127 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp = icmp eq i8 %13, 32
  %dec = sext i1 %cmp to i32
  %spec.select = add i32 %n.5, %dec
  %add.ptr132 = getelementptr i8, ptr %buf, i32 %spec.select
  %sub133 = sub i32 64, %spec.select
  %call134 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr132, i32 noundef %sub133, ptr noundef nonnull @.str.71) #10
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %buf) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4xxx_check_features() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tap_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 536
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !219
  %2 = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %2)
  %cmp = icmp eq i32 %2, 512
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i32 512, ptr @omap_features, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ti81xx_check_features() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 8, ptr @omap_features, align 4
  tail call fastcc void @omap3_cpuinfo() #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @am33xx_check_features() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 8, ptr @omap_features, align 4
  %call = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1540) #10
  %and = and i32 %call, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @omap_features, align 4
  %or = or i32 %0, 4
  store i32 %or, ptr @omap_features, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @omap3_cpuinfo() #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3xxx_check_revision() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #15, !srcloc !221
  %1 = and i32 %0, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 49280, i32 %1)
  %2 = icmp eq i32 %1, 49280
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i32 875561012, ptr @omap_revision, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @tap_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 516
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !219
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %shr4 = lshr i32 %5, 12
  %shr6 = lshr i32 %5, 28
  %trunc = trunc i32 %shr4 to i16
  %6 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %trunc, label %sw.default58 [
    i16 -18514, label %sw.bb
    i16 -18328, label %sw.bb16
    i16 -18287, label %sw.bb22
    i16 -18402, label %sw.bb29
    i16 -18108, label %sw.bb37
    i16 -18036, label %sw.bb44
    i16 -18190, label %if.end.sw.bb51_crit_edge
    i16 -18072, label %if.end.sw.bb51_crit_edge77
  ]

if.end.sw.bb51_crit_edge77:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb51

if.end.sw.bb51_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb51

sw.bb:                                            ; preds = %if.end
  %7 = zext i32 %shr6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %shr6, label %sw.default [
    i32 0, label %sw.bb.sw.bb11_crit_edge
    i32 1, label %sw.bb.sw.bb11_crit_edge78
    i32 2, label %sw.bb12
    i32 3, label %sw.bb13
    i32 4, label %sw.bb14
  ]

sw.bb.sw.bb11_crit_edge78:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

sw.bb.sw.bb11_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb.sw.bb11_crit_edge, %sw.bb.sw.bb11_crit_edge78
  store i32 875561268, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb12:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  store i32 875561524, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb13:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  store i32 875561780, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb14:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  store i32 875562036, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  store i32 875562292, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %5)
  %cond = icmp ult i32 %5, 268435456
  br i1 %cond, label %sw.bb18, label %sw.default20

sw.bb18:                                          ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  store i32 890699828, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.default20:                                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  store i32 890700084, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb22:                                          ; preds = %if.end
  %8 = zext i32 %shr6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %shr6, label %sw.default27 [
    i32 0, label %sw.bb24
    i32 1, label %sw.bb25
  ]

sw.bb24:                                          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  store i32 909115444, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb25:                                          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  store i32 909115700, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.default27:                                     ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #12
  store i32 909115956, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb29:                                          ; preds = %if.end
  %9 = zext i32 %shr6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %shr6, label %sw.default35 [
    i32 0, label %sw.bb31
    i32 1, label %sw.bb32
    i32 2, label %sw.bb33
  ]

sw.bb31:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  store i32 -2124414847, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb32:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  store i32 -2124414591, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb33:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  store i32 -2124414335, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.default35:                                     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #12
  store i32 -2124414079, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb37:                                          ; preds = %if.end
  %10 = zext i32 %shr6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %shr6, label %sw.default42 [
    i32 0, label %sw.bb39
    i32 1, label %sw.bb40
  ]

sw.bb39:                                          ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  store i32 860880947, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb40:                                          ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  store i32 860881203, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.default42:                                     ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  store i32 860881459, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb44:                                          ; preds = %if.end
  %11 = zext i32 %shr6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %shr6, label %sw.default49 [
    i32 0, label %sw.bb46
    i32 1, label %sw.bb47
  ]

sw.bb46:                                          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1131417600, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb47:                                          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1131417856, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.default49:                                     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1131418112, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb51:                                          ; preds = %if.end.sw.bb51_crit_edge, %if.end.sw.bb51_crit_edge77
  %12 = zext i32 %shr6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %shr6, label %sw.default56 [
    i32 0, label %sw.bb51.sw.bb53_crit_edge
    i32 1, label %sw.bb51.sw.bb53_crit_edge79
    i32 2, label %sw.bb54
  ]

sw.bb51.sw.bb53_crit_edge79:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53

sw.bb51.sw.bb53_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb53

sw.bb53:                                          ; preds = %sw.bb51.sw.bb53_crit_edge, %sw.bb51.sw.bb53_crit_edge79
  store i32 -2126511999, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.bb54:                                          ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #12
  store i32 -2126511743, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.default56:                                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #12
  store i32 -2126511487, ptr @omap_revision, align 4
  br label %sw.epilog62

sw.default58:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv9 = and i32 %shr4, 65535
  store i32 909115956, ptr @omap_revision, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv9) #13
  br label %sw.epilog62

sw.epilog62:                                      ; preds = %sw.default58, %sw.default56, %sw.bb54, %sw.bb53, %sw.default49, %sw.bb47, %sw.bb46, %sw.default42, %sw.bb40, %sw.bb39, %sw.default35, %sw.bb33, %sw.bb32, %sw.bb31, %sw.default27, %sw.bb25, %sw.bb24, %sw.default20, %sw.bb18, %sw.default, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11
  %cpu_rev.0 = phi ptr [ @.str.33, %sw.default58 ], [ @.str.28, %sw.default56 ], [ @.str.27, %sw.bb54 ], [ @.str.26, %sw.bb53 ], [ @.str.33, %sw.default49 ], [ @.str.32, %sw.bb47 ], [ @.str.26, %sw.bb46 ], [ @.str.28, %sw.default42 ], [ @.str.27, %sw.bb40 ], [ @.str.26, %sw.bb39 ], [ @.str.28, %sw.default35 ], [ @.str.27, %sw.bb33 ], [ @.str.32, %sw.bb32 ], [ @.str.26, %sw.bb31 ], [ @.str.33, %sw.default27 ], [ @.str.32, %sw.bb25 ], [ @.str.26, %sw.bb24 ], [ @.str.26, %sw.bb18 ], [ @.str.32, %sw.default20 ], [ @.str.31, %sw.default ], [ @.str.30, %sw.bb14 ], [ @.str.29, %sw.bb13 ], [ @.str.28, %sw.bb12 ], [ @.str.27, %sw.bb11 ]
  %call63 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_rev, ptr noundef nonnull @.str.36, ptr noundef nonnull %cpu_rev.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog62, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4xxx_check_revision() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tap_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 516
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !219
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr i32 %2, 12
  %shr1 = lshr i32 %2, 28
  %conv3 = trunc i32 %shr1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool.not = icmp eq i8 %conv3, 0
  %trunc60 = trunc i32 %shr to i16
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = zext i16 %trunc60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.100)
  switch i16 %trunc60, label %if.then [
    i16 -18098, label %land.lhs.true.if.end_crit_edge
    i16 -18059, label %land.lhs.true.if.end_crit_edge64
  ]

land.lhs.true.if.end_crit_edge64:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #15, !srcloc !221
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 15
  %conv12 = add nsw i8 %6, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge64, %entry.if.end_crit_edge
  %rev.0 = phi i8 [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge64 ], [ %conv12, %if.then ], [ %conv3, %entry.if.end_crit_edge ]
  %7 = zext i16 %trunc60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.101)
  switch i16 %trunc60, label %sw.default35 [
    i16 -18350, label %sw.bb
    i16 -18084, label %sw.bb17
    i16 -18098, label %sw.bb24
    i16 -18059, label %if.end.sw.epilog36_crit_edge
  ]

if.end.sw.epilog36_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rev.0)
  %cond49 = icmp eq i8 %rev.0, 0
  %. = select i1 %cond49, i32 1144000580, i32 1144004676
  br label %sw.epilog36

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %rev.0)
  %switch.selectcmp = icmp eq i8 %rev.0, 4
  %switch.select = select i1 %switch.selectcmp, i32 1144005188, i32 1144005444
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %rev.0)
  %switch.selectcmp61 = icmp eq i8 %rev.0, 3
  %switch.select62 = select i1 %switch.selectcmp61, i32 1144004932, i32 %switch.select
  br label %sw.epilog36

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rev.0)
  %cond50 = icmp eq i8 %rev.0, 0
  %.63 = select i1 %cond50, i32 1147146308, i32 1147146564
  br label %sw.epilog36

sw.default35:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %sw.default35, %sw.bb24, %sw.bb17, %sw.bb, %if.end.sw.epilog36_crit_edge
  %.sink = phi i32 [ 1144005444, %sw.default35 ], [ %., %sw.bb ], [ %switch.select62, %sw.bb17 ], [ %.63, %sw.bb24 ], [ 1148194884, %if.end.sw.epilog36_crit_edge ]
  store i32 %.sink, ptr @omap_revision, align 4
  %shr38 = lshr i32 %.sink, 16
  %call39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_name, ptr noundef nonnull @.str.15, i32 noundef %shr38)
  %8 = load i32, ptr @omap_revision, align 4
  %shr41 = lshr i32 %8, 12
  %and42 = and i32 %shr41, 15
  %shr44 = lshr i32 %8, 8
  %and45 = and i32 %shr44, 15
  %call46 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_rev, ptr noundef nonnull @.str.37, i32 noundef %and42, i32 noundef %and45)
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @soc_name, ptr noundef nonnull @soc_rev) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap5xxx_check_revision() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tap_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 516
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !219
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr i32 %2, 12
  %trunc = trunc i32 %shr to i16
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.102)
  switch i16 %trunc, label %entry.sw.epilog24_crit_edge [
    i16 -18110, label %sw.bb
    i16 -18024, label %sw.bb11
  ]

entry.sw.epilog24_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %2)
  %cond = icmp ult i32 %2, 268435456
  br i1 %cond, label %do.body, label %sw.bb.sw.epilog24_crit_edge

sw.bb.sw.epilog24_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/id.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 616, 0\0A.popsection", ""() #10, !srcloc !222
  unreachable

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %2)
  %cond37 = icmp ult i32 %2, 268435456
  br i1 %cond37, label %do.body14, label %sw.bb11.sw.epilog24_crit_edge

sw.bb11.sw.epilog24_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

do.body14:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/id.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 627, 0\0A.popsection", ""() #10, !srcloc !223
  unreachable

sw.epilog24:                                      ; preds = %sw.bb11.sw.epilog24_crit_edge, %sw.bb.sw.epilog24_crit_edge, %entry.sw.epilog24_crit_edge
  %.sink = phi i32 [ 1412440148, %sw.bb.sw.epilog24_crit_edge ], [ 1412571220, %sw.bb11.sw.epilog24_crit_edge ], [ 1412440148, %entry.sw.epilog24_crit_edge ]
  store i32 %.sink, ptr @omap_revision, align 4
  %shr26 = lshr i32 %.sink, 16
  %call27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_name, ptr noundef nonnull @.str.15, i32 noundef %shr26)
  %4 = load i32, ptr @omap_revision, align 4
  %shr29 = lshr i32 %4, 12
  %and30 = and i32 %shr29, 15
  %call31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_rev, ptr noundef nonnull @.str.40, i32 noundef %and30)
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @soc_name, ptr noundef nonnull @soc_rev) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dra7xxx_check_revision() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  %odi = alloca %struct.omap_die_id, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %odi) #10
  %0 = getelementptr inbounds %struct.omap_die_id, ptr %odi, i32 0, i32 2
  %1 = call ptr @memset(ptr %odi, i32 255, i32 16)
  call void @omap_get_die_id(ptr noundef nonnull %odi)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %0, align 4
  %4 = load ptr, ptr @tap_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 516
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !219
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shr1 = lshr i32 %6, 12
  %shr4 = lshr i32 %6, 28
  %trunc = trunc i32 %shr1 to i16
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %trunc, label %do.end [
    i16 -17584, label %sw.bb
    i16 -18032, label %sw.bb15
    i16 -17988, label %sw.bb22
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %3, 16
  %conv = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv)
  %switch.selectcmp = icmp eq i32 %conv, 3
  %switch.select = select i1 %switch.selectcmp, i32 123867139, i32 123867136
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv)
  %switch.selectcmp56 = icmp eq i32 %conv, 2
  %switch.select57 = select i1 %switch.selectcmp56, i32 123867138, i32 %switch.select
  br label %sw.epilog34

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr4)
  %switch.selectcmp58 = icmp eq i32 %shr4, 1
  %switch.select59 = select i1 %switch.selectcmp58, i32 122818816, i32 122822656
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %6)
  %switch.selectcmp60 = icmp ult i32 %6, 268435456
  %switch.select61 = select i1 %switch.selectcmp60, i32 122818560, i32 %switch.select59
  br label %sw.epilog34

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr4)
  %switch.selectcmp62 = icmp eq i32 %shr4, 1
  %switch.select63 = select i1 %switch.selectcmp62, i32 119676928, i32 119677184
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %6)
  %switch.selectcmp64 = icmp ult i32 %6, 268435456
  %switch.select65 = select i1 %switch.selectcmp64, i32 119672832, i32 %switch.select63
  br label %sw.epilog34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv7 = and i32 %shr1, 65535
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %6, i32 noundef %conv7, i32 noundef %shr4) #13
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %do.end, %sw.bb22, %sw.bb15, %sw.bb
  %.sink = phi i32 [ 122822656, %do.end ], [ %switch.select57, %sw.bb ], [ %switch.select61, %sw.bb15 ], [ %switch.select65, %sw.bb22 ]
  store i32 %.sink, ptr @omap_revision, align 4
  %shr36 = lshr i32 %.sink, 16
  %call37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_name, ptr noundef nonnull @.str.44, i32 noundef %shr36)
  %8 = load i32, ptr @omap_revision, align 4
  %shr39 = lshr i32 %8, 12
  %and40 = and i32 %shr39, 15
  %shr42 = lshr i32 %8, 8
  %and43 = and i32 %shr42, 15
  %call44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @soc_rev, ptr noundef nonnull @.str.37, i32 noundef %and40, i32 noundef %and43)
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @soc_name, ptr noundef nonnull @soc_rev) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %odi) #10
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @omap2_set_globals_tap(i32 noundef %class, ptr noundef %tap) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %class, ptr @omap_revision, align 4
  store ptr %tap, ptr @tap_base, align 4
  %and.i = and i32 %class, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 52
  %. = select i1 %cmp.i.not, i16 528, i16 520
  store i16 %., ptr @tap_prod_id, align 2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_soc_device_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @soc_name, ptr %call7.i.i, align 8
  %call1 = tail call fastcc ptr @omap_get_family() #14
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %family, align 4
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @soc_rev, ptr %revision, align 8
  %custom_attr_group = getelementptr inbounds %struct.soc_device_attribute, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %custom_attr_group to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @omap_soc_group, ptr %custom_attr_group, align 8
  %call2 = tail call ptr @soc_device_register(ptr noundef nonnull %call7.i.i) #10
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @omap_get_family() unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @omap_revision, align 4
  %and.i = and i32 %0, 255
  %1 = add nsw i32 %and.i, -36
  %2 = call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %switch.lookup, label %if.else16

if.else16:                                        ; preds = %entry
  %shr.mask.i = and i32 %0, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 855638016, i32 %shr.mask.i)
  %cmp.i44.not = icmp eq i32 %shr.mask.i, 855638016
  %shr.mask.i46 = and i32 %0, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 860880896, i32 %shr.mask.i46)
  %cmp.i47.not = icmp eq i32 %shr.mask.i46, 860880896
  %or.cond = or i1 %cmp.i44.not, %cmp.i47.not
  br i1 %or.cond, label %if.else16.return_crit_edge, label %if.else23

if.else16.return_crit_edge:                       ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else23:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i)
  %switch.selectcmp = icmp eq i32 %shr.mask.i, 117440512
  %switch.select = select i1 %switch.selectcmp, ptr @.str.79, ptr @.str.80
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i)
  %switch.selectcmp55 = icmp eq i32 %shr.mask.i, 1124073472
  %switch.select56 = select i1 %switch.selectcmp55, ptr @.str.78, ptr %switch.select
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.omap_get_family, i32 0, i32 %2
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.else23, %if.else16.return_crit_edge
  %.str.80.sink = phi ptr [ @.str.77, %if.else16.return_crit_edge ], [ %switch.select56, %if.else23 ], [ %switch.load, %switch.lookup ]
  %call34 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull %.str.80.sink) #10
  ret ptr %call34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_type()
  %arrayidx = getelementptr [5 x ptr], ptr @omap_types, i32 0, i32 %call
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.82, ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !92, !93, !94, !96, !97, !98, !99, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !171, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !193, !195, !196, !198, !200, !202, !204, !206, !208}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @__ksymtab_omap_rev, !1, !"__ksymtab_omap_rev", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/id.c", i32 48, i32 1}
!2 = !{ptr @omap_type.val, !3, !"val", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/id.c", i32 52, i32 13}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/id.c", i32 73, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @omap_type._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @omap_type._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_omap_type, !11, !"__ksymtab_omap_type", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/id.c", i32 83, i32 1}
!12 = !{ptr @__initcall__kmod_id__288_145___omap_feed_randpool6, !13, !"__initcall__kmod_id__288_145___omap_feed_randpool6", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/id.c", i32 145, i32 1}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/id.c", i32 162, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug289, !15, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/id.c", i32 164, i32 2}
!21 = !{ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug290, !20, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/id.c", i32 165, i32 2}
!24 = !{ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug291, !23, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-omap2/id.c", i32 167, i32 2}
!27 = !{ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug292, !26, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/id.c", i32 168, i32 2}
!30 = !{ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug293, !29, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/id.c", i32 169, i32 2}
!33 = !{ptr @omap2xxx_check_revision.__UNIQUE_ID_ddebug294, !32, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/id.c", i32 179, i32 3}
!36 = !{ptr @omap2xxx_check_revision._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @omap2xxx_check_revision._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/id.c", i32 189, i32 3}
!40 = !{ptr @omap2xxx_check_revision._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @omap2xxx_check_revision._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/id.c", i32 194, i32 20}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/id.c", i32 195, i32 19}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/id.c", i32 197, i32 2}
!48 = !{ptr @omap2xxx_check_revision._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @omap2xxx_check_revision._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/id.c", i32 199, i32 3}
!52 = !{ptr @omap2xxx_check_revision._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @omap2xxx_check_revision._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/id.c", i32 200, i32 2}
!56 = !{ptr @omap2xxx_check_revision._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @omap2xxx_check_revision._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/id.c", i32 363, i32 13}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/id.c", i32 384, i32 14}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/id.c", i32 388, i32 14}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/id.c", i32 392, i32 14}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/id.c", i32 396, i32 14}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/id.c", i32 402, i32 14}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/id.c", i32 420, i32 14}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/id.c", i32 438, i32 14}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/id.c", i32 518, i32 3}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @omap3xxx_check_revision._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @omap3xxx_check_revision._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/mach-omap2/id.c", i32 521, i32 19}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../arch/arm/mach-omap2/id.c", i32 597, i32 19}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-omap2/id.c", i32 599, i32 2}
!85 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @omap4xxx_check_revision._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @omap4xxx_check_revision._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-omap2/id.c", i32 640, i32 19}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-omap2/id.c", i32 642, i32 2}
!92 = !{ptr @omap5xxx_check_revision._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @omap5xxx_check_revision._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-omap2/id.c", i32 709, i32 3}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @dra7xxx_check_revision._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @dra7xxx_check_revision._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../arch/arm/mach-omap2/id.c", i32 714, i32 20}
!101 = !{ptr @dra7xxx_check_revision._entry.45, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../arch/arm/mach-omap2/id.c", i32 718, i32 2}
!103 = !{ptr @dra7xxx_check_revision._entry_ptr.46, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @omap_revision, !105, !"omap_revision", i1 false, i1 false}
!105 = !{!"../arch/arm/mach-omap2/id.c", i32 39, i32 21}
!106 = !{ptr @soc_name, !107, !"soc_name", i1 false, i1 false}
!107 = !{!"../arch/arm/mach-omap2/id.c", i32 40, i32 13}
!108 = !{ptr @soc_rev, !109, !"soc_rev", i1 false, i1 false}
!109 = !{!"../arch/arm/mach-omap2/id.c", i32 41, i32 13}
!110 = !{ptr @omap_features, !111, !"omap_features", i1 false, i1 false}
!111 = !{!"../arch/arm/mach-omap2/id.c", i32 42, i32 5}
!112 = !{ptr @tap_base, !113, !"tap_base", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-omap2/id.c", i32 117, i32 22}
!114 = !{ptr @tap_prod_id, !115, !"tap_prod_id", i1 false, i1 false}
!115 = !{!"../arch/arm/mach-omap2/id.c", i32 118, i32 12}
!116 = !{ptr @omap_ids, !117, !"omap_ids", i1 false, i1 false}
!117 = !{!"../arch/arm/mach-omap2/id.c", i32 108, i32 23}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../arch/arm/mach-omap2/id.c", i32 224, i32 35}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../arch/arm/mach-omap2/id.c", i32 224, i32 55}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../arch/arm/mach-omap2/id.c", i32 226, i32 15}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../arch/arm/mach-omap2/id.c", i32 228, i32 15}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-omap2/id.c", i32 230, i32 35}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../arch/arm/mach-omap2/id.c", i32 230, i32 46}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-omap2/id.c", i32 233, i32 34}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../arch/arm/mach-omap2/id.c", i32 233, i32 45}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../arch/arm/mach-omap2/id.c", i32 235, i32 14}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../arch/arm/mach-omap2/id.c", i32 237, i32 15}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-omap2/id.c", i32 239, i32 15}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../arch/arm/mach-omap2/id.c", i32 241, i32 14}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../arch/arm/mach-omap2/id.c", i32 244, i32 14}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../arch/arm/mach-omap2/id.c", i32 246, i32 14}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../arch/arm/mach-omap2/id.c", i32 248, i32 14}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../arch/arm/mach-omap2/id.c", i32 250, i32 14}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../arch/arm/mach-omap2/id.c", i32 253, i32 40}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../arch/arm/mach-omap2/id.c", i32 256, i32 39}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../arch/arm/mach-omap2/id.c", i32 258, i32 2}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../arch/arm/mach-omap2/id.c", i32 259, i32 2}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../arch/arm/mach-omap2/id.c", i32 260, i32 2}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../arch/arm/mach-omap2/id.c", i32 261, i32 2}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../arch/arm/mach-omap2/id.c", i32 262, i32 2}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../arch/arm/mach-omap2/id.c", i32 263, i32 2}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../arch/arm/mach-omap2/id.c", i32 266, i32 43}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../arch/arm/mach-omap2/id.c", i32 267, i32 2}
!170 = !{ptr @omap3_cpuinfo._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @omap3_cpuinfo._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../arch/arm/mach-omap2/id.c", i32 753, i32 32}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../arch/arm/mach-omap2/id.c", i32 755, i32 32}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../arch/arm/mach-omap2/id.c", i32 757, i32 32}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../arch/arm/mach-omap2/id.c", i32 759, i32 32}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../arch/arm/mach-omap2/id.c", i32 761, i32 32}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../arch/arm/mach-omap2/id.c", i32 763, i32 32}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../arch/arm/mach-omap2/id.c", i32 765, i32 32}
!186 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../arch/arm/mach-omap2/id.c", i32 767, i32 32}
!188 = distinct !{null, !189, !"omap_soc_groups", i1 false, i1 false}
!189 = !{!"../arch/arm/mach-omap2/id.c", i32 783, i32 1}
!190 = !{ptr @omap_soc_group, !189, !"omap_soc_group", i1 false, i1 false}
!191 = !{ptr @omap_soc_attrs, !192, !"omap_soc_attrs", i1 false, i1 false}
!192 = !{!"../arch/arm/mach-omap2/id.c", i32 778, i32 26}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../arch/arm/mach-omap2/id.c", i32 776, i32 8}
!195 = !{ptr @dev_attr_type, !194, !"dev_attr_type", i1 false, i1 false}
!196 = !{ptr @.str.82, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../arch/arm/mach-omap2/id.c", i32 773, i32 22}
!198 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../arch/arm/mach-omap2/id.c", i32 743, i32 29}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../arch/arm/mach-omap2/id.c", i32 744, i32 29}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../arch/arm/mach-omap2/id.c", i32 745, i32 29}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../arch/arm/mach-omap2/id.c", i32 746, i32 28}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../arch/arm/mach-omap2/id.c", i32 747, i32 29}
!208 = !{ptr @omap_types, !209, !"omap_types", i1 false, i1 false}
!209 = !{!"../arch/arm/mach-omap2/id.c", i32 742, i32 27}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{i64 4052597}
!220 = !{i64 2148969946, i64 2148969951, i64 2148969964, i64 2148970008, i64 2148970042, i64 2148970063}
!221 = !{i64 2152781595}
!222 = !{i64 2155841423, i64 2155841912, i64 2155841460, i64 2155841516, i64 2155841550, i64 2155841574, i64 2155841615, i64 2155841636, i64 2155841664, i64 2155841698}
!223 = !{i64 2155842973, i64 2155843462, i64 2155843010, i64 2155843066, i64 2155843100, i64 2155843124, i64 2155843165, i64 2155843186, i64 2155843214, i64 2155843248}
