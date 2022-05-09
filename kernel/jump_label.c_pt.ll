; ModuleID = '/llk/IR_all_yes/kernel/jump_label.c_pt.bc'
source_filename = "../kernel/jump_label.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+static_key_count\22, \22a\22\09"
module asm "\09.weak\09__crc_static_key_count\09\09\09\09"
module asm "\09.long\09__crc_static_key_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_static_key_count:\09\09\09\09\09"
module asm "\09.asciz \09\22static_key_count\22\09\09\09\09\09"
module asm "__kstrtabns_static_key_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+static_key_slow_inc\22, \22a\22\09"
module asm "\09.weak\09__crc_static_key_slow_inc\09\09\09\09"
module asm "\09.long\09__crc_static_key_slow_inc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_static_key_slow_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22static_key_slow_inc\22\09\09\09\09\09"
module asm "__kstrtabns_static_key_slow_inc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+static_key_enable_cpuslocked\22, \22a\22\09"
module asm "\09.weak\09__crc_static_key_enable_cpuslocked\09\09\09\09"
module asm "\09.long\09__crc_static_key_enable_cpuslocked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_static_key_enable_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22static_key_enable_cpuslocked\22\09\09\09\09\09"
module asm "__kstrtabns_static_key_enable_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+static_key_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_static_key_enable\09\09\09\09"
module asm "\09.long\09__crc_static_key_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_static_key_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22static_key_enable\22\09\09\09\09\09"
module asm "__kstrtabns_static_key_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+static_key_disable_cpuslocked\22, \22a\22\09"
module asm "\09.weak\09__crc_static_key_disable_cpuslocked\09\09\09\09"
module asm "\09.long\09__crc_static_key_disable_cpuslocked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_static_key_disable_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22static_key_disable_cpuslocked\22\09\09\09\09\09"
module asm "__kstrtabns_static_key_disable_cpuslocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+static_key_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_static_key_disable\09\09\09\09"
module asm "\09.long\09__crc_static_key_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_static_key_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22static_key_disable\22\09\09\09\09\09"
module asm "__kstrtabns_static_key_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+jump_label_update_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_jump_label_update_timeout\09\09\09\09"
module asm "\09.long\09__crc_jump_label_update_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jump_label_update_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22jump_label_update_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_jump_label_update_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+static_key_slow_dec\22, \22a\22\09"
module asm "\09.weak\09__crc_static_key_slow_dec\09\09\09\09"
module asm "\09.long\09__crc_static_key_slow_dec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_static_key_slow_dec:\09\09\09\09\09"
module asm "\09.asciz \09\22static_key_slow_dec\22\09\09\09\09\09"
module asm "__kstrtabns_static_key_slow_dec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__static_key_slow_dec_deferred\22, \22a\22\09"
module asm "\09.weak\09__crc___static_key_slow_dec_deferred\09\09\09\09"
module asm "\09.long\09__crc___static_key_slow_dec_deferred\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___static_key_slow_dec_deferred:\09\09\09\09\09"
module asm "\09.asciz \09\22__static_key_slow_dec_deferred\22\09\09\09\09\09"
module asm "__kstrtabns___static_key_slow_dec_deferred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__static_key_deferred_flush\22, \22a\22\09"
module asm "\09.weak\09__crc___static_key_deferred_flush\09\09\09\09"
module asm "\09.long\09__crc___static_key_deferred_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___static_key_deferred_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22__static_key_deferred_flush\22\09\09\09\09\09"
module asm "__kstrtabns___static_key_deferred_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+jump_label_rate_limit\22, \22a\22\09"
module asm "\09.weak\09__crc_jump_label_rate_limit\09\09\09\09"
module asm "\09.long\09__crc_jump_label_rate_limit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jump_label_rate_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22jump_label_rate_limit\22\09\09\09\09\09"
module asm "__kstrtabns_jump_label_rate_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.jump_entry = type { i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.static_key_mod = type { ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.static_key_deferred = type { %struct.static_key, i32, %struct.delayed_work }

@jump_label_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @jump_label_mutex, i64 52), ptr getelementptr (i8, ptr @jump_label_mutex, i64 52) }, ptr @jump_label_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_static_key_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_static_key_count = external dso_local constant [0 x i8], align 1
@__ksymtab_static_key_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @static_key_count to i32), ptr @__kstrtab_static_key_count, ptr @__kstrtabns_static_key_count }, section "___ksymtab_gpl+static_key_count", align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/jump_label.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", [35 x i8] zeroinitializer }, align 32
@__func__.static_key_slow_inc_cpuslocked = private unnamed_addr constant [31 x i8] c"static_key_slow_inc_cpuslocked\00", align 1
@__kstrtab_static_key_slow_inc = external dso_local constant [0 x i8], align 1
@__kstrtabns_static_key_slow_inc = external dso_local constant [0 x i8], align 1
@__ksymtab_static_key_slow_inc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @static_key_slow_inc to i32), ptr @__kstrtab_static_key_slow_inc, ptr @__kstrtabns_static_key_slow_inc }, section "___ksymtab_gpl+static_key_slow_inc", align 4
@__func__.static_key_enable_cpuslocked = private unnamed_addr constant [29 x i8] c"static_key_enable_cpuslocked\00", align 1
@static_key_enable_cpuslocked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_static_key_enable_cpuslocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_static_key_enable_cpuslocked = external dso_local constant [0 x i8], align 1
@__ksymtab_static_key_enable_cpuslocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @static_key_enable_cpuslocked to i32), ptr @__kstrtab_static_key_enable_cpuslocked, ptr @__kstrtabns_static_key_enable_cpuslocked }, section "___ksymtab_gpl+static_key_enable_cpuslocked", align 4
@__kstrtab_static_key_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_static_key_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_static_key_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @static_key_enable to i32), ptr @__kstrtab_static_key_enable, ptr @__kstrtabns_static_key_enable }, section "___ksymtab_gpl+static_key_enable", align 4
@__func__.static_key_disable_cpuslocked = private unnamed_addr constant [30 x i8] c"static_key_disable_cpuslocked\00", align 1
@static_key_disable_cpuslocked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_static_key_disable_cpuslocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_static_key_disable_cpuslocked = external dso_local constant [0 x i8], align 1
@__ksymtab_static_key_disable_cpuslocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @static_key_disable_cpuslocked to i32), ptr @__kstrtab_static_key_disable_cpuslocked, ptr @__kstrtabns_static_key_disable_cpuslocked }, section "___ksymtab_gpl+static_key_disable_cpuslocked", align 4
@__kstrtab_static_key_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_static_key_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_static_key_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @static_key_disable to i32), ptr @__kstrtab_static_key_disable, ptr @__kstrtabns_static_key_disable }, section "___ksymtab_gpl+static_key_disable", align 4
@__kstrtab_jump_label_update_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_jump_label_update_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_jump_label_update_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jump_label_update_timeout to i32), ptr @__kstrtab_jump_label_update_timeout, ptr @__kstrtabns_jump_label_update_timeout }, section "___ksymtab_gpl+jump_label_update_timeout", align 4
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@__kstrtab_static_key_slow_dec = external dso_local constant [0 x i8], align 1
@__kstrtabns_static_key_slow_dec = external dso_local constant [0 x i8], align 1
@__ksymtab_static_key_slow_dec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @static_key_slow_dec to i32), ptr @__kstrtab_static_key_slow_dec, ptr @__kstrtabns_static_key_slow_dec }, section "___ksymtab_gpl+static_key_slow_dec", align 4
@__func__.static_key_slow_dec_cpuslocked = private unnamed_addr constant [31 x i8] c"static_key_slow_dec_cpuslocked\00", align 1
@__func__.__static_key_slow_dec_deferred = private unnamed_addr constant [31 x i8] c"__static_key_slow_dec_deferred\00", align 1
@__kstrtab___static_key_slow_dec_deferred = external dso_local constant [0 x i8], align 1
@__kstrtabns___static_key_slow_dec_deferred = external dso_local constant [0 x i8], align 1
@__ksymtab___static_key_slow_dec_deferred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__static_key_slow_dec_deferred to i32), ptr @__kstrtab___static_key_slow_dec_deferred, ptr @__kstrtabns___static_key_slow_dec_deferred }, section "___ksymtab_gpl+__static_key_slow_dec_deferred", align 4
@__func__.__static_key_deferred_flush = private unnamed_addr constant [28 x i8] c"__static_key_deferred_flush\00", align 1
@__kstrtab___static_key_deferred_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns___static_key_deferred_flush = external dso_local constant [0 x i8], align 1
@__ksymtab___static_key_deferred_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__static_key_deferred_flush to i32), ptr @__kstrtab___static_key_deferred_flush, ptr @__kstrtabns___static_key_deferred_flush }, section "___ksymtab_gpl+__static_key_deferred_flush", align 4
@__func__.jump_label_rate_limit = private unnamed_addr constant [22 x i8] c"jump_label_rate_limit\00", align 1
@jump_label_rate_limit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&key->work)->work)\00", [57 x i8] zeroinitializer }, align 32
@jump_label_rate_limit.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&key->work)->timer\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_jump_label_rate_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_jump_label_rate_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_jump_label_rate_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jump_label_rate_limit to i32), ptr @__kstrtab_jump_label_rate_limit, ptr @__kstrtabns_jump_label_rate_limit }, section "___ksymtab_gpl+jump_label_rate_limit", align 4
@__start___jump_table = external dso_local global [0 x %struct.jump_entry], align 4
@__stop___jump_table = external dso_local global [0 x %struct.jump_entry], align 4
@__initcall__kmod_jump_label__189_774_jump_label_init_moduleearly = internal global ptr @jump_label_init_module, section ".initcallearly.init", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@__initcall__kmod_jump_label__190_867_jump_label_testearly = internal global ptr @jump_label_test, section ".initcallearly.init", align 4
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"jump_label_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jump_label_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"jump label: negative count!\0A\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@static_key_set_entries.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jump_label_module_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @jump_label_module_notify, ptr null, i32 1 }, [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Failed to allocate memory: jump_label may not work properly.\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@static_key_entries.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@static_key_set_mod.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@static_key_mod.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jump_label_can_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't patch jump_label at %pS\00", [34 x i8] zeroinitializer }, align 32
@__jump_label_mod_text_reserved.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sk_true = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@sk_false = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"jump_label_mutex\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 120, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 305, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 23, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 235, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"jump_label_module_nb\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 765, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 750, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 420, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [8 x i8] c"sk_true\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 834, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"sk_false\00", align 1
@___asan_gen_.55 = private constant [23 x i8] c"../kernel/jump_label.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 835, i32 8 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__initcall__kmod_jump_label__189_774_jump_label_init_moduleearly, ptr @__initcall__kmod_jump_label__190_867_jump_label_testearly, ptr @__ksymtab___static_key_deferred_flush, ptr @__ksymtab___static_key_slow_dec_deferred, ptr @__ksymtab_jump_label_rate_limit, ptr @__ksymtab_jump_label_update_timeout, ptr @__ksymtab_static_key_count, ptr @__ksymtab_static_key_disable, ptr @__ksymtab_static_key_disable_cpuslocked, ptr @__ksymtab_static_key_enable, ptr @__ksymtab_static_key_enable_cpuslocked, ptr @__ksymtab_static_key_slow_dec, ptr @__ksymtab_static_key_slow_inc, ptr @jump_label_mutex, ptr @.str, ptr @.str.1, ptr @jump_label_rate_limit.__key, ptr @.str.2, ptr @jump_label_rate_limit.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @jump_label_module_nb, ptr @.str.8, ptr @.str.9, ptr @sk_true, ptr @sk_false], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jump_label_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jump_label_rate_limit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jump_label_rate_limit.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jump_label_module_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sk_true to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sk_false to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jump_label_lock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @jump_label_mutex, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jump_label_unlock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @static_key_count(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 4) #7
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  %spec.select = select i1 %cmp, i32 %1, i32 1
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @static_key_slow_inc_cpuslocked(ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @static_key_initialized to i32))
  %0 = load i8, ptr @static_key_initialized, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.static_key_slow_inc_cpuslocked, ptr noundef %key) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @lockdep_assert_cpus_held() #7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 4) #7
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %key, align 4
  br label %for.cond

