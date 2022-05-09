; ModuleID = '/llk/IR_all_yes/sound/firewire/fireworks/fireworks_hwdep.c_pt.bc'
source_filename = "../sound/firewire/fireworks/fireworks_hwdep.c"
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
%union.snd_firewire_event = type { %struct.snd_firewire_event_lock_status }
%struct.snd_firewire_event_lock_status = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_efw = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, i32, i8, i8, i8, i32, i32, i32, i32, [3 x i32], [3 x i32], %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, i32, i32, i32, i32, [8 x %struct.snd_efw_phys_grp], [8 x %struct.snd_efw_phys_grp], i32, i8, %struct.wait_queue_head, ptr, ptr, ptr, %struct.amdtp_domain }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_efw_phys_grp = type { i8, i8 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
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
%struct.snd_efw_transaction = type { i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.snd_firewire_get_info = type { i32, i32, [8 x i8], [16 x i8] }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }

@snd_efw_create_hwdep_device.ops = internal constant { %struct.snd_hwdep_ops, [52 x i8] } { %struct.snd_hwdep_ops { ptr null, ptr @hwdep_read, ptr @hwdep_write, ptr null, ptr @hwdep_release, ptr @hwdep_poll, ptr @hwdep_ioctl, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Fireworks\00", [22 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snd_efw_resp_buf_size = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 18681, i64 18682, i64 2149599480]
@___asan_gen_.4 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 307, i32 36 }
@___asan_gen_.8 = private constant [46 x i8] c"../sound/firewire/fireworks/fireworks_hwdep.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 318, i32 33 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 230, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 214, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 174, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @snd_efw_create_hwdep_device.ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_efw_create_hwdep_device.ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_create_hwdep_device(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  %hwdep = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwdep) #5
  %0 = ptrtoint ptr %hwdep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hwdep, align 4, !annotation !21
  %1 = ptrtoint ptr %efw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %efw, align 8
  %call = call i32 @snd_hwdep_new(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef nonnull %hwdep) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %hwdep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwdep, align 4
  %name = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 4
  %5 = call ptr @memcpy(ptr %name, ptr @.str, i32 10)
  %iface = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 19, ptr %iface, align 8
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 8
  %7 = call ptr @memcpy(ptr %ops, ptr @snd_efw_create_hwdep_device.ops, i32 44)
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 10
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %efw, ptr %private_data, align 4
  %exclusive = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 16
  %9 = ptrtoint ptr %exclusive to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %exclusive, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %exclusive, align 4
  br label %end

end:                                              ; preds = %if.end, %entry.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwdep) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwdep_read(ptr nocapture noundef readonly %hwdep, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %type.i = alloca i32, align 4
  %event.i = alloca %union.snd_firewire_event, align 8
  %wait = alloca %struct.wait_queue_entry, align 4
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
  %lock = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %dev_lock_changed4 = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 27
  %push_ptr = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 31
  %15 = ptrtoint ptr %push_ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %push_ptr, align 8
  %pull_ptr = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 30
  %17 = ptrtoint ptr %pull_ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pull_ptr, align 4
  %cmp = icmp ne ptr %16, %18
  %19 = ptrtoint ptr %dev_lock_changed4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %dev_lock_changed.0.off0.in83 = load i8, ptr %dev_lock_changed4, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dev_lock_changed.0.off0.in83)
  %dev_lock_changed.0.off0.not84 = icmp eq i8 %dev_lock_changed.0.off0.in83, 0
  %dev_lock_changed.0.off0.not.not85 = xor i1 %dev_lock_changed.0.off0.not84, true
  %brmerge86 = select i1 %dev_lock_changed.0.off0.not.not85, i1 true, i1 %cmp
  br i1 %brmerge86, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %hwdep_wait = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 28
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
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
  %tobool13.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool13.not, label %if.end, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %signal_pending.exit
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %29 = ptrtoint ptr %push_ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %push_ptr, align 8
  %31 = ptrtoint ptr %pull_ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pull_ptr, align 4
  %cmp20 = icmp ne ptr %30, %32
  %33 = ptrtoint ptr %dev_lock_changed4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %dev_lock_changed.0.off0.in = load i8, ptr %dev_lock_changed4, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dev_lock_changed.0.off0.in)
  %dev_lock_changed.0.off0.not = icmp eq i8 %dev_lock_changed.0.off0.in, 0
  %dev_lock_changed.0.off0.not.not = xor i1 %dev_lock_changed.0.off0.not, true
  %brmerge = select i1 %dev_lock_changed.0.off0.not.not, i1 true, i1 %cmp20
  br i1 %brmerge, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %queued.0.in.lcssa = phi i1 [ %cmp, %entry.while.end_crit_edge ], [ %cmp20, %if.end.while.end_crit_edge ]
  %dev_lock_changed.0.off0.not.lcssa = phi i1 [ %dev_lock_changed.0.off0.not84, %entry.while.end_crit_edge ], [ %dev_lock_changed.0.off0.not, %if.end.while.end_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  br i1 %dev_lock_changed.0.off0.not.lcssa, label %if.else, label %if.then24

if.then24:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event.i) #5
  %34 = ptrtoint ptr %event.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 18468359372800, ptr %event.i, align 8
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %dev_lock_count.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 26
  %35 = ptrtoint ptr %dev_lock_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dev_lock_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i = icmp sgt i32 %36, 0
  %conv.i = zext i1 %cmp.i to i32
  %status.i = getelementptr inbounds %struct.snd_firewire_event_lock_status, ptr %event.i, i32 0, i32 1
  %37 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i, ptr %status.i, align 4
  %38 = ptrtoint ptr %dev_lock_changed4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %dev_lock_changed4, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  %39 = call i32 @llvm.smin.i32(i32 %count, i32 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %39)
  %cmp1.i.i.i = icmp ugt i32 %39, 8
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %if.then.i.i.i.i, !prof !24

