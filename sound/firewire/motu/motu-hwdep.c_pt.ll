; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu-hwdep.c_pt.bc'
source_filename = "../sound/firewire/motu/motu-hwdep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.snd_motu = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.snd_motu_packet_format, %struct.snd_motu_packet_format, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, %struct.fw_address_handler, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain, %struct.amdtp_motu_cache, ptr }
%struct.snd_motu_packet_format = type { i8, i8, i8, i8, [3 x i8] }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.amdtp_motu_cache = type { ptr, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%union.snd_firewire_event = type { %struct.snd_firewire_event_lock_status }
%struct.snd_firewire_event_lock_status = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_motu_spec = type { ptr, i32, i32, [3 x i8], [3 x i8] }
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

@snd_motu_create_hwdep_device.ops = internal constant { %struct.snd_hwdep_ops, [52 x i8] } { %struct.snd_hwdep_ops { ptr null, ptr @hwdep_read, ptr null, ptr null, ptr @hwdep_release, ptr @hwdep_poll, ptr @hwdep_ioctl, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MOTU\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/firewire/motu/motu-hwdep.c\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 18681, i64 18682, i64 2149599480, i64 2150648060, i64 2181056766, i64 2252359933]
@___asan_gen_.5 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 275, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 289, i32 22 }
@___asan_gen_.12 = private constant [36 x i8] c"../sound/firewire/motu/motu-hwdep.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 78, i32 8 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 230, i32 6 }
@___asan_gen_.18 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 214, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 174, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @snd_motu_create_hwdep_device.ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_create_hwdep_device.ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_create_hwdep_device(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  %hwdep = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwdep) #6
  %0 = ptrtoint ptr %hwdep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hwdep, align 4, !annotation !23
  %1 = ptrtoint ptr %motu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %motu, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 2
  %call = call i32 @snd_hwdep_new(ptr noundef %2, ptr noundef %driver, i32 noundef 0, ptr noundef nonnull %hwdep) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %hwdep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hwdep, align 4
  %name = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 4
  %5 = call ptr @memcpy(ptr %name, ptr @.str, i32 5)
  %iface = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 25, ptr %iface, align 8
  %ops = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 8
  %7 = call ptr @memcpy(ptr %ops, ptr @snd_motu_create_hwdep_device.ops, i32 44)
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 10
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %motu, ptr %private_data, align 4
  %exclusive = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 16
  %9 = ptrtoint ptr %exclusive to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %exclusive, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %exclusive, align 4
  %hwdep4 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 17
  %10 = ptrtoint ptr %hwdep4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %hwdep4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwdep) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwdep_read(ptr nocapture noundef readonly %hwdep, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  %event = alloca %union.snd_firewire_event, align 8
  %ev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hwdep, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #6
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i155 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i155 to ptr
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %event) #6
  %15 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %event, align 8, !annotation !23
  %16 = getelementptr inbounds %struct.snd_firewire_event_lock_status, ptr %event, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4, !annotation !23
  %lock = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %dev_lock_changed = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dev_lock_changed, align 8, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not189 = icmp eq i8 %19, 0
  br i1 %tobool.not189, label %land.lhs.true.lr.ph, label %entry.if.then14_crit_edge

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

land.lhs.true.lr.ph:                              ; preds = %entry
  %msg = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 13
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 4
  %hwdep_wait = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 16
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %land.rhs, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %22 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spec.i, align 8
  %flags.i = getelementptr inbounds %struct.snd_motu_spec, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i156 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156)
  %tobool.not.i = icmp eq i32 %and.i156, 0
  br i1 %tobool.not.i, label %land.rhs.while.body_crit_edge, label %has_dsp_event.exit

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