for.cond:                                         ; preds = %atomic_cmpxchg.exit.for.cond_crit_edge, %if.end
  %v.0 = phi i32 [ %2, %if.end ], [ %asmresult3.i.i.i, %atomic_cmpxchg.exit.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v.0)
  %cmp = icmp sgt i32 %v.0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add = add nuw i32 %v.0, 1
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %key, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %for.body
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %key, ptr %key, i32 %v.0, i32 %add, ptr elementtype(i32) %key) #7, !srcloc !93
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !94
  %cmp23 = icmp eq i32 %asmresult3.i.i.i, %v.0
  br i1 %cmp23, label %atomic_cmpxchg.exit.cleanup_crit_edge, label %atomic_cmpxchg.exit.for.cond_crit_edge, !prof !95

atomic_cmpxchg.exit.for.cond_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

atomic_cmpxchg.exit.cleanup_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @mutex_lock_nested(ptr noundef nonnull @jump_label_mutex, i32 noundef 0) #7
  %call.i.i54 = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 4) #7
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp34 = icmp eq i32 %5, 0
  %call.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #7
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 -1, ptr %key, align 4
  tail call fastcc void @jump_label_update(ptr noundef %key)
  %call.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !96
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %key, align 4
  br label %if.end39

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @llvm.prefetch.p0(ptr %key, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %key, ptr %key, i32 1, ptr elementtype(i32) %key) #7, !srcloc !97
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then35
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %atomic_cmpxchg.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jump_label_update(ptr noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.static_key, ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body, label %static_key_mod.exit.i

static_key_mod.exit.i:                            ; preds = %entry
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  %and.i.i = and i32 %4, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not20.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not20.i, label %static_key_mod.exit.i.cleanup_crit_edge, label %for.body.preheader.i

static_key_mod.exit.i.cleanup_crit_edge:          ; preds = %static_key_mod.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader.i:                             ; preds = %static_key_mod.exit.i
  %5 = inttoptr i32 %and.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.preheader.i
  %mod.021.i = phi ptr [ %18, %cleanup.i.for.body.i_crit_edge ], [ %5, %for.body.preheader.i ]
  %entries.i = getelementptr inbounds %struct.static_key_mod, ptr %mod.021.i, i32 0, i32 1
  %6 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %mod2.i = getelementptr inbounds %struct.static_key_mod, ptr %mod.021.i, i32 0, i32 2
  %8 = ptrtoint ptr %mod2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mod2.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %if.end.i.land.end.i_crit_edge, label %land.rhs.i

if.end.i.land.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %jump_entries.i = getelementptr inbounds %struct.module, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %jump_entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jump_entries.i, align 16
  %num_jump_entries.i = getelementptr inbounds %struct.module, ptr %9, i32 0, i32 48
  %12 = ptrtoint ptr %num_jump_entries.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_jump_entries.i, align 4
  %add.ptr.i = getelementptr %struct.jump_entry, ptr %11, i32 %13
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.i.land.end.i_crit_edge
  %stop.019.i = phi ptr [ %add.ptr.i, %land.rhs.i ], [ @__stop___jump_table, %if.end.i.land.end.i_crit_edge ]
  %16 = phi i1 [ %cmp.i, %land.rhs.i ], [ false, %if.end.i.land.end.i_crit_edge ]
  tail call fastcc void @__jump_label_update(ptr noundef %key, ptr noundef nonnull %7, ptr noundef %stop.019.i, i1 noundef zeroext %16) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.end.i, %for.body.i.cleanup.i_crit_edge
  %17 = ptrtoint ptr %mod.021.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mod.021.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %19 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp = icmp ult i32 %19, 3
  %20 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %23, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !98
  %24 = ptrtoint ptr %key to i32
  %call2 = tail call ptr @__module_address(i32 noundef %24) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.body.do.body7_crit_edge, label %if.then3

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %jump_entries = getelementptr inbounds %struct.module, ptr %call2, i32 0, i32 47
  %25 = ptrtoint ptr %jump_entries to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %jump_entries, align 16
  %num_jump_entries = getelementptr inbounds %struct.module, ptr %call2, i32 0, i32 48
  %27 = ptrtoint ptr %num_jump_entries to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_jump_entries, align 4
  %add.ptr = getelementptr %struct.jump_entry, ptr %26, i32 %28
  %29 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call2, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp4 = icmp eq i32 %30, 1
  br label %do.body7

do.body7:                                         ; preds = %if.then3, %do.body.do.body7_crit_edge
  %stop.0 = phi ptr [ %add.ptr, %if.then3 ], [ @__stop___jump_table, %do.body.do.body7_crit_edge ]
  %init.0.in = phi i1 [ %cmp4, %if.then3 ], [ %cmp, %do.body.do.body7_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !99
  %31 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i.i.i26 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %34, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %0, align 4
  %and.i29 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i30, label %do.body7.static_key_entries.exit_crit_edge, label %land.rhs.i31

do.body7.static_key_entries.exit_crit_edge:       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_entries.exit

land.rhs.i31:                                     ; preds = %do.body7
  %.b40.i = load i1, ptr @static_key_entries.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i31.static_key_entries.exit_crit_edge, label %if.then.i, !prof !95

land.rhs.i31.static_key_entries.exit_crit_edge:   ; preds = %land.rhs.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_entries.exit

if.then.i:                                        ; preds = %land.rhs.i31
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @static_key_entries.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 349, i32 noundef 9, ptr noundef null) #7
  br label %static_key_entries.exit

static_key_entries.exit:                          ; preds = %if.then.i, %land.rhs.i31.static_key_entries.exit_crit_edge, %do.body7.static_key_entries.exit_crit_edge
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %0, align 4
  %and36.i = and i32 %38, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool11.not = icmp eq i32 %and36.i, 0
  br i1 %tobool11.not, label %static_key_entries.exit.cleanup_crit_edge, label %if.then12

static_key_entries.exit.cleanup_crit_edge:        ; preds = %static_key_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %static_key_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  %39 = inttoptr i32 %and36.i to ptr
  tail call fastcc void @__jump_label_update(ptr noundef %key, ptr noundef nonnull %39, ptr noundef %stop.0, i1 noundef zeroext %init.0.in)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %static_key_entries.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %static_key_mod.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @static_key_slow_inc(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #7
  tail call void @static_key_slow_inc_cpuslocked(ptr noundef %key)
  tail call void @cpus_read_unlock() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @static_key_enable_cpuslocked(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @static_key_initialized to i32))
  %0 = load i8, ptr @static_key_initialized, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.static_key_enable_cpuslocked, ptr noundef %key) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @lockdep_assert_cpus_held() #7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 4) #7
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then21, label %if.end74

if.then21:                                        ; preds = %if.end
  %call.i.i92 = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 4) #7
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp24.not = icmp eq i32 %4, 1
  br i1 %cmp24.not, label %if.then21.return_crit_edge, label %land.rhs

if.then21.return_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs:                                         ; preds = %if.then21
  %.b91 = load i1, ptr @static_key_enable_cpuslocked.__already_done, align 1
  br i1 %.b91, label %land.rhs.return_crit_edge, label %if.then39, !prof !95

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then39:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @static_key_enable_cpuslocked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end74:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @jump_label_mutex, i32 noundef 0) #7
  %call.i.i93 = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 4) #7
  %5 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp77 = icmp eq i32 %6, 0
  br i1 %cmp77, label %if.then78, label %if.end74.if.end81_crit_edge

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #7
  %7 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 -1, ptr %key, align 4
  tail call fastcc void @jump_label_update(ptr noundef %key)
  %call.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !96
  %8 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %key, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end74.if.end81_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #7
  br label %return

