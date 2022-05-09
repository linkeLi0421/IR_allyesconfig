; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice-hwdep.c_pt.bc'
source_filename = "../sound/firewire/dice/dice-hwdep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%union.snd_firewire_event = type { %struct.snd_firewire_event_lock_status }
%struct.snd_firewire_event_lock_status = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_dice = type { ptr, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, [2 x [3 x i32]], [2 x [3 x i32]], [2 x i32], [2 x i32], %struct.fw_address_handler, i32, i32, i32, i8, %struct.wait_queue_head, [2 x %struct.fw_iso_resources], [2 x %struct.fw_iso_resources], [2 x %struct.amdtp_stream], [2 x %struct.amdtp_stream], i8, %struct.completion, i32, %struct.amdtp_domain }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.snd_firewire_get_info = type { i32, i32, [8 x i8], [16 x i8] }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }

@snd_dice_create_hwdep.ops = internal constant { %struct.snd_hwdep_ops, [52 x i8] } { %struct.snd_hwdep_ops { ptr null, ptr @hwdep_read, ptr null, ptr null, ptr @hwdep_release, ptr @hwdep_poll, ptr @hwdep_ioctl, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DICE\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 18681, i64 18682, i64 2149599480]
@___asan_gen_.4 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 169, i32 36 }
@___asan_gen_.8 = private constant [36 x i8] c"../sound/firewire/dice/dice-hwdep.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 179, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 230, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 214, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 174, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @snd_dice_create_hwdep.ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dice_create_hwdep.ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_create_hwdep(ptr noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  %hwdep = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwdep) #5
  %0 = ptrtoint ptr %hwdep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hwdep, align 4, !annotation !21
  %1 = ptrtoint ptr %dice to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dice, align 8
  %call = call i32 @snd_hwdep_new(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef nonnull %hwdep) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %hwdep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwdep, align 4
  %name = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 4
  %5 = call ptr @memcpy(ptr %name, ptr @.str, i32 5)
  %iface = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 18, ptr %iface, align 8
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 8
  %7 = call ptr @memcpy(ptr %ops, ptr @snd_dice_create_hwdep.ops, i32 44)
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 10
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dice, ptr %private_data, align 4
  %exclusive = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 16
  %9 = ptrtoint ptr %exclusive to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %exclusive, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %exclusive, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwdep) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwdep_read(ptr nocapture noundef readonly %hwdep, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %event = alloca %union.snd_firewire_event, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hwdep, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #5
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !11) #5
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #5
  %15 = getelementptr inbounds %struct.snd_firewire_event_lock_status, ptr %event, i32 0, i32 1
  %lock = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %dev_lock_changed = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dev_lock_changed, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not60 = icmp eq i8 %17, 0
  br i1 %tobool.not60, label %land.rhs.lr.ph, label %entry.if.then13_crit_edge

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

land.rhs.lr.ph:                                   ; preds = %entry
  %notification_bits = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 16
  %hwdep_wait = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 19
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %18 = ptrtoint ptr %notification_bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %notification_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %while.body, label %if.else

while.body:                                       ; preds = %land.rhs
  call void @prepare_to_wait(ptr noundef %hwdep_wait, ptr noundef nonnull %wait, i32 noundef 1) #5
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  call void @schedule() #5
  call void @finish_wait(ptr noundef %hwdep_wait, ptr noundef nonnull %wait) #5
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.cleanup_crit_edge, !prof !23

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

signal_pending.exit:                              ; preds = %while.body
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool9.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool9.not, label %if.end, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %signal_pending.exit
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %29 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dev_lock_changed, align 4, !range !22
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %if.end.land.rhs_crit_edge, label %if.end.if.then13_crit_edge

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.then13:                                        ; preds = %if.end.if.then13_crit_edge, %entry.if.then13_crit_edge
  %31 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 18468359372800, ptr %event, align 8
  %dev_lock_count = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 17
  %32 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp14 = icmp sgt i32 %33, 0
  %conv = zext i1 %cmp14 to i32
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv, ptr %15, align 4
  %35 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %dev_lock_changed, align 4
  br label %if.end28

if.else:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -3328722739572768768, ptr %event, align 8
  %37 = ptrtoint ptr %notification_bits to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %notification_bits, align 4
  %39 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %15, align 4
  store i32 0, ptr %notification_bits, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then13
  %40 = call i32 @llvm.smin.i32(i32 %count, i32 8)
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %40)
  %cmp1.i.i = icmp ugt i32 %40, 8
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !24