has_dsp_event.exit:                               ; preds = %land.rhs
  %call.i = call i32 @snd_motu_register_dsp_message_parser_count_event(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %has_dsp_event.exit.while.body_crit_edge, label %has_dsp_event.exit.while.end_crit_edge

has_dsp_event.exit.while.end_crit_edge:           ; preds = %has_dsp_event.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

has_dsp_event.exit.while.body_crit_edge:          ; preds = %has_dsp_event.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %has_dsp_event.exit.while.body_crit_edge, %land.rhs.while.body_crit_edge
  call void @prepare_to_wait(ptr noundef %hwdep_wait, ptr noundef nonnull %wait, i32 noundef 1) #6
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  call void @schedule() #6
  call void @finish_wait(ptr noundef %hwdep_wait, ptr noundef nonnull %wait) #6
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stack.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i158 = icmp eq i32 %32, 0
  br i1 %tobool.not.i158, label %signal_pending.exit, label %while.body.cleanup74_crit_edge, !prof !25

while.body.cleanup74_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

signal_pending.exit:                              ; preds = %while.body
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %29, align 4
  %and1.i.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool10.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool10.not, label %if.end, label %signal_pending.exit.cleanup74_crit_edge

signal_pending.exit.cleanup74_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

if.end:                                           ; preds = %signal_pending.exit
  call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %35 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dev_lock_changed, align 8, !range !24
  %tobool.not = icmp eq i8 %36, 0
  br i1 %tobool.not, label %if.end.land.lhs.true_crit_edge, label %if.end.if.then14_crit_edge

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

while.end:                                        ; preds = %has_dsp_event.exit.while.end_crit_edge, %land.lhs.true.while.end_crit_edge
  %37 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr = load i8, ptr %dev_lock_changed, align 8
  %38 = ptrtoint ptr %event to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool13.not = icmp eq i8 %.pr, 0
  br i1 %tobool13.not, label %if.else, label %while.end.if.then14_crit_edge

while.end.if.then14_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %while.end.if.then14_crit_edge, %if.end.if.then14_crit_edge, %entry.if.then14_crit_edge
  %39 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4300, ptr %event, align 8
  %dev_lock_count = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 14
  %40 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp15 = icmp sgt i32 %41, 0
  %conv = zext i1 %cmp15 to i32
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv, ptr %16, align 4
  %43 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %dev_lock_changed, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  %44 = call i32 @llvm.smin.i32(i32 %count, i32 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %44)
  %cmp1.i.i = icmp ugt i32 %44, 8
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !26

if.then3.i.i:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef %44) #6
  br label %cleanup74

if.then.i.i.i:                                    ; preds = %if.then14
  call void @__check_object_size(ptr noundef nonnull %event, i32 noundef %44, i1 noundef zeroext true) #6
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %44, i32 -1226833920) #9, !srcloc !27
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event, i32 noundef %44) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %event, i32 noundef %44) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %44, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %44, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool21.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool21.not, label %copy_to_user.exit.if.end73_crit_edge, label %copy_to_user.exit.cleanup74_crit_edge

copy_to_user.exit.cleanup74_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

copy_to_user.exit.if.end73_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.else:                                          ; preds = %while.end
  %46 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp25.not = icmp eq i32 %47, 0
  br i1 %cmp25.not, label %if.else43, label %if.then27

if.then27:                                        ; preds = %if.else
  %48 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1685546105, ptr %event, align 8
  %49 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %16, align 4
  %50 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %msg, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  %51 = call i32 @llvm.smin.i32(i32 %count, i32 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %51)
  %cmp1.i.i117 = icmp ugt i32 %51, 8
  br i1 %cmp1.i.i117, label %if.then3.i.i120, label %if.then.i.i.i128, !prof !26

if.then3.i.i120:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef %51) #6
  br label %cleanup74

if.then.i.i.i128:                                 ; preds = %if.then27
  call void @__check_object_size(ptr noundef nonnull %event, i32 noundef %51, i1 noundef zeroext true) #6
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #6
  %call.i.i129 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i129, label %if.then.i.i.i128.copy_to_user.exit138_crit_edge, label %if.end.i.i133

if.then.i.i.i128.copy_to_user.exit138_crit_edge:  ; preds = %if.then.i.i.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit138

if.end.i.i133:                                    ; preds = %if.then.i.i.i128
  %52 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %51, i32 -1226833920) #9, !srcloc !27
  %asmresult.i.i131 = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i131)
  %cmp.i6.i132 = icmp eq i32 %asmresult.i.i131, 0
  br i1 %cmp.i6.i132, label %if.then2.i.i136, label %if.end.i.i133.copy_to_user.exit138_crit_edge

if.end.i.i133.copy_to_user.exit138_crit_edge:     ; preds = %if.end.i.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit138

