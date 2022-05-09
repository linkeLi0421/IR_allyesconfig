; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxgbi_ppm_ppod_release\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgbi_ppm_ppod_release\09\09\09\09"
module asm "\09.long\09__crc_cxgbi_ppm_ppod_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgbi_ppm_ppod_release:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgbi_ppm_ppod_release\22\09\09\09\09\09"
module asm "__kstrtabns_cxgbi_ppm_ppod_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgbi_ppm_ppods_reserve\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgbi_ppm_ppods_reserve\09\09\09\09"
module asm "\09.long\09__crc_cxgbi_ppm_ppods_reserve\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgbi_ppm_ppods_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgbi_ppm_ppods_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_cxgbi_ppm_ppods_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgbi_ppm_make_ppod_hdr\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgbi_ppm_make_ppod_hdr\09\09\09\09"
module asm "\09.long\09__crc_cxgbi_ppm_make_ppod_hdr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgbi_ppm_make_ppod_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgbi_ppm_make_ppod_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_cxgbi_ppm_make_ppod_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgbi_ppm_release\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgbi_ppm_release\09\09\09\09"
module asm "\09.long\09__crc_cxgbi_ppm_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgbi_ppm_release:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgbi_ppm_release\22\09\09\09\09\09"
module asm "__kstrtabns_cxgbi_ppm_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgbi_ppm_init\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgbi_ppm_init\09\09\09\09"
module asm "\09.long\09__crc_cxgbi_ppm_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgbi_ppm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgbi_ppm_init\22\09\09\09\09\09"
module asm "__kstrtabns_cxgbi_ppm_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgbi_tagmask_set\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgbi_tagmask_set\09\09\09\09"
module asm "\09.long\09__crc_cxgbi_tagmask_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgbi_tagmask_set:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgbi_tagmask_set\22\09\09\09\09\09"
module asm "__kstrtabns_cxgbi_tagmask_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cxgbi_ppm = type { %struct.kref, ptr, ptr, ptr, ptr, %struct.cxgbi_tag_format, i32, i32, i32, i32, i32, ptr, %struct.spinlock, i32, i32, i32, ptr, [0 x %struct.cxgbi_ppod_data] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cxgbi_tag_format = type { [4 x i8], i8, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cxgbi_ppod_data = type { i8, i8, i16, i32 }
%struct.cxgbi_ppm_pool = type { i32, i32, %struct.spinlock, [0 x i32], [76 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cxgbi_pagepod_hdr = type { i32, i32, i32, i32, i64 }

@cxgbi_ppm_find_page_index.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libcxgb\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxgbi_ppm_find_page_index\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %s ppm, pgsz %lu -> idx %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"libcxgb: %s: %s ppm, pgsz %lu -> idx %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@cxgbi_ppm_find_page_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016libcxgb: ippm: ddp page size %lu not supported.\0A\00", [45 x i8] zeroinitializer }, align 32
@cxgbi_ppm_find_page_index._entry_ptr = internal global ptr @cxgbi_ppm_find_page_index._entry, section ".printk_index", align 4
@cxgbi_ppm_ppod_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014libcxgb: ippm: idx too big %u > %u.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxgbi_ppm_ppod_release\00", [41 x i8] zeroinitializer }, align 32
@cxgbi_ppm_ppod_release._entry_ptr = internal global ptr @cxgbi_ppm_ppod_release._entry, section ".printk_index", align 4
@cxgbi_ppm_ppod_release._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014libcxgb: ippm: idx %u, npods 0.\0A\00", [61 x i8] zeroinitializer }, align 32
@cxgbi_ppm_ppod_release._entry_ptr.10 = internal global ptr @cxgbi_ppm_ppod_release._entry.8, section ".printk_index", align 4
@cxgbi_ppm_ppod_release.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.11, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"release idx %u, npods %u.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"libcxgb: release idx %u, npods %u.\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_cxgbi_ppm_ppod_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgbi_ppm_ppod_release = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgbi_ppm_ppod_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgbi_ppm_ppod_release to i32), ptr @__kstrtab_cxgbi_ppm_ppod_release, ptr @__kstrtabns_cxgbi_ppm_ppod_release }, section "___ksymtab+cxgbi_ppm_ppod_release", align 4
@cxgbi_ppm_ppods_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014libcxgb: %s: pages %u -> npods %u, full.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgbi_ppm_ppods_reserve\00", [40 x i8] zeroinitializer }, align 32
@cxgbi_ppm_ppods_reserve._entry_ptr = internal global ptr @cxgbi_ppm_ppods_reserve._entry, section ".printk_index", align 4
@cxgbi_ppm_ppods_reserve.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ippm: pages %u, nospc %u, nxt %u, 0x%lx.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"libcxgb: ippm: pages %u, nospc %u, nxt %u, 0x%lx.\0A\00", [45 x i8] zeroinitializer }, align 32
@cxgbi_ppm_ppods_reserve.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ippm: sg %u, tag 0x%x(%u,%u), data 0x%lx.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"libcxgb: ippm: sg %u, tag 0x%x(%u,%u), data 0x%lx.\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_cxgbi_ppm_ppods_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgbi_ppm_ppods_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgbi_ppm_ppods_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgbi_ppm_ppods_reserve to i32), ptr @__kstrtab_cxgbi_ppm_ppods_reserve, ptr @__kstrtabns_cxgbi_ppm_ppods_reserve }, section "___ksymtab+cxgbi_ppm_ppods_reserve", align 4
@cxgbi_ppm_make_ppod_hdr.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgbi_ppm_make_ppod_hdr\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ippm: tag 0x%x, tid 0x%x, xfer %u, off %u.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libcxgb: ippm: tag 0x%x, tid 0x%x, xfer %u, off %u.\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_cxgbi_ppm_make_ppod_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgbi_ppm_make_ppod_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgbi_ppm_make_ppod_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgbi_ppm_make_ppod_hdr to i32), ptr @__kstrtab_cxgbi_ppm_make_ppod_hdr, ptr @__kstrtabns_cxgbi_ppm_make_ppod_hdr }, section "___ksymtab+cxgbi_ppm_make_ppod_hdr", align 4
@__kstrtab_cxgbi_ppm_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgbi_ppm_release = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgbi_ppm_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgbi_ppm_release to i32), ptr @__kstrtab_cxgbi_ppm_release, ptr @__kstrtabns_cxgbi_ppm_release }, section "___ksymtab+cxgbi_ppm_release", align 4
@cxgbi_ppm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013libcxgb: iscsi ppod region not contiguous: EDRAM start 0x%x size 0x%x DDR start 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxgbi_ppm_init\00", [17 x i8] zeroinitializer }, align 32
@cxgbi_ppm_init._entry_ptr = internal global ptr @cxgbi_ppm_init._entry, section ".printk_index", align 4
@cxgbi_ppm_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016libcxgb: ippm: %s, ppm 0x%p,0x%p already initialized, %u/%u.\0A\00", [32 x i8] zeroinitializer }, align 32
@cxgbi_ppm_init._entry_ptr.26 = internal global ptr @cxgbi_ppm_init._entry.24, section ".printk_index", align 4
@cxgbi_ppm_init.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ppmax %u, cpu total %u, per cpu %u.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"libcxgb: %s: ppmax %u, cpu total %u, per cpu %u.\0A\00", [46 x i8] zeroinitializer }, align 32
@cxgbi_ppm_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016libcxgb: %s: %u - %u < %u * 8, mask extra bits %u, %u.\0A\00", [38 x i8] zeroinitializer }, align 32
@cxgbi_ppm_init._entry_ptr.31 = internal global ptr @cxgbi_ppm_init._entry.29, section ".printk_index", align 4
@cxgbi_ppm_init.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.32, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reserved %u ppod in bitmap\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"libcxgb: reserved %u ppod in bitmap\0A\00", [59 x i8] zeroinitializer }, align 32
@cxgbi_ppm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ppm->map_lock\00", [17 x i8] zeroinitializer }, align 32
@cxgbi_ppm_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxgbi_ppm_init._entry_ptr.36 = internal global ptr @cxgbi_ppm_init._entry.35, section ".printk_index", align 4
@cxgbi_ppm_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.23, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016libcxgb: ippm %s: ppm 0x%p, 0x%p, base %u/%u, pg %lu,%u, rsvd %u,%u.\0A\00", [56 x i8] zeroinitializer }, align 32
@cxgbi_ppm_init._entry_ptr.39 = internal global ptr @cxgbi_ppm_init._entry.37, section ".printk_index", align 4
@__kstrtab_cxgbi_ppm_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgbi_ppm_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgbi_ppm_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgbi_ppm_init to i32), ptr @__kstrtab_cxgbi_ppm_init, ptr @__kstrtabns_cxgbi_ppm_init }, section "___ksymtab+cxgbi_ppm_init", align 4
@cxgbi_tagmask_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016libcxgb: ippm: ppmax %u/0x%x -> bits %u, tagmask 0x%x.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxgbi_tagmask_set\00", [46 x i8] zeroinitializer }, align 32
@cxgbi_tagmask_set._entry_ptr = internal global ptr @cxgbi_tagmask_set._entry, section ".printk_index", align 4
@__kstrtab_cxgbi_tagmask_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgbi_tagmask_set = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgbi_tagmask_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgbi_tagmask_set to i32), ptr @__kstrtab_cxgbi_tagmask_set, ptr @__kstrtabns_cxgbi_tagmask_set }, section "___ksymtab+cxgbi_tagmask_set", align 4
@__UNIQUE_ID_author352 = internal constant [38 x i8] c"libcxgb.author=Chelsio Communications\00", section ".modinfo", align 1
@__UNIQUE_ID_description353 = internal constant [43 x i8] c"libcxgb.description=Chelsio common library\00", section ".modinfo", align 1
@__UNIQUE_ID_file354 = internal constant [58 x i8] c"libcxgb.file=drivers/net/ethernet/chelsio/libcxgb/libcxgb\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [29 x i8] c"libcxgb.license=Dual BSD/GPL\00", section ".modinfo", align 1
@ppm_unmark_entries.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ppm_unmark_entries\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: idx %d + %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"libcxgb: %s: idx %d + %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ppm_unmark_entries.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.45, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: cpu %u, idx %d, next %u.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"libcxgb: %s: cpu %u, idx %d, next %u.\0A\00", [57 x i8] zeroinitializer }, align 32
@ppm_unmark_entries.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.47, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: idx %d, next %u.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"libcxgb: %s: idx %d, next %u.\0A\00", [33 x i8] zeroinitializer }, align 32
@ppm_get_cpu_entries.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ppm_get_cpu_entries\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: cpu %u, idx %d + %d (%d), next %u.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"libcxgb: %s: cpu %u, idx %d + %d (%d), next %u.\0A\00", [47 x i8] zeroinitializer }, align 32
@ppm_get_entries.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppm_get_entries\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ippm: NO suitable entries %u available.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"libcxgb: ippm: NO suitable entries %u available.\0A\00", [46 x i8] zeroinitializer }, align 32
@ppm_get_entries.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.55, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: idx %d + %d (%d), next %u, caller_data 0x%lx.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"libcxgb: %s: idx %d + %d (%d), next %u, caller_data 0x%lx.\0A\00", [36 x i8] zeroinitializer }, align 32
@ppm_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016libcxgb: ippm: kref 0, destroy %s ppm 0x%p.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppm_destroy\00", [20 x i8] zeroinitializer }, align 32
@ppm_destroy._entry_ptr = internal global ptr @ppm_destroy._entry, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@ppm_alloc_cpu_pool.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ppool->lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 73, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 78, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 231, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 237, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 241, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 258, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 269, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 285, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 309, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 407, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 421, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 435, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 455, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 465, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 468, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 493, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 503, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 523, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 193, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 210, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 222, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 147, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 168, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 181, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 324, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [54 x i8] c"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 377, i32 3 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__ksymtab_cxgbi_ppm_init, ptr @__ksymtab_cxgbi_ppm_make_ppod_hdr, ptr @__ksymtab_cxgbi_ppm_ppod_release, ptr @__ksymtab_cxgbi_ppm_ppods_reserve, ptr @__ksymtab_cxgbi_ppm_release, ptr @__ksymtab_cxgbi_tagmask_set, ptr @cxgbi_ppm_find_page_index._entry, ptr @cxgbi_ppm_find_page_index._entry_ptr, ptr @cxgbi_ppm_init._entry, ptr @cxgbi_ppm_init._entry.24, ptr @cxgbi_ppm_init._entry.29, ptr @cxgbi_ppm_init._entry.35, ptr @cxgbi_ppm_init._entry.37, ptr @cxgbi_ppm_init._entry_ptr, ptr @cxgbi_ppm_init._entry_ptr.26, ptr @cxgbi_ppm_init._entry_ptr.31, ptr @cxgbi_ppm_init._entry_ptr.36, ptr @cxgbi_ppm_init._entry_ptr.39, ptr @cxgbi_ppm_ppod_release._entry, ptr @cxgbi_ppm_ppod_release._entry.8, ptr @cxgbi_ppm_ppod_release._entry_ptr, ptr @cxgbi_ppm_ppod_release._entry_ptr.10, ptr @cxgbi_ppm_ppods_reserve._entry, ptr @cxgbi_ppm_ppods_reserve._entry_ptr, ptr @cxgbi_tagmask_set._entry, ptr @cxgbi_tagmask_set._entry_ptr, ptr @ppm_destroy._entry, ptr @ppm_destroy._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @cxgbi_ppm_init.__key, ptr @.str.34, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @ppm_alloc_cpu_pool.__key, ptr @.str.59], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_ppm_find_page_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_ppm_ppod_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_ppm_ppod_release._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_ppm_ppods_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_ppm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_ppm_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_ppm_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_ppm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_ppm_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_ppm_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_tagmask_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppm_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppm_alloc_cpu_pool.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbi_ppm_find_page_index(ptr nocapture noundef readonly %ppm, i32 noundef %pgsz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tformat1 = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 5
  %0 = ptrtoint ptr %tformat1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tformat1, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 4096, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %pgsz)
  %cmp2 = icmp eq i32 %shl, %pgsz
  br i1 %cmp2, label %entry.do.body_crit_edge, label %for.inc

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.inc.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %i.023.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ 1, %for.inc.do.body_crit_edge ], [ 2, %for.inc.1.do.body_crit_edge ], [ 3, %for.inc.2.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbi_ppm_find_page_index.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbi_ppm_find_page_index, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !142

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 1
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbi_ppm_find_page_index.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %pgsz, i32 noundef %i.023.lcssa) #8
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %shl.1 = shl i32 4096, %conv.1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.1, i32 %pgsz)
  %cmp2.1 = icmp eq i32 %shl.1, %pgsz
  br i1 %cmp2.1, label %for.inc.do.body_crit_edge, label %for.inc.1

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %7 to i32
  %shl.2 = shl i32 4096, %conv.2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.2, i32 %pgsz)
  %cmp2.2 = icmp eq i32 %shl.2, %pgsz
  br i1 %cmp2.2, label %for.inc.1.do.body_crit_edge, label %for.inc.2

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 5, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %9 to i32
  %shl.3 = shl i32 4096, %conv.3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.3, i32 %pgsz)
  %cmp2.3 = icmp eq i32 %shl.3, %pgsz
  br i1 %cmp2.3, label %for.inc.2.do.body_crit_edge, label %for.inc.3

