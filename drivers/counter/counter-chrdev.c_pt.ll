; ModuleID = '/llk/IR_all_yes/drivers/counter/counter-chrdev.c_pt.bc'
source_filename = "../drivers/counter/counter-chrdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+counter_push_event\22, \22a\22\09"
module asm "\09.weak\09__crc_counter_push_event\09\09\09\09"
module asm "\09.long\09__crc_counter_push_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_push_event:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_push_event\22\09\09\09\09\09"
module asm "__kstrtabns_counter_push_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.69, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.69 = type { %union.anon.70, [0 x %struct.counter_event] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.counter_event_node = type { %struct.list_head, i8, i8, %struct.list_head }
%struct.counter_comp_node = type { %struct.list_head, %struct.counter_component, %struct.counter_comp, ptr }
%struct.counter_comp = type { i32, ptr, ptr, %union.anon.67, %union.anon.68 }
%union.anon.67 = type { ptr }
%union.anon.68 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.counter_signal = type { i32, ptr, ptr, i32 }
%struct.counter_count = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.counter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.counter_synapse = type { ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }

@counter_chrdev_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&counter->events_list_lock\00", [37 x i8] zeroinitializer }, align 32
@counter_chrdev_add.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&counter->n_events_list_lock\00", [35 x i8] zeroinitializer }, align 32
@counter_chrdev_add.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&counter->events_wait\00", [42 x i8] zeroinitializer }, align 32
@counter_chrdev_add.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&counter->events_in_lock\00", [39 x i8] zeroinitializer }, align 32
@counter_chrdev_add.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&counter->events_out_lock\00", [38 x i8] zeroinitializer }, align 32
@counter_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @counter_chrdev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @counter_chrdev_poll, ptr @counter_chrdev_ioctl, ptr null, ptr null, i32 0, ptr @counter_chrdev_open, ptr null, ptr @counter_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_counter_push_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_push_event = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_push_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_push_event to i32), ptr @__kstrtab_counter_push_event, ptr @__kstrtabns_counter_push_event }, section "___ksymtab_gpl+counter_push_event", align 4
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/counter/counter-chrdev.c\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 15873, i64 15874, i64 1074150912]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 436, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 437, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 438, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 439, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 440, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"counter_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 421, i32 37 }
@___asan_gen_.53 = private constant [36 x i8] c"../drivers/counter/counter-chrdev.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 75, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 156, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_counter_push_event, ptr @counter_chrdev_add.__key, ptr @.str, ptr @counter_chrdev_add.__key.1, ptr @.str.2, ptr @counter_chrdev_add.__key.3, ptr @.str.4, ptr @counter_chrdev_add.__key.5, ptr @.str.6, ptr @counter_chrdev_add.__key.7, ptr @.str.8, ptr @counter_fops, ptr @.str.9, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_chrdev_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_chrdev_add.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_chrdev_add.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_chrdev_add.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_chrdev_add.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @counter_chrdev_add(ptr noundef %counter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %events_list = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 11
  %0 = ptrtoint ptr %events_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %events_list, ptr %events_list, align 4
  %prev.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 11, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %events_list, ptr %prev.i, align 4
  %next_events_list = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 13
  %2 = ptrtoint ptr %next_events_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %next_events_list, ptr %next_events_list, align 4
  %prev.i20 = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %next_events_list, ptr %prev.i20, align 4
  %events_list_lock = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %events_list_lock, ptr noundef nonnull @.str, ptr noundef nonnull @counter_chrdev_add.__key, i16 noundef signext 3) #5
  %n_events_list_lock = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %n_events_list_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @counter_chrdev_add.__key.1) #5
  %events_wait = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %events_wait, ptr noundef nonnull @.str.4, ptr noundef nonnull @counter_chrdev_add.__key.3) #5
  %events_in_lock = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %events_in_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @counter_chrdev_add.__key.5, i16 noundef signext 3) #5
  %events_out_lock = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %events_out_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @counter_chrdev_add.__key.7) #5
  %chrdev = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 10
  tail call void @cdev_init(ptr noundef %chrdev, ptr noundef nonnull @counter_fops) #5
  %events = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 15
  %call10 = tail call i32 @__kfifo_alloc(ptr noundef %events, i32 noundef 64, i32 noundef 24, i32 noundef 3264) #5
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @counter_chrdev_remove(ptr noundef %counter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %events = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 15
  tail call void @__kfifo_free(ptr noundef %events) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @counter_push_event(ptr noundef %counter, i8 noundef zeroext %event, i8 noundef zeroext %channel) #0 align 64 {
entry:
  %value_u8.i = alloca i8, align 1
  %value_u32.i = alloca i32, align 4
  %ev = alloca %struct.counter_event, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ev) #5
  %0 = getelementptr inbounds i8, ptr %ev, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %call.i = tail call i64 @ktime_get() #5
  %2 = ptrtoint ptr %ev to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i, ptr %ev, align 8
  %watch = getelementptr inbounds %struct.counter_event, ptr %ev, i32 0, i32 2
  %event1 = getelementptr inbounds %struct.counter_event, ptr %ev, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %event1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %event, ptr %event1, align 4
  %channel3 = getelementptr inbounds %struct.counter_event, ptr %ev, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %channel3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %channel, ptr %channel3, align 1
  %events_list_lock = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 12
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %events_list_lock) #5
  %events_list = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 11
  %5 = ptrtoint ptr %events_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %event_node.088 = load ptr, ptr %events_list, align 4
  %cmp1189 = icmp eq ptr %event_node.088, %events_list
  br i1 %cmp1189, label %entry.exit_early.thread_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.exit_early.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_early.thread

exit_early.thread:                                ; preds = %for.inc.exit_early.thread_crit_edge, %entry.exit_early.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %events_list_lock, i32 noundef %call6) #5
  br label %if.end62

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %event_node.090 = phi ptr [ %event_node.0, %for.inc.for.body_crit_edge ], [ %event_node.088, %entry.for.body_crit_edge ]
  %event13 = getelementptr inbounds %struct.counter_event_node, ptr %event_node.090, i32 0, i32 1
  %6 = ptrtoint ptr %event13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %event13, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %event)
  %cmp16 = icmp eq i8 %7, %event
  br i1 %cmp16, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %channel18 = getelementptr inbounds %struct.counter_event_node, ptr %event_node.090, i32 0, i32 2
  %8 = ptrtoint ptr %channel18 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %channel18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %channel)
  %cmp21 = icmp eq i8 %9, %channel
  br i1 %cmp21, label %if.end33.critedge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %event_node.090 to i32
  call void @__asan_load4_noabort(i32 %10)
  %event_node.0 = load ptr, ptr %event_node.090, align 4
  %cmp11 = icmp eq ptr %event_node.0, %events_list
  br i1 %cmp11, label %for.inc.exit_early.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.exit_early.thread_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_early.thread

if.end33.critedge:                                ; preds = %land.lhs.true
  %comp_list = getelementptr inbounds %struct.counter_event_node, ptr %event_node.090, i32 0, i32 3
  %11 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %comp_node.091 = load ptr, ptr %comp_list, align 4
  %cmp41.not92 = icmp eq ptr %comp_node.091, %comp_list
  br i1 %cmp41.not92, label %exit_early.thread96, label %for.body44.lr.ph

exit_early.thread96:                              ; preds = %if.end33.critedge
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %events_list_lock, i32 noundef %call6) #5
  br label %if.end62

for.body44.lr.ph:                                 ; preds = %if.end33.critedge
  %value = getelementptr inbounds %struct.counter_event, ptr %ev, i32 0, i32 1
  %status = getelementptr inbounds %struct.counter_event, ptr %ev, i32 0, i32 3
  %events_in_lock = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 17
  %events = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 15
  br label %for.body44

