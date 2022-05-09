; ModuleID = '/llk/IR_all_yes/sound/core/sound_oss.c_pt.bc'
source_filename = "../sound/core/sound_oss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_lookup_oss_minor_data\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_lookup_oss_minor_data\09\09\09\09"
module asm "\09.long\09__crc_snd_lookup_oss_minor_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_lookup_oss_minor_data:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_lookup_oss_minor_data\22\09\09\09\09\09"
module asm "__kstrtabns_snd_lookup_oss_minor_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_register_oss_device\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_register_oss_device\09\09\09\09"
module asm "\09.long\09__crc_snd_register_oss_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_register_oss_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_register_oss_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_register_oss_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_unregister_oss_device\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_unregister_oss_device\09\09\09\09"
module asm "\09.long\09__crc_snd_unregister_oss_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_unregister_oss_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_unregister_oss_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_unregister_oss_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_minor = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@sound_oss_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sound_oss_mutex, i64 52), ptr getelementptr (i8, ptr @sound_oss_mutex, i64 52) }, ptr @sound_oss_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@snd_oss_minors = internal global { [256 x ptr], [256 x i8] } zeroinitializer, align 32
@__kstrtab_snd_lookup_oss_minor_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_lookup_oss_minor_data = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_lookup_oss_minor_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_lookup_oss_minor_data to i32), ptr @__kstrtab_snd_lookup_oss_minor_data, ptr @__kstrtabns_snd_lookup_oss_minor_data }, section "___ksymtab+snd_lookup_oss_minor_data", align 4
@__kstrtab_snd_register_oss_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_register_oss_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_register_oss_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_register_oss_device to i32), ptr @__kstrtab_snd_register_oss_device, ptr @__kstrtabns_snd_register_oss_device }, section "___ksymtab+snd_register_oss_device", align 4
@__kstrtab_snd_unregister_oss_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_unregister_oss_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_unregister_oss_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_unregister_oss_device to i32), ptr @__kstrtab_snd_unregister_oss_device, ptr @__kstrtabns_snd_unregister_oss_device }, section "___ksymtab+snd_unregister_oss_device", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@snd_oss_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound_oss_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sound_oss_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/core/sound_oss.c\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%3i: [%i-%2i]: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%3i:       : %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mixer\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sequencer\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"digital audio\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raw midi\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hardware dependent\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@switch.table.snd_minor_info_oss_read = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.7], [36 x i8] zeroinitializer }, align 32
@switch.table.snd_minor_info_oss_read.12 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.7], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 13]
@__sancov_gen_cov_switch_values.13 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 13]
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"sound_oss_mutex\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"snd_oss_minors\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 19, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 239, i32 52 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 20, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 51, i32 7 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 224, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 228, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 197, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 200, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 202, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 204, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 206, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [26 x i8] c"../sound/core/sound_oss.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 208, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant [37 x i8] c"switch.table.snd_minor_info_oss_read\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [40 x i8] c"switch.table.snd_minor_info_oss_read.12\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_snd_lookup_oss_minor_data, ptr @__ksymtab_snd_register_oss_device, ptr @__ksymtab_snd_unregister_oss_device, ptr @sound_oss_mutex, ptr @snd_oss_minors, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @switch.table.snd_minor_info_oss_read, ptr @switch.table.snd_minor_info_oss_read.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sound_oss_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oss_minors to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_minor_info_oss_read to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_minor_info_oss_read.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_lookup_oss_minor_data(i32 noundef %minor, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %minor)
  %cmp = icmp ugt i32 %minor, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @sound_oss_mutex, i32 noundef 0) #4
  %arrayidx = getelementptr [256 x ptr], ptr @snd_oss_minors, i32 0, i32 %minor
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type)
  %cmp2 = icmp eq i32 %3, %type
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then3:                                         ; preds = %land.lhs.true
  %private_data4 = getelementptr inbounds %struct.snd_minor, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %private_data4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.then3.if.end11_crit_edge, label %land.lhs.true6

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true6:                                   ; preds = %if.then3
  %card_ptr = getelementptr inbounds %struct.snd_minor, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %card_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card_ptr, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true6.if.end11_crit_edge, label %if.then8

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 28
  %call = tail call ptr @get_device(ptr noundef %card_dev) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true6.if.end11_crit_edge, %if.then3.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %private_data.0 = phi ptr [ %5, %if.then8 ], [ %5, %land.lhs.true6.if.end11_crit_edge ], [ null, %if.then3.if.end11_crit_edge ], [ null, %land.lhs.true.if.end11_crit_edge ], [ null, %if.end.if.end11_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @sound_oss_mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %private_data.0, %if.end11 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_register_oss_device(i32 noundef %type, ptr noundef %card, i32 noundef %dev, ptr noundef %f_ops, ptr noundef %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_oss_kernel_minor(i32 noundef %type, ptr noundef %card, i32 noundef %dev)
  %0 = and i32 %call, -16
  %tobool.not.i = icmp eq ptr %card, null
  %card_dev.i = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 28
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %card_dev.i
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %card, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %2)
  %cmp = icmp sgt i32 %2, 15
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 28) #7
  %cmp6 = icmp eq ptr %call7.i, null
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %call7.i, align 8
  br i1 %tobool.not.i, label %if.end8.cond.end_crit_edge, label %cond.true

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %card, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end8.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ -1, %if.end8.cond.end_crit_edge ]
  %card12 = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %card12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %card12, align 4
  %device = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dev, ptr %device, align 8
  %f_ops13 = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 3
  %9 = ptrtoint ptr %f_ops13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %f_ops, ptr %f_ops13, align 4
  %private_data14 = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %private_data14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %private_data, ptr %private_data14, align 8
  %card_ptr = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 6
  %11 = ptrtoint ptr %card_ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %card, ptr %card_ptr, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @sound_oss_mutex, i32 noundef 0) #4
  %arrayidx = getelementptr [256 x ptr], ptr @snd_oss_minors, i32 0, i32 %call
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %arrayidx, align 4
  %and = and i32 %call, 15
  %13 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.epilog.thread [
    i32 3, label %cond.end.sw.epilog_crit_edge
    i32 2, label %sw.bb15
    i32 13, label %sw.bb18
  ]

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb15:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb18:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb15, %cond.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 14, %sw.bb18 ], [ 9, %sw.bb15 ], [ 4, %cond.end.sw.epilog_crit_edge ]
  %or20 = or i32 %0, %.sink
  %call21 = tail call i32 @register_sound_special_device(ptr noundef %f_ops, i32 noundef %call, ptr noundef %spec.select.i) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %call)
  %cmp22.not = icmp eq i32 %call21, %call
  br i1 %cmp22.not, label %if.end24, label %sw.epilog.if.end35_crit_edge

