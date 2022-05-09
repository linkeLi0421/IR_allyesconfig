; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/tcm.c_pt.bc'
source_filename = "../arch/arm/kernel/tcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tcm_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_tcm_alloc\09\09\09\09"
module asm "\09.long\09__crc_tcm_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcm_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22tcm_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_tcm_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tcm_free\22, \22a\22\09"
module asm "\09.weak\09__crc_tcm_free\09\09\09\09"
module asm "\09.long\09__crc_tcm_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcm_free:\09\09\09\09\09"
module asm "\09.asciz \09\22tcm_free\22\09\09\09\09\09"
module asm "__kstrtabns_tcm_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tcm_dtcm_present\22, \22a\22\09"
module asm "\09.weak\09__crc_tcm_dtcm_present\09\09\09\09"
module asm "\09.long\09__crc_tcm_dtcm_present\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcm_dtcm_present:\09\09\09\09\09"
module asm "\09.asciz \09\22tcm_dtcm_present\22\09\09\09\09\09"
module asm "__kstrtabns_tcm_dtcm_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tcm_itcm_present\22, \22a\22\09"
module asm "\09.weak\09__crc_tcm_itcm_present\09\09\09\09"
module asm "\09.long\09__crc_tcm_itcm_present\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcm_itcm_present:\09\09\09\09\09"
module asm "\09.asciz \09\22tcm_itcm_present\22\09\09\09\09\09"
module asm "__kstrtabns_tcm_itcm_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@tcm_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_tcm_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcm_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_tcm_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcm_alloc to i32), ptr @__kstrtab_tcm_alloc, ptr @__kstrtabns_tcm_alloc }, section "___ksymtab+tcm_alloc", align 4
@__kstrtab_tcm_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcm_free = external dso_local constant [0 x i8], align 1
@__ksymtab_tcm_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcm_free to i32), ptr @__kstrtab_tcm_free, ptr @__kstrtabns_tcm_free }, section "___ksymtab+tcm_free", align 4
@dtcm_present = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_tcm_dtcm_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcm_dtcm_present = external dso_local constant [0 x i8], align 1
@__ksymtab_tcm_dtcm_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcm_dtcm_present to i32), ptr @__kstrtab_tcm_dtcm_present, ptr @__kstrtabns_tcm_dtcm_present }, section "___ksymtab+tcm_dtcm_present", align 4
@itcm_present = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_tcm_itcm_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcm_itcm_present = external dso_local constant [0 x i8], align 1
@__ksymtab_tcm_itcm_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcm_itcm_present to i32), ptr @__kstrtab_tcm_itcm_present, ptr @__kstrtabns_tcm_itcm_present }, section "___ksymtab+tcm_itcm_present", align 4
@__edtcm_data = external dso_local global i8, align 1
@__sdtcm_data = external dso_local global i8, align 1
@__eitcm_text = external dso_local global i8, align 1
@__sitcm_text = external dso_local global i8, align 1
@tcm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\016CPU TCM: %u bytes of DTCM and %u bytes of ITCM code compiled in, but no TCM present in pre-v5 CPU\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcm_init\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arch/arm/kernel/tcm.c\00", [42 x i8] zeroinitializer }, align 32
@tcm_init._entry_ptr = internal global ptr @tcm_init._entry, section ".printk_index", align 4
@tcm_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 -61473, i32 -300347631, i32 31, i32 19, ptr @tcm_handler }, section ".init.data", align 4
@dtcm_end = internal global { i32, [28 x i8] } { i32 -98304, [28 x i8] zeroinitializer }, align 32
@tcm_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016CPU DTCM: %u bytes of code compiled to DTCM but only %lu bytes of DTCM present\0A\00", [46 x i8] zeroinitializer }, align 32
@tcm_init._entry_ptr.5 = internal global ptr @tcm_init._entry.3, section ".printk_index", align 4
@dtcm_res = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 -98304, i32 -98304, ptr @.str.33, i32 512, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@dtcm_iomap = internal global [1 x %struct.map_desc] [%struct.map_desc { i32 -98304, i32 1048552, i32 0, i32 13 }], section ".init.data", align 4
@__dtcm_start = external dso_local local_unnamed_addr global i8, align 1
@tcm_init.__UNIQUE_ID_ddebug114 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcm\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CPU DTCM: copied data from %p - %p\0A\00", [60 x i8] zeroinitializer }, align 32
@tcm_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016CPU DTCM: %u bytes of code compiled to DTCM but no DTCM banks present in CPU\0A\00", [48 x i8] zeroinitializer }, align 32
@tcm_init._entry_ptr.10 = internal global ptr @tcm_init._entry.8, section ".printk_index", align 4
@itcm_end = internal global { i32, [28 x i8] } { i32 -131072, [28 x i8] zeroinitializer }, align 32
@tcm_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016CPU ITCM: %u bytes of code compiled to ITCM but only %lu bytes of ITCM present\0A\00", [46 x i8] zeroinitializer }, align 32
@tcm_init._entry_ptr.13 = internal global ptr @tcm_init._entry.11, section ".printk_index", align 4
@itcm_res = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 -131072, i32 -131072, ptr @.str.34, i32 512, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@itcm_iomap = internal global [1 x %struct.map_desc] [%struct.map_desc { i32 -131072, i32 1048544, i32 0, i32 14 }], section ".init.data", align 4
@__itcm_start = external dso_local local_unnamed_addr global i8, align 1
@tcm_init.__UNIQUE_ID_ddebug115 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CPU ITCM: copied code from %p - %p\0A\00", [60 x i8] zeroinitializer }, align 32
@tcm_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016CPU ITCM: %u bytes of code compiled to ITCM but no ITCM banks present in CPU\0A\00", [48 x i8] zeroinitializer }, align 32
@tcm_init._entry_ptr.17 = internal global ptr @tcm_init._entry.15, section ".printk_index", align 4
@__initcall__kmod_tcm__119_435_setup_tcm_pool1 = internal global ptr @setup_tcm_pool, section ".initcall1.init", align 4
@__const.setup_tcm_bank.tcm_sizes = private unnamed_addr constant [16 x i32] [i32 0, i32 -1, i32 -1, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@setup_tcm_bank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013CPU: %sTCM%d of unknown size\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_tcm_bank\00", [17 x i8] zeroinitializer }, align 32
@setup_tcm_bank._entry_ptr = internal global ptr @setup_tcm_bank._entry, section ".printk_index", align 4
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@setup_tcm_bank._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013CPU: %sTCM%d larger than 32k found\0A\00", [58 x i8] zeroinitializer }, align 32
@setup_tcm_bank._entry_ptr.24 = internal global ptr @setup_tcm_bank._entry.22, section ".printk_index", align 4
@setup_tcm_bank._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016CPU: found %sTCM%d %dk @ %08x, %senabled\0A\00", [52 x i8] zeroinitializer }, align 32
@setup_tcm_bank._entry_ptr.27 = internal global ptr @setup_tcm_bank._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@setup_tcm_bank._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.19, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016CPU: moved %sTCM%d %dk to %08x, enabled\0A\00", [53 x i8] zeroinitializer }, align 32
@setup_tcm_bank._entry_ptr.32 = internal global ptr @setup_tcm_bank._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DTCM RAM\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ITCM RAM\00", [23 x i8] zeroinitializer }, align 32
@setup_tcm_pool.__UNIQUE_ID_ddebug116 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_tcm_pool\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Setting up TCM memory pool\0A\00", [36 x i8] zeroinitializer }, align 32
@setup_tcm_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CPU DTCM: could not add DTCM remainder to pool!\0A\00", [45 x i8] zeroinitializer }, align 32
@setup_tcm_pool._entry_ptr = internal global ptr @setup_tcm_pool._entry, section ".printk_index", align 4
@setup_tcm_pool.__UNIQUE_ID_ddebug117 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.35, ptr @.str.2, ptr @.str.38, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"CPU DTCM: Added %08x bytes @ %08x to the TCM memory pool\0A\00", [38 x i8] zeroinitializer }, align 32
@setup_tcm_pool._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CPU ITCM: could not add ITCM remainder to pool!\0A\00", [45 x i8] zeroinitializer }, align 32
@setup_tcm_pool._entry_ptr.41 = internal global ptr @setup_tcm_pool._entry.39, section ".printk_index", align 4
@setup_tcm_pool.__UNIQUE_ID_ddebug118 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.35, ptr @.str.2, ptr @.str.42, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"CPU ITCM: Added %08x bytes @ %08x to the TCM memory pool\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"tcm_pool\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 25, i32 25 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"dtcm_present\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"itcm_present\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 275, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"dtcm_end\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 34, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 309, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"dtcm_res\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 40, i32 24 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 329, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 333, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [9 x i8] c"itcm_end\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 35, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 347, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [9 x i8] c"itcm_res\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 47, i32 24 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 367, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 371, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 139, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 143, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 147, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 174, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 41, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 48, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 397, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 405, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 409, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 422, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [25 x i8] c"../arch/arm/kernel/tcm.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 426, i32 4 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__initcall__kmod_tcm__119_435_setup_tcm_pool1, ptr @__ksymtab_tcm_alloc, ptr @__ksymtab_tcm_dtcm_present, ptr @__ksymtab_tcm_free, ptr @__ksymtab_tcm_itcm_present, ptr @setup_tcm_bank._entry, ptr @setup_tcm_bank._entry.22, ptr @setup_tcm_bank._entry.25, ptr @setup_tcm_bank._entry.30, ptr @setup_tcm_bank._entry_ptr, ptr @setup_tcm_bank._entry_ptr.24, ptr @setup_tcm_bank._entry_ptr.27, ptr @setup_tcm_bank._entry_ptr.32, ptr @setup_tcm_pool._entry, ptr @setup_tcm_pool._entry.39, ptr @setup_tcm_pool._entry_ptr, ptr @setup_tcm_pool._entry_ptr.41, ptr @tcm_init._entry, ptr @tcm_init._entry.11, ptr @tcm_init._entry.15, ptr @tcm_init._entry.3, ptr @tcm_init._entry.8, ptr @tcm_init._entry_ptr, ptr @tcm_init._entry_ptr.10, ptr @tcm_init._entry_ptr.13, ptr @tcm_init._entry_ptr.17, ptr @tcm_init._entry_ptr.5, ptr @tcm_pool, ptr @dtcm_present, ptr @itcm_present, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dtcm_end, ptr @.str.4, ptr @dtcm_res, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @itcm_end, ptr @.str.12, ptr @itcm_res, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtcm_present to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itcm_present to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtcm_end to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtcm_res to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itcm_end to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itcm_res to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcm_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_tcm_bank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_tcm_bank._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_tcm_bank._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_tcm_bank._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_tcm_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_tcm_pool._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tcm_alloc(i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tcm_pool, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %0, i32 noundef %len, ptr noundef %2, ptr noundef %4, ptr noundef null) #7
  %5 = inttoptr i32 %call.i.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %5, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcm_free(ptr noundef %addr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tcm_pool, align 4
  %1 = ptrtoint ptr %addr to i32
  tail call void @gen_pool_free_owner(ptr noundef %0, i32 noundef %1, i32 noundef %len, ptr noundef null) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tcm_dtcm_present() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @dtcm_present, align 1
  ret i1 %.b1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tcm_itcm_present() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @itcm_present, align 1
  ret i1 %.b1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tcm_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpu_architecture() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp = icmp slt i32 %call, 4
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  br i1 or (i1 icmp ne (i32 sub (i32 ptrtoint (ptr @__edtcm_data to i32), i32 ptrtoint (ptr @__sdtcm_data to i32)), i32 0), i1 icmp ne (i32 sub (i32 ptrtoint (ptr @__eitcm_text to i32), i32 ptrtoint (ptr @__sitcm_text to i32)), i32 0)), label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef sub (i32 ptrtoint (ptr @__edtcm_data to i32), i32 ptrtoint (ptr @__sdtcm_data to i32)), i32 noundef sub (i32 ptrtoint (ptr @__eitcm_text to i32), i32 ptrtoint (ptr @__sitcm_text to i32))) #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 2", "=r,~{cc}"() #12, !srcloc !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %0)
  %tobool6.not = icmp ult i32 %0, 536870912
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %shr = lshr i32 %0, 16
  %1 = trunc i32 %shr to i8
  %conv = and i8 %1, 3
  %2 = trunc i32 %0 to i8
  %conv11 = and i8 %2, 3
  tail call void @register_undef_hook(ptr noundef nonnull @tcm_hook) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv)
  %cmp13 = icmp eq i8 %conv, 3
  %spec.store.select = select i1 %cmp13, i8 0, i8 %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv11)
  %cmp18 = icmp eq i8 %conv11, 3
  %spec.store.select140 = select i1 %cmp18, i8 0, i8 %conv11
  %conv22 = zext i8 %spec.store.select to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp23.not = icmp eq i8 %spec.store.select, 0
  br i1 %cmp23.not, label %if.else, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, %conv22
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.0179 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %conv29 = trunc i32 %i.0179 to i8
  %call30 = tail call fastcc i32 @setup_tcm_bank(i8 noundef zeroext 0, i8 noundef zeroext %conv29, i8 noundef zeroext %spec.store.select, ptr noundef nonnull @dtcm_end) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.cond, label %for.body.unregister_crit_edge