for.body44:                                       ; preds = %counter_get_data.exit.for.body44_crit_edge, %for.body44.lr.ph
  %comp_node.094 = phi ptr [ %comp_node.091, %for.body44.lr.ph ], [ %comp_node.0, %counter_get_data.exit.for.body44_crit_edge ]
  %copied.093 = phi i32 [ 0, %for.body44.lr.ph ], [ %add, %counter_get_data.exit.for.body44_crit_edge ]
  %component46 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 1
  %12 = ptrtoint ptr %component46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %component46, align 4
  %14 = ptrtoint ptr %watch to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %watch, align 8
  %parent2.i = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 3
  %15 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent2.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value_u8.i) #5
  %17 = ptrtoint ptr %value_u8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %value_u8.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value_u32.i) #5
  %18 = ptrtoint ptr %value_u32.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %value_u32.i, align 4
  %19 = ptrtoint ptr %component46 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %component46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i = icmp eq i8 %20, 0
  br i1 %cmp.i, label %for.body44.counter_get_data.exit_crit_edge, label %if.end.i

for.body44.counter_get_data.exit_crit_edge:       ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_get_data.exit

if.end.i:                                         ; preds = %for.body44
  %comp1.i = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2
  %21 = ptrtoint ptr %comp1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %comp1.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end.i.counter_get_data.exit_crit_edge [
    i32 0, label %if.end.i.sw.bb.i_crit_edge
    i32 2, label %if.end.i.sw.bb.i_crit_edge102
    i32 3, label %if.end.i.sw.bb13.i_crit_edge
    i32 4, label %if.end.i.sw.bb13.i_crit_edge103
    i32 6, label %if.end.i.sw.bb13.i_crit_edge104
    i32 7, label %if.end.i.sw.bb13.i_crit_edge105
    i32 8, label %if.end.i.sw.bb13.i_crit_edge106
    i32 1, label %sw.bb25.i
    i32 5, label %sw.bb35.i
  ]

if.end.i.sw.bb13.i_crit_edge106:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end.i.sw.bb13.i_crit_edge105:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end.i.sw.bb13.i_crit_edge104:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end.i.sw.bb13.i_crit_edge103:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end.i.sw.bb13.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end.i.sw.bb.i_crit_edge102:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.i.counter_get_data.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_get_data.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge102
  %scope.i = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %scope.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %scope.i, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %25, label %sw.bb.i.sw.epilog.i_crit_edge [
    i8 0, label %sw.bb7.i
    i8 1, label %sw.bb8.i
    i8 2, label %sw.bb10.i
  ]

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i84 = call i32 %29(ptr noundef %counter, ptr noundef nonnull %value_u8.i) #5
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call9.i = call i32 %32(ptr noundef %counter, ptr noundef %16, ptr noundef nonnull %value_u8.i) #5
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call11.i = call i32 %35(ptr noundef %counter, ptr noundef %16, ptr noundef nonnull %value_u8.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb10.i, %sw.bb8.i, %sw.bb7.i, %sw.bb.i.sw.epilog.i_crit_edge
  %ret.0.i = phi i32 [ -1, %sw.bb.i.sw.epilog.i_crit_edge ], [ %call11.i, %sw.bb10.i ], [ %call9.i, %sw.bb8.i ], [ %call.i84, %sw.bb7.i ]
  %36 = ptrtoint ptr %value_u8.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %value_u8.i, align 1
  %conv12.i = zext i8 %37 to i64
  %38 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv12.i, ptr %value, align 8
  br label %counter_get_data.exit

sw.bb13.i:                                        ; preds = %if.end.i.sw.bb13.i_crit_edge, %if.end.i.sw.bb13.i_crit_edge103, %if.end.i.sw.bb13.i_crit_edge104, %if.end.i.sw.bb13.i_crit_edge105, %if.end.i.sw.bb13.i_crit_edge106
  %scope15.i = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %scope15.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %scope15.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %40, label %sw.bb13.i.sw.epilog23.i_crit_edge [
    i8 0, label %sw.bb17.i
    i8 1, label %sw.bb19.i
    i8 2, label %sw.bb21.i
  ]

sw.bb13.i.sw.epilog23.i_crit_edge:                ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog23.i

sw.bb17.i:                                        ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call18.i = call i32 %44(ptr noundef %counter, ptr noundef nonnull %value_u32.i) #5
  br label %sw.epilog23.i

sw.bb19.i:                                        ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 3
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call20.i = call i32 %47(ptr noundef %counter, ptr noundef %16, ptr noundef nonnull %value_u32.i) #5
  br label %sw.epilog23.i

sw.bb21.i:                                        ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call22.i = call i32 %50(ptr noundef %counter, ptr noundef %16, ptr noundef nonnull %value_u32.i) #5
  br label %sw.epilog23.i

sw.epilog23.i:                                    ; preds = %sw.bb21.i, %sw.bb19.i, %sw.bb17.i, %sw.bb13.i.sw.epilog23.i_crit_edge
  %ret.1.i = phi i32 [ -1, %sw.bb13.i.sw.epilog23.i_crit_edge ], [ %call22.i, %sw.bb21.i ], [ %call20.i, %sw.bb19.i ], [ %call18.i, %sw.bb17.i ]
  %51 = ptrtoint ptr %value_u32.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %value_u32.i, align 4
  %conv24.i = zext i32 %52 to i64
  %53 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv24.i, ptr %value, align 8
  br label %counter_get_data.exit

sw.bb25.i:                                        ; preds = %if.end.i
  %scope27.i = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %scope27.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %scope27.i, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %55, label %sw.bb25.i.counter_get_data.exit_crit_edge [
    i8 0, label %sw.bb29.i
    i8 1, label %sw.bb31.i
    i8 2, label %sw.bb33.i
  ]

sw.bb25.i.counter_get_data.exit_crit_edge:        ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_get_data.exit

sw.bb29.i:                                        ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #7
  %57 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 3
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %call30.i = call i32 %59(ptr noundef %counter, ptr noundef %value) #5
  br label %counter_get_data.exit

sw.bb31.i:                                        ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 3
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call32.i = call i32 %62(ptr noundef %counter, ptr noundef %16, ptr noundef %value) #5
  br label %counter_get_data.exit

sw.bb33.i:                                        ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #7
  %63 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %call34.i = call i32 %65(ptr noundef %counter, ptr noundef %16, ptr noundef %value) #5
  br label %counter_get_data.exit

sw.bb35.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %66 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 3
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %priv.i = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.094, i32 0, i32 2, i32 2
  %69 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv.i, align 4
  %call36.i = call i32 %68(ptr noundef %counter, ptr noundef %16, ptr noundef %70, ptr noundef nonnull %value_u32.i) #5
  %71 = ptrtoint ptr %value_u32.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %value_u32.i, align 4
  %conv37.i = zext i32 %72 to i64
  %73 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv37.i, ptr %value, align 8
  br label %counter_get_data.exit

counter_get_data.exit:                            ; preds = %sw.bb35.i, %sw.bb33.i, %sw.bb31.i, %sw.bb29.i, %sw.bb25.i.counter_get_data.exit_crit_edge, %sw.epilog23.i, %sw.epilog.i, %if.end.i.counter_get_data.exit_crit_edge, %for.body44.counter_get_data.exit_crit_edge
  %retval.0.i = phi i32 [ %call36.i, %sw.bb35.i ], [ %call34.i, %sw.bb33.i ], [ %call32.i, %sw.bb31.i ], [ %call30.i, %sw.bb29.i ], [ %ret.1.i, %sw.epilog23.i ], [ %ret.0.i, %sw.epilog.i ], [ 0, %for.body44.counter_get_data.exit_crit_edge ], [ -22, %sw.bb25.i.counter_get_data.exit_crit_edge ], [ -22, %if.end.i.counter_get_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value_u32.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value_u8.i) #5
  %74 = trunc i32 %retval.0.i to i8
  %conv48 = sub i8 0, %74
  %75 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv48, ptr %status, align 2
  call void @_raw_spin_lock(ptr noundef %events_in_lock) #5
  %call50 = call i32 @__kfifo_in(ptr noundef %events, ptr noundef nonnull %ev, i32 noundef 1) #5
  call void @_raw_spin_unlock(ptr noundef %events_in_lock) #5
  %add = add i32 %call50, %copied.093
  %76 = ptrtoint ptr %comp_node.094 to i32
  call void @__asan_load4_noabort(i32 %76)
  %comp_node.0 = load ptr, ptr %comp_node.094, align 4
  %cmp41.not = icmp eq ptr %comp_node.0, %comp_list
  br i1 %cmp41.not, label %exit_early, label %counter_get_data.exit.for.body44_crit_edge

counter_get_data.exit.for.body44_crit_edge:       ; preds = %counter_get_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body44

exit_early:                                       ; preds = %counter_get_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp eq i32 %add, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %events_list_lock, i32 noundef %call6) #5
  br i1 %phi.cmp, label %exit_early.if.end62_crit_edge, label %if.then61

