; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regcache.c_pt.bc'
source_filename = "../drivers/base/regmap/regcache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+regcache_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_regcache_sync\09\09\09\09"
module asm "\09.long\09__crc_regcache_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_sync\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+regcache_sync_region\22, \22a\22\09"
module asm "\09.weak\09__crc_regcache_sync_region\09\09\09\09"
module asm "\09.long\09__crc_regcache_sync_region\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_sync_region:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_sync_region\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_sync_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+regcache_drop_region\22, \22a\22\09"
module asm "\09.weak\09__crc_regcache_drop_region\09\09\09\09"
module asm "\09.long\09__crc_regcache_drop_region\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_drop_region:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_drop_region\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_drop_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+regcache_cache_only\22, \22a\22\09"
module asm "\09.weak\09__crc_regcache_cache_only\09\09\09\09"
module asm "\09.long\09__crc_regcache_cache_only\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_cache_only:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_cache_only\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_cache_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+regcache_mark_dirty\22, \22a\22\09"
module asm "\09.weak\09__crc_regcache_mark_dirty\09\09\09\09"
module asm "\09.long\09__crc_regcache_mark_dirty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_mark_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_mark_dirty\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_mark_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+regcache_cache_bypass\22, \22a\22\09"
module asm "\09.weak\09__crc_regcache_cache_bypass\09\09\09\09"
module asm "\09.long\09__crc_regcache_cache_bypass\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regcache_cache_bypass:\09\09\09\09\09"
module asm "\09.asciz \09\22regcache_cache_bypass\22\09\09\09\09\09"
module asm "__kstrtabns_regcache_cache_bypass:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regcache_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.regmap = type { %union.anon, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }

@regcache_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No cache used with register defaults set!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"regcache_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/base/regmap/regcache.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@regcache_init._entry_ptr = internal global ptr @regcache_init._entry, section ".printk_index", align 4
@regcache_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 132, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Register defaults are set without the number!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@regcache_init._entry_ptr.8 = internal global ptr @regcache_init._entry.5, section ".printk_index", align 4
@cache_types = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @regcache_rbtree_ops, ptr @regcache_flat_ops], [24 x i8] zeroinitializer }, align 32
@regcache_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 146, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not match compress type: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@regcache_init._entry_ptr.11 = internal global ptr @regcache_init._entry.9, section ".printk_index", align 4
@regcache_init.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"regcache\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Initializing %s cache\0A\00", [41 x i8] zeroinitializer }, align 32
@regcache_exit.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"regcache_exit\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Destroying %s cache\0A\00", [43 x i8] zeroinitializer }, align 32
@regcache_sync.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"regcache_sync\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Syncing %s cache\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@regcache_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 367, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to write %x = %x: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@regcache_sync._entry_ptr = internal global ptr @regcache_sync._entry, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_regcache_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_sync to i32), ptr @__kstrtab_regcache_sync, ptr @__kstrtabns_regcache_sync }, section "___ksymtab_gpl+regcache_sync", align 4
@regcache_sync_region.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"regcache_sync_region\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Syncing %s cache from %d-%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"start region\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stop region\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_regcache_sync_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_sync_region = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_sync_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_sync_region to i32), ptr @__kstrtab_regcache_sync_region, ptr @__kstrtabns_regcache_sync_region }, section "___ksymtab_gpl+regcache_sync_region", align 4
@__kstrtab_regcache_drop_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_drop_region = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_drop_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_drop_region to i32), ptr @__kstrtab_regcache_drop_region, ptr @__kstrtabns_regcache_drop_region }, section "___ksymtab_gpl+regcache_drop_region", align 4
@__kstrtab_regcache_cache_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_cache_only = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_cache_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_cache_only to i32), ptr @__kstrtab_regcache_cache_only, ptr @__kstrtabns_regcache_cache_only }, section "___ksymtab_gpl+regcache_cache_only", align 4
@__kstrtab_regcache_mark_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_mark_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_mark_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_mark_dirty to i32), ptr @__kstrtab_regcache_mark_dirty, ptr @__kstrtabns_regcache_mark_dirty }, section "___ksymtab_gpl+regcache_mark_dirty", align 4
@__kstrtab_regcache_cache_bypass = external dso_local constant [0 x i8], align 1
@__kstrtabns_regcache_cache_bypass = external dso_local constant [0 x i8], align 1
@__ksymtab_regcache_cache_bypass = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regcache_cache_bypass to i32), ptr @__kstrtab_regcache_cache_bypass, ptr @__kstrtabns_regcache_cache_bypass }, section "___ksymtab_gpl+regcache_cache_bypass", align 4
@regcache_rbtree_ops = external dso_local global %struct.regcache_ops, align 4
@regcache_flat_ops = external dso_local global %struct.regcache_ops, align 4
@regcache_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No cache defaults, reading back from HW\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"regcache_hw_init\00", [47 x i8] zeroinitializer }, align 32
@regcache_hw_init._entry_ptr = internal global ptr @regcache_hw_init._entry, section ".printk_index", align 4
@regcache_hw_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 97, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to read %d: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@regcache_hw_init._entry_ptr.29 = internal global ptr @regcache_hw_init._entry.27, section ".printk_index", align 4
@__tracepoint_regmap_reg_read_cache = external dso_local global %struct.tracepoint, align 4
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/base/regmap/trace.h\00", [36 x i8] zeroinitializer }, align 32
@trace_regmap_reg_read_cache.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_regcache_sync = external dso_local global %struct.tracepoint, align 4
@trace_regcache_sync.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@regcache_default_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 319, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to sync register %#x. %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"regcache_default_sync\00", [42 x i8] zeroinitializer }, align 32
@regcache_default_sync._entry_ptr = internal global ptr @regcache_default_sync._entry, section ".printk_index", align 4
@regcache_default_sync.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Synced register %#x, value %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@__tracepoint_regcache_drop_region = external dso_local global %struct.tracepoint, align 4
@trace_regcache_drop_region.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_regmap_cache_only = external dso_local global %struct.tracepoint, align 4
@trace_regmap_cache_only.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_regmap_cache_bypass = external dso_local global %struct.tracepoint, align 4
@trace_regmap_cache_bypass.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@regcache_sync_block_raw_flush.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regcache_sync_block_raw_flush\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Writing %zu bytes for %d registers from 0x%x-0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@regcache_sync_block_raw_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 723, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to sync registers %#x-%#x. %d\0A\00", [58 x i8] zeroinitializer }, align 32
@regcache_sync_block_raw_flush._entry_ptr = internal global ptr @regcache_sync_block_raw_flush._entry, section ".printk_index", align 4
@regcache_sync_block_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.39, ptr @.str.2, i32 694, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regcache_sync_block_single\00", [37 x i8] zeroinitializer }, align 32
@regcache_sync_block_single._entry_ptr = internal global ptr @regcache_sync_block_single._entry, section ".printk_index", align 4
@regcache_sync_block_single.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.39, ptr @.str.2, ptr @.str.35, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 123, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 131, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"cache_types\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 18, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 145, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 190, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 218, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 351, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 354, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 366, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 390, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 423, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 425, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 446, i32 33 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 57, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 96, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant [31 x i8] c"../drivers/base/regmap/trace.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 58, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 108, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 318, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 322, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 715, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 722, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [34 x i8] c"../drivers/base/regmap/regcache.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 693, i32 4 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__ksymtab_regcache_cache_bypass, ptr @__ksymtab_regcache_cache_only, ptr @__ksymtab_regcache_drop_region, ptr @__ksymtab_regcache_mark_dirty, ptr @__ksymtab_regcache_sync, ptr @__ksymtab_regcache_sync_region, ptr @regcache_default_sync._entry, ptr @regcache_default_sync._entry_ptr, ptr @regcache_hw_init._entry, ptr @regcache_hw_init._entry.27, ptr @regcache_hw_init._entry_ptr, ptr @regcache_hw_init._entry_ptr.29, ptr @regcache_init._entry, ptr @regcache_init._entry.5, ptr @regcache_init._entry.9, ptr @regcache_init._entry_ptr, ptr @regcache_init._entry_ptr.11, ptr @regcache_init._entry_ptr.8, ptr @regcache_sync._entry, ptr @regcache_sync._entry_ptr, ptr @regcache_sync_block_raw_flush._entry, ptr @regcache_sync_block_raw_flush._entry_ptr, ptr @regcache_sync_block_single._entry, ptr @regcache_sync_block_single._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @cache_types, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cache_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_hw_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_default_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_sync_block_raw_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcache_sync_block_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regcache_init(ptr noundef %map, ptr nocapture noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_type = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 48
  %0 = ptrtoint ptr %cache_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %reg_defaults = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 26
  %2 = ptrtoint ptr %reg_defaults to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_defaults, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then
  %num_reg_defaults_raw = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 30
  %4 = ptrtoint ptr %num_reg_defaults_raw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_reg_defaults_raw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.then.do.end_crit_edge
  %dev = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.if.end_crit_edge
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %8 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %cache_bypass, align 1
  br label %cleanup

if.end3:                                          ; preds = %entry
  br i1 %tobool.not, label %if.end3.if.end12_crit_edge, label %land.lhs.true

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end3
  %num_reg_defaults = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 27
  %9 = ptrtoint ptr %num_reg_defaults to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_reg_defaults, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %do.end10, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end10:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev11 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %11 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %num_reg_defaults13 = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 27
  %13 = ptrtoint ptr %num_reg_defaults13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_reg_defaults13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14175.not = icmp eq i32 %14, 0
  br i1 %cmp14175.not, label %if.end12.for.cond19.preheader_crit_edge, label %for.body.lr.ph

if.end12.for.cond19.preheader_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond19.preheader