return:                                           ; preds = %if.end81, %if.then39, %land.rhs.return_crit_edge, %if.then21.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @static_key_enable(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #7
  tail call void @static_key_enable_cpuslocked(ptr noundef %key)
  tail call void @cpus_read_unlock() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @static_key_disable_cpuslocked(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @static_key_initialized to i32))
  %0 = load i8, ptr @static_key_initialized, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.static_key_disable_cpuslocked, ptr noundef %key) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @lockdep_assert_cpus_held() #7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 4) #7
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end74, label %if.then21

if.then21:                                        ; preds = %if.end
  %call.i.i88 = tail call zeroext i1 @__kasan_check_read(ptr noundef %key, i32 noundef 4) #7
  %3 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp24.not = icmp eq i32 %4, 0
  br i1 %cmp24.not, label %if.then21.return_crit_edge, label %land.rhs

if.then21.return_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs:                                         ; preds = %if.then21
  %.b87 = load i1, ptr @static_key_disable_cpuslocked.__already_done, align 1
  br i1 %.b87, label %land.rhs.return_crit_edge, label %if.then39, !prof !95

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then39:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @static_key_disable_cpuslocked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end74:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @jump_label_mutex, i32 noundef 0) #7
  %call.i.i89 = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %key, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end74
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %key, ptr %key, i32 1, i32 0, ptr elementtype(i32) %key) #7, !srcloc !93
  %asmresult.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool77.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool77.not, label %atomic_cmpxchg.exit.if.end79_crit_edge, label %if.then78

atomic_cmpxchg.exit.if.end79_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then78:                                        ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @jump_label_update(ptr noundef %key)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %atomic_cmpxchg.exit.if.end79_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #7
  br label %return

return:                                           ; preds = %if.end79, %if.then39, %land.rhs.return_crit_edge, %if.then21.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @static_key_disable(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #7
  tail call void @static_key_disable_cpuslocked(ptr noundef %key)
  tail call void @cpus_read_unlock() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jump_label_update_timeout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  tail call void @cpus_read_lock() #7
  tail call fastcc void @__static_key_slow_dec_cpuslocked(ptr noundef %add.ptr) #7
  tail call void @cpus_read_unlock() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @static_key_slow_dec(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @static_key_initialized to i32))
  %0 = load i8, ptr @static_key_initialized, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef %key) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @cpus_read_lock() #7
  tail call fastcc void @__static_key_slow_dec_cpuslocked(ptr noundef %key) #7
  tail call void @cpus_read_unlock() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @static_key_slow_dec_cpuslocked(ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @static_key_initialized to i32))
  %0 = load i8, ptr @static_key_initialized, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.static_key_slow_dec_cpuslocked, ptr noundef %key) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @__static_key_slow_dec_cpuslocked(ptr noundef %key)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__static_key_slow_dec_cpuslocked(ptr noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lockdep_assert_cpus_held() #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %key, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %key, ptr %key, i32 1, i32 -1, ptr elementtype(i32) %key) #7, !srcloc !101
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end, label %atomic_fetch_add_unless.exit.i

atomic_fetch_add_unless.exit.i:                   ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp1.i = icmp slt i32 %asmresult.i.i.i, 0
  br i1 %cmp1.i, label %do.end.i, label %atomic_fetch_add_unless.exit.i.return_crit_edge, !prof !103

atomic_fetch_add_unless.exit.i.return_crit_edge:  ; preds = %atomic_fetch_add_unless.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end.i:                                         ; preds = %atomic_fetch_add_unless.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @jump_label_mutex, i32 noundef 0) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @llvm.prefetch.p0(ptr %key, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %key, ptr %key, i32 1, ptr elementtype(i32) %key) #7, !srcloc !105
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @jump_label_update(ptr noundef %key)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #7
  br label %return

return:                                           ; preds = %if.end3, %do.end.i, %atomic_fetch_add_unless.exit.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__static_key_slow_dec_deferred(ptr noundef %key, ptr noundef %work, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @static_key_initialized to i32))
  %0 = load i8, ptr @static_key_initialized, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 284, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__static_key_slow_dec_deferred, ptr noundef %key) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %key, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %key, ptr %key, i32 1, i32 -1, ptr elementtype(i32) %key) #7, !srcloc !101
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end22, label %atomic_fetch_add_unless.exit.i

atomic_fetch_add_unless.exit.i:                   ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp1.i = icmp slt i32 %asmresult.i.i.i, 0
  br i1 %cmp1.i, label %do.end.i, label %atomic_fetch_add_unless.exit.i.return_crit_edge, !prof !103

atomic_fetch_add_unless.exit.i.return_crit_edge:  ; preds = %atomic_fetch_add_unless.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end.i:                                         ; preds = %atomic_fetch_add_unless.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.7) #7
  br label %return

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef %timeout) #7
  br label %return

return:                                           ; preds = %if.end22, %do.end.i, %atomic_fetch_add_unless.exit.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__static_key_deferred_flush(ptr noundef %key, ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @static_key_initialized to i32))
  %0 = load i8, ptr @static_key_initialized, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__static_key_deferred_flush, ptr noundef %key) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call zeroext i1 @flush_delayed_work(ptr noundef %work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jump_label_rate_limit(ptr noundef %key, i32 noundef %rl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @static_key_initialized to i32))
  %0 = load i8, ptr @static_key_initialized, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !91

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 303, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.jump_label_rate_limit, ptr noundef %key) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %timeout = getelementptr inbounds %struct.static_key_deferred, ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rl, ptr %timeout, align 4
  %work = getelementptr inbounds %struct.static_key_deferred, ptr %key, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %2 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.static_key_deferred, ptr %key, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @jump_label_rate_limit.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry30 = getelementptr inbounds %struct.static_key_deferred, ptr %key, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i = getelementptr inbounds %struct.static_key_deferred, ptr %key, i32 0, i32 2, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry30, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.static_key_deferred, ptr %key, i32 0, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @jump_label_update_timeout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.static_key_deferred, ptr %key, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @jump_label_rate_limit.__key.3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_jump_label_transform_static(ptr noundef %entry1, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @arch_jump_label_transform(ptr noundef %entry1, i32 noundef %type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_jump_label_transform(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @jump_label_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @static_key_initialized to i32))
  %0 = load i8, ptr @static_key_initialized, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup15

if.end:                                           ; preds = %entry
  tail call void @cpus_read_lock() #7
  tail call void @mutex_lock_nested(ptr noundef nonnull @jump_label_mutex, i32 noundef 0) #7
  tail call void @sort(ptr noundef nonnull @__start___jump_table, i32 noundef udiv (i32 sub (i32 ptrtoint (ptr @__stop___jump_table to i32), i32 ptrtoint (ptr @__start___jump_table to i32)), i32 12), i32 noundef 12, ptr noundef nonnull @jump_label_cmp, ptr noundef null) #7
  br i1 icmp ult (ptr @__start___jump_table, ptr @__stop___jump_table), label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %iter.035 = phi ptr [ %incdec.ptr, %cleanup.for.body_crit_edge ], [ @__start___jump_table, %if.end.for.body_crit_edge ]
  %key.034 = phi ptr [ %key.1, %cleanup.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  %key.i.i = getelementptr inbounds %struct.jump_entry, ptr %iter.035, i32 0, i32 2
  %1 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key.i.i, align 4
  %and.i.i = and i32 %2, -4
  %3 = inttoptr i32 %and.i.i to ptr
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.i = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key.i.i, align 4
  %and.i12.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.i.i = icmp ne i32 %and.i12.i, 0
  %cmp4 = xor i1 %cmp13.i, %tobool.i.i
  br i1 %cmp4, label %if.then5, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @arch_jump_label_transform_static(ptr noundef %iter.035, i32 noundef 0)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body.if.end6_crit_edge
  %8 = ptrtoint ptr %iter.035 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iter.035, align 4
  %10 = inttoptr i32 %9 to ptr
  %cmp.not.i.i = icmp uge ptr %10, @__init_begin
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 1
  %cmp1.i.i = icmp ule ptr %add.ptr.i.i, @__init_end
  %11 = and i1 %cmp.not.i.i, %cmp1.i.i
  %12 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key.i.i, align 4
  %and.i = and i32 %13, -3
  %masksel.i = select i1 %11, i32 2, i32 0
  %and.sink.i = or i32 %masksel.i, %and.i
  store i32 %and.sink.i, ptr %key.i.i, align 4
  %and.i33 = and i32 %13, -4
  %14 = inttoptr i32 %and.i33 to ptr
  %cmp11 = icmp eq ptr %key.034, %14
  br i1 %cmp11, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @static_key_set_entries(ptr noundef %14, ptr noundef %iter.035)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end6.cleanup_crit_edge
  %key.1 = phi ptr [ %14, %if.end13 ], [ %key.034, %if.end6.cleanup_crit_edge ]
  %incdec.ptr = getelementptr %struct.jump_entry, ptr %iter.035, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__stop___jump_table
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__asan_store1_noabort(i32 ptrtoint (ptr @static_key_initialized to i32))
  store i8 1, ptr @static_key_initialized, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #7
  tail call void @cpus_read_unlock() #7
  br label %cleanup15

cleanup15:                                        ; preds = %for.end, %entry.cleanup15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @static_key_set_entries(ptr nocapture noundef %key, ptr noundef %entries) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entries to i32
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @static_key_set_entries.__already_done, align 1
  br i1 %.b42, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !95

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @static_key_set_entries.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %1 = getelementptr inbounds %struct.static_key, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and36 = and i32 %3, 3
  %or = or i32 %and36, %0
  store i32 %or, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jump_label_apply_nops(ptr nocapture noundef readonly %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jump_entries = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 47
  %0 = ptrtoint ptr %jump_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jump_entries, align 16
  %num_jump_entries = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 48
  %2 = ptrtoint ptr %num_jump_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_jump_entries, align 4
  %add.ptr = getelementptr %struct.jump_entry, ptr %1, i32 %3
  %cmp114 = icmp ult ptr %1, %add.ptr
  br i1 %cmp114, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.015 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %key.i.i = getelementptr inbounds %struct.jump_entry, ptr %iter.015, i32 0, i32 2
  %4 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key.i.i, align 4
  %and.i.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i.i to ptr
  %7 = getelementptr inbounds %struct.static_key, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i9.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i)
  %tobool.i.i = icmp ne i32 %and.i9.i, 0
  %and.i11.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11.i)
  %tobool.i12.i = icmp eq i32 %and.i11.i, 0
  %cmp2 = xor i1 %tobool.i12.i, %tobool.i.i
  br i1 %cmp2, label %if.then3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @arch_jump_label_transform_static(ptr noundef %iter.015, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.jump_entry, ptr %iter.015, i32 1
  %cmp1 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jump_label_init_module() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_module_notifier(ptr noundef nonnull @jump_label_module_nb) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jump_label_text_reserved(ptr noundef %start, ptr noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp ult i32 %0, 3
  br i1 icmp ult (ptr @__start___jump_table, ptr @__stop___jump_table), label %while.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = ptrtoint ptr %start to i32
  %.pre13 = ptrtoint ptr %end to i32
  br label %if.end

while.body.lr.ph.i:                               ; preds = %entry
  %1 = ptrtoint ptr %end to i32
  %2 = ptrtoint ptr %start to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %iter.09.i = phi ptr [ @__start___jump_table, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end4.i.while.body.i_crit_edge ]
  br i1 %cmp, label %while.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

while.body.i.if.then.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %key.i.i = getelementptr inbounds %struct.jump_entry, ptr %iter.09.i, i32 0, i32 2
  %3 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key.i.i, align 4
  %and.i.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end4.i_crit_edge

lor.lhs.false.i.if.end4.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %while.body.i.if.then.i_crit_edge
  %5 = ptrtoint ptr %iter.09.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iter.09.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp.not.i.i = icmp ugt i32 %6, %1
  %add.i.i = add i32 %6, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %2)
  %cmp4.i.i = icmp ule i32 %add.i.i, %2
  %tobool2.not.i = or i1 %cmp.not.i.i, %cmp4.i.i
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %lor.lhs.false.i.if.end4.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.jump_entry, ptr %iter.09.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, @__stop___jump_table
  br i1 %cmp.i, label %if.end4.i.while.body.i_crit_edge, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end:                                           ; preds = %if.end4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %.pre-phi14 = phi i32 [ %.pre13, %entry.if.end_crit_edge ], [ %1, %if.end4.i.if.end_crit_edge ]
  %.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %2, %if.end4.i.if.end_crit_edge ]
  %7 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i8 = add i32 %10, 1
  store volatile i32 %add.i.i8, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !107
  %call.i = tail call ptr @__module_text_address(i32 noundef %.pre-phi) #7
  %call1.i = tail call ptr @__module_text_address(i32 noundef %.pre-phi14) #7
  %cmp.not.i = icmp eq ptr %call1.i, %call.i
  br i1 %cmp.not.i, label %if.end.if.end31.i_crit_edge, label %land.rhs.i

if.end.if.end31.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

land.rhs.i:                                       ; preds = %if.end
  %.b63.i = load i1, ptr @__jump_label_mod_text_reserved.__already_done, align 1
  br i1 %.b63.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then.i9, !prof !95

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then.i9:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @__jump_label_mod_text_reserved.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 557, i32 noundef 9, ptr noundef null) #7
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then.i9, %land.rhs.i.if.end31.i_crit_edge, %if.end.if.end31.i_crit_edge
  %call39.i = tail call zeroext i1 @try_module_get(ptr noundef %call.i) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !108
  %11 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i.i.i64.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i64.i to ptr
  %preempt_count.i.i65.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i65.i, align 4
  %sub.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i65.i, align 4
  %tobool45.not66.i = icmp eq ptr %call.i, null
  %not.call39.i = xor i1 %call39.i, true
  %tobool45.not.i = select i1 %not.call39.i, i1 true, i1 %tobool45.not66.i
  br i1 %tobool45.not.i, label %if.end31.i.cleanup_crit_edge, label %if.end47.i