if.then2.i.i136:                                  ; preds = %if.end.i.i133
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i134 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event, i32 noundef %51) #6
  %call.i12.i.i135 = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %event, i32 noundef %51) #6
  br label %copy_to_user.exit138

copy_to_user.exit138:                             ; preds = %if.then2.i.i136, %if.end.i.i133.copy_to_user.exit138_crit_edge, %if.then.i.i.i128.copy_to_user.exit138_crit_edge
  %n.addr.0.i137 = phi i32 [ %51, %if.then.i.i.i128.copy_to_user.exit138_crit_edge ], [ %call.i12.i.i135, %if.then2.i.i136 ], [ %51, %if.end.i.i133.copy_to_user.exit138_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i137)
  %tobool40.not = icmp eq i32 %n.addr.0.i137, 0
  br i1 %tobool40.not, label %copy_to_user.exit138.if.end73_crit_edge, label %copy_to_user.exit138.cleanup74_crit_edge

copy_to_user.exit138.cleanup74_crit_edge:         ; preds = %copy_to_user.exit138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

copy_to_user.exit138.if.end73_crit_edge:          ; preds = %copy_to_user.exit138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.else43:                                        ; preds = %if.else
  %53 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spec.i, align 8
  %flags.i161 = getelementptr inbounds %struct.snd_motu_spec, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %flags.i161 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i161, align 4
  %and.i162 = and i32 %56, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool.not.i163 = icmp eq i32 %and.i162, 0
  br i1 %tobool.not.i163, label %if.else43.if.end73_crit_edge, label %has_dsp_event.exit168

if.else43.if.end73_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

has_dsp_event.exit168:                            ; preds = %if.else43
  %call.i164 = call i32 @snd_motu_register_dsp_message_parser_count_event(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %cmp.i165.not = icmp eq i32 %call.i164, 0
  br i1 %cmp.i165.not, label %has_dsp_event.exit168.if.end73_crit_edge, label %if.then45

has_dsp_event.exit168.if.end73_crit_edge:         ; preds = %has_dsp_event.exit168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then45:                                        ; preds = %has_dsp_event.exit168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ev) #6
  %57 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %ev, align 4, !annotation !23
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp48190 = icmp ugt i32 %count, 8
  br i1 %cmp48190, label %if.then45.land.rhs50_crit_edge, label %if.then45.while.end62_crit_edge

if.then45.while.end62_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end62

if.then45.land.rhs50_crit_edge:                   ; preds = %if.then45
  br label %land.rhs50

land.rhs50:                                       ; preds = %if.end60.land.rhs50_crit_edge, %if.then45.land.rhs50_crit_edge
  %consumed.0191 = phi i32 [ %add61, %if.end60.land.rhs50_crit_edge ], [ 8, %if.then45.land.rhs50_crit_edge ]
  %call51 = call zeroext i1 @snd_motu_register_dsp_message_parser_copy_event(ptr noundef %1, ptr noundef nonnull %ev) #6
  br i1 %call51, label %while.body54, label %land.rhs50.while.end62_crit_edge

land.rhs50.while.end62_crit_edge:                 ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end62

while.body54:                                     ; preds = %land.rhs50
  %add.ptr = getelementptr i8, ptr %buf, i32 %consumed.0191
  %58 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ev, align 4
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 78) #6
  %60 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !28
  %and.i = and i32 %62, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !29
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  %63 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr, i32 %59, i32 -1226833921) #6, !srcloc !31
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #6, !srcloc !29
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool58.not = icmp eq i32 %63, 0
  br i1 %tobool58.not, label %if.end60, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev) #6
  br label %cleanup74

if.end60:                                         ; preds = %while.body54
  %add61 = add i32 %consumed.0191, 4
  %cmp48 = icmp ult i32 %add61, %count
  br i1 %cmp48, label %if.end60.land.rhs50_crit_edge, label %if.end60.while.end62_crit_edge

if.end60.while.end62_crit_edge:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end62

if.end60.land.rhs50_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs50