sw.epilog.if.end35_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

sw.epilog.thread:                                 ; preds = %cond.end
  %call2184 = tail call i32 @register_sound_special_device(ptr noundef %f_ops, i32 noundef %call, ptr noundef %spec.select.i) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2184, i32 %call)
  %cmp22.not85 = icmp eq i32 %call2184, %call
  br i1 %cmp22.not85, label %sw.epilog.thread.if.end32_crit_edge, label %sw.epilog.thread.if.end35_crit_edge

sw.epilog.thread.if.end35_crit_edge:              ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

sw.epilog.thread.if.end32_crit_edge:              ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end24:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or20)
  %cmp25 = icmp sgt i32 %or20, -1
  br i1 %cmp25, label %if.then26, label %if.end24.if.end32_crit_edge

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @register_sound_special_device(ptr noundef %f_ops, i32 noundef %or20, ptr noundef %spec.select.i) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %or20)
  %cmp28.not = icmp eq i32 %call27, %or20
  br i1 %cmp28.not, label %if.end30, label %__end

if.end30:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx31 = getelementptr [256 x ptr], ptr @snd_oss_minors, i32 0, i32 %or20
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %arrayidx31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end24.if.end32_crit_edge, %sw.epilog.thread.if.end32_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sound_oss_mutex) #4
  br label %cleanup

__end:                                            ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp33 = icmp sgt i32 %call27, -1
  br i1 %cmp33, label %if.then34, label %__end.if.then37_crit_edge

__end.if.then37_crit_edge:                        ; preds = %__end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.then34:                                        ; preds = %__end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @unregister_sound_special(i32 noundef %call27) #4
  br label %if.then37