if.end31.i.cleanup_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47.i:                                       ; preds = %if.end31.i
  %jump_entries.i = getelementptr inbounds %struct.module, ptr %call.i, i32 0, i32 47
  %15 = ptrtoint ptr %jump_entries.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %jump_entries.i, align 16
  %num_jump_entries.i = getelementptr inbounds %struct.module, ptr %call.i, i32 0, i32 48
  %17 = ptrtoint ptr %num_jump_entries.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_jump_entries.i, align 4
  %add.ptr.i = getelementptr %struct.jump_entry, ptr %16, i32 %18
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp49.i = icmp eq i32 %20, 1
  %cmp8.i.i = icmp ult ptr %16, %add.ptr.i
  br i1 %cmp8.i.i, label %if.end47.i.while.body.i.i_crit_edge, label %if.end47.i.__jump_label_text_reserved.exit.i_crit_edge

if.end47.i.__jump_label_text_reserved.exit.i_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__jump_label_text_reserved.exit.i

if.end47.i.while.body.i.i_crit_edge:              ; preds = %if.end47.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end4.i.i.while.body.i.i_crit_edge, %if.end47.i.while.body.i.i_crit_edge
  %iter.09.i.i = phi ptr [ %incdec.ptr.i.i, %if.end4.i.i.while.body.i.i_crit_edge ], [ %16, %if.end47.i.while.body.i.i_crit_edge ]
  br i1 %cmp49.i, label %while.body.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

while.body.i.i.if.then.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %while.body.i.i
  %key.i.i.i = getelementptr inbounds %struct.jump_entry, ptr %iter.09.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key.i.i.i, align 4
  %and.i.i.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i.if.end4.i.i_crit_edge

lor.lhs.false.i.i.if.end4.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %while.body.i.i.if.then.i.i_crit_edge
  %23 = ptrtoint ptr %iter.09.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iter.09.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %.pre-phi14)
  %cmp.not.i.i.i = icmp ugt i32 %24, %.pre-phi14
  %add.i.i.i = add i32 %24, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %.pre-phi)
  %cmp4.i.i.i = icmp ule i32 %add.i.i.i, %.pre-phi
  %tobool2.not.i.i = or i1 %cmp.not.i.i.i, %cmp4.i.i.i
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %if.then.i.i.__jump_label_text_reserved.exit.i_crit_edge

if.then.i.i.__jump_label_text_reserved.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__jump_label_text_reserved.exit.i

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then.i.i.if.end4.i.i_crit_edge, %lor.lhs.false.i.i.if.end4.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.jump_entry, ptr %iter.09.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i
  br i1 %cmp.i.i, label %if.end4.i.i.while.body.i.i_crit_edge, label %if.end4.i.i.__jump_label_text_reserved.exit.i_crit_edge

if.end4.i.i.__jump_label_text_reserved.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__jump_label_text_reserved.exit.i

if.end4.i.i.while.body.i.i_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

__jump_label_text_reserved.exit.i:                ; preds = %if.end4.i.i.__jump_label_text_reserved.exit.i_crit_edge, %if.then.i.i.__jump_label_text_reserved.exit.i_crit_edge, %if.end47.i.__jump_label_text_reserved.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end47.i.__jump_label_text_reserved.exit.i_crit_edge ], [ 0, %if.end4.i.i.__jump_label_text_reserved.exit.i_crit_edge ], [ 1, %if.then.i.i.__jump_label_text_reserved.exit.i_crit_edge ]
  tail call void @module_put(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %__jump_label_text_reserved.exit.i, %if.end31.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %__jump_label_text_reserved.exit.i ], [ 0, %if.end31.i.cleanup_crit_edge ], [ 1, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jump_label_test() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end465.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %if.end465.for.body_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @sk_true, i32 noundef 4) #7
  %0 = load volatile i32, ptr @sk_true, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1.not523 = icmp eq i32 %0, 0
  br i1 %cmp1.not523, label %do.end, label %for.body.if.end_crit_edge, !prof !91

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 842, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %call.i.i.i506 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @sk_false, i32 noundef 4) #7
  %1 = load volatile i32, ptr @sk_false, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26.not524 = icmp eq i32 %1, 0
  br i1 %cmp26.not524, label %if.end.if.end51_crit_edge, label %do.end45, !prof !95

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 843, i32 noundef 9, ptr noundef null) #7
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end.if.end51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @sk_true, i32 1), ptr blockaddress(@jump_label_test, %do.end88)) #7
          to label %if.end94 [label %do.end88], !srcloc !109

do.end88:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 845, i32 noundef 9, ptr noundef null) #7
  br label %if.end94

if.end94:                                         ; preds = %do.end88, %if.end51
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sk_true, ptr blockaddress(@jump_label_test, %if.end137)) #7
          to label %do.end131 [label %if.end137], !srcloc !110

do.end131:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 846, i32 noundef 9, ptr noundef null) #7
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end94
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @sk_false, i32 1), ptr blockaddress(@jump_label_test, %if.end180)) #7
          to label %do.end174 [label %if.end180], !srcloc !110

do.end174:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 847, i32 noundef 9, ptr noundef null) #7
  br label %if.end180

if.end180:                                        ; preds = %do.end174, %if.end137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sk_false, ptr blockaddress(@jump_label_test, %do.end215)) #7
          to label %if.end221 [label %do.end215], !srcloc !109

do.end215:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 848, i32 noundef 9, ptr noundef null) #7
  br label %if.end221