for.inc.2.do.body_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %pgsz) #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.then6, %do.body
  %retval.0 = phi i32 [ 4, %for.inc.3 ], [ %i.023.lcssa, %if.then6 ], [ %i.023.lcssa, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgbi_ppm_ppod_release(ptr noundef %ppm, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ppmax = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 6
  %0 = ptrtoint ptr %ppmax to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ppmax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp.not = icmp ugt i32 %1, %idx
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %idx, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ppod_data = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 17
  %npods = getelementptr %struct.cxgbi_ppod_data, ptr %ppod_data, i32 %idx, i32 2
  %2 = ptrtoint ptr %npods to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %npods, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %do.end5, label %do.body9

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %idx) #11
  br label %cleanup

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbi_ppm_ppod_release.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbi_ppm_ppod_release, %if.then15)) #8
          to label %do.end19 [label %if.then15], !srcloc !142

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %npods to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %npods, align 2
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbi_ppm_ppod_release.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.12, i32 noundef %idx, i32 noundef %conv) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body9
  %6 = ptrtoint ptr %npods to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %npods, align 2
  %conv21 = zext i16 %7 to i32
  tail call fastcc void @ppm_unmark_entries(ptr noundef %ppm, i32 noundef %idx, i32 noundef %conv21)
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end5, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppm_unmark_entries(ptr noundef %ppm, i32 noundef %i, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppm_unmark_entries.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppm_unmark_entries, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !142

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppm_unmark_entries.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %i, i32 noundef %count) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pool_rsvd = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 9
  %0 = ptrtoint ptr %pool_rsvd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pool_rsvd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %i)
  %cmp = icmp ugt i32 %1, %i
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.end
  %pool_index_max = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 10
  %2 = ptrtoint ptr %pool_index_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pool_index_max, align 4
  %.frozen = freeze i32 %3
  %div = udiv i32 %i, %.frozen
  %4 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %i, %4
  %pool8 = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 11
  %5 = ptrtoint ptr %pool8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pool8, align 4
  %7 = ptrtoint ptr %6 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %div
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %7
  %10 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.cxgbi_ppm_pool, ptr %10, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %bmap = getelementptr inbounds %struct.cxgbi_ppm_pool, ptr %10, i32 0, i32 3
  tail call void @__bitmap_clear(ptr noundef %bmap, i32 noundef %rem.decomposed, i32 noundef %count) #8
  %next = getelementptr inbounds %struct.cxgbi_ppm_pool, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %12)
  %cmp10 = icmp ult i32 %rem.decomposed, %12
  br i1 %cmp10, label %if.then11, label %if.then3.if.end13_crit_edge

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rem.decomposed, ptr %next, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then3.if.end13_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppm_unmark_entries.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppm_unmark_entries, %if.then27)) #8
          to label %if.end56 [label %if.then27], !srcloc !142