if.then3.i.i.i:                                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef 8, i32 noundef %39) #5
  br label %hwdep_read_locked.exit

if.then.i.i.i.i:                                  ; preds = %if.then24
  call void @__check_object_size(ptr noundef nonnull %event.i, i32 noundef %39, i1 noundef zeroext true) #5
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #5
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %40 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %39, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i.i = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event.i, i32 noundef %39) #5
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %event.i, i32 noundef %39) #5
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %39, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %39, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i54 = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool.not.i54, i32 %39, i32 -14
  br label %hwdep_read_locked.exit

hwdep_read_locked.exit:                           ; preds = %copy_to_user.exit.i, %if.then3.i.i.i
  %41 = phi i32 [ -14, %if.then3.i.i.i ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event.i) #5
  br label %cleanup

if.else:                                          ; preds = %while.end
  br i1 %queued.0.in.lcssa, label %if.then27, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %count)
  %cmp.i55 = icmp ult i32 %count, 28
  br i1 %cmp.i55, label %if.then27.hwdep_read_resp_buf.exit_crit_edge, label %if.end.i57

if.then27.hwdep_read_resp_buf.exit_crit_edge:     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwdep_read_resp_buf.exit

if.end.i57:                                       ; preds = %if.then27
  %42 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1315009653, ptr %type.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #5
  %call.i.i.i56 = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i56, label %if.end.i57.hwdep_read_resp_buf.exit_crit_edge, label %if.end.i.i.i60

if.end.i57.hwdep_read_resp_buf.exit_crit_edge:    ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwdep_read_resp_buf.exit

if.end.i.i.i60:                                   ; preds = %if.end.i57
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 4, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i.i58 = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i58)
  %cmp.i6.i.i59 = icmp eq i32 %asmresult.i.i.i58, 0
  br i1 %cmp.i6.i.i59, label %copy_to_user.exit.i64, label %if.end.i.i.i60.hwdep_read_resp_buf.exit_crit_edge

