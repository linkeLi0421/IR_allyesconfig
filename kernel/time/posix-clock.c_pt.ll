; ModuleID = '/llk/IR_all_yes/kernel/time/posix-clock.c_pt.bc'
source_filename = "../kernel/time/posix-clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+posix_clock_register\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_clock_register\09\09\09\09"
module asm "\09.long\09__crc_posix_clock_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_clock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_clock_register\22\09\09\09\09\09"
module asm "__kstrtabns_posix_clock_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+posix_clock_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_posix_clock_unregister\09\09\09\09"
module asm "\09.long\09__crc_posix_clock_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_posix_clock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22posix_clock_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_posix_clock_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.k_clock = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.96 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }

@posix_clock_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&clk->rwsem\00", [20 x i8] zeroinitializer }, align 32
@posix_clock_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @posix_clock_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @posix_clock_poll, ptr @posix_clock_ioctl, ptr null, ptr null, i32 0, ptr @posix_clock_open, ptr null, ptr @posix_clock_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@posix_clock_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s unable to add device %d:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"posix_clock_register\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/time/posix-clock.c\00", [38 x i8] zeroinitializer }, align 32
@posix_clock_register._entry_ptr = internal global ptr @posix_clock_register._entry, section ".printk_index", align 4
@__kstrtab_posix_clock_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_clock_register = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_clock_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_clock_register to i32), ptr @__kstrtab_posix_clock_register, ptr @__kstrtabns_posix_clock_register }, section "___ksymtab_gpl+posix_clock_register", align 4
@__kstrtab_posix_clock_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_posix_clock_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_posix_clock_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @posix_clock_unregister to i32), ptr @__kstrtab_posix_clock_unregister, ptr @__kstrtabns_posix_clock_unregister }, section "___ksymtab_gpl+posix_clock_unregister", align 4
@clock_posix_dynamic = dso_local constant { %struct.k_clock, [32 x i8] } { %struct.k_clock { ptr @pc_clock_getres, ptr @pc_clock_settime, ptr @pc_clock_gettime, ptr null, ptr @pc_clock_adjtime, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 166, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"posix_clock_file_operations\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 149, i32 37 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 171, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"clock_posix_dynamic\00", align 1
@___asan_gen_.26 = private constant [29 x i8] c"../kernel/time/posix-clock.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 312, i32 22 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_posix_clock_register, ptr @__ksymtab_posix_clock_unregister, ptr @posix_clock_register._entry, ptr @posix_clock_register._entry_ptr, ptr @posix_clock_register.__key, ptr @.str, ptr @posix_clock_file_operations, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @clock_posix_dynamic], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @posix_clock_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @posix_clock_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @posix_clock_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_posix_dynamic to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @posix_clock_register(ptr noundef %clk, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rwsem = getelementptr inbounds %struct.posix_clock, ptr %clk, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %rwsem, ptr noundef nonnull @.str, ptr noundef nonnull @posix_clock_register.__key) #3
  %cdev = getelementptr inbounds %struct.posix_clock, ptr %clk, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @posix_clock_file_operations) #3
  %call = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end4.dev_name.exit_crit_edge

do.end4.dev_name.exit_crit_edge:                  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end4.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %do.end4.dev_name.exit_crit_edge ]
  %devt = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 29
  %4 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devt, align 8
  %shr = lshr i32 %5, 20
  %and = and i32 %5, 1048575
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i, i32 noundef %shr, i32 noundef %and) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %owner9 = getelementptr inbounds %struct.posix_clock, ptr %clk, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %owner9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %owner9, align 4
  %dev10 = getelementptr inbounds %struct.posix_clock, ptr %clk, i32 0, i32 2
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dev_name.exit
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @posix_clock_unregister(ptr noundef %clk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.posix_clock, ptr %clk, i32 0, i32 1
  %dev = getelementptr inbounds %struct.posix_clock, ptr %clk, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %1) #3
  %rwsem = getelementptr inbounds %struct.posix_clock, ptr %clk, i32 0, i32 3
  tail call void @down_write(ptr noundef %rwsem) #3
  %zombie = getelementptr inbounds %struct.posix_clock, ptr %clk, i32 0, i32 4
  %2 = ptrtoint ptr %zombie to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %zombie, align 4
  tail call void @up_write(ptr noundef %rwsem) #3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void @put_device(ptr noundef %4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc_clock_getres(i32 noundef %id, ptr noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i.i = ashr i32 %id, 3
  %neg.i.i = xor i32 %shr.i.i, -1
  %call1.i = tail call ptr @fget(i32 noundef %neg.i.i) #3
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %f_op.i = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 3
  %0 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op.i, align 4
  %open.i = getelementptr inbounds %struct.file_operations, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open.i, align 4
  %cmp.not.i = icmp eq ptr %3, @posix_clock_open
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

