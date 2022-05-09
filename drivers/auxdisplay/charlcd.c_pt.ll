; ModuleID = '/llk/IR_all_yes/drivers/auxdisplay/charlcd.c_pt.bc'
source_filename = "../drivers/auxdisplay/charlcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+charlcd_backlight\22, \22a\22\09"
module asm "\09.weak\09__crc_charlcd_backlight\09\09\09\09"
module asm "\09.long\09__crc_charlcd_backlight\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_charlcd_backlight:\09\09\09\09\09"
module asm "\09.asciz \09\22charlcd_backlight\22\09\09\09\09\09"
module asm "__kstrtabns_charlcd_backlight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+charlcd_poke\22, \22a\22\09"
module asm "\09.weak\09__crc_charlcd_poke\09\09\09\09"
module asm "\09.long\09__crc_charlcd_poke\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_charlcd_poke:\09\09\09\09\09"
module asm "\09.asciz \09\22charlcd_poke\22\09\09\09\09\09"
module asm "__kstrtabns_charlcd_poke:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+charlcd_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_charlcd_alloc\09\09\09\09"
module asm "\09.long\09__crc_charlcd_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_charlcd_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22charlcd_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_charlcd_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+charlcd_free\22, \22a\22\09"
module asm "\09.weak\09__crc_charlcd_free\09\09\09\09"
module asm "\09.long\09__crc_charlcd_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_charlcd_free:\09\09\09\09\09"
module asm "\09.asciz \09\22charlcd_free\22\09\09\09\09\09"
module asm "__kstrtabns_charlcd_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+charlcd_register\22, \22a\22\09"
module asm "\09.weak\09__crc_charlcd_register\09\09\09\09"
module asm "\09.long\09__crc_charlcd_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_charlcd_register:\09\09\09\09\09"
module asm "\09.asciz \09\22charlcd_register\22\09\09\09\09\09"
module asm "__kstrtabns_charlcd_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+charlcd_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_charlcd_unregister\09\09\09\09"
module asm "\09.long\09__crc_charlcd_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_charlcd_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22charlcd_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_charlcd_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.charlcd_priv = type { %struct.charlcd, %struct.delayed_work, %struct.mutex, i8, i8, i32, %struct.anon.1, [0 x i64] }
%struct.charlcd = type { ptr, ptr, i32, i32, %struct.anon, ptr }
%struct.anon = type { i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.1 = type { [25 x i8], i32 }
%struct.charlcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__kstrtab_charlcd_backlight = external dso_local constant [0 x i8], align 1
@__kstrtabns_charlcd_backlight = external dso_local constant [0 x i8], align 1
@__ksymtab_charlcd_backlight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @charlcd_backlight to i32), ptr @__kstrtab_charlcd_backlight, ptr @__kstrtabns_charlcd_backlight }, section "___ksymtab_gpl+charlcd_backlight", align 4
@__kstrtab_charlcd_poke = external dso_local constant [0 x i8], align 1
@__kstrtabns_charlcd_poke = external dso_local constant [0 x i8], align 1
@__ksymtab_charlcd_poke = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @charlcd_poke to i32), ptr @__kstrtab_charlcd_poke, ptr @__kstrtabns_charlcd_poke }, section "___ksymtab_gpl+charlcd_poke", align 4
@__kstrtab_charlcd_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_charlcd_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_charlcd_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @charlcd_alloc to i32), ptr @__kstrtab_charlcd_alloc, ptr @__kstrtabns_charlcd_alloc }, section "___ksymtab_gpl+charlcd_alloc", align 4
@__kstrtab_charlcd_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_charlcd_free = external dso_local constant [0 x i8], align 1
@__ksymtab_charlcd_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @charlcd_free to i32), ptr @__kstrtab_charlcd_free, ptr @__kstrtabns_charlcd_free }, section "___ksymtab_gpl+charlcd_free", align 4
@charlcd_dev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 156, ptr @.str.8, ptr @charlcd_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@the_charlcd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@panel_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @panel_notify_sys, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_charlcd_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_charlcd_register = external dso_local constant [0 x i8], align 1
@__ksymtab_charlcd_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @charlcd_register to i32), ptr @__kstrtab_charlcd_register, ptr @__kstrtabns_charlcd_register }, section "___ksymtab_gpl+charlcd_register", align 4
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0CLCD driver unloaded.\1B[Lc\1B[Lb\1B[L-\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_charlcd_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_charlcd_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_charlcd_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @charlcd_unregister to i32), ptr @__kstrtab_charlcd_unregister, ptr @__kstrtabns_charlcd_unregister }, section "___ksymtab_gpl+charlcd_unregister", align 4
@__UNIQUE_ID_file223 = internal constant [40 x i8] c"charlcd.file=drivers/auxdisplay/charlcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license224 = internal constant [20 x i8] c"charlcd.license=GPL\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@charlcd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->bl_tempo_lock\00", [43 x i8] zeroinitializer }, align 32
@charlcd_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&priv->bl_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@charlcd_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&priv->bl_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/auxdisplay/charlcd.c\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@charlcd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @charlcd_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @charlcd_open, ptr null, ptr @charlcd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"[2J\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"[H\00", [29 x i8] zeroinitializer }, align 32
@charlcd_available = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 1 }, [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0CReloading\0ASystem...\1B[Lc\1B[Lb\1B[L+\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0CSystem Halted.\1B[Lc\1B[Lb\1B[L+\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\0CPower off.\1B[Lc\1B[Lb\1B[L+\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 8, i64 9, i64 12, i64 13, i64 27]
@__sancov_gen_cov_switch_values.14 = internal global [24 x i64] [i64 22, i64 8, i64 42, i64 43, i64 45, i64 66, i64 67, i64 68, i64 70, i64 71, i64 73, i64 76, i64 78, i64 82, i64 98, i64 99, i64 100, i64 102, i64 107, i64 108, i64 110, i64 114, i64 120, i64 121]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 59, i64 120, i64 121]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"charlcd_dev\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 530, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"the_charlcd\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 464, i32 24 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"panel_notifier\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 642, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 669, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 572, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 573, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 581, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 532, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"charlcd_fops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 523, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 438, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 442, i32 41 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"charlcd_available\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 54, i32 17 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 628, i32 9 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 631, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [32 x i8] c"../drivers/auxdisplay/charlcd.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 634, i32 21 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file223, ptr @__UNIQUE_ID_license224, ptr @__ksymtab_charlcd_alloc, ptr @__ksymtab_charlcd_backlight, ptr @__ksymtab_charlcd_free, ptr @__ksymtab_charlcd_poke, ptr @__ksymtab_charlcd_register, ptr @__ksymtab_charlcd_unregister, ptr @charlcd_dev, ptr @the_charlcd, ptr @panel_notifier, ptr @.str, ptr @charlcd_init.__key, ptr @.str.1, ptr @charlcd_init.__key.2, ptr @.str.3, ptr @charlcd_init.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @charlcd_fops, ptr @.str.9, ptr @.str.10, ptr @charlcd_available, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charlcd_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @the_charlcd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charlcd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charlcd_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charlcd_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charlcd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charlcd_available to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @charlcd_backlight(ptr noundef %lcd, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lcd, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bl_tempo_lock = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bl_tempo_lock, i32 noundef 0) #7
  %bl_tempo = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 3
  %4 = ptrtoint ptr %bl_tempo to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bl_tempo, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lcd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %lcd, i32 noundef %on) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %bl_tempo_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @charlcd_poke(ptr noundef %lcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lcd, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bl_work = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bl_work) #7
  %bl_tempo_lock = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bl_tempo_lock, i32 noundef 0) #7
  %bl_tempo = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 3
  %4 = ptrtoint ptr %bl_tempo to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bl_tempo, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lcd, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void %11(ptr noundef %lcd, i32 noundef 1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %12 = ptrtoint ptr %bl_tempo to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bl_tempo, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %bl_work, i32 noundef 400) #7
  tail call void @mutex_unlock(ptr noundef %bl_tempo_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @charlcd_alloc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 264) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %len = getelementptr inbounds %struct.charlcd_priv, ptr %call7.i.i, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @charlcd_free(ptr noundef %lcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %lcd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @charlcd_register(ptr noundef %lcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %height.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 2
  %0 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp sgt i32 %1, 1
  %or2.i = select i1 %cmp.i, i32 92, i32 28
  %flags.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 5
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or2.i, ptr %flags.i, align 8
  %3 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lcd, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.body.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bl_tempo_lock.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %bl_tempo_lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @charlcd_init.__key) #7
  %bl_work.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 1
  tail call void @__init_work(ptr noundef %bl_work.i, i32 noundef 0) #7
  %7 = ptrtoint ptr %bl_work.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %bl_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @charlcd_init.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry11.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry11.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @charlcd_bl_off, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @charlcd_init.__key.4) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %entry.if.end.i_crit_edge
  %11 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lcd, align 4
  %init_display.i = getelementptr inbounds %struct.charlcd_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %init_display.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_display.i, align 4
  %tobool23.not.i = icmp eq ptr %14, null
  br i1 %tobool23.not.i, label %do.end36.i, label %if.end52.i, !prof !62

do.end36.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 581, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end52.i:                                       ; preds = %if.end.i
  %call.i = tail call i32 %14(ptr noundef %lcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool55.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool55.not.i, label %if.end, label %if.end52.i.cleanup_crit_edge

if.end52.i.cleanup_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end52.i
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 27) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 91) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 76) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 99) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 27) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 91) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 76) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 98) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 27) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 91) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 76) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext 42) #7
  %must_clear.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 4
  %15 = ptrtoint ptr %must_clear.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %must_clear.i, align 1
  %addr.i.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %addr.i.i, align 4
  %y.i.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %y.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %y.i.i, align 4
  %18 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lcd, align 4
  %home.i.i = getelementptr inbounds %struct.charlcd_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %home.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %home.i.i, align 4
  %call.i76.i = tail call i32 %21(ptr noundef %lcd) #7
  %call1 = tail call i32 @misc_register(ptr noundef nonnull @charlcd_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %lcd, ptr @the_charlcd, align 4
  %call5 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @panel_notifier) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.end52.i.cleanup_crit_edge, %do.end36.i
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call.i, %if.end52.i.cleanup_crit_edge ], [ -22, %do.end36.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @charlcd_unregister(ptr noundef %lcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @panel_notifier) #7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %tmp.010.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ @.str, %entry ]
  %count.09.i = phi i32 [ %dec11.i, %if.end.i.for.body.i_crit_edge ], [ 33, %entry ]
  %dec11.i = add nsw i32 %count.09.i, -1
  %and.i = and i32 %count.09.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 543, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %0 = ptrtoint ptr %tmp.010.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tmp.010.i, align 1
  tail call fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext %1) #7
  %incdec.ptr.i = getelementptr i8, ptr %tmp.010.i, i32 1
  %exitcond.not = icmp eq ptr %tmp.010.i, getelementptr inbounds ([34 x i8], ptr @.str, i32 0, i32 32)
  br i1 %exitcond.not, label %charlcd_puts.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