exit_early.if.end62_crit_edge:                    ; preds = %exit_early
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then61:                                        ; preds = %exit_early
  call void @__sanitizer_cov_trace_pc() #7
  %events_wait = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 16
  call void @__wake_up(ptr noundef %events_wait, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %exit_early.if.end62_crit_edge, %exit_early.thread96, %exit_early.thread
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_chrdev_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %f_ps) #0 align 64 {
entry:
  %copied = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #5
  %2 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %copied, align 4, !annotation !38
  %ops = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup70_crit_edge, label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %cmp = icmp ult i32 %len, 24
  br i1 %cmp, label %if.end.cleanup70_crit_edge, label %do.body.preheader

if.end.cleanup70_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

do.body.preheader:                                ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %events = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 15
  %out = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 1
  %events_wait = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 16
  %events_out_lock = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 18
  br label %do.body

do.body:                                          ; preds = %do.cond67.do.body_crit_edge, %do.body.preheader
  %5 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %events, align 8
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp3 = icmp eq i32 %6, %8
  br i1 %cmp3, label %if.then5, label %do.body.if.end53_crit_edge

do.body.if.end53_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then5:                                         ; preds = %do.body
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.then5.cleanup70_crit_edge

if.then5.cleanup70_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

if.end8:                                          ; preds = %if.then5
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 77) #5
  %11 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %events, align 8
  %13 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp18 = icmp eq i32 %12, %14
  br i1 %cmp18, label %lor.lhs.false, label %if.end8.if.end48_crit_edge

if.end8.if.end48_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

lor.lhs.false:                                    ; preds = %if.end8
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 8
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %lor.lhs.false.cleanup70_crit_edge, label %if.then23

lor.lhs.false.cleanup70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

if.then23:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %17 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %call108 = call i32 @prepare_to_wait_event(ptr noundef %events_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %18 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %events, align 8
  %20 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp30109 = icmp eq i32 %19, %21
  br i1 %cmp30109, label %if.then23.lor.lhs.false33_crit_edge, label %if.then23.if.end43.thread102_crit_edge

if.then23.if.end43.thread102_crit_edge:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread102

if.then23.lor.lhs.false33_crit_edge:              ; preds = %if.then23
  br label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %cleanup.lor.lhs.false33_crit_edge, %if.then23.lor.lhs.false33_crit_edge
  %call110 = phi i32 [ %call, %cleanup.lor.lhs.false33_crit_edge ], [ %call108, %if.then23.lor.lhs.false33_crit_edge ]
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 8
  %tobool35.not = icmp eq ptr %23, null
  br i1 %tobool35.not, label %lor.lhs.false33.if.end43.thread102_crit_edge, label %if.end37

lor.lhs.false33.if.end43.thread102_crit_edge:     ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread102

if.end37:                                         ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool38.not = icmp eq i32 %call110, 0
  br i1 %tobool38.not, label %cleanup, label %if.end43

cleanup:                                          ; preds = %if.end37
  call void @schedule() #5
  %call = call i32 @prepare_to_wait_event(ptr noundef %events_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #5
  %24 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %events, align 8
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out, align 4
  %cmp30 = icmp eq i32 %25, %27
  br i1 %cmp30, label %cleanup.lor.lhs.false33_crit_edge, label %cleanup.if.end43.thread102_crit_edge

cleanup.if.end43.thread102_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.thread102

cleanup.lor.lhs.false33_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false33

if.end43.thread102:                               ; preds = %cleanup.if.end43.thread102_crit_edge, %lor.lhs.false33.if.end43.thread102_crit_edge, %if.then23.if.end43.thread102_crit_edge
  call void @finish_wait(ptr noundef %events_wait, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end48

if.end43:                                         ; preds = %if.end37
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp45 = icmp slt i32 %call110, 0
  br i1 %cmp45, label %if.end43.cleanup70_crit_edge, label %if.end43.if.end48_crit_edge

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.end43.cleanup70_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

if.end48:                                         ; preds = %if.end43.if.end48_crit_edge, %if.end43.thread102, %if.end8.if.end48_crit_edge
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %ops, align 8
  %tobool50.not = icmp eq ptr %.pr, null
  br i1 %tobool50.not, label %if.end48.cleanup70_crit_edge, label %if.end48.if.end53_crit_edge

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.end48.cleanup70_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

if.end53:                                         ; preds = %if.end48.if.end53_crit_edge, %do.body.if.end53_crit_edge
  %call54 = call i32 @mutex_lock_interruptible_nested(ptr noundef %events_out_lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.cleanup70_crit_edge

if.end53.cleanup70_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

if.end57:                                         ; preds = %if.end53
  %call60 = call i32 @__kfifo_to_user(ptr noundef %events, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull %copied) #5
  call void @mutex_unlock(ptr noundef %events_out_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp63 = icmp slt i32 %call60, 0
  br i1 %cmp63, label %if.end57.cleanup70_crit_edge, label %do.cond67

if.end57.cleanup70_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

do.cond67:                                        ; preds = %if.end57
  %29 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %copied, align 4
  %tobool68.not = icmp eq i32 %30, 0
  br i1 %tobool68.not, label %do.cond67.do.body_crit_edge, label %do.cond67.cleanup70_crit_edge

do.cond67.cleanup70_crit_edge:                    ; preds = %do.cond67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup70

do.cond67.do.body_crit_edge:                      ; preds = %do.cond67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cleanup70:                                        ; preds = %do.cond67.cleanup70_crit_edge, %if.end57.cleanup70_crit_edge, %if.end53.cleanup70_crit_edge, %if.end48.cleanup70_crit_edge, %if.end43.cleanup70_crit_edge, %lor.lhs.false.cleanup70_crit_edge, %if.then5.cleanup70_crit_edge, %if.end.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup70_crit_edge ], [ -22, %if.end.cleanup70_crit_edge ], [ -19, %lor.lhs.false.cleanup70_crit_edge ], [ %30, %do.cond67.cleanup70_crit_edge ], [ %call60, %if.end57.cleanup70_crit_edge ], [ -512, %if.end53.cleanup70_crit_edge ], [ -19, %if.end48.cleanup70_crit_edge ], [ %call110, %if.end43.cleanup70_crit_edge ], [ -11, %if.then5.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_chrdev_poll(ptr noundef %filp, ptr noundef %pollt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ops = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %events_wait = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 16
  %tobool.not.i = icmp eq ptr %pollt, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %pollt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pollt, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %events_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef %filp, ptr noundef nonnull %events_wait, ptr noundef nonnull %pollt) #5
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  %events1 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %events1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %events1, align 8
  %out = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 15, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  %spec.select = select i1 %cmp, i32 0, i32 65
  br label %cleanup

cleanup:                                          ; preds = %poll_wait.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %poll_wait.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_chrdev_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %watch.i = alloca %struct.counter_watch, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ops_exist_lock = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ops_exist_lock, i32 noundef 0) #5
  %ops = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %if.end.out_unlock_crit_edge [
    i32 1074150912, label %sw.bb
    i32 15873, label %sw.bb1
    i32 15874, label %sw.bb3
  ]

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

sw.bb:                                            ; preds = %if.end
  %5 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %watch.i) #5
  %6 = getelementptr inbounds %struct.counter_component, ptr %watch.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.counter_component, ptr %watch.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.counter_component, ptr %watch.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.counter_watch, ptr %watch.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.counter_watch, ptr %watch.i, i32 0, i32 2
  %11 = call ptr @memset(ptr %watch.i, i32 255, i32 6)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #5
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 6, i32 -1226833920) #8, !srcloc !39
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !40

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %watch.i, i32 noundef 6) #5
  %13 = call i32 @llvm.read_register.i32(metadata !28) #5
  %and.i.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #3, !srcloc !41
  %and.i.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #5, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %watch.i, ptr noundef %5, i32 noundef 6) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #5, !srcloc !42
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !40

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 6, %sw.bb.if.then11.i.i.i_crit_edge ], [ 6, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 6, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %watch.i, i32 %sub.i.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %counter_add_watch.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %17 = ptrtoint ptr %watch.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %watch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i = icmp eq i8 %18, 0
  br i1 %cmp.i, label %if.end.i.no_component.i_crit_edge, label %if.end3.i

if.end.i.no_component.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_component.i

if.end3.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %7, align 2
  %conv6.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %6, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %22, label %if.end3.i.counter_add_watch.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb11.i
    i8 2, label %sw.bb27.i
  ]