if.then27:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppm_unmark_entries.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.42, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %15) #8
  br label %if.end56

if.else:                                          ; preds = %do.end
  %map_lock = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %map_lock) #8
  %16 = ptrtoint ptr %pool_rsvd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pool_rsvd, align 4
  %sub = sub i32 %i, %17
  %ppod_bmap = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 16
  %18 = ptrtoint ptr %ppod_bmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ppod_bmap, align 4
  tail call void @__bitmap_clear(ptr noundef %19, i32 noundef %sub, i32 noundef %count) #8
  %next33 = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 14
  %20 = ptrtoint ptr %next33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %next33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %21)
  %cmp34 = icmp ult i32 %sub, %21
  br i1 %cmp34, label %if.then35, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %next33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %next33, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.else.if.end37_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %map_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppm_unmark_entries.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppm_unmark_entries, %if.then51)) #8
          to label %if.end56 [label %if.then51], !srcloc !142

if.then51:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %next33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next33, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppm_unmark_entries.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.42, i32 noundef %sub, i32 noundef %24) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end37, %if.then27, %if.end13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbi_ppm_ppods_reserve(ptr noundef %ppm, i16 noundef zeroext %nr_pages, i32 noundef %per_tag_pg_idx, ptr nocapture noundef writeonly %ppod_idx, ptr nocapture noundef writeonly %ddp_tag, i32 noundef %caller_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %nr_pages to i32
  %sub = add nuw nsw i32 %conv, 3
  %0 = lshr i32 %sub, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nr_pages)
  %tobool.not = icmp eq i16 %nr_pages, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ppm_get_cpu_entries(ptr noundef %ppm, i32 noundef %0, i32 noundef %caller_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end6, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end6:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @ppm_get_entries(ptr noundef %ppm, i32 noundef %0, i32 noundef %caller_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp7 = icmp slt i32 %call5, 0
  br i1 %cmp7, label %do.body10, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.body10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbi_ppm_ppods_reserve.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbi_ppm_ppods_reserve, %if.then16)) #8
          to label %cleanup [label %if.then16], !srcloc !142

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %next = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 14
  %1 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %next, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbi_ppm_ppods_reserve.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %0, i32 noundef %2, i32 noundef %caller_data) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end6.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %idx.078 = phi i32 [ %call5, %if.end6.if.end21_crit_edge ], [ %call2, %if.end.if.end21_crit_edge ]
  %ppod_data = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 17
  %add.ptr = getelementptr %struct.cxgbi_ppod_data, ptr %ppod_data, i32 %idx.078
  %base_idx = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 8
  %3 = ptrtoint ptr %base_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_idx, align 4
  %add22 = add i32 %4, %idx.078
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %add.ptr, align 4
  %bf.clear = and i8 %bf.load, 63
  %shl.i = shl i32 %add22, 6
  %conv.i = zext i8 %bf.clear to i32
  %or.i = or i32 %shl.i, %conv.i
  %shl = shl i32 %per_tag_pg_idx, 30
  %tag.0 = or i32 %or.i, %shl
  %6 = ptrtoint ptr %ppod_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %idx.078, ptr %ppod_idx, align 4
  %7 = ptrtoint ptr %ddp_tag to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tag.0, ptr %ddp_tag, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbi_ppm_ppods_reserve.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbi_ppm_ppods_reserve, %if.then39)) #8
          to label %cleanup [label %if.then39], !srcloc !142