for.body.lr.ph:                                   ; preds = %if.end12
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %15 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_stride, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0176, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.cond.for.cond19.preheader_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.cond19.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond.for.cond19.preheader_crit_edge, %if.end12.for.cond19.preheader_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.regcache_ops, ptr @regcache_rbtree_ops, i32 0, i32 1) to i32))
  %17 = load i32, ptr getelementptr inbounds (%struct.regcache_ops, ptr @regcache_rbtree_ops, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp24 = icmp eq i32 %17, %1
  br i1 %cmp24, label %for.cond19.preheader.if.end37_crit_edge, label %for.inc27

for.cond19.preheader.if.end37_crit_edge:          ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0176 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.reg_default, ptr %3, i32 %i.0176
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %rem = urem i32 %19, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool16.not = icmp eq i32 %rem, 0
  br i1 %tobool16.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc27:                                        ; preds = %for.cond19.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.regcache_ops, ptr @regcache_flat_ops, i32 0, i32 1) to i32))
  %20 = load i32, ptr getelementptr inbounds (%struct.regcache_ops, ptr @regcache_flat_ops, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %1)
  %cmp24.1 = icmp eq i32 %20, %1
  br i1 %cmp24.1, label %for.inc27.if.end37_crit_edge, label %do.end34

for.inc27.if.end37_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end34:                                         ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #11
  %dev35 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %21 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef %1) #12
  br label %cleanup

if.end37:                                         ; preds = %for.inc27.if.end37_crit_edge, %for.cond19.preheader.if.end37_crit_edge
  %i.1177.lcssa = phi i32 [ 0, %for.cond19.preheader.if.end37_crit_edge ], [ 1, %for.inc27.if.end37_crit_edge ]
  %num_reg_defaults39 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 51
  %23 = ptrtoint ptr %num_reg_defaults39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %14, ptr %num_reg_defaults39, align 4
  %num_reg_defaults_raw40 = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 30
  %24 = ptrtoint ptr %num_reg_defaults_raw40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_reg_defaults_raw40, align 4
  %num_reg_defaults_raw41 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 52
  %26 = ptrtoint ptr %num_reg_defaults_raw41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %num_reg_defaults_raw41, align 4
  %reg_defaults_raw = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 29
  %27 = ptrtoint ptr %reg_defaults_raw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_defaults_raw, align 4
  %reg_defaults_raw42 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 57
  %29 = ptrtoint ptr %reg_defaults_raw42 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %reg_defaults_raw42, align 4
  %val_bits = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %30 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val_bits, align 4
  %sub = add i32 %31, 7
  %div = sdiv i32 %sub, 8
  %cache_word_size = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 50
  %32 = ptrtoint ptr %cache_word_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div, ptr %cache_word_size, align 4
  %33 = load i32, ptr %num_reg_defaults_raw40, align 4
  %mul = mul i32 %div, %33
  %cache_size_raw = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 49
  %34 = ptrtoint ptr %cache_size_raw to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul, ptr %cache_size_raw, align 4
  %cache = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 58
  %35 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %cache, align 4
  %arrayidx45 = getelementptr [2 x ptr], ptr @cache_types, i32 0, i32 %i.1177.lcssa
  %36 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx45, align 4
  %cache_ops = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 47
  %38 = ptrtoint ptr %cache_ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %cache_ops, align 4
  %read = getelementptr inbounds %struct.regcache_ops, ptr %37, i32 0, i32 5
  %39 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read, align 4
  %tobool47.not = icmp eq ptr %40, null
  br i1 %tobool47.not, label %if.end37.cleanup_crit_edge, label %lor.lhs.false48

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false48:                                  ; preds = %if.end37
  %write = getelementptr inbounds %struct.regcache_ops, ptr %37, i32 0, i32 6
  %41 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write, align 4
  %tobool50.not = icmp eq ptr %42, null
  br i1 %tobool50.not, label %lor.lhs.false48.cleanup_crit_edge, label %lor.lhs.false51

lor.lhs.false48.cleanup_crit_edge:                ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %37, align 4
  %tobool53.not = icmp eq ptr %44, null
  br i1 %tobool53.not, label %lor.lhs.false51.cleanup_crit_edge, label %if.end55

lor.lhs.false51.cleanup_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false51
  %45 = ptrtoint ptr %reg_defaults to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_defaults, align 4
  %tobool57.not = icmp eq ptr %46, null
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end55
  %mul61 = shl i32 %14, 3
  %call = tail call ptr @kmemdup(ptr noundef nonnull %46, i32 noundef %mul61, i32 noundef 3264) #9
  %tobool62.not = icmp eq ptr %call, null
  br i1 %tobool62.not, label %if.then58.cleanup_crit_edge, label %if.end64

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %reg_defaults65 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  %47 = ptrtoint ptr %reg_defaults65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call, ptr %reg_defaults65, align 4
  br label %if.end78

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool67.not = icmp eq i32 %25, 0
  br i1 %tobool67.not, label %if.else.if.end78_crit_edge, label %if.then68

if.else.if.end78_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then68:                                        ; preds = %if.else
  %call69 = tail call fastcc i32 @regcache_hw_init(ptr noundef %map)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then68.cleanup_crit_edge, label %if.end72

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72:                                         ; preds = %if.then68
  %cache_bypass73 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %48 = ptrtoint ptr %cache_bypass73 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cache_bypass73, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool74.not = icmp eq i8 %49, 0
  br i1 %tobool74.not, label %if.end72.if.end78_crit_edge, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.end78:                                         ; preds = %if.end72.if.end78_crit_edge, %if.else.if.end78_crit_edge, %if.end64
  %max_register = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 25
  %50 = ptrtoint ptr %max_register to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_register, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool79.not = icmp eq i32 %51, 0
  br i1 %tobool79.not, label %if.then80, label %if.end78.if.end83_crit_edge

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %num_reg_defaults_raw41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_reg_defaults_raw41, align 4
  %54 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %max_register, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end78.if.end83_crit_edge
  %55 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cache_ops, align 4
  %init = getelementptr inbounds %struct.regcache_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init, align 4
  %tobool85.not = icmp eq ptr %58, null
  br i1 %tobool85.not, label %if.end83.cleanup_crit_edge, label %do.body87

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body87:                                        ; preds = %if.end83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regcache_init.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regcache_init, %if.then92)) #9
          to label %do.end98 [label %if.then92], !srcloc !121

if.then92:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  %dev93 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %59 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev93, align 4
  %61 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cache_ops, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regcache_init.__UNIQUE_ID_ddebug254, ptr noundef %60, ptr noundef nonnull @.str.13, ptr noundef %64) #9
  br label %do.end98

do.end98:                                         ; preds = %if.then92, %do.body87
  %65 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cache_ops, align 4
  %init100 = getelementptr inbounds %struct.regcache_ops, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %init100 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init100, align 4
  %call101 = tail call i32 %68(ptr noundef %map) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %do.end98.cleanup_crit_edge, label %err_free

do.end98.cleanup_crit_edge:                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_free:                                         ; preds = %do.end98
  %reg_defaults106 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  %69 = ptrtoint ptr %reg_defaults106 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg_defaults106, align 4
  tail call void @kfree(ptr noundef %70) #9
  %cache_free = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 55
  %71 = ptrtoint ptr %cache_free to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %cache_free, align 2, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool107.not = icmp eq i8 %72, 0
  br i1 %tobool107.not, label %err_free.cleanup_crit_edge, label %if.then108

err_free.cleanup_crit_edge:                       ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then108:                                       ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %reg_defaults_raw42 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_defaults_raw42, align 4
  tail call void @kfree(ptr noundef %74) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %err_free.cleanup_crit_edge, %do.end98.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %lor.lhs.false51.cleanup_crit_edge, %lor.lhs.false48.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end34, %for.body.cleanup_crit_edge, %do.end10, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end34 ], [ -22, %do.end10 ], [ -22, %lor.lhs.false51.cleanup_crit_edge ], [ -22, %lor.lhs.false48.cleanup_crit_edge ], [ -22, %if.end37.cleanup_crit_edge ], [ -12, %if.then58.cleanup_crit_edge ], [ %call69, %if.then68.cleanup_crit_edge ], [ 0, %if.end72.cleanup_crit_edge ], [ 0, %do.end98.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ], [ %call101, %if.then108 ], [ %call101, %err_free.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @regcache_hw_init(ptr noundef %map) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !122
  %num_reg_defaults_raw = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 52
  %1 = ptrtoint ptr %num_reg_defaults_raw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_reg_defaults_raw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup83_crit_edge, label %for.cond.preheader

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %num_reg_defaults_raw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_reg_defaults_raw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp169.not = icmp eq i32 %4, 0
  br i1 %cmp169.not, label %for.cond.preheader.if.then9_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then9_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_stride, align 4
  %mul = mul i32 %6, %i.0170
  %call = tail call zeroext i1 @regmap_readable(ptr noundef %map, i32 noundef %mul) #9
  br i1 %call, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg_stride, align 4
  %mul3 = mul i32 %8, %i.0170
  %call4 = tail call zeroext i1 @regmap_volatile(ptr noundef %map, i32 noundef %mul3) #9
  %not.call4 = xor i1 %call4, true
  %inc = zext i1 %not.call4 to i32
  %spec.select = add i32 %count.0172, %inc
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %count.0172, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc7 = add nuw i32 %i.0170, 1
  %9 = ptrtoint ptr %num_reg_defaults_raw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_reg_defaults_raw, align 4
  %cmp = icmp ult i32 %inc7, %10
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %tobool8.not = icmp eq i32 %count.1, 0
  br i1 %tobool8.not, label %for.end.if.then9_crit_edge, label %if.end10

for.end.if.then9_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %for.end.if.then9_crit_edge, %for.cond.preheader.if.then9_crit_edge
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %11 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %cache_bypass, align 1
  br label %cleanup83

if.end10:                                         ; preds = %for.end
  %num_reg_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 51
  %12 = ptrtoint ptr %num_reg_defaults to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %count.1, ptr %num_reg_defaults, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.1, i32 8) #9
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !123