if.end3.i.counter_add_watch.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

sw.bb.i:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %ext9.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 7
  %num_ext10.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 8
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end3.i
  %num_signals.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %num_signals.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_signals.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv6.i)
  %cmp12.not.i = icmp ugt i32 %25, %conv6.i
  br i1 %cmp12.not.i, label %if.end15.i, label %sw.bb11.i.counter_add_watch.exit_crit_edge

sw.bb11.i.counter_add_watch.exit_crit_edge:       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

if.end15.i:                                       ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv6.i, i32 %25) #5, !srcloc !44
  %and.i = and i32 %26, %conv6.i
  %signals.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %signals.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %signals.i, align 4
  %add.ptr.i = getelementptr %struct.counter_signal, ptr %28, i32 %and.i
  %ext23.i = getelementptr %struct.counter_signal, ptr %28, i32 %and.i, i32 2
  %num_ext26.i = getelementptr %struct.counter_signal, ptr %28, i32 %and.i, i32 3
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %if.end3.i
  %num_counts.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %num_counts.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_counts.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv6.i)
  %cmp28.not.i = icmp ugt i32 %30, %conv6.i
  br i1 %cmp28.not.i, label %if.end31.i, label %sw.bb27.i.counter_add_watch.exit_crit_edge

sw.bb27.i.counter_add_watch.exit_crit_edge:       ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

if.end31.i:                                       ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv6.i, i32 %30) #5, !srcloc !44
  %and44.i = and i32 %31, %conv6.i
  %counts.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %counts.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %counts.i, align 4
  %add.ptr45.i = getelementptr %struct.counter_count, ptr %33, i32 %and44.i
  %ext49.i = getelementptr %struct.counter_count, ptr %33, i32 %and44.i, i32 6
  %num_ext52.i = getelementptr %struct.counter_count, ptr %33, i32 %and44.i, i32 7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end31.i, %if.end15.i, %sw.bb.i
  %comp_node.sroa.17256.0.i = phi ptr [ %add.ptr45.i, %if.end31.i ], [ %add.ptr.i, %if.end15.i ], [ null, %sw.bb.i ]
  %num_ext.0.in.i = phi ptr [ %num_ext52.i, %if.end31.i ], [ %num_ext26.i, %if.end15.i ], [ %num_ext10.i, %sw.bb.i ]
  %ext.0.in.i = phi ptr [ %ext49.i, %if.end31.i ], [ %ext23.i, %if.end15.i ], [ %ext9.i, %sw.bb.i ]
  %parent.0.i = phi i32 [ %and44.i, %if.end31.i ], [ %and.i, %if.end15.i ], [ %conv6.i, %sw.bb.i ]
  %34 = ptrtoint ptr %ext.0.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %ext.0.i = load ptr, ptr %ext.0.in.i, align 4
  %35 = ptrtoint ptr %num_ext.0.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %num_ext.0.i = load i32, ptr %num_ext.0.in.i, align 4
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %8, align 1
  %conv55.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %watch.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %watch.i, align 4
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %39, label %sw.epilog.i.counter_add_watch.exit_crit_edge [
    i8 1, label %sw.bb59.i
    i8 2, label %sw.bb69.i
    i8 3, label %sw.bb81.i
    i8 4, label %sw.bb93.i
    i8 5, label %sw.bb130.i
  ]

sw.epilog.i.counter_add_watch.exit_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

sw.bb59.i:                                        ; preds = %sw.epilog.i
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp63.not.i = icmp eq i8 %42, 1
  br i1 %cmp63.not.i, label %if.end66.i, label %sw.bb59.i.counter_add_watch.exit_crit_edge

sw.bb59.i.counter_add_watch.exit_crit_edge:       ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

if.end66.i:                                       ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 8
  br label %sw.epilog150.i

sw.bb69.i:                                        ; preds = %sw.epilog.i
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp73.not.i = icmp eq i8 %46, 2
  br i1 %cmp73.not.i, label %if.end76.i, label %sw.bb69.i.counter_add_watch.exit_crit_edge

sw.bb69.i.counter_add_watch.exit_crit_edge:       ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

if.end76.i:                                       ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 8
  %count_read.i = getelementptr inbounds %struct.counter_ops, ptr %48, i32 0, i32 1
  br label %sw.epilog150.i

sw.bb81.i:                                        ; preds = %sw.epilog.i
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp85.not.i = icmp eq i8 %50, 2
  br i1 %cmp85.not.i, label %if.end88.i, label %sw.bb81.i.counter_add_watch.exit_crit_edge

sw.bb81.i.counter_add_watch.exit_crit_edge:       ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

if.end88.i:                                       ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops, align 8
  %function_read.i = getelementptr inbounds %struct.counter_ops, ptr %52, i32 0, i32 3
  br label %sw.epilog150.i

sw.bb93.i:                                        ; preds = %sw.epilog.i
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp97.not.i = icmp eq i8 %54, 2
  br i1 %cmp97.not.i, label %if.end100.i, label %sw.bb93.i.counter_add_watch.exit_crit_edge

sw.bb93.i.counter_add_watch.exit_crit_edge:       ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

if.end100.i:                                      ; preds = %sw.bb93.i
  %counts101.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %counts101.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %counts101.i, align 4
  %num_synapses.i = getelementptr %struct.counter_count, ptr %56, i32 %parent.0.i, i32 5
  %57 = ptrtoint ptr %num_synapses.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_synapses.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv55.i)
  %cmp103.not.i = icmp ugt i32 %58, %conv55.i
  br i1 %cmp103.not.i, label %if.end106.i, label %if.end100.i.counter_add_watch.exit_crit_edge

if.end100.i.counter_add_watch.exit_crit_edge:     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

if.end106.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv55.i, i32 %58) #5, !srcloc !44
  %and121.i = and i32 %59, %conv55.i
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops, align 8
  %action_read.i = getelementptr inbounds %struct.counter_ops, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %counts101.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %counts101.i, align 4
  %synapses.i = getelementptr %struct.counter_count, ptr %63, i32 %parent.0.i, i32 4
  %64 = ptrtoint ptr %synapses.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %synapses.i, align 4
  %add.ptr128.i = getelementptr %struct.counter_synapse, ptr %65, i32 %and121.i
  br label %sw.epilog150.i

sw.bb130.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_cmp4(i32 %num_ext.0.i, i32 %conv55.i)
  %cmp131.not.i = icmp ugt i32 %num_ext.0.i, %conv55.i
  br i1 %cmp131.not.i, label %if.end134.i, label %sw.bb130.i.counter_add_watch.exit_crit_edge

sw.bb130.i.counter_add_watch.exit_crit_edge:      ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

