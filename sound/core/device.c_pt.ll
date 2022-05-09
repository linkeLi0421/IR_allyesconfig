; ModuleID = '/llk/IR_all_yes/sound/core/device.c_pt.bc'
source_filename = "../sound/core/device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_device_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_device_new\09\09\09\09"
module asm "\09.long\09__crc_snd_device_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_device_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_device_disconnect\09\09\09\09"
module asm "\09.long\09__crc_snd_device_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_device_free\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_device_free\09\09\09\09"
module asm "\09.long\09__crc_snd_device_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_device_register\09\09\09\09"
module asm "\09.long\09__crc_snd_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_device_get_state\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_device_get_state\09\09\09\09"
module asm "\09.long\09__crc_snd_device_get_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_get_state:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_get_state\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_get_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_device_ops = type { ptr, ptr, ptr }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sound/core/device.c\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_snd_device_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_new to i32), ptr @__kstrtab_snd_device_new, ptr @__kstrtabns_snd_device_new }, section "___ksymtab+snd_device_new", align 4
@snd_device_disconnect.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"snd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_device_disconnect\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"device disconnect %p (from %pS), not found\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_snd_device_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_disconnect to i32), ptr @__kstrtab_snd_device_disconnect, ptr @__kstrtabns_snd_device_disconnect }, section "___ksymtab_gpl+snd_device_disconnect", align 4
@snd_device_free.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_device_free\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"device free %p (from %pS), not found\0A\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_snd_device_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_free to i32), ptr @__kstrtab_snd_device_free, ptr @__kstrtabns_snd_device_free }, section "___ksymtab+snd_device_free", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_snd_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_register to i32), ptr @__kstrtab_snd_device_register, ptr @__kstrtabns_snd_device_register }, section "___ksymtab+snd_device_register", align 4
@__kstrtab_snd_device_get_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_get_state = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_get_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_get_state to i32), ptr @__kstrtab_snd_device_get_state, ptr @__kstrtabns_snd_device_get_state }, section "___ksymtab_gpl+snd_device_get_state", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__snd_device_disconnect._entry = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 64, ptr @.str.9, ptr @.str.10 }, align 1
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"device disconnect failure\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__snd_device_disconnect\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__snd_device_disconnect._entry_ptr = internal global ptr @__snd_device_disconnect._entry, section ".printk_index", align 4
@__snd_device_free._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 77, ptr @.str.9, ptr @.str.10 }, align 1
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device free failure\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__snd_device_free\00", [46 x i8] zeroinitializer }, align 32
@__snd_device_free._entry_ptr = internal global ptr @__snd_device_free._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 11]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 35, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 116, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 140, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 180, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 64, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [23 x i8] c"../sound/core/device.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 77, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_snd_device_disconnect, ptr @__ksymtab_snd_device_free, ptr @__ksymtab_snd_device_get_state, ptr @__ksymtab_snd_device_new, ptr @__ksymtab_snd_device_register, ptr @__snd_device_disconnect._entry, ptr @__snd_device_disconnect._entry_ptr, ptr @__snd_device_free._entry, ptr @__snd_device_free._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_device_new(ptr noundef %card, i32 noundef %type, ptr noundef %device_data, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  %tobool1.not = icmp eq ptr %device_data, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool2.not = icmp eq ptr %ops, null
  %spec.select = or i1 %or.cond, %tobool2.not
  br i1 %spec.select, label %do.end, label %if.end25, !prof !44

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #6
  br label %cleanup44

if.end25:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #9
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %if.end25.cleanup44_crit_edge, label %if.end28

if.end25.cleanup44_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.end28:                                         ; preds = %if.end25
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %card29 = getelementptr inbounds %struct.snd_device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %card29 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %card, ptr %card29, align 8
  %type30 = getelementptr inbounds %struct.snd_device, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %type30 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %type30, align 8
  %state = getelementptr inbounds %struct.snd_device, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  %device_data31 = getelementptr inbounds %struct.snd_device, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %device_data31 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %device_data, ptr %device_data31, align 4
  %ops32 = getelementptr inbounds %struct.snd_device, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %ops32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ops, ptr %ops32, align 8
  %devices = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11
  %prev = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.063 = load ptr, ptr %prev, align 4
  %cmp.i.not64 = icmp eq ptr %p.063, %devices
  br i1 %cmp.i.not64, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %p.065 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.063, %if.end28.for.body_crit_edge ]
  %type39 = getelementptr inbounds %struct.snd_device, ptr %p.065, i32 0, i32 3
  %9 = ptrtoint ptr %type39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %type)
  %cmp.not = icmp ugt i32 %10, %type
  br i1 %cmp.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %prev42 = getelementptr inbounds %struct.list_head, ptr %p.065, i32 0, i32 1
  %11 = ptrtoint ptr %prev42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %p.0 = load ptr, ptr %prev42, align 4
  %cmp.i.not = icmp eq ptr %p.0, %devices
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end28.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %devices, %if.end28.for.end_crit_edge ], [ %p.065, %for.body.for.end_crit_edge ], [ %devices, %for.inc.for.end_crit_edge ]
  %12 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p.0.lcssa, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %p.0.lcssa, ptr noundef %13) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.end.cleanup44_crit_edge