for.body.unregister_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr @dtcm_end, align 4
  %sub = add i32 %3, 98304
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 sub (i32 ptrtoint (ptr @__edtcm_data to i32), i32 ptrtoint (ptr @__sdtcm_data to i32)))
  %cmp34 = icmp ult i32 %sub, sub (i32 ptrtoint (ptr @__edtcm_data to i32), i32 ptrtoint (ptr @__sdtcm_data to i32))
  br i1 %cmp34, label %do.end39, label %if.end43

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef sub (i32 ptrtoint (ptr @__edtcm_data to i32), i32 ptrtoint (ptr @__sdtcm_data to i32)), i32 noundef %sub) #11
  br label %no_dtcm

if.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool45.not = icmp eq i32 %sub, 0
  br i1 %tobool45.not, label %if.end43.no_dtcm_crit_edge, label %if.end47

if.end43.no_dtcm_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dtcm

if.end47:                                         ; preds = %if.end43
  %sub48 = add i32 %3, -1
  store i32 %sub48, ptr getelementptr inbounds (%struct.resource, ptr @dtcm_res, i32 0, i32 1), align 4
  %call49 = tail call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @dtcm_res) #7
  %4 = load i32, ptr @dtcm_end, align 4
  %sub50 = add i32 %4, 98304
  store i32 %sub50, ptr getelementptr inbounds ([1 x %struct.map_desc], ptr @dtcm_iomap, i32 0, i32 0, i32 2), align 4
  tail call void @iotable_init(ptr noundef nonnull @dtcm_iomap, i32 noundef 1) #7
  %5 = call ptr @memcpy(ptr @__sdtcm_data, ptr @__dtcm_start, i32 sub (i32 ptrtoint (ptr @__edtcm_data to i32), i32 ptrtoint (ptr @__sdtcm_data to i32)))
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_init.__UNIQUE_ID_ddebug114, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_init, %if.then57)) #7
          to label %do.end60 [label %if.then57], !srcloc !112

