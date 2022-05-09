; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.solo_dev = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_device, %struct.gpio_chip, i8, i8, i8, i8, [2 x %struct.i2c_adapter], i32, %struct.mutex, i32, %struct.wait_queue_head, ptr, i32, i32, [4 x %struct.solo_p2m_dev], %struct.atomic_t, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, %struct.v4l2_ctrl_handler, [16 x ptr], i16, i8, i32, i16, i16, i16, i16, i16, i16, i8, %struct.spinlock, [2 x i32], ptr, ptr, %struct.atomic_t, i32, %struct.device, i32, %struct.bin_attribute, i32, ptr, %struct.wait_queue_head, ptr, i32, i32, %struct.vb2_queue, i32, ptr, %struct.mutex, %struct.spinlock, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.96, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.96 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.solo_p2m_dev = type { %struct.mutex, %struct.completion, i32, i32, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@solo_i2c_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&solo_dev->i2c_wait\00", [44 x i8] zeroinitializer }, align 32
@solo_i2c_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&solo_dev->i2c_mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s I2C %d\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"solo6x10\00", [23 x i8] zeroinitializer }, align 32
@solo_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @solo_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @solo_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 280, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 281, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 286, i32 39 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 287, i32 5 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"solo_i2c_algo\00", align 1
@___asan_gen_.24 = private constant [45 x i8] c"../drivers/media/pci/solo6x10/solo6x10-i2c.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 265, i32 35 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @solo_i2c_init.__key, ptr @.str, ptr @solo_i2c_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @solo_i2c_algo], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_i2c_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_i2c_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @solo_i2c_readbyte(ptr noundef %solo_dev, i32 noundef %id, i8 noundef zeroext %addr, i8 noundef zeroext %off) local_unnamed_addr #0 align 64 {
entry:
  %off.addr = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %off.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %off, ptr %off.addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data, align 1, !annotation !22
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %conv = zext i8 %addr to i16
  %5 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %msgs, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %off.addr, ptr %buf, align 4
  %arrayidx5 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %flags6 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags6, align 2
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %arrayidx5, align 4
  %len11 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %len11 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len11, align 4
  %buf13 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %buf13, align 4
  %arrayidx14 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 %id
  %call = call i32 @i2c_transfer(ptr noundef %arrayidx14, ptr noundef nonnull %msgs, i32 noundef 2) #7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  ret i8 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_i2c_writebyte(ptr noundef %solo_dev, i32 noundef %id, i8 noundef zeroext %addr, i8 noundef zeroext %off, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %msgs = alloca %struct.i2c_msg, align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #7
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %off, ptr %buf, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %data, ptr %2, align 1
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %conv = zext i8 %addr to i16
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msgs, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %8 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %buf3, align 4
  %arrayidx4 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 %id
  %call = call i32 @i2c_transfer(ptr noundef %arrayidx4, ptr noundef nonnull %msgs, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_i2c_isr(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i39 = alloca i16, align 2
  %val.i.i.i40 = alloca i16, align 2
  %val.i.i14.i = alloca i16, align 2
  %val.i.i.i15.i = alloca i16, align 2
  %val.i.i.i5.i = alloca i16, align 2
  %val.i.i6.i = alloca i16, align 2
  %val.i.i1.i = alloca i16, align 2
  %val.i.i.i.i = alloca i16, align 2
  %val.i.i.i31 = alloca i16, align 2
  %val.i.i32 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  %val.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2852
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %3 = and i32 %2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %3)
  %cmp = icmp eq i32 %3, 768
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %i2c_id = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 19
  %4 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %irq_mask.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_mask.i.i, align 8
  %and.i.i = and i32 %7, -65
  store i32 %and.i.i, ptr %irq_mask.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #7
  %8 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %9) #7, !srcloc !26
  %12 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %13, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #7
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %val.i.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !26
  %17 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %18, i32 noundef 6, ptr noundef nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #7
  %i2c_state.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 17
  %19 = ptrtoint ptr %i2c_state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %i2c_state.i, align 8
  %i2c_wait.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 20
  call void @__wake_up(ptr noundef %i2c_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %i2c_state = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 17
  %20 = ptrtoint ptr %i2c_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i2c_state, align 8
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %if.end.sw.bb8_crit_edge
    i32 2, label %sw.bb10
  ]

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