if.then39:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbi_ppm_ppods_reserve.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %tag.0, i32 noundef %idx.078, i32 noundef %0, i32 noundef %caller_data) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end21, %if.then16, %do.body10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call5, %if.then16 ], [ %0, %if.then39 ], [ %call5, %do.body10 ], [ %0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppm_get_cpu_entries(ptr nocapture noundef %ppm, i32 noundef %count, i32 noundef %caller_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pool1 = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 11
  %0 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !132) #8
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !143
  %6 = tail call i32 @llvm.read_register.i32(metadata !132) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu2, align 4
  %10 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pool1, align 4
  %12 = ptrtoint ptr %11 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, %12
  %15 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.cxgbi_ppm_pool, ptr %15, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %16 = tail call i32 @llvm.read_register.i32(metadata !132) #8
  %and.i.i.i71 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i71 to ptr
  %preempt_count.i.i72 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i72, align 4
  %sub.i = add i32 %19, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i72, align 4
  %bmap = getelementptr inbounds %struct.cxgbi_ppm_pool, ptr %15, i32 0, i32 3
  %pool_index_max = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 10
  %20 = ptrtoint ptr %pool_index_max to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pool_index_max, align 4
  %next = getelementptr inbounds %struct.cxgbi_ppm_pool, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %next, align 4
  %call.i.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %bmap, i32 noundef %21, i32 noundef %23, i32 noundef %count, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %21)
  %cmp.not.i = icmp ult i32 %call.i.i, %21
  br i1 %cmp.not.i, label %do.body.if.end.i_crit_edge, label %land.lhs.true.i, !prof !145

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %count)
  %cmp2.i = icmp ugt i32 %23, %count
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i73 = add i32 %23, -1
  %call.i1.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %bmap, i32 noundef %21, i32 noundef 0, i32 noundef %sub.i73, i32 noundef 0, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  %i.0.i = phi i32 [ %call.i1.i, %if.then.i ], [ %call.i.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %call.i.i, %do.body.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %21)
  %cmp4.not.i = icmp ult i32 %i.0.i, %21
  br i1 %cmp4.not.i, label %if.else11.i.i, label %if.end.i.if.then13_crit_edge, !prof !145

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.else11.i.i:                                    ; preds = %if.end.i
  tail call void @__bitmap_set(ptr noundef %bmap, i32 noundef %i.0.i, i32 noundef %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp = icmp slt i32 %i.0.i, 0
  br i1 %cmp, label %if.else11.i.i.if.then13_crit_edge, label %if.end16

if.else11.i.i.if.then13_crit_edge:                ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %if.else11.i.i.if.then13_crit_edge, %if.end.i.if.then13_crit_edge
  %24 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %next, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup

if.end16:                                         ; preds = %if.else11.i.i
  %add17 = add i32 %i.0.i, %count
  %25 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add17, ptr %next, align 4
  %26 = ptrtoint ptr %pool_index_max to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pool_index_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %27)
  %cmp21.not = icmp ult i32 %add17, %27
  %spec.store.select = select i1 %cmp21.not, i32 %add17, i32 0
  %28 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.store.select, ptr %next, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppm_get_cpu_entries.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppm_get_cpu_entries, %if.then32)) #8
          to label %do.end38 [label %if.then32], !srcloc !142

if.then32:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %pool_index_max to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pool_index_max, align 4
  %mul = mul i32 %30, %9
  %add34 = add i32 %mul, %i.0.i
  %31 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %next, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppm_get_cpu_entries.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %9, i32 noundef %i.0.i, i32 noundef %count, i32 noundef %add34, i32 noundef %32) #8
  br label %do.end38

do.end38:                                         ; preds = %if.then32, %if.end16
  %33 = ptrtoint ptr %pool_index_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pool_index_max, align 4
  %mul40 = mul i32 %34, %9
  %add41 = add i32 %mul40, %i.0.i
  %ppod_data.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 17
  %add.ptr.i = getelementptr %struct.cxgbi_ppod_data, ptr %ppod_data.i, i32 %add41
  %caller_data1.i = getelementptr %struct.cxgbi_ppod_data, ptr %ppod_data.i, i32 %add41, i32 3
  %35 = ptrtoint ptr %caller_data1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %caller_data, ptr %caller_data1.i, align 4
  %conv.i = trunc i32 %count to i16
  %npods.i = getelementptr %struct.cxgbi_ppod_data, ptr %ppod_data.i, i32 %add41, i32 2
  %36 = ptrtoint ptr %npods.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %npods.i, align 2
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i = load i8, ptr %add.ptr.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %bf.clear.i)
  %cmp.i = icmp eq i8 %bf.clear.i, 63
  br i1 %cmp.i, label %if.then.i75, label %if.else.i

if.then.i75:                                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear5.i = and i8 %bf.load.i, -64
  br label %ppm_mark_entries.exit

if.else.i:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i8 %bf.load.i, 1
  %bf.value.i = and i8 %inc.i, 63
  %bf.clear9.i = and i8 %bf.load.i, -64
  %bf.set10.i = or i8 %bf.value.i, %bf.clear9.i
  br label %ppm_mark_entries.exit

ppm_mark_entries.exit:                            ; preds = %if.else.i, %if.then.i75
  %storemerge.i = phi i8 [ %bf.set10.i, %if.else.i ], [ %bf.clear5.i, %if.then.i75 ]
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %storemerge.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %ppm_mark_entries.exit, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.then13 ], [ %add41, %ppm_mark_entries.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppm_get_entries(ptr noundef %ppm, i32 noundef %count, i32 noundef %caller_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %map_lock = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %map_lock) #8
  %ppod_bmap = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 16
  %0 = ptrtoint ptr %ppod_bmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppod_bmap, align 4
  %bmap_index_max = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 13
  %2 = ptrtoint ptr %bmap_index_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bmap_index_max, align 4
  %next = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 14
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next, align 4
  %call.i.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %count, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %3)
  %cmp.not.i = icmp ult i32 %call.i.i, %3
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i, !prof !145

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %count)
  %cmp2.i = icmp ugt i32 %5, %count
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %5, -1
  %call.i1.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef %sub.i, i32 noundef 0, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %i.0.i = phi i32 [ %call.i1.i, %if.then.i ], [ %call.i.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %call.i.i, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %3)
  %cmp4.not.i = icmp ult i32 %i.0.i, %3
  br i1 %cmp4.not.i, label %if.else11.i.i, label %if.end.i.if.then_crit_edge, !prof !145

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.else11.i.i:                                    ; preds = %if.end.i
  tail call void @__bitmap_set(ptr noundef %1, i32 noundef %i.0.i, i32 noundef %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp = icmp slt i32 %i.0.i, 0
  br i1 %cmp, label %if.else11.i.i.if.then_crit_edge, label %if.end7

if.else11.i.i.if.then_crit_edge:                  ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %if.else11.i.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %6 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %next, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %map_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppm_get_entries.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppm_get_entries, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !142

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppm_get_entries.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.54, i32 noundef %count) #8
  br label %cleanup