if.then57:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_init.__UNIQUE_ID_ddebug114, ptr noundef nonnull @.str.7, ptr noundef nonnull @__sdtcm_data, ptr noundef nonnull @__edtcm_data) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %if.end47
  store i1 true, ptr @dtcm_present, align 1
  br label %no_dtcm

if.else:                                          ; preds = %if.end8
  br i1 icmp ne (i32 sub (i32 ptrtoint (ptr @__edtcm_data to i32), i32 ptrtoint (ptr @__sdtcm_data to i32)), i32 0), label %do.end65, label %if.else.no_dtcm_crit_edge

if.else.no_dtcm_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %no_dtcm

do.end65:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef sub (i32 ptrtoint (ptr @__edtcm_data to i32), i32 ptrtoint (ptr @__sdtcm_data to i32))) #11
  br label %no_dtcm

no_dtcm:                                          ; preds = %do.end65, %if.else.no_dtcm_crit_edge, %do.end60, %if.end43.no_dtcm_crit_edge, %do.end39
  %conv70 = zext i8 %spec.store.select140 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select140)
  %cmp71.not = icmp eq i8 %spec.store.select140, 0
  br i1 %cmp71.not, label %if.else121, label %no_dtcm.for.body78_crit_edge

no_dtcm.for.body78_crit_edge:                     ; preds = %no_dtcm
  br label %for.body78