kmalloc_array.exit.thread:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %reg_defaults154 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  %15 = ptrtoint ptr %reg_defaults154 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %reg_defaults154, align 4
  br label %cleanup83

if.end7.i:                                        ; preds = %if.end10
  %16 = extractvalue { i32, i1 } %13, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #13
  %reg_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  %17 = ptrtoint ptr %reg_defaults to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i, ptr %reg_defaults, align 4
  %tobool13.not = icmp eq ptr %call8.i, null
  br i1 %tobool13.not, label %if.end7.i.cleanup83_crit_edge, label %if.end15

if.end7.i.cleanup83_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.end15:                                         ; preds = %if.end7.i
  %reg_defaults_raw = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 57
  %18 = ptrtoint ptr %reg_defaults_raw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_defaults_raw, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end35_crit_edge

if.end15.if.end35_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then17:                                        ; preds = %if.end15
  %cache_bypass19 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %20 = ptrtoint ptr %cache_bypass19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cache_bypass19, align 1, !range !120
  %dev = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.25) #12
  %24 = ptrtoint ptr %cache_bypass19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %cache_bypass19, align 1
  %cache_size_raw = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 49
  %25 = ptrtoint ptr %cache_size_raw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cache_size_raw, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3264) #13
  %tobool23.not = icmp eq ptr %call9.i, null
  br i1 %tobool23.not, label %if.then17.err_free_crit_edge, label %if.end25

if.then17.err_free_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

if.end25:                                         ; preds = %if.then17
  %27 = ptrtoint ptr %cache_size_raw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cache_size_raw, align 4
  %call27 = tail call i32 @regmap_raw_read(ptr noundef %map, i32 noundef 0, ptr noundef nonnull %call9.i, i32 noundef %28) #9
  %29 = ptrtoint ptr %cache_bypass19 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %21, ptr %cache_bypass19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp31 = icmp eq i32 %call27, 0
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %reg_defaults_raw to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i, ptr %reg_defaults_raw, align 4
  %cache_free = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 55
  %31 = ptrtoint ptr %cache_free to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %cache_free, align 2
  br label %if.end35

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then32, %if.end15.if.end35_crit_edge
  %32 = ptrtoint ptr %num_reg_defaults_raw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_reg_defaults_raw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp38173.not = icmp eq i32 %33, 0
  br i1 %cmp38173.not, label %if.end35.cleanup83_crit_edge, label %for.body39.lr.ph

if.end35.cleanup83_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

for.body39.lr.ph:                                 ; preds = %if.end35
  %reg_stride40 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %parse_val.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 7, i32 7
  %cache_word_size.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 50
  %cache_bypass55 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  br label %for.body39

for.body39:                                       ; preds = %for.inc79.for.body39_crit_edge, %for.body39.lr.ph
  %j.0178 = phi i32 [ 0, %for.body39.lr.ph ], [ %j.1, %for.inc79.for.body39_crit_edge ]
  %i.1174 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc80, %for.inc79.for.body39_crit_edge ]
  %34 = ptrtoint ptr %reg_stride40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_stride40, align 4
  %mul41 = mul i32 %35, %i.1174
  %call42 = call zeroext i1 @regmap_readable(ptr noundef %map, i32 noundef %mul41) #9
  br i1 %call42, label %if.end44, label %for.body39.for.inc79_crit_edge

for.body39.for.inc79_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

if.end44:                                         ; preds = %for.body39
  %call45 = call zeroext i1 @regmap_volatile(ptr noundef %map, i32 noundef %mul41) #9
  br i1 %call45, label %if.end44.for.inc79_crit_edge, label %if.end47

if.end44.for.inc79_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

if.end47:                                         ; preds = %if.end44
  %36 = ptrtoint ptr %reg_defaults_raw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_defaults_raw, align 4
  %tobool49.not = icmp eq ptr %37, null
  br i1 %tobool49.not, label %if.else53, label %if.end.i151

if.end.i151:                                      ; preds = %if.end47
  %38 = ptrtoint ptr %parse_val.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parse_val.i, align 4
  %tobool1.not.i = icmp eq ptr %39, null
  %40 = ptrtoint ptr %cache_word_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cache_word_size.i, align 4
  br i1 %tobool1.not.i, label %if.end6.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = mul i32 %41, %i.1174
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %mul.i.i
  %call5.i = call i32 %39(ptr noundef %add.ptr.i.i) #9
  br label %regcache_get_val.exit

if.end6.i:                                        ; preds = %if.end.i151
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %41, label %do.body.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb7.i
    i32 4, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %37, i32 %i.1174
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %44 to i32
  br label %regcache_get_val.exit

sw.bb7.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i = getelementptr i16, ptr %37, i32 %i.1174
  %45 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %46 to i32
  br label %regcache_get_val.exit

sw.bb11.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13.i = getelementptr i32, ptr %37, i32 %i.1174
  %47 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx13.i, align 4
  br label %regcache_get_val.exit

do.body.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

regcache_get_val.exit:                            ; preds = %sw.bb11.i, %sw.bb7.i, %sw.bb.i, %if.then2.i
  %retval.0.i152 = phi i32 [ %call5.i, %if.then2.i ], [ %48, %sw.bb11.i ], [ %conv10.i, %sw.bb7.i ], [ %conv.i, %sw.bb.i ]
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i152, ptr %val, align 4
  br label %if.end73

if.else53:                                        ; preds = %if.end47
  %50 = ptrtoint ptr %cache_bypass55 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cache_bypass55, align 1, !range !120
  store i8 1, ptr %cache_bypass55, align 1
  %call59 = call i32 @regmap_read(ptr noundef %map, i32 noundef %mul41, ptr noundef nonnull %val) #9
  %52 = ptrtoint ptr %cache_bypass55 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %cache_bypass55, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp63.not = icmp eq i32 %call59, 0
  br i1 %cmp63.not, label %if.else53.if.end73_crit_edge, label %cleanup70

if.else53.if.end73_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

cleanup70:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  %dev68 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %53 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.28, i32 noundef %mul41, i32 noundef %call59) #12
  br label %err_free

if.end73:                                         ; preds = %if.else53.if.end73_crit_edge, %regcache_get_val.exit
  %55 = ptrtoint ptr %reg_defaults to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_defaults, align 4
  %arrayidx = getelementptr %struct.reg_default, ptr %56, i32 %j.0178
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul41, ptr %arrayidx, align 4
  %58 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val, align 4
  %60 = load ptr, ptr %reg_defaults, align 4
  %def = getelementptr %struct.reg_default, ptr %60, i32 %j.0178, i32 1
  %61 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %59, ptr %def, align 4
  %inc78 = add i32 %j.0178, 1
  br label %for.inc79

for.inc79:                                        ; preds = %if.end73, %if.end44.for.inc79_crit_edge, %for.body39.for.inc79_crit_edge
  %j.1 = phi i32 [ %j.0178, %if.end44.for.inc79_crit_edge ], [ %inc78, %if.end73 ], [ %j.0178, %for.body39.for.inc79_crit_edge ]
  %inc80 = add nuw i32 %i.1174, 1
  %62 = ptrtoint ptr %num_reg_defaults_raw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_reg_defaults_raw, align 4
  %cmp38 = icmp ult i32 %inc80, %63
  br i1 %cmp38, label %for.inc79.for.body39_crit_edge, label %for.inc79.cleanup83_crit_edge

for.inc79.cleanup83_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

for.inc79.for.body39_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body39

err_free:                                         ; preds = %cleanup70, %if.then17.err_free_crit_edge
  %ret.1 = phi i32 [ %call59, %cleanup70 ], [ -12, %if.then17.err_free_crit_edge ]
  %64 = ptrtoint ptr %reg_defaults to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_defaults, align 4
  call void @kfree(ptr noundef %65) #9
  br label %cleanup83

cleanup83:                                        ; preds = %err_free, %for.inc79.cleanup83_crit_edge, %if.end35.cleanup83_crit_edge, %if.end7.i.cleanup83_crit_edge, %kmalloc_array.exit.thread, %if.then9, %entry.cleanup83_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_free ], [ 0, %if.then9 ], [ -22, %entry.cleanup83_crit_edge ], [ -12, %if.end7.i.cleanup83_crit_edge ], [ -12, %kmalloc_array.exit.thread ], [ 0, %if.end35.cleanup83_crit_edge ], [ 0, %for.inc79.cleanup83_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @regcache_exit(ptr noundef %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_type = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 48
  %0 = ptrtoint ptr %cache_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end31_crit_edge, label %do.body

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body:                                          ; preds = %entry
  %cache_ops = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 47
  %2 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body5, label %do.end9, !prof !123

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #9, !srcloc !125
  unreachable

do.end9:                                          ; preds = %do.body
  %reg_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  %4 = ptrtoint ptr %reg_defaults to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_defaults, align 4
  tail call void @kfree(ptr noundef %5) #9
  %cache_free = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 55
  %6 = ptrtoint ptr %cache_free to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cache_free, align 2, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %do.end9.if.end12_crit_edge, label %if.then11

do.end9.if.end12_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %reg_defaults_raw = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 57
  %8 = ptrtoint ptr %reg_defaults_raw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_defaults_raw, align 4
  tail call void @kfree(ptr noundef %9) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end9.if.end12_crit_edge
  %10 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache_ops, align 4
  %exit = getelementptr inbounds %struct.regcache_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exit, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end12.if.end31_crit_edge, label %do.body16

if.end12.if.end31_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body16:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regcache_exit.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regcache_exit, %if.then24)) #9
          to label %do.end27 [label %if.then24], !srcloc !121