if.end7:                                          ; preds = %if.else11.i.i
  %add = add i32 %i.0.i, %count
  %7 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %next, align 4
  %max_index_in_edram = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 15
  %8 = ptrtoint ptr %max_index_in_edram to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_index_in_edram, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp12.not = icmp ult i32 %add, %9
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp12.not
  br i1 %or.cond, label %if.else, label %if.end7.if.end21.sink.split_crit_edge

if.end7.if.end21.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.sink.split

if.else:                                          ; preds = %if.end7
  %10 = ptrtoint ptr %bmap_index_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bmap_index_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp17.not = icmp ult i32 %add, %11
  br i1 %cmp17.not, label %if.else.if.end21_crit_edge, label %if.else.if.end21.sink.split_crit_edge

if.else.if.end21.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.sink.split

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21.sink.split:                              ; preds = %if.else.if.end21.sink.split_crit_edge, %if.end7.if.end21.sink.split_crit_edge
  %12 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %next, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.else.if.end21_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %map_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppm_get_entries.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppm_get_entries, %if.then35)) #8
          to label %do.end40 [label %if.then35], !srcloc !142

if.then35:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %pool_rsvd = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 9
  %13 = ptrtoint ptr %pool_rsvd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pool_rsvd, align 4
  %add36 = add i32 %14, %i.0.i
  %15 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %next, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ppm_get_entries.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.52, i32 noundef %i.0.i, i32 noundef %count, i32 noundef %add36, i32 noundef %16, i32 noundef %caller_data) #8
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %if.end21
  %pool_rsvd41 = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 9
  %17 = ptrtoint ptr %pool_rsvd41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pool_rsvd41, align 4
  %add42 = add i32 %18, %i.0.i
  %ppod_data.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 17
  %add.ptr.i = getelementptr %struct.cxgbi_ppod_data, ptr %ppod_data.i, i32 %add42
  %caller_data1.i = getelementptr %struct.cxgbi_ppod_data, ptr %ppod_data.i, i32 %add42, i32 3
  %19 = ptrtoint ptr %caller_data1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %caller_data, ptr %caller_data1.i, align 4
  %conv.i = trunc i32 %count to i16
  %npods.i = getelementptr %struct.cxgbi_ppod_data, ptr %ppod_data.i, i32 %add42, i32 2
  %20 = ptrtoint ptr %npods.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %npods.i, align 2
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %add.ptr.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %bf.clear.i)
  %cmp.i = icmp eq i8 %bf.clear.i, 63
  br i1 %cmp.i, label %if.then.i76, label %if.else.i

if.then.i76:                                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear5.i = and i8 %bf.load.i, -64
  br label %ppm_mark_entries.exit

if.else.i:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i8 %bf.load.i, 1
  %bf.value.i = and i8 %inc.i, 63
  %bf.clear9.i = and i8 %bf.load.i, -64
  %bf.set10.i = or i8 %bf.value.i, %bf.clear9.i
  br label %ppm_mark_entries.exit

ppm_mark_entries.exit:                            ; preds = %if.else.i, %if.then.i76
  %storemerge.i = phi i8 [ %bf.set10.i, %if.else.i ], [ %bf.clear5.i, %if.then.i76 ]
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %ppm_mark_entries.exit, %if.then6, %if.then
  %retval.0 = phi i32 [ %add42, %ppm_mark_entries.exit ], [ -28, %if.then6 ], [ -28, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgbi_ppm_make_ppod_hdr(ptr nocapture noundef readonly %ppm, i32 noundef %tag, i32 noundef %tid, i32 noundef %offset, i32 noundef %length, ptr nocapture noundef writeonly %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %tag, 1073741823
  %or = or i32 %tid, 16777216
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %hdr, align 8
  %rsvd = getelementptr inbounds %struct.cxgbi_pagepod_hdr, ptr %hdr, i32 0, i32 4
  %1 = ptrtoint ptr %rsvd to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %rsvd, align 8
  %idx_clr_mask = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %idx_clr_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx_clr_mask, align 4
  %and1 = and i32 %3, %and
  %pgsz_tag_clr = getelementptr inbounds %struct.cxgbi_pagepod_hdr, ptr %hdr, i32 0, i32 1
  %4 = ptrtoint ptr %pgsz_tag_clr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and1, ptr %pgsz_tag_clr, align 4
  %max_offset = getelementptr inbounds %struct.cxgbi_pagepod_hdr, ptr %hdr, i32 0, i32 2
  %5 = ptrtoint ptr %max_offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %length, ptr %max_offset, align 8
  %page_offset = getelementptr inbounds %struct.cxgbi_pagepod_hdr, ptr %hdr, i32 0, i32 3
  %6 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %offset, ptr %page_offset, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbi_ppm_make_ppod_hdr.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbi_ppm_make_ppod_hdr, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !142

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbi_ppm_make_ppod_hdr.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.21, i32 noundef %and, i32 noundef %tid, i32 noundef %length, i32 noundef %offset) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbi_ppm_release(ptr noundef %ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ppm, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ppm, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @llvm.prefetch.p0(ptr nonnull %ppm, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %ppm, ptr nonnull %ppm, i32 1, ptr nonnull elementtype(i32) %ppm) #8, !srcloc !147
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !145

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %ppm, i32 noundef 3) #8
  br label %return

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !148
  %ndev.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 1
  %1 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %2, ptr noundef nonnull %ppm) #11
  %ppm_pp.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 4
  %3 = ptrtoint ptr %ppm_pp.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ppm_pp.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %4, align 4
  %pool.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 11
  %6 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool.i.i, align 4
  tail call void @free_percpu(ptr noundef %7) #8
  tail call void @vfree(ptr noundef nonnull %ppm) #8
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 1, %if.then.i ], [ 0, %if.end5.i.i.i.i.return_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbi_ppm_init(ptr noundef %ppm_pp, ptr noundef %ndev, ptr noundef %pdev, ptr noundef %lldev, ptr nocapture noundef readonly %tformat, i32 noundef %iscsi_size, i32 noundef %llimit, i32 noundef %start, i32 noundef %reserve_factor, i32 noundef %iscsi_edram_start, i32 noundef %iscsi_edram_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppm_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppm_pp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iscsi_edram_start)
  %tobool.not = icmp eq i32 %iscsi_edram_start, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %iscsi_edram_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool1.not = icmp eq i32 %spec.select, 0
  %add = add i32 %spec.select, %iscsi_edram_start
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start)
  %cmp.not = icmp eq i32 %add, %start
  %or.cond = or i1 %tobool1.not, %cmp.not
  br i1 %or.cond, label %if.end3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %iscsi_edram_start, i32 noundef %spec.select, i32 noundef %start) #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  %spec.select222 = select i1 %tobool1.not, i32 %start, i32 %iscsi_edram_start
  %add7 = add i32 %spec.select, %iscsi_size
  %shr = lshr i32 %add7, 6
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %if.end3
  %ppmax14 = getelementptr inbounds %struct.cxgbi_ppm, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ppmax14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ppmax14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %ndev, ptr noundef %ppm_pp, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %shr) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #8, !srcloc !149
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end12.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !150