charlcd_puts.exit:                                ; preds = %if.end.i
  tail call void @misc_deregister(ptr noundef nonnull @charlcd_dev) #7
  store ptr null, ptr @the_charlcd, align 4
  %2 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %charlcd_puts.exit.if.end_crit_edge, label %if.then

charlcd_puts.exit.if.end_crit_edge:               ; preds = %charlcd_puts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %charlcd_puts.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bl_work = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 1
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bl_work) #7
  %6 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lcd, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %lcd, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %charlcd_puts.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @charlcd_bl_off(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  %bl_tempo_lock = getelementptr i8, ptr %work, i32 100
  tail call void @mutex_lock_nested(ptr noundef %bl_tempo_lock, i32 noundef 0) #7
  %bl_tempo = getelementptr i8, ptr %work, i32 192
  %0 = ptrtoint ptr %bl_tempo to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bl_tempo, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %bl_tempo to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bl_tempo, align 4
  %flags = getelementptr i8, ptr %work, i32 196
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void %8(ptr noundef %add.ptr, i32 noundef 0) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %bl_tempo_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charlcd_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not16 = icmp eq i32 %count, 0
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %entry.for.body_crit_edge
  %count.addr.018 = phi i32 [ %dec19, %if.end8.for.body_crit_edge ], [ %count, %entry.for.body_crit_edge ]
  %tmp.017 = phi ptr [ %incdec.ptr, %if.end8.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %dec19 = add i32 %count.addr.018, -1
  %and = and i32 %count.addr.018, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 479, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 482) #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !63
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %tmp.017, i32 -1226833921) #7, !srcloc !66
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %asmresult5 = extractvalue { i32, i32 } %3, 1
  %conv = trunc i32 %asmresult5 to i8
  %4 = load ptr, ptr @the_charlcd, align 4
  tail call fastcc void @charlcd_write_char(ptr noundef %4, i8 noundef zeroext %conv)
  %5 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ppos, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %ppos, align 8
  %incdec.ptr = getelementptr i8, ptr %tmp.017, i32 1
  %cmp.not = icmp eq i32 %dec19, 0
  br i1 %cmp.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %entry.for.end_crit_edge
  %tmp.0.lcssa = phi ptr [ %buf, %entry.for.end_crit_edge ], [ %incdec.ptr, %if.end8.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %tmp.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %for.end ], [ -14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charlcd_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @the_charlcd, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @charlcd_available, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr nonnull @charlcd_available, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @charlcd_available, ptr nonnull @charlcd_available, i32 1, ptr nonnull elementtype(i32) @charlcd_available) #7, !srcloc !68
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.fail_crit_edge

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end2:                                          ; preds = %if.end
  %must_clear = getelementptr inbounds %struct.charlcd_priv, ptr %0, i32 0, i32 4
  %4 = ptrtoint ptr %must_clear to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %must_clear, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end2.if.end11_crit_edge, label %if.then4

if.end2.if.end11_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 8
  %clear_display = getelementptr inbounds %struct.charlcd_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %clear_display to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clear_display, align 4
  %call6 = tail call i32 %9(ptr noundef %0) #7
  %10 = ptrtoint ptr %must_clear to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %must_clear, align 1
  %addr = getelementptr inbounds %struct.charlcd, ptr %0, i32 0, i32 4
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %addr, align 8
  %y = getelementptr inbounds %struct.charlcd, ptr %0, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %y, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end2.if.end11_crit_edge
  %call12 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #7
  br label %cleanup

fail:                                             ; preds = %if.end.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ -1, %if.end.fail_crit_edge ], [ -16, %entry.fail_crit_edge ]
  %call.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @charlcd_available, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @charlcd_available, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @charlcd_available, ptr nonnull @charlcd_available, i32 1, ptr nonnull elementtype(i32) @charlcd_available) #7, !srcloc !70
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end11
  %retval.0 = phi i32 [ %ret.0, %fail ], [ %call12, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @charlcd_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @charlcd_available, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @charlcd_available, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @charlcd_available, ptr nonnull @charlcd_available, i32 1, ptr nonnull elementtype(i32) @charlcd_available) #7, !srcloc !70
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @charlcd_write_char(ptr noundef %lcd, i8 noundef zeroext %c) unnamed_addr #0 align 64 {
entry:
  %p.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %c)
  %cmp.not = icmp eq i8 %c, 10
  %len13259 = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 6, i32 1
  br i1 %cmp.not, label %if.else.thread, label %land.lhs.true

if.else.thread:                                   ; preds = %entry
  %0 = ptrtoint ptr %len13259 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len13259, align 4
  %addr41 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %width = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 3
  %1 = ptrtoint ptr %addr41 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr41, align 4
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp43256 = icmp ult i32 %2, %4
  br i1 %cmp43256, label %if.else.thread.for.body_crit_edge, label %if.else.thread.for.end_crit_edge

if.else.thread.for.end_crit_edge:                 ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.else.thread.for.body_crit_edge:                ; preds = %if.else.thread
  br label %for.body

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %len13259 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len13259, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp2 = icmp sgt i32 %6, -1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %esc_seq = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 6
  %inc = add nuw i32 %6, 1
  %7 = ptrtoint ptr %len13259 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %len13259, align 4
  %arrayidx = getelementptr [25 x i8], ptr %esc_seq, i32 0, i32 %6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %c, ptr %arrayidx, align 1
  %9 = load i32, ptr %len13259, align 4
  %arrayidx11 = getelementptr [25 x i8], ptr %esc_seq, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx11, align 1
  br label %if.end72