if.end.i.i.i60.hwdep_read_resp_buf.exit_crit_edge: ; preds = %if.end.i.i.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwdep_read_resp_buf.exit

copy_to_user.exit.i64:                            ; preds = %if.end.i.i.i60
  %call.i.i.i.i61 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %type.i, i32 noundef 4) #5
  %call.i12.i.i.i62 = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %type.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i62)
  %tobool.not.i63 = icmp eq i32 %call.i12.i.i.i62, 0
  br i1 %tobool.not.i63, label %if.end2.i, label %copy_to_user.exit.i64.hwdep_read_resp_buf.exit_crit_edge

copy_to_user.exit.i64.hwdep_read_resp_buf.exit_crit_edge: ; preds = %copy_to_user.exit.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwdep_read_resp_buf.exit

if.end2.i:                                        ; preds = %copy_to_user.exit.i64
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %44 = ptrtoint ptr %pull_ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pull_ptr, align 4
  %46 = ptrtoint ptr %push_ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %push_ptr, align 8
  %cmp4.not53.i = icmp eq ptr %47, %45
  br i1 %cmp4.not53.i, label %if.end2.i.while.end30.i_crit_edge, label %while.body.lr.ph.i

if.end2.i.while.end30.i_crit_edge:                ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end30.i

while.body.lr.ph.i:                               ; preds = %if.end2.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 4
  %sub.i = add i32 %count, -4
  %resp_buf.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 29
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %if.end18.i.while.cond.loopexit.i_crit_edge, %while.cond9.preheader.i.while.cond.loopexit.i_crit_edge
  %remained.addr.1.lcssa.i = phi i32 [ %remained.addr.054.i, %while.cond9.preheader.i.while.cond.loopexit.i_crit_edge ], [ %sub29.i, %if.end18.i.while.cond.loopexit.i_crit_edge ]
  %buf.addr.1.lcssa.i = phi ptr [ %buf.addr.055.i, %while.cond9.preheader.i.while.cond.loopexit.i_crit_edge ], [ %add.ptr28.i, %if.end18.i.while.cond.loopexit.i_crit_edge ]
  %pull_ptr.1.lcssa.i = phi ptr [ %pull_ptr.056.i, %while.cond9.preheader.i.while.cond.loopexit.i_crit_edge ], [ %pull_ptr.2.i, %if.end18.i.while.cond.loopexit.i_crit_edge ]
  %count.1.lcssa.i = phi i32 [ %count.057.i, %while.cond9.preheader.i.while.cond.loopexit.i_crit_edge ], [ %add.i, %if.end18.i.while.cond.loopexit.i_crit_edge ]
  %48 = ptrtoint ptr %push_ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %push_ptr, align 8
  %cmp4.not.i = icmp eq ptr %49, %pull_ptr.1.lcssa.i
  br i1 %cmp4.not.i, label %while.cond.loopexit.i.while.end30.i_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.loopexit.i.while.end30.i_crit_edge:    ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end30.i

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.057.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %count.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %pull_ptr.056.i = phi ptr [ %45, %while.body.lr.ph.i ], [ %pull_ptr.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %buf.addr.055.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i ], [ %buf.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %remained.addr.054.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %remained.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %50 = ptrtoint ptr %pull_ptr.056.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pull_ptr.056.i, align 4
  %mul.i = shl i32 %51, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %remained.addr.054.i, i32 %mul.i)
  %cmp6.i = icmp ult i32 %remained.addr.054.i, %mul.i
  br i1 %cmp6.i, label %while.body.i.while.end30.i_crit_edge, label %while.cond9.preheader.i

while.body.i.while.end30.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end30.i

while.cond9.preheader.i:                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp10.not42.i = icmp eq i32 %mul.i, 0
  br i1 %cmp10.not42.i, label %while.cond9.preheader.i.while.cond.loopexit.i_crit_edge, label %while.cond9.preheader.i.while.body11.i_crit_edge