do.end12.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end12
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !145

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end12.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end12.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reserve_factor)
  %tobool17.not266 = icmp ne i32 %reserve_factor, 0
  %6 = and i1 %tobool17.not266, %tobool1.not
  br i1 %6, label %if.then18, label %if.end16.if.end35_crit_edge

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then18:                                        ; preds = %if.end16
  %div = udiv i32 %shr, %reserve_factor
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %7) #8
  %div.i = udiv i32 %div, %call4.i.i.i
  %8 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 261120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %tobool.not.i = icmp ult i32 %8, 32
  br i1 %tobool.not.i, label %if.then18.do.body23_crit_edge, label %if.end3.i

if.then18.do.body23_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

if.end3.i:                                        ; preds = %if.then18
  %9 = lshr i32 %8, 3
  %mul.i = and i32 %9, 32764
  %shl.i = shl nuw nsw i32 %mul.i, 3
  %add.i = add nuw nsw i32 %mul.i, 128
  %call5.i = tail call noalias ptr @__alloc_percpu(i32 noundef %add.i, i32 noundef 128) #12
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end3.i.do.body23_crit_edge, label %for.cond.preheader.i

if.end3.i.do.body23_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

for.cond.preheader.i:                             ; preds = %if.end3.i
  %call939.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call939.i, i32 %10)
  %cmp1040.i = icmp ult i32 %call939.i, %10
  br i1 %cmp1040.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.do.body23_crit_edge

for.cond.preheader.i.do.body23_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %11 = ptrtoint ptr %call5.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call942.i = phi i32 [ %call939.i, %for.body.lr.ph.i ], [ %call9.i, %for.body.i.for.body.i_crit_edge ]
  %count.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add17.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call942.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add12.i = add i32 %13, %11
  %14 = inttoptr i32 %add12.i to ptr
  %15 = call ptr @memset(ptr %14, i32 0, i32 %add.i)
  %lock.i = getelementptr inbounds %struct.cxgbi_ppm_pool, ptr %14, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @ppm_alloc_cpu_pool.__key, i16 noundef signext 3) #8
  %add17.i = add i32 %count.041.i, %shl.i
  %call9.i = tail call i32 @cpumask_next(i32 noundef %call942.i, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp10.i = icmp ult i32 %call9.i, %16
  br i1 %cmp10.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.body23_crit_edge

for.body.i.do.body23_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body23:                                        ; preds = %for.body.i.do.body23_crit_edge, %for.cond.preheader.i.do.body23_crit_edge, %if.end3.i.do.body23_crit_edge, %if.then18.do.body23_crit_edge
  %retval.0.i233257 = phi ptr [ %call5.i, %for.cond.preheader.i.do.body23_crit_edge ], [ null, %if.end3.i.do.body23_crit_edge ], [ null, %if.then18.do.body23_crit_edge ], [ %call5.i, %for.body.i.do.body23_crit_edge ]
  %pool_index_max.0255 = phi i32 [ %shl.i, %for.cond.preheader.i.do.body23_crit_edge ], [ 0, %if.end3.i.do.body23_crit_edge ], [ 0, %if.then18.do.body23_crit_edge ], [ %shl.i, %for.body.i.do.body23_crit_edge ]
  %ppmax_pool.1 = phi i32 [ 0, %for.cond.preheader.i.do.body23_crit_edge ], [ 0, %if.end3.i.do.body23_crit_edge ], [ 0, %if.then18.do.body23_crit_edge ], [ %add17.i, %for.body.i.do.body23_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbi_ppm_init.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbi_ppm_init, %if.then29)) #8
          to label %if.end35 [label %if.then29], !srcloc !142

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbi_ppm_init.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.28, ptr noundef %ndev, i32 noundef %shr, i32 noundef %ppmax_pool.1, i32 noundef %pool_index_max.0255) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %do.body23, %if.end16.if.end35_crit_edge
  %pool_index_max.1 = phi i32 [ 0, %if.end16.if.end35_crit_edge ], [ %pool_index_max.0255, %if.then29 ], [ %pool_index_max.0255, %do.body23 ]
  %ppmax_pool.2 = phi i32 [ 0, %if.end16.if.end35_crit_edge ], [ %ppmax_pool.1, %if.then29 ], [ %ppmax_pool.1, %do.body23 ]
  %pool.0 = phi ptr [ null, %if.end16.if.end35_crit_edge ], [ %retval.0.i233257, %if.then29 ], [ %retval.0.i233257, %do.body23 ]
  %sub = sub i32 %shr, %ppmax_pool.2
  %sub37 = add i32 %sub, 31
  %div38220 = lshr i32 %sub37, 5
  %mul = shl nuw nsw i32 %shr, 3
  %add39 = add nuw nsw i32 %mul, 132
  %mul40 = shl nuw nsw i32 %div38220, 2
  %add41 = add nuw nsw i32 %add39, %mul40
  %call42 = tail call noalias ptr @vzalloc(i32 noundef %add41) #12
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %release_ppm_pool, label %if.end45

if.end45:                                         ; preds = %if.end35
  %arrayidx = getelementptr %struct.cxgbi_ppm, ptr %call42, i32 0, i32 17, i32 %shr
  %ppod_bmap = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 16
  %17 = ptrtoint ptr %ppod_bmap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %ppod_bmap, align 4
  %shr46 = lshr i32 %sub37, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr46, i32 %sub)
  %cmp48 = icmp ugt i32 %shr46, %sub
  br i1 %cmp48, label %if.then49, label %if.end45.if.end60_crit_edge

if.end45.if.end60_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %sub54 = sub i32 %shr46, %sub
  tail call void @__bitmap_set(ptr noundef %arrayidx, i32 noundef %shr, i32 noundef %sub54) #8
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, i32 noundef %shr, i32 noundef %ppmax_pool.2, i32 noundef %div38220, i32 noundef %sub, i32 noundef %shr46) #11
  br label %if.end60

if.end60:                                         ; preds = %if.then49, %if.end45.if.end60_crit_edge
  br i1 %tobool1.not, label %if.end60.do.body83_crit_edge, label %if.then62

if.end60.do.body83_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %shr63 = lshr i32 %spec.select, 6
  %sub64 = add nsw i32 %shr63, -1
  %max_index_in_edram = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 15
  %18 = ptrtoint ptr %max_index_in_edram to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub64, ptr %max_index_in_edram, align 4
  %19 = ptrtoint ptr %ppod_bmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ppod_bmap, align 4
  %rem.i.i223 = and i32 %shr63, 31
  %shl.i.i224 = shl nuw i32 1, %rem.i.i223
  %div2.i.i225 = lshr i32 %spec.select, 11
  %add.ptr.i.i226 = getelementptr i32, ptr %20, i32 %div2.i.i225
  %21 = ptrtoint ptr %add.ptr.i.i226 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i226, align 4
  %or.i.i227 = or i32 %22, %shl.i.i224
  store i32 %or.i.i227, ptr %add.ptr.i.i226, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbi_ppm_init.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbi_ppm_init, %if.then78)) #8
          to label %do.body83 [label %if.then78], !srcloc !142

if.then78:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbi_ppm_init.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.33, i32 noundef %shr63) #8
  br label %do.body83

