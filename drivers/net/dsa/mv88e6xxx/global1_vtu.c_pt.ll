; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/global1_vtu.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/global1_vtu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mv88e6xxx_vtu_entry = type { i16, i16, i8, i8, [12 x i8], [12 x i8] }
%struct.mv88e6xxx_info = type { i32, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, ptr, i8 }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mv88e6xxx_irq = type { i16, %struct.irq_chip, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.mv88e6xxx_port_hwtstamp = type { i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, i32, ptr, i16, %struct.hwtstamp_config }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mv88e6xxx_port = type { ptr, i32, %struct.mv88e6xxx_vlan, [2 x i64], i64, i64, i64, i64, i64, i32, i8, i8, i8, i32, [64 x i8], ptr }
%struct.mv88e6xxx_vlan = type { i16, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mv88e6xxx-%s-g1-vtu-prob\00", [39 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_vtu_prob_irq_thread_fn._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mv88e6xxx_g1_vtu_prob_irq_thread_fn = private unnamed_addr constant [36 x i8] c"mv88e6xxx_g1_vtu_prob_irq_thread_fn\00", align 1
@mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.mv88e6xxx_g1_vtu_prob_irq_thread_fn, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"VTU member violation for vid %d, source port %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/dsa/mv88e6xxx/global1_vtu.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry_ptr = internal global ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry, section ".printk_index", align 4
@mv88e6xxx_g1_vtu_prob_irq_thread_fn._rs.6 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_vtu_prob_irq_thread_fn.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.mv88e6xxx_g1_vtu_prob_irq_thread_fn, ptr @.str.3, ptr @.str.8, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv88e6xxx\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"VTU miss violation for vid %d, source port %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.mv88e6xxx_g1_vtu_prob_irq_thread_fn, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"VTU problem: error %d while handling interrupt\0A\00", [48 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry_ptr.11 = internal global ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry.9, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 621, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 587, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 593, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [43 x i8] c"../drivers/net/dsa/mv88e6xxx/global1_vtu.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 605, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry, ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry.9, ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry_ptr, ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry_ptr.11, ptr @.str, ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._rs.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._rs.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_vtu_getnext(ptr noundef %chip, ptr nocapture noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %valid = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %entry1, align 2
  %and.i = and i16 %3, 4095
  %4 = shl i16 %3, 1
  %5 = and i16 %4, 8192
  %6 = or i16 %5, %and.i
  %call.i24 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 6, i16 noundef zeroext %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool5.not = icmp eq i32 %call.i24, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call.i25 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 5, i16 noundef zeroext -16384) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i, label %mv88e6xxx_g1_vtu_op.exit, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mv88e6xxx_g1_vtu_op.exit:                         ; preds = %if.end8
  %call.i.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %mv88e6xxx_g1_vtu_op.exit.cleanup_crit_edge

mv88e6xxx_g1_vtu_op.exit.cleanup_crit_edge:       ; preds = %mv88e6xxx_g1_vtu_op.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %mv88e6xxx_g1_vtu_op.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %val.i, align 2, !annotation !31
  %call.i26 = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 6, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %if.end.i29, label %if.end12.mv88e6xxx_g1_vtu_vid_read.exit_crit_edge

if.end12.mv88e6xxx_g1_vtu_vid_read.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_vtu_vid_read.exit

if.end.i29:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %val.i, align 2
  %10 = and i16 %9, 4095
  %11 = lshr i16 %9, 1
  %12 = and i16 %11, 4096
  %13 = or i16 %12, %10
  %14 = ptrtoint ptr %entry1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %entry1, align 2
  %15 = lshr i16 %9, 12
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %valid, align 1
  br label %mv88e6xxx_g1_vtu_vid_read.exit

mv88e6xxx_g1_vtu_vid_read.exit:                   ; preds = %if.end.i29, %if.end12.mv88e6xxx_g1_vtu_vid_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %cleanup

cleanup:                                          ; preds = %mv88e6xxx_g1_vtu_vid_read.exit, %mv88e6xxx_g1_vtu_op.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i26, %mv88e6xxx_g1_vtu_vid_read.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i24, %if.then3.cleanup_crit_edge ], [ %call.i.i, %mv88e6xxx_g1_vtu_op.exit.cleanup_crit_edge ], [ %call.i25, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_g1_vtu_op(ptr noundef %chip, i16 noundef zeroext %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %op, -32768
  %call = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 5, i16 noundef zeroext %0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_g1_vtu_getnext(ptr noundef %chip, ptr nocapture noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !31
  %call = tail call i32 @mv88e6xxx_g1_vtu_getnext(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %valid = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 3
  %1 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %valid, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @mv88e6185_g1_vtu_data_read(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %call8 = tail call fastcc i32 @mv88e6185_g1_stu_data_read(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 5, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val, align 2
  %5 = and i16 %4, 15
  %fid = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 1
  %6 = lshr i16 %4, 4
  %7 = and i16 %6, 240
  %or46 = or i16 %7, %5
  %8 = ptrtoint ptr %fid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %or46, ptr %fid, align 2
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %num_databases.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %num_databases.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_databases.i, align 4
  %13 = trunc i32 %12 to i16
  %14 = add i16 %13, 255
  %conv26 = and i16 %14, %or46
  store i16 %conv26, ptr %fid, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %if.end15 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6185_g1_vtu_data_read(ptr noundef %chip, ptr nocapture noundef writeonly %entry1) unnamed_addr #0 align 64 {
entry:
  %regs = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %regs) #5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %regs, align 2, !annotation !31
  %1 = getelementptr inbounds [3 x i16], ptr %regs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !31
  %3 = getelementptr inbounds [3 x i16], ptr %regs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !31
  %call.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 7, ptr noundef nonnull %regs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i:                                       ; preds = %entry
  %call.1.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 8, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %mv88e6185_g1_vtu_stu_data_read.exit, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mv88e6185_g1_vtu_stu_data_read.exit:              ; preds = %for.cond.i
  %call.2.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 9, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %mv88e6185_g1_vtu_stu_data_read.exit.cleanup_crit_edge

mv88e6185_g1_vtu_stu_data_read.exit.cleanup_crit_edge: ; preds = %mv88e6185_g1_vtu_stu_data_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %mv88e6185_g1_vtu_stu_data_read.exit
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %num_ports.i15 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %num_ports.i15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp16.not = icmp eq i32 %8, 0
  br i1 %cmp16.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.017.frozen = freeze i32 %i.017
  %div = sdiv i32 %i.017.frozen, 4
  %9 = mul i32 %div, 4
  %rem.decomposed = sub i32 %i.017.frozen, %9
  %mul = shl nsw i32 %rem.decomposed, 2
  %arrayidx = getelementptr [3 x i16], ptr %regs, i32 0, i32 %div
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  %shr = lshr i32 %conv, %mul
  %12 = trunc i32 %shr to i8
  %conv3 = and i8 %12, 3
  %arrayidx4 = getelementptr %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 4, i32 %i.017
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3, ptr %arrayidx4, align 1
  %inc = add nuw i32 %i.017, 1
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 8
  %num_ports.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ports.i, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %mv88e6185_g1_vtu_stu_data_read.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.2.i, %mv88e6185_g1_vtu_stu_data_read.exit.cleanup_crit_edge ], [ %call.1.i, %for.cond.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %regs) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6185_g1_stu_data_read(ptr noundef %chip, ptr nocapture noundef writeonly %entry1) unnamed_addr #0 align 64 {
entry:
  %regs = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %regs) #5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %regs, align 2, !annotation !31
  %1 = getelementptr inbounds [3 x i16], ptr %regs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !31
  %3 = getelementptr inbounds [3 x i16], ptr %regs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !31
  %call.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 7, ptr noundef nonnull %regs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i:                                       ; preds = %entry
  %call.1.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 8, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %mv88e6185_g1_vtu_stu_data_read.exit, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mv88e6185_g1_vtu_stu_data_read.exit:              ; preds = %for.cond.i
  %call.2.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 9, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %mv88e6185_g1_vtu_stu_data_read.exit.cleanup_crit_edge

mv88e6185_g1_vtu_stu_data_read.exit.cleanup_crit_edge: ; preds = %mv88e6185_g1_vtu_stu_data_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %mv88e6185_g1_vtu_stu_data_read.exit
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %num_ports.i15 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %num_ports.i15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp16.not = icmp eq i32 %8, 0
  br i1 %cmp16.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.017.frozen = freeze i32 %i.017
  %div = sdiv i32 %i.017.frozen, 4
  %9 = mul i32 %div, 4
  %rem.decomposed = sub i32 %i.017.frozen, %9
  %mul = shl nsw i32 %rem.decomposed, 2
  %add = or i32 %mul, 2
  %arrayidx = getelementptr [3 x i16], ptr %regs, i32 0, i32 %div
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %11 to i32
  %shr = lshr i32 %conv, %add
  %12 = trunc i32 %shr to i8
  %conv3 = and i8 %12, 3
  %arrayidx4 = getelementptr %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 5, i32 %i.017
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3, ptr %arrayidx4, align 1
  %inc = add nuw i32 %i.017, 1
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 8
  %num_ports.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ports.i, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %mv88e6185_g1_vtu_stu_data_read.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.2.i, %mv88e6185_g1_vtu_stu_data_read.exit.cleanup_crit_edge ], [ %call.1.i, %for.cond.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %regs) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g1_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_g1_vtu_getnext(ptr noundef %chip, ptr nocapture noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mv88e6xxx_g1_vtu_getnext(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %valid = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end.if.end20_crit_edge, label %if.then3

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @mv88e6185_g1_vtu_data_read(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i, align 2, !annotation !31
  %call.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 2, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11, label %mv88e6xxx_g1_vtu_fid_read.exit

mv88e6xxx_g1_vtu_fid_read.exit:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val.i, align 2
  %5 = and i16 %4, 4095
  %fid.i = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 1
  %6 = ptrtoint ptr %fid.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %fid.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  %call12 = call fastcc i32 @mv88e6xxx_g1_vtu_stu_get(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = call fastcc i32 @mv88e6185_g1_stu_data_read(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end20:                                         ; preds = %if.end15.if.end20_crit_edge, %if.end.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %mv88e6xxx_g1_vtu_fid_read.exit, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ %call.i, %mv88e6xxx_g1_vtu_fid_read.exit ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_g1_vtu_stu_get(ptr noundef %chip, ptr nocapture noundef %vtu) unnamed_addr #0 align 64 {
entry:
  %val.i27.i = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i, align 2, !annotation !31
  %call.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 3, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %mv88e6xxx_g1_vtu_sid_read.exit

mv88e6xxx_g1_vtu_sid_read.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val.i, align 2
  %3 = trunc i16 %2 to i8
  %conv2.i = and i8 %3, 63
  %sid.i = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %vtu, i32 0, i32 2
  %4 = ptrtoint ptr %sid.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2.i, ptr %sid.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  %sub = add i8 %3, 63
  %5 = and i8 %sub, 63
  %conv2.i.i = zext i8 %5 to i16
  %call.i.i = call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 3, i16 noundef zeroext %conv2.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i22 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i22, label %if.end.i23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i23:                                       ; preds = %if.end
  %call.i21.i = call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 5, i16 noundef zeroext -8192) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool.not.i.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool.not.i.i, label %mv88e6xxx_g1_vtu_op.exit.i, label %if.end.i23.cleanup_crit_edge

if.end.i23.cleanup_crit_edge:                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mv88e6xxx_g1_vtu_op.exit.i:                       ; preds = %if.end.i23
  %call.i.i.i = call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %mv88e6xxx_g1_vtu_op.exit.i.cleanup_crit_edge

mv88e6xxx_g1_vtu_op.exit.i.cleanup_crit_edge:     ; preds = %mv88e6xxx_g1_vtu_op.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %mv88e6xxx_g1_vtu_op.exit.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #5
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val.i.i, align 2, !annotation !31
  %call.i22.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 3, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool.not.i23.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool.not.i23.i, label %if.end9.i, label %mv88e6xxx_g1_vtu_sid_read.exit.i

mv88e6xxx_g1_vtu_sid_read.exit.i:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #5
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i27.i) #5
  %9 = ptrtoint ptr %val.i27.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %val.i27.i, align 2, !annotation !31
  %call.i28.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 6, ptr noundef nonnull %val.i27.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool.not.i29.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool.not.i29.i, label %if.end6, label %mv88e6xxx_g1_vtu_stu_getnext.exit

mv88e6xxx_g1_vtu_stu_getnext.exit:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i27.i) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end9.i
  %10 = trunc i16 %8 to i8
  %conv2.i24.i = and i8 %10, 63
  %11 = ptrtoint ptr %val.i27.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %val.i27.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i27.i) #5
  %13 = ptrtoint ptr %sid.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sid.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv2.i24.i, i8 %14)
  %cmp.not = icmp eq i8 %conv2.i24.i, %14
  br i1 %cmp.not, label %lor.lhs.false, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %15 = and i16 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool12.not = icmp eq i16 %15, 0
  %spec.select = select i1 %tobool12.not, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end6.cleanup_crit_edge, %mv88e6xxx_g1_vtu_stu_getnext.exit, %mv88e6xxx_g1_vtu_sid_read.exit.i, %mv88e6xxx_g1_vtu_op.exit.i.cleanup_crit_edge, %if.end.i23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mv88e6xxx_g1_vtu_sid_read.exit
  %retval.0 = phi i32 [ %call.i, %mv88e6xxx_g1_vtu_sid_read.exit ], [ %call.i28.i, %mv88e6xxx_g1_vtu_stu_getnext.exit ], [ -22, %if.end6.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ], [ %call.i21.i, %if.end.i23.cleanup_crit_edge ], [ %call.i22.i, %mv88e6xxx_g1_vtu_sid_read.exit.i ], [ %call.i.i.i, %mv88e6xxx_g1_vtu_op.exit.i.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_g1_vtu_getnext(ptr noundef %chip, ptr nocapture noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  %regs.i40 = alloca [2 x i16], align 2
  %regs.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mv88e6xxx_g1_vtu_getnext(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %valid = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %member = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs.i) #5
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %regs.i, align 2, !annotation !31
  %3 = getelementptr inbounds [2 x i16], ptr %regs.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !31
  %call.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 7, ptr noundef nonnull %regs.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.then3.mv88e6390_g1_vtu_data_read.exit_crit_edge

if.then3.mv88e6390_g1_vtu_data_read.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6390_g1_vtu_data_read.exit

for.cond.i:                                       ; preds = %if.then3
  %call.1.i = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 8, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.mv88e6390_g1_vtu_data_read.exit_crit_edge

for.cond.i.mv88e6390_g1_vtu_data_read.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6390_g1_vtu_data_read.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %num_ports.i26.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %num_ports.i26.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp427.not.i = icmp eq i32 %8, 0
  br i1 %cmp427.not.i, label %for.cond.1.i.if.end7_crit_edge, label %for.cond.1.i.for.body5.i_crit_edge

for.cond.1.i.for.body5.i_crit_edge:               ; preds = %for.cond.1.i
  br label %for.body5.i

for.cond.1.i.if.end7_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond.1.i.for.body5.i_crit_edge
  %i.128.i = phi i32 [ %inc10.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond.1.i.for.body5.i_crit_edge ]
  %i.128.i.frozen = freeze i32 %i.128.i
  %div.i = sdiv i32 %i.128.i.frozen, 8
  %9 = mul i32 %div.i, 8
  %rem.i.decomposed = sub i32 %i.128.i.frozen, %9
  %mul.i = shl nsw i32 %rem.i.decomposed, 1
  %arrayidx6.i = getelementptr [2 x i16], ptr %regs.i, i32 0, i32 %div.i
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx6.i, align 2
  %conv.i = zext i16 %11 to i32
  %shr.i = lshr i32 %conv.i, %mul.i
  %12 = trunc i32 %shr.i to i8
  %conv7.i = and i8 %12, 3
  %arrayidx8.i = getelementptr i8, ptr %member, i32 %i.128.i
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %inc10.i = add nuw i32 %i.128.i, 1
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 8
  %num_ports.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ports.i.i, align 4
  %cmp4.i = icmp ult i32 %inc10.i, %17
  br i1 %cmp4.i, label %for.body5.i.for.body5.i_crit_edge, label %for.body5.i.if.end7_crit_edge

for.body5.i.if.end7_crit_edge:                    ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i

mv88e6390_g1_vtu_data_read.exit:                  ; preds = %for.cond.i.mv88e6390_g1_vtu_data_read.exit_crit_edge, %if.then3.mv88e6390_g1_vtu_data_read.exit_crit_edge
  %retval.2.i = phi i32 [ %call.i, %if.then3.mv88e6390_g1_vtu_data_read.exit_crit_edge ], [ %call.1.i, %for.cond.i.mv88e6390_g1_vtu_data_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i) #5
  br label %cleanup

if.end7:                                          ; preds = %for.body5.i.if.end7_crit_edge, %for.cond.1.i.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i) #5
  %call8 = call fastcc i32 @mv88e6xxx_g1_vtu_stu_get(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %state = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs.i40) #5
  %18 = ptrtoint ptr %regs.i40 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %regs.i40, align 2, !annotation !31
  %19 = getelementptr inbounds [2 x i16], ptr %regs.i40, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %19, align 2, !annotation !31
  %call.i41 = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 7, ptr noundef nonnull %regs.i40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i42, label %for.cond.i45, label %if.end11.mv88e6390_g1_vtu_data_read.exit63_crit_edge

if.end11.mv88e6390_g1_vtu_data_read.exit63_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6390_g1_vtu_data_read.exit63

for.cond.i45:                                     ; preds = %if.end11
  %call.1.i43 = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 8, ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i43)
  %tobool.not.1.i44 = icmp eq i32 %call.1.i43, 0
  br i1 %tobool.not.1.i44, label %for.cond.1.i48, label %for.cond.i45.mv88e6390_g1_vtu_data_read.exit63_crit_edge

for.cond.i45.mv88e6390_g1_vtu_data_read.exit63_crit_edge: ; preds = %for.cond.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6390_g1_vtu_data_read.exit63

for.cond.1.i48:                                   ; preds = %for.cond.i45
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 8
  %num_ports.i26.i46 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %num_ports.i26.i46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ports.i26.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp427.not.i47 = icmp eq i32 %24, 0
  br i1 %cmp427.not.i47, label %for.cond.1.i48.if.end16_crit_edge, label %for.cond.1.i48.for.body5.i61_crit_edge

for.cond.1.i48.for.body5.i61_crit_edge:           ; preds = %for.cond.1.i48
  br label %for.body5.i61

for.cond.1.i48.if.end16_crit_edge:                ; preds = %for.cond.1.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body5.i61:                                    ; preds = %for.body5.i61.for.body5.i61_crit_edge, %for.cond.1.i48.for.body5.i61_crit_edge
  %i.128.i49 = phi i32 [ %inc10.i58, %for.body5.i61.for.body5.i61_crit_edge ], [ 0, %for.cond.1.i48.for.body5.i61_crit_edge ]
  %i.128.i49.frozen = freeze i32 %i.128.i49
  %div.i52 = sdiv i32 %i.128.i49.frozen, 8
  %25 = mul i32 %div.i52, 8
  %rem.i50.decomposed = sub i32 %i.128.i49.frozen, %25
  %mul.i51 = shl nsw i32 %rem.i50.decomposed, 1
  %arrayidx6.i53 = getelementptr [2 x i16], ptr %regs.i40, i32 0, i32 %div.i52
  %26 = ptrtoint ptr %arrayidx6.i53 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx6.i53, align 2
  %conv.i54 = zext i16 %27 to i32
  %shr.i55 = lshr i32 %conv.i54, %mul.i51
  %28 = trunc i32 %shr.i55 to i8
  %conv7.i56 = and i8 %28, 3
  %arrayidx8.i57 = getelementptr i8, ptr %state, i32 %i.128.i49
  %29 = ptrtoint ptr %arrayidx8.i57 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv7.i56, ptr %arrayidx8.i57, align 1
  %inc10.i58 = add nuw i32 %i.128.i49, 1
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip, align 8
  %num_ports.i.i59 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %num_ports.i.i59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_ports.i.i59, align 4
  %cmp4.i60 = icmp ult i32 %inc10.i58, %33
  br i1 %cmp4.i60, label %for.body5.i61.for.body5.i61_crit_edge, label %for.body5.i61.if.end16_crit_edge

for.body5.i61.if.end16_crit_edge:                 ; preds = %for.body5.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

for.body5.i61.for.body5.i61_crit_edge:            ; preds = %for.body5.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i61

mv88e6390_g1_vtu_data_read.exit63:                ; preds = %for.cond.i45.mv88e6390_g1_vtu_data_read.exit63_crit_edge, %if.end11.mv88e6390_g1_vtu_data_read.exit63_crit_edge
  %retval.2.i62 = phi i32 [ %call.i41, %if.end11.mv88e6390_g1_vtu_data_read.exit63_crit_edge ], [ %call.1.i43, %for.cond.i45.mv88e6390_g1_vtu_data_read.exit63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i40) #5
  br label %cleanup

if.end16:                                         ; preds = %for.body5.i61.if.end16_crit_edge, %for.cond.1.i48.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i40) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %val.i, align 2, !annotation !31
  %call.i64 = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 2, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool.not.i65, label %mv88e6xxx_g1_vtu_fid_read.exit.thread, label %mv88e6xxx_g1_vtu_fid_read.exit

mv88e6xxx_g1_vtu_fid_read.exit.thread:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %val.i, align 2
  %37 = and i16 %36, 4095
  %fid.i = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 1
  %38 = ptrtoint ptr %fid.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %fid.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %cleanup

mv88e6xxx_g1_vtu_fid_read.exit:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %cleanup

cleanup:                                          ; preds = %mv88e6xxx_g1_vtu_fid_read.exit, %mv88e6xxx_g1_vtu_fid_read.exit.thread, %mv88e6390_g1_vtu_data_read.exit63, %if.end7.cleanup_crit_edge, %mv88e6390_g1_vtu_data_read.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.2.i, %mv88e6390_g1_vtu_data_read.exit ], [ %call8, %if.end7.cleanup_crit_edge ], [ %retval.2.i62, %mv88e6390_g1_vtu_data_read.exit63 ], [ %call.i64, %mv88e6xxx_g1_vtu_fid_read.exit ], [ 0, %mv88e6xxx_g1_vtu_fid_read.exit.thread ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_g1_vtu_loadpurge(ptr noundef %chip, ptr nocapture noundef readonly %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %entry1, align 2
  %and.i = and i16 %1, 4095
  %2 = shl i16 %1, 1
  %3 = and i16 %2, 8192
  %4 = or i16 %3, %and.i
  %valid.i = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 3
  %5 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not.i = icmp eq i8 %6, 0
  %7 = or i16 %4, 4096
  %val.1.i = select i1 %tobool8.not.i, i16 %4, i16 %7
  %call.i38 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 6, i16 noundef zeroext %val.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool3.not = icmp eq i32 %call.i38, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %valid.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end5.if.end20_crit_edge, label %if.then7

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then7:                                         ; preds = %if.end5
  %call8 = tail call fastcc i32 @mv88e6185_g1_vtu_data_write(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %fid = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 1
  %10 = ptrtoint ptr %fid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fid, align 2
  %and = and i16 %11, 15
  %12 = shl i16 %11, 4
  %13 = and i16 %12, 3840
  %or = or i16 %and, %13
  %phi.bo = or i16 %or, -20480
  br label %if.end20

if.end20:                                         ; preds = %if.end11, %if.end5.if.end20_crit_edge
  %op.0 = phi i16 [ %phi.bo, %if.end11 ], [ -20480, %if.end5.if.end20_crit_edge ]
  %call.i39 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 5, i16 noundef zeroext %op.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool.not.i = icmp eq i32 %call.i39, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end20.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i38, %if.end.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call.i.i, %if.end.i ], [ %call.i39, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6185_g1_vtu_data_write(ptr noundef %chip, ptr nocapture noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  %regs = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %regs) #5
  %0 = call ptr @memset(ptr %regs, i32 0, i32 6)
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %num_ports.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp41.not = icmp eq i32 %4, 0
  br i1 %cmp41.not, label %entry.for.cond14.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond14.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body.for.cond14.preheader_crit_edge, %entry.for.cond14.preheader_crit_edge
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %regs, align 2
  %call20 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 7, i16 noundef zeroext %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %for.cond14, label %for.cond14.preheader.cleanup25_crit_edge

for.cond14.preheader.cleanup25_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup25

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.042 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.042.frozen = freeze i32 %i.042
  %div = sdiv i32 %i.042.frozen, 4
  %7 = mul i32 %div, 4
  %rem.decomposed = sub i32 %i.042.frozen, %7
  %mul = shl nsw i32 %rem.decomposed, 2
  %add = or i32 %mul, 2
  %arrayidx = getelementptr %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 4, i32 %i.042
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 3
  %and = zext i8 %10 to i32
  %shl = shl i32 %and, %mul
  %arrayidx2 = getelementptr [3 x i16], ptr %regs, i32 0, i32 %div
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx2, align 2
  %13 = trunc i32 %shl to i16
  %conv4 = or i16 %12, %13
  %arrayidx5 = getelementptr %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 5, i32 %i.042
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5, align 1
  %16 = and i8 %15, 3
  %and7 = zext i8 %16 to i32
  %shl8 = shl i32 %and7, %add
  %17 = trunc i32 %shl8 to i16
  %conv13 = or i16 %conv4, %17
  store i16 %conv13, ptr %arrayidx2, align 2
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.body.for.cond14.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.cond14.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader

for.cond14:                                       ; preds = %for.cond14.preheader
  %arrayidx18.1 = getelementptr inbounds [3 x i16], ptr %regs, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx18.1, align 2
  %call20.1 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 8, i16 noundef zeroext %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1)
  %tobool.not.1 = icmp eq i32 %call20.1, 0
  br i1 %tobool.not.1, label %for.cond14.1, label %for.cond14.cleanup25_crit_edge

for.cond14.cleanup25_crit_edge:                   ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup25

for.cond14.1:                                     ; preds = %for.cond14
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx18.2 = getelementptr inbounds [3 x i16], ptr %regs, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx18.2, align 2
  %call20.2 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 9, i16 noundef zeroext %21) #5
  br label %cleanup25

cleanup25:                                        ; preds = %for.cond14.1, %for.cond14.cleanup25_crit_edge, %for.cond14.preheader.cleanup25_crit_edge
  %retval.2 = phi i32 [ %call20, %for.cond14.preheader.cleanup25_crit_edge ], [ %call20.1, %for.cond14.cleanup25_crit_edge ], [ %call20.2, %for.cond14.1 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %regs) #5
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_g1_vtu_loadpurge(ptr noundef %chip, ptr nocapture noundef readonly %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %entry1, align 2
  %and.i = and i16 %1, 4095
  %2 = shl i16 %1, 1
  %3 = and i16 %2, 8192
  %4 = or i16 %3, %and.i
  %valid.i = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 3
  %5 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not.i = icmp eq i8 %6, 0
  %7 = or i16 %4, 4096
  %val.1.i = select i1 %tobool8.not.i, i16 %4, i16 %7
  %call.i47 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 6, i16 noundef zeroext %val.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool3.not = icmp eq i32 %call.i47, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %valid.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end5.if.end24_crit_edge, label %if.then7

if.end5.if.end24_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then7:                                         ; preds = %if.end5
  %call8 = tail call fastcc i32 @mv88e6185_g1_vtu_data_write(ptr noundef %chip, ptr noundef %entry1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %sid.i = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 2
  %10 = ptrtoint ptr %sid.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sid.i, align 2
  %12 = and i8 %11, 63
  %conv2.i = zext i8 %12 to i16
  %call.i48 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 3, i16 noundef zeroext %conv2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool13.not = icmp eq i32 %call.i48, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = tail call fastcc i32 @mv88e6xxx_g1_vtu_op(ptr noundef %chip, i16 noundef zeroext 20480)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %fid.i = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 1
  %13 = ptrtoint ptr %fid.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fid.i, align 2
  %15 = and i16 %14, 4095
  %call.i49 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 2, i16 noundef zeroext %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool21.not = icmp eq i32 %call.i49, 0
  br i1 %tobool21.not, label %if.end19.if.end24_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.end24:                                         ; preds = %if.end19.if.end24_crit_edge, %if.end5.if.end24_crit_edge
  %call.i50 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 5, i16 noundef zeroext -20480) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i47, %if.end.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call.i48, %if.end11.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call.i49, %if.end19.cleanup_crit_edge ], [ %call.i.i, %if.end.i ], [ %call.i50, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_g1_vtu_loadpurge(ptr noundef %chip, ptr nocapture noundef readonly %entry1) local_unnamed_addr #0 align 64 {
entry:
  %regs.i = alloca [2 x i16], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %entry1, align 2
  %and.i = and i16 %1, 4095
  %2 = shl i16 %1, 1
  %3 = and i16 %2, 8192
  %4 = or i16 %3, %and.i
  %valid.i = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 3
  %5 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not.i = icmp eq i8 %6, 0
  %7 = or i16 %4, 4096
  %val.1.i = select i1 %tobool8.not.i, i16 %4, i16 %7
  %call.i56 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 6, i16 noundef zeroext %val.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool3.not = icmp eq i32 %call.i56, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %valid.i, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end5.if.end29_crit_edge, label %if.then7

if.end5.if.end29_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then7:                                         ; preds = %if.end5
  %state = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs.i) #5
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %regs.i, align 4
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 8
  %num_ports.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_ports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp26.not.i = icmp eq i32 %14, 0
  br i1 %cmp26.not.i, label %if.then7.for.cond4.preheader.i_crit_edge, label %if.then7.for.body.i_crit_edge

if.then7.for.body.i_crit_edge:                    ; preds = %if.then7
  br label %for.body.i

if.then7.for.cond4.preheader.i_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.body.i.for.cond4.preheader.i_crit_edge, %if.then7.for.cond4.preheader.i_crit_edge
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %regs.i, align 4
  %call9.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 7, i16 noundef zeroext %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %mv88e6390_g1_vtu_data_write.exit, label %mv88e6390_g1_vtu_data_write.exit.thread

mv88e6390_g1_vtu_data_write.exit.thread:          ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i) #5
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then7.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then7.for.body.i_crit_edge ]
  %i.027.i.frozen = freeze i32 %i.027.i
  %div.i = sdiv i32 %i.027.i.frozen, 8
  %17 = mul i32 %div.i, 8
  %rem.i.decomposed = sub i32 %i.027.i.frozen, %17
  %mul.i = shl nsw i32 %rem.i.decomposed, 1
  %arrayidx.i = getelementptr i8, ptr %state, i32 %i.027.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %20 = and i8 %19, 3
  %and.i57 = zext i8 %20 to i32
  %shl.i = shl i32 %and.i57, %mul.i
  %arrayidx1.i = getelementptr [2 x i16], ptr %regs.i, i32 0, i32 %div.i
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx1.i, align 2
  %23 = trunc i32 %shl.i to i16
  %conv3.i = or i16 %22, %23
  store i16 %conv3.i, ptr %arrayidx1.i, align 2
  %inc.i = add nuw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.body.i.for.cond4.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.cond4.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader.i