for.cond74:                                       ; preds = %for.body78
  %inc85 = add nuw nsw i32 %i.1181, 1
  %exitcond183.not = icmp eq i32 %inc85, %conv70
  br i1 %exitcond183.not, label %for.end86, label %for.cond74.for.body78_crit_edge

for.cond74.for.body78_crit_edge:                  ; preds = %for.cond74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body78

for.body78:                                       ; preds = %for.cond74.for.body78_crit_edge, %no_dtcm.for.body78_crit_edge
  %i.1181 = phi i32 [ %inc85, %for.cond74.for.body78_crit_edge ], [ 0, %no_dtcm.for.body78_crit_edge ]
  %conv79 = trunc i32 %i.1181 to i8
  %call80 = tail call fastcc i32 @setup_tcm_bank(i8 noundef zeroext 1, i8 noundef zeroext %conv79, i8 noundef zeroext %spec.store.select140, ptr noundef nonnull @itcm_end) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %for.cond74, label %for.body78.unregister_crit_edge

for.body78.unregister_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister

for.end86:                                        ; preds = %for.cond74
  %6 = load i32, ptr @itcm_end, align 4
  %sub87 = add i32 %6, 131072
  call void @__sanitizer_cov_trace_cmp4(i32 %sub87, i32 sub (i32 ptrtoint (ptr @__eitcm_text to i32), i32 ptrtoint (ptr @__sitcm_text to i32)))
  %cmp88 = icmp ult i32 %sub87, sub (i32 ptrtoint (ptr @__eitcm_text to i32), i32 ptrtoint (ptr @__sitcm_text to i32))
  br i1 %cmp88, label %do.end93, label %if.end97