if.else:                                          ; preds = %land.lhs.true
  %len13 = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %len13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %len13, align 4
  %12 = zext i8 %c to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %c, label %sw.default [
    i8 27, label %sw.bb
    i8 8, label %sw.bb22
    i8 12, label %sw.bb39
    i8 9, label %sw.bb71
    i8 13, label %sw.bb61
  ]

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %esc_seq12 = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 6
  %13 = ptrtoint ptr %len13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %len13, align 4
  %14 = ptrtoint ptr %esc_seq12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %esc_seq12, align 1
  br label %if.end72

sw.bb22:                                          ; preds = %if.else
  %addr = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23.not = icmp eq i32 %16, 0
  br i1 %cmp23.not, label %sw.bb22.if.end29_crit_edge, label %if.then25

sw.bb22.if.end29_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then25:                                        ; preds = %sw.bb22
  %17 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lcd, align 4
  %shift_cursor = getelementptr inbounds %struct.charlcd_ops, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %shift_cursor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %shift_cursor, align 4
  %call = tail call i32 %20(ptr noundef %lcd, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then26, label %if.then25.if.end29_crit_edge

if.then25.if.end29_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then25.if.end29_crit_edge, %sw.bb22.if.end29_crit_edge
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %width.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 3
  %25 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.not.i = icmp ult i32 %24, %26
  br i1 %cmp.not.i, label %if.end.i, label %if.end29.charlcd_print.exit_crit_edge

if.end29.charlcd_print.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %charlcd_print.exit

if.end.i:                                         ; preds = %if.end29
  %char_conv.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 1
  %27 = ptrtoint ptr %char_conv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %char_conv.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %28, i32 32
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %c.addr.0.i = phi i8 [ %30, %if.then1.i ], [ 32, %if.end.i.if.end3.i_crit_edge ]
  %31 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lcd, align 4
  %print.i = getelementptr inbounds %struct.charlcd_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %print.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %print.i, align 4
  %conv.i = zext i8 %c.addr.0.i to i32
  %call.i = tail call i32 %34(ptr noundef %lcd, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end3.i.if.end8.i_crit_edge

if.end3.i.if.end8.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr, align 4
  %inc.i = add i32 %36, 1
  store i32 %inc.i, ptr %addr, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end8.i_crit_edge
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr, align 4
  %39 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp12.i = icmp eq i32 %38, %40
  br i1 %cmp12.i, label %if.then14.i, label %if.end8.i.charlcd_print.exit_crit_edge

if.end8.i.charlcd_print.exit_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %charlcd_print.exit

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lcd, align 4
  %gotoxy.i = getelementptr inbounds %struct.charlcd_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %gotoxy.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %gotoxy.i, align 4
  %sub.i = add i32 %38, -1
  %y.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %y.i, align 4
  %call19.i = tail call i32 %44(ptr noundef %lcd, i32 noundef %sub.i, i32 noundef %46) #7
  br label %charlcd_print.exit

charlcd_print.exit:                               ; preds = %if.then14.i, %if.end8.i.charlcd_print.exit_crit_edge, %if.end29.charlcd_print.exit_crit_edge
  %47 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lcd, align 4
  %shift_cursor31 = getelementptr inbounds %struct.charlcd_ops, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %shift_cursor31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %shift_cursor31, align 4
  %call32 = tail call i32 %50(ptr noundef %lcd, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %charlcd_print.exit.if.end72_crit_edge

charlcd_print.exit.if.end72_crit_edge:            ; preds = %charlcd_print.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then34:                                        ; preds = %charlcd_print.exit
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr, align 4
  %dec37 = add i32 %52, -1
  store i32 %dec37, ptr %addr, align 4
  br label %if.end72

sw.bb39:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lcd, align 4
  %clear_display.i = getelementptr inbounds %struct.charlcd_ops, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %clear_display.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clear_display.i, align 4
  %call.i179 = tail call i32 %56(ptr noundef %lcd) #7
  %addr.i180 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %57 = ptrtoint ptr %addr.i180 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %addr.i180, align 4
  %y.i181 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %y.i181 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %y.i181, align 4
  br label %if.end72

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.thread.for.body_crit_edge
  %59 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lcd, align 4
  %print = getelementptr inbounds %struct.charlcd_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %print to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %print, align 4
  %call46 = tail call i32 %62(ptr noundef %lcd, i32 noundef 32) #7
  %63 = ptrtoint ptr %addr41 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr41, align 4
  %inc49 = add i32 %64, 1
  store i32 %inc49, ptr %addr41, align 4
  %65 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %width, align 4
  %cmp43 = icmp ult i32 %inc49, %66
  br i1 %cmp43, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.thread.for.end_crit_edge
  %67 = ptrtoint ptr %addr41 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %addr41, align 4
  %y = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %y, align 4
  %add = add i32 %69, 1
  %height = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 2
  %70 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height, align 4
  %rem = urem i32 %add, %71
  store i32 %rem, ptr %y, align 4
  %72 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lcd, align 4
  %gotoxy = getelementptr inbounds %struct.charlcd_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %gotoxy to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gotoxy, align 4
  %call60 = tail call i32 %75(ptr noundef %lcd, i32 noundef 0, i32 noundef %rem) #7
  br label %if.end72

sw.bb61:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %addr62 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %76 = ptrtoint ptr %addr62 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %addr62, align 4
  %77 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lcd, align 4
  %gotoxy65 = getelementptr inbounds %struct.charlcd_ops, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %gotoxy65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %gotoxy65, align 4
  %y69 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %y69 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %y69, align 4
  %call70 = tail call i32 %80(ptr noundef %lcd, i32 noundef 0, i32 noundef %82) #7
  br label %if.end72

sw.bb71:                                          ; preds = %if.else
  %addr.i182 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %83 = ptrtoint ptr %addr.i182 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr.i182, align 4
  %width.i183 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 3
  %85 = ptrtoint ptr %width.i183 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %width.i183, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp.not.i184 = icmp ult i32 %84, %86
  br i1 %cmp.not.i184, label %if.end.i187, label %sw.bb71.if.end72_crit_edge

sw.bb71.if.end72_crit_edge:                       ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end.i187:                                      ; preds = %sw.bb71
  %char_conv.i185 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 1
  %87 = ptrtoint ptr %char_conv.i185 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %char_conv.i185, align 4
  %tobool.not.i186 = icmp eq ptr %88, null
  br i1 %tobool.not.i186, label %if.end.i187.if.end3.i195_crit_edge, label %if.then1.i189

if.end.i187.if.end3.i195_crit_edge:               ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i195

if.then1.i189:                                    ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i188 = getelementptr i8, ptr %88, i32 32
  %89 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i188, align 1
  br label %if.end3.i195

if.end3.i195:                                     ; preds = %if.then1.i189, %if.end.i187.if.end3.i195_crit_edge
  %c.addr.0.i190 = phi i8 [ %90, %if.then1.i189 ], [ 32, %if.end.i187.if.end3.i195_crit_edge ]
  %91 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lcd, align 4
  %print.i191 = getelementptr inbounds %struct.charlcd_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %print.i191 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %print.i191, align 4
  %conv.i192 = zext i8 %c.addr.0.i190 to i32
  %call.i193 = tail call i32 %94(ptr noundef %lcd, i32 noundef %conv.i192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool4.not.i194 = icmp eq i32 %call.i193, 0
  br i1 %tobool4.not.i194, label %if.then5.i197, label %if.end3.i195.if.end8.i199_crit_edge

if.end3.i195.if.end8.i199_crit_edge:              ; preds = %if.end3.i195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i199

if.then5.i197:                                    ; preds = %if.end3.i195
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %addr.i182 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %addr.i182, align 4
  %inc.i196 = add i32 %96, 1
  store i32 %inc.i196, ptr %addr.i182, align 4
  br label %if.end8.i199

if.end8.i199:                                     ; preds = %if.then5.i197, %if.end3.i195.if.end8.i199_crit_edge
  %97 = ptrtoint ptr %addr.i182 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %addr.i182, align 4
  %99 = ptrtoint ptr %width.i183 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %width.i183, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp12.i198 = icmp eq i32 %98, %100
  br i1 %cmp12.i198, label %if.then14.i204, label %if.end8.i199.if.end72_crit_edge

if.end8.i199.if.end72_crit_edge:                  ; preds = %if.end8.i199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then14.i204:                                   ; preds = %if.end8.i199
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lcd, align 4
  %gotoxy.i200 = getelementptr inbounds %struct.charlcd_ops, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %gotoxy.i200 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %gotoxy.i200, align 4
  %sub.i201 = add i32 %98, -1
  %y.i202 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %105 = ptrtoint ptr %y.i202 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %y.i202, align 4
  %call19.i203 = tail call i32 %104(ptr noundef %lcd, i32 noundef %sub.i201, i32 noundef %106) #7
  br label %if.end72

sw.default:                                       ; preds = %if.else
  %addr.i206 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %107 = ptrtoint ptr %addr.i206 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %addr.i206, align 4
  %width.i207 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 3
  %109 = ptrtoint ptr %width.i207 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %width.i207, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %110)
  %cmp.not.i208 = icmp ult i32 %108, %110
  br i1 %cmp.not.i208, label %if.end.i211, label %sw.default.if.end72_crit_edge

sw.default.if.end72_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end.i211:                                      ; preds = %sw.default
  %char_conv.i209 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 1
  %111 = ptrtoint ptr %char_conv.i209 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %char_conv.i209, align 4
  %tobool.not.i210 = icmp eq ptr %112, null
  br i1 %tobool.not.i210, label %if.end.i211.if.end3.i219_crit_edge, label %if.then1.i213

if.end.i211.if.end3.i219_crit_edge:               ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i219

if.then1.i213:                                    ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i = zext i8 %c to i32
  %arrayidx.i212 = getelementptr i8, ptr %112, i32 %idxprom.i
  %113 = ptrtoint ptr %arrayidx.i212 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i212, align 1
  br label %if.end3.i219

if.end3.i219:                                     ; preds = %if.then1.i213, %if.end.i211.if.end3.i219_crit_edge
  %c.addr.0.i214 = phi i8 [ %114, %if.then1.i213 ], [ %c, %if.end.i211.if.end3.i219_crit_edge ]
  %115 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %lcd, align 4
  %print.i215 = getelementptr inbounds %struct.charlcd_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %print.i215 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %print.i215, align 4
  %conv.i216 = zext i8 %c.addr.0.i214 to i32
  %call.i217 = tail call i32 %118(ptr noundef %lcd, i32 noundef %conv.i216) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool4.not.i218 = icmp eq i32 %call.i217, 0
  br i1 %tobool4.not.i218, label %if.then5.i221, label %if.end3.i219.if.end8.i223_crit_edge

if.end3.i219.if.end8.i223_crit_edge:              ; preds = %if.end3.i219
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i223

if.then5.i221:                                    ; preds = %if.end3.i219
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %addr.i206 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %addr.i206, align 4
  %inc.i220 = add i32 %120, 1
  store i32 %inc.i220, ptr %addr.i206, align 4
  br label %if.end8.i223

if.end8.i223:                                     ; preds = %if.then5.i221, %if.end3.i219.if.end8.i223_crit_edge
  %121 = ptrtoint ptr %addr.i206 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %addr.i206, align 4
  %123 = ptrtoint ptr %width.i207 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %width.i207, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp12.i222 = icmp eq i32 %122, %124
  br i1 %cmp12.i222, label %if.then14.i228, label %if.end8.i223.if.end72_crit_edge

if.end8.i223.if.end72_crit_edge:                  ; preds = %if.end8.i223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then14.i228:                                   ; preds = %if.end8.i223
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %lcd, align 4
  %gotoxy.i224 = getelementptr inbounds %struct.charlcd_ops, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %gotoxy.i224 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %gotoxy.i224, align 4
  %sub.i225 = add i32 %122, -1
  %y.i226 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %129 = ptrtoint ptr %y.i226 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %y.i226, align 4
  %call19.i227 = tail call i32 %128(ptr noundef %lcd, i32 noundef %sub.i225, i32 noundef %130) #7
  br label %if.end72

if.end72:                                         ; preds = %if.then14.i228, %if.end8.i223.if.end72_crit_edge, %sw.default.if.end72_crit_edge, %if.then14.i204, %if.end8.i199.if.end72_crit_edge, %sw.bb71.if.end72_crit_edge, %sw.bb61, %for.end, %sw.bb39, %if.then34, %charlcd_print.exit.if.end72_crit_edge, %sw.bb, %if.then
  %esc_seq73 = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 6
  %len74 = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 6, i32 1
  %131 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp75 = icmp sgt i32 %132, 1
  br i1 %cmp75, label %if.then77, label %if.end72.if.end123_crit_edge

if.end72.if.end123_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then77:                                        ; preds = %if.end72
  %call80 = tail call i32 @strcmp(ptr noundef %esc_seq73, ptr noundef nonnull dereferenceable(4) @.str.9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %if.else83

if.then82:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %lcd, align 4
  %clear_display.i230 = getelementptr inbounds %struct.charlcd_ops, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %clear_display.i230 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %clear_display.i230, align 4
  %call.i231 = tail call i32 %136(ptr noundef %lcd) #7
  %addr.i232 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %137 = ptrtoint ptr %addr.i232 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %addr.i232, align 4
  %y.i233 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %138 = ptrtoint ptr %y.i233 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %y.i233, align 4
  br label %if.then119

if.else83:                                        ; preds = %if.then77
  %call87 = tail call i32 @strcmp(ptr noundef %esc_seq73, ptr noundef nonnull dereferenceable(3) @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then89, label %if.else90

if.then89:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i234 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %139 = ptrtoint ptr %addr.i234 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %addr.i234, align 4
  %y.i235 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %140 = ptrtoint ptr %y.i235 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %y.i235, align 4
  %141 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %lcd, align 4
  %home.i = getelementptr inbounds %struct.charlcd_ops, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %home.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %home.i, align 4
  %call.i236 = tail call i32 %144(ptr noundef %lcd) #7
  br label %if.then119

if.else90:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp93 = icmp ugt i32 %132, 2
  br i1 %cmp93, label %land.lhs.true95, label %if.else90.lor.lhs.false_crit_edge

if.else90.lor.lhs.false_crit_edge:                ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true95:                                  ; preds = %if.else90
  %145 = ptrtoint ptr %esc_seq73 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %esc_seq73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 91, i8 %146)
  %cmp100 = icmp eq i8 %146, 91
  br i1 %cmp100, label %land.lhs.true102, label %land.lhs.true95.lor.lhs.false_crit_edge

land.lhs.true95.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true102:                                 ; preds = %land.lhs.true95
  %arrayidx105 = getelementptr %struct.charlcd_priv, ptr %lcd, i32 0, i32 6, i32 0, i32 1
  %147 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %148)
  %cmp107 = icmp eq i8 %148, 76
  br i1 %cmp107, label %if.then109, label %land.lhs.true102.lor.lhs.false_crit_edge

land.lhs.true102.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.then109:                                       ; preds = %land.lhs.true102
  %add.ptr1.i = getelementptr %struct.charlcd_priv, ptr %lcd, i32 0, i32 6, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 5
  %149 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i, align 8
  %151 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %add.ptr1.i, align 1
  %153 = zext i8 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %152, label %if.then109.lor.lhs.false_crit_edge [
    i8 68, label %sw.bb.i
    i8 100, label %sw.bb5.i
    i8 67, label %sw.bb15.i
    i8 99, label %sw.bb25.i
    i8 66, label %sw.bb36.i
    i8 98, label %sw.bb46.i
    i8 43, label %sw.bb57.i
    i8 45, label %sw.bb65.i
    i8 42, label %sw.bb73.i
    i8 102, label %sw.bb74.i
    i8 70, label %sw.bb84.i
    i8 110, label %sw.bb95.i
    i8 78, label %sw.bb105.i
    i8 108, label %sw.bb116.i
    i8 114, label %sw.bb127.i
    i8 76, label %sw.bb142.i
    i8 82, label %sw.bb145.i
    i8 107, label %sw.bb149.i
    i8 73, label %sw.bb172.i
    i8 71, label %sw.bb181.i
    i8 120, label %if.then109.sw.bb189.i_crit_edge
    i8 121, label %if.then109.sw.bb189.i_crit_edge277
  ]

if.then109.sw.bb189.i_crit_edge277:               ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb189.i

if.then109.sw.bb189.i_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb189.i

if.then109.lor.lhs.false_crit_edge:               ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

sw.bb.i:                                          ; preds = %if.then109
  %or.i = or i32 %150, 16
  %154 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %150)
  %cmp.not.i237 = icmp eq i32 %or.i, %150
  br i1 %cmp.not.i237, label %sw.bb.i.if.then119_crit_edge, label %if.then.i

sw.bb.i.if.then119_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %lcd, align 4
  %display.i = getelementptr inbounds %struct.charlcd_ops, ptr %156, i32 0, i32 8
  %157 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %display.i, align 4
  %call.i238 = tail call i32 %158(ptr noundef %lcd, i32 noundef 1) #7
  br label %if.then119

sw.bb5.i:                                         ; preds = %if.then109
  %and.i = and i32 %150, -17
  %159 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %and.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %150)
  %cmp8.not.i = icmp eq i32 %and.i, %150
  br i1 %cmp8.not.i, label %sw.bb5.i.if.then119_crit_edge, label %if.then10.i

sw.bb5.i.if.then119_crit_edge:                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then10.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %lcd, align 4
  %display12.i = getelementptr inbounds %struct.charlcd_ops, ptr %161, i32 0, i32 8
  %162 = ptrtoint ptr %display12.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %display12.i, align 4
  %call13.i = tail call i32 %163(ptr noundef %lcd, i32 noundef 0) #7
  br label %if.then119

sw.bb15.i:                                        ; preds = %if.then109
  %or17.i = or i32 %150, 8
  %164 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or17.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or17.i, i32 %150)
  %cmp19.not.i = icmp eq i32 %or17.i, %150
  br i1 %cmp19.not.i, label %sw.bb15.i.if.then119_crit_edge, label %if.then21.i