do.body83:                                        ; preds = %if.then78, %if.then62, %if.end60.do.body83_crit_edge
  %map_lock = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %map_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @cxgbi_ppm_init.__key, i16 noundef signext 3) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call42, i32 noundef 4) #8
  %23 = ptrtoint ptr %call42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %call42, align 4
  %tformat88 = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 5
  %24 = call ptr @memcpy(ptr %tformat88, ptr %tformat, i32 28)
  %ppm_pp89 = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 4
  %25 = ptrtoint ptr %ppm_pp89 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ppm_pp, ptr %ppm_pp89, align 4
  %ndev90 = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 1
  %26 = ptrtoint ptr %ndev90 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ndev, ptr %ndev90, align 4
  %pdev91 = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 2
  %27 = ptrtoint ptr %pdev91 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pdev, ptr %pdev91, align 4
  %lldev92 = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 3
  %28 = ptrtoint ptr %lldev92 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %lldev, ptr %lldev92, align 4
  %ppmax93 = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 6
  %29 = ptrtoint ptr %ppmax93 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr, ptr %ppmax93, align 4
  %next = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 14
  %30 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %next, align 4
  %llimit94 = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 7
  %31 = ptrtoint ptr %llimit94 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %llimit, ptr %llimit94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select222, i32 %llimit)
  %cmp95 = icmp ugt i32 %spec.select222, %llimit
  %sub96 = sub i32 1, %llimit
  %add97 = add i32 %sub96, %spec.select222
  %shr98 = lshr i32 %add97, 6
  %cond = select i1 %cmp95, i32 %shr98, i32 0
  %base_idx = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 8
  %32 = ptrtoint ptr %base_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond, ptr %base_idx, align 4
  %bmap_index_max = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 13
  %33 = ptrtoint ptr %bmap_index_max to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub, ptr %bmap_index_max, align 4
  %pool100 = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 11
  %34 = ptrtoint ptr %pool100 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pool.0, ptr %pool100, align 4
  %pool_rsvd = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 9
  %35 = ptrtoint ptr %pool_rsvd to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %ppmax_pool.2, ptr %pool_rsvd, align 4
  %pool_index_max101 = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 10
  %36 = ptrtoint ptr %pool_index_max101 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %pool_index_max.1, ptr %pool_index_max101, align 4
  %37 = ptrtoint ptr %ppm_pp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ppm_pp, align 4
  %tobool102.not = icmp eq ptr %38, null
  br i1 %tobool102.not, label %if.end113, label %if.then103

if.then103:                                       ; preds = %do.body83
  tail call void @vfree(ptr noundef nonnull %call42) #8
  %39 = ptrtoint ptr %ppm_pp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ppm_pp, align 4
  %ppmax110 = getelementptr inbounds %struct.cxgbi_ppm, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %ppmax110 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ppmax110, align 4
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %ndev, ptr noundef %ppm_pp, ptr noundef %40, i32 noundef %42, i32 noundef %shr) #11
  %call.i.i.i.i.i.i234 = tail call zeroext i1 @__kasan_check_write(ptr noundef %40, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %40, i32 1, i32 3, i32 1) #8
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #8, !srcloc !149
  %asmresult.i.i.i.i.i.i235 = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i235)
  %tobool1.not.i.i.i.i236 = icmp eq i32 %asmresult.i.i.i.i.i.i235, 0
  br i1 %tobool1.not.i.i.i.i236, label %if.then103.if.end15.sink.split.i.i.i.i241_crit_edge, label %if.else.i.i.i.i239, !prof !150

if.then103.if.end15.sink.split.i.i.i.i241_crit_edge: ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i241

if.else.i.i.i.i239:                               ; preds = %if.then103
  %add.i.i.i.i237 = add i32 %asmresult.i.i.i.i.i.i235, 1
  %44 = or i32 %add.i.i.i.i237, %asmresult.i.i.i.i.i.i235
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i238 = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i238, label %if.else.i.i.i.i239.cleanup_crit_edge, label %if.else.i.i.i.i239.if.end15.sink.split.i.i.i.i241_crit_edge, !prof !145

if.else.i.i.i.i239.if.end15.sink.split.i.i.i.i241_crit_edge: ; preds = %if.else.i.i.i.i239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i241

if.else.i.i.i.i239.cleanup_crit_edge:             ; preds = %if.else.i.i.i.i239
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.sink.split.i.i.i.i241:                   ; preds = %if.else.i.i.i.i239.if.end15.sink.split.i.i.i.i241_crit_edge, %if.then103.if.end15.sink.split.i.i.i.i241_crit_edge
  %.sink.i.i.i.i240 = phi i32 [ 2, %if.then103.if.end15.sink.split.i.i.i.i241_crit_edge ], [ 1, %if.else.i.i.i.i239.if.end15.sink.split.i.i.i.i241_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef %.sink.i.i.i.i240) #8
  br label %cleanup

if.end113:                                        ; preds = %do.body83
  %45 = ptrtoint ptr %ppm_pp to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call42, ptr %ppm_pp, align 4
  %46 = ptrtoint ptr %tformat88 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tformat88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp2.i = icmp eq i8 %47, 0
  br i1 %cmp2.i, label %if.end113.do.body.i_crit_edge, label %for.inc.i

if.end113.do.body.i_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.2.i.do.body.i_crit_edge, %for.inc.1.i.do.body.i_crit_edge, %for.inc.i.do.body.i_crit_edge, %if.end113.do.body.i_crit_edge
  %i.023.lcssa.i = phi i32 [ 0, %if.end113.do.body.i_crit_edge ], [ 1, %for.inc.i.do.body.i_crit_edge ], [ 2, %for.inc.1.i.do.body.i_crit_edge ], [ 3, %for.inc.2.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgbi_ppm_find_page_index.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgbi_ppm_init, %if.then6.i)) #8
          to label %cxgbi_ppm_find_page_index.exit [label %if.then6.i], !srcloc !142

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %ndev90 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ndev90, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgbi_ppm_find_page_index.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %49, i32 noundef 4096, i32 noundef %i.023.lcssa.i) #8
  br label %cxgbi_ppm_find_page_index.exit

for.inc.i:                                        ; preds = %if.end113
  %arrayidx.1.i = getelementptr %struct.cxgbi_ppm, ptr %call42, i32 0, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp2.1.i = icmp eq i8 %51, 0
  br i1 %cmp2.1.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.1.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.cxgbi_ppm, ptr %call42, i32 0, i32 5, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp2.2.i = icmp eq i8 %53, 0
  br i1 %cmp2.2.i, label %for.inc.1.i.do.body.i_crit_edge, label %for.inc.2.i

for.inc.1.i.do.body.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.cxgbi_ppm, ptr %call42, i32 0, i32 5, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp2.3.i = icmp eq i8 %55, 0
  br i1 %cmp2.3.i, label %for.inc.2.i.do.body.i_crit_edge, label %for.inc.3.i

for.inc.2.i.do.body.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 4096) #11
  br label %cxgbi_ppm_find_page_index.exit