if.then24:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cache_ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regcache_exit.__UNIQUE_ID_ddebug255, ptr noundef %15, ptr noundef nonnull @.str.15, ptr noundef %19) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body16
  %20 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cache_ops, align 4
  %exit29 = getelementptr inbounds %struct.regcache_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %exit29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %exit29, align 4
  %call30 = tail call i32 %23(ptr noundef %map) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %if.end12.if.end31_crit_edge, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regcache_read(ptr noundef %map, i32 noundef %reg, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_type = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 48
  %0 = ptrtoint ptr %cache_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %cache_ops = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 47
  %2 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body5, label %do.end11, !prof !123

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #9, !srcloc !126
  unreachable

do.end11:                                         ; preds = %do.body
  %call = tail call zeroext i1 @regmap_volatile(ptr noundef %map, i32 noundef %reg) #9
  br i1 %call, label %do.end11.cleanup_crit_edge, label %if.then12

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %do.end11
  %4 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache_ops, align 4
  %read = getelementptr inbounds %struct.regcache_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read, align 4
  %call14 = tail call i32 %7(ptr noundef %map, i32 noundef %reg, ptr noundef %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  tail call fastcc void @trace_regmap_reg_read_cache(ptr noundef %map, i32 noundef %reg, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then12.cleanup_crit_edge, %do.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -38, %entry.cleanup_crit_edge ], [ 0, %if.then16 ], [ %call14, %if.then12.cleanup_crit_edge ], [ -22, %do.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_volatile(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_regmap_reg_read_cache(ptr noundef %map, i32 noundef %reg, i32 noundef %val) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_read_cache, i32 0, i32 1), ptr blockaddress(@trace_regmap_reg_read_cache, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %call42 = tail call i32 @__traceiter_regmap_reg_read_cache(ptr noundef null, ptr noundef %map, i32 noundef %reg, i32 noundef %val) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !129
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !127

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_read_cache, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_read_cache, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_regmap_reg_read_cache.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_regmap_reg_read_cache.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 65, ptr noundef nonnull @.str.31) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regcache_write(ptr noundef %map, i32 noundef %reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_type = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 48
  %0 = ptrtoint ptr %cache_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body:                                          ; preds = %entry
  %cache_ops = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 47
  %2 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body5, label %do.end9, !prof !123

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 270, 0\0A.popsection", ""() #9, !srcloc !132
  unreachable

do.end9:                                          ; preds = %do.body
  %call = tail call zeroext i1 @regmap_volatile(ptr noundef %map, i32 noundef %reg) #9
  br i1 %call, label %do.end9.return_crit_edge, label %if.then10

do.end9.return_crit_edge:                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then10:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache_ops, align 4
  %write = getelementptr inbounds %struct.regcache_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %call12 = tail call i32 %7(ptr noundef %map, i32 noundef %reg, i32 noundef %value) #9
  br label %return

return:                                           ; preds = %if.then10, %do.end9.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then10 ], [ 0, %entry.return_crit_edge ], [ 0, %do.end9.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regcache_sync(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_ops = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 47
  %0 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !123

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #9, !srcloc !133
  unreachable

do.end9:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %lock_arg = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 3
  %4 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock_arg, align 4
  tail call void %3(ptr noundef %5) #9
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %6 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cache_bypass, align 1, !range !120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regcache_sync.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regcache_sync, %if.then20)) #9
          to label %do.end25 [label %if.then20], !srcloc !121

if.then20:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache_ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regcache_sync.__UNIQUE_ID_ddebug257, ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef %13) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %do.end9
  %14 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cache_ops, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call fastcc void @trace_regcache_sync(ptr noundef %map, ptr noundef %17, ptr noundef nonnull @.str.18)
  %cache_dirty = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 59
  %18 = ptrtoint ptr %cache_dirty to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cache_dirty, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool28.not = icmp eq i8 %19, 0
  br i1 %tobool28.not, label %do.end25.out_crit_edge, label %if.end30

do.end25.out_crit_edge:                           ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end30:                                         ; preds = %do.end25
  %async = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 11
  %20 = ptrtoint ptr %async to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %async, align 4
  %21 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %cache_bypass, align 1
  %patch_regs = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 62
  %22 = ptrtoint ptr %patch_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %patch_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp111.not = icmp eq i32 %23, 0
  br i1 %cmp111.not, label %if.end30.for.end_crit_edge, label %for.body.lr.ph

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %patch = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 61
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %patch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %patch, align 4
  %arrayidx = getelementptr %struct.reg_sequence, ptr %25, i32 %i.0112
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %def = getelementptr %struct.reg_sequence, ptr %25, i32 %i.0112, i32 1
  %28 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %def, align 4
  %call34 = tail call i32 @_regmap_write(ptr noundef %map, i32 noundef %27, i32 noundef %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 0
  br i1 %cmp35.not, label %for.inc, label %do.end39

do.end39:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev40 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %30 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev40, align 4
  %32 = ptrtoint ptr %patch to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %patch, align 4
  %arrayidx42 = getelementptr %struct.reg_sequence, ptr %33, i32 %i.0112
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx42, align 4
  %def46 = getelementptr %struct.reg_sequence, ptr %33, i32 %i.0112, i32 1
  %36 = ptrtoint ptr %def46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %def46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.19, i32 noundef %35, i32 noundef %37, i32 noundef %call34) #12
  br label %out

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0112, 1
  %38 = ptrtoint ptr %patch_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %patch_regs, align 4
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end30.for.end_crit_edge
  %40 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %cache_bypass, align 1
  %41 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cache_ops, align 4
  %sync = getelementptr inbounds %struct.regcache_ops, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sync, align 4
  %tobool50.not = icmp eq ptr %44, null
  %max_register55 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 25
  %45 = ptrtoint ptr %max_register55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_register55, align 4
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 %44(ptr noundef %map, i32 noundef 0, i32 noundef %46) #9
  br label %if.end57

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call56 = tail call fastcc i32 @regcache_default_sync(ptr noundef %map, i32 noundef 0, i32 noundef %46)
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then51
  %ret.0 = phi i32 [ %call54, %if.then51 ], [ %call56, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp58 = icmp eq i32 %ret.0, 0
  br i1 %cmp58, label %if.then59, label %if.end57.out_crit_edge

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %cache_dirty to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %cache_dirty, align 4
  br label %out

out:                                              ; preds = %if.then59, %if.end57.out_crit_edge, %do.end39, %do.end25.out_crit_edge
  %ret.1 = phi i32 [ %call34, %do.end39 ], [ 0, %if.then59 ], [ %ret.0, %if.end57.out_crit_edge ], [ 0, %do.end25.out_crit_edge ]
  %async62 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 11
  %48 = ptrtoint ptr %async62 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %async62, align 4
  %49 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %7, ptr %cache_bypass, align 1
  %no_sync_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 60
  %50 = ptrtoint ptr %no_sync_defaults to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %no_sync_defaults, align 1
  %unlock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 2
  %51 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %unlock, align 4
  %53 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lock_arg, align 4
  tail call void %52(ptr noundef %54) #9
  %call67 = tail call i32 @regmap_async_complete(ptr noundef %map) #9
  tail call fastcc void @trace_regcache_sync(ptr noundef %map, ptr noundef %17, ptr noundef nonnull @.str.20)
  ret i32 %ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_regcache_sync(ptr noundef %map, ptr noundef %type, ptr noundef %status) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_sync, i32 0, i32 1), ptr blockaddress(@trace_regcache_sync, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !134
  %call42 = tail call i32 @__traceiter_regcache_sync(ptr noundef null, ptr noundef %map, ptr noundef %type, ptr noundef %status) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !135
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !127

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_sync, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_sync, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_regcache_sync.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_regcache_sync.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 139, ptr noundef nonnull @.str.31) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @regcache_default_sync(ptr noundef %map, i32 noundef %min, i32 noundef %max) unnamed_addr #0 align 64 {
entry:
  %key.i.i = alloca %struct.reg_default, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %min, i32 %max)
  %cmp.not64 = icmp ugt i32 %min, %max
  br i1 %cmp.not64, label %entry.cleanup24_crit_edge, label %for.body.lr.ph

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup24

for.body.lr.ph:                                   ; preds = %entry
  %cache_type.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 48
  %cache_ops.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 47
  %no_sync_defaults.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 60
  %0 = getelementptr inbounds %struct.reg_default, ptr %key.i.i, i32 0, i32 1
  %reg_defaults.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  %num_reg_defaults.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 51
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %dev19 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %reg.065 = phi i32 [ %min, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !122
  %call = call zeroext i1 @regmap_volatile(ptr noundef %map, i32 noundef %reg.065) #9
  br i1 %call, label %for.body.cleanup.thread_crit_edge, label %lor.lhs.false

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %for.body
  %call1 = call zeroext i1 @regmap_writeable(ptr noundef %map, i32 noundef %reg.065) #9
  br i1 %call1, label %if.end, label %lor.lhs.false.cleanup.thread_crit_edge

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %cache_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.end.cleanup.thread58_crit_edge, label %do.body.i

if.end.cleanup.thread58_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread58

do.body.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %cache_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache_ops.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end11.i, !prof !123

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #9, !srcloc !126
  unreachable

do.end11.i:                                       ; preds = %do.body.i
  %call.i = call zeroext i1 @regmap_volatile(ptr noundef %map, i32 noundef %reg.065) #9
  br i1 %call.i, label %do.end11.i.cleanup.thread58_crit_edge, label %if.then12.i

do.end11.i.cleanup.thread58_crit_edge:            ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread58

if.then12.i:                                      ; preds = %do.end11.i
  %6 = ptrtoint ptr %cache_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache_ops.i, align 4
  %read.i = getelementptr inbounds %struct.regcache_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %call14.i = call i32 %9(ptr noundef %map, i32 noundef %reg.065, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end4, label %if.then12.i.cleanup.thread58_crit_edge

if.then12.i.cleanup.thread58_crit_edge:           ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread58

if.end4:                                          ; preds = %if.then12.i
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call fastcc void @trace_regmap_reg_read_cache(ptr noundef %map, i32 noundef %reg.065, i32 noundef %11) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = ptrtoint ptr %no_sync_defaults.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %no_sync_defaults.i, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i47 = icmp eq i8 %15, 0
  br i1 %tobool.not.i47, label %if.end4.if.end7_crit_edge, label %if.end.i

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.i:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i.i) #9
  %16 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %reg.065, ptr %key.i.i, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %0, align 4
  %18 = ptrtoint ptr %reg_defaults.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_defaults.i.i, align 4
  %20 = ptrtoint ptr %num_reg_defaults.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_reg_defaults.i.i, align 4
  %call.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i, ptr noundef %19, i32 noundef %21, i32 noundef 8, ptr noundef nonnull @regcache_default_cmp) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %regcache_lookup_reg.exit.thread.i, label %regcache_lookup_reg.exit.i

regcache_lookup_reg.exit.thread.i:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i.i) #9
  br label %if.end7