if.end221:                                        ; preds = %do.end215, %if.end180
  tail call void @cpus_read_lock() #7
  tail call void @static_key_disable_cpuslocked(ptr noundef nonnull @sk_true) #7
  tail call void @cpus_read_unlock() #7
  tail call void @cpus_read_lock() #7
  tail call void @static_key_enable_cpuslocked(ptr noundef nonnull @sk_false) #7
  tail call void @cpus_read_unlock() #7
  %call.i.i.i509 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @sk_true, i32 noundef 4) #7
  %2 = load volatile i32, ptr @sk_true, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp232.not525 = icmp eq i32 %2, 0
  br i1 %cmp232.not525, label %if.end221.if.end257_crit_edge, label %do.end251, !prof !95

if.end221.if.end257_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257

do.end251:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 853, i32 noundef 9, ptr noundef null) #7
  br label %if.end257

if.end257:                                        ; preds = %do.end251, %if.end221.if.end257_crit_edge
  %call.i.i.i512 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @sk_false, i32 noundef 4) #7
  %3 = load volatile i32, ptr @sk_false, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp268526 = icmp eq i32 %3, 0
  br i1 %cmp268526, label %do.end287, label %if.end257.if.end293_crit_edge, !prof !91

if.end257.if.end293_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end293

do.end287:                                        ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 854, i32 noundef 9, ptr noundef null) #7
  br label %if.end293

if.end293:                                        ; preds = %do.end287, %if.end257.if.end293_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @sk_true, i32 1), ptr blockaddress(@jump_label_test, %if.end336)) #7
          to label %do.end330 [label %if.end336], !srcloc !109

do.end330:                                        ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 856, i32 noundef 9, ptr noundef null) #7
  br label %if.end336

if.end336:                                        ; preds = %do.end330, %if.end293
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sk_true, ptr blockaddress(@jump_label_test, %do.end371)) #7
          to label %if.end377 [label %do.end371], !srcloc !110

do.end371:                                        ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 857, i32 noundef 9, ptr noundef null) #7
  br label %if.end377

if.end377:                                        ; preds = %do.end371, %if.end336
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @sk_false, i32 1), ptr blockaddress(@jump_label_test, %do.end416)) #7
          to label %if.end422 [label %do.end416], !srcloc !110

do.end416:                                        ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 858, i32 noundef 9, ptr noundef null) #7
  br label %if.end422

if.end422:                                        ; preds = %do.end416, %if.end377
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @sk_false, ptr blockaddress(@jump_label_test, %if.end465)) #7
          to label %do.end459 [label %if.end465], !srcloc !109

do.end459:                                        ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 859, i32 noundef 9, ptr noundef null) #7
  br label %if.end465

if.end465:                                        ; preds = %do.end459, %if.end422
  tail call void @cpus_read_lock() #7
  tail call void @static_key_enable_cpuslocked(ptr noundef nonnull @sk_true) #7
  tail call void @cpus_read_unlock() #7
  tail call void @cpus_read_lock() #7
  tail call void @static_key_disable_cpuslocked(ptr noundef nonnull @sk_false) #7
  tail call void @cpus_read_unlock() #7
  br i1 %cmp, label %if.end465.for.body_crit_edge, label %for.end

if.end465.for.body_crit_edge:                     ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jump_label_cmp(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %key.i = getelementptr inbounds %struct.jump_entry, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key.i, align 4
  %and.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i to ptr
  %key.i24 = getelementptr inbounds %struct.jump_entry, ptr %b, i32 0, i32 2
  %3 = ptrtoint ptr %key.i24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key.i24, align 4
  %and.i25 = and i32 %4, -4
  %5 = inttoptr i32 %and.i25 to ptr
  %cmp = icmp ult ptr %2, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp4 = icmp ugt ptr %2, %5
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %a, align 4
  %8 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp9 = icmp ult i32 %7, %9
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp14 = icmp ugt i32 %7, %9
  %. = zext i1 %cmp14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ -1, %if.end6.cleanup_crit_edge ], [ %., %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jump_label_module_notify(ptr nocapture noundef readnone %self, i32 noundef %val, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cpus_read_lock() #7
  tail call void @mutex_lock_nested(ptr noundef nonnull @jump_label_mutex, i32 noundef 0) #7
  %0 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %val, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %jump_entries.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 47
  %1 = ptrtoint ptr %jump_entries.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %jump_entries.i, align 16
  %num_jump_entries.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 48
  %3 = ptrtoint ptr %num_jump_entries.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_jump_entries.i, align 4
  %add.ptr.i = getelementptr %struct.jump_entry, ptr %2, i32 %4
  %cmp.i = icmp eq ptr %2, %add.ptr.i
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %add.ptr.idx.i = mul i32 %4, 12
  %div.i.i = udiv i32 %add.ptr.idx.i, 12
  tail call void @sort(ptr noundef %2, i32 noundef %div.i.i, i32 noundef 12, ptr noundef nonnull @jump_label_cmp, ptr noundef null) #7
  %cmp1131.i = icmp ult ptr %2, %add.ptr.i
  br i1 %cmp1131.i, label %for.body.lr.ph.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %init_layout.i.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 26
  %size.i.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 26, i32 1
  %core_layout.i.i.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 25
  %size.i5.i.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 25, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %key.0135.i = phi ptr [ null, %for.body.lr.ph.i ], [ %key.1.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %iter.0132.i = phi ptr [ %2, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %iter.0132.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iter.0132.i, align 4
  %7 = ptrtoint ptr %init_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_layout.i.i, align 16
  %9 = ptrtoint ptr %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp.not.i.i = icmp ult i32 %6, %9
  br i1 %cmp.not.i.i, label %for.body.i.within_module_init.exit.thread.i_crit_edge, label %within_module_init.exit.i

for.body.i.within_module_init.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %within_module_init.exit.thread.i

within_module_init.exit.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i.i, align 4
  %add.i86.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i86.i, i32 %6)
  %cmp4.i.i = icmp ugt i32 %add.i86.i, %6
  %spec.select.i = select i1 %cmp4.i.i, i32 2, i32 0
  br label %within_module_init.exit.thread.i

within_module_init.exit.thread.i:                 ; preds = %within_module_init.exit.i, %for.body.i.within_module_init.exit.thread.i_crit_edge
  %12 = phi i32 [ %spec.select.i, %within_module_init.exit.i ], [ 0, %for.body.i.within_module_init.exit.thread.i_crit_edge ]
  %key.i125.i = getelementptr inbounds %struct.jump_entry, ptr %iter.0132.i, i32 0, i32 2
  %13 = ptrtoint ptr %key.i125.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %and.i126.in.i = load i32, ptr %key.i125.i, align 4
  %and.i126.i = and i32 %and.i126.in.i, -3
  %and.sink.i.i = or i32 %and.i126.i, %12
  store i32 %and.sink.i.i, ptr %key.i125.i, align 4
  %and.i88.i = and i32 %and.i126.in.i, -4
  %14 = inttoptr i32 %and.i88.i to ptr
  %cmp4.i = icmp eq ptr %key.0135.i, %14
  br i1 %cmp4.i, label %within_module_init.exit.thread.i.for.inc.i_crit_edge, label %if.end6.i

within_module_init.exit.thread.i.for.inc.i_crit_edge: ; preds = %within_module_init.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end6.i:                                        ; preds = %within_module_init.exit.thread.i
  %15 = ptrtoint ptr %init_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_layout.i.i, align 16
  %17 = ptrtoint ptr %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i88.i, i32 %17)
  %cmp.not.i.i.i = icmp ult i32 %and.i88.i, %17
  br i1 %cmp.not.i.i.i, label %if.end6.i.lor.rhs.i.i_crit_edge, label %within_module_init.exit.i.i

if.end6.i.lor.rhs.i.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

within_module_init.exit.i.i:                      ; preds = %if.end6.i
  %18 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i.i, align 4
  %add.i.i.i = add i32 %19, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %and.i88.i)
  %cmp4.i.i.i = icmp ugt i32 %add.i.i.i, %and.i88.i
  br i1 %cmp4.i.i.i, label %within_module_init.exit.i.i.if.then8.i_crit_edge, label %within_module_init.exit.i.i.lor.rhs.i.i_crit_edge

within_module_init.exit.i.i.lor.rhs.i.i_crit_edge: ; preds = %within_module_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i.i

within_module_init.exit.i.i.if.then8.i_crit_edge: ; preds = %within_module_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

lor.rhs.i.i:                                      ; preds = %within_module_init.exit.i.i.lor.rhs.i.i_crit_edge, %if.end6.i.lor.rhs.i.i_crit_edge
  %20 = ptrtoint ptr %core_layout.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_layout.i.i.i, align 128
  %22 = ptrtoint ptr %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i88.i, i32 %22)
  %cmp.not.i4.i.i = icmp ult i32 %and.i88.i, %22
  br i1 %cmp.not.i4.i.i, label %lor.rhs.i.i.if.end9.i_crit_edge, label %within_module.exit.i

lor.rhs.i.i.if.end9.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

within_module.exit.i:                             ; preds = %lor.rhs.i.i
  %23 = ptrtoint ptr %size.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i5.i.i, align 4
  %add.i6.i.i = add i32 %24, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i6.i.i, i32 %and.i88.i)
  %cmp4.i7.i.i = icmp ugt i32 %add.i6.i.i, %and.i88.i
  br i1 %cmp4.i7.i.i, label %within_module.exit.i.if.then8.i_crit_edge, label %within_module.exit.i.if.end9.i_crit_edge

within_module.exit.i.if.end9.i_crit_edge:         ; preds = %within_module.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

within_module.exit.i.if.then8.i_crit_edge:        ; preds = %within_module.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.then8.i:                                       ; preds = %within_module.exit.i.if.then8.i_crit_edge, %within_module_init.exit.i.i.if.then8.i_crit_edge
  %25 = ptrtoint ptr %iter.0132.i to i32
  %and.i89.i = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89.i)
  %tobool.not.i.i = icmp eq i32 %and.i89.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.static_key_set_entries.exit.i_crit_edge, label %land.rhs.i90.i