mv88e6390_g1_vtu_data_write.exit:                 ; preds = %for.cond4.preheader.i
  %arrayidx8.1.i = getelementptr inbounds [2 x i16], ptr %regs.i, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx8.1.i, align 2
  %call9.1.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 8, i16 noundef zeroext %25) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1.i)
  %tobool9.not = icmp eq i32 %call9.1.i, 0
  br i1 %tobool9.not, label %if.end11, label %mv88e6390_g1_vtu_data_write.exit.cleanup_crit_edge

mv88e6390_g1_vtu_data_write.exit.cleanup_crit_edge: ; preds = %mv88e6390_g1_vtu_data_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %mv88e6390_g1_vtu_data_write.exit
  %sid.i = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 2
  %26 = ptrtoint ptr %sid.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sid.i, align 2
  %28 = and i8 %27, 63
  %conv2.i = zext i8 %28 to i16
  %call.i58 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 3, i16 noundef zeroext %conv2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool13.not = icmp eq i32 %call.i58, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = tail call fastcc i32 @mv88e6xxx_g1_vtu_op(ptr noundef %chip, i16 noundef zeroext 20480)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %member = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 4
  %call21 = tail call fastcc i32 @mv88e6390_g1_vtu_data_write(ptr noundef %chip, ptr noundef %member)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %fid.i = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %entry1, i32 0, i32 1
  %29 = ptrtoint ptr %fid.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fid.i, align 2
  %31 = and i16 %30, 4095
  %call.i59 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 2, i16 noundef zeroext %31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool26.not = icmp eq i32 %call.i59, 0
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end29:                                         ; preds = %if.end24.if.end29_crit_edge, %if.end5.if.end29_crit_edge
  %call.i60 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 5, i16 noundef zeroext -20480) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %if.end.i, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %mv88e6390_g1_vtu_data_write.exit.cleanup_crit_edge, %mv88e6390_g1_vtu_data_write.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i56, %if.end.cleanup_crit_edge ], [ %call9.1.i, %mv88e6390_g1_vtu_data_write.exit.cleanup_crit_edge ], [ %call.i58, %if.end11.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %call.i59, %if.end24.cleanup_crit_edge ], [ %call9.i, %mv88e6390_g1_vtu_data_write.exit.thread ], [ %call.i.i, %if.end.i ], [ %call.i60, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6390_g1_vtu_data_write(ptr noundef %chip, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  %regs = alloca [2 x i16], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regs) #5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %regs, align 4
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %num_ports.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp26.not = icmp eq i32 %4, 0
  br i1 %cmp26.not, label %entry.for.cond4.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %regs, align 4
  %call9 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 7, i16 noundef zeroext %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %for.cond4, label %for.cond4.preheader.cleanup14_crit_edge

for.cond4.preheader.cleanup14_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.027.frozen = freeze i32 %i.027
  %div = sdiv i32 %i.027.frozen, 8
  %7 = mul i32 %div, 8
  %rem.decomposed = sub i32 %i.027.frozen, %7
  %mul = shl nsw i32 %rem.decomposed, 1
  %arrayidx = getelementptr i8, ptr %data, i32 %i.027
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 3
  %and = zext i8 %10 to i32
  %shl = shl i32 %and, %mul
  %arrayidx1 = getelementptr [2 x i16], ptr %regs, i32 0, i32 %div
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx1, align 2
  %13 = trunc i32 %shl to i16
  %conv3 = or i16 %12, %13
  store i16 %conv3, ptr %arrayidx1, align 2
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.body.for.cond4.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.cond4.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader

for.cond4:                                        ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8.1 = getelementptr inbounds [2 x i16], ptr %regs, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx8.1, align 2
  %call9.1 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 8, i16 noundef zeroext %15) #5
  br label %cleanup14