while.end62:                                      ; preds = %if.end60.while.end62_crit_edge, %land.rhs50.while.end62_crit_edge, %if.then45.while.end62_crit_edge
  %consumed.0.lcssa = phi i32 [ 8, %if.then45.while.end62_crit_edge ], [ %add61, %if.end60.while.end62_crit_edge ], [ %consumed.0191, %land.rhs50.while.end62_crit_edge ]
  %64 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1297371716, ptr %event, align 8
  %sub = add i32 %consumed.0.lcssa, -8
  %div114 = lshr exact i32 %sub, 2
  %65 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div114, ptr %16, align 4
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #6
  %call.i.i145 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i145, label %while.end62.cleanup.thread180_crit_edge, label %if.end.i.i149

while.end62.cleanup.thread180_crit_edge:          ; preds = %while.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread180

if.end.i.i149:                                    ; preds = %while.end62
  %66 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 8, i32 -1226833920) #9, !srcloc !27
  %asmresult.i.i147 = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i147)
  %cmp.i6.i148 = icmp eq i32 %asmresult.i.i147, 0
  br i1 %cmp.i6.i148, label %cleanup, label %if.end.i.i149.cleanup.thread180_crit_edge

if.end.i.i149.cleanup.thread180_crit_edge:        ; preds = %if.end.i.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread180

cleanup.thread180:                                ; preds = %if.end.i.i149.cleanup.thread180_crit_edge, %while.end62.cleanup.thread180_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev) #6
  br label %cleanup74

cleanup:                                          ; preds = %if.end.i.i149
  %call.i.i.i150 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %event, i32 noundef 8) #6
  %call.i12.i.i151 = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %event, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i151)
  %tobool66.not = icmp eq i32 %call.i12.i.i151, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ev) #6
  br i1 %tobool66.not, label %cleanup.if.end73_crit_edge, label %cleanup.cleanup74_crit_edge

cleanup.cleanup74_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

cleanup.if.end73_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.end73:                                         ; preds = %cleanup.if.end73_crit_edge, %has_dsp_event.exit168.if.end73_crit_edge, %if.else43.if.end73_crit_edge, %copy_to_user.exit138.if.end73_crit_edge, %copy_to_user.exit.if.end73_crit_edge
  %count.addr.1 = phi i32 [ %44, %copy_to_user.exit.if.end73_crit_edge ], [ %51, %copy_to_user.exit138.if.end73_crit_edge ], [ %consumed.0.lcssa, %cleanup.if.end73_crit_edge ], [ %count, %has_dsp_event.exit168.if.end73_crit_edge ], [ %count, %if.else43.if.end73_crit_edge ]
  br label %cleanup74