if.then3.i.i:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef 8, i32 noundef %40) #5
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end28
  call void @__check_object_size(ptr noundef nonnull %event, i32 noundef %40, i1 noundef zeroext true) #5
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #5
  %call.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %40, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event, i32 noundef %40) #5
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %event, i32 noundef %40) #5
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %40, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %40, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool31.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool31.not, i32 %40, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then3.i.i, %signal_pending.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then3.i.i ], [ %spec.select, %copy_to_user.exit ], [ -512, %signal_pending.exit.cleanup_crit_edge ], [ -512, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwdep_release(ptr nocapture noundef readonly %hwdep, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hwdep, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %dev_lock_count = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_lock_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dev_lock_count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwdep_poll(ptr nocapture noundef readonly %hwdep, ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hwdep, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hwdep_wait = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 19
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %hwdep_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef %file, ptr noundef nonnull %hwdep_wait, ptr noundef nonnull %wait) #5
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %lock = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %dev_lock_changed = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dev_lock_changed, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %poll_wait.exit.if.end_crit_edge

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  %notification_bits = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %notification_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %notification_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 65
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %poll_wait.exit.if.end_crit_edge
  %events.0 = phi i32 [ 65, %poll_wait.exit.if.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  ret i32 %events.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwdep_ioctl(ptr nocapture noundef readonly %hwdep, ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %info.i = alloca %struct.snd_firewire_get_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hwdep, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2145367816, label %sw.bb
    i32 18681, label %sw.bb1
    i32 18682, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = inttoptr i32 %arg to ptr
  %unit.i = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info.i) #5
  %8 = getelementptr inbounds %struct.snd_firewire_get_info, ptr %info.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.snd_firewire_get_info, ptr %info.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.snd_firewire_get_info, ptr %info.i, i32 0, i32 2, i32 4
  %11 = getelementptr inbounds %struct.snd_firewire_get_info, ptr %info.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.snd_firewire_get_info, ptr %info.i, i32 0, i32 3
  %13 = call ptr @memset(ptr %12, i32 0, i32 16)
  %14 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %info.i, align 4
  %card.i = getelementptr i8, ptr %7, i32 -4
  %15 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i, align 4
  %index.i = getelementptr inbounds %struct.fw_card, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 8
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %8, align 4
  %config_rom.i = getelementptr i8, ptr %7, i32 1028
  %20 = ptrtoint ptr %config_rom.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config_rom.i, align 4
  %arrayidx.i = getelementptr i32, ptr %21, i32 3
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %9, align 4
  %arrayidx4.i = getelementptr i32, ptr %21, i32 4
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.i, align 4
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %10, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.dev_name.exit.i_crit_edge

sw.bb.dev_name.exit.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %sw.bb.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i ], [ %29, %sw.bb.dev_name.exit.i_crit_edge ]
  %call8.i = call i32 @strscpy(ptr noundef %11, ptr noundef %retval.0.i.i, i32 noundef 16) #5
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #5
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %dev_name.exit.i.hwdep_get_info.exit_crit_edge, label %if.end.i.i.i

dev_name.exit.i.hwdep_get_info.exit_crit_edge:    ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwdep_get_info.exit

if.end.i.i.i:                                     ; preds = %dev_name.exit.i
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 32, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.hwdep_get_info.exit_crit_edge

if.end.i.i.i.hwdep_get_info.exit_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwdep_get_info.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef 32) #5
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %info.i, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %hwdep_get_info.exit

hwdep_get_info.exit:                              ; preds = %copy_to_user.exit.i, %if.end.i.i.i.hwdep_get_info.exit_crit_edge, %dev_name.exit.i.hwdep_get_info.exit_crit_edge
  %33 = phi i32 [ -14, %dev_name.exit.i.hwdep_get_info.exit_crit_edge ], [ -14, %if.end.i.i.i.hwdep_get_info.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #5
  %dev_lock_count.i = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %dev_lock_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dev_lock_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp eq i32 %35, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb1.hwdep_lock.exit_crit_edge

sw.bb1.hwdep_lock.exit_crit_edge:                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwdep_lock.exit

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %dev_lock_count.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %dev_lock_count.i, align 8
  br label %hwdep_lock.exit

hwdep_lock.exit:                                  ; preds = %if.then.i, %sw.bb1.hwdep_lock.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.then.i ], [ -16, %sw.bb1.hwdep_lock.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %lock.i7 = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i7) #5
  %dev_lock_count.i8 = getelementptr inbounds %struct.snd_dice, ptr %1, i32 0, i32 17
  %37 = ptrtoint ptr %dev_lock_count.i8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_lock_count.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i9 = icmp eq i32 %38, -1
  br i1 %cmp.i9, label %if.then.i10, label %sw.bb3.hwdep_unlock.exit_crit_edge

sw.bb3.hwdep_unlock.exit_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwdep_unlock.exit

if.then.i10:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %dev_lock_count.i8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %dev_lock_count.i8, align 8
  br label %hwdep_unlock.exit

hwdep_unlock.exit:                                ; preds = %if.then.i10, %sw.bb3.hwdep_unlock.exit_crit_edge
  %err.0.i11 = phi i32 [ 0, %if.then.i10 ], [ -77, %sw.bb3.hwdep_unlock.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i7) #5
  br label %cleanup

cleanup:                                          ; preds = %hwdep_unlock.exit, %hwdep_lock.exit, %hwdep_get_info.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.i11, %hwdep_unlock.exit ], [ %err.0.i, %hwdep_lock.exit ], [ %33, %hwdep_get_info.exit ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwdep_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @snd_dice_create_hwdep.ops, !1, !"ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/dice/dice-hwdep.c", i32 169, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/dice/dice-hwdep.c", i32 179, i32 34}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
!22 = !{i8 0, i8 2}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2152273855, i64 2152273880}