sw.bb:                                            ; preds = %if.end
  %i2c_msg = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 21
  %23 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags, align 2
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not = icmp eq i16 %27, 0
  br i1 %tobool.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %i2c_state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %i2c_state, align 8
  tail call fastcc void @solo_i2c_handle_read(ptr noundef %solo_dev)
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %i2c_state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %i2c_state, align 8
  br label %sw.bb8

sw.bb8:                                           ; preds = %if.end6, %if.end.sw.bb8_crit_edge
  %i2c_msg_ptr.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 23
  %i2c_msg.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 21
  %i2c_msg_num.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 22
  br label %retry_write.i

retry_write.i:                                    ; preds = %if.else.i.retry_write.i_crit_edge, %sw.bb8
  %30 = ptrtoint ptr %i2c_msg_ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i2c_msg_ptr.i, align 8
  %32 = ptrtoint ptr %i2c_msg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_msg.i, align 8
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %31, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %retry_write.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %37, i32 %31
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  %conv4.i = zext i8 %39 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i32) #7
  %40 = ptrtoint ptr %val.i.i32 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %val.i.i32, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %41 = shl nuw i32 %conv4.i, 24
  %42 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %43, i32 2856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i33, i32 %41) #7, !srcloc !26
  %44 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %solo_dev, align 8
  %call.i.i34 = call i32 @pci_read_config_word(ptr noundef %45, i32 noundef 6, ptr noundef nonnull %val.i.i32) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i32) #7
  %46 = ptrtoint ptr %i2c_msg_ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i2c_msg_ptr.i, align 8
  %inc.i = add i32 %47, 1
  store i32 %inc.i, ptr %i2c_msg_ptr.i, align 8
  %48 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i2c_id, align 8
  %shl.i.i = shl i32 %49, 5
  %50 = ptrtoint ptr %i2c_state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i2c_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp.i.i = icmp eq i32 %51, 1
  %or.i.i = or i32 %shl.i.i, 8
  %spec.select.i.i = select i1 %cmp.i.i, i32 %or.i.i, i32 %shl.i.i
  %52 = ptrtoint ptr %i2c_msg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i2c_msg.i, align 8
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %len.i.i, align 4
  %conv10.i.i = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv10.i.i)
  %cmp11.i.i = icmp eq i32 %inc.i, %conv10.i.i
  %spec.select27.i.v.i = select i1 %cmp11.i.i, i32 5, i32 1
  %spec.select27.i.i = or i32 %spec.select27.i.v.i, %spec.select.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i31) #7
  %56 = ptrtoint ptr %val.i.i.i31 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 -1, ptr %val.i.i.i31, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %57 = call i32 @llvm.bswap.i32(i32 %spec.select27.i.i) #7
  %58 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i35 = getelementptr i8, ptr %59, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i35, i32 %57) #7, !srcloc !26
  %60 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i36 = call i32 @pci_read_config_word(ptr noundef %61, i32 noundef 6, ptr noundef nonnull %val.i.i.i31) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i31) #7
  br label %cleanup