do.end93:                                         ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef sub (i32 ptrtoint (ptr @__eitcm_text to i32), i32 ptrtoint (ptr @__sitcm_text to i32)), i32 noundef %sub87) #11
  br label %unregister

if.end97:                                         ; preds = %for.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub87)
  %tobool99.not = icmp eq i32 %sub87, 0
  br i1 %tobool99.not, label %if.end97.unregister_crit_edge, label %if.end101

if.end97.unregister_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister

if.end101:                                        ; preds = %if.end97
  %sub102 = add i32 %6, -1
  store i32 %sub102, ptr getelementptr inbounds (%struct.resource, ptr @itcm_res, i32 0, i32 1), align 4
  %call103 = tail call i32 @request_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull @itcm_res) #7
  %7 = load i32, ptr @itcm_end, align 4
  %sub104 = add i32 %7, 131072
  store i32 %sub104, ptr getelementptr inbounds ([1 x %struct.map_desc], ptr @itcm_iomap, i32 0, i32 0, i32 2), align 4
  tail call void @iotable_init(ptr noundef nonnull @itcm_iomap, i32 noundef 1) #7
  %8 = call ptr @memcpy(ptr @__sitcm_text, ptr @__itcm_start, i32 sub (i32 ptrtoint (ptr @__eitcm_text to i32), i32 ptrtoint (ptr @__sitcm_text to i32)))
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcm_init.__UNIQUE_ID_ddebug115, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcm_init, %if.then117)) #7
          to label %do.end120 [label %if.then117], !srcloc !112

if.then117:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcm_init.__UNIQUE_ID_ddebug115, ptr noundef nonnull @.str.14, ptr noundef nonnull @__sitcm_text, ptr noundef nonnull @__eitcm_text) #7
  br label %do.end120

do.end120:                                        ; preds = %if.then117, %if.end101
  store i1 true, ptr @itcm_present, align 1
  br label %unregister

if.else121:                                       ; preds = %no_dtcm
  br i1 icmp ne (i32 sub (i32 ptrtoint (ptr @__eitcm_text to i32), i32 ptrtoint (ptr @__sitcm_text to i32)), i32 0), label %do.end126, label %if.else121.unregister_crit_edge

if.else121.unregister_crit_edge:                  ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister

do.end126:                                        ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #9
  %call128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef sub (i32 ptrtoint (ptr @__eitcm_text to i32), i32 ptrtoint (ptr @__sitcm_text to i32))) #11
  br label %unregister