lor.lhs.false.i:                                  ; preds = %if.end.i
  %private_data.i = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup.sink.split_crit_edge, label %if.end4.i

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %rwsem.i.i = getelementptr inbounds %struct.posix_clock, ptr %5, i32 0, i32 3
  tail call void @down_read(ptr noundef %rwsem.i.i) #3
  %zombie.i.i = getelementptr inbounds %struct.posix_clock, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %zombie.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %zombie.i.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.end, label %if.end4.i.cleanup.sink.split.sink.split_crit_edge

if.end4.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.end:                                           ; preds = %if.end4.i
  %clock_getres = getelementptr inbounds %struct.posix_clock_operations, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %clock_getres to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock_getres, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.cleanup.sink.split.sink.split_crit_edge, label %if.then2

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 %9(ptr noundef nonnull %5, ptr noundef %ts) #3
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then2, %if.end.cleanup.sink.split.sink.split_crit_edge, %if.end4.i.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -19, %if.end4.i.cleanup.sink.split.sink.split_crit_edge ], [ %call7, %if.then2 ], [ -95, %if.end.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i.i) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %lor.lhs.false.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ -22, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @fput(ptr noundef nonnull %call1.i) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc_clock_settime(i32 noundef %id, ptr noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i.i = ashr i32 %id, 3
  %neg.i.i = xor i32 %shr.i.i, -1
  %call1.i = tail call ptr @fget(i32 noundef %neg.i.i) #3
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %f_op.i = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 3
  %0 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op.i, align 4
  %open.i = getelementptr inbounds %struct.file_operations, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open.i, align 4
  %cmp.not.i = icmp eq ptr %3, @posix_clock_open
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

lor.lhs.false.i:                                  ; preds = %if.end.i
  %private_data.i = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup.sink.split_crit_edge, label %if.end4.i

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %rwsem.i.i = getelementptr inbounds %struct.posix_clock, ptr %5, i32 0, i32 3
  tail call void @down_read(ptr noundef %rwsem.i.i) #3
  %zombie.i.i = getelementptr inbounds %struct.posix_clock, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %zombie.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %zombie.i.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.end, label %if.end4.i.cleanup.sink.split.sink.split_crit_edge

if.end4.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.end:                                           ; preds = %if.end4.i
  %f_mode = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 8
  %8 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_mode, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end.cleanup.sink.split.sink.split_crit_edge, label %if.end2

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.end2:                                          ; preds = %if.end
  %clock_settime = getelementptr inbounds %struct.posix_clock_operations, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %clock_settime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock_settime, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end2.cleanup.sink.split.sink.split_crit_edge, label %if.then4

if.end2.cleanup.sink.split.sink.split_crit_edge:  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 %11(ptr noundef nonnull %5, ptr noundef %ts) #3
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then4, %if.end2.cleanup.sink.split.sink.split_crit_edge, %if.end.cleanup.sink.split.sink.split_crit_edge, %if.end4.i.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -19, %if.end4.i.cleanup.sink.split.sink.split_crit_edge ], [ %call9, %if.then4 ], [ -13, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ -95, %if.end2.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i.i) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %lor.lhs.false.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ -22, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @fput(ptr noundef nonnull %call1.i) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc_clock_gettime(i32 noundef %id, ptr noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i.i = ashr i32 %id, 3
  %neg.i.i = xor i32 %shr.i.i, -1
  %call1.i = tail call ptr @fget(i32 noundef %neg.i.i) #3
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %f_op.i = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 3
  %0 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op.i, align 4
  %open.i = getelementptr inbounds %struct.file_operations, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open.i, align 4
  %cmp.not.i = icmp eq ptr %3, @posix_clock_open
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

lor.lhs.false.i:                                  ; preds = %if.end.i
  %private_data.i = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup.sink.split_crit_edge, label %if.end4.i

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %rwsem.i.i = getelementptr inbounds %struct.posix_clock, ptr %5, i32 0, i32 3
  tail call void @down_read(ptr noundef %rwsem.i.i) #3
  %zombie.i.i = getelementptr inbounds %struct.posix_clock, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %zombie.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %zombie.i.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.end, label %if.end4.i.cleanup.sink.split.sink.split_crit_edge

if.end4.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.end:                                           ; preds = %if.end4.i
  %clock_gettime = getelementptr inbounds %struct.posix_clock_operations, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %clock_gettime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clock_gettime, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.end.cleanup.sink.split.sink.split_crit_edge, label %if.then2

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 %9(ptr noundef nonnull %5, ptr noundef %ts) #3
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then2, %if.end.cleanup.sink.split.sink.split_crit_edge, %if.end4.i.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -19, %if.end4.i.cleanup.sink.split.sink.split_crit_edge ], [ %call7, %if.then2 ], [ -95, %if.end.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i.i) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %lor.lhs.false.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ -22, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @fput(ptr noundef nonnull %call1.i) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc_clock_adjtime(i32 noundef %id, ptr noundef %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i.i = ashr i32 %id, 3
  %neg.i.i = xor i32 %shr.i.i, -1
  %call1.i = tail call ptr @fget(i32 noundef %neg.i.i) #3
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %f_op.i = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 3
  %0 = ptrtoint ptr %f_op.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op.i, align 4
  %open.i = getelementptr inbounds %struct.file_operations, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open.i, align 4
  %cmp.not.i = icmp eq ptr %3, @posix_clock_open
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

lor.lhs.false.i:                                  ; preds = %if.end.i
  %private_data.i = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 16
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup.sink.split_crit_edge, label %if.end4.i

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %rwsem.i.i = getelementptr inbounds %struct.posix_clock, ptr %5, i32 0, i32 3
  tail call void @down_read(ptr noundef %rwsem.i.i) #3
  %zombie.i.i = getelementptr inbounds %struct.posix_clock, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %zombie.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %zombie.i.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.end, label %if.end4.i.cleanup.sink.split.sink.split_crit_edge

if.end4.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.end:                                           ; preds = %if.end4.i
  %f_mode = getelementptr inbounds %struct.file, ptr %call1.i, i32 0, i32 8
  %8 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_mode, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end.cleanup.sink.split.sink.split_crit_edge, label %if.end2

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.end2:                                          ; preds = %if.end
  %clock_adjtime = getelementptr inbounds %struct.posix_clock_operations, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %clock_adjtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock_adjtime, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end2.cleanup.sink.split.sink.split_crit_edge, label %if.then4

if.end2.cleanup.sink.split.sink.split_crit_edge:  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.sink.split

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 %11(ptr noundef nonnull %5, ptr noundef %tx) #3
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then4, %if.end2.cleanup.sink.split.sink.split_crit_edge, %if.end.cleanup.sink.split.sink.split_crit_edge, %if.end4.i.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -19, %if.end4.i.cleanup.sink.split.sink.split_crit_edge ], [ %call9, %if.then4 ], [ -13, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ -95, %if.end2.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i.i) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %lor.lhs.false.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ -22, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @fput(ptr noundef nonnull %call1.i) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_clock_read(ptr nocapture noundef readonly %fp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %rwsem.i = getelementptr inbounds %struct.posix_clock, ptr %1, i32 0, i32 3
  tail call void @down_read(ptr noundef %rwsem.i) #3
  %zombie.i = getelementptr inbounds %struct.posix_clock, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %zombie.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %zombie.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %get_posix_clock.exit, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

get_posix_clock.exit:                             ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %get_posix_clock.exit.cleanup_crit_edge, label %if.end

get_posix_clock.exit.cleanup_crit_edge:           ; preds = %get_posix_clock.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %get_posix_clock.exit
  %read = getelementptr inbounds %struct.posix_clock_operations, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %f_flags = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %call5 = tail call i32 %5(ptr noundef nonnull %1, i32 noundef %7, ptr noundef %buf, i32 noundef %count) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %entry.cleanup.sink.split_crit_edge ], [ %call5, %if.then2 ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %get_posix_clock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %get_posix_clock.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_clock_poll(ptr noundef %fp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %rwsem.i = getelementptr inbounds %struct.posix_clock, ptr %1, i32 0, i32 3
  tail call void @down_read(ptr noundef %rwsem.i) #3
  %zombie.i = getelementptr inbounds %struct.posix_clock, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %zombie.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %zombie.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %get_posix_clock.exit, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

get_posix_clock.exit:                             ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %get_posix_clock.exit.cleanup_crit_edge, label %if.end

get_posix_clock.exit.cleanup_crit_edge:           ; preds = %get_posix_clock.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %get_posix_clock.exit
  %poll = getelementptr inbounds %struct.posix_clock_operations, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poll, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 %5(ptr noundef nonnull %1, ptr noundef %fp, ptr noundef %wait) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 8, %entry.cleanup.sink.split_crit_edge ], [ %call5, %if.then2 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %get_posix_clock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %get_posix_clock.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_clock_ioctl(ptr nocapture noundef readonly %fp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %rwsem.i = getelementptr inbounds %struct.posix_clock, ptr %1, i32 0, i32 3
  tail call void @down_read(ptr noundef %rwsem.i) #3
  %zombie.i = getelementptr inbounds %struct.posix_clock, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %zombie.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %zombie.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %get_posix_clock.exit, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

get_posix_clock.exit:                             ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %get_posix_clock.exit.cleanup_crit_edge, label %if.end

get_posix_clock.exit.cleanup_crit_edge:           ; preds = %get_posix_clock.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %get_posix_clock.exit
  %ioctl = getelementptr inbounds %struct.posix_clock_operations, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioctl, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 %5(ptr noundef nonnull %1, i32 noundef %cmd, i32 noundef %arg) #3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then2, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %entry.cleanup.sink.split_crit_edge ], [ %call5, %if.then2 ], [ -25, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem.i) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %get_posix_clock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %get_posix_clock.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_clock_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -40
  %rwsem = getelementptr i8, ptr %2, i32 164
  tail call void @down_read(ptr noundef %rwsem) #3
  %zombie = getelementptr i8, ptr %2, i32 260
  %3 = ptrtoint ptr %zombie to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %zombie, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %entry
  %open = getelementptr i8, ptr %2, i32 -16
  %5 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %open, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.then7_crit_edge, label %if.end5

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then7

if.end5:                                          ; preds = %if.end
  %f_mode = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 8
  %7 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_mode, align 8
  %call = tail call i32 %6(ptr noundef %add.ptr, i32 noundef %8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end5.if.then7_crit_edge, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then7

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %dev = getelementptr i8, ptr %2, i32 160
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call8 = tail call ptr @get_device(ptr noundef %10) #3
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %private_data, align 4
  br label %out

out:                                              ; preds = %if.then7, %if.end5.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %if.end5.out_crit_edge ], [ 0, %if.then7 ], [ -19, %entry.out_crit_edge ]
  tail call void @up_read(ptr noundef %rwsem) #3
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @posix_clock_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %fp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %release = getelementptr inbounds %struct.posix_clock_operations, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %3(ptr noundef %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %dev = getelementptr inbounds %struct.posix_clock, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @put_device(ptr noundef %5) #3
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_data, align 4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @posix_clock_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/time/posix-clock.c", i32 166, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../kernel/time/posix-clock.c", i32 171, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @posix_clock_register._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @posix_clock_register._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_posix_clock_register, !10, !"__ksymtab_posix_clock_register", i1 false, i1 false}
!10 = !{!"../kernel/time/posix-clock.c", i32 180, i32 1}
!11 = !{ptr @__ksymtab_posix_clock_unregister, !12, !"__ksymtab_posix_clock_unregister", i1 false, i1 false}
!12 = !{!"../kernel/time/posix-clock.c", i32 192, i32 1}
!13 = !{ptr @clock_posix_dynamic, !14, !"clock_posix_dynamic", i1 false, i1 false}
!14 = !{!"../kernel/time/posix-clock.c", i32 312, i32 22}
!15 = !{ptr @posix_clock_file_operations, !16, !"posix_clock_file_operations", i1 false, i1 false}
!16 = !{!"../kernel/time/posix-clock.c", i32 149, i32 37}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i8 0, i8 2}