if.end.i:                                         ; preds = %retry_write.i
  %62 = ptrtoint ptr %i2c_msg_ptr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %i2c_msg_ptr.i, align 8
  %incdec.ptr.i = getelementptr %struct.i2c_msg, ptr %33, i32 1
  %63 = ptrtoint ptr %i2c_msg.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %incdec.ptr.i, ptr %i2c_msg.i, align 8
  %64 = ptrtoint ptr %i2c_msg_num.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i2c_msg_num.i, align 4
  %dec.i = add i32 %65, -1
  store i32 %dec.i, ptr %i2c_msg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp9.i = icmp eq i32 %dec.i, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_mask.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %66 = ptrtoint ptr %irq_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq_mask.i.i.i, align 8
  %and.i.i.i = and i32 %67, -65
  store i32 %and.i.i.i, ptr %irq_mask.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i.i) #7
  %68 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %val.i.i.i.i, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %69 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #7
  %70 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %71, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %69) #7, !srcloc !26
  %72 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i.i = call i32 @pci_read_config_word(ptr noundef %73, i32 noundef 6, ptr noundef nonnull %val.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i1.i) #7
  %74 = ptrtoint ptr %val.i.i1.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -1, ptr %val.i.i1.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %76, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 0) #7, !srcloc !26
  %77 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %solo_dev, align 8
  %call.i.i3.i = call i32 @pci_read_config_word(ptr noundef %78, i32 noundef 6, ptr noundef nonnull %val.i.i1.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i1.i) #7
  %79 = ptrtoint ptr %i2c_state to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4, ptr %i2c_state, align 8
  %i2c_wait.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 20
  call void @__wake_up(ptr noundef %i2c_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  %flags.i = getelementptr %struct.i2c_msg, ptr %33, i32 1, i32 1
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %flags.i, align 2
  %conv14.i = zext i16 %81 to i32
  %and.i = and i32 %conv14.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %incdec.ptr.i, align 4
  %conv.i.i = zext i16 %83 to i32
  %shl.i7.i = shl nuw nsw i32 %conv.i.i, 1
  %84 = and i16 %81, 1
  %85 = zext i16 %84 to i32
  %86 = or i32 %shl.i7.i, %85
  %87 = ptrtoint ptr %i2c_state to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %i2c_state, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i6.i) #7
  %88 = ptrtoint ptr %val.i.i6.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -1, ptr %val.i.i6.i, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %89 = tail call i32 @llvm.bswap.i32(i32 %86) #7
  %90 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %91, i32 2856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 %89) #7, !srcloc !26
  %92 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %solo_dev, align 8
  %call.i.i11.i = call i32 @pci_read_config_word(ptr noundef %93, i32 noundef 6, ptr noundef nonnull %val.i.i6.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i6.i) #7
  %94 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %i2c_id, align 8
  %shl.i.i.i = shl i32 %95, 5
  %96 = ptrtoint ptr %i2c_state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %i2c_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp.i.i.i = icmp eq i32 %97, 1
  %or.i.i.i = or i32 %shl.i.i.i, 8
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 %or.i.i.i, i32 %shl.i.i.i
  %98 = ptrtoint ptr %i2c_msg_ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %i2c_msg_ptr.i, align 8
  %100 = ptrtoint ptr %i2c_msg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i2c_msg.i, align 8
  %len.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %len.i.i.i, align 4
  %conv10.i.i.i = zext i16 %103 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %conv10.i.i.i)
  %cmp11.i.i.i = icmp eq i32 %99, %conv10.i.i.i
  %spec.select27.i.v.i.i = select i1 %cmp11.i.i.i, i32 5, i32 1
  %spec.select27.i.i.i = or i32 %spec.select27.i.v.i.i, %spec.select.i.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i5.i) #7
  %104 = ptrtoint ptr %val.i.i.i5.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 -1, ptr %val.i.i.i5.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %105 = call i32 @llvm.bswap.i32(i32 %spec.select27.i.i.i) #7
  %106 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i12.i = getelementptr i8, ptr %107, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i12.i, i32 %105) #7, !srcloc !26
  %108 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i13.i = call i32 @pci_read_config_word(ptr noundef %109, i32 noundef 6, ptr noundef nonnull %val.i.i.i5.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i5.i) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.end12.i
  %and19.i = and i32 %conv14.i, 1
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else.i.retry_write.i_crit_edge, label %if.then21.i