if.end134.i:                                      ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #7
  %66 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv55.i, i32 %num_ext.0.i) #5, !srcloc !44
  %and146.i = and i32 %66, %conv55.i
  %arrayidx148.i = getelementptr %struct.counter_comp, ptr %ext.0.i, i32 %and146.i
  %67 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %comp_node.sroa.5.12.copyload.i = load i32, ptr %arrayidx148.i, align 4
  %comp_node.sroa.10.12.arrayidx148.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx148.i, i32 4
  %68 = ptrtoint ptr %comp_node.sroa.10.12.arrayidx148.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %comp_node.sroa.10.12.copyload.i = load ptr, ptr %comp_node.sroa.10.12.arrayidx148.sroa_idx.i, align 4
  %comp_node.sroa.10254.12.arrayidx148.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx148.i, i32 8
  %69 = ptrtoint ptr %comp_node.sroa.10254.12.arrayidx148.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %comp_node.sroa.10254.12.copyload.i = load ptr, ptr %comp_node.sroa.10254.12.arrayidx148.sroa_idx.i, align 4
  %comp_node.sroa.11.12.arrayidx148.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx148.i, i32 12
  %comp_node.sroa.17.12.arrayidx148.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx148.i, i32 16
  %70 = ptrtoint ptr %comp_node.sroa.17.12.arrayidx148.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %comp_node.sroa.17.12.copyload.i = load ptr, ptr %comp_node.sroa.17.12.arrayidx148.sroa_idx.i, align 4
  br label %sw.epilog150.i

sw.epilog150.i:                                   ; preds = %if.end134.i, %if.end106.i, %if.end88.i, %if.end76.i, %if.end66.i
  %comp_node.sroa.5.0.i = phi i32 [ %comp_node.sroa.5.12.copyload.i, %if.end134.i ], [ 5, %if.end106.i ], [ 4, %if.end88.i ], [ 1, %if.end76.i ], [ 3, %if.end66.i ]
  %comp_node.sroa.10.0.i = phi ptr [ %comp_node.sroa.10.12.copyload.i, %if.end134.i ], [ null, %if.end106.i ], [ null, %if.end88.i ], [ null, %if.end76.i ], [ null, %if.end66.i ]
  %comp_node.sroa.10254.0.i = phi ptr [ %comp_node.sroa.10254.12.copyload.i, %if.end134.i ], [ %add.ptr128.i, %if.end106.i ], [ null, %if.end88.i ], [ null, %if.end76.i ], [ null, %if.end66.i ]
  %comp_node.sroa.11.0.in.i = phi ptr [ %comp_node.sroa.11.12.arrayidx148.sroa_idx.i, %if.end134.i ], [ %action_read.i, %if.end106.i ], [ %function_read.i, %if.end88.i ], [ %count_read.i, %if.end76.i ], [ %44, %if.end66.i ]
  %comp_node.sroa.17.0.i = phi ptr [ %comp_node.sroa.17.12.copyload.i, %if.end134.i ], [ null, %if.end106.i ], [ null, %if.end88.i ], [ null, %if.end76.i ], [ null, %if.end66.i ]
  %71 = ptrtoint ptr %comp_node.sroa.11.0.in.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %comp_node.sroa.11.0.i = load ptr, ptr %comp_node.sroa.11.0.in.i, align 4
  %tobool152.not.i = icmp eq ptr %comp_node.sroa.11.0.i, null
  br i1 %tobool152.not.i, label %sw.epilog150.i.counter_add_watch.exit_crit_edge, label %sw.epilog150.i.no_component.i_crit_edge

sw.epilog150.i.no_component.i_crit_edge:          ; preds = %sw.epilog150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_component.i

sw.epilog150.i.counter_add_watch.exit_crit_edge:  ; preds = %sw.epilog150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_add_watch.exit

no_component.i:                                   ; preds = %sw.epilog150.i.no_component.i_crit_edge, %if.end.i.no_component.i_crit_edge
  %comp_node.sroa.5.1.i = phi i32 [ 0, %if.end.i.no_component.i_crit_edge ], [ %comp_node.sroa.5.0.i, %sw.epilog150.i.no_component.i_crit_edge ]
  %comp_node.sroa.10.1.i = phi ptr [ null, %if.end.i.no_component.i_crit_edge ], [ %comp_node.sroa.10.0.i, %sw.epilog150.i.no_component.i_crit_edge ]
  %comp_node.sroa.10254.1.i = phi ptr [ null, %if.end.i.no_component.i_crit_edge ], [ %comp_node.sroa.10254.0.i, %sw.epilog150.i.no_component.i_crit_edge ]
  %comp_node.sroa.11.1.i = phi ptr [ null, %if.end.i.no_component.i_crit_edge ], [ %comp_node.sroa.11.0.i, %sw.epilog150.i.no_component.i_crit_edge ]
  %comp_node.sroa.17.1.i = phi ptr [ null, %if.end.i.no_component.i_crit_edge ], [ %comp_node.sroa.17.0.i, %sw.epilog150.i.no_component.i_crit_edge ]
  %comp_node.sroa.17256.1.i = phi ptr [ null, %if.end.i.no_component.i_crit_edge ], [ %comp_node.sroa.17256.0.i, %sw.epilog150.i.no_component.i_crit_edge ]
  %n_events_list_lock.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %n_events_list_lock.i, i32 noundef 0) #5
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 8
  %watch_validate.i = getelementptr inbounds %struct.counter_ops, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %watch_validate.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %watch_validate.i, align 4
  %tobool182.not.i = icmp eq ptr %75, null
  br i1 %tobool182.not.i, label %no_component.i.if.end191.i_crit_edge, label %if.then183.i

no_component.i.if.end191.i_crit_edge:             ; preds = %no_component.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end191.i

if.then183.i:                                     ; preds = %no_component.i
  %call186.i = call i32 %75(ptr noundef %1, ptr noundef nonnull %watch.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.i)
  %cmp187.i = icmp slt i32 %call186.i, 0
  br i1 %cmp187.i, label %if.then183.i.err_exit.i_crit_edge, label %if.then183.i.if.end191.i_crit_edge

if.then183.i.if.end191.i_crit_edge:               ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end191.i

if.then183.i.err_exit.i_crit_edge:                ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit.i

if.end191.i:                                      ; preds = %if.then183.i.if.end191.i_crit_edge, %no_component.i.if.end191.i_crit_edge
  %76 = ptrtoint ptr %watch.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %watch.i, align 4
  %next_events_list.i.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 13
  %78 = ptrtoint ptr %next_events_list.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %event_node.0172.i.i = load ptr, ptr %next_events_list.i.i, align 4
  %cmp173.i.i = icmp eq ptr %event_node.0172.i.i, %next_events_list.i.i
  br i1 %cmp173.i.i, label %if.end191.i.if.then20.critedge.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end191.i.if.then20.critedge.i.i_crit_edge:     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.critedge.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end191.i
  %79 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %9, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %event_node.0174.i.i = phi ptr [ %event_node.0172.i.i, %for.body.lr.ph.i.i ], [ %event_node.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %event.i.i = getelementptr inbounds %struct.counter_event_node, ptr %event_node.0174.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %event.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %80)
  %cmp4.i.i = icmp eq i8 %82, %80
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %channel.i.i = getelementptr inbounds %struct.counter_event_node, ptr %event_node.0174.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %channel.i.i, align 1
  %85 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %86)
  %cmp9.i.i = icmp eq i8 %84, %86
  br i1 %cmp9.i.i, label %land.lhs.true.i.i.if.end29.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i.if.end29.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %87 = ptrtoint ptr %event_node.0174.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %event_node.0.i.i = load ptr, ptr %event_node.0174.i.i, align 4
  %cmp.i.i = icmp eq ptr %event_node.0.i.i, %next_events_list.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.if.then20.critedge.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.if.then20.critedge.i.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20.critedge.i.i

if.then20.critedge.i.i:                           ; preds = %for.inc.i.i.if.then20.critedge.i.i_crit_edge, %if.end191.i.if.then20.critedge.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3264, i32 noundef 20) #9
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then20.critedge.i.i.err_exit.i_crit_edge, label %if.end22.i.i