for.end.cleanup44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %call7.i.i, align 8
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %p.0.lcssa, ptr %prev.i, align 4
  %17 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %p.0.lcssa, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %if.end.i.i, %for.end.cleanup44_crit_edge, %if.end25.cleanup44_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -12, %if.end25.cleanup44_crit_edge ], [ 0, %for.end.cleanup44_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_device_disconnect(ptr noundef readonly %card, ptr noundef %device_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  %tobool1.not = icmp eq ptr %device_data, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !44

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %devices.i = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end24
  %dev.0.in.i = phi ptr [ %devices.i, %if.end24 ], [ %dev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0.i = load ptr, ptr %dev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, %devices.i
  br i1 %cmp.not.i, label %for.cond.i.do.body27_crit_edge, label %for.body.i

for.cond.i.do.body27_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

for.body.i:                                       ; preds = %for.cond.i
  %device_data2.i = getelementptr inbounds %struct.snd_device, ptr %dev.0.i, i32 0, i32 4
  %1 = ptrtoint ptr %device_data2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device_data2.i, align 4
  %cmp3.i = icmp eq ptr %2, %device_data
  br i1 %cmp3.i, label %look_for_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

look_for_dev.exit:                                ; preds = %for.body.i
  %tobool25.not = icmp eq ptr %dev.0.i, null
  br i1 %tobool25.not, label %look_for_dev.exit.do.body27_crit_edge, label %if.then26

look_for_dev.exit.do.body27_crit_edge:            ; preds = %look_for_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.then26:                                        ; preds = %look_for_dev.exit
  %state.i = getelementptr inbounds %struct.snd_device, ptr %dev.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %if.then.i, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then26
  %ops.i = getelementptr inbounds %struct.snd_device, ptr %dev.0.i, i32 0, i32 5
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %dev_disconnect.i = getelementptr inbounds %struct.snd_device_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev_disconnect.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_disconnect.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %call.i = tail call i32 %8(ptr noundef nonnull %dev.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %card.i = getelementptr inbounds %struct.snd_device, ptr %dev.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %dev5.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev5.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.7) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %state.i, align 4
  br label %cleanup

do.body27:                                        ; preds = %look_for_dev.exit.do.body27_crit_edge, %for.cond.i.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_device_disconnect.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_device_disconnect, %if.then37)) #6
          to label %cleanup [label %if.then37], !srcloc !45

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %dev38 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %14 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev38, align 8
  %16 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_device_disconnect.__UNIQUE_ID_ddebug185, ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef %device_data, ptr noundef %16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body27, %if.end.i, %if.then26.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_device_free(ptr noundef readonly %card, ptr noundef %device_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  %tobool1.not = icmp eq ptr %device_data, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !44

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %devices.i = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end24
  %dev.0.in.i = phi ptr [ %devices.i, %if.end24 ], [ %dev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0.i = load ptr, ptr %dev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, %devices.i
  br i1 %cmp.not.i, label %for.cond.i.do.body27_crit_edge, label %for.body.i

for.cond.i.do.body27_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

for.body.i:                                       ; preds = %for.cond.i
  %device_data2.i = getelementptr inbounds %struct.snd_device, ptr %dev.0.i, i32 0, i32 4
  %1 = ptrtoint ptr %device_data2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device_data2.i, align 4
  %cmp3.i = icmp eq ptr %2, %device_data
  br i1 %cmp3.i, label %look_for_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

look_for_dev.exit:                                ; preds = %for.body.i
  %tobool25.not = icmp eq ptr %dev.0.i, null
  br i1 %tobool25.not, label %look_for_dev.exit.do.body27_crit_edge, label %if.then26

look_for_dev.exit.do.body27_crit_edge:            ; preds = %look_for_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.then26:                                        ; preds = %look_for_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__snd_device_free(ptr noundef nonnull %dev.0.i)
  br label %cleanup

do.body27:                                        ; preds = %look_for_dev.exit.do.body27_crit_edge, %for.cond.i.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_device_free.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_device_free, %if.then37)) #6
          to label %cleanup [label %if.then37], !srcloc !45

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %dev38 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %3 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev38, align 8
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_device_free.__UNIQUE_ID_ddebug186, ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %device_data, ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body27, %if.then26, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__snd_device_free(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %dev, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %state.i = getelementptr inbounds %struct.snd_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %list_del.exit.__snd_device_disconnect.exit_crit_edge

list_del.exit.__snd_device_disconnect.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__snd_device_disconnect.exit

if.then.i:                                        ; preds = %list_del.exit
  %ops.i = getelementptr inbounds %struct.snd_device, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %dev_disconnect.i = getelementptr inbounds %struct.snd_device_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev_disconnect.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_disconnect.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %call.i = tail call i32 %13(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %card.i = getelementptr inbounds %struct.snd_device, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card.i, align 4
  %dev5.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.7) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %state.i, align 4
  br label %__snd_device_disconnect.exit

__snd_device_disconnect.exit:                     ; preds = %if.end.i, %list_del.exit.__snd_device_disconnect.exit_crit_edge
  %ops = getelementptr inbounds %struct.snd_device, ptr %dev, i32 0, i32 5
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %__snd_device_disconnect.exit.if.end6_crit_edge, label %if.then

__snd_device_disconnect.exit.if.end6_crit_edge:   ; preds = %__snd_device_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %__snd_device_disconnect.exit
  %call = tail call i32 %22(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %card = getelementptr inbounds %struct.snd_device, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %dev5 = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.11) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %__snd_device_disconnect.exit.if.end6_crit_edge
  tail call void @kfree(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_device_register(ptr noundef readonly %card, ptr noundef readnone %device_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  %tobool1.not = icmp eq ptr %device_data, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !44

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %devices.i = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end24
  %dev.0.in.i = phi ptr [ %devices.i, %if.end24 ], [ %dev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0.i = load ptr, ptr %dev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, %devices.i
  br i1 %cmp.not.i, label %for.cond.i.do.end41_crit_edge, label %for.body.i

for.cond.i.do.end41_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

for.body.i:                                       ; preds = %for.cond.i
  %device_data2.i = getelementptr inbounds %struct.snd_device, ptr %dev.0.i, i32 0, i32 4
  %1 = ptrtoint ptr %device_data2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device_data2.i, align 4
  %cmp3.i = icmp eq ptr %2, %device_data
  br i1 %cmp3.i, label %look_for_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

look_for_dev.exit:                                ; preds = %for.body.i
  %tobool25.not = icmp eq ptr %dev.0.i, null
  br i1 %tobool25.not, label %look_for_dev.exit.do.end41_crit_edge, label %if.then26

look_for_dev.exit.do.end41_crit_edge:             ; preds = %look_for_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

if.then26:                                        ; preds = %look_for_dev.exit
  %state.i = getelementptr inbounds %struct.snd_device, ptr %dev.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %if.then.i, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then26
  %ops.i = getelementptr inbounds %struct.snd_device, ptr %dev.0.i, i32 0, i32 5
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %dev_register.i = getelementptr inbounds %struct.snd_device_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev_register.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_register.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then1.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then1.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 %8(ptr noundef nonnull %dev.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp4.i = icmp sgt i32 %call.i, -1
  br i1 %cmp4.i, label %if.then1.i.if.end6.i_crit_edge, label %if.then1.i.cleanup_crit_edge

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1.i.if.end6.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then1.i.if.end6.i_crit_edge, %if.then.i.if.end6.i_crit_edge
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %state.i, align 4
  br label %cleanup

do.end41:                                         ; preds = %look_for_dev.exit.do.end41_crit_edge, %for.cond.i.do.end41_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end6.i, %if.then1.i.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end41 ], [ %call.i, %if.then1.i.cleanup_crit_edge ], [ 0, %if.end6.i ], [ 0, %if.then26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_device_register_all(ptr noundef readonly %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !44

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %devices = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.045 = load ptr, ptr %devices, align 4
  %cmp.not46 = icmp eq ptr %dev.045, %devices
  br i1 %cmp.not46, label %if.end23.cleanup_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %__snd_device_register.exit.for.body_crit_edge, %if.end23.for.body_crit_edge
  %dev.047 = phi ptr [ %dev.0, %__snd_device_register.exit.for.body_crit_edge ], [ %dev.045, %if.end23.for.body_crit_edge ]
  %state.i = getelementptr inbounds %struct.snd_device, ptr %dev.047, i32 0, i32 2
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.__snd_device_register.exit_crit_edge

for.body.__snd_device_register.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %__snd_device_register.exit

if.then.i:                                        ; preds = %for.body
  %ops.i = getelementptr inbounds %struct.snd_device, ptr %dev.047, i32 0, i32 5
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %dev_register.i = getelementptr inbounds %struct.snd_device_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev_register.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_register.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then1.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then1.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 %6(ptr noundef %dev.047) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp4.i = icmp sgt i32 %call.i, -1
  br i1 %cmp4.i, label %if.then1.i.if.end6.i_crit_edge, label %if.then1.i.cleanup_crit_edge

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1.i.if.end6.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then1.i.if.end6.i_crit_edge, %if.then.i.if.end6.i_crit_edge
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %state.i, align 4
  br label %__snd_device_register.exit

__snd_device_register.exit:                       ; preds = %if.end6.i, %for.body.__snd_device_register.exit_crit_edge
  %8 = ptrtoint ptr %dev.047 to i32
  call void @__asan_load4_noabort(i32 %8)
  %dev.0 = load ptr, ptr %dev.047, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %__snd_device_register.exit.cleanup_crit_edge, label %__snd_device_register.exit.for.body_crit_edge

__snd_device_register.exit.for.body_crit_edge:    ; preds = %__snd_device_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

__snd_device_register.exit.cleanup_crit_edge:     ; preds = %__snd_device_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %__snd_device_register.exit.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %__snd_device_register.exit.cleanup_crit_edge ], [ %call.i, %if.then1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_device_disconnect_all(ptr noundef readonly %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !44

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 212, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %devices = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11
  %prev = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.038 = load ptr, ptr %prev, align 4
  %cmp.not39 = icmp eq ptr %dev.038, %devices
  br i1 %cmp.not39, label %if.end23.cleanup_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %__snd_device_disconnect.exit.for.body_crit_edge, %if.end23.for.body_crit_edge
  %dev.040 = phi ptr [ %dev.0, %__snd_device_disconnect.exit.for.body_crit_edge ], [ %dev.038, %if.end23.for.body_crit_edge ]
  %state.i = getelementptr inbounds %struct.snd_device, ptr %dev.040, i32 0, i32 2
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp eq i32 %2, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.__snd_device_disconnect.exit_crit_edge

for.body.__snd_device_disconnect.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %__snd_device_disconnect.exit

if.then.i:                                        ; preds = %for.body
  %ops.i = getelementptr inbounds %struct.snd_device, ptr %dev.040, i32 0, i32 5
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %dev_disconnect.i = getelementptr inbounds %struct.snd_device_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev_disconnect.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_disconnect.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %call.i = tail call i32 %6(ptr noundef %dev.040) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %card.i = getelementptr inbounds %struct.snd_device, ptr %dev.040, i32 0, i32 1
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dev5.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev5.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.7) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %state.i, align 4
  br label %__snd_device_disconnect.exit

__snd_device_disconnect.exit:                     ; preds = %if.end.i, %for.body.__snd_device_disconnect.exit_crit_edge
  %prev30 = getelementptr inbounds %struct.list_head, ptr %dev.040, i32 0, i32 1
  %12 = ptrtoint ptr %prev30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %dev.0 = load ptr, ptr %prev30, align 4
  %cmp.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp.not, label %__snd_device_disconnect.exit.cleanup_crit_edge, label %__snd_device_disconnect.exit.for.body_crit_edge

__snd_device_disconnect.exit.for.body_crit_edge:  ; preds = %__snd_device_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

__snd_device_disconnect.exit.cleanup_crit_edge:   ; preds = %__snd_device_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %__snd_device_disconnect.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_device_free_all(ptr noundef readonly %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !44

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 226, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %devices = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11
  %prev = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %cmp.not85 = icmp eq ptr %1, %devices
  br i1 %cmp.not85, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end23.for.body_crit_edge
  %dev.086 = phi ptr [ %next.087, %for.inc.for.body_crit_edge ], [ %1, %if.end23.for.body_crit_edge ]
  %next.087.in = getelementptr inbounds %struct.list_head, ptr %dev.086, i32 0, i32 1
  %2 = ptrtoint ptr %next.087.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.087 = load ptr, ptr %next.087.in, align 4
  %type = getelementptr inbounds %struct.snd_device, ptr %dev.086, i32 0, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end37 [
    i32 11, label %for.body.for.inc_crit_edge
    i32 0, label %for.body.for.inc_crit_edge90
  ]

for.body.for.inc_crit_edge90:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end37:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__snd_device_free(ptr noundef %dev.086)
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge90
  %cmp.not = icmp eq ptr %next.087, %devices
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end23.for.end_crit_edge
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev, align 4
  %cmp56.not88 = icmp eq ptr %7, %devices
  br i1 %cmp56.not88, label %for.end.cleanup_crit_edge, label %for.end.for.body59_crit_edge

for.end.for.body59_crit_edge:                     ; preds = %for.end
  br label %for.body59

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.end.for.body59_crit_edge
  %dev.189 = phi ptr [ %next.1, %for.body59.for.body59_crit_edge ], [ %7, %for.end.for.body59_crit_edge ]
  %next.1.in = getelementptr inbounds %struct.list_head, ptr %dev.189, i32 0, i32 1
  %8 = ptrtoint ptr %next.1.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %next.1 = load ptr, ptr %next.1.in, align 4
  tail call fastcc void @__snd_device_free(ptr noundef %dev.189)
  %cmp56.not = icmp eq ptr %next.1, %devices
  br i1 %cmp56.not, label %for.body59.cleanup_crit_edge, label %for.body59.for.body59_crit_edge

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body59

for.body59.cleanup_crit_edge:                     ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body59.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_device_get_state(ptr noundef readonly %card, ptr noundef readnone %device_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %devices.i = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %dev.0.in.i = phi ptr [ %devices.i, %entry ], [ %dev.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev.0.i = load ptr, ptr %dev.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, %devices.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %device_data2.i = getelementptr inbounds %struct.snd_device, ptr %dev.0.i, i32 0, i32 4
  %1 = ptrtoint ptr %device_data2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device_data2.i, align 4
  %cmp3.i = icmp eq ptr %2, %device_data
  br i1 %cmp3.i, label %look_for_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

look_for_dev.exit:                                ; preds = %for.body.i
  %tobool.not = icmp eq ptr %dev.0.i, null
  br i1 %tobool.not, label %look_for_dev.exit.cleanup_crit_edge, label %if.then

look_for_dev.exit.cleanup_crit_edge:              ; preds = %look_for_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %look_for_dev.exit
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.snd_device, ptr %dev.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %look_for_dev.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then ], [ -1, %look_for_dev.exit.cleanup_crit_edge ], [ -1, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/device.c", i32 35, i32 6}
!2 = !{ptr @__ksymtab_snd_device_new, !3, !"__ksymtab_snd_device_new", i1 false, i1 false}
!3 = !{!"../sound/core/device.c", i32 57, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/core/device.c", i32 116, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snd_device_disconnect.__UNIQUE_ID_ddebug185, !5, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!9 = !{ptr @__ksymtab_snd_device_disconnect, !10, !"__ksymtab_snd_device_disconnect", i1 false, i1 false}
!10 = !{!"../sound/core/device.c", i32 119, i32 1}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/core/device.c", i32 140, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @snd_device_free.__UNIQUE_ID_ddebug186, !12, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!15 = !{ptr @__ksymtab_snd_device_free, !16, !"__ksymtab_snd_device_free", i1 false, i1 false}
!16 = !{!"../sound/core/device.c", i32 143, i32 1}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/core/device.c", i32 180, i32 2}
!19 = !{ptr @__ksymtab_snd_device_register, !20, !"__ksymtab_snd_device_register", i1 false, i1 false}
!20 = !{!"../sound/core/device.c", i32 183, i32 1}
!21 = !{ptr @__ksymtab_snd_device_get_state, !22, !"__ksymtab_snd_device_get_state", i1 false, i1 false}
!22 = !{!"../sound/core/device.c", i32 260, i32 1}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/core/device.c", i32 64, i32 4}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__snd_device_disconnect._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @__snd_device_disconnect._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/core/device.c", i32 77, i32 4}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__snd_device_free._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @__snd_device_free._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 2148205867, i64 2148205872, i64 2148205885, i64 2148205929, i64 2148205963, i64 2148205984}