if.else.i.retry_write.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry_write.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_mask.i.i16.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %110 = ptrtoint ptr %irq_mask.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq_mask.i.i16.i, align 8
  %and.i.i17.i = and i32 %111, -65
  store i32 %and.i.i17.i, ptr %irq_mask.i.i16.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i15.i) #7
  %112 = ptrtoint ptr %val.i.i.i15.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %val.i.i.i15.i, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %113 = tail call i32 @llvm.bswap.i32(i32 %and.i.i17.i) #7
  %114 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i19.i = getelementptr i8, ptr %115, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i19.i, i32 %113) #7, !srcloc !26
  %116 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i20.i = call i32 @pci_read_config_word(ptr noundef %117, i32 noundef 6, ptr noundef nonnull %val.i.i.i15.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i15.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i14.i) #7
  %118 = ptrtoint ptr %val.i.i14.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 -1, ptr %val.i.i14.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %119 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %120, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21.i, i32 0) #7, !srcloc !26
  %121 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %solo_dev, align 8
  %call.i.i22.i = call i32 @pci_read_config_word(ptr noundef %122, i32 noundef 6, ptr noundef nonnull %val.i.i14.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i14.i) #7
  %123 = ptrtoint ptr %i2c_state to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 4, ptr %i2c_state, align 8
  %i2c_wait.i24.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 20
  call void @__wake_up(ptr noundef %i2c_wait.i24.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %125, i32 2860
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !23
  %127 = lshr i32 %126, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  %conv12 = trunc i32 %127 to i8
  %i2c_msg13 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 21
  %128 = ptrtoint ptr %i2c_msg13 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %i2c_msg13, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %buf, align 4
  %i2c_msg_ptr = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 23
  %132 = ptrtoint ptr %i2c_msg_ptr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %i2c_msg_ptr, align 8
  %arrayidx = getelementptr i8, ptr %131, i32 %133
  %134 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv12, ptr %arrayidx, align 1
  %135 = load i32, ptr %i2c_msg_ptr, align 8
  %inc = add i32 %135, 1
  store i32 %inc, ptr %i2c_msg_ptr, align 8
  tail call fastcc void @solo_i2c_handle_read(ptr noundef %solo_dev)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_mask.i.i41 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %136 = ptrtoint ptr %irq_mask.i.i41 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %irq_mask.i.i41, align 8
  %and.i.i42 = and i32 %137, -65
  store i32 %and.i.i42, ptr %irq_mask.i.i41, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i40) #7
  %138 = ptrtoint ptr %val.i.i.i40 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 -1, ptr %val.i.i.i40, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %139 = tail call i32 @llvm.bswap.i32(i32 %and.i.i42) #7
  %140 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i44 = getelementptr i8, ptr %141, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i44, i32 %139) #7, !srcloc !26
  %142 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i45 = call i32 @pci_read_config_word(ptr noundef %143, i32 noundef 6, ptr noundef nonnull %val.i.i.i40) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i40) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i39) #7
  %144 = ptrtoint ptr %val.i.i39 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -1, ptr %val.i.i39, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %145 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %146, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i46, i32 0) #7, !srcloc !26
  %147 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %solo_dev, align 8
  %call.i.i47 = call i32 @pci_read_config_word(ptr noundef %148, i32 noundef 6, ptr noundef nonnull %val.i.i39) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i39) #7
  %149 = ptrtoint ptr %i2c_state to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 4, ptr %i2c_state, align 8
  %i2c_wait.i49 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 20
  call void @__wake_up(ptr noundef %i2c_wait.i49, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb10, %if.then21.i, %if.then15.i, %if.then11.i, %if.then.i, %if.then3, %if.then
  %retval.0 = phi i32 [ -6, %if.then ], [ -22, %sw.default ], [ 0, %sw.bb10 ], [ 0, %if.then3 ], [ 0, %if.then.i ], [ 0, %if.then11.i ], [ 0, %if.then15.i ], [ 0, %if.then21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_i2c_handle_read(ptr noundef %solo_dev) unnamed_addr #0 align 64 {
entry:
  %val.i.i16 = alloca i16, align 2
  %val.i.i.i17 = alloca i16, align 2
  %val.i.i.i5 = alloca i16, align 2
  %val.i.i6 = alloca i16, align 2
  %val.i.i1 = alloca i16, align 2
  %val.i.i.i = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_msg_ptr = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 23
  %i2c_msg = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 21
  %i2c_msg_num = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 22
  br label %prepare_read

prepare_read:                                     ; preds = %if.else.prepare_read_crit_edge, %entry
  %0 = ptrtoint ptr %i2c_msg_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_msg_ptr, align 8
  %2 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_msg, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp eq i32 %1, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %prepare_read
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_id.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 19
  %6 = ptrtoint ptr %i2c_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2c_id.i, align 8
  %shl.i = shl i32 %7, 5
  %i2c_state.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 17
  %8 = ptrtoint ptr %i2c_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  %or.i = or i32 %shl.i, 8
  %spec.select.i = select i1 %cmp.i, i32 %or.i, i32 %shl.i
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i, align 2
  %12 = and i16 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool4.not.i = icmp eq i16 %12, 0
  %spec.select26.v.i = select i1 %tobool4.not.i, i32 18, i32 2
  %spec.select26.i = or i32 %spec.select26.v.i, %spec.select.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #7
  %13 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %val.i.i, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %spec.select26.i) #7
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %15 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 2852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #7, !srcloc !26
  %17 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %18, i32 noundef 6, ptr noundef nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #7
  br label %return

if.end:                                           ; preds = %prepare_read
  %19 = ptrtoint ptr %i2c_msg_ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %i2c_msg_ptr, align 8
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %3, i32 1
  %20 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %incdec.ptr, ptr %i2c_msg, align 8
  %21 = ptrtoint ptr %i2c_msg_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i2c_msg_num, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %i2c_msg_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp5 = icmp eq i32 %dec, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_mask.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %23 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq_mask.i.i, align 8
  %and.i.i = and i32 %24, -65
  store i32 %and.i.i, ptr %irq_mask.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #7
  %25 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #7
  %reg_base.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %27 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %26) #7, !srcloc !26
  %29 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %30, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i1) #7
  %31 = ptrtoint ptr %val.i.i1 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %val.i.i1, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i2 = getelementptr i8, ptr %33, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2, i32 0) #7, !srcloc !26
  %34 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %solo_dev, align 8
  %call.i.i3 = call i32 @pci_read_config_word(ptr noundef %35, i32 noundef 6, ptr noundef nonnull %val.i.i1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i1) #7
  %i2c_state.i4 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 17
  %36 = ptrtoint ptr %i2c_state.i4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %i2c_state.i4, align 8
  %i2c_wait.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 20
  call void @__wake_up(ptr noundef %i2c_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %return

if.end8:                                          ; preds = %if.end
  %flags = getelementptr %struct.i2c_msg, ptr %3, i32 1, i32 1
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags, align 2
  %conv10 = zext i16 %38 to i32
  %and = and i32 %conv10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %incdec.ptr, align 4
  %conv.i = zext i16 %40 to i32
  %shl.i8 = shl nuw nsw i32 %conv.i, 1
  %41 = and i16 %38, 1
  %42 = zext i16 %41 to i32
  %43 = or i32 %shl.i8, %42
  %i2c_state.i10 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 17
  %44 = ptrtoint ptr %i2c_state.i10 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %i2c_state.i10, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i6) #7
  %45 = ptrtoint ptr %val.i.i6 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %val.i.i6, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  %reg_base.i.i11 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %47 = ptrtoint ptr %reg_base.i.i11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base.i.i11, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %48, i32 2856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12, i32 %46) #7, !srcloc !26
  %49 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %solo_dev, align 8
  %call.i.i13 = call i32 @pci_read_config_word(ptr noundef %50, i32 noundef 6, ptr noundef nonnull %val.i.i6) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i6) #7
  %i2c_id.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 19
  %51 = ptrtoint ptr %i2c_id.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i2c_id.i.i, align 8
  %shl.i.i = shl i32 %52, 5
  %53 = ptrtoint ptr %i2c_state.i10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i2c_state.i10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i.i = icmp eq i32 %54, 1
  %or.i.i = or i32 %shl.i.i, 8
  %spec.select.i.i = select i1 %cmp.i.i, i32 %or.i.i, i32 %shl.i.i
  %55 = ptrtoint ptr %i2c_msg_ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i2c_msg_ptr, align 8
  %57 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i2c_msg, align 8
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %len.i.i, align 4
  %conv10.i.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv10.i.i)
  %cmp11.i.i = icmp eq i32 %56, %conv10.i.i
  %spec.select27.i.v.i = select i1 %cmp11.i.i, i32 5, i32 1
  %spec.select27.i.i = or i32 %spec.select27.i.v.i, %spec.select.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i5) #7
  %61 = ptrtoint ptr %val.i.i.i5 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -1, ptr %val.i.i.i5, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %62 = call i32 @llvm.bswap.i32(i32 %spec.select27.i.i) #7
  %63 = ptrtoint ptr %reg_base.i.i11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base.i.i11, align 4
  %add.ptr.i.i.i14 = getelementptr i8, ptr %64, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i14, i32 %62) #7, !srcloc !26
  %65 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i15 = call i32 @pci_read_config_word(ptr noundef %66, i32 noundef 6, ptr noundef nonnull %val.i.i.i5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i5) #7
  br label %return