if.then20.critedge.i.i.err_exit.i_crit_edge:      ; preds = %if.then20.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit.i

if.end22.i.i:                                     ; preds = %if.then20.critedge.i.i
  %89 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %9, align 4
  %event24.i.i = getelementptr inbounds %struct.counter_event_node, ptr %call7.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %event24.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %event24.i.i, align 8
  %92 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %10, align 1
  %channel26.i.i = getelementptr inbounds %struct.counter_event_node, ptr %call7.i.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %channel26.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %channel26.i.i, align 1
  %comp_list.i.i = getelementptr inbounds %struct.counter_event_node, ptr %call7.i.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %comp_list.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %comp_list.i.i, ptr %comp_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.counter_event_node, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %96 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %comp_list.i.i, ptr %prev.i.i.i, align 8
  %97 = ptrtoint ptr %next_events_list.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %next_events_list.i.i, align 4
  %call.i.i.i253.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %next_events_list.i.i, ptr noundef %98) #5
  br i1 %call.i.i.i253.i, label %if.end.i.i.i.i, label %if.end22.i.i.if.end29.i.i_crit_edge

if.end22.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i

if.end.i.i.i.i:                                   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i.i, align 4
  %100 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %98, ptr %call7.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %next_events_list.i.i, ptr %prev3.i.i.i.i, align 4
  %102 = ptrtoint ptr %next_events_list.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %call7.i.i.i, ptr %next_events_list.i.i, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end.i.i.i.i, %if.end22.i.i.if.end29.i.i_crit_edge, %land.lhs.true.i.i.if.end29.i.i_crit_edge
  %event_node.1.i.i = phi ptr [ %call7.i.i.i, %if.end22.i.i.if.end29.i.i_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i.i ], [ %event_node.0174.i.i, %land.lhs.true.i.i.if.end29.i.i_crit_edge ]
  %comp_list31.i.i = getelementptr inbounds %struct.counter_event_node, ptr %event_node.1.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %comp_list31.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %comp_node.0175.i.i = load ptr, ptr %comp_list31.i.i, align 4
  %cmp38.not176.i.i = icmp eq ptr %comp_node.0175.i.i, %comp_list31.i.i
  br i1 %cmp38.not176.i.i, label %if.end29.i.i.for.end101.i.i_crit_edge, label %if.end29.i.i.for.body41.i.i_crit_edge

if.end29.i.i.for.body41.i.i_crit_edge:            ; preds = %if.end29.i.i
  br label %for.body41.i.i

if.end29.i.i.for.end101.i.i_crit_edge:            ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end101.i.i

for.body41.i.i:                                   ; preds = %for.inc95.i.i.for.body41.i.i_crit_edge, %if.end29.i.i.for.body41.i.i_crit_edge
  %comp_node.0177.i.i = phi ptr [ %comp_node.0.i.i, %for.inc95.i.i.for.body41.i.i_crit_edge ], [ %comp_node.0175.i.i, %if.end29.i.i.for.body41.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.0177.i.i, i32 0, i32 3
  %104 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %parent.i.i, align 4
  %cmp43.i.i = icmp eq ptr %105, %comp_node.sroa.17256.1.i
  br i1 %cmp43.i.i, label %land.lhs.true45.i.i, label %for.body41.i.i.for.inc95.i.i_crit_edge

for.body41.i.i.for.inc95.i.i_crit_edge:           ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc95.i.i

land.lhs.true45.i.i:                              ; preds = %for.body41.i.i
  %106 = getelementptr inbounds %struct.counter_comp_node, ptr %comp_node.0177.i.i, i32 0, i32 2, i32 3
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %cmp47.i.i = icmp eq ptr %108, %comp_node.sroa.11.1.i
  br i1 %cmp47.i.i, label %land.lhs.true45.i.i.exit_free_event_node.i.i_crit_edge, label %land.lhs.true45.i.i.for.inc95.i.i_crit_edge

land.lhs.true45.i.i.for.inc95.i.i_crit_edge:      ; preds = %land.lhs.true45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc95.i.i

land.lhs.true45.i.i.exit_free_event_node.i.i_crit_edge: ; preds = %land.lhs.true45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_free_event_node.i.i

for.inc95.i.i:                                    ; preds = %land.lhs.true45.i.i.for.inc95.i.i_crit_edge, %for.body41.i.i.for.inc95.i.i_crit_edge
  %109 = ptrtoint ptr %comp_node.0177.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %comp_node.0.i.i = load ptr, ptr %comp_node.0177.i.i, align 4
  %cmp38.not.i.i = icmp eq ptr %comp_node.0.i.i, %comp_list31.i.i
  br i1 %cmp38.not.i.i, label %for.inc95.i.i.for.end101.i.i_crit_edge, label %for.inc95.i.i.for.body41.i.i_crit_edge

for.inc95.i.i.for.body41.i.i_crit_edge:           ; preds = %for.inc95.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41.i.i

for.inc95.i.i.for.end101.i.i_crit_edge:           ; preds = %for.inc95.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end101.i.i

for.end101.i.i:                                   ; preds = %for.inc95.i.i.for.end101.i.i_crit_edge, %if.end29.i.i.for.end101.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %110 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i163.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3264, i32 noundef 36) #9
  %tobool103.not.i.i = icmp eq ptr %call7.i163.i.i, null
  br i1 %tobool103.not.i.i, label %for.end101.i.i.exit_free_event_node.i.i_crit_edge, label %if.end105.i.i

for.end101.i.i.exit_free_event_node.i.i_crit_edge: ; preds = %for.end101.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_free_event_node.i.i

if.end105.i.i:                                    ; preds = %for.end101.i.i
  %111 = ptrtoint ptr %call7.i163.i.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 0, ptr %call7.i163.i.i, align 8
  %comp_node.sroa.4.0.call7.i163.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i163.i.i, i32 8
  %112 = ptrtoint ptr %comp_node.sroa.4.0.call7.i163.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %77, ptr %comp_node.sroa.4.0.call7.i163.i.sroa_idx.i, align 8
  %comp_node.sroa.5.0.call7.i163.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i163.i.i, i32 12
  %113 = ptrtoint ptr %comp_node.sroa.5.0.call7.i163.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %comp_node.sroa.5.1.i, ptr %comp_node.sroa.5.0.call7.i163.i.sroa_idx.i, align 4
  %comp_node.sroa.10.0.call7.i163.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i163.i.i, i32 16
  %114 = ptrtoint ptr %comp_node.sroa.10.0.call7.i163.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %comp_node.sroa.10.1.i, ptr %comp_node.sroa.10.0.call7.i163.i.sroa_idx.i, align 8
  %comp_node.sroa.10254.0.call7.i163.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i163.i.i, i32 20
  %115 = ptrtoint ptr %comp_node.sroa.10254.0.call7.i163.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %comp_node.sroa.10254.1.i, ptr %comp_node.sroa.10254.0.call7.i163.i.sroa_idx.i, align 4
  %comp_node.sroa.11.0.call7.i163.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i163.i.i, i32 24
  %116 = ptrtoint ptr %comp_node.sroa.11.0.call7.i163.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %comp_node.sroa.11.1.i, ptr %comp_node.sroa.11.0.call7.i163.i.sroa_idx.i, align 8
  %comp_node.sroa.17.0.call7.i163.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i163.i.i, i32 28
  %117 = ptrtoint ptr %comp_node.sroa.17.0.call7.i163.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %comp_node.sroa.17.1.i, ptr %comp_node.sroa.17.0.call7.i163.i.sroa_idx.i, align 4
  %comp_node.sroa.17256.0.call7.i163.i.sroa_idx.i = getelementptr inbounds i8, ptr %call7.i163.i.i, i32 32
  %118 = ptrtoint ptr %comp_node.sroa.17256.0.call7.i163.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %comp_node.sroa.17256.1.i, ptr %comp_node.sroa.17256.0.call7.i163.i.sroa_idx.i, align 8
  %prev.i164.i.i = getelementptr inbounds %struct.counter_event_node, ptr %event_node.1.i.i, i32 0, i32 3, i32 1
  %119 = ptrtoint ptr %prev.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %prev.i164.i.i, align 4
  %call.i.i165.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i163.i.i, ptr noundef %120, ptr noundef %comp_list31.i.i) #5
  br i1 %call.i.i165.i.i, label %if.end.i.i167.i.i, label %if.end105.i.i.exit_free_event_node.i.i_crit_edge