if.then8.i.static_key_set_entries.exit.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_set_entries.exit.i

land.rhs.i90.i:                                   ; preds = %if.then8.i
  %.b42.i.i = load i1, ptr @static_key_set_entries.__already_done, align 1
  br i1 %.b42.i.i, label %land.rhs.i90.i.static_key_set_entries.exit.i_crit_edge, label %if.then.i.i, !prof !95

land.rhs.i90.i.static_key_set_entries.exit.i_crit_edge: ; preds = %land.rhs.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_set_entries.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @static_key_set_entries.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #7
  br label %static_key_set_entries.exit.i

static_key_set_entries.exit.i:                    ; preds = %if.then.i.i, %land.rhs.i90.i.static_key_set_entries.exit.i_crit_edge, %if.then8.i.static_key_set_entries.exit.i_crit_edge
  %26 = getelementptr inbounds %struct.static_key, ptr %14, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and36.i.i = and i32 %28, 3
  %or.i.i = or i32 %and36.i.i, %25
  store i32 %or.i.i, ptr %26, align 4
  br label %for.inc.i

if.end9.i:                                        ; preds = %within_module.exit.i.if.end9.i_crit_edge, %lor.rhs.i.i.if.end9.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 12) #10
  %tobool11.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i, label %if.end9.i.do.end_crit_edge, label %if.end13.i

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end13.i:                                       ; preds = %if.end9.i
  %30 = getelementptr inbounds %struct.static_key, ptr %14, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and.i91.i = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91.i)
  %tobool.i.not.i = icmp eq i32 %and.i91.i, 0
  br i1 %tobool.i.not.i, label %if.then15.i, label %if.end13.i.if.end26.i_crit_edge

if.end13.i.if.end26.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i92.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 12) #10
  %tobool17.not.i = icmp eq ptr %call7.i.i92.i, null
  br i1 %tobool17.not.i, label %if.then18.i, label %do.body.i

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %do.end

do.body.i:                                        ; preds = %if.then15.i
  %34 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %37, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !111
  %call20.i = tail call ptr @__module_address(i32 noundef %and.i88.i) #7
  %mod21.i = getelementptr inbounds %struct.static_key_mod, ptr %call7.i.i92.i, i32 0, i32 2
  %38 = ptrtoint ptr %mod21.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call20.i, ptr %mod21.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !112
  %39 = tail call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i.i.i83.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i83.i to ptr
  %preempt_count.i.i84.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i84.i, align 4
  %sub.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i84.i, align 4
  %43 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %30, align 4
  %and.i93.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.i)
  %tobool.not.i94.i = icmp eq i32 %and.i93.i, 0
  br i1 %tobool.not.i94.i, label %do.body.i.static_key_entries.exit.i_crit_edge, label %land.rhs.i95.i

do.body.i.static_key_entries.exit.i_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_entries.exit.i

land.rhs.i95.i:                                   ; preds = %do.body.i
  %.b40.i.i = load i1, ptr @static_key_entries.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i95.i.static_key_entries.exit.i_crit_edge, label %if.then.i96.i, !prof !95

land.rhs.i95.i.static_key_entries.exit.i_crit_edge: ; preds = %land.rhs.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_entries.exit.i

if.then.i96.i:                                    ; preds = %land.rhs.i95.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @static_key_entries.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 349, i32 noundef 9, ptr noundef null) #7
  br label %static_key_entries.exit.i

static_key_entries.exit.i:                        ; preds = %if.then.i96.i, %land.rhs.i95.i.static_key_entries.exit.i_crit_edge, %do.body.i.static_key_entries.exit.i_crit_edge
  %45 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %30, align 4
  %and36.i97.i = and i32 %46, -4
  %47 = inttoptr i32 %and36.i97.i to ptr
  %entries.i = getelementptr inbounds %struct.static_key_mod, ptr %call7.i.i92.i, i32 0, i32 1
  %48 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %entries.i, align 4
  %49 = ptrtoint ptr %call7.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %call7.i.i92.i, align 8
  %50 = ptrtoint ptr %call7.i.i92.i to i32
  %51 = load i32, ptr %30, align 4
  %and36.i103.i = and i32 %51, 1
  %or.i104.i = or i32 %and36.i103.i, %50
  %or.i105.i = or i32 %or.i104.i, 2
  store i32 %or.i105.i, ptr %30, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %static_key_entries.exit.i, %if.end13.i.if.end26.i_crit_edge
  %mod27.i = getelementptr inbounds %struct.static_key_mod, ptr %call7.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %mod27.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %data, ptr %mod27.i, align 8
  %entries28.i = getelementptr inbounds %struct.static_key_mod, ptr %call7.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %entries28.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %iter.0132.i, ptr %entries28.i, align 4
  %54 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %30, align 4
  %and.i.i.i = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %land.rhs.i106.i, label %if.end26.i.static_key_mod.exit.i_crit_edge

if.end26.i.static_key_mod.exit.i_crit_edge:       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_mod.exit.i

land.rhs.i106.i:                                  ; preds = %if.end26.i
  %.b39.i.i = load i1, ptr @static_key_mod.__already_done, align 1
  br i1 %.b39.i.i, label %land.rhs.i106.i.static_key_mod.exit.i_crit_edge, label %if.then.i107.i, !prof !95

land.rhs.i106.i.static_key_mod.exit.i_crit_edge:  ; preds = %land.rhs.i106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_mod.exit.i

if.then.i107.i:                                   ; preds = %land.rhs.i106.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @static_key_mod.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 529, i32 noundef 9, ptr noundef null) #7
  br label %static_key_mod.exit.i

static_key_mod.exit.i:                            ; preds = %if.then.i107.i, %land.rhs.i106.i.static_key_mod.exit.i_crit_edge, %if.end26.i.static_key_mod.exit.i_crit_edge
  %56 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %30, align 4
  %and.i108.i = and i32 %57, -4
  %58 = inttoptr i32 %and.i108.i to ptr
  %59 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %call7.i.i.i, align 8
  %60 = ptrtoint ptr %call7.i.i.i to i32
  %61 = load i32, ptr %30, align 4
  %and36.i114.i = and i32 %61, 1
  %or.i115.i = or i32 %and36.i114.i, %60
  %or.i117.i = or i32 %or.i115.i, 2
  store i32 %or.i117.i, ptr %30, align 4
  %62 = ptrtoint ptr %key.i125.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %key.i125.i, align 4
  %and.i.i118.i = and i32 %63, -4
  %64 = inttoptr i32 %and.i.i118.i to ptr
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %64, i32 noundef 4) #7
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp13.i.i = icmp eq i32 %66, 0
  %67 = ptrtoint ptr %key.i125.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %key.i125.i, align 4
  %and.i.i120.i = and i32 %68, -4
  %69 = inttoptr i32 %and.i.i120.i to ptr
  %70 = getelementptr inbounds %struct.static_key, ptr %69, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %and.i9.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9.i.i)
  %tobool.i.i121.i = icmp ne i32 %and.i9.i.i, 0
  %cmp33.not.i = xor i1 %cmp13.i.i, %tobool.i.i121.i
  br i1 %cmp33.not.i, label %static_key_mod.exit.i.for.inc.i_crit_edge, label %if.then34.i

static_key_mod.exit.i.for.inc.i_crit_edge:        ; preds = %static_key_mod.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then34.i:                                      ; preds = %static_key_mod.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__jump_label_update(ptr noundef %14, ptr noundef %iter.0132.i, ptr noundef nonnull %add.ptr.i, i1 noundef zeroext true) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then34.i, %static_key_mod.exit.i.for.inc.i_crit_edge, %static_key_set_entries.exit.i, %within_module_init.exit.thread.i.for.inc.i_crit_edge
  %key.1.ph.i = phi ptr [ %14, %static_key_mod.exit.i.for.inc.i_crit_edge ], [ %14, %if.then34.i ], [ %key.0135.i, %within_module_init.exit.thread.i.for.inc.i_crit_edge ], [ %14, %static_key_set_entries.exit.i ]
  %incdec.ptr.i = getelementptr %struct.jump_entry, ptr %iter.0132.i, i32 1
  %cmp1.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sw.epilog_crit_edge

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end:                                           ; preds = %if.then18.i, %if.end9.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 750, i32 noundef 9, ptr noundef nonnull @.str.8) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end, %entry.sw.epilog.sink.split_crit_edge
  %tobool.not.i.ph = phi i32 [ 32781, %do.end ], [ 1, %entry.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @jump_label_del_module(ptr noundef %data)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.inc.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %tobool.not.i = phi i32 [ 1, %if.end.i.sw.epilog_crit_edge ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge ], [ %tobool.not.i.ph, %sw.epilog.sink.split ], [ 1, %for.inc.i.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @jump_label_mutex) #7
  tail call void @cpus_read_unlock() #7
  ret i32 %tobool.not.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jump_label_del_module(ptr noundef readonly %mod) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jump_entries = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 47
  %0 = ptrtoint ptr %jump_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jump_entries, align 16
  %num_jump_entries = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 48
  %2 = ptrtoint ptr %num_jump_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_jump_entries, align 4
  %add.ptr = getelementptr %struct.jump_entry, ptr %1, i32 %3
  %cmp141 = icmp ult ptr %1, %add.ptr
  br i1 %cmp141, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %init_layout.i.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 26
  %size.i.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 26, i32 1
  %core_layout.i.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 25
  %size.i5.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 25, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %iter.0143 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %key.0142 = phi ptr [ null, %for.body.lr.ph ], [ %key.1, %for.inc.for.body_crit_edge ]
  %key.i = getelementptr inbounds %struct.jump_entry, ptr %iter.0143, i32 0, i32 2
  %4 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key.i, align 4
  %and.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i to ptr
  %cmp1 = icmp eq ptr %key.0142, %6
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %init_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_layout.i.i, align 16
  %9 = ptrtoint ptr %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %9)
  %cmp.not.i.i = icmp ult i32 %and.i, %9
  br i1 %cmp.not.i.i, label %if.end.lor.rhs.i_crit_edge, label %within_module_init.exit.i