if.else:                                          ; preds = %if.end8
  %and15 = and i32 %conv10, 1
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else18, label %if.else.prepare_read_crit_edge

if.else.prepare_read_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %prepare_read

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %irq_mask.i.i18 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %67 = ptrtoint ptr %irq_mask.i.i18 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq_mask.i.i18, align 8
  %and.i.i19 = and i32 %68, -65
  store i32 %and.i.i19, ptr %irq_mask.i.i18, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i17) #7
  %69 = ptrtoint ptr %val.i.i.i17 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 -1, ptr %val.i.i.i17, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %70 = tail call i32 @llvm.bswap.i32(i32 %and.i.i19) #7
  %reg_base.i.i.i20 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %71 = ptrtoint ptr %reg_base.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_base.i.i.i20, align 4
  %add.ptr.i.i.i21 = getelementptr i8, ptr %72, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i21, i32 %70) #7, !srcloc !26
  %73 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i22 = call i32 @pci_read_config_word(ptr noundef %74, i32 noundef 6, ptr noundef nonnull %val.i.i.i17) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i17) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i16) #7
  %75 = ptrtoint ptr %val.i.i16 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -1, ptr %val.i.i16, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %76 = ptrtoint ptr %reg_base.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_base.i.i.i20, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %77, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 0) #7, !srcloc !26
  %78 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %solo_dev, align 8
  %call.i.i24 = call i32 @pci_read_config_word(ptr noundef %79, i32 noundef 6, ptr noundef nonnull %val.i.i16) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i16) #7
  %i2c_state.i25 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 17
  %80 = ptrtoint ptr %i2c_state.i25 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %i2c_state.i25, align 8
  %i2c_wait.i26 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 20
  call void @__wake_up(ptr noundef %i2c_wait.i26, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %return

return:                                           ; preds = %if.else18, %if.then11, %if.then7, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_i2c_init(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i, align 2, !annotation !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %1 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 2848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134283264) #7, !srcloc !26
  %3 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #7
  %i2c_id = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 19
  %5 = ptrtoint ptr %i2c_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %i2c_id, align 8
  %i2c_state = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 17
  %6 = ptrtoint ptr %i2c_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %i2c_state, align 8
  %i2c_wait = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 20
  call void @__init_waitqueue_head(ptr noundef %i2c_wait, ptr noundef nonnull @.str, ptr noundef nonnull @solo_i2c_init.__key) #7
  %i2c_mutex = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 18
  call void @__mutex_init(ptr noundef %i2c_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @solo_i2c_init.__key.1) #7
  %arrayidx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 0
  %name = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 0, i32 12
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0)
  %algo = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 0, i32 2
  %7 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @solo_i2c_algo, ptr %algo, align 8
  %algo_data = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 0, i32 3
  %8 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %solo_dev, ptr %algo_data, align 4
  %retries = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 0, i32 8
  %9 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %retries, align 8
  %10 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %solo_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %parent = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 8
  %call5 = call i32 @i2c_add_adapter(ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.cond, label %entry.for.body11.preheader_crit_edge

entry.for.body11.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.preheader

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 1
  %name.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 1, i32 12
  %call.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.1, i32 noundef 20, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1)
  %algo.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 1, i32 2
  %13 = ptrtoint ptr %algo.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @solo_i2c_algo, ptr %algo.1, align 8
  %algo_data.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 1, i32 3
  %14 = ptrtoint ptr %algo_data.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %solo_dev, ptr %algo_data.1, align 4
  %retries.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 1, i32 8
  %15 = ptrtoint ptr %retries.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %retries.1, align 8
  %16 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %solo_dev, align 8
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %parent.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 1, i32 9, i32 1
  %18 = ptrtoint ptr %parent.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev.1, ptr %parent.1, align 8
  %call5.1 = call i32 @i2c_add_adapter(ptr noundef %arrayidx.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool.not.1, label %for.cond.cleanup27_crit_edge, label %for.cond.for.body11.preheader_crit_edge

for.cond.for.body11.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.preheader

for.cond.cleanup27_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

for.body11.preheader:                             ; preds = %for.cond.for.body11.preheader_crit_edge, %entry.for.body11.preheader_crit_edge
  %algo_data.lcssa = phi ptr [ %algo_data, %entry.for.body11.preheader_crit_edge ], [ %algo_data.1, %for.cond.for.body11.preheader_crit_edge ]
  %call5.lcssa = phi i32 [ %call5, %entry.for.body11.preheader_crit_edge ], [ %call5.1, %for.cond.for.body11.preheader_crit_edge ]
  %19 = ptrtoint ptr %algo_data.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %algo_data.lcssa, align 4
  %20 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %algo_data, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %for.body11.preheader.cleanup27_crit_edge, label %if.end17

for.body11.preheader.cleanup27_crit_edge:         ; preds = %for.body11.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

if.end17:                                         ; preds = %for.body11.preheader
  call void @i2c_del_adapter(ptr noundef %arrayidx) #7
  %22 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %algo_data, align 4
  %algo_data14.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 1, i32 3
  %23 = ptrtoint ptr %algo_data14.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %algo_data14.1, align 4
  %tobool15.not.1 = icmp eq ptr %24, null
  br i1 %tobool15.not.1, label %if.end17.cleanup27_crit_edge, label %if.end17.1

if.end17.cleanup27_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27

if.end17.1:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx13.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 1
  call void @i2c_del_adapter(ptr noundef %arrayidx13.1) #7
  %25 = ptrtoint ptr %algo_data14.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %algo_data14.1, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %if.end17.1, %if.end17.cleanup27_crit_edge, %for.body11.preheader.cleanup27_crit_edge, %for.cond.cleanup27_crit_edge
  %ret.164 = phi i32 [ %call5.lcssa, %if.end17.1 ], [ %call5.lcssa, %if.end17.cleanup27_crit_edge ], [ %call5.lcssa, %for.body11.preheader.cleanup27_crit_edge ], [ 0, %for.cond.cleanup27_crit_edge ]
  ret i32 %ret.164
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_i2c_exit(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 0
  tail call void @i2c_del_adapter(ptr noundef %arrayidx) #7
  %2 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %algo_data, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %algo_data.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 1, i32 3
  %3 = ptrtoint ptr %algo_data.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo_data.1, align 4
  %tobool.not.1 = icmp eq ptr %4, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 16, i32 1
  tail call void @i2c_del_adapter(ptr noundef %arrayidx.1) #7
  %5 = ptrtoint ptr %algo_data.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %algo_data.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_i2c_master_xfer(ptr noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #0 align 64 {
entry:
  %val.i.i.i = alloca i16, align 2
  %val.i.i54 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  %val.i = alloca i16, align 2
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !12) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @autoremove_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %4, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %5, align 4
  %arrayidx = getelementptr %struct.solo_dev, ptr %1, i32 0, i32 16, i32 0
  %cmp4 = icmp eq ptr %arrayidx, %adap
  br i1 %cmp4, label %entry.for.end_crit_edge, label %for.cond.1

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.1:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr %struct.solo_dev, ptr %1, i32 0, i32 16, i32 1
  %cmp4.1 = icmp eq ptr %arrayidx.1, %adap
  %spec.select = select i1 %cmp4.1, i1 false, i1 true
  %spec.select60 = select i1 %cmp4.1, i32 1, i32 2
  br label %for.end

for.end:                                          ; preds = %for.cond.1, %entry.for.end_crit_edge
  %cmp5 = phi i1 [ false, %entry.for.end_crit_edge ], [ %spec.select, %for.cond.1 ]
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select60, %for.cond.1 ]
  br i1 %cmp5, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %i2c_mutex = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #7
  %i2c_id = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %i2c_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.0.lcssa, ptr %i2c_id, align 8
  %i2c_msg = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msgs, ptr %i2c_msg, align 8
  %i2c_msg_num = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %i2c_msg_num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %num, ptr %i2c_msg_num, align 4
  %i2c_msg_ptr = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %i2c_msg_ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %i2c_msg_ptr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #7
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %val.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !26
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %23, i32 noundef 6, ptr noundef nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #7
  %irq_mask.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_mask.i, align 8
  %or.i = or i32 %25, 64
  store i32 %or.i, ptr %irq_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #7
  %26 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %val.i.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %27 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %28 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %27) #7, !srcloc !26
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %31, i32 noundef 6, ptr noundef nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #7
  %32 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_msg, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 4
  %conv.i = zext i16 %35 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags.i, align 2
  %38 = and i16 %37, 1
  %39 = zext i16 %38 to i32
  %40 = or i32 %shl.i, %39
  %i2c_state.i = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 17
  %41 = ptrtoint ptr %i2c_state.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %i2c_state.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i54) #7
  %42 = ptrtoint ptr %val.i.i54 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %val.i.i54, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %43 = call i32 @llvm.bswap.i32(i32 %40) #7
  %44 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %45, i32 2856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56, i32 %43) #7, !srcloc !26
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %call.i.i57 = call i32 @pci_read_config_word(ptr noundef %47, i32 noundef 6, ptr noundef nonnull %val.i.i54) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i54) #7
  %48 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i2c_id, align 8
  %shl.i.i = shl i32 %49, 5
  %50 = ptrtoint ptr %i2c_state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i2c_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp.i.i = icmp eq i32 %51, 1
  %or.i.i = or i32 %shl.i.i, 8
  %spec.select.i.i = select i1 %cmp.i.i, i32 %or.i.i, i32 %shl.i.i
  %52 = ptrtoint ptr %i2c_msg_ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i2c_msg_ptr, align 8
  %54 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c_msg, align 8
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %len.i.i, align 4
  %conv10.i.i = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv10.i.i)
  %cmp11.i.i = icmp eq i32 %53, %conv10.i.i
  %spec.select27.i.v.i = select i1 %cmp11.i.i, i32 5, i32 1
  %spec.select27.i.i = or i32 %spec.select27.i.v.i, %spec.select.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #7
  %58 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !25
  call void @arm_heavy_mb() #7
  %59 = call i32 @llvm.bswap.i32(i32 %spec.select27.i.i) #7
  %60 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %61, i32 2852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %59) #7, !srcloc !26
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %63, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #7
  %i2c_wait = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 20
  br label %for.cond8