regcache_lookup_reg.exit.i:                       ; preds = %if.end.i
  %22 = ptrtoint ptr %reg_defaults.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_defaults.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %sub.ptr.sub.i.i)
  %cmp.i48 = icmp sgt i32 %sub.ptr.sub.i.i, -8
  br i1 %cmp.i48, label %land.lhs.true.i, label %regcache_lookup_reg.exit.i.if.end7_crit_edge

regcache_lookup_reg.exit.i.if.end7_crit_edge:     ; preds = %regcache_lookup_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.i:                                  ; preds = %regcache_lookup_reg.exit.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 3
  %def.i = getelementptr %struct.reg_default, ptr %23, i32 %sub.ptr.div.i.i, i32 1
  %24 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %def.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %13)
  %cmp1.i = icmp eq i32 %25, %13
  br i1 %cmp1.i, label %land.lhs.true.i.cleanup.thread_crit_edge, label %land.lhs.true.i.if.end7_crit_edge

land.lhs.true.i.if.end7_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.i.cleanup.thread_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end7:                                          ; preds = %land.lhs.true.i.if.end7_crit_edge, %regcache_lookup_reg.exit.i.if.end7_crit_edge, %regcache_lookup_reg.exit.thread.i, %if.end4.if.end7_crit_edge
  %26 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %cache_bypass, align 1
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %call8 = call i32 @_regmap_write(ptr noundef %map, i32 noundef %reg.065, i32 noundef %28) #9
  %29 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %cache_bypass, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %do.body13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.33, i32 noundef %reg.065, i32 noundef %call8) #12
  br label %cleanup.thread58

do.body13:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regcache_default_sync.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regcache_default_sync, %if.then18)) #9
          to label %cleanup [label %if.then18], !srcloc !121

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev19, align 4
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regcache_default_sync.__UNIQUE_ID_ddebug256, ptr noundef %33, ptr noundef nonnull @.str.35, i32 noundef %reg.065, i32 noundef %35) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then18, %land.lhs.true.i.cleanup.thread_crit_edge, %lor.lhs.false.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  br label %for.inc

cleanup.thread58:                                 ; preds = %do.end, %if.then12.i.cleanup.thread58_crit_edge, %do.end11.i.cleanup.thread58_crit_edge, %if.end.cleanup.thread58_crit_edge
  %retval.1.ph = phi i32 [ %call8, %do.end ], [ -38, %if.end.cleanup.thread58_crit_edge ], [ %call14.i, %if.then12.i.cleanup.thread58_crit_edge ], [ -22, %do.end11.i.cleanup.thread58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  br label %cleanup24

cleanup:                                          ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %cleanup.thread
  %36 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_stride, align 4
  %add = add i32 %37, %reg.065
  %cmp.not = icmp ugt i32 %add, %max
  br i1 %cmp.not, label %for.inc.cleanup24_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup24

cleanup24:                                        ; preds = %for.inc.cleanup24_crit_edge, %cleanup.thread58, %entry.cleanup24_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread58 ], [ 0, %entry.cleanup24_crit_edge ], [ 0, %for.inc.cleanup24_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_async_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regcache_sync_region(ptr noundef %map, i32 noundef %min, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_ops = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 47
  %0 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !123

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #9, !srcloc !136
  unreachable

do.end9:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %lock_arg = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 3
  %4 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock_arg, align 4
  tail call void %3(ptr noundef %5) #9
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %6 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cache_bypass, align 1, !range !120
  %8 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regcache_sync_region.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regcache_sync_region, %if.then22)) #9
          to label %do.end25 [label %if.then22], !srcloc !121

if.then22:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regcache_sync_region.__UNIQUE_ID_ddebug258, ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef %11, i32 noundef %min, i32 noundef %max) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %do.end9
  tail call fastcc void @trace_regcache_sync(ptr noundef %map, ptr noundef %11, ptr noundef nonnull @.str.23)
  %cache_dirty = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 59
  %14 = ptrtoint ptr %cache_dirty to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cache_dirty, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool26.not = icmp eq i8 %15, 0
  br i1 %tobool26.not, label %do.end25.out_crit_edge, label %if.end28

do.end25.out_crit_edge:                           ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end28:                                         ; preds = %do.end25
  %async = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 11
  %16 = ptrtoint ptr %async to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %async, align 4
  %17 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cache_ops, align 4
  %sync = getelementptr inbounds %struct.regcache_ops, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sync, align 4
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 %20(ptr noundef %map, i32 noundef %min, i32 noundef %max) #9
  br label %out

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call fastcc i32 @regcache_default_sync(ptr noundef %map, i32 noundef %min, i32 noundef %max)
  br label %out