if.end35:                                         ; preds = %sw.epilog.thread.if.end35_crit_edge, %sw.epilog.if.end35_crit_edge
  %call218795 = phi i32 [ %call2184, %sw.epilog.thread.if.end35_crit_edge ], [ %call21, %sw.epilog.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call218795)
  %cmp36 = icmp sgt i32 %call218795, -1
  br i1 %cmp36, label %if.end35.if.then37_crit_edge, label %if.end35.if.end38_crit_edge

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.end35.if.then37_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.then37:                                        ; preds = %if.end35.if.then37_crit_edge, %if.then34, %__end.if.then37_crit_edge
  %call21879598 = phi i32 [ %call218795, %if.end35.if.then37_crit_edge ], [ %call, %if.then34 ], [ %call, %__end.if.then37_crit_edge ]
  tail call void @unregister_sound_special(i32 noundef %call21879598) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sound_oss_mutex) #4
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end32, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end38 ], [ 0, %if.end32 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_oss_kernel_minor(i32 noundef %type, ptr noundef readonly %card, i32 noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog.thread_crit_edge
    i32 6, label %sw.bb26
    i32 2, label %sw.bb27
    i32 3, label %sw.bb72
    i32 4, label %sw.bb117
    i32 5, label %sw.bb121
  ]

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %card, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dev)
  %1 = icmp ugt i32 %dev, 1
  %2 = or i1 %tobool.not, %1
  br i1 %2, label %do.end, label %if.end23, !prof !41

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 51, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %card, align 8
  %shl = shl i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %tobool24.not = icmp eq i32 %dev, 0
  %cond = select i1 %tobool24.not, i32 0, i32 11
  %or = or i32 %shl, %cond
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

sw.bb27:                                          ; preds = %entry
  %tobool29.not = icmp eq ptr %card, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dev)
  %5 = icmp ugt i32 %dev, 1
  %6 = or i1 %tobool29.not, %5
  br i1 %6, label %do.end50, label %if.end66, !prof !41

do.end50:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 62, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end66:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %card, align 8
  %shl68 = shl i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %tobool69.not = icmp eq i32 %dev, 0
  %cond70 = select i1 %tobool69.not, i32 3, i32 12
  %or71 = or i32 %shl68, %cond70
  br label %sw.epilog

sw.bb72:                                          ; preds = %entry
  %tobool74.not = icmp eq ptr %card, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dev)
  %9 = icmp ugt i32 %dev, 1
  %10 = or i1 %tobool74.not, %9
  br i1 %10, label %do.end95, label %if.end111, !prof !41

do.end95:                                         ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 67, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end111:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %card, align 8
  %shl113 = shl i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev)
  %tobool114.not = icmp eq i32 %dev, 0
  %cond115 = select i1 %tobool114.not, i32 2, i32 13
  %or116 = or i32 %shl113, %cond115
  br label %sw.epilog

sw.bb117:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %card, align 8
  %shl119 = shl i32 %14, 4
  %or120 = or i32 %shl119, 10
  br label %sw.epilog