for.cond8:                                        ; preds = %signal_pending.exit.for.cond8_crit_edge, %if.end7
  %timeout.0 = phi i32 [ 50, %if.end7 ], [ %call12, %signal_pending.exit.for.cond8_crit_edge ]
  call void @prepare_to_wait(ptr noundef %i2c_wait, ptr noundef nonnull %wait, i32 noundef 1) #7
  %64 = ptrtoint ptr %i2c_state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %i2c_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %cmp9 = icmp eq i32 %65, 4
  br i1 %cmp9, label %for.cond8.for.end21_crit_edge, label %if.end11

for.cond8.for.end21_crit_edge:                    ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

if.end11:                                         ; preds = %for.cond8
  %call12 = call i32 @schedule_timeout(i32 noundef %timeout.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end11.for.end21_crit_edge, label %if.end14

if.end11.for.end21_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

if.end14:                                         ; preds = %if.end11
  %66 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %stack.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %72 = and i32 %71, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end14.for.end21_crit_edge, !prof !27

if.end14.for.end21_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

signal_pending.exit:                              ; preds = %if.end14
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %69, align 4
  %and1.i.i.i.i.i = and i32 %74, 1
  %tobool18.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool18.not, label %signal_pending.exit.for.cond8_crit_edge, label %signal_pending.exit.for.end21_crit_edge

signal_pending.exit.for.end21_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

signal_pending.exit.for.cond8_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8

for.end21:                                        ; preds = %signal_pending.exit.for.end21_crit_edge, %if.end14.for.end21_crit_edge, %if.end11.for.end21_crit_edge, %for.cond8.for.end21_crit_edge
  call void @finish_wait(ptr noundef %i2c_wait, ptr noundef nonnull %wait) #7
  %75 = ptrtoint ptr %i2c_msg_num to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %i2c_msg_num, align 4
  %sub = sub i32 %num, %76
  %77 = ptrtoint ptr %i2c_state.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %i2c_state.i, align 8
  %78 = ptrtoint ptr %i2c_id to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %i2c_id, align 8
  call void @mutex_unlock(ptr noundef %i2c_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end21, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %for.end21 ], [ %num, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @solo_i2c_functionality(ptr nocapture noundef readnone %adap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @solo_i2c_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/solo6x10/solo6x10-i2c.c", i32 280, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @solo_i2c_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/solo6x10/solo6x10-i2c.c", i32 281, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/solo6x10/solo6x10-i2c.c", i32 286, i32 39}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/solo6x10/solo6x10-i2c.c", i32 287, i32 5}
!10 = !{ptr @solo_i2c_algo, !11, !"solo_i2c_algo", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/solo6x10/solo6x10-i2c.c", i32 265, i32 35}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
!23 = !{i64 5230093}
!24 = !{i64 2156746822}
!25 = !{i64 2156747213}
!26 = !{i64 5229675}
!27 = !{!"branch_weights", i32 2000, i32 1}