while.cond9.preheader.i.while.body11.i_crit_edge: ; preds = %while.cond9.preheader.i
  br label %while.body11.i

while.cond9.preheader.i.while.cond.loopexit.i_crit_edge: ; preds = %while.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit.i

while.body11.i:                                   ; preds = %if.end18.i.while.body11.i_crit_edge, %while.cond9.preheader.i.while.body11.i_crit_edge
  %count.149.i = phi i32 [ %add.i, %if.end18.i.while.body11.i_crit_edge ], [ %count.057.i, %while.cond9.preheader.i.while.body11.i_crit_edge ]
  %pull_ptr.147.i = phi ptr [ %pull_ptr.2.i, %if.end18.i.while.body11.i_crit_edge ], [ %pull_ptr.056.i, %while.cond9.preheader.i.while.body11.i_crit_edge ]
  %length.046.i = phi i32 [ %sub27.i, %if.end18.i.while.body11.i_crit_edge ], [ %mul.i, %while.cond9.preheader.i.while.body11.i_crit_edge ]
  %buf.addr.144.i = phi ptr [ %add.ptr28.i, %if.end18.i.while.body11.i_crit_edge ], [ %buf.addr.055.i, %while.cond9.preheader.i.while.body11.i_crit_edge ]
  %remained.addr.143.i = phi i32 [ %sub29.i, %if.end18.i.while.body11.i_crit_edge ], [ %remained.addr.054.i, %while.cond9.preheader.i.while.body11.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_efw_resp_buf_size to i32))
  %52 = load i32, ptr @snd_efw_resp_buf_size, align 4
  %53 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %resp_buf.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pull_ptr.147.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.neg.i = sub i32 %52, %sub.ptr.lhs.cast.i
  %sub12.i = add i32 %sub.ptr.sub.neg.i, %sub.ptr.rhs.cast.i
  %55 = call i32 @llvm.umin.i32(i32 %length.046.i, i32 %sub12.i) #5
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp9.i.i.i = icmp slt i32 %55, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i69

land.rhs16.i.i.i:                                 ; preds = %while.body11.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.hwdep_read_resp_buf.exit_crit_edge, label %if.then27.i.i.i, !prof !23

land.rhs16.i.i.i.hwdep_read_resp_buf.exit_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwdep_read_resp_buf.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #5
  br label %hwdep_read_resp_buf.exit

if.then.i.i.i.i69:                                ; preds = %while.body11.i
  call void @__check_object_size(ptr noundef %pull_ptr.147.i, i32 noundef %55, i1 noundef zeroext true) #5
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #5
  %call.i.i5.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i5.i, label %if.then.i.i.i.i69.copy_to_user.exit13.i_crit_edge, label %if.end.i.i8.i

if.then.i.i.i.i69.copy_to_user.exit13.i_crit_edge: ; preds = %if.then.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit13.i

if.end.i.i8.i:                                    ; preds = %if.then.i.i.i.i69
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.144.i, i32 %55, i32 -1226833920) #8, !srcloc !25
  %asmresult.i.i6.i = extractvalue { i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i6.i)
  %cmp.i6.i7.i = icmp eq i32 %asmresult.i.i6.i, 0
  br i1 %cmp.i6.i7.i, label %if.then2.i.i11.i, label %if.end.i.i8.i.copy_to_user.exit13.i_crit_edge

if.end.i.i8.i.copy_to_user.exit13.i_crit_edge:    ; preds = %if.end.i.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit13.i

if.then2.i.i11.i:                                 ; preds = %if.end.i.i8.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i9.i = call zeroext i1 @__kasan_check_read(ptr noundef %pull_ptr.147.i, i32 noundef %55) #5
  %call.i12.i.i10.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.144.i, ptr noundef %pull_ptr.147.i, i32 noundef %55) #5
  br label %copy_to_user.exit13.i