out:                                              ; preds = %if.else, %if.then31, %do.end25.out_crit_edge
  %ret.0 = phi i32 [ %call34, %if.then31 ], [ %call35, %if.else ], [ 0, %do.end25.out_crit_edge ]
  %21 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %7, ptr %cache_bypass, align 1
  %async40 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 11
  %22 = ptrtoint ptr %async40 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %async40, align 4
  %no_sync_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 60
  %23 = ptrtoint ptr %no_sync_defaults to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %no_sync_defaults, align 1
  %unlock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 2
  %24 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unlock, align 4
  %26 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock_arg, align 4
  tail call void %25(ptr noundef %27) #9
  %call42 = tail call i32 @regmap_async_complete(ptr noundef %map) #9
  tail call fastcc void @trace_regcache_sync(ptr noundef %map, ptr noundef %11, ptr noundef nonnull @.str.24)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regcache_drop_region(ptr noundef %map, i32 noundef %min, i32 noundef %max) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_ops = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 47
  %0 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %drop = getelementptr inbounds %struct.regcache_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %drop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drop, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %lock_arg = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 3
  %6 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_arg, align 4
  tail call void %5(ptr noundef %7) #9
  tail call fastcc void @trace_regcache_drop_region(ptr noundef %map, i32 noundef %min, i32 noundef %max)
  %8 = ptrtoint ptr %cache_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cache_ops, align 4
  %drop4 = getelementptr inbounds %struct.regcache_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %drop4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drop4, align 4
  %call = tail call i32 %11(ptr noundef %map, i32 noundef %min, i32 noundef %max) #9
  %unlock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 2
  %12 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unlock, align 4
  %14 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock_arg, align 4
  tail call void %13(ptr noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_regcache_drop_region(ptr noundef %map, i32 noundef %from, i32 noundef %to) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_drop_region, i32 0, i32 1), ptr blockaddress(@trace_regcache_drop_region, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !137
  %call42 = tail call i32 @__traceiter_regcache_drop_region(ptr noundef null, ptr noundef %map, i32 noundef %from, i32 noundef %to) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !138
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !127

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_drop_region, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_drop_region, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_regcache_drop_region.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_regcache_drop_region.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 246, ptr noundef nonnull @.str.31) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @regcache_cache_only(ptr noundef %map, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %lock_arg = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_arg, align 4
  tail call void %1(ptr noundef %3) #9
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %4 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cache_bypass, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  %spec.select = and i1 %tobool.not, %enable
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !123

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 498, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %frombool = zext i1 %enable to i8
  %cache_only = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 53
  %6 = ptrtoint ptr %cache_only to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %cache_only, align 4
  tail call fastcc void @trace_regmap_cache_only(ptr noundef %map, i1 noundef zeroext %enable)
  %unlock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 2
  %7 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unlock, align 4
  %9 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock_arg, align 4
  tail call void %8(ptr noundef %10) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_regmap_cache_only(ptr noundef %map, i1 noundef zeroext %flag) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_cache_only, i32 0, i32 1), ptr blockaddress(@trace_regmap_cache_only, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !139
  %call43 = tail call i32 @__traceiter_regmap_cache_only(ptr noundef null, ptr noundef %map, i1 noundef zeroext %flag) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !140
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !127

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_cache_only, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_cache_only, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_regmap_cache_only.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_regmap_cache_only.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 167, ptr noundef nonnull @.str.31) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @regcache_mark_dirty(ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %lock_arg = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_arg, align 4
  tail call void %1(ptr noundef %3) #9
  %cache_dirty = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 59
  %4 = ptrtoint ptr %cache_dirty to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %cache_dirty, align 4
  %no_sync_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 60
  %5 = ptrtoint ptr %no_sync_defaults to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %no_sync_defaults, align 1
  %unlock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 2
  %6 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unlock, align 4
  %8 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock_arg, align 4
  tail call void %7(ptr noundef %9) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @regcache_cache_bypass(ptr noundef %map, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %lock_arg = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_arg, align 4
  tail call void %1(ptr noundef %3) #9
  %cache_only = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 53
  %4 = ptrtoint ptr %cache_only to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cache_only, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp ne i8 %5, 0
  %spec.select = and i1 %tobool.not, %enable
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !123

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 541, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %frombool = zext i1 %enable to i8
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %6 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %cache_bypass, align 1
  tail call fastcc void @trace_regmap_cache_bypass(ptr noundef %map, i1 noundef zeroext %enable)
  %unlock = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 2
  %7 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unlock, align 4
  %9 = ptrtoint ptr %lock_arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock_arg, align 4
  tail call void %8(ptr noundef %10) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_regmap_cache_bypass(ptr noundef %map, i1 noundef zeroext %flag) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_cache_bypass, i32 0, i32 1), ptr blockaddress(@trace_regmap_cache_bypass, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !121

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !141
  %call43 = tail call i32 @__traceiter_regmap_cache_bypass(ptr noundef null, ptr noundef %map, i1 noundef zeroext %flag) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !142
  %13 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !127

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_cache_bypass, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_cache_bypass, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_regmap_cache_bypass.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_regmap_cache_bypass.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 175, ptr noundef nonnull @.str.31) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @regcache_set_val(ptr nocapture noundef readonly %map, ptr noundef %base, i32 noundef %idx, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %base, null
  br i1 %tobool.not.i, label %entry.regcache_get_val.exit_crit_edge, label %if.end.i

entry.regcache_get_val.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %regcache_get_val.exit

if.end.i:                                         ; preds = %entry
  %parse_val.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 7, i32 7
  %0 = ptrtoint ptr %parse_val.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parse_val.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %cache_word_size.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 50
  %2 = ptrtoint ptr %cache_word_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_word_size.i, align 4
  br i1 %tobool1.not.i, label %if.end6.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = mul i32 %3, %idx
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 %mul.i.i
  %call5.i = tail call i32 %1(ptr noundef %add.ptr.i.i) #9
  br label %regcache_get_val.exit

if.end6.i:                                        ; preds = %if.end.i
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %3, label %do.body.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb7.i
    i32 4, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %base, i32 %idx
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %6 to i32
  br label %regcache_get_val.exit

sw.bb7.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i = getelementptr i16, ptr %base, i32 %idx
  %7 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %8 to i32
  br label %regcache_get_val.exit

sw.bb11.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13.i = getelementptr i32, ptr %base, i32 %idx
  %9 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx13.i, align 4
  br label %regcache_get_val.exit

do.body.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

regcache_get_val.exit:                            ; preds = %sw.bb11.i, %sw.bb7.i, %sw.bb.i, %if.then2.i, %entry.regcache_get_val.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.then2.i ], [ %10, %sw.bb11.i ], [ %conv10.i, %sw.bb7.i ], [ %conv.i, %sw.bb.i ], [ -22, %entry.regcache_get_val.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %val)
  %cmp = icmp eq i32 %retval.0.i, %val
  br i1 %cmp, label %regcache_get_val.exit.return_crit_edge, label %if.end

regcache_get_val.exit.return_crit_edge:           ; preds = %regcache_get_val.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %regcache_get_val.exit
  %format_val = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 7, i32 6
  %11 = ptrtoint ptr %format_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %format_val, align 4
  %tobool.not = icmp eq ptr %12, null
  %cache_word_size5 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 50
  %13 = ptrtoint ptr %cache_word_size5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cache_word_size5, align 4
  br i1 %tobool.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %14, %idx
  %add.ptr = getelementptr i8, ptr %base, i32 %mul
  tail call void %12(ptr noundef %add.ptr, i32 noundef %val, i32 noundef 0) #9
  br label %return

if.end4:                                          ; preds = %if.end
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %14, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 4, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %val to i8
  %arrayidx = getelementptr i8, ptr %base, i32 %idx
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %arrayidx, align 1
  br label %return

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv8 = trunc i32 %val to i16
  %arrayidx9 = getelementptr i16, ptr %base, i32 %idx
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv8, ptr %arrayidx9, align 2
  br label %return

sw.bb10:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12 = getelementptr i32, ptr %base, i32 %idx
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %val, ptr %arrayidx12, align 4
  br label %return

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 589, 0\0A.popsection", ""() #9, !srcloc !143
  unreachable

return:                                           ; preds = %sw.bb10, %sw.bb6, %sw.bb, %if.then1, %regcache_get_val.exit.return_crit_edge
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regcache_get_val(ptr nocapture noundef readonly %map, ptr noundef %base, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %base, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %parse_val = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 7, i32 7
  %0 = ptrtoint ptr %parse_val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parse_val, align 4
  %tobool1.not = icmp eq ptr %1, null
  %cache_word_size = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 50
  %2 = ptrtoint ptr %cache_word_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_word_size, align 4
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %3, %idx
  %add.ptr.i = getelementptr i8, ptr %base, i32 %mul.i
  %call5 = tail call i32 %1(ptr noundef %add.ptr.i) #9
  br label %return

if.end6:                                          ; preds = %if.end
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %3, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 4, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr i8, ptr %base, i32 %idx
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  br label %return

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9 = getelementptr i16, ptr %base, i32 %idx
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %8 to i32
  br label %return

sw.bb11:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13 = getelementptr i32, ptr %base, i32 %idx
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx13, align 4
  br label %return

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

return:                                           ; preds = %sw.bb11, %sw.bb7, %sw.bb, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then2 ], [ %10, %sw.bb11 ], [ %conv10, %sw.bb7 ], [ %conv, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regcache_lookup_reg(ptr nocapture noundef readonly %map, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.reg_default, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #9
  %0 = getelementptr inbounds %struct.reg_default, ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %reg, ptr %key, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  %reg_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  %3 = ptrtoint ptr %reg_defaults to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_defaults, align 4
  %num_reg_defaults = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 51
  %5 = ptrtoint ptr %num_reg_defaults to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_reg_defaults, align 4
  %call = call ptr @bsearch(ptr noundef nonnull %key, ptr noundef %4, i32 noundef %6, i32 noundef 8, ptr noundef nonnull @regcache_default_cmp) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %reg_defaults to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_defaults, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %if.then ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @regcache_default_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regcache_sync_block(ptr noundef %map, ptr noundef %block, ptr noundef %cache_present, i32 noundef %block_base, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %key.i.i.i = alloca %struct.reg_default, align 4
  %data.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @regmap_can_raw_write(ptr noundef %map) #9
  br i1 %call, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %use_single_write = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 64
  %0 = ptrtoint ptr %use_single_write to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_single_write, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #9
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp62.i = icmp ult i32 %start, %end
  br i1 %cmp62.i, label %for.body.lr.ph.i, label %if.then.for.end.i_crit_edge

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %reg_stride.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %tobool.not.i.i = icmp eq ptr %cache_present, null
  %tobool.not.i49.i = icmp eq ptr %block, null
  %parse_val.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 7, i32 7
  %cache_word_size.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 50
  %no_sync_defaults.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 60
  %3 = getelementptr inbounds %struct.reg_default, ptr %key.i.i.i, i32 0, i32 1
  %reg_defaults.i.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  %num_reg_defaults.i.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 51
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %base.066.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %base.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.063.i = phi i32 [ %start, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %reg_stride.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_stride.i, align 4
  %mul.i = mul i32 %5, %i.063.i
  %add.i = add i32 %mul.i, %block_base
  br i1 %tobool.not.i.i, label %for.body.i.lor.lhs.false.i_crit_edge, label %regcache_reg_present.exit.i

for.body.i.lor.lhs.false.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

regcache_reg_present.exit.i:                      ; preds = %for.body.i
  %div3.i.i.i = lshr i32 %i.063.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %cache_present, i32 %div3.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %i.063.i, 31
  %8 = shl nuw i32 1, %and.i.i.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.i.not.i, label %regcache_reg_present.exit.i.if.then.i_crit_edge, label %regcache_reg_present.exit.i.lor.lhs.false.i_crit_edge

regcache_reg_present.exit.i.lor.lhs.false.i_crit_edge: ; preds = %regcache_reg_present.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

regcache_reg_present.exit.i.if.then.i_crit_edge:  ; preds = %regcache_reg_present.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %regcache_reg_present.exit.i.lor.lhs.false.i_crit_edge, %for.body.i.lor.lhs.false.i_crit_edge
  %call1.i = call zeroext i1 @regmap_writeable(ptr noundef %map, i32 noundef %add.i) #9
  br i1 %call1.i, label %if.end5.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %regcache_reg_present.exit.i.if.then.i_crit_edge
  %call2.i = call fastcc i32 @regcache_sync_block_raw_flush(ptr noundef %map, ptr noundef nonnull %data.i, i32 noundef %base.066.i, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.regcache_sync_block_raw.exit_crit_edge

if.then.i.regcache_sync_block_raw.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %regcache_sync_block_raw.exit

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end5.i:                                        ; preds = %lor.lhs.false.i
  br i1 %tobool.not.i49.i, label %if.end5.i.regcache_get_val.exit.i_crit_edge, label %if.end.i50.i

if.end5.i.regcache_get_val.exit.i_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %regcache_get_val.exit.i

if.end.i50.i:                                     ; preds = %if.end5.i
  %10 = ptrtoint ptr %parse_val.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parse_val.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %11, null
  %12 = ptrtoint ptr %cache_word_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cache_word_size.i.i, align 4
  br i1 %tobool1.not.i.i, label %if.end6.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i50.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i.i = mul i32 %13, %i.063.i
  %add.ptr.i.i.i = getelementptr i8, ptr %block, i32 %mul.i.i.i
  %call5.i.i = call i32 %11(ptr noundef %add.ptr.i.i.i) #9
  br label %regcache_get_val.exit.i

if.end6.i.i:                                      ; preds = %if.end.i50.i
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %13, label %do.body.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb7.i.i
    i32 4, label %sw.bb11.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %block, i32 %i.063.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %16 to i32
  br label %regcache_get_val.exit.i

sw.bb7.i.i:                                       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i.i = getelementptr i16, ptr %block, i32 %i.063.i
  %17 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx9.i.i, align 2
  %conv10.i.i = zext i16 %18 to i32
  br label %regcache_get_val.exit.i

sw.bb11.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13.i.i = getelementptr i32, ptr %block, i32 %i.063.i
  %19 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx13.i.i, align 4
  br label %regcache_get_val.exit.i

do.body.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

regcache_get_val.exit.i:                          ; preds = %sw.bb11.i.i, %sw.bb7.i.i, %sw.bb.i.i, %if.then2.i.i, %if.end5.i.regcache_get_val.exit.i_crit_edge
  %retval.0.i51.i = phi i32 [ %call5.i.i, %if.then2.i.i ], [ %20, %sw.bb11.i.i ], [ %conv10.i.i, %sw.bb7.i.i ], [ %conv.i.i, %sw.bb.i.i ], [ -22, %if.end5.i.regcache_get_val.exit.i_crit_edge ]
  %21 = ptrtoint ptr %no_sync_defaults.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %no_sync_defaults.i.i, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i52.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i52.i, label %regcache_get_val.exit.i.if.end13.i_crit_edge, label %if.end.i53.i

regcache_get_val.exit.i.if.end13.i_crit_edge:     ; preds = %regcache_get_val.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.end.i53.i:                                     ; preds = %regcache_get_val.exit.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i.i.i) #9
  %23 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %key.i.i.i, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %3, align 4
  %25 = ptrtoint ptr %reg_defaults.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_defaults.i.i.i, align 4
  %27 = ptrtoint ptr %num_reg_defaults.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_reg_defaults.i.i.i, align 4
  %call.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i, ptr noundef %26, i32 noundef %28, i32 noundef 8, ptr noundef nonnull @regcache_default_cmp) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %regcache_lookup_reg.exit.thread.i.i, label %regcache_lookup_reg.exit.i.i

regcache_lookup_reg.exit.thread.i.i:              ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i.i.i) #9
  br label %if.end13.i

regcache_lookup_reg.exit.i.i:                     ; preds = %if.end.i53.i
  %29 = ptrtoint ptr %reg_defaults.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_defaults.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.ptr.sub.i.i.i, -8
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %regcache_lookup_reg.exit.i.i.if.end13.i_crit_edge

regcache_lookup_reg.exit.i.i.if.end13.i_crit_edge: ; preds = %regcache_lookup_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

land.lhs.true.i.i:                                ; preds = %regcache_lookup_reg.exit.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 3
  %def.i.i = getelementptr %struct.reg_default, ptr %30, i32 %sub.ptr.div.i.i.i, i32 1
  %31 = ptrtoint ptr %def.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %def.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %retval.0.i51.i)
  %cmp1.i.i = icmp eq i32 %32, %retval.0.i51.i
  br i1 %cmp1.i.i, label %if.then8.i, label %land.lhs.true.i.i.if.end13.i_crit_edge

land.lhs.true.i.i.if.end13.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then8.i:                                       ; preds = %land.lhs.true.i.i
  %call9.i = call fastcc i32 @regcache_sync_block_raw_flush(ptr noundef %map, ptr noundef nonnull %data.i, i32 noundef %base.066.i, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %if.then8.i.for.inc.i_crit_edge, label %if.then8.i.regcache_sync_block_raw.exit_crit_edge

if.then8.i.regcache_sync_block_raw.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %regcache_sync_block_raw.exit

if.then8.i.for.inc.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end13.i:                                       ; preds = %land.lhs.true.i.i.if.end13.i_crit_edge, %regcache_lookup_reg.exit.i.i.if.end13.i_crit_edge, %regcache_lookup_reg.exit.thread.i.i, %regcache_get_val.exit.i.if.end13.i_crit_edge
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.then14.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %cache_word_size.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cache_word_size.i.i, align 4
  %mul.i.i = mul i32 %36, %i.063.i
  %add.ptr.i.i = getelementptr i8, ptr %block, i32 %mul.i.i
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.end13.i.for.inc.i_crit_edge, %if.then8.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge
  %base.1.i = phi i32 [ %base.066.i, %if.end13.i.for.inc.i_crit_edge ], [ %add.i, %if.then14.i ], [ %base.066.i, %if.then8.i.for.inc.i_crit_edge ], [ %base.066.i, %if.then.i.for.inc.i_crit_edge ]
  %inc.i = add i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %end
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %regtmp.0.lcssa.i = phi i32 [ 0, %if.then.for.end.i_crit_edge ], [ %add.i, %for.inc.i.for.end.i_crit_edge ]
  %base.0.lcssa.i = phi i32 [ 0, %if.then.for.end.i_crit_edge ], [ %base.1.i, %for.inc.i.for.end.i_crit_edge ]
  %reg_stride17.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %38 = ptrtoint ptr %reg_stride17.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_stride17.i, align 4
  %add18.i = add i32 %39, %regtmp.0.lcssa.i
  %call19.i = call fastcc i32 @regcache_sync_block_raw_flush(ptr noundef %map, ptr noundef nonnull %data.i, i32 noundef %base.0.lcssa.i, i32 noundef %add18.i) #9
  br label %regcache_sync_block_raw.exit

regcache_sync_block_raw.exit:                     ; preds = %for.end.i, %if.then8.i.regcache_sync_block_raw.exit_crit_edge, %if.then.i.regcache_sync_block_raw.exit_crit_edge
  %retval.0.i = phi i32 [ %call19.i, %for.end.i ], [ %call2.i, %if.then.i.regcache_sync_block_raw.exit_crit_edge ], [ %call9.i, %if.then8.i.regcache_sync_block_raw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #9
  br label %return

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call2 = tail call fastcc i32 @regcache_sync_block_single(ptr noundef %map, ptr noundef %block, ptr noundef %cache_present, i32 noundef %block_base, i32 noundef %start, i32 noundef %end)
  br label %return

return:                                           ; preds = %if.else, %regcache_sync_block_raw.exit
  %retval.0 = phi i32 [ %call2, %if.else ], [ %retval.0.i, %regcache_sync_block_raw.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_can_raw_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @regcache_sync_block_single(ptr noundef %map, ptr noundef %block, ptr noundef %cache_present, i32 noundef %block_base, i32 noundef %start, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  %key.i.i = alloca %struct.reg_default, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp54 = icmp ult i32 %start, %end
  br i1 %cmp54, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %tobool.not.i = icmp eq ptr %cache_present, null
  %tobool.not.i44 = icmp eq ptr %block, null
  %parse_val.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 7, i32 7
  %cache_word_size.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 50
  %no_sync_defaults.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 60
  %0 = getelementptr inbounds %struct.reg_default, ptr %key.i.i, i32 0, i32 1
  %reg_defaults.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 56
  %num_reg_defaults.i.i = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 51
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %dev16 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ %start, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg_stride, align 4
  %mul = mul i32 %2, %i.055
  %add = add i32 %mul, %block_base
  br i1 %tobool.not.i, label %for.body.lor.lhs.false_crit_edge, label %regcache_reg_present.exit

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

regcache_reg_present.exit:                        ; preds = %for.body
  %div3.i.i = lshr i32 %i.055, 5
  %arrayidx.i.i = getelementptr i32, ptr %cache_present, i32 %div3.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.055, 31
  %5 = shl nuw i32 1, %and.i.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %regcache_reg_present.exit.for.inc_crit_edge, label %regcache_reg_present.exit.lor.lhs.false_crit_edge

regcache_reg_present.exit.lor.lhs.false_crit_edge: ; preds = %regcache_reg_present.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

regcache_reg_present.exit.for.inc_crit_edge:      ; preds = %regcache_reg_present.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %regcache_reg_present.exit.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %call1 = call zeroext i1 @regmap_writeable(ptr noundef %map, i32 noundef %add) #9
  br i1 %call1, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  br i1 %tobool.not.i44, label %if.end.regcache_get_val.exit_crit_edge, label %if.end.i45

if.end.regcache_get_val.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %regcache_get_val.exit

if.end.i45:                                       ; preds = %if.end
  %7 = ptrtoint ptr %parse_val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parse_val.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  %9 = ptrtoint ptr %cache_word_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cache_word_size.i, align 4
  br i1 %tobool1.not.i, label %if.end6.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = mul i32 %10, %i.055
  %add.ptr.i.i = getelementptr i8, ptr %block, i32 %mul.i.i
  %call5.i = call i32 %8(ptr noundef %add.ptr.i.i) #9
  br label %regcache_get_val.exit

if.end6.i:                                        ; preds = %if.end.i45
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %10, label %do.body.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb7.i
    i32 4, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %block, i32 %i.055
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  br label %regcache_get_val.exit

sw.bb7.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i = getelementptr i16, ptr %block, i32 %i.055
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx9.i, align 2
  %conv10.i = zext i16 %15 to i32
  br label %regcache_get_val.exit

sw.bb11.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx13.i = getelementptr i32, ptr %block, i32 %i.055
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13.i, align 4
  br label %regcache_get_val.exit

do.body.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 629, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

regcache_get_val.exit:                            ; preds = %sw.bb11.i, %sw.bb7.i, %sw.bb.i, %if.then2.i, %if.end.regcache_get_val.exit_crit_edge
  %retval.0.i46 = phi i32 [ %call5.i, %if.then2.i ], [ %17, %sw.bb11.i ], [ %conv10.i, %sw.bb7.i ], [ %conv.i, %sw.bb.i ], [ -22, %if.end.regcache_get_val.exit_crit_edge ]
  %18 = ptrtoint ptr %no_sync_defaults.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %no_sync_defaults.i, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i47 = icmp eq i8 %19, 0
  br i1 %tobool.not.i47, label %regcache_get_val.exit.if.end5_crit_edge, label %if.end.i48

regcache_get_val.exit.if.end5_crit_edge:          ; preds = %regcache_get_val.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.i48:                                       ; preds = %regcache_get_val.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key.i.i) #9
  %20 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %key.i.i, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %0, align 4
  %22 = ptrtoint ptr %reg_defaults.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_defaults.i.i, align 4
  %24 = ptrtoint ptr %num_reg_defaults.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_reg_defaults.i.i, align 4
  %call.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i, ptr noundef %23, i32 noundef %25, i32 noundef 8, ptr noundef nonnull @regcache_default_cmp) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %regcache_lookup_reg.exit.thread.i, label %regcache_lookup_reg.exit.i

regcache_lookup_reg.exit.thread.i:                ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i.i) #9
  br label %if.end5

regcache_lookup_reg.exit.i:                       ; preds = %if.end.i48
  %26 = ptrtoint ptr %reg_defaults.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_defaults.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp sgt i32 %sub.ptr.sub.i.i, -8
  br i1 %cmp.i, label %land.lhs.true.i, label %regcache_lookup_reg.exit.i.if.end5_crit_edge

regcache_lookup_reg.exit.i.if.end5_crit_edge:     ; preds = %regcache_lookup_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.i:                                  ; preds = %regcache_lookup_reg.exit.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 3
  %def.i = getelementptr %struct.reg_default, ptr %27, i32 %sub.ptr.div.i.i, i32 1
  %28 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %def.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %retval.0.i46)
  %cmp1.i = icmp eq i32 %29, %retval.0.i46
  br i1 %cmp1.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true.i.if.end5_crit_edge

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end5:                                          ; preds = %land.lhs.true.i.if.end5_crit_edge, %regcache_lookup_reg.exit.i.if.end5_crit_edge, %regcache_lookup_reg.exit.thread.i, %regcache_get_val.exit.if.end5_crit_edge
  %30 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %cache_bypass, align 1
  %call6 = call i32 @_regmap_write(ptr noundef %map, i32 noundef %add, i32 noundef %retval.0.i46) #9
  %31 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %cache_bypass, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp8.not = icmp eq i32 %call6, 0
  br i1 %cmp8.not, label %do.body11, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.33, i32 noundef %add, i32 noundef %call6) #12
  br label %cleanup

do.body11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regcache_sync_block_single.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regcache_sync_block_single, %if.then15)) #9
          to label %for.inc [label %if.then15], !srcloc !121

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev16, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regcache_sync_block_single.__UNIQUE_ID_ddebug259, ptr noundef %35, ptr noundef nonnull @.str.35, i32 noundef %add, i32 noundef %retval.0.i46) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %do.body11, %land.lhs.true.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %regcache_reg_present.exit.for.inc_crit_edge
  %inc = add i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %end
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_readable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_regmap_reg_read_cache(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_regcache_sync(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regmap_writeable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_regcache_drop_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_regmap_cache_only(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_regmap_cache_bypass(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @regcache_sync_block_raw_flush(ptr noundef %map, ptr nocapture noundef %data, i32 noundef %base, i32 noundef %cur) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %val_bytes1 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %val_bytes1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val_bytes1, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %cur, %base
  %reg_stride = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 45
  %4 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_stride, align 4
  %div = udiv i32 %sub, %5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regcache_sync_block_raw_flush.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regcache_sync_block_raw_flush, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !121

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %mul = mul i32 %div, %1
  %8 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_stride, align 4
  %sub6 = sub i32 %cur, %9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regcache_sync_block_raw_flush.__UNIQUE_ID_ddebug260, ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef %mul, i32 noundef %div, i32 noundef %base, i32 noundef %sub6) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %cache_bypass = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 54
  %10 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %cache_bypass, align 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %mul8 = mul i32 %div, %1
  %call9 = tail call i32 @_regmap_raw_write(ptr noundef %map, i32 noundef %base, ptr noundef %12, i32 noundef %mul8, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end.if.end18_crit_edge, label %do.end14

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.regmap, ptr %map, i32 0, i32 5
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  %15 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_stride, align 4
  %sub17 = sub i32 %cur, %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.38, i32 noundef %base, i32 noundef %sub17, i32 noundef %call9) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %do.end.if.end18_crit_edge
  %17 = ptrtoint ptr %cache_bypass to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %cache_bypass, align 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end18 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regcache.c", i32 123, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @regcache_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @regcache_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/base/regmap/regcache.c", i32 131, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @regcache_init._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @regcache_init._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/base/regmap/regcache.c", i32 145, i32 3}
!15 = !{ptr @regcache_init._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @regcache_init._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/base/regmap/regcache.c", i32 190, i32 3}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @regcache_init.__UNIQUE_ID_ddebug254, !18, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/base/regmap/regcache.c", i32 218, i32 3}
!23 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @regcache_exit.__UNIQUE_ID_ddebug255, !22, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/base/regmap/regcache.c", i32 351, i32 2}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @regcache_sync.__UNIQUE_ID_ddebug257, !26, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/base/regmap/regcache.c", i32 354, i32 33}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/base/regmap/regcache.c", i32 366, i32 4}
!33 = !{ptr @regcache_sync._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @regcache_sync._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/base/regmap/regcache.c", i32 390, i32 33}
!37 = !{ptr @__ksymtab_regcache_sync, !38, !"__ksymtab_regcache_sync", i1 false, i1 false}
!38 = !{!"../drivers/base/regmap/regcache.c", i32 394, i32 1}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/base/regmap/regcache.c", i32 423, i32 2}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @regcache_sync_region.__UNIQUE_ID_ddebug258, !40, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/base/regmap/regcache.c", i32 425, i32 33}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/base/regmap/regcache.c", i32 446, i32 33}
!47 = !{ptr @__ksymtab_regcache_sync_region, !48, !"__ksymtab_regcache_sync_region", i1 false, i1 false}
!48 = !{!"../drivers/base/regmap/regcache.c", i32 450, i32 1}
!49 = !{ptr @__ksymtab_regcache_drop_region, !50, !"__ksymtab_regcache_drop_region", i1 false, i1 false}
!50 = !{!"../drivers/base/regmap/regcache.c", i32 481, i32 1}
!51 = !{ptr @__ksymtab_regcache_cache_only, !52, !"__ksymtab_regcache_cache_only", i1 false, i1 false}
!52 = !{!"../drivers/base/regmap/regcache.c", i32 503, i32 1}
!53 = !{ptr @__ksymtab_regcache_mark_dirty, !54, !"__ksymtab_regcache_mark_dirty", i1 false, i1 false}
!54 = !{!"../drivers/base/regmap/regcache.c", i32 525, i32 1}
!55 = !{ptr @__ksymtab_regcache_cache_bypass, !56, !"__ksymtab_regcache_cache_bypass", i1 false, i1 false}
!56 = !{!"../drivers/base/regmap/regcache.c", i32 546, i32 1}
!57 = !{ptr @cache_types, !58, !"cache_types", i1 false, i1 false}
!58 = !{!"../drivers/base/regmap/regcache.c", i32 18, i32 35}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/base/regmap/regcache.c", i32 57, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @regcache_hw_init._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @regcache_hw_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/base/regmap/regcache.c", i32 96, i32 5}
!66 = !{ptr @regcache_hw_init._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @regcache_hw_init._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/base/regmap/trace.h", i32 58, i32 1}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!72 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/base/regmap/trace.h", i32 118, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/base/regmap/regcache.c", i32 318, i32 4}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @regcache_default_sync._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @regcache_default_sync._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/base/regmap/regcache.c", i32 322, i32 3}
!86 = !{ptr @regcache_default_sync.__UNIQUE_ID_ddebug256, !85, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../drivers/base/regmap/trace.h", i32 225, i32 1}
!89 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../drivers/base/regmap/trace.h", i32 161, i32 1}
!92 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/base/regmap/trace.h", i32 169, i32 1}
!95 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/base/regmap/regcache.c", i32 715, i32 2}
!98 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @regcache_sync_block_raw_flush.__UNIQUE_ID_ddebug260, !97, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/base/regmap/regcache.c", i32 722, i32 3}
!102 = !{ptr @regcache_sync_block_raw_flush._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @regcache_sync_block_raw_flush._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/base/regmap/regcache.c", i32 693, i32 4}
!106 = !{ptr @regcache_sync_block_single._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @regcache_sync_block_single._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @regcache_sync_block_single.__UNIQUE_ID_ddebug259, !109, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!109 = !{!"../drivers/base/regmap/regcache.c", i32 697, i32 3}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i8 0, i8 2}
!121 = !{i64 2148294074, i64 2148294079, i64 2148294092, i64 2148294136, i64 2148294170, i64 2148294191}
!122 = !{!"auto-init"}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i64 2153966903, i64 2153967398, i64 2153966940, i64 2153966996, i64 2153967030, i64 2153967054, i64 2153967095, i64 2153967116, i64 2153967144, i64 2153967178}
!125 = !{i64 2153930340, i64 2153930835, i64 2153930377, i64 2153930433, i64 2153930467, i64 2153930491, i64 2153930532, i64 2153930553, i64 2153930581, i64 2153930615}
!126 = !{i64 2153934273, i64 2153934768, i64 2153934310, i64 2153934366, i64 2153934400, i64 2153934424, i64 2153934465, i64 2153934486, i64 2153934514, i64 2153934548}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2153682411}
!129 = !{i64 2153682642}
!130 = !{i64 2149316754}
!131 = !{i64 2149317790}
!132 = !{i64 2153935895, i64 2153936390, i64 2153935932, i64 2153935988, i64 2153936022, i64 2153936046, i64 2153936087, i64 2153936108, i64 2153936136, i64 2153936170}
!133 = !{i64 2153941569, i64 2153942064, i64 2153941606, i64 2153941662, i64 2153941696, i64 2153941720, i64 2153941761, i64 2153941782, i64 2153941810, i64 2153941844}
!134 = !{i64 2153775986}
!135 = !{i64 2153776209}
!136 = !{i64 2153948590, i64 2153949085, i64 2153948627, i64 2153948683, i64 2153948717, i64 2153948741, i64 2153948782, i64 2153948803, i64 2153948831, i64 2153948865}
!137 = !{i64 2153902344}
!138 = !{i64 2153902573}
!139 = !{i64 2153792324}
!140 = !{i64 2153792539}
!141 = !{i64 2153808830}
!142 = !{i64 2153809049}
!143 = !{i64 2153965389, i64 2153965884, i64 2153965426, i64 2153965482, i64 2153965516, i64 2153965540, i64 2153965581, i64 2153965602, i64 2153965630, i64 2153965664}