sw.bb121:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb121, %sw.bb26, %entry.sw.epilog.thread_crit_edge
  %minor.0.ph = phi i32 [ %type, %entry.sw.epilog.thread_crit_edge ], [ 8, %sw.bb26 ], [ 6, %sw.bb121 ]
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb117, %if.end111, %if.end66, %if.end23
  %minor.0 = phi i32 [ %or120, %sw.bb117 ], [ %or116, %if.end111 ], [ %or71, %if.end66 ], [ %or, %if.end23 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %minor.0)
  %15 = icmp ugt i32 %minor.0, 255
  %spec.select = select i1 %15, i32 -22, i32 %minor.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.epilog.thread, %do.end95, %do.end50, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end95 ], [ -22, %do.end50 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %minor.0.ph, %sw.epilog.thread ], [ %spec.select, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_sound_special_device(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sound_special(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_unregister_oss_device(i32 noundef %type, ptr noundef %card, i32 noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_oss_kernel_minor(i32 noundef %type, ptr noundef %card, i32 noundef %dev)
  %0 = and i32 %call, -16
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %card, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %2)
  %cmp = icmp sgt i32 %2, 15
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @sound_oss_mutex, i32 noundef 0) #4
  %arrayidx = getelementptr [256 x ptr], ptr @snd_oss_minors, i32 0, i32 %call
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @sound_oss_mutex) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  tail call void @unregister_sound_special(i32 noundef %call) #4
  %and = and i32 %call, 15
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and, label %if.end6.if.end16_crit_edge [
    i32 3, label %if.end6.sw.epilog_crit_edge
    i32 2, label %sw.bb7
    i32 13, label %sw.bb10
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb7, %if.end6.sw.epilog_crit_edge
  %.sink = phi i32 [ 14, %sw.bb10 ], [ 9, %sw.bb7 ], [ 4, %if.end6.sw.epilog_crit_edge ]
  %or12 = or i32 %0, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or12)
  %cmp13 = icmp sgt i32 %or12, -1
  br i1 %cmp13, label %if.then14, label %sw.epilog.if.end16_crit_edge

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @unregister_sound_special(i32 noundef %or12) #4
  %arrayidx15 = getelementptr [256 x ptr], ptr @snd_oss_minors, i32 0, i32 %or12
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %sw.epilog.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sound_oss_mutex) #4
  tail call void @kfree(ptr noundef nonnull %4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then5, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then5 ], [ 0, %if.end16 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_minor_info_oss_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_oss_root to i32))
  %0 = load ptr, ptr @snd_oss_root, align 4
  %call = tail call ptr @snd_info_create_module_entry(ptr noundef null, ptr noundef nonnull @.str, ptr noundef %0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @snd_minor_info_oss_read, ptr %c, align 4
  %call2 = tail call i32 @snd_info_register(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_minor_info_oss_read(ptr nocapture noundef readnone %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sound_oss_mutex, i32 noundef 0) #4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %minor.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @snd_oss_minors, i32 0, i32 %minor.028
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %card = getelementptr inbounds %struct.snd_minor, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp2 = icmp sgt i32 %3, -1
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %device = getelementptr inbounds %struct.snd_minor, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %switch.lookup, label %if.then3.snd_oss_device_type_name.exit_crit_edge

if.then3.snd_oss_device_type_name.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_oss_device_type_name.exit

switch.lookup:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.snd_minor_info_oss_read, i32 0, i32 %9
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %snd_oss_device_type_name.exit

snd_oss_device_type_name.exit:                    ; preds = %switch.lookup, %if.then3.snd_oss_device_type_name.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.11, %if.then3.snd_oss_device_type_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %minor.028, i32 noundef %3, i32 noundef %7, ptr noundef nonnull %retval.0.i) #4
  br label %for.inc

if.else:                                          ; preds = %if.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %switch.lookup30, label %if.else.snd_oss_device_type_name.exit27_crit_edge

if.else.snd_oss_device_type_name.exit27_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_oss_device_type_name.exit27

switch.lookup30:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep31 = getelementptr inbounds [7 x ptr], ptr @switch.table.snd_minor_info_oss_read.12, i32 0, i32 %13
  %15 = ptrtoint ptr %switch.gep31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load32 = load ptr, ptr %switch.gep31, align 4
  br label %snd_oss_device_type_name.exit27

snd_oss_device_type_name.exit27:                  ; preds = %switch.lookup30, %if.else.snd_oss_device_type_name.exit27_crit_edge
  %retval.0.i26 = phi ptr [ %switch.load32, %switch.lookup30 ], [ @.str.11, %if.else.snd_oss_device_type_name.exit27_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %minor.028, ptr noundef nonnull %retval.0.i26) #4
  br label %for.inc

for.inc:                                          ; preds = %snd_oss_device_type_name.exit27, %snd_oss_device_type_name.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %minor.028, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @sound_oss_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_snd_lookup_oss_minor_data, !1, !"__ksymtab_snd_lookup_oss_minor_data", i1 false, i1 false}
!1 = !{!"../sound/core/sound_oss.c", i32 43, i32 1}
!2 = !{ptr @__ksymtab_snd_register_oss_device, !3, !"__ksymtab_snd_register_oss_device", i1 false, i1 false}
!3 = !{!"../sound/core/sound_oss.c", i32 146, i32 1}
!4 = !{ptr @__ksymtab_snd_unregister_oss_device, !5, !"__ksymtab_snd_unregister_oss_device", i1 false, i1 false}
!5 = !{!"../sound/core/sound_oss.c", i32 186, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/core/sound_oss.c", i32 239, i32 52}
!8 = !{ptr @snd_oss_minors, !9, !"snd_oss_minors", i1 false, i1 false}
!9 = !{!"../sound/core/sound_oss.c", i32 19, i32 26}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/core/sound_oss.c", i32 20, i32 8}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sound_oss_mutex, !11, !"sound_oss_mutex", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/core/sound_oss.c", i32 51, i32 7}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/core/sound_oss.c", i32 224, i32 4}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/core/sound_oss.c", i32 228, i32 4}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/core/sound_oss.c", i32 197, i32 10}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/core/sound_oss.c", i32 200, i32 10}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/core/sound_oss.c", i32 202, i32 10}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/core/sound_oss.c", i32 204, i32 10}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/core/sound_oss.c", i32 206, i32 10}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/core/sound_oss.c", i32 208, i32 10}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