if.end.lor.rhs.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

within_module_init.exit.i:                        ; preds = %if.end
  %10 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %and.i)
  %cmp4.i.i = icmp ugt i32 %add.i.i, %and.i
  br i1 %cmp4.i.i, label %within_module_init.exit.i.for.inc_crit_edge, label %within_module_init.exit.i.lor.rhs.i_crit_edge

within_module_init.exit.i.lor.rhs.i_crit_edge:    ; preds = %within_module_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

within_module_init.exit.i.for.inc_crit_edge:      ; preds = %within_module_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.rhs.i:                                        ; preds = %within_module_init.exit.i.lor.rhs.i_crit_edge, %if.end.lor.rhs.i_crit_edge
  %12 = ptrtoint ptr %core_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core_layout.i.i, align 128
  %14 = ptrtoint ptr %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %14)
  %cmp.not.i4.i = icmp ult i32 %and.i, %14
  br i1 %cmp.not.i4.i, label %lor.rhs.i.if.end5_crit_edge, label %within_module.exit

lor.rhs.i.if.end5_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

within_module.exit:                               ; preds = %lor.rhs.i
  %15 = ptrtoint ptr %size.i5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i5.i, align 4
  %add.i6.i = add i32 %16, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i6.i, i32 %and.i)
  %cmp4.i7.i = icmp ugt i32 %add.i6.i, %and.i
  br i1 %cmp4.i7.i, label %within_module.exit.for.inc_crit_edge, label %within_module.exit.if.end5_crit_edge

within_module.exit.if.end5_crit_edge:             ; preds = %within_module.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

within_module.exit.for.inc_crit_edge:             ; preds = %within_module.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end5:                                          ; preds = %within_module.exit.if.end5_crit_edge, %lor.rhs.i.if.end5_crit_edge
  %17 = getelementptr inbounds %struct.static_key, ptr %6, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %and.i114 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool.i.not = icmp eq i32 %and.i114, 0
  br i1 %tobool.i.not, label %do.end, label %static_key_mod.exit, !prof !91

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 704, i32 noundef 9, ptr noundef null) #7
  br label %for.inc

static_key_mod.exit:                              ; preds = %if.end5
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  %and.i115 = and i32 %21, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool32.not138 = icmp eq i32 %and.i115, 0
  br i1 %tobool32.not138, label %static_key_mod.exit.do.end55.critedge_crit_edge, label %land.rhs.preheader

static_key_mod.exit.do.end55.critedge_crit_edge:  ; preds = %static_key_mod.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55.critedge

land.rhs.preheader:                               ; preds = %static_key_mod.exit
  %22 = inttoptr i32 %and.i115 to ptr
  %mod33151 = getelementptr inbounds %struct.static_key_mod, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %mod33151 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mod33151, align 4
  %cmp34.not152 = icmp eq ptr %24, %mod
  br i1 %cmp34.not152, label %land.rhs.preheader.if.end71.critedge_crit_edge, label %land.rhs.preheader.while.body_crit_edge

land.rhs.preheader.while.body_crit_edge:          ; preds = %land.rhs.preheader
  br label %while.body

land.rhs.preheader.if.end71.critedge_crit_edge:   ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.critedge

land.rhs:                                         ; preds = %while.body
  %mod33 = getelementptr inbounds %struct.static_key_mod, ptr %28, i32 0, i32 2
  %25 = ptrtoint ptr %mod33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mod33, align 4
  %cmp34.not = icmp eq ptr %26, %mod
  br i1 %cmp34.not, label %land.rhs.if.end71.critedge_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

land.rhs.if.end71.critedge_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.critedge

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.preheader.while.body_crit_edge
  %jlm.0139153 = phi ptr [ %28, %land.rhs.while.body_crit_edge ], [ %22, %land.rhs.preheader.while.body_crit_edge ]
  %27 = ptrtoint ptr %jlm.0139153 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %jlm.0139153, align 4
  %tobool32.not = icmp eq ptr %28, null
  br i1 %tobool32.not, label %while.body.do.end55.critedge_crit_edge, label %land.rhs

while.body.do.end55.critedge_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55.critedge

do.end55.critedge:                                ; preds = %while.body.do.end55.critedge_crit_edge, %static_key_mod.exit.do.end55.critedge_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 716, i32 noundef 9, ptr noundef null) #7
  br label %for.inc

if.end71.critedge:                                ; preds = %land.rhs.if.end71.critedge_crit_edge, %land.rhs.preheader.if.end71.critedge_crit_edge
  %prev.0140.lcssa = phi ptr [ %17, %land.rhs.preheader.if.end71.critedge_crit_edge ], [ %jlm.0139153, %land.rhs.if.end71.critedge_crit_edge ]
  %jlm.0139.lcssa = phi ptr [ %22, %land.rhs.preheader.if.end71.critedge_crit_edge ], [ %28, %land.rhs.if.end71.critedge_crit_edge ]
  %cmp72 = icmp eq ptr %prev.0140.lcssa, %17
  %29 = ptrtoint ptr %jlm.0139.lcssa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %jlm.0139.lcssa, align 4
  br i1 %cmp72, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.end71.critedge
  %31 = ptrtoint ptr %30 to i32
  %and.i116 = and i32 %31, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.not.i = icmp eq i32 %and.i116, 0
  br i1 %tobool.not.i, label %if.then73.static_key_set_mod.exit_crit_edge, label %land.rhs.i117

if.then73.static_key_set_mod.exit_crit_edge:      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_set_mod.exit

land.rhs.i117:                                    ; preds = %if.then73
  %.b42.i = load i1, ptr @static_key_set_mod.__already_done, align 1
  br i1 %.b42.i, label %land.rhs.i117.static_key_set_mod.exit_crit_edge, label %if.then.i118, !prof !95

land.rhs.i117.static_key_set_mod.exit_crit_edge:  ; preds = %land.rhs.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_set_mod.exit

if.then.i118:                                     ; preds = %land.rhs.i117
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @static_key_set_mod.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 544, i32 noundef 9, ptr noundef null) #7
  br label %static_key_set_mod.exit

static_key_set_mod.exit:                          ; preds = %if.then.i118, %land.rhs.i117.static_key_set_mod.exit_crit_edge, %if.then73.static_key_set_mod.exit_crit_edge
  %32 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %17, align 4
  %and36.i = and i32 %33, 3
  %or.i = or i32 %and36.i, %31
  store i32 %or.i, ptr %17, align 4
  br label %if.end76

if.else:                                          ; preds = %if.end71.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %prev.0140.lcssa to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %30, ptr %prev.0140.lcssa, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else, %static_key_set_mod.exit
  tail call void @kfree(ptr noundef nonnull %jlm.0139.lcssa) #7
  %35 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %17, align 4
  %and.i.i119 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i119)
  %tobool.i.not.i120 = icmp eq i32 %and.i.i119, 0
  br i1 %tobool.i.not.i120, label %land.rhs.i122, label %if.end76.static_key_mod.exit125_crit_edge

if.end76.static_key_mod.exit125_crit_edge:        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_mod.exit125

land.rhs.i122:                                    ; preds = %if.end76
  %.b39.i121 = load i1, ptr @static_key_mod.__already_done, align 1
  br i1 %.b39.i121, label %land.rhs.i122.static_key_mod.exit125_crit_edge, label %if.then.i123, !prof !95

land.rhs.i122.static_key_mod.exit125_crit_edge:   ; preds = %land.rhs.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_mod.exit125

if.then.i123:                                     ; preds = %land.rhs.i122
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @static_key_mod.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 529, i32 noundef 9, ptr noundef null) #7
  br label %static_key_mod.exit125

static_key_mod.exit125:                           ; preds = %if.then.i123, %land.rhs.i122.static_key_mod.exit125_crit_edge, %if.end76.static_key_mod.exit125_crit_edge
  %37 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %17, align 4
  %and.i124 = and i32 %38, -4
  %39 = inttoptr i32 %and.i124 to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %cmp79 = icmp eq ptr %41, null
  br i1 %cmp79, label %if.then80, label %static_key_mod.exit125.for.inc_crit_edge

static_key_mod.exit125.for.inc_crit_edge:         ; preds = %static_key_mod.exit125
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then80:                                        ; preds = %static_key_mod.exit125
  %entries = getelementptr inbounds %struct.static_key_mod, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %entries, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i126 = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i127 = icmp eq i32 %and.i126, 0
  br i1 %tobool.not.i127, label %if.then80.static_key_set_entries.exit_crit_edge, label %land.rhs.i129

if.then80.static_key_set_entries.exit_crit_edge:  ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_set_entries.exit

land.rhs.i129:                                    ; preds = %if.then80
  %.b42.i128 = load i1, ptr @static_key_set_entries.__already_done, align 1
  br i1 %.b42.i128, label %land.rhs.i129.static_key_set_entries.exit_crit_edge, label %if.then.i130, !prof !95

land.rhs.i129.static_key_set_entries.exit_crit_edge: ; preds = %land.rhs.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %static_key_set_entries.exit

if.then.i130:                                     ; preds = %land.rhs.i129
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @static_key_set_entries.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #7
  br label %static_key_set_entries.exit

static_key_set_entries.exit:                      ; preds = %if.then.i130, %land.rhs.i129.static_key_set_entries.exit_crit_edge, %if.then80.static_key_set_entries.exit_crit_edge
  %45 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %17, align 4
  %and36.i131 = and i32 %46, 1
  %.masked = and i32 %44, -3
  %and.i133 = or i32 %and36.i131, %.masked
  store i32 %and.i133, ptr %17, align 4
  tail call void @kfree(ptr noundef %39) #7
  br label %for.inc