cleanup74:                                        ; preds = %if.end73, %cleanup.cleanup74_crit_edge, %cleanup.thread180, %cleanup.thread, %copy_to_user.exit138.cleanup74_crit_edge, %if.then3.i.i120, %copy_to_user.exit.cleanup74_crit_edge, %if.then3.i.i, %signal_pending.exit.cleanup74_crit_edge, %while.body.cleanup74_crit_edge
  %retval.1 = phi i32 [ %count.addr.1, %if.end73 ], [ -14, %cleanup.cleanup74_crit_edge ], [ -14, %copy_to_user.exit.cleanup74_crit_edge ], [ -14, %copy_to_user.exit138.cleanup74_crit_edge ], [ -14, %cleanup.thread ], [ -14, %cleanup.thread180 ], [ -14, %if.then3.i.i ], [ -14, %if.then3.i.i120 ], [ -512, %signal_pending.exit.cleanup74_crit_edge ], [ -512, %while.body.cleanup74_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %event) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwdep_release(ptr nocapture noundef readonly %hwdep, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hwdep, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %dev_lock_count = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dev_lock_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwdep_poll(ptr nocapture noundef readonly %hwdep, ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hwdep, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hwdep_wait = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 16
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %file, ptr noundef nonnull %hwdep_wait, ptr noundef nonnull %wait) #6
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %lock = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %dev_lock_changed = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dev_lock_changed, align 8, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %poll_wait.exit.if.end_crit_edge

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false:                                    ; preds = %poll_wait.exit
  %msg = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec.i, align 8
  %flags.i = getelementptr inbounds %struct.snd_motu_spec, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i9 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i9, label %lor.lhs.false2.if.end_crit_edge, label %has_dsp_event.exit

lor.lhs.false2.if.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

has_dsp_event.exit:                               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @snd_motu_register_dsp_message_parser_count_event(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %cmp.i.not, i32 4, i32 69
  br label %if.end

if.end:                                           ; preds = %has_dsp_event.exit, %lor.lhs.false2.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %poll_wait.exit.if.end_crit_edge
  %events.0 = phi i32 [ 69, %lor.lhs.false.if.end_crit_edge ], [ 69, %poll_wait.exit.if.end_crit_edge ], [ 4, %lor.lhs.false2.if.end_crit_edge ], [ %spec.select, %has_dsp_event.exit ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret i32 %events.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hwdep_ioctl(ptr nocapture noundef readonly %hwdep, ptr nocapture noundef readnone %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %info.i = alloca %struct.snd_firewire_get_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hwdep, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup52_crit_edge [
    i32 -2145367816, label %sw.bb
    i32 18681, label %sw.bb1
    i32 18682, label %sw.bb3
    i32 -2144319236, label %sw.bb5
    i32 -2042607363, label %sw.bb15
    i32 -2113910530, label %sw.bb34
  ]

entry.cleanup52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

sw.bb:                                            ; preds = %entry
  %3 = inttoptr i32 %arg to ptr
  %unit.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info.i) #6
  %8 = getelementptr inbounds %struct.snd_firewire_get_info, ptr %info.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.snd_firewire_get_info, ptr %info.i, i32 0, i32 2
  %10 = getelementptr inbounds %struct.snd_firewire_get_info, ptr %info.i, i32 0, i32 2, i32 4
  %11 = getelementptr inbounds %struct.snd_firewire_get_info, ptr %info.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.snd_firewire_get_info, ptr %info.i, i32 0, i32 3
  %13 = call ptr @memset(ptr %12, i32 0, i32 16)
  %14 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %info.i, align 4
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
  br i1 %tobool.not.i.i, label %if.end.i.i101, label %sw.bb.dev_name.exit.i_crit_edge

sw.bb.dev_name.exit.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i101:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i101, %sw.bb.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i101 ], [ %29, %sw.bb.dev_name.exit.i_crit_edge ]
  %call8.i = call i32 @strscpy(ptr noundef %11, ptr noundef %retval.0.i.i, i32 noundef 16) #6
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #6
  %call.i.i.i102 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i102, label %dev_name.exit.i.hwdep_get_info.exit_crit_edge, label %if.end.i.i.i

dev_name.exit.i.hwdep_get_info.exit_crit_edge:    ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwdep_get_info.exit

if.end.i.i.i:                                     ; preds = %dev_name.exit.i
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 32, i32 -1226833920) #9, !srcloc !27
  %asmresult.i.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.hwdep_get_info.exit_crit_edge

if.end.i.i.i.hwdep_get_info.exit_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwdep_get_info.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef 32) #6
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %info.i, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %hwdep_get_info.exit

hwdep_get_info.exit:                              ; preds = %copy_to_user.exit.i, %if.end.i.i.i.hwdep_get_info.exit_crit_edge, %dev_name.exit.i.hwdep_get_info.exit_crit_edge
  %33 = phi i32 [ -14, %dev_name.exit.i.hwdep_get_info.exit_crit_edge ], [ -14, %if.end.i.i.i.hwdep_get_info.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #6
  br label %cleanup52

sw.bb1:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %dev_lock_count.i = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 14
  %34 = ptrtoint ptr %dev_lock_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dev_lock_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i = icmp eq i32 %35, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb1.hwdep_lock.exit_crit_edge

sw.bb1.hwdep_lock.exit_crit_edge:                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwdep_lock.exit

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %dev_lock_count.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %dev_lock_count.i, align 4
  br label %hwdep_lock.exit

hwdep_lock.exit:                                  ; preds = %if.then.i, %sw.bb1.hwdep_lock.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.then.i ], [ -16, %sw.bb1.hwdep_lock.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #6
  br label %cleanup52

sw.bb3:                                           ; preds = %entry
  %lock.i103 = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i103) #6
  %dev_lock_count.i104 = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 14
  %37 = ptrtoint ptr %dev_lock_count.i104 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_lock_count.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i105 = icmp eq i32 %38, -1
  br i1 %cmp.i105, label %if.then.i106, label %sw.bb3.hwdep_unlock.exit_crit_edge