unregister:                                       ; preds = %do.end126, %if.else121.unregister_crit_edge, %do.end120, %if.end97.unregister_crit_edge, %do.end93, %for.body78.unregister_crit_edge, %for.body.unregister_crit_edge
  tail call void @unregister_undef_hook(ptr noundef nonnull @tcm_hook) #7
  br label %cleanup

cleanup:                                          ; preds = %unregister, %if.end4.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_tcm_bank(i8 noundef zeroext %type, i8 noundef zeroext %bank, i8 noundef zeroext %banks, ptr nocapture noundef %offset) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %banks)
  %cmp = icmp ugt i8 %banks, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c9, c2, 0", "r"(i8 %bank) #7, !srcloc !113
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %tobool.not = icmp eq i8 %type, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c9, c1, 0", "=r"() #12, !srcloc !114
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c9, c1, 1", "=r"() #12, !srcloc !115
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %tcm_region.0 = phi i32 [ %1, %if.else ], [ %0, %if.then2 ]
  %shr = lshr i32 %tcm_region.0, 2
  %and = and i32 %shr, 15
  %arrayidx = getelementptr [16 x i32], ptr @__const.setup_tcm_bank.tcm_sizes, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = lshr i32 61446, %and
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.else10, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %tobool.not, ptr @.str.21, ptr @.str.20
  %conv9 = zext i8 %bank to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %cond, i32 noundef %conv9) #11
  br label %cleanup

if.else10:                                        ; preds = %if.end3
  %6 = add nsw i32 %and, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp11 = icmp ult i32 %6, 5
  %cond20 = select i1 %tobool.not, ptr @.str.21, ptr @.str.20
  %conv21 = zext i8 %bank to i32
  br i1 %cmp11, label %do.end16, label %do.end26

do.end16:                                         ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %cond20, i32 noundef %conv21) #11
  br label %cleanup

do.end26:                                         ; preds = %if.else10
  %and32 = and i32 %tcm_region.0, -4096
  %and33 = and i32 %tcm_region.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond35 = select i1 %tobool34.not, ptr @.str.29, ptr @.str.28
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull %cond20, i32 noundef %conv21, i32 noundef %3, i32 noundef %and32, ptr noundef nonnull %cond35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp39 = icmp eq i32 %and, 0
  br i1 %cmp39, label %do.end26.cleanup_crit_edge, label %if.end42

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %do.end26
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %and43 = and i32 %tcm_region.0, 4094
  %or = or i32 %and43, %8
  %or44 = or i32 %or, 1
  br i1 %tobool.not, label %if.then46, label %if.else47

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c9, c1, 0", "r"(i32 %or44) #7, !srcloc !116
  br label %if.end48

if.else47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c9, c1, 1", "r"(i32 %or44) #7, !srcloc !117
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then46
  %shl = shl i32 %3, 10
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add = add i32 %10, %shl
  store i32 %add, ptr %offset, align 4
  %and57 = and i32 %8, -4096
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull %cond20, i32 noundef %conv21, i32 noundef %3, i32 noundef %and57) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end26.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ 0, %if.end48 ], [ 0, %do.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_undef_hook(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_tcm_pool() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gen_pool_create(i32 noundef 2, i32 noundef -1) #7
  store ptr %call, ptr @tcm_pool, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_tcm_pool.__UNIQUE_ID_ddebug116, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_tcm_pool, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @setup_tcm_pool.__UNIQUE_ID_ddebug116, ptr noundef nonnull @.str.36) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b83 = load i1, ptr @dtcm_present, align 1
  br i1 %.b83, label %if.then5, label %do.end.if.end34_crit_edge

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then5:                                         ; preds = %do.end
  %0 = load i32, ptr @dtcm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 ptrtoint (ptr @__edtcm_data to i32))
  %cmp = icmp ugt i32 %0, ptrtoint (ptr @__edtcm_data to i32)
  br i1 %cmp, label %if.then6, label %if.then5.if.end34_crit_edge