cleanup14:                                        ; preds = %for.cond4, %for.cond4.preheader.cleanup14_crit_edge
  %retval.2 = phi i32 [ %call9, %for.cond4.preheader.cleanup14_crit_edge ], [ %call9.1, %for.cond4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regs) #5
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_vtu_flush(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i4 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 5, i16 noundef zeroext -28672) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.i ], [ %call.i4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_vtu_prob_irq_setup(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 18, i32 2
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !31
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  %vtu_prob_irq25 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 28
  %3 = ptrtoint ptr %vtu_prob_irq25 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %vtu_prob_irq25, align 8
  br label %if.end

irq_find_mapping.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  %vtu_prob_irq = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 28
  %6 = ptrtoint ptr %vtu_prob_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %vtu_prob_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %irq_find_mapping.exit.cleanup_crit_edge, label %irq_find_mapping.exit.if.end_crit_edge

irq_find_mapping.exit.if.end_crit_edge:           ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %irq_find_mapping.exit.if.end_crit_edge, %irq_find_mapping.exit.thread
  %vtu_prob_irq27 = phi ptr [ %vtu_prob_irq25, %irq_find_mapping.exit.thread ], [ %vtu_prob_irq, %irq_find_mapping.exit.if.end_crit_edge ]
  %vtu_prob_irq_name = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 29
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i22 = icmp eq ptr %10, null
  br i1 %tobool.not.i22, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i23 = phi ptr [ %12, %if.end.i ], [ %10, %if.end.dev_name.exit_crit_edge ]
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %vtu_prob_irq_name, i32 noundef 64, ptr noundef nonnull @.str, ptr noundef %retval.0.i23)
  %13 = ptrtoint ptr %vtu_prob_irq27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vtu_prob_irq27, align 8
  %call8 = call i32 @request_threaded_irq(i32 noundef %14, ptr noundef null, ptr noundef nonnull @mv88e6xxx_g1_vtu_prob_irq_thread_fn, i32 noundef 8192, ptr noundef %vtu_prob_irq_name, ptr noundef %chip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.then9

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %vtu_prob_irq27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vtu_prob_irq27, align 8
  call void @irq_dispose_mapping(i32 noundef %16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %dev_name.exit.cleanup_crit_edge, %irq_find_mapping.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %irq_find_mapping.exit.cleanup_crit_edge ], [ %call8, %if.then9 ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_g1_vtu_prob_irq_thread_fn(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !31
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #5
  %call.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %dev_id, i32 noundef 5, i16 noundef zeroext -4096) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mv88e6xxx_g1_vtu_op.exit, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

mv88e6xxx_g1_vtu_op.exit:                         ; preds = %entry
  %call.i.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %dev_id, i32 noundef 5, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %mv88e6xxx_g1_vtu_op.exit.out_crit_edge

mv88e6xxx_g1_vtu_op.exit.out_crit_edge:           ; preds = %mv88e6xxx_g1_vtu_op.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %mv88e6xxx_g1_vtu_op.exit
  %call2 = call i32 @mv88e6xxx_g1_read(ptr noundef %dev_id, i32 noundef 5, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %val.i, align 2, !annotation !31
  %call.i70 = call i32 @mv88e6xxx_g1_read(ptr noundef %dev_id, i32 noundef 6, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.end9, label %mv88e6xxx_g1_vtu_vid_read.exit

mv88e6xxx_g1_vtu_vid_read.exit:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %out

if.end9:                                          ; preds = %if.end5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %val.i, align 2
  %4 = and i16 %3, 4095
  %5 = lshr i16 %3, 1
  %6 = and i16 %5, 4096
  %7 = or i16 %6, %4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %val, align 2
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 15
  %and11 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end22_crit_edge, label %do.body

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.body:                                          ; preds = %if.end9
  %call14 = call i32 @___ratelimit(ptr noundef nonnull @mv88e6xxx_g1_vtu_prob_irq_thread_fn._rs, ptr noundef nonnull @__func__.mv88e6xxx_g1_vtu_prob_irq_thread_fn) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body.do.end21_crit_edge, label %do.end

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %conv18 = zext i16 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %conv18, i32 noundef %and) #8
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  %vtu_member_violation = getelementptr %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 46, i32 %and, i32 7
  %12 = ptrtoint ptr %vtu_member_violation to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vtu_member_violation, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %vtu_member_violation, align 8
  br label %if.end22

if.end22:                                         ; preds = %do.end21, %if.end9.if.end22_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %val, align 2
  %16 = and i16 %15, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool25.not = icmp eq i16 %16, 0
  br i1 %tobool25.not, label %if.end22.if.end44_crit_edge, label %do.body27

if.end22.if.end44_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.body27:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_g1_vtu_prob_irq_thread_fn, %land.lhs.true)) #5
          to label %do.end40 [label %land.lhs.true], !srcloc !32

land.lhs.true:                                    ; preds = %do.body27
  %call32 = call i32 @___ratelimit(ptr noundef nonnull @mv88e6xxx_g1_vtu_prob_irq_thread_fn._rs.6, ptr noundef nonnull @__func__.mv88e6xxx_g1_vtu_prob_irq_thread_fn) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true.do.end40_crit_edge, label %if.then34

land.lhs.true.do.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end40

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dev35 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 3
  %17 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev35, align 4
  %conv37 = zext i16 %7 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_g1_vtu_prob_irq_thread_fn.descriptor, ptr noundef %18, ptr noundef nonnull @.str.8, i32 noundef %conv37, i32 noundef %and) #5
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %land.lhs.true.do.end40_crit_edge, %do.body27
  %vtu_miss_violation = getelementptr %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 46, i32 %and, i32 8
  %19 = ptrtoint ptr %vtu_miss_violation to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vtu_miss_violation, align 8
  %inc43 = add i64 %20, 1
  store i64 %inc43, ptr %vtu_miss_violation, align 8
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %if.end22.if.end44_crit_edge
  call void @mutex_unlock(ptr noundef %reg_lock.i) #5
  br label %cleanup

out:                                              ; preds = %mv88e6xxx_g1_vtu_vid_read.exit, %if.end.out_crit_edge, %mv88e6xxx_g1_vtu_op.exit.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call.i.i, %mv88e6xxx_g1_vtu_op.exit.out_crit_edge ], [ %call2, %if.end.out_crit_edge ], [ %call.i70, %mv88e6xxx_g1_vtu_vid_read.exit ], [ %call.i, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %reg_lock.i) #5
  %dev48 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 3
  %21 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev48, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef %err.0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end44
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_g1_vtu_prob_irq_free(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vtu_prob_irq = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %vtu_prob_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vtu_prob_irq, align 8
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %chip) #5
  %2 = ptrtoint ptr %vtu_prob_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vtu_prob_irq, align 8
  tail call void @irq_dispose_mapping(i32 noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g1_wait_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g1_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/global1_vtu.c", i32 621, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/mv88e6xxx/global1_vtu.c", i32 587, i32 3}
!4 = !{ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.mv88e6xxx_g1_vtu_prob_irq_thread_fn, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry, !3, !"_entry", i1 false, i1 false}
!11 = !{ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._rs.6, !13, !"_rs", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/mv88e6xxx/global1_vtu.c", i32 593, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn.descriptor, !13, !"descriptor", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/dsa/mv88e6xxx/global1_vtu.c", i32 605, i32 2}
!19 = !{ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mv88e6xxx_g1_vtu_prob_irq_thread_fn._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{!"auto-init"}
!32 = !{i64 2148760324, i64 2148760329, i64 2148760342, i64 2148760386, i64 2148760420, i64 2148760441}