sw.bb15.i.if.then119_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then21.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %lcd, align 4
  %cursor.i = getelementptr inbounds %struct.charlcd_ops, ptr %166, i32 0, i32 9
  %167 = ptrtoint ptr %cursor.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cursor.i, align 4
  %call23.i = tail call i32 %168(ptr noundef %lcd, i32 noundef 1) #7
  br label %if.then119

sw.bb25.i:                                        ; preds = %if.then109
  %and27.i = and i32 %150, -9
  %169 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %and27.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and27.i, i32 %150)
  %cmp29.not.i = icmp eq i32 %and27.i, %150
  br i1 %cmp29.not.i, label %sw.bb25.i.if.then119_crit_edge, label %if.then31.i

sw.bb25.i.if.then119_crit_edge:                   ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then31.i:                                      ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %lcd, align 4
  %cursor33.i = getelementptr inbounds %struct.charlcd_ops, ptr %171, i32 0, i32 9
  %172 = ptrtoint ptr %cursor33.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cursor33.i, align 4
  %call34.i = tail call i32 %173(ptr noundef %lcd, i32 noundef 0) #7
  br label %if.then119

sw.bb36.i:                                        ; preds = %if.then109
  %or38.i = or i32 %150, 4
  %174 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or38.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or38.i, i32 %150)
  %cmp40.not.i = icmp eq i32 %or38.i, %150
  br i1 %cmp40.not.i, label %sw.bb36.i.if.then119_crit_edge, label %if.then42.i