sw.bb3.hwdep_unlock.exit_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %hwdep_unlock.exit

if.then.i106:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %dev_lock_count.i104 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %dev_lock_count.i104, align 4
  br label %hwdep_unlock.exit

hwdep_unlock.exit:                                ; preds = %if.then.i106, %sw.bb3.hwdep_unlock.exit_crit_edge
  %err.0.i107 = phi i32 [ 0, %if.then.i106 ], [ -77, %sw.bb3.hwdep_unlock.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i103) #6
  br label %cleanup52

sw.bb5:                                           ; preds = %entry
  %spec = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spec, align 8
  %flags = getelementptr inbounds %struct.snd_motu_spec, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %and = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb5.cleanup52_crit_edge, label %if.end

sw.bb5.cleanup52_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end:                                           ; preds = %sw.bb5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 48) #10
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup52_crit_edge, label %if.end9

if.end.cleanup52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end9:                                          ; preds = %if.end
  tail call void @snd_motu_register_dsp_message_parser_copy_meter(ptr noundef %1, ptr noundef nonnull %call7.i.i) #6
  %45 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end9.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

if.end9.copy_to_user.exit.thread_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %if.end9
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %45, i32 48, i32 -1226833920) #9, !srcloc !27
  %asmresult.i.i = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.end.i.i.copy_to_user.exit.thread_crit_edge, %if.end9.copy_to_user.exit.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup52

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef 48) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %45, ptr noundef nonnull %call7.i.i, i32 noundef 48) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool11.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 -14
  br label %cleanup52

sw.bb15:                                          ; preds = %entry
  %spec18 = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %spec18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spec18, align 8
  %flags19 = getelementptr inbounds %struct.snd_motu_spec, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags19, align 4
  %and20 = and i32 %50, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %sw.bb15.cleanup52_crit_edge, label %if.end23

sw.bb15.cleanup52_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end23:                                         ; preds = %sw.bb15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i110 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 1600) #10
  %tobool25.not = icmp eq ptr %call7.i.i110, null
  br i1 %tobool25.not, label %if.end23.cleanup52_crit_edge, label %if.end27

if.end23.cleanup52_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end27:                                         ; preds = %if.end23
  tail call void @snd_motu_command_dsp_message_parser_copy_meter(ptr noundef %1, ptr noundef nonnull %call7.i.i110) #6
  %52 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #6
  %call.i.i79 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i79, label %if.end27.copy_to_user.exit87.thread_crit_edge, label %if.end.i.i82

if.end27.copy_to_user.exit87.thread_crit_edge:    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit87.thread

if.end.i.i82:                                     ; preds = %if.end27
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %52, i32 1600, i32 -1226833920) #9, !srcloc !27
  %asmresult.i.i80 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i80)
  %cmp.i6.i81 = icmp eq i32 %asmresult.i.i80, 0
  br i1 %cmp.i6.i81, label %copy_to_user.exit87, label %if.end.i.i82.copy_to_user.exit87.thread_crit_edge

if.end.i.i82.copy_to_user.exit87.thread_crit_edge: ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit87.thread

copy_to_user.exit87.thread:                       ; preds = %if.end.i.i82.copy_to_user.exit87.thread_crit_edge, %if.end27.copy_to_user.exit87.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i110) #6
  br label %cleanup52

copy_to_user.exit87:                              ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i110, i32 noundef 1600) #6
  %call.i12.i.i84 = tail call i32 @arm_copy_to_user(ptr noundef %52, ptr noundef nonnull %call7.i.i110, i32 noundef 1600) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i110) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i84)
  %tobool29.not = icmp eq i32 %call.i12.i.i84, 0
  %spec.select119 = select i1 %tobool29.not, i32 0, i32 -14
  br label %cleanup52

sw.bb34:                                          ; preds = %entry
  %spec36 = getelementptr inbounds %struct.snd_motu, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %spec36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %spec36, align 8
  %flags37 = getelementptr inbounds %struct.snd_motu_spec, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags37, align 4
  %and38 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %sw.bb34.cleanup52_crit_edge, label %if.end41

sw.bb34.cleanup52_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end41:                                         ; preds = %sw.bb34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i112 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 512) #10
  %tobool43.not = icmp eq ptr %call7.i.i112, null
  br i1 %tobool43.not, label %if.end41.cleanup52_crit_edge, label %if.end45