for.inc:                                          ; preds = %static_key_set_entries.exit, %static_key_mod.exit125.for.inc_crit_edge, %do.end55.critedge, %do.end, %within_module.exit.for.inc_crit_edge, %within_module_init.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %key.1 = phi ptr [ %key.0142, %for.body.for.inc_crit_edge ], [ %6, %within_module.exit.for.inc_crit_edge ], [ %6, %static_key_set_entries.exit ], [ %6, %static_key_mod.exit125.for.inc_crit_edge ], [ %6, %do.end ], [ %6, %do.end55.critedge ], [ %6, %within_module_init.exit.i.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.jump_entry, ptr %iter.0143, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__module_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__jump_label_update(ptr noundef readnone %key, ptr noundef %entry1, ptr noundef readnone %stop, i1 noundef zeroext %init) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp13 = icmp ult ptr %entry1, %stop
  br i1 %cmp13, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %entry.addr.014 = phi ptr [ %incdec.ptr, %for.inc.land.rhs_crit_edge ], [ %entry1, %entry.land.rhs_crit_edge ]
  %key.i = getelementptr inbounds %struct.jump_entry, ptr %entry.addr.014, i32 0, i32 2
  %0 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key.i, align 4
  %and.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i to ptr
  %cmp2 = icmp eq ptr %2, %key
  br i1 %cmp2, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %and.i.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %or.cond = select i1 %init, i1 true, i1 %tobool.i.not.i
  br i1 %or.cond, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %3 = ptrtoint ptr %entry.addr.014 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %entry.addr.014, align 4
  %call3.i = tail call i32 @kernel_text_address(i32 noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  %5 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key.i, align 4
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then

if.then5.i:                                       ; preds = %if.end.i
  %and.i55.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %tobool.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %tobool.i56.not.i, label %land.rhs.i, label %if.then5.i.for.inc_crit_edge

if.then5.i.for.inc_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.rhs.i:                                       ; preds = %if.then5.i
  %.b53.i = load i1, ptr @jump_label_can_update.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.for.inc_crit_edge, label %if.then16.i, !prof !95

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then16.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @jump_label_can_update.__already_done, align 1
  %7 = ptrtoint ptr %entry.addr.014 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %entry.addr.014, align 4
  %9 = inttoptr i32 %8 to ptr
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 422, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %9) #7
  br label %for.inc

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i11 = and i32 %6, -4
  %10 = inttoptr i32 %and.i.i11 to ptr
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %10, i32 noundef 4) #7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13.i = icmp ne i32 %12, 0
  %13 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key.i, align 4
  %and.i12.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.i.i = icmp ne i32 %and.i12.i, 0
  %xor10.i = xor i1 %cmp13.i, %tobool.i.i
  %xor.i = zext i1 %xor10.i to i32
  tail call void @arch_jump_label_transform(ptr noundef %entry.addr.014, i32 noundef %xor.i) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then16.i, %land.rhs.i.for.inc_crit_edge, %if.then5.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.jump_entry, ptr %entry.addr.014, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %stop
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_text_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__module_text_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76, !78}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__ksymtab_static_key_count, !1, !"__ksymtab_static_key_count", i1 false, i1 false}
!1 = !{!"../kernel/jump_label.c", i32 114, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/jump_label.c", i32 120, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.static_key_slow_inc_cpuslocked, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_static_key_slow_inc, !7, !"__ksymtab_static_key_slow_inc", i1 false, i1 false}
!7 = !{!"../kernel/jump_label.c", i32 162, i32 1}
!8 = !{ptr @__func__.static_key_enable_cpuslocked, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/jump_label.c", i32 166, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../kernel/jump_label.c", i32 170, i32 3}
!12 = !{ptr @__ksymtab_static_key_enable_cpuslocked, !13, !"__ksymtab_static_key_enable_cpuslocked", i1 false, i1 false}
!13 = !{!"../kernel/jump_label.c", i32 185, i32 1}
!14 = !{ptr @__ksymtab_static_key_enable, !15, !"__ksymtab_static_key_enable", i1 false, i1 false}
!15 = !{!"../kernel/jump_label.c", i32 193, i32 1}
!16 = !{ptr @__func__.static_key_disable_cpuslocked, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/jump_label.c", i32 197, i32 2}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../kernel/jump_label.c", i32 201, i32 3}
!20 = !{ptr @__ksymtab_static_key_disable_cpuslocked, !21, !"__ksymtab_static_key_disable_cpuslocked", i1 false, i1 false}
!21 = !{!"../kernel/jump_label.c", i32 210, i32 1}
!22 = !{ptr @__ksymtab_static_key_disable, !23, !"__ksymtab_static_key_disable", i1 false, i1 false}
!23 = !{!"../kernel/jump_label.c", i32 218, i32 1}
!24 = !{ptr @__ksymtab_jump_label_update_timeout, !25, !"__ksymtab_jump_label_update_timeout", i1 false, i1 false}
!25 = !{!"../kernel/jump_label.c", i32 265, i32 1}
!26 = !{ptr @__func__.static_key_slow_dec, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/jump_label.c", i32 269, i32 2}
!28 = !{ptr @__ksymtab_static_key_slow_dec, !29, !"__ksymtab_static_key_slow_dec", i1 false, i1 false}
!29 = !{!"../kernel/jump_label.c", i32 272, i32 1}
!30 = !{ptr @__func__.static_key_slow_dec_cpuslocked, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/jump_label.c", i32 276, i32 2}
!32 = !{ptr @__func__.__static_key_slow_dec_deferred, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/jump_label.c", i32 284, i32 2}
!34 = !{ptr @__ksymtab___static_key_slow_dec_deferred, !35, !"__ksymtab___static_key_slow_dec_deferred", i1 false, i1 false}
!35 = !{!"../kernel/jump_label.c", i32 291, i32 1}
!36 = !{ptr @__func__.__static_key_deferred_flush, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/jump_label.c", i32 295, i32 2}
!38 = !{ptr @__ksymtab___static_key_deferred_flush, !39, !"__ksymtab___static_key_deferred_flush", i1 false, i1 false}
!39 = !{!"../kernel/jump_label.c", i32 298, i32 1}
!40 = !{ptr @__func__.jump_label_rate_limit, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/jump_label.c", i32 303, i32 2}
!42 = !{ptr @jump_label_rate_limit.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../kernel/jump_label.c", i32 305, i32 2}
!44 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @jump_label_rate_limit.__key.3, !43, !"__key", i1 false, i1 false}
!46 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__ksymtab_jump_label_rate_limit, !48, !"__ksymtab_jump_label_rate_limit", i1 false, i1 false}
!48 = !{!"../kernel/jump_label.c", i32 307, i32 1}
!49 = !{ptr @__initcall__kmod_jump_label__189_774_jump_label_init_moduleearly, !50, !"__initcall__kmod_jump_label__189_774_jump_label_init_moduleearly", i1 false, i1 false}
!50 = !{!"../kernel/jump_label.c", i32 774, i32 1}
!51 = !{ptr @__initcall__kmod_jump_label__190_867_jump_label_testearly, !52, !"__initcall__kmod_jump_label__190_867_jump_label_testearly", i1 false, i1 false}
!52 = !{!"../kernel/jump_label.c", i32 867, i32 1}
!53 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/jump_label.c", i32 23, i32 8}
!55 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @jump_label_mutex, !54, !"jump_label_mutex", i1 false, i1 false}
!57 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/jump_label.c", i32 235, i32 2}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../kernel/jump_label.c", i32 387, i32 2}
!61 = !{ptr @jump_label_module_nb, !62, !"jump_label_module_nb", i1 false, i1 false}
!62 = !{!"../kernel/jump_label.c", i32 765, i32 30}
!63 = !{ptr @.str.8, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/jump_label.c", i32 750, i32 4}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../kernel/jump_label.c", i32 349, i32 2}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../kernel/jump_label.c", i32 544, i32 2}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../kernel/jump_label.c", i32 529, i32 2}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../kernel/jump_label.c", i32 420, i32 3}
!73 = !{ptr @.str.9, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../kernel/jump_label.c", i32 557, i32 2}
!76 = !{ptr @sk_true, !77, !"sk_true", i1 false, i1 false}
!77 = !{!"../kernel/jump_label.c", i32 834, i32 8}
!78 = !{ptr @sk_false, !79, !"sk_false", i1 false, i1 false}
!79 = !{!"../kernel/jump_label.c", i32 835, i32 8}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2148596589}
!93 = !{i64 980279, i64 980303, i64 980324, i64 980341, i64 980358}
!94 = !{i64 2148596815}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2148576733}
!97 = !{i64 2148494766, i64 2148494792, i64 2148494821, i64 2148494855, i64 2148494886, i64 2148494909}
!98 = !{i64 2152830873}
!99 = !{i64 2152830970}
!100 = !{i64 2148494185}
!101 = !{i64 980785, i64 980810, i64 980832, i64 980848, i64 980860, i64 980880, i64 980904, i64 980920, i64 980932}
!102 = !{i64 2148494373}
!103 = !{!"branch_weights", i32 1, i32 4001}
!104 = !{i64 2148583218}
!105 = !{i64 2148497951, i64 2148497983, i64 2148498012, i64 2148498046, i64 2148498077, i64 2148498100}
!106 = !{i64 2148583447}
!107 = !{i64 2152824326}
!108 = !{i64 2152825499}
!109 = !{i64 2148308159, i64 2148308164, i64 2148308177, i64 2148308221, i64 2148308255, i64 2148308276}
!110 = !{i64 2148308562, i64 2148308567, i64 2148308588, i64 2148308632, i64 2148308666, i64 2148308687}
!111 = !{i64 2152826072}
!112 = !{i64 2152826169}