sw.bb36.i.if.then119_crit_edge:                   ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then42.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #9
  %175 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %lcd, align 4
  %blink.i = getelementptr inbounds %struct.charlcd_ops, ptr %176, i32 0, i32 10
  %177 = ptrtoint ptr %blink.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %blink.i, align 4
  %call44.i = tail call i32 %178(ptr noundef %lcd, i32 noundef 1) #7
  br label %if.then119

sw.bb46.i:                                        ; preds = %if.then109
  %and48.i = and i32 %150, -5
  %179 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %and48.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and48.i, i32 %150)
  %cmp50.not.i = icmp eq i32 %and48.i, %150
  br i1 %cmp50.not.i, label %sw.bb46.i.if.then119_crit_edge, label %if.then52.i

sw.bb46.i.if.then119_crit_edge:                   ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then52.i:                                      ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %lcd, align 4
  %blink54.i = getelementptr inbounds %struct.charlcd_ops, ptr %181, i32 0, i32 10
  %182 = ptrtoint ptr %blink54.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %blink54.i, align 4
  %call55.i = tail call i32 %183(ptr noundef %lcd, i32 noundef 0) #7
  br label %if.then119

sw.bb57.i:                                        ; preds = %if.then109
  %or59.i = or i32 %150, 128
  %184 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or59.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or59.i, i32 %150)
  %cmp61.not.i = icmp eq i32 %or59.i, %150
  br i1 %cmp61.not.i, label %sw.bb57.i.if.then119_crit_edge, label %if.then63.i

sw.bb57.i.if.then119_crit_edge:                   ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then63.i:                                      ; preds = %sw.bb57.i
  %185 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %lcd, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  %tobool.not.i.i = icmp eq ptr %188, null
  br i1 %tobool.not.i.i, label %if.then63.i.if.then119_crit_edge, label %if.end.i.i

if.then63.i.if.then119_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.end.i.i:                                       ; preds = %if.then63.i
  %bl_tempo_lock.i.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bl_tempo_lock.i.i, i32 noundef 0) #7
  %bl_tempo.i.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 3
  %189 = ptrtoint ptr %bl_tempo.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %bl_tempo.i.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool1.not.i.i = icmp eq i8 %190, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i.i.if.end5.i.i_crit_edge

if.end.i.i.if.end5.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %lcd, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %192, align 4
  tail call void %194(ptr noundef %lcd, i32 noundef 1) #7
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then2.i.i, %if.end.i.i.if.end5.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %bl_tempo_lock.i.i) #7
  br label %if.then119

sw.bb65.i:                                        ; preds = %if.then109
  %and67.i = and i32 %150, -129
  %195 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %and67.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and67.i, i32 %150)
  %cmp69.not.i = icmp eq i32 %and67.i, %150
  br i1 %cmp69.not.i, label %sw.bb65.i.if.then119_crit_edge, label %if.then71.i

sw.bb65.i.if.then119_crit_edge:                   ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then71.i:                                      ; preds = %sw.bb65.i
  %196 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %lcd, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %tobool.not.i314.i = icmp eq ptr %199, null
  br i1 %tobool.not.i314.i, label %if.then71.i.if.then119_crit_edge, label %if.end.i318.i

if.then71.i.if.then119_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.end.i318.i:                                    ; preds = %if.then71.i
  %bl_tempo_lock.i315.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bl_tempo_lock.i315.i, i32 noundef 0) #7
  %bl_tempo.i316.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 3
  %200 = ptrtoint ptr %bl_tempo.i316.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %bl_tempo.i316.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool1.not.i317.i = icmp eq i8 %201, 0
  br i1 %tobool1.not.i317.i, label %if.then2.i319.i, label %if.end.i318.i.if.end5.i320.i_crit_edge

if.end.i318.i.if.end5.i320.i_crit_edge:           ; preds = %if.end.i318.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i320.i

if.then2.i319.i:                                  ; preds = %if.end.i318.i
  call void @__sanitizer_cov_trace_pc() #9
  %202 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %lcd, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  tail call void %205(ptr noundef %lcd, i32 noundef 0) #7
  br label %if.end5.i320.i

if.end5.i320.i:                                   ; preds = %if.then2.i319.i, %if.end.i318.i.if.end5.i320.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %bl_tempo_lock.i315.i) #7
  br label %if.then119

sw.bb73.i:                                        ; preds = %if.then109
  %206 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %lcd, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %207, align 4
  %tobool.not.i322.i = icmp eq ptr %209, null
  br i1 %tobool.not.i322.i, label %sw.bb73.i.if.then119_crit_edge, label %if.end.i326.i

sw.bb73.i.if.then119_crit_edge:                   ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.end.i326.i:                                    ; preds = %sw.bb73.i
  %bl_work.i.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bl_work.i.i) #7
  %bl_tempo_lock.i323.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bl_tempo_lock.i323.i, i32 noundef 0) #7
  %bl_tempo.i324.i = getelementptr inbounds %struct.charlcd_priv, ptr %lcd, i32 0, i32 3
  %210 = ptrtoint ptr %bl_tempo.i324.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %bl_tempo.i324.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool1.not.i325.i = icmp eq i8 %211, 0
  br i1 %tobool1.not.i325.i, label %land.lhs.true.i.i, label %if.end.i326.i.if.end6.i.i_crit_edge