copy_to_user.exit13.i:                            ; preds = %if.then2.i.i11.i, %if.end.i.i8.i.copy_to_user.exit13.i_crit_edge, %if.then.i.i.i.i69.copy_to_user.exit13.i_crit_edge
  %n.addr.0.i12.i = phi i32 [ %55, %if.then.i.i.i.i69.copy_to_user.exit13.i_crit_edge ], [ %call.i12.i.i10.i, %if.then2.i.i11.i ], [ %55, %if.end.i.i8.i.copy_to_user.exit13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i12.i)
  %tobool16.not.i = icmp eq i32 %n.addr.0.i12.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %copy_to_user.exit13.i.hwdep_read_resp_buf.exit_crit_edge

copy_to_user.exit13.i.hwdep_read_resp_buf.exit_crit_edge: ; preds = %copy_to_user.exit13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hwdep_read_resp_buf.exit

if.end18.i:                                       ; preds = %copy_to_user.exit13.i
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %add.ptr20.i = getelementptr i8, ptr %pull_ptr.147.i, i32 %55
  %57 = ptrtoint ptr %resp_buf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %resp_buf.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_efw_resp_buf_size to i32))
  %59 = load i32, ptr @snd_efw_resp_buf_size, align 4
  %add.ptr22.i = getelementptr i8, ptr %58, i32 %59
  %cmp23.not.i = icmp ult ptr %add.ptr20.i, %add.ptr22.i
  %idx.neg.i = sub i32 0, %59
  %pull_ptr.2.idx.i = select i1 %cmp23.not.i, i32 0, i32 %idx.neg.i
  %pull_ptr.2.i = getelementptr i8, ptr %add.ptr20.i, i32 %pull_ptr.2.idx.i
  %sub27.i = sub i32 %length.046.i, %55
  %add.ptr28.i = getelementptr i8, ptr %buf.addr.144.i, i32 %55
  %add.i = add i32 %55, %count.149.i
  %sub29.i = sub i32 %remained.addr.143.i, %55
  %cmp10.not.i = icmp eq i32 %sub27.i, 0
  br i1 %cmp10.not.i, label %if.end18.i.while.cond.loopexit.i_crit_edge, label %if.end18.i.while.body11.i_crit_edge

if.end18.i.while.body11.i_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body11.i

if.end18.i.while.cond.loopexit.i_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit.i

while.end30.i:                                    ; preds = %while.body.i.while.end30.i_crit_edge, %while.cond.loopexit.i.while.end30.i_crit_edge, %if.end2.i.while.end30.i_crit_edge
  %pull_ptr.0.lcssa.i = phi ptr [ %45, %if.end2.i.while.end30.i_crit_edge ], [ %pull_ptr.1.lcssa.i, %while.cond.loopexit.i.while.end30.i_crit_edge ], [ %pull_ptr.056.i, %while.body.i.while.end30.i_crit_edge ]
  %count.0.lcssa.i = phi i32 [ 0, %if.end2.i.while.end30.i_crit_edge ], [ %count.1.lcssa.i, %while.cond.loopexit.i.while.end30.i_crit_edge ], [ %count.057.i, %while.body.i.while.end30.i_crit_edge ]
  %60 = ptrtoint ptr %pull_ptr to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %pull_ptr.0.lcssa.i, ptr %pull_ptr, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  br label %hwdep_read_resp_buf.exit