if.end105.i.i.exit_free_event_node.i.i_crit_edge: ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_free_event_node.i.i

if.end.i.i167.i.i:                                ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %prev.i164.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call7.i163.i.i, ptr %prev.i164.i.i, align 4
  %122 = ptrtoint ptr %call7.i163.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %comp_list31.i.i, ptr %call7.i163.i.i, align 8
  %prev3.i.i166.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i163.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %prev3.i.i166.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %prev3.i.i166.i.i, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %call7.i163.i.i, ptr %120, align 4
  br label %exit_free_event_node.i.i

exit_free_event_node.i.i:                         ; preds = %if.end.i.i167.i.i, %if.end105.i.i.exit_free_event_node.i.i_crit_edge, %for.end101.i.i.exit_free_event_node.i.i_crit_edge, %land.lhs.true45.i.i.exit_free_event_node.i.i_crit_edge
  %err.0.i.i = phi i32 [ -12, %for.end101.i.i.exit_free_event_node.i.i_crit_edge ], [ 0, %if.end105.i.i.exit_free_event_node.i.i_crit_edge ], [ 0, %if.end.i.i167.i.i ], [ -22, %land.lhs.true45.i.i.exit_free_event_node.i.i_crit_edge ]
  %125 = ptrtoint ptr %comp_list31.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile ptr, ptr %comp_list31.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %126, %comp_list31.i.i
  br i1 %cmp.i.not.i.i, label %if.then111.i.i, label %exit_free_event_node.i.i.err_exit.i_crit_edge

exit_free_event_node.i.i.err_exit.i_crit_edge:    ; preds = %exit_free_event_node.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit.i

if.then111.i.i:                                   ; preds = %exit_free_event_node.i.i
  %call.i.i168.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %event_node.1.i.i) #5
  br i1 %call.i.i168.i.i, label %if.end.i.i169.i.i, label %if.then111.i.i.list_del.exit.i.i_crit_edge

if.then111.i.i.list_del.exit.i.i_crit_edge:       ; preds = %if.then111.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i.i

if.end.i.i169.i.i:                                ; preds = %if.then111.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %event_node.1.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %prev.i.i.i.i, align 4
  %129 = ptrtoint ptr %event_node.1.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %event_node.1.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %128, ptr %prev1.i.i.i.i.i, align 4
  %132 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %130, ptr %128, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i169.i.i, %if.then111.i.i.list_del.exit.i.i_crit_edge
  %133 = ptrtoint ptr %event_node.1.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 256 to ptr), ptr %event_node.1.i.i, align 4
  %prev.i170.i.i = getelementptr inbounds %struct.list_head, ptr %event_node.1.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i170.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i170.i.i, align 4
  call void @kfree(ptr noundef %event_node.1.i.i) #5
  br label %err_exit.i

err_exit.i:                                       ; preds = %list_del.exit.i.i, %exit_free_event_node.i.i.err_exit.i_crit_edge, %if.then20.critedge.i.i.err_exit.i_crit_edge, %if.then183.i.err_exit.i_crit_edge
  %err.0.i = phi i32 [ %call186.i, %if.then183.i.err_exit.i_crit_edge ], [ -12, %if.then20.critedge.i.i.err_exit.i_crit_edge ], [ %err.0.i.i, %list_del.exit.i.i ], [ %err.0.i.i, %exit_free_event_node.i.i.err_exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %n_events_list_lock.i) #5
  br label %counter_add_watch.exit

counter_add_watch.exit:                           ; preds = %err_exit.i, %sw.epilog150.i.counter_add_watch.exit_crit_edge, %sw.bb130.i.counter_add_watch.exit_crit_edge, %if.end100.i.counter_add_watch.exit_crit_edge, %sw.bb93.i.counter_add_watch.exit_crit_edge, %sw.bb81.i.counter_add_watch.exit_crit_edge, %sw.bb69.i.counter_add_watch.exit_crit_edge, %sw.bb59.i.counter_add_watch.exit_crit_edge, %sw.epilog.i.counter_add_watch.exit_crit_edge, %sw.bb27.i.counter_add_watch.exit_crit_edge, %sw.bb11.i.counter_add_watch.exit_crit_edge, %if.end3.i.counter_add_watch.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %err.0.i, %err_exit.i ], [ -22, %sw.bb11.i.counter_add_watch.exit_crit_edge ], [ -22, %sw.bb27.i.counter_add_watch.exit_crit_edge ], [ -22, %if.end3.i.counter_add_watch.exit_crit_edge ], [ -22, %sw.bb59.i.counter_add_watch.exit_crit_edge ], [ -22, %sw.bb69.i.counter_add_watch.exit_crit_edge ], [ -22, %sw.bb81.i.counter_add_watch.exit_crit_edge ], [ -22, %sw.bb93.i.counter_add_watch.exit_crit_edge ], [ -22, %if.end100.i.counter_add_watch.exit_crit_edge ], [ -22, %sw.bb130.i.counter_add_watch.exit_crit_edge ], [ -22, %sw.epilog.i.counter_add_watch.exit_crit_edge ], [ -95, %sw.epilog150.i.counter_add_watch.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %watch.i) #5
  br label %out_unlock

sw.bb1:                                           ; preds = %if.end
  %n_events_list_lock.i11 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %n_events_list_lock.i11, i32 noundef 0) #5
  %events_list_lock.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %events_list_lock.i) #5
  %events_list.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 11
  tail call fastcc void @counter_events_list_free(ptr noundef %events_list.i) #5
  %next_events_list.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 13
  %135 = ptrtoint ptr %next_events_list.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %next_events_list.i, align 4
  %137 = ptrtoint ptr %events_list.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %events_list.i, align 4
  %prev.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  %138 = ptrtoint ptr %prev.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %events_list.i, ptr %prev.i.i.i12, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 13, i32 1
  %139 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev3.i.i.i, align 4
  %prev4.i.i.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 11, i32 1
  %141 = ptrtoint ptr %prev4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %140, ptr %prev4.i.i.i, align 4
  %142 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %events_list.i, ptr %140, align 4
  store volatile ptr %next_events_list.i, ptr %next_events_list.i, align 4
  store ptr %next_events_list.i, ptr %prev3.i.i.i, align 4
  %143 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ops, align 8
  %events_configure.i = getelementptr inbounds %struct.counter_ops, ptr %144, i32 0, i32 7
  %145 = ptrtoint ptr %events_configure.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %events_configure.i, align 4
  %tobool.not.i = icmp eq ptr %146, null
  br i1 %tobool.not.i, label %sw.bb1.counter_enable_events.exit_crit_edge, label %if.then.i

sw.bb1.counter_enable_events.exit_crit_edge:      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_enable_events.exit

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 %146(ptr noundef %1) #5
  br label %counter_enable_events.exit

counter_enable_events.exit:                       ; preds = %if.then.i, %sw.bb1.counter_enable_events.exit_crit_edge
  %err.0.i14 = phi i32 [ %call8.i, %if.then.i ], [ 0, %sw.bb1.counter_enable_events.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %events_list_lock.i, i32 noundef %call2.i) #5
  tail call void @mutex_unlock(ptr noundef %n_events_list_lock.i11) #5
  br label %out_unlock