if.end.i326.i.if.end6.i.i_crit_edge:              ; preds = %if.end.i326.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i326.i
  %212 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %flags.i, align 8
  %and.i.i = and i32 %213, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %land.lhs.true.i.i.if.end6.i.i_crit_edge

land.lhs.true.i.i.if.end6.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %214 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %lcd, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %215, align 4
  tail call void %217(ptr noundef %lcd, i32 noundef 1) #7
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then3.i.i, %land.lhs.true.i.i.if.end6.i.i_crit_edge, %if.end.i326.i.if.end6.i.i_crit_edge
  %218 = ptrtoint ptr %bl_tempo.i324.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 1, ptr %bl_tempo.i324.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %219 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %219, ptr noundef %bl_work.i.i, i32 noundef 400) #7
  tail call void @mutex_unlock(ptr noundef %bl_tempo_lock.i323.i) #7
  br label %if.then119

sw.bb74.i:                                        ; preds = %if.then109
  %and76.i = and i32 %150, -33
  %220 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %and76.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and76.i, i32 %150)
  %cmp78.not.i = icmp eq i32 %and76.i, %150
  br i1 %cmp78.not.i, label %sw.bb74.i.if.then119_crit_edge, label %if.then80.i

sw.bb74.i.if.then119_crit_edge:                   ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then80.i:                                      ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #9
  %221 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %lcd, align 4
  %fontsize.i = getelementptr inbounds %struct.charlcd_ops, ptr %222, i32 0, i32 11
  %223 = ptrtoint ptr %fontsize.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %fontsize.i, align 4
  %call82.i = tail call i32 %224(ptr noundef %lcd, i32 noundef 0) #7
  br label %if.then119

sw.bb84.i:                                        ; preds = %if.then109
  %or86.i = or i32 %150, 32
  %225 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %or86.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or86.i, i32 %150)
  %cmp88.not.i = icmp eq i32 %or86.i, %150
  br i1 %cmp88.not.i, label %sw.bb84.i.if.then119_crit_edge, label %if.then90.i

sw.bb84.i.if.then119_crit_edge:                   ; preds = %sw.bb84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then90.i:                                      ; preds = %sw.bb84.i
  call void @__sanitizer_cov_trace_pc() #9
  %226 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %lcd, align 4
  %fontsize92.i = getelementptr inbounds %struct.charlcd_ops, ptr %227, i32 0, i32 11
  %228 = ptrtoint ptr %fontsize92.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %fontsize92.i, align 4
  %call93.i = tail call i32 %229(ptr noundef %lcd, i32 noundef 1) #7
  br label %if.then119

sw.bb95.i:                                        ; preds = %if.then109
  %and97.i = and i32 %150, -65
  %230 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %and97.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and97.i, i32 %150)
  %cmp99.not.i = icmp eq i32 %and97.i, %150
  br i1 %cmp99.not.i, label %sw.bb95.i.if.then119_crit_edge, label %if.then101.i

sw.bb95.i.if.then119_crit_edge:                   ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then101.i:                                     ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #9
  %231 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %lcd, align 4
  %lines.i = getelementptr inbounds %struct.charlcd_ops, ptr %232, i32 0, i32 12
  %233 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %lines.i, align 4
  %call103.i = tail call i32 %234(ptr noundef %lcd, i32 noundef 0) #7
  br label %if.then119

sw.bb105.i:                                       ; preds = %if.then109
  %or107.i = or i32 %150, 64
  %235 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %or107.i, ptr %flags.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or107.i, i32 %150)
  %cmp109.not.i = icmp eq i32 %or107.i, %150
  br i1 %cmp109.not.i, label %sw.bb105.i.if.then119_crit_edge, label %if.then111.i

sw.bb105.i.if.then119_crit_edge:                  ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then111.i:                                     ; preds = %sw.bb105.i
  call void @__sanitizer_cov_trace_pc() #9
  %236 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %lcd, align 4
  %lines113.i = getelementptr inbounds %struct.charlcd_ops, ptr %237, i32 0, i32 12
  %238 = ptrtoint ptr %lines113.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %lines113.i, align 4
  %call114.i = tail call i32 %239(ptr noundef %lcd, i32 noundef 1) #7
  br label %if.then119

sw.bb116.i:                                       ; preds = %if.then109
  %addr.i239 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %240 = ptrtoint ptr %addr.i239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %addr.i239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp117.not.i = icmp eq i32 %241, 0
  br i1 %cmp117.not.i, label %sw.bb116.i.if.then119_crit_edge, label %if.then119.i

sw.bb116.i.if.then119_crit_edge:                  ; preds = %sw.bb116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then119.i:                                     ; preds = %sw.bb116.i
  %242 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %lcd, align 4
  %shift_cursor.i = getelementptr inbounds %struct.charlcd_ops, ptr %243, i32 0, i32 6
  %244 = ptrtoint ptr %shift_cursor.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %shift_cursor.i, align 4
  %call121.i = tail call i32 %245(ptr noundef %lcd, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %tobool.not.i240 = icmp eq i32 %call121.i, 0
  br i1 %tobool.not.i240, label %if.then122.i, label %if.then119.i.if.then119_crit_edge

if.then119.i.if.then119_crit_edge:                ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then122.i:                                     ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #9
  %246 = ptrtoint ptr %addr.i239 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %addr.i239, align 4
  %dec.i = add i32 %247, -1
  store i32 %dec.i, ptr %addr.i239, align 4
  br label %if.then119

sw.bb127.i:                                       ; preds = %if.then109
  %addr128.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %248 = ptrtoint ptr %addr128.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %addr128.i, align 4
  %width.i241 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 3
  %250 = ptrtoint ptr %width.i241 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %width.i241, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %249, i32 %251)
  %cmp130.i = icmp ult i32 %249, %251
  br i1 %cmp130.i, label %if.then132.i, label %sw.bb127.i.if.then119_crit_edge

sw.bb127.i.if.then119_crit_edge:                  ; preds = %sw.bb127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then132.i:                                     ; preds = %sw.bb127.i
  %252 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %lcd, align 4
  %shift_cursor134.i = getelementptr inbounds %struct.charlcd_ops, ptr %253, i32 0, i32 6
  %254 = ptrtoint ptr %shift_cursor134.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %shift_cursor134.i, align 4
  %call135.i = tail call i32 %255(ptr noundef %lcd, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135.i)
  %tobool136.not.i = icmp eq i32 %call135.i, 0
  br i1 %tobool136.not.i, label %if.then137.i, label %if.then132.i.if.then119_crit_edge

if.then132.i.if.then119_crit_edge:                ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then137.i:                                     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #9
  %256 = ptrtoint ptr %addr128.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %addr128.i, align 4
  %inc.i242 = add i32 %257, 1
  store i32 %inc.i242, ptr %addr128.i, align 4
  br label %if.then119

sw.bb142.i:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %258 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %lcd, align 4
  %shift_display.i = getelementptr inbounds %struct.charlcd_ops, ptr %259, i32 0, i32 7
  %260 = ptrtoint ptr %shift_display.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %shift_display.i, align 4
  %call144.i = tail call i32 %261(ptr noundef %lcd, i32 noundef 0) #7
  br label %if.then119

sw.bb145.i:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %lcd, align 4
  %shift_display147.i = getelementptr inbounds %struct.charlcd_ops, ptr %263, i32 0, i32 7
  %264 = ptrtoint ptr %shift_display147.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %shift_display147.i, align 4
  %call148.i = tail call i32 %265(ptr noundef %lcd, i32 noundef 1) #7
  br label %if.then119

sw.bb149.i:                                       ; preds = %if.then109
  %addr151.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %266 = ptrtoint ptr %addr151.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %addr151.i, align 4
  %y.i243 = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %268 = ptrtoint ptr %y.i243 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %y.i243, align 4
  %width156.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 3
  %270 = ptrtoint ptr %width156.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %width156.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %267, i32 %271)
  %cmp157331.i = icmp slt i32 %267, %271
  br i1 %cmp157331.i, label %sw.bb149.i.for.body.i_crit_edge, label %sw.bb149.i.for.end.i_crit_edge

sw.bb149.i.for.end.i_crit_edge:                   ; preds = %sw.bb149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