if.end41.cleanup52_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

if.end45:                                         ; preds = %if.end41
  tail call void @snd_motu_register_dsp_message_parser_copy_parameter(ptr noundef %1, ptr noundef nonnull %call7.i.i112) #6
  %59 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #6
  %call.i.i92 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i92, label %if.end45.copy_to_user.exit100.thread_crit_edge, label %if.end.i.i95

if.end45.copy_to_user.exit100.thread_crit_edge:   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit100.thread

if.end.i.i95:                                     ; preds = %if.end45
  %60 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %59, i32 512, i32 -1226833920) #9, !srcloc !27
  %asmresult.i.i93 = extractvalue { i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i93)
  %cmp.i6.i94 = icmp eq i32 %asmresult.i.i93, 0
  br i1 %cmp.i6.i94, label %copy_to_user.exit100, label %if.end.i.i95.copy_to_user.exit100.thread_crit_edge

if.end.i.i95.copy_to_user.exit100.thread_crit_edge: ; preds = %if.end.i.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit100.thread

copy_to_user.exit100.thread:                      ; preds = %if.end.i.i95.copy_to_user.exit100.thread_crit_edge, %if.end45.copy_to_user.exit100.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i112) #6
  br label %cleanup52

copy_to_user.exit100:                             ; preds = %if.end.i.i95
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i96 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i112, i32 noundef 512) #6
  %call.i12.i.i97 = tail call i32 @arm_copy_to_user(ptr noundef %59, ptr noundef nonnull %call7.i.i112, i32 noundef 512) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i97)
  %tobool47.not = icmp eq i32 %call.i12.i.i97, 0
  %spec.select120 = select i1 %tobool47.not, i32 0, i32 -14
  br label %cleanup52

cleanup52:                                        ; preds = %copy_to_user.exit100, %copy_to_user.exit100.thread, %if.end41.cleanup52_crit_edge, %sw.bb34.cleanup52_crit_edge, %copy_to_user.exit87, %copy_to_user.exit87.thread, %if.end23.cleanup52_crit_edge, %sw.bb15.cleanup52_crit_edge, %copy_to_user.exit, %copy_to_user.exit.thread, %if.end.cleanup52_crit_edge, %sw.bb5.cleanup52_crit_edge, %hwdep_unlock.exit, %hwdep_lock.exit, %hwdep_get_info.exit, %entry.cleanup52_crit_edge
  %retval.3 = phi i32 [ %err.0.i107, %hwdep_unlock.exit ], [ %err.0.i, %hwdep_lock.exit ], [ %33, %hwdep_get_info.exit ], [ -6, %sw.bb5.cleanup52_crit_edge ], [ -12, %if.end.cleanup52_crit_edge ], [ -6, %sw.bb15.cleanup52_crit_edge ], [ -12, %if.end23.cleanup52_crit_edge ], [ -6, %sw.bb34.cleanup52_crit_edge ], [ -12, %if.end41.cleanup52_crit_edge ], [ -515, %entry.cleanup52_crit_edge ], [ -14, %copy_to_user.exit.thread ], [ -14, %copy_to_user.exit87.thread ], [ -14, %copy_to_user.exit100.thread ], [ %spec.select, %copy_to_user.exit ], [ %spec.select119, %copy_to_user.exit87 ], [ %spec.select120, %copy_to_user.exit100 ]
  ret i32 %retval.3
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_motu_register_dsp_message_parser_copy_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_register_dsp_message_parser_count_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_motu_register_dsp_message_parser_copy_meter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_motu_command_dsp_message_parser_copy_meter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_motu_register_dsp_message_parser_copy_parameter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @snd_motu_create_hwdep_device.ops, !1, !"ops", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu-hwdep.c", i32 275, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/motu/motu-hwdep.c", i32 289, i32 22}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/motu/motu-hwdep.c", i32 78, i32 8}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i8 0, i8 2}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2153242789, i64 2153242814}
!28 = !{i64 5737663}
!29 = !{i64 5737860}
!30 = !{i64 2153223093}
!31 = !{i64 2154537375, i64 2154537655, i64 2154537989, i64 2154538323}