sw.bb3:                                           ; preds = %if.end
  %events_list_lock.i16 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 12
  %call2.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %events_list_lock.i16) #5
  %events_list.i18 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 11
  tail call fastcc void @counter_events_list_free(ptr noundef %events_list.i18) #5
  %147 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ops, align 8
  %events_configure.i20 = getelementptr inbounds %struct.counter_ops, ptr %148, i32 0, i32 7
  %149 = ptrtoint ptr %events_configure.i20 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %events_configure.i20, align 4
  %tobool.not.i21 = icmp eq ptr %150, null
  br i1 %tobool.not.i21, label %sw.bb3.counter_disable_events.exit_crit_edge, label %if.then.i22

sw.bb3.counter_disable_events.exit_crit_edge:     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_disable_events.exit

if.then.i22:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 %150(ptr noundef %1) #5
  br label %counter_disable_events.exit

counter_disable_events.exit:                      ; preds = %if.then.i22, %sw.bb3.counter_disable_events.exit_crit_edge
  %err.0.i23 = phi i32 [ %call7.i, %if.then.i22 ], [ 0, %sw.bb3.counter_disable_events.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %events_list_lock.i16, i32 noundef %call2.i17) #5
  %n_events_list_lock.i24 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %n_events_list_lock.i24, i32 noundef 0) #5
  %next_events_list.i25 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 13
  tail call fastcc void @counter_events_list_free(ptr noundef %next_events_list.i25) #5
  tail call void @mutex_unlock(ptr noundef %n_events_list_lock.i24) #5
  br label %out_unlock

out_unlock:                                       ; preds = %counter_disable_events.exit, %counter_enable_events.exit, %counter_add_watch.exit, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %err.0.i23, %counter_disable_events.exit ], [ %err.0.i14, %counter_enable_events.exit ], [ %retval.0.i, %counter_add_watch.exit ], [ -19, %entry.out_unlock_crit_edge ], [ -515, %if.end.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %ops_exist_lock) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_chrdev_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -968
  %dev = getelementptr i8, ptr %2, i32 -928
  %call = tail call ptr @get_device(ptr noundef %dev) #5
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  %call1 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_chrdev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ops_exist_lock = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ops_exist_lock, i32 noundef 0) #5
  %ops = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %events_list = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 11
  tail call fastcc void @counter_events_list_free(ptr noundef %events_list)
  %next_events_list = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 13
  tail call fastcc void @counter_events_list_free(ptr noundef %next_events_list)
  br label %out_unlock

if.end:                                           ; preds = %entry
  %events_list_lock.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %events_list_lock.i) #5
  %events_list.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 11
  tail call fastcc void @counter_events_list_free(ptr noundef %events_list.i) #5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %events_configure.i = getelementptr inbounds %struct.counter_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %events_configure.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %events_configure.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.counter_disable_events.exit_crit_edge, label %if.then.i

if.end.counter_disable_events.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_disable_events.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 %7(ptr noundef %1) #5
  br label %counter_disable_events.exit

counter_disable_events.exit:                      ; preds = %if.then.i, %if.end.counter_disable_events.exit_crit_edge
  %err.0.i = phi i32 [ %call7.i, %if.then.i ], [ 0, %if.end.counter_disable_events.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %events_list_lock.i, i32 noundef %call2.i) #5
  %n_events_list_lock.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %n_events_list_lock.i, i32 noundef 0) #5
  %next_events_list.i = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 13
  tail call fastcc void @counter_events_list_free(ptr noundef %next_events_list.i) #5
  tail call void @mutex_unlock(ptr noundef %n_events_list_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %if.then1, label %counter_disable_events.exit.out_unlock_crit_edge

counter_disable_events.exit.out_unlock_crit_edge: ; preds = %counter_disable_events.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.then1:                                         ; preds = %counter_disable_events.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %ops_exist_lock) #5
  br label %cleanup

out_unlock:                                       ; preds = %counter_disable_events.exit.out_unlock_crit_edge, %if.then
  %ret.0 = phi i32 [ %err.0.i, %counter_disable_events.exit.out_unlock_crit_edge ], [ -19, %if.then ]
  tail call void @mutex_unlock(ptr noundef %ops_exist_lock) #5
  %dev = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then1
  %retval.0 = phi i32 [ %err.0.i, %if.then1 ], [ %ret.0, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @counter_events_list_free(ptr noundef readonly %events_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %events_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %events_list, align 4
  %cmp.not56 = icmp eq ptr %1, %events_list
  br i1 %cmp.not56, label %entry.for.end34_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end34

for.body:                                         ; preds = %list_del.exit51.for.body_crit_edge, %entry.for.body_crit_edge
  %p.057 = phi ptr [ %n.059, %list_del.exit51.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %p.057 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.059 = load ptr, ptr %p.057, align 4
  %comp_list = getelementptr inbounds %struct.counter_event_node, ptr %p.057, i32 0, i32 3
  %3 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %comp_list, align 4
  %cmp18.not52 = icmp eq ptr %4, %comp_list
  br i1 %cmp18.not52, label %for.body.for.end_crit_edge, label %for.body.for.body20_crit_edge

for.body.for.body20_crit_edge:                    ; preds = %for.body
  br label %for.body20

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body20:                                       ; preds = %list_del.exit.for.body20_crit_edge, %for.body.for.body20_crit_edge
  %q.053 = phi ptr [ %o.0, %list_del.exit.for.body20_crit_edge ], [ %4, %for.body.for.body20_crit_edge ]
  %5 = ptrtoint ptr %q.053 to i32
  call void @__asan_load4_noabort(i32 %5)
  %o.0 = load ptr, ptr %q.053, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %q.053) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body20.list_del.exit_crit_edge

for.body20.list_del.exit_crit_edge:               ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %q.053, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %q.053 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q.053, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body20.list_del.exit_crit_edge
  %12 = ptrtoint ptr %q.053 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %q.053, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %q.053, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %q.053) #5
  %cmp18.not = icmp eq ptr %o.0, %comp_list
  br i1 %cmp18.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body20_crit_edge

list_del.exit.for.body20_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %call.i.i46 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.057) #5
  br i1 %call.i.i46, label %if.end.i.i49, label %for.end.list_del.exit51_crit_edge

for.end.list_del.exit51_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit51

if.end.i.i49:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i47 = getelementptr inbounds %struct.list_head, ptr %p.057, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i47, align 4
  %16 = ptrtoint ptr %p.057 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p.057, align 4
  %prev1.i.i.i48 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i48, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit51

list_del.exit51:                                  ; preds = %if.end.i.i49, %for.end.list_del.exit51_crit_edge
  %20 = ptrtoint ptr %p.057 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %p.057, align 4
  %prev.i50 = getelementptr inbounds %struct.list_head, ptr %p.057, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i50, align 4
  tail call void @kfree(ptr noundef %p.057) #5
  %cmp.not = icmp eq ptr %n.059, %events_list
  br i1 %cmp.not, label %list_del.exit51.for.end34_crit_edge, label %list_del.exit51.for.body_crit_edge

list_del.exit51.for.body_crit_edge:               ; preds = %list_del.exit51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit51.for.end34_crit_edge:              ; preds = %list_del.exit51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end34

for.end34:                                        ; preds = %list_del.exit51.for.end34_crit_edge, %entry.for.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !24, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @counter_chrdev_add.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/counter/counter-chrdev.c", i32 436, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @counter_chrdev_add.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/counter/counter-chrdev.c", i32 437, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @counter_chrdev_add.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/counter/counter-chrdev.c", i32 438, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @counter_chrdev_add.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/counter/counter-chrdev.c", i32 439, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @counter_chrdev_add.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/counter/counter-chrdev.c", i32 440, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_counter_push_event, !16, !"__ksymtab_counter_push_event", i1 false, i1 false}
!16 = !{!"../drivers/counter/counter-chrdev.c", i32 573, i32 1}
!17 = !{ptr @counter_fops, !18, !"counter_fops", i1 false, i1 false}
!18 = !{!"../drivers/counter/counter-chrdev.c", i32 421, i32 37}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/counter/counter-chrdev.c", i32 75, i32 10}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i64 2153248704, i64 2153248729}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 5744259}
!42 = !{i64 5744456}
!43 = !{i64 2153229689}
!44 = !{i64 596702, i64 596719}