cxgbi_ppm_find_page_index.exit:                   ; preds = %for.inc.3.i, %if.then6.i, %do.body.i
  %retval.0.i244 = phi i32 [ 4, %for.inc.3.i ], [ %i.023.lcssa.i, %if.then6.i ], [ %i.023.lcssa.i, %do.body.i ]
  %conv = trunc i32 %retval.0.i244 to i8
  %pgsz_idx_dflt = getelementptr inbounds %struct.cxgbi_ppm, ptr %call42, i32 0, i32 5, i32 1
  %56 = ptrtoint ptr %pgsz_idx_dflt to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv, ptr %pgsz_idx_dflt, align 4
  %57 = ptrtoint ptr %base_idx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %base_idx, align 4
  %59 = ptrtoint ptr %ppmax93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ppmax93, align 4
  %61 = ptrtoint ptr %pool_rsvd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pool_rsvd, align 4
  %63 = ptrtoint ptr %pool_index_max101 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pool_index_max101, align 4
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %ndev, ptr noundef %ppm_pp, ptr noundef nonnull %call42, i32 noundef %58, i32 noundef %60, i32 noundef 4096, i32 noundef %retval.0.i244, i32 noundef %62, i32 noundef %64) #11
  br label %cleanup

release_ppm_pool:                                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @free_percpu(ptr noundef %pool.0) #8
  br label %cleanup

cleanup:                                          ; preds = %release_ppm_pool, %cxgbi_ppm_find_page_index.exit, %if.end15.sink.split.i.i.i.i241, %if.else.i.i.i.i239.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cxgbi_ppm_find_page_index.exit ], [ -12, %release_ppm_pool ], [ 1, %if.else.i.i.i.i.cleanup_crit_edge ], [ 1, %if.end15.sink.split.i.i.i.i ], [ 1, %if.else.i.i.i.i239.cleanup_crit_edge ], [ 1, %if.end15.sink.split.i.i.i.i241 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgbi_tagmask_set(i32 noundef %ppmax) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppmax)
  %tobool.not.i = icmp eq i32 %ppmax, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %ppmax, i1 true) #8, !range !151
  %sub.i = sub nuw nsw i32 32, %0
  %1 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 24)
  %2 = select i1 %tobool.not.i, i32 0, i32 %1
  %shl = shl nuw nsw i32 64, %2
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %ppmax, i32 noundef %ppmax, i32 noundef %2, i32 noundef %shl) #11
  ret i32 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !81, !83, !85, !86, !87, !88, !90, !92, !94, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131}
!llvm.named.register.sp = !{!132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 73, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cxgbi_ppm_find_page_index.__UNIQUE_ID_ddebug339, !1, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 78, i32 2}
!9 = !{ptr @cxgbi_ppm_find_page_index._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @cxgbi_ppm_find_page_index._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 231, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cxgbi_ppm_ppod_release._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @cxgbi_ppm_ppod_release._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 237, i32 3}
!18 = !{ptr @cxgbi_ppm_ppod_release._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cxgbi_ppm_ppod_release._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 241, i32 2}
!22 = !{ptr @cxgbi_ppm_ppod_release.__UNIQUE_ID_ddebug346, !21, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__ksymtab_cxgbi_ppm_ppod_release, !25, !"__ksymtab_cxgbi_ppm_ppod_release", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 244, i32 1}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 258, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cxgbi_ppm_ppods_reserve._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @cxgbi_ppm_ppods_reserve._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 269, i32 3}
!33 = !{ptr @cxgbi_ppm_ppods_reserve.__UNIQUE_ID_ddebug347, !32, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!34 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 285, i32 2}
!37 = !{ptr @cxgbi_ppm_ppods_reserve.__UNIQUE_ID_ddebug348, !36, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__ksymtab_cxgbi_ppm_ppods_reserve, !40, !"__ksymtab_cxgbi_ppm_ppods_reserve", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 290, i32 1}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 309, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cxgbi_ppm_make_ppod_hdr.__UNIQUE_ID_ddebug349, !42, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!45 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__ksymtab_cxgbi_ppm_make_ppod_hdr, !47, !"__ksymtab_cxgbi_ppm_make_ppod_hdr", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 312, i32 1}
!48 = !{ptr @__ksymtab_cxgbi_ppm_release, !49, !"__ksymtab_cxgbi_ppm_release", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 343, i32 1}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 407, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cxgbi_ppm_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @cxgbi_ppm_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 421, i32 3}
!57 = !{ptr @cxgbi_ppm_init._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cxgbi_ppm_init._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 435, i32 3}
!61 = !{ptr @cxgbi_ppm_init.__UNIQUE_ID_ddebug350, !60, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!62 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 455, i32 3}
!65 = !{ptr @cxgbi_ppm_init._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @cxgbi_ppm_init._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 465, i32 3}
!69 = !{ptr @cxgbi_ppm_init.__UNIQUE_ID_ddebug351, !68, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!70 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cxgbi_ppm_init.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 468, i32 2}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cxgbi_ppm_init._entry.35, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 493, i32 3}
!76 = !{ptr @cxgbi_ppm_init._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 503, i32 2}
!79 = !{ptr @cxgbi_ppm_init._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cxgbi_ppm_init._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @__ksymtab_cxgbi_ppm_init, !82, !"__ksymtab_cxgbi_ppm_init", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 514, i32 1}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 523, i32 2}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @cxgbi_tagmask_set._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @cxgbi_tagmask_set._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @__ksymtab_cxgbi_tagmask_set, !89, !"__ksymtab_cxgbi_tagmask_set", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 528, i32 1}
!90 = !{ptr @__UNIQUE_ID_author352, !91, !"__UNIQUE_ID_author352", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 530, i32 1}
!92 = !{ptr @__UNIQUE_ID_description353, !93, !"__UNIQUE_ID_description353", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 531, i32 1}
!94 = !{ptr @__UNIQUE_ID_file354, !95, !"__UNIQUE_ID_file354", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 532, i32 1}
!96 = !{ptr @__UNIQUE_ID_license355, !95, !"__UNIQUE_ID_license355", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 193, i32 2}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ppm_unmark_entries.__UNIQUE_ID_ddebug343, !98, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!101 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 210, i32 3}
!104 = !{ptr @ppm_unmark_entries.__UNIQUE_ID_ddebug344, !103, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!105 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 222, i32 3}
!108 = !{ptr @ppm_unmark_entries.__UNIQUE_ID_ddebug345, !107, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!109 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 147, i32 2}
!112 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ppm_get_cpu_entries.__UNIQUE_ID_ddebug340, !111, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!114 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 168, i32 3}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ppm_get_entries.__UNIQUE_ID_ddebug341, !116, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!119 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 181, i32 2}
!122 = !{ptr @ppm_get_entries.__UNIQUE_ID_ddebug342, !121, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!123 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 324, i32 2}
!126 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ppm_destroy._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @ppm_destroy._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @ppm_alloc_cpu_pool.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c", i32 377, i32 3}
!131 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!132 = !{!"sp"}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2148703444, i64 2148703449, i64 2148703462, i64 2148703506, i64 2148703540, i64 2148703561}
!143 = !{i64 2156269149}
!144 = !{i64 2156270012}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2148311160}
!147 = !{i64 2148225624, i64 2148225656, i64 2148225685, i64 2148225719, i64 2148225750, i64 2148225773}
!148 = !{i64 2149317608}
!149 = !{i64 2148223159, i64 2148223191, i64 2148223220, i64 2148223254, i64 2148223285, i64 2148223308}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i32 0, i32 33}