sw.bb149.i.for.body.i_crit_edge:                  ; preds = %sw.bb149.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb149.i.for.body.i_crit_edge
  %x150.0332.i = phi i32 [ %inc161.i, %for.body.i.for.body.i_crit_edge ], [ %267, %sw.bb149.i.for.body.i_crit_edge ]
  %272 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %lcd, align 4
  %print.i244 = getelementptr inbounds %struct.charlcd_ops, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %print.i244 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %print.i244, align 4
  %call160.i = tail call i32 %275(ptr noundef %lcd, i32 noundef 32) #7
  %inc161.i = add nsw i32 %x150.0332.i, 1
  %276 = ptrtoint ptr %width156.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %width156.i, align 4
  %cmp157.i = icmp slt i32 %inc161.i, %277
  br i1 %cmp157.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb149.i.for.end.i_crit_edge
  %278 = ptrtoint ptr %addr151.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %267, ptr %addr151.i, align 4
  %279 = ptrtoint ptr %y.i243 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %269, ptr %y.i243, align 4
  %280 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %lcd, align 4
  %gotoxy.i245 = getelementptr inbounds %struct.charlcd_ops, ptr %281, i32 0, i32 2
  %282 = ptrtoint ptr %gotoxy.i245 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %gotoxy.i245, align 4
  %call171.i = tail call i32 %283(ptr noundef %lcd, i32 noundef %267, i32 noundef %269) #7
  br label %if.then119

sw.bb172.i:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %284 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %lcd, align 4
  %init_display.i = getelementptr inbounds %struct.charlcd_ops, ptr %285, i32 0, i32 5
  %286 = ptrtoint ptr %init_display.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %init_display.i, align 4
  %call174.i = tail call i32 %287(ptr noundef %lcd) #7
  %height.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 2
  %288 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %289)
  %cmp175.i = icmp sgt i32 %289, 1
  %or179.i = select i1 %cmp175.i, i32 92, i32 28
  %290 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %or179.i, ptr %flags.i, align 8
  br label %if.then119

sw.bb181.i:                                       ; preds = %if.then109
  %291 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %lcd, align 4
  %redefine_char.i = getelementptr inbounds %struct.charlcd_ops, ptr %292, i32 0, i32 13
  %293 = ptrtoint ptr %redefine_char.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %redefine_char.i, align 4
  %tobool183.not.i = icmp eq ptr %294, null
  br i1 %tobool183.not.i, label %sw.bb181.i.if.then119_crit_edge, label %handle_lcd_special_code.exit

sw.bb181.i.if.then119_crit_edge:                  ; preds = %sw.bb181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

sw.bb189.i:                                       ; preds = %if.then109.sw.bb189.i_crit_edge, %if.then109.sw.bb189.i_crit_edge277
  %sub.i246 = add nsw i32 %132, -1
  %arrayidx.i247 = getelementptr [25 x i8], ptr %esc_seq73, i32 0, i32 %sub.i246
  %295 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx.i247, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %296)
  %cmp194.not.i = icmp eq i8 %296, 59
  br i1 %cmp194.not.i, label %if.end197.i, label %sw.bb189.i.lor.lhs.false_crit_edge

sw.bb189.i.lor.lhs.false_crit_edge:               ; preds = %sw.bb189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end197.i:                                      ; preds = %sw.bb189.i
  %addr198.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4
  %y201.i = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 4, i32 1
  %297 = ptrtoint ptr %addr198.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %addr198.i, align 4
  %299 = ptrtoint ptr %y201.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %y201.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i.i) #7
  %301 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr inttoptr (i32 -1 to ptr), ptr %p.i.i, align 4, !annotation !71
  br label %for.cond.i.i.outer

for.cond.i.i.outer:                               ; preds = %if.then7.i.i.for.cond.i.i.outer_crit_edge, %if.end197.i
  %s.addr.0.i.i.ph = phi ptr [ %306, %if.then7.i.i.for.cond.i.i.outer_crit_edge ], [ %add.ptr1.i, %if.end197.i ]
  %new_x.0.i.i.ph = phi i32 [ %call.i327.i, %if.then7.i.i.for.cond.i.i.outer_crit_edge ], [ %298, %if.end197.i ]
  %new_y.0.i.i.ph = phi i32 [ %new_y.0.i.i, %if.then7.i.i.for.cond.i.i.outer_crit_edge ], [ %300, %if.end197.i ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.then16.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.outer
  %s.addr.0.i.i = phi ptr [ %308, %if.then16.i.i.for.cond.i.i_crit_edge ], [ %s.addr.0.i.i.ph, %for.cond.i.i.outer ]
  %new_y.0.i.i = phi i32 [ %call18.i.i, %if.then16.i.i.for.cond.i.i_crit_edge ], [ %new_y.0.i.i.ph, %for.cond.i.i.outer ]
  %302 = ptrtoint ptr %s.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %s.addr.0.i.i, align 1
  %304 = zext i8 %303 to i64
  call void @__sanitizer_cov_trace_switch(i64 %304, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %303, label %for.cond.i.i.parse_xy.exit.thread.i_crit_edge [
    i8 121, label %if.then16.i.i
    i8 59, label %if.then203.i
    i8 120, label %if.then7.i.i
  ]

for.cond.i.i.parse_xy.exit.thread.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_xy.exit.thread.i

if.then7.i.i:                                     ; preds = %for.cond.i.i
  %add.ptr.i.i = getelementptr i8, ptr %s.addr.0.i.i, i32 1
  %call.i327.i = call i32 @simple_strtoul(ptr noundef %add.ptr.i.i, ptr noundef nonnull %p.i.i, i32 noundef 10) #7
  %305 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %p.i.i, align 4
  %cmp9.i.i = icmp eq ptr %306, %add.ptr.i.i
  br i1 %cmp9.i.i, label %if.then7.i.i.parse_xy.exit.thread.i_crit_edge, label %if.then7.i.i.for.cond.i.i.outer_crit_edge

if.then7.i.i.for.cond.i.i.outer_crit_edge:        ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i.outer

if.then7.i.i.parse_xy.exit.thread.i_crit_edge:    ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_xy.exit.thread.i

if.then16.i.i:                                    ; preds = %for.cond.i.i
  %add.ptr17.i.i = getelementptr i8, ptr %s.addr.0.i.i, i32 1
  %call18.i.i = call i32 @simple_strtoul(ptr noundef %add.ptr17.i.i, ptr noundef nonnull %p.i.i, i32 noundef 10) #7
  %307 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %p.i.i, align 4
  %cmp20.i.i = icmp eq ptr %308, %add.ptr17.i.i
  br i1 %cmp20.i.i, label %if.then16.i.i.parse_xy.exit.thread.i_crit_edge, label %if.then16.i.i.for.cond.i.i_crit_edge

if.then16.i.i.for.cond.i.i_crit_edge:             ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.then16.i.i.parse_xy.exit.thread.i_crit_edge:   ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %parse_xy.exit.thread.i

parse_xy.exit.thread.i:                           ; preds = %if.then16.i.i.parse_xy.exit.thread.i_crit_edge, %if.then7.i.i.parse_xy.exit.thread.i_crit_edge, %for.cond.i.i.parse_xy.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i.i) #7
  br label %if.then119

if.then203.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %309 = ptrtoint ptr %addr198.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %new_x.0.i.i.ph, ptr %addr198.i, align 4
  %310 = ptrtoint ptr %y201.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %new_y.0.i.i, ptr %y201.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i.i) #7
  %311 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %lcd, align 4
  %gotoxy205.i = getelementptr inbounds %struct.charlcd_ops, ptr %312, i32 0, i32 2
  %313 = ptrtoint ptr %gotoxy205.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %gotoxy205.i, align 4
  %call210.i = call i32 %314(ptr noundef %lcd, i32 noundef %new_x.0.i.i.ph, i32 noundef %new_y.0.i.i) #7
  br label %if.then119

handle_lcd_special_code.exit:                     ; preds = %sw.bb181.i
  %call187.i = tail call i32 %294(ptr noundef %lcd, ptr noundef %add.ptr1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187.i)
  %phi.cmp = icmp eq i32 %call187.i, 0
  br i1 %phi.cmp, label %handle_lcd_special_code.exit.lor.lhs.false_crit_edge, label %handle_lcd_special_code.exit.if.then119_crit_edge

handle_lcd_special_code.exit.if.then119_crit_edge: ; preds = %handle_lcd_special_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