if.then5.if.end34_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then6:                                         ; preds = %if.then5
  %1 = load ptr, ptr @tcm_pool, align 4
  %sub = sub i32 %0, ptrtoint (ptr @__edtcm_data to i32)
  %call.i.i = tail call i32 @gen_pool_add_owner(ptr noundef %1, i32 noundef ptrtoint (ptr @__edtcm_data to i32), i32 noundef -1, i32 noundef %sub, i32 noundef -1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not, label %do.body16, label %do.end12

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #11
  br label %cleanup

do.body16:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_tcm_pool.__UNIQUE_ID_ddebug117, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_tcm_pool, %if.then28)) #7
          to label %if.end34 [label %if.then28], !srcloc !112

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @dtcm_end, align 4
  %sub29 = sub i32 %2, ptrtoint (ptr @__edtcm_data to i32)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @setup_tcm_pool.__UNIQUE_ID_ddebug117, ptr noundef nonnull @.str.38, i32 noundef %sub29, i32 noundef ptrtoint (ptr @__edtcm_data to i32)) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %do.body16, %if.then5.if.end34_crit_edge, %do.end.if.end34_crit_edge
  %.b8284 = load i1, ptr @itcm_present, align 1
  br i1 %.b8284, label %if.then36, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %if.end34
  %3 = load i32, ptr @itcm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 ptrtoint (ptr @__eitcm_text to i32))
  %cmp37 = icmp ugt i32 %3, ptrtoint (ptr @__eitcm_text to i32)
  br i1 %cmp37, label %if.then38, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %if.then36
  %4 = load ptr, ptr @tcm_pool, align 4
  %sub39 = sub i32 %3, ptrtoint (ptr @__eitcm_text to i32)
  %call.i.i91 = tail call i32 @gen_pool_add_owner(ptr noundef %4, i32 noundef ptrtoint (ptr @__eitcm_text to i32), i32 noundef -1, i32 noundef %sub39, i32 noundef -1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91)
  %tobool41.not = icmp eq i32 %call.i.i91, 0
  br i1 %tobool41.not, label %do.body49, label %do.end45

do.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #11
  br label %cleanup