hwdep_read_resp_buf.exit:                         ; preds = %while.end30.i, %copy_to_user.exit13.i.hwdep_read_resp_buf.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.hwdep_read_resp_buf.exit_crit_edge, %copy_to_user.exit.i64.hwdep_read_resp_buf.exit_crit_edge, %if.end.i.i.i60.hwdep_read_resp_buf.exit_crit_edge, %if.end.i57.hwdep_read_resp_buf.exit_crit_edge, %if.then27.hwdep_read_resp_buf.exit_crit_edge
  %retval.0.i71 = phi i32 [ %count.0.lcssa.i, %while.end30.i ], [ -28, %if.then27.hwdep_read_resp_buf.exit_crit_edge ], [ -14, %copy_to_user.exit.i64.hwdep_read_resp_buf.exit_crit_edge ], [ -14, %if.end.i57.hwdep_read_resp_buf.exit_crit_edge ], [ -14, %if.end.i.i.i60.hwdep_read_resp_buf.exit_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.hwdep_read_resp_buf.exit_crit_edge ], [ -14, %copy_to_user.exit13.i.hwdep_read_resp_buf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #5
  br label %cleanup

cleanup:                                          ; preds = %hwdep_read_resp_buf.exit, %if.else.cleanup_crit_edge, %hwdep_read_locked.exit, %signal_pending.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %41, %hwdep_read_locked.exit ], [ %retval.0.i71, %hwdep_read_resp_buf.exit ], [ %count, %if.else.cleanup_crit_edge ], [ -512, %signal_pending.exit.cleanup_crit_edge ], [ -512, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwdep_write(ptr nocapture noundef readonly %hwdep, ptr noundef %data, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hwdep, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = add i32 %count, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -489, i32 %2)
  %3 = icmp ult i32 %2, -489
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @memdup_user(ptr noundef %data, i32 noundef %count) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %seqnum6 = getelementptr inbounds %struct.snd_efw_transaction, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %seqnum6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %seqnum6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %6)
  %cmp7 = icmp ugt i32 %6, 65534
  br i1 %cmp7, label %if.end5.end_crit_edge, label %if.end9

if.end5.end_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %unit = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unit, align 4
  %call10 = tail call i32 @snd_efw_transaction_cmd(ptr noundef %8, ptr noundef %call, i32 noundef %count) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  %spec.select = select i1 %cmp11, i32 -5, i32 %count
  br label %end

end:                                              ; preds = %if.end9, %if.end5.end_crit_edge
  %count.addr.0 = phi i32 [ -22, %if.end5.end_crit_edge ], [ %spec.select, %if.end9 ]
  tail call void @kfree(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then3 ], [ %count.addr.0, %end ], [ -22, %entry.cleanup_crit_edge ]
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
  %lock = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %dev_lock_count = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_lock_count, align 4
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
  store i32 0, ptr %dev_lock_count, align 4
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
  %hwdep_wait = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 28
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
  %lock = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %dev_lock_changed = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dev_lock_changed, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %poll_wait.exit.if.end_crit_edge

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pull_ptr = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %pull_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pull_ptr, align 4
  %push_ptr = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %push_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %push_ptr, align 8
  %cmp.not = icmp eq ptr %7, %9
  %spec.select = select i1 %cmp.not, i32 4, i32 69
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %poll_wait.exit.if.end_crit_edge
  %events.0 = phi i32 [ 69, %poll_wait.exit.if.end_crit_edge ], [ %spec.select, %lor.lhs.false ]
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
  %unit.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 1
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
  store i32 2, ptr %info.i, align 4
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
  %lock.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #5
  %dev_lock_count.i = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 26
  %34 = ptrtoint ptr %dev_lock_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dev_lock_count.i, align 4
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
  store i32 -1, ptr %dev_lock_count.i, align 4
  br label %hwdep_lock.exit

hwdep_lock.exit:                                  ; preds = %if.then.i, %sw.bb1.hwdep_lock.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.then.i ], [ -16, %sw.bb1.hwdep_lock.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %lock.i7 = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i7) #5
  %dev_lock_count.i8 = getelementptr inbounds %struct.snd_efw, ptr %1, i32 0, i32 26
  %37 = ptrtoint ptr %dev_lock_count.i8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_lock_count.i8, align 4
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
  store i32 0, ptr %dev_lock_count.i8, align 4
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
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_transaction_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

!0 = !{ptr @snd_efw_create_hwdep_device.ops, !1, !"ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireworks/fireworks_hwdep.c", i32 307, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/fireworks/fireworks_hwdep.c", i32 318, i32 33}
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
!25 = !{i64 2152276174, i64 2152276199}