handle_lcd_special_code.exit.lor.lhs.false_crit_edge: ; preds = %handle_lcd_special_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %handle_lcd_special_code.exit.lor.lhs.false_crit_edge, %sw.bb189.i.lor.lhs.false_crit_edge, %if.then109.lor.lhs.false_crit_edge, %land.lhs.true102.lor.lhs.false_crit_edge, %land.lhs.true95.lor.lhs.false_crit_edge, %if.else90.lor.lhs.false_crit_edge
  %315 = ptrtoint ptr %len74 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %len74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %316)
  %cmp117 = icmp sgt i32 %316, 23
  br i1 %cmp117, label %lor.lhs.false.if.then119_crit_edge, label %lor.lhs.false.if.end123_crit_edge

lor.lhs.false.if.end123_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

lor.lhs.false.if.then119_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then119

if.then119:                                       ; preds = %lor.lhs.false.if.then119_crit_edge, %handle_lcd_special_code.exit.if.then119_crit_edge, %if.then203.i, %parse_xy.exit.thread.i, %sw.bb181.i.if.then119_crit_edge, %sw.bb172.i, %for.end.i, %sw.bb145.i, %sw.bb142.i, %if.then137.i, %if.then132.i.if.then119_crit_edge, %sw.bb127.i.if.then119_crit_edge, %if.then122.i, %if.then119.i.if.then119_crit_edge, %sw.bb116.i.if.then119_crit_edge, %if.then111.i, %sw.bb105.i.if.then119_crit_edge, %if.then101.i, %sw.bb95.i.if.then119_crit_edge, %if.then90.i, %sw.bb84.i.if.then119_crit_edge, %if.then80.i, %sw.bb74.i.if.then119_crit_edge, %if.end6.i.i, %sw.bb73.i.if.then119_crit_edge, %if.end5.i320.i, %if.then71.i.if.then119_crit_edge, %sw.bb65.i.if.then119_crit_edge, %if.end5.i.i, %if.then63.i.if.then119_crit_edge, %sw.bb57.i.if.then119_crit_edge, %if.then52.i, %sw.bb46.i.if.then119_crit_edge, %if.then42.i, %sw.bb36.i.if.then119_crit_edge, %if.then31.i, %sw.bb25.i.if.then119_crit_edge, %if.then21.i, %sw.bb15.i.if.then119_crit_edge, %if.then10.i, %sw.bb5.i.if.then119_crit_edge, %if.then.i, %sw.bb.i.if.then119_crit_edge, %if.then89, %if.then82
  %317 = ptrtoint ptr %len74 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 -1, ptr %len74, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %lor.lhs.false.if.end123_crit_edge, %if.end72.if.end123_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_notify_sys(ptr nocapture noundef readnone %this, i32 noundef %code, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @the_charlcd, align 4
  %1 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %code, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.for.body.i_crit_edge
    i32 2, label %if.end.i17
    i32 3, label %if.end.i31
  ]

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %tmp.010.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ @.str.11, %entry.for.body.i_crit_edge ]
  %count.09.i = phi i32 [ %dec11.i, %if.end.i.for.body.i_crit_edge ], [ 32, %entry.for.body.i_crit_edge ]
  %dec11.i = add nsw i32 %count.09.i, -1
  %and.i = and i32 %count.09.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 543, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %tmp.010.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tmp.010.i, align 1
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext %3) #7
  %incdec.ptr.i = getelementptr i8, ptr %tmp.010.i, i32 1
  %exitcond38.not = icmp eq ptr %tmp.010.i, getelementptr inbounds ([33 x i8], ptr @.str.11, i32 0, i32 31)
  br i1 %exitcond38.not, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i17:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 12) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 83) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 121) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 115) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 116) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 101) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 109) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 32) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 72) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 97) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 108) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 116) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 101) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 100) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 46) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 27) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 91) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 76) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 99) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 27) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 91) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 76) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 98) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 27) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 91) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 76) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 43) #7
  br label %sw.epilog

if.end.i31:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 12) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 80) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 111) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 119) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 101) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 114) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 32) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 111) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 102) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 102) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 46) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 27) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 91) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 76) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 99) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 27) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 91) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 76) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 98) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 27) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 91) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 76) #7
  tail call fastcc void @charlcd_write_char(ptr noundef %0, i8 noundef zeroext 43) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i31, %if.end.i17, %if.end.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__ksymtab_charlcd_backlight, !1, !"__ksymtab_charlcd_backlight", i1 false, i1 false}
!1 = !{!"../drivers/auxdisplay/charlcd.c", i32 69, i32 1}
!2 = !{ptr @__ksymtab_charlcd_poke, !3, !"__ksymtab_charlcd_poke", i1 false, i1 false}
!3 = !{!"../drivers/auxdisplay/charlcd.c", i32 103, i32 1}
!4 = !{ptr @__ksymtab_charlcd_alloc, !5, !"__ksymtab_charlcd_alloc", i1 false, i1 false}
!5 = !{!"../drivers/auxdisplay/charlcd.c", i32 612, i32 1}
!6 = !{ptr @__ksymtab_charlcd_free, !7, !"__ksymtab_charlcd_free", i1 false, i1 false}
!7 = !{!"../drivers/auxdisplay/charlcd.c", i32 618, i32 1}
!8 = !{ptr @__ksymtab_charlcd_register, !9, !"__ksymtab_charlcd_register", i1 false, i1 false}
!9 = !{!"../drivers/auxdisplay/charlcd.c", i32 662, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/auxdisplay/charlcd.c", i32 669, i32 20}
!12 = !{ptr @__ksymtab_charlcd_unregister, !13, !"__ksymtab_charlcd_unregister", i1 false, i1 false}
!13 = !{!"../drivers/auxdisplay/charlcd.c", i32 679, i32 1}
!14 = !{ptr @__UNIQUE_ID_file223, !15, !"__UNIQUE_ID_file223", i1 false, i1 false}
!15 = !{!"../drivers/auxdisplay/charlcd.c", i32 681, i32 1}
!16 = !{ptr @__UNIQUE_ID_license224, !15, !"__UNIQUE_ID_license224", i1 false, i1 false}
!17 = !{ptr @the_charlcd, !18, !"the_charlcd", i1 false, i1 false}
!18 = !{!"../drivers/auxdisplay/charlcd.c", i32 464, i32 24}
!19 = !{ptr @charlcd_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/auxdisplay/charlcd.c", i32 572, i32 3}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @charlcd_init.__key.2, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/auxdisplay/charlcd.c", i32 573, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @charlcd_init.__key.4, !23, !"__key", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/auxdisplay/charlcd.c", i32 581, i32 6}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/auxdisplay/charlcd.c", i32 589, i32 20}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/auxdisplay/charlcd.c", i32 532, i32 10}
!33 = !{ptr @charlcd_dev, !34, !"charlcd_dev", i1 false, i1 false}
!34 = !{!"../drivers/auxdisplay/charlcd.c", i32 530, i32 26}
!35 = !{ptr @charlcd_fops, !36, !"charlcd_fops", i1 false, i1 false}
!36 = !{!"../drivers/auxdisplay/charlcd.c", i32 523, i32 37}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/auxdisplay/charlcd.c", i32 438, i32 34}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/auxdisplay/charlcd.c", i32 442, i32 41}
!41 = !{ptr @charlcd_available, !42, !"charlcd_available", i1 false, i1 false}
!42 = !{!"../drivers/auxdisplay/charlcd.c", i32 54, i32 17}
!43 = !{ptr @panel_notifier, !44, !"panel_notifier", i1 false, i1 false}
!44 = !{!"../drivers/auxdisplay/charlcd.c", i32 642, i32 30}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/auxdisplay/charlcd.c", i32 628, i32 9}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/auxdisplay/charlcd.c", i32 631, i32 21}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/auxdisplay/charlcd.c", i32 634, i32 21}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 4676765}
!64 = !{i64 4676962}
!65 = !{i64 2152162195}
!66 = !{i64 2153421470, i64 2153421750, i64 2153422084, i64 2153422418}
!67 = !{i64 2148220426}
!68 = !{i64 2148135159, i64 2148135191, i64 2148135220, i64 2148135254, i64 2148135285, i64 2148135308}
!69 = !{i64 2148220655}
!70 = !{i64 2148131974, i64 2148132000, i64 2148132029, i64 2148132063, i64 2148132094, i64 2148132117}
!71 = !{!"auto-init"}