do.body49:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_tcm_pool.__UNIQUE_ID_ddebug118, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_tcm_pool, %if.then61)) #7
          to label %cleanup [label %if.then61], !srcloc !112

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr @itcm_end, align 4
  %sub62 = sub i32 %5, ptrtoint (ptr @__eitcm_text to i32)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @setup_tcm_pool.__UNIQUE_ID_ddebug118, ptr noundef nonnull @.str.42, i32 noundef %sub62, i32 noundef ptrtoint (ptr @__eitcm_text to i32)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %do.end45, %if.then36.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ %call.i.i, %do.end12 ], [ %call.i.i91, %do.end45 ], [ 0, %if.then36.cleanup_crit_edge ], [ 0, %if.then61 ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcm_handler(ptr nocapture noundef %regs, i32 noundef %instr) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %instr, 12
  %and = and i32 %shr, 15
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %2, 4
  store i32 %add, ptr %arrayidx2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__ksymtab_tcm_alloc, !1, !"__ksymtab_tcm_alloc", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/tcm.c", i32 88, i32 1}
!2 = !{ptr @__ksymtab_tcm_free, !3, !"__ksymtab_tcm_free", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/tcm.c", i32 97, i32 1}
!4 = !{ptr @__ksymtab_tcm_dtcm_present, !5, !"__ksymtab_tcm_dtcm_present", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/tcm.c", i32 103, i32 1}
!6 = !{ptr @__ksymtab_tcm_itcm_present, !7, !"__ksymtab_tcm_itcm_present", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/tcm.c", i32 109, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/tcm.c", i32 275, i32 4}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tcm_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @tcm_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/kernel/tcm.c", i32 309, i32 4}
!16 = !{ptr @tcm_init._entry.3, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @tcm_init._entry_ptr.5, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/kernel/tcm.c", i32 329, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tcm_init.__UNIQUE_ID_ddebug114, !19, !"__UNIQUE_ID_ddebug114", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/tcm.c", i32 333, i32 3}
!24 = !{ptr @tcm_init._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tcm_init._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/tcm.c", i32 347, i32 4}
!28 = !{ptr @tcm_init._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tcm_init._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/kernel/tcm.c", i32 367, i32 3}
!32 = !{ptr @tcm_init.__UNIQUE_ID_ddebug115, !31, !"__UNIQUE_ID_ddebug115", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/kernel/tcm.c", i32 371, i32 3}
!35 = !{ptr @tcm_init._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tcm_init._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__initcall__kmod_tcm__119_435_setup_tcm_pool1, !38, !"__initcall__kmod_tcm__119_435_setup_tcm_pool1", i1 false, i1 false}
!38 = !{!"../arch/arm/kernel/tcm.c", i32 435, i32 1}
!39 = !{ptr @tcm_pool, !40, !"tcm_pool", i1 false, i1 false}
!40 = !{!"../arch/arm/kernel/tcm.c", i32 25, i32 25}
!41 = distinct !{null, !42, !"dtcm_present", i1 false, i1 false}
!42 = !{!"../arch/arm/kernel/tcm.c", i32 26, i32 13}
!43 = distinct !{null, !44, !"itcm_present", i1 false, i1 false}
!44 = !{!"../arch/arm/kernel/tcm.c", i32 27, i32 13}
!45 = !{ptr @tcm_hook, !46, !"tcm_hook", i1 false, i1 false}
!46 = !{!"../arch/arm/kernel/tcm.c", i32 245, i32 26}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/kernel/tcm.c", i32 139, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @setup_tcm_bank._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @setup_tcm_bank._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/kernel/tcm.c", i32 143, i32 3}
!56 = !{ptr @setup_tcm_bank._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @setup_tcm_bank._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/kernel/tcm.c", i32 147, i32 3}
!60 = !{ptr @setup_tcm_bank._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @setup_tcm_bank._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/kernel/tcm.c", i32 174, i32 2}
!66 = !{ptr @setup_tcm_bank._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @setup_tcm_bank._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @dtcm_end, !69, !"dtcm_end", i1 false, i1 false}
!69 = !{!"../arch/arm/kernel/tcm.c", i32 34, i32 12}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/kernel/tcm.c", i32 41, i32 10}
!72 = !{ptr @dtcm_res, !73, !"dtcm_res", i1 false, i1 false}
!73 = !{!"../arch/arm/kernel/tcm.c", i32 40, i32 24}
!74 = !{ptr @dtcm_iomap, !75, !"dtcm_iomap", i1 false, i1 false}
!75 = !{!"../arch/arm/kernel/tcm.c", i32 54, i32 24}
!76 = !{ptr @itcm_end, !77, !"itcm_end", i1 false, i1 false}
!77 = !{!"../arch/arm/kernel/tcm.c", i32 35, i32 12}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/kernel/tcm.c", i32 48, i32 10}
!80 = !{ptr @itcm_res, !81, !"itcm_res", i1 false, i1 false}
!81 = !{!"../arch/arm/kernel/tcm.c", i32 47, i32 24}
!82 = !{ptr @itcm_iomap, !83, !"itcm_iomap", i1 false, i1 false}
!83 = !{!"../arch/arm/kernel/tcm.c", i32 63, i32 24}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../arch/arm/kernel/tcm.c", i32 397, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @setup_tcm_pool.__UNIQUE_ID_ddebug116, !85, !"__UNIQUE_ID_ddebug116", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/kernel/tcm.c", i32 405, i32 5}
!90 = !{ptr @setup_tcm_pool._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @setup_tcm_pool._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../arch/arm/kernel/tcm.c", i32 409, i32 4}
!94 = !{ptr @setup_tcm_pool.__UNIQUE_ID_ddebug117, !93, !"__UNIQUE_ID_ddebug117", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/kernel/tcm.c", i32 422, i32 5}
!97 = !{ptr @setup_tcm_pool._entry.39, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @setup_tcm_pool._entry_ptr.41, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../arch/arm/kernel/tcm.c", i32 426, i32 4}
!101 = !{ptr @setup_tcm_pool.__UNIQUE_ID_ddebug118, !100, !"__UNIQUE_ID_ddebug118", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2151560386}
!112 = !{i64 2148701459, i64 2148701464, i64 2148701477, i64 2148701521, i64 2148701555, i64 2148701576}
!113 = !{i64 2583}
!114 = !{i64 2734}
!115 = !{i64 2802}
!116 = !{i64 3551}
!117 = !{i64 3651}
