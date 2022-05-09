; ModuleID = '/llk/IR_all_yes/drivers/net/thunderbolt.c_pt.bc'
source_filename = "../drivers/net/thunderbolt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tb_service_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tb_service_id = type { i32, [9 x i8], i32, i32, i32, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.tb_xdomain = type { %struct.device, ptr, ptr, ptr, i64, i16, i16, i32, i32, %struct.mutex, ptr, ptr, i32, i32, i8, i8, %struct.ida, %struct.ida, %struct.ida, ptr, i32, i32, ptr, i32, %struct.delayed_work, i32, %struct.delayed_work, i32, %struct.delayed_work, i32, i8, i8 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tbnet = type { ptr, ptr, %struct.tb_protocol_handler, ptr, %struct.napi_struct, %struct.tbnet_stats, ptr, %struct.atomic_t, i8, i8, i32, i32, %struct.mutex, i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.thunderbolt_ip_frame_header, %struct.tbnet_ring, %struct.atomic_t, %struct.tbnet_ring }
%struct.tb_protocol_handler = type { ptr, ptr, ptr, %struct.list_head }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.tbnet_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thunderbolt_ip_frame_header = type { i32, i16, i16, i32 }
%struct.tbnet_ring = type { [256 x %struct.tbnet_frame], i32, i32, ptr }
%struct.tbnet_frame = type { ptr, ptr, %struct.ring_frame }
%struct.ring_frame = type { i32, ptr, %struct.list_head, i32 }
%struct.thunderbolt_ip_logout = type { %struct.thunderbolt_ip_header }
%struct.thunderbolt_ip_header = type { i32, i32, i32, %struct.uuid_t, %struct.uuid_t, %struct.uuid_t, i32, i32 }
%struct.thunderbolt_ip_status = type { %struct.thunderbolt_ip_header, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tb_ring = type { %struct.spinlock, ptr, i32, i32, i32, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.work_struct, i8, i32, i8, i32, i32, i16, i16, ptr, ptr }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.146, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.146 = type { ptr }
%struct.thunderbolt_ip_login_response = type { %struct.thunderbolt_ip_header, i32, [2 x i32], i32, [4 x i32] }
%struct.thunderbolt_ip_login = type { %struct.thunderbolt_ip_header, i32, i32, [4 x i32] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.vlan_hdr = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.anon.60 = type { i16, i16 }
%struct.tb_service = type { %struct.device, i32, ptr, i32, i32, i32, i32, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__initcall__kmod_thunderbolt_net__499_1383_tbnet_init6 = internal global ptr @tbnet_init, section ".initcall6.init", align 4
@tbnet_driver = internal global { %struct.tb_service_driver, [36 x i8] } { %struct.tb_service_driver { %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tbnet_pm_ops, ptr null, ptr null }, ptr @tbnet_probe, ptr @tbnet_remove, ptr @tbnet_shutdown, ptr @tbnet_ids }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"network\00", [24 x i8] zeroinitializer }, align 32
@tbnet_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_tbnet_exit = internal global ptr @tbnet_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author500 = internal constant [59 x i8] c"thunderbolt_net.author=Amir Levy <amir.jer.levy@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author501 = internal constant [63 x i8] c"thunderbolt_net.author=Michael Jamet <michael.jamet@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author502 = internal constant [73 x i8] c"thunderbolt_net.author=Mika Westerberg <mika.westerberg@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description503 = internal constant [55 x i8] c"thunderbolt_net.description=Thunderbolt network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file504 = internal constant [49 x i8] c"thunderbolt_net.file=drivers/net/thunderbolt-net\00", section ".modinfo", align 1
@__UNIQUE_ID_license505 = internal constant [31 x i8] c"thunderbolt_net.license=GPL v2\00", section ".modinfo", align 1
@tbnet_dir_uuid = internal constant { %struct.uuid_t, [16 x i8] } { %struct.uuid_t { [16 x i8] c"\C6a\89\CA\1C\CEA\95\BD\B8IY._ZO" }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prtcid\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prtcvers\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prtcrevs\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prtcstns\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thunderbolt-net\00", [16 x i8] zeroinitializer }, align 32
@tbnet_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tbnet_suspend, ptr @tbnet_resume, ptr @tbnet_suspend, ptr @tbnet_resume, ptr @tbnet_suspend, ptr @tbnet_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tbnet_ids = internal constant { [2 x %struct.tb_service_id], [32 x i8] } { [2 x %struct.tb_service_id] [%struct.tb_service_id { i32 3, [9 x i8] c"network\00\00", i32 1, i32 0, i32 0, i32 0 }, %struct.tb_service_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tb_service_type = external dso_local global %struct.device_type, align 4
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to disable DMA paths\0A\00", [35 x i8] zeroinitializer }, align 32
@tbnet_svc_uuid = internal constant { %struct.uuid_t, [16 x i8] } { %struct.uuid_t { [16 x i8] c"y\8FX\9E6\16\8AG\97\C6Vd\A9 \C8\DD" }, [16 x i8] zeroinitializer }, align 32
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@tbnet_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&net->login_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@tbnet_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&net->login_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@tbnet_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&net->connected_work)\00", [56 x i8] zeroinitializer }, align 32
@tbnet_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&net->disconnect_work)\00", [55 x i8] zeroinitializer }, align 32
@tbnet_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&net->connection_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"thunderbolt%d\00", [18 x i8] zeroinitializer }, align 32
@tbnet_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @tbnet_open, ptr @tbnet_stop, ptr @tbnet_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tbnet_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@tb_xdomain_type = external dso_local global %struct.device_type, align 4
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ThunderboltIP login timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to allocate Rx HopID\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable DMA paths\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thunderbolt.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate Tx ring\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to allocate Tx HopID\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate Rx ring\0A\00", [36 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to send ThunderboltIP response\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"tbnet_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1345, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1388, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"tbnet_dir\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 210, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"tbnet_dir_uuid\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 201, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1365, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1366, i32 39 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1367, i32 39 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1372, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1348, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"tbnet_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1335, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"tbnet_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1339, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 387, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"tbnet_svc_uuid\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 206, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1234, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1235, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1236, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1237, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1246, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"tbnet_netdev_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 1194, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 665, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 611, i32 24 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 623, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"../include/linux/thunderbolt.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 618, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 877, i32 19 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 884, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 898, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [29 x i8] c"../drivers/net/thunderbolt.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 465, i32 25 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author500, ptr @__UNIQUE_ID_author501, ptr @__UNIQUE_ID_author502, ptr @__UNIQUE_ID_description503, ptr @__UNIQUE_ID_file504, ptr @__UNIQUE_ID_license505, ptr @__exitcall_tbnet_exit, ptr @__initcall__kmod_thunderbolt_net__499_1383_tbnet_init6, ptr @tbnet_exit, ptr @tbnet_driver, ptr @.str, ptr @tbnet_dir, ptr @tbnet_dir_uuid, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tbnet_pm_ops, ptr @tbnet_ids, ptr @.str.6, ptr @tbnet_svc_uuid, ptr @tbnet_probe.__key, ptr @.str.7, ptr @tbnet_probe.__key.8, ptr @.str.9, ptr @tbnet_probe.__key.10, ptr @.str.11, ptr @tbnet_probe.__key.12, ptr @.str.13, ptr @tbnet_probe.__key.14, ptr @.str.15, ptr @.str.16, ptr @tbnet_netdev_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_dir_uuid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_svc_uuid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tbnet_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tbnet_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tb_property_create_dir(ptr noundef nonnull @tbnet_dir_uuid) #10
  store ptr %call, ptr @tbnet_dir, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @tb_property_add_immediate(ptr noundef nonnull %call, ptr noundef nonnull @.str.1, i32 noundef 1) #10
  %0 = load ptr, ptr @tbnet_dir, align 4
  %call2 = tail call i32 @tb_property_add_immediate(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 1) #10
  %1 = load ptr, ptr @tbnet_dir, align 4
  %call3 = tail call i32 @tb_property_add_immediate(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 1) #10
  %2 = load ptr, ptr @tbnet_dir, align 4
  %call4 = tail call i32 @tb_property_add_immediate(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 6) #10
  %3 = load ptr, ptr @tbnet_dir, align 4
  %call5 = tail call i32 @tb_register_property_dir(ptr noundef nonnull @.str, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = load ptr, ptr @tbnet_dir, align 4
  tail call void @tb_property_free_dir(ptr noundef %4) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @tb_register_service_driver(ptr noundef nonnull @tbnet_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call9, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tbnet_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tb_unregister_service_driver(ptr noundef nonnull @tbnet_driver) #10
  %0 = load ptr, ptr @tbnet_dir, align 4
  tail call void @tb_unregister_property_dir(ptr noundef nonnull @.str, ptr noundef %0) #10
  %1 = load ptr, ptr @tbnet_dir, align 4
  tail call void @tb_property_free_dir(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_unregister_service_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_unregister_property_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_property_free_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_property_create_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_property_add_immediate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_register_property_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_register_service_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbnet_probe(ptr noundef %svc, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %svc, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i.i, align 4
  %call1 = tail call ptr @alloc_etherdev_mqs(i32 noundef 15016, i32 noundef 1, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.i.i = icmp eq ptr %3, @tb_xdomain_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %1, ptr null
  %parent = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %svc, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call1, i32 2304
  %login_work = getelementptr i8, ptr %call1, i32 2756
  tail call void @__init_work(ptr noundef %login_work, i32 noundef 0) #10
  %5 = ptrtoint ptr %login_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %login_work, align 4
  %lockdep_map = getelementptr i8, ptr %call1, i32 2772
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @tbnet_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry12 = getelementptr i8, ptr %call1, i32 2760
  %6 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr i8, ptr %call1, i32 2764
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call1, i32 2768
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tbnet_login_work, ptr %func, align 4
  %timer = getelementptr i8, ptr %call1, i32 2800
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @tbnet_probe.__key.8) #10
  %connected_work = getelementptr i8, ptr %call1, i32 2856
  tail call void @__init_work(ptr noundef %connected_work, i32 noundef 0) #10
  %9 = ptrtoint ptr %connected_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %connected_work, align 8
  %lockdep_map27 = getelementptr i8, ptr %call1, i32 2872
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map27, ptr noundef nonnull @.str.11, ptr noundef nonnull @tbnet_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry29 = getelementptr i8, ptr %call1, i32 2860
  %10 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i118 = getelementptr i8, ptr %call1, i32 2864
  %11 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry29, ptr %prev.i118, align 4
  %func31 = getelementptr i8, ptr %call1, i32 2868
  %12 = ptrtoint ptr %func31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tbnet_connected_work, ptr %func31, align 4
  %disconnect_work = getelementptr i8, ptr %call1, i32 2900
  tail call void @__init_work(ptr noundef %disconnect_work, i32 noundef 0) #10
  %13 = ptrtoint ptr %disconnect_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %disconnect_work, align 4
  %lockdep_map40 = getelementptr i8, ptr %call1, i32 2916
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map40, ptr noundef nonnull @.str.13, ptr noundef nonnull @tbnet_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry42 = getelementptr i8, ptr %call1, i32 2904
  %14 = ptrtoint ptr %entry42 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry42, ptr %entry42, align 4
  %prev.i119 = getelementptr i8, ptr %call1, i32 2908
  %15 = ptrtoint ptr %prev.i119 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry42, ptr %prev.i119, align 4
  %func44 = getelementptr i8, ptr %call1, i32 2912
  %16 = ptrtoint ptr %func44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tbnet_disconnect_work, ptr %func44, align 4
  %connection_lock = getelementptr i8, ptr %call1, i32 2660
  tail call void @__mutex_init(ptr noundef %connection_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @tbnet_probe.__key.14) #10
  %command_id = getelementptr i8, ptr %call1, i32 2644
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %command_id, i32 noundef 4) #10
  %17 = ptrtoint ptr %command_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %command_id, align 4
  %frame_id = getelementptr i8, ptr %call1, i32 10136
  %call.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_id, i32 noundef 4) #10
  %18 = ptrtoint ptr %frame_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %frame_id, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %svc, ptr %add.ptr.i, align 8
  %dev51 = getelementptr i8, ptr %call1, i32 2332
  %20 = ptrtoint ptr %dev51 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1, ptr %dev51, align 4
  %xd52 = getelementptr i8, ptr %call1, i32 2308
  %21 = ptrtoint ptr %xd52 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev..i.i, ptr %xd52, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #10
  %22 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %23 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %route.i = getelementptr inbounds %struct.tb_xdomain, ptr %dev..i.i, i32 0, i32 4
  %24 = ptrtoint ptr %route.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %route.i, align 8
  %26 = trunc i64 %25 to i8
  %sub.i.i = shl i8 %26, 3
  %27 = add i8 %sub.i.i, -8
  %28 = and i8 %27, -16
  %conv5.i = or i8 %28, 2
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv5.i, ptr %addr.i, align 1
  %local_uuid.i = getelementptr inbounds %struct.tb_xdomain, ptr %dev..i.i, i32 0, i32 3
  %30 = ptrtoint ptr %local_uuid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %local_uuid.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %31, i32 1
  %34 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx3.i.i, align 4
  %add4.i.i = add i32 %35, -559038721
  %arrayidx5.i.i = getelementptr i32, ptr %31, i32 2
  %36 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5.i.i, align 4
  %add6.i.i = add i32 %37, -559038721
  %38 = sub i32 %33, %37
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i.i, i32 %add6.i.i, i32 4) #10
  %xor.i.i = xor i32 %or.i.i.i, %38
  %add7.i.i = add i32 %add6.i.i, %add4.i.i
  %sub8.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #10
  %xor10.i.i = xor i32 %sub8.i.i, %or.i1.i.i
  %add11.i.i = add i32 %xor.i.i, %add7.i.i
  %sub12.i.i = sub i32 %add7.i.i, %xor10.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i.i, i32 %xor10.i.i, i32 8) #10
  %xor14.i.i = xor i32 %sub12.i.i, %or.i2.i.i
  %add15.i.i = add i32 %xor10.i.i, %add11.i.i
  %sub16.i.i = sub i32 %add11.i.i, %xor14.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i.i, i32 %xor14.i.i, i32 16) #10
  %xor18.i.i = xor i32 %sub16.i.i, %or.i3.i.i
  %add19.i.i = add i32 %xor14.i.i, %add15.i.i
  %sub20.i.i = sub i32 %add15.i.i, %xor18.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i.i, i32 %xor18.i.i, i32 19) #10
  %xor22.i.i = xor i32 %sub20.i.i, %or.i4.i.i
  %add23.i.i = add i32 %xor18.i.i, %add19.i.i
  %sub24.i.i = sub i32 %add19.i.i, %xor22.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i.i, i32 %xor22.i.i, i32 4) #10
  %xor26.i.i = xor i32 %sub24.i.i, %or.i5.i.i
  %add27.i.i = add i32 %xor22.i.i, %add23.i.i
  %add.ptr.i18.i = getelementptr i32, ptr %31, i32 3
  %39 = ptrtoint ptr %add.ptr.i18.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i18.i, align 4
  %add36.i.i = add i32 %add23.i.i, %40
  %xor37.i.i = xor i32 %xor26.i.i, %add27.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %add27.i.i, i32 %add27.i.i, i32 14) #10
  %sub39.i.i = sub i32 %xor37.i.i, %or.i6.i.i
  %xor40.i.i = xor i32 %sub39.i.i, %add36.i.i
  %or.i7.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i, i32 %sub39.i.i, i32 11) #10
  %sub42.i.i = sub i32 %xor40.i.i, %or.i7.i.i
  %xor43.i.i = xor i32 %sub42.i.i, %add27.i.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i, i32 %sub42.i.i, i32 25) #10
  %sub45.i.i = sub i32 %xor43.i.i, %or.i8.i.i
  %xor46.i.i = xor i32 %sub45.i.i, %sub39.i.i
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i, i32 %sub45.i.i, i32 16) #10
  %sub48.i.i = sub i32 %xor46.i.i, %or.i9.i.i
  %xor49.i.i = xor i32 %sub48.i.i, %sub42.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i, i32 %sub48.i.i, i32 4) #10
  %sub51.i.i = sub i32 %xor49.i.i, %or.i10.i.i
  %xor52.i.i = xor i32 %sub51.i.i, %sub45.i.i
  %or.i11.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i, i32 %sub51.i.i, i32 14) #10
  %sub54.i.i = sub i32 %xor52.i.i, %or.i11.i.i
  %xor55.i.i = xor i32 %sub54.i.i, %sub48.i.i
  %or.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i, i32 %sub54.i.i, i32 24) #10
  %sub57.i.i = sub i32 %xor55.i.i, %or.i12.i.i
  %41 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %sub57.i.i, ptr %22, align 1
  %add1.i.i = add i32 %sub57.i.i, -559038721
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %31, align 4
  %add2.i19.i = add i32 %add1.i.i, %43
  %44 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx3.i.i, align 4
  %add4.i21.i = add i32 %add1.i.i, %45
  %46 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx5.i.i, align 4
  %add6.i23.i = add i32 %add1.i.i, %47
  %sub.i24.i = sub i32 %add2.i19.i, %add6.i23.i
  %or.i.i25.i = tail call i32 @llvm.fshl.i32(i32 %add6.i23.i, i32 %add6.i23.i, i32 4) #10
  %xor.i26.i = xor i32 %sub.i24.i, %or.i.i25.i
  %add7.i27.i = add i32 %add6.i23.i, %add4.i21.i
  %sub8.i28.i = sub i32 %add4.i21.i, %xor.i26.i
  %or.i1.i29.i = tail call i32 @llvm.fshl.i32(i32 %xor.i26.i, i32 %xor.i26.i, i32 6) #10
  %xor10.i30.i = xor i32 %sub8.i28.i, %or.i1.i29.i
  %add11.i31.i = add i32 %xor.i26.i, %add7.i27.i
  %sub12.i32.i = sub i32 %add7.i27.i, %xor10.i30.i
  %or.i2.i33.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i30.i, i32 %xor10.i30.i, i32 8) #10
  %xor14.i34.i = xor i32 %sub12.i32.i, %or.i2.i33.i
  %add15.i35.i = add i32 %xor10.i30.i, %add11.i31.i
  %sub16.i36.i = sub i32 %add11.i31.i, %xor14.i34.i
  %or.i3.i37.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i34.i, i32 %xor14.i34.i, i32 16) #10
  %xor18.i38.i = xor i32 %sub16.i36.i, %or.i3.i37.i
  %add19.i39.i = add i32 %xor14.i34.i, %add15.i35.i
  %sub20.i40.i = sub i32 %add15.i35.i, %xor18.i38.i
  %or.i4.i41.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i38.i, i32 %xor18.i38.i, i32 19) #10
  %xor22.i42.i = xor i32 %sub20.i40.i, %or.i4.i41.i
  %add23.i43.i = add i32 %xor18.i38.i, %add19.i39.i
  %sub24.i44.i = sub i32 %add19.i39.i, %xor22.i42.i
  %or.i5.i45.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i42.i, i32 %xor22.i42.i, i32 4) #10
  %xor26.i46.i = xor i32 %sub24.i44.i, %or.i5.i45.i
  %add27.i47.i = add i32 %xor22.i42.i, %add23.i43.i
  %48 = ptrtoint ptr %add.ptr.i18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i18.i, align 4
  %add36.i49.i = add i32 %add23.i43.i, %49
  %xor37.i50.i = xor i32 %xor26.i46.i, %add27.i47.i
  %or.i6.i51.i = tail call i32 @llvm.fshl.i32(i32 %add27.i47.i, i32 %add27.i47.i, i32 14) #10
  %sub39.i52.i = sub i32 %xor37.i50.i, %or.i6.i51.i
  %xor40.i53.i = xor i32 %sub39.i52.i, %add36.i49.i
  %or.i7.i54.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i52.i, i32 %sub39.i52.i, i32 11) #10
  %sub42.i55.i = sub i32 %xor40.i53.i, %or.i7.i54.i
  %xor43.i56.i = xor i32 %sub42.i55.i, %add27.i47.i
  %or.i8.i57.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i55.i, i32 %sub42.i55.i, i32 25) #10
  %sub45.i58.i = sub i32 %xor43.i56.i, %or.i8.i57.i
  %xor46.i59.i = xor i32 %sub45.i58.i, %sub39.i52.i
  %or.i9.i60.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i58.i, i32 %sub45.i58.i, i32 16) #10
  %sub48.i61.i = sub i32 %xor46.i59.i, %or.i9.i60.i
  %xor49.i62.i = xor i32 %sub48.i61.i, %sub42.i55.i
  %or.i10.i63.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i61.i, i32 %sub48.i61.i, i32 4) #10
  %sub51.i64.i = sub i32 %xor49.i62.i, %or.i10.i63.i
  %xor52.i65.i = xor i32 %sub51.i64.i, %sub45.i58.i
  %or.i11.i66.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i64.i, i32 %sub51.i64.i, i32 14) #10
  %sub54.i67.i = sub i32 %xor52.i65.i, %or.i11.i66.i
  %xor55.i68.i = xor i32 %sub54.i67.i, %sub48.i61.i
  %or.i12.i69.i = lshr i32 %sub54.i67.i, 8
  %sub57.i70.i = sub i32 %xor55.i68.i, %or.i12.i69.i
  %conv10.i = trunc i32 %sub57.i70.i to i8
  %50 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv10.i, ptr %23, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call1, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #10
  %51 = call ptr @memcpy(ptr %call1, ptr @.str.16, i32 14)
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 16
  %52 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @tbnet_netdev_ops, ptr %netdev_ops, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 24
  %53 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1916947, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 23
  %54 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 1916979, ptr %features, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 19
  %55 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %56, 12
  store i16 %add, ptr %hard_header_len, align 2
  %napi = getelementptr i8, ptr %call1, i32 2336
  call void @netif_napi_add(ptr noundef nonnull %call1, ptr noundef %napi, ptr noundef nonnull @tbnet_poll, i32 noundef 64) #10
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 30
  %57 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 31
  %58 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 65522, ptr %max_mtu, align 4
  %handler = getelementptr i8, ptr %call1, i32 2312
  %59 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @tbnet_svc_uuid, ptr %handler, align 8
  %callback = getelementptr i8, ptr %call1, i32 2316
  %60 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @tbnet_handle_packet, ptr %callback, align 4
  %data58 = getelementptr i8, ptr %call1, i32 2320
  %61 = ptrtoint ptr %data58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr.i, ptr %data58, align 8
  %call60 = call i32 @tb_register_protocol_handler(ptr noundef %handler) #10
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %svc, i32 0, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %call61 = call i32 @register_netdev(ptr noundef nonnull %call1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end.cleanup_crit_edge, label %if.then63

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then63:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @tb_unregister_protocol_handler(ptr noundef %handler) #10
  call void @free_netdev(ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61, %if.then63 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tbnet_remove(ptr nocapture noundef readonly %svc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %svc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.tbnet, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %3) #10
  %handler = getelementptr inbounds %struct.tbnet, ptr %1, i32 0, i32 2
  tail call void @tb_unregister_protocol_handler(ptr noundef %handler) #10
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void @free_netdev(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tbnet_shutdown(ptr nocapture noundef readonly %svc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %svc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @tbnet_tear_down(ptr noundef %1, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbnet_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @tb_service_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev..i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %login_work.i = getelementptr inbounds %struct.tbnet, ptr %3, i32 0, i32 14
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %login_work.i) #10
  %connected_work.i = getelementptr inbounds %struct.tbnet, ptr %3, i32 0, i32 15
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %connected_work.i) #10
  %dev2 = getelementptr inbounds %struct.tbnet, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_device_detach(ptr noundef %5) #10
  tail call fastcc void @tbnet_tear_down(ptr noundef %3, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %handler = getelementptr inbounds %struct.tbnet, ptr %3, i32 0, i32 2
  tail call void @tb_unregister_protocol_handler(ptr noundef %handler) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbnet_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @tb_service_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev..i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %handler = getelementptr inbounds %struct.tbnet, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @tb_register_protocol_handler(ptr noundef %handler) #10
  %dev3 = getelementptr inbounds %struct.tbnet, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  tail call void @netif_carrier_off(ptr noundef %5) #10
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_device_attach(ptr noundef %7) #10
  %connection_lock.i = getelementptr inbounds %struct.tbnet, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %connection_lock.i, i32 noundef 0) #10
  %login_sent.i = getelementptr inbounds %struct.tbnet, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %login_sent.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %login_sent.i, align 8
  %login_received.i = getelementptr inbounds %struct.tbnet, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %login_received.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %login_received.i, align 1
  tail call void @mutex_unlock(ptr noundef %connection_lock.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %12 = load ptr, ptr @system_long_wq, align 4
  %login_work.i = getelementptr inbounds %struct.tbnet, ptr %3, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %login_work.i, i32 noundef 100) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tbnet_tear_down(ptr noundef %net, i1 noundef zeroext %send_logout) unnamed_addr #3 align 64 {
entry:
  %request.i = alloca %struct.thunderbolt_ip_logout, align 4
  %reply.i = alloca %struct.thunderbolt_ip_status, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @netif_carrier_off(ptr noundef %1) #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %login_work.i = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 14
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %login_work.i) #10
  %connected_work.i = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 15
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %connected_work.i) #10
  %connection_lock = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %connection_lock, i32 noundef 0) #10
  %login_sent = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 8
  %6 = ptrtoint ptr %login_sent to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %login_sent, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %land.lhs.true

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %login_received = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 9
  %8 = ptrtoint ptr %login_received to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %login_received, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end22_crit_edge, label %while.cond.preheader

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

while.cond.preheader:                             ; preds = %land.lhs.true
  %xd1.i = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 1
  %command_id.i = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 7
  %route_lo.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 1
  %length_sn5.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 2
  %uuid.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 3
  %initiator_uuid6.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 4
  %target_uuid7.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 5
  %type8.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 6
  %command_id9.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 7
  br i1 %send_logout, label %while.cond.preheader.while.cond_crit_edge, label %while.cond.preheader.while.end.split_crit_edge

while.cond.preheader.while.end.split_crit_edge:   ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.split

while.cond.preheader.while.cond_crit_edge:        ; preds = %while.cond.preheader
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader.while.cond_crit_edge
  %retries.0 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ 10, %while.cond.preheader.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %cmp.not = icmp eq i32 %retries.0, 0
  br i1 %cmp.not, label %while.cond.while.end.split_crit_edge, label %while.body

while.cond.while.end.split_crit_edge:             ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.split

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %retries.0, -1
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %request.i) #10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %reply.i) #10
  %10 = call ptr @memset(ptr %reply.i, i32 255, i32 72)
  %11 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xd1.i, align 4
  %route.i = getelementptr inbounds %struct.tb_xdomain, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %route.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %route.i, align 8
  %local_uuid.i = getelementptr inbounds %struct.tb_xdomain, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %local_uuid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %local_uuid.i, align 8
  %remote_uuid.i = getelementptr inbounds %struct.tb_xdomain, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %remote_uuid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remote_uuid.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %command_id.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  call void @llvm.prefetch.p0(ptr %command_id.i, i32 1, i32 3, i32 1) #10
  %19 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %command_id.i, ptr %command_id.i, i32 1, ptr elementtype(i32) %command_id.i) #10, !srcloc !89
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %shr.i.i = lshr i64 %14, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %20 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv2.i.i, ptr %request.i, align 4
  %conv4.i.i = trunc i64 %14 to i32
  %21 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv4.i.i, ptr %route_lo.i.i, align 4
  %22 = ptrtoint ptr %length_sn5.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 14, ptr %length_sn5.i.i, align 4
  %23 = call ptr @memcpy(ptr %uuid.i.i, ptr @tbnet_svc_uuid, i32 16)
  %24 = call ptr @memcpy(ptr %initiator_uuid6.i.i, ptr %16, i32 16)
  %25 = call ptr @memcpy(ptr %target_uuid7.i.i, ptr %18, i32 16)
  %26 = ptrtoint ptr %type8.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %type8.i.i, align 4
  %27 = ptrtoint ptr %command_id9.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %asmresult.i.i.i.i.i, ptr %command_id9.i.i, align 4
  %call2.i = call i32 @tb_xdomain_request(ptr noundef %12, ptr noundef nonnull %request.i, i32 noundef 68, i32 noundef 7, ptr noundef nonnull %reply.i, i32 noundef 72, i32 noundef 7, i32 noundef 1000) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %reply.i) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %request.i) #10
  %cmp4.not = icmp eq i32 %call2.i, -110
  br i1 %cmp4.not, label %while.body.while.cond_crit_edge, label %while.body.while.end.split_crit_edge

while.body.while.end.split_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.split

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end.split:                                  ; preds = %while.body.while.end.split_crit_edge, %while.cond.while.end.split_crit_edge, %while.cond.preheader.while.end.split_crit_edge
  %rx_ring = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 18
  %ring = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 18, i32 3
  %28 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring, align 4
  call void @tb_ring_stop(ptr noundef %29) #10
  %ring6 = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 20, i32 3
  %30 = ptrtoint ptr %ring6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring6, align 4
  call void @tb_ring_stop(ptr noundef %31) #10
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %while.end.split
  %i.030.i = phi i32 [ 0, %while.end.split ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring, align 4
  %nhi.i.i = getelementptr inbounds %struct.tb_ring, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %nhi.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nhi.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.tb_nhi, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %page.i = getelementptr [256 x %struct.tbnet_frame], ptr %rx_ring, i32 0, i32 %i.030.i, i32 1
  %38 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %page.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %is_tx.i = getelementptr inbounds %struct.tb_ring, ptr %33, i32 0, i32 11
  %40 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i = load i8, ptr %is_tx.i, align 4
  %41 = xor i8 %bf.load.i, -1
  %42 = lshr i8 %41, 7
  %.not.i = zext i8 %42 to i32
  %frame.i = getelementptr [256 x %struct.tbnet_frame], ptr %rx_ring, i32 0, i32 %i.030.i, i32 2
  %43 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frame.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool7.not.i = icmp eq i32 %44, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then8.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  %.29.i = select i1 %bf.cast.not.i, i32 8192, i32 4096
  %..i = select i1 %bf.cast.not.i, i32 2, i32 1
  call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %44, i32 noundef %.29.i, i32 noundef %..i, i32 noundef 0) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i.if.end11.i_crit_edge
  %45 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %page.i, align 4
  call void @__free_pages(ptr noundef %46, i32 noundef %.not.i) #10
  %47 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %page.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end11.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %tbnet_free_buffers.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

tbnet_free_buffers.exit:                          ; preds = %cleanup.i
  %tx_ring = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 20
  %cons.i = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %cons.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %cons.i, align 4
  %prod.i = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 18, i32 2
  %49 = ptrtoint ptr %prod.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %prod.i, align 4
  br label %for.body.i57

for.body.i57:                                     ; preds = %cleanup.i71.for.body.i57_crit_edge, %tbnet_free_buffers.exit
  %i.030.i51 = phi i32 [ 0, %tbnet_free_buffers.exit ], [ %inc.i69, %cleanup.i71.for.body.i57_crit_edge ]
  %50 = ptrtoint ptr %ring6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ring6, align 4
  %nhi.i.i52 = getelementptr inbounds %struct.tb_ring, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %nhi.i.i52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nhi.i.i52, align 4
  %pdev.i.i53 = getelementptr inbounds %struct.tb_nhi, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %pdev.i.i53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev.i.i53, align 4
  %dev.i.i54 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %page.i55 = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring, i32 0, i32 %i.030.i51, i32 1
  %56 = ptrtoint ptr %page.i55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %page.i55, align 4
  %tobool.not.i56 = icmp eq ptr %57, null
  br i1 %tobool.not.i56, label %for.body.i57.cleanup.i71_crit_edge, label %if.end.i63

for.body.i57.cleanup.i71_crit_edge:               ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i71

if.end.i63:                                       ; preds = %for.body.i57
  %is_tx.i58 = getelementptr inbounds %struct.tb_ring, ptr %51, i32 0, i32 11
  %58 = ptrtoint ptr %is_tx.i58 to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i59 = load i8, ptr %is_tx.i58, align 4
  %59 = xor i8 %bf.load.i59, -1
  %60 = lshr i8 %59, 7
  %.not.i60 = zext i8 %60 to i32
  %frame.i61 = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring, i32 0, i32 %i.030.i51, i32 2
  %61 = ptrtoint ptr %frame.i61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %frame.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool7.not.i62 = icmp eq i32 %62, 0
  br i1 %tobool7.not.i62, label %if.end.i63.if.end11.i68_crit_edge, label %if.then8.i67

if.end.i63.if.end11.i68_crit_edge:                ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i68

if.then8.i67:                                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i59)
  %bf.cast.not.i64 = icmp sgt i8 %bf.load.i59, -1
  %.29.i65 = select i1 %bf.cast.not.i64, i32 8192, i32 4096
  %..i66 = select i1 %bf.cast.not.i64, i32 2, i32 1
  call void @dma_unmap_page_attrs(ptr noundef %dev.i.i54, i32 noundef %62, i32 noundef %.29.i65, i32 noundef %..i66, i32 noundef 0) #10
  br label %if.end11.i68

if.end11.i68:                                     ; preds = %if.then8.i67, %if.end.i63.if.end11.i68_crit_edge
  %63 = ptrtoint ptr %page.i55 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %page.i55, align 4
  call void @__free_pages(ptr noundef %64, i32 noundef %.not.i60) #10
  %65 = ptrtoint ptr %page.i55 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %page.i55, align 4
  br label %cleanup.i71

cleanup.i71:                                      ; preds = %if.end11.i68, %for.body.i57.cleanup.i71_crit_edge
  %inc.i69 = add nuw nsw i32 %i.030.i51, 1
  %exitcond.not.i70 = icmp eq i32 %inc.i69, 256
  br i1 %exitcond.not.i70, label %tbnet_free_buffers.exit74, label %cleanup.i71.for.body.i57_crit_edge

cleanup.i71.for.body.i57_crit_edge:               ; preds = %cleanup.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i57

tbnet_free_buffers.exit74:                        ; preds = %cleanup.i71
  %cons.i72 = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 20, i32 1
  %66 = ptrtoint ptr %cons.i72 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %cons.i72, align 4
  %prod.i73 = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 20, i32 2
  %67 = ptrtoint ptr %prod.i73 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %prod.i73, align 4
  %68 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xd1.i, align 4
  %local_transmit_path = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 10
  %70 = ptrtoint ptr %local_transmit_path to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %local_transmit_path, align 4
  %72 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ring, align 4
  %hop = getelementptr inbounds %struct.tb_ring, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %hop to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hop, align 4
  %remote_transmit_path = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 11
  %76 = ptrtoint ptr %remote_transmit_path to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %remote_transmit_path, align 8
  %78 = ptrtoint ptr %ring6 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ring6, align 4
  %hop13 = getelementptr inbounds %struct.tb_ring, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %hop13 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hop13, align 4
  %call14 = call i32 @tb_xdomain_disable_paths(ptr noundef %69, i32 noundef %71, i32 noundef %75, i32 noundef %77, i32 noundef %81) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %tbnet_free_buffers.exit74.if.end18_crit_edge, label %if.then16

tbnet_free_buffers.exit74.if.end18_crit_edge:     ; preds = %tbnet_free_buffers.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %tbnet_free_buffers.exit74
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %83, ptr noundef nonnull @.str.6) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %tbnet_free_buffers.exit74.if.end18_crit_edge
  %84 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %xd1.i, align 4
  %86 = ptrtoint ptr %remote_transmit_path to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %remote_transmit_path, align 8
  call void @tb_xdomain_release_in_hopid(ptr noundef %85, i32 noundef %87) #10
  %88 = ptrtoint ptr %remote_transmit_path to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %remote_transmit_path, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %login_retries = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 13
  %89 = ptrtoint ptr %login_retries to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %login_retries, align 8
  %90 = ptrtoint ptr %login_sent to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %login_sent, align 8
  %login_received24 = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 9
  %91 = ptrtoint ptr %login_received24 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %login_received24, align 1
  call void @mutex_unlock(ptr noundef %connection_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_unregister_protocol_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ring_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_disable_paths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_xdomain_release_in_hopid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_register_protocol_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tbnet_login_work(ptr noundef %work) #3 align 64 {
entry:
  %reply.i = alloca %struct.thunderbolt_ip_login_response, align 4
  %request.i = alloca %struct.thunderbolt_ip_login, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -424
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %login_retries = getelementptr i8, ptr %work, i32 -4
  %5 = ptrtoint ptr %login_retries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %login_retries, align 8
  %rem = srem i32 %6, 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %reply.i) #10
  %7 = call ptr @memset(ptr %reply.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %request.i) #10
  %xd1.i = getelementptr i8, ptr %work, i32 -448
  %8 = ptrtoint ptr %xd1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xd1.i, align 4
  %10 = getelementptr inbounds i8, ptr %request.i, i32 76
  %11 = call ptr @memset(ptr %10, i32 0, i32 16)
  %route.i = getelementptr inbounds %struct.tb_xdomain, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %route.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %route.i, align 8
  %local_uuid.i = getelementptr inbounds %struct.tb_xdomain, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %local_uuid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %local_uuid.i, align 8
  %remote_uuid.i = getelementptr inbounds %struct.tb_xdomain, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %remote_uuid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remote_uuid.i, align 4
  %command_id.i = getelementptr i8, ptr %work, i32 -112
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %command_id.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %command_id.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %command_id.i, ptr %command_id.i, i32 1, ptr elementtype(i32) %command_id.i) #10, !srcloc !89
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %shl.i.i = shl nsw i32 %rem, 27
  %and.i.i = and i32 %shl.i.i, 402653184
  %or.i.i = or i32 %and.i.i, 20
  %shr.i.i = lshr i64 %13, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %19 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv2.i.i, ptr %request.i, align 4
  %conv4.i.i = trunc i64 %13 to i32
  %route_lo.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 1
  %20 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv4.i.i, ptr %route_lo.i.i, align 4
  %length_sn5.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 2
  %21 = ptrtoint ptr %length_sn5.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i.i, ptr %length_sn5.i.i, align 4
  %uuid.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %uuid.i.i, ptr @tbnet_svc_uuid, i32 16)
  %initiator_uuid6.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 4
  %23 = call ptr @memcpy(ptr %initiator_uuid6.i.i, ptr %15, i32 16)
  %target_uuid7.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 5
  %24 = call ptr @memcpy(ptr %target_uuid7.i.i, ptr %17, i32 16)
  %type8.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 6
  %25 = ptrtoint ptr %type8.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type8.i.i, align 4
  %command_id9.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %request.i, i32 0, i32 7
  %26 = ptrtoint ptr %command_id9.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %asmresult.i.i.i.i.i, ptr %command_id9.i.i, align 4
  %proto_version.i = getelementptr inbounds %struct.thunderbolt_ip_login, ptr %request.i, i32 0, i32 1
  %27 = ptrtoint ptr %proto_version.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %proto_version.i, align 4
  %local_transmit_path.i = getelementptr i8, ptr %work, i32 -104
  %28 = ptrtoint ptr %local_transmit_path.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %local_transmit_path.i, align 4
  %transmit_path.i = getelementptr inbounds %struct.thunderbolt_ip_login, ptr %request.i, i32 0, i32 2
  %30 = ptrtoint ptr %transmit_path.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %transmit_path.i, align 4
  %call2.i = call i32 @tb_xdomain_request(ptr noundef %9, ptr noundef nonnull %request.i, i32 noundef 92, i32 noundef 7, ptr noundef nonnull %reply.i, i32 noundef 100, i32 noundef 7, i32 noundef 500) #10
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %request.i) #10
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %reply.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.else10, label %if.then3

if.then3:                                         ; preds = %if.end
  %31 = ptrtoint ptr %login_retries to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %login_retries, align 8
  %inc = add i32 %32, 1
  store i32 %inc, ptr %login_retries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %32)
  %cmp = icmp slt i32 %32, 60
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %33 = load ptr, ptr @system_long_wq, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %work, i32 noundef 450) #10
  br label %cleanup

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %35, ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %login_retries to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %login_retries, align 8
  %connection_lock = getelementptr i8, ptr %work, i32 -96
  call void @mutex_lock_nested(ptr noundef %connection_lock, i32 noundef 0) #10
  %login_sent = getelementptr i8, ptr %work, i32 -108
  %37 = ptrtoint ptr %login_sent to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %login_sent, align 8
  call void @mutex_unlock(ptr noundef %connection_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %38 = load ptr, ptr @system_long_wq, align 4
  %connected_work = getelementptr i8, ptr %work, i32 100
  %call.i27 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %connected_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else10, %if.else, %if.then6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tbnet_connected_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -552
  %dev = getelementptr i8, ptr %work, i32 -524
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %connection_lock = getelementptr i8, ptr %work, i32 -196
  tail call void @mutex_lock_nested(ptr noundef %connection_lock, i32 noundef 0) #10
  %login_sent = getelementptr i8, ptr %work, i32 -208
  %5 = ptrtoint ptr %login_sent to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %login_sent, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then4.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %login_received = getelementptr i8, ptr %work, i32 -207
  %7 = ptrtoint ptr %login_received to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %login_received, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  tail call void @mutex_unlock(ptr noundef %connection_lock) #10
  br i1 %tobool1.not, label %land.rhs.cleanup_crit_edge, label %if.end5

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %connection_lock) #10
  br label %cleanup

if.end5:                                          ; preds = %land.rhs
  %xd = getelementptr i8, ptr %work, i32 -548
  %9 = ptrtoint ptr %xd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xd, align 4
  %remote_transmit_path = getelementptr i8, ptr %work, i32 -200
  %11 = ptrtoint ptr %remote_transmit_path to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %remote_transmit_path, align 8
  %call6 = tail call i32 @tb_xdomain_alloc_in_hopid(ptr noundef %10, i32 noundef %12) #10
  %13 = ptrtoint ptr %remote_transmit_path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %remote_transmit_path, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %14)
  %cmp.not = icmp eq i32 %call6, %14
  br i1 %cmp.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %17 = ptrtoint ptr %xd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xd, align 4
  %local_transmit_path = getelementptr i8, ptr %work, i32 -204
  %19 = ptrtoint ptr %local_transmit_path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %local_transmit_path, align 4
  %rx_ring = getelementptr i8, ptr %work, i32 100
  %ring = getelementptr i8, ptr %work, i32 7276
  %21 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring, align 4
  %hop = getelementptr inbounds %struct.tb_ring, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %hop to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hop, align 4
  %ring13 = getelementptr i8, ptr %work, i32 14460
  %25 = ptrtoint ptr %ring13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring13, align 4
  %hop14 = getelementptr inbounds %struct.tb_ring, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %hop14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hop14, align 4
  %call15 = tail call i32 @tb_xdomain_enable_paths(ptr noundef %18, i32 noundef %20, i32 noundef %24, i32 noundef %call6, i32 noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.19) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %31 = ptrtoint ptr %ring13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ring13, align 4
  tail call void @tb_ring_start(ptr noundef %32) #10
  %33 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ring, align 4
  tail call void @tb_ring_start(ptr noundef %34) #10
  %call24 = tail call fastcc i32 @tbnet_alloc_rx_buffers(ptr noundef %add.ptr, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end19.err_stop_rings_crit_edge

if.end19.err_stop_rings_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_stop_rings

if.end27:                                         ; preds = %if.end19
  %tx_ring.i = getelementptr i8, ptr %work, i32 7284
  %35 = ptrtoint ptr %ring13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ring13, align 4
  %nhi.i.i = getelementptr inbounds %struct.tb_ring, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %nhi.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nhi.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.tb_nhi, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %if.end27
  %i.069.i = phi i32 [ 0, %if.end27 ], [ %inc.i, %if.end11.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring.i, i32 0, i32 %i.069.i
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %page.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring.i, i32 0, i32 %i.069.i, i32 1
  %41 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call38.i.i.i.i, ptr %page.i, align 4
  %tobool.not.i71 = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i71, label %for.body.i.for.body.i.i_crit_edge, label %if.end.i

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.030.i.i = phi i32 [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %ring13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ring13, align 4
  %nhi.i.i.i = getelementptr inbounds %struct.tb_ring, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %nhi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nhi.i.i.i, align 4
  %pdev.i.i.i = getelementptr inbounds %struct.tb_nhi, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %page.i.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring.i, i32 0, i32 %i.030.i.i, i32 1
  %48 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %page.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %is_tx.i.i = getelementptr inbounds %struct.tb_ring, ptr %43, i32 0, i32 11
  %50 = ptrtoint ptr %is_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i.i = load i8, ptr %is_tx.i.i, align 4
  %51 = xor i8 %bf.load.i.i, -1
  %52 = lshr i8 %51, 7
  %.not.i.i = zext i8 %52 to i32
  %frame.i.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring.i, i32 0, i32 %i.030.i.i, i32 2
  %53 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frame.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool7.not.i.i = icmp eq i32 %54, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %.29.i.i = select i1 %bf.cast.not.i.i, i32 8192, i32 4096
  %..i.i = select i1 %bf.cast.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i.i, i32 noundef %54, i32 noundef %.29.i.i, i32 noundef %..i.i, i32 noundef 0) #10
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then8.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %55 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %page.i.i, align 4
  tail call void @__free_pages(ptr noundef %56, i32 noundef %.not.i.i) #10
  %57 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %page.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end11.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.030.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %cleanup.i.i.err_free_rx_buffers_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

cleanup.i.i.err_free_rx_buffers_crit_edge:        ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_rx_buffers

if.end.i:                                         ; preds = %for.body.i
  %call5.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef %call5.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i)
  %cmp.i.not.i = icmp eq i32 %call5.i, -1
  br i1 %cmp.i.not.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  %58 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %page.i, align 4
  tail call void @__free_pages(ptr noundef %59, i32 noundef 0) #10
  %60 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %page.i, align 4
  br label %for.body.i50.i

for.body.i50.i:                                   ; preds = %cleanup.i64.i.for.body.i50.i_crit_edge, %if.then8.i
  %i.030.i44.i = phi i32 [ 0, %if.then8.i ], [ %inc.i62.i, %cleanup.i64.i.for.body.i50.i_crit_edge ]
  %61 = ptrtoint ptr %ring13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring13, align 4
  %nhi.i.i45.i = getelementptr inbounds %struct.tb_ring, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %nhi.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nhi.i.i45.i, align 4
  %pdev.i.i46.i = getelementptr inbounds %struct.tb_nhi, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %pdev.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev.i.i46.i, align 4
  %dev.i.i47.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %page.i48.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring.i, i32 0, i32 %i.030.i44.i, i32 1
  %67 = ptrtoint ptr %page.i48.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %page.i48.i, align 4
  %tobool.not.i49.i = icmp eq ptr %68, null
  br i1 %tobool.not.i49.i, label %for.body.i50.i.cleanup.i64.i_crit_edge, label %if.end.i56.i

for.body.i50.i.cleanup.i64.i_crit_edge:           ; preds = %for.body.i50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i64.i

if.end.i56.i:                                     ; preds = %for.body.i50.i
  %is_tx.i51.i = getelementptr inbounds %struct.tb_ring, ptr %62, i32 0, i32 11
  %69 = ptrtoint ptr %is_tx.i51.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load.i52.i = load i8, ptr %is_tx.i51.i, align 4
  %70 = xor i8 %bf.load.i52.i, -1
  %71 = lshr i8 %70, 7
  %.not.i53.i = zext i8 %71 to i32
  %frame.i54.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring.i, i32 0, i32 %i.030.i44.i, i32 2
  %72 = ptrtoint ptr %frame.i54.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %frame.i54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool7.not.i55.i = icmp eq i32 %73, 0
  br i1 %tobool7.not.i55.i, label %if.end.i56.i.if.end11.i61.i_crit_edge, label %if.then8.i60.i

if.end.i56.i.if.end11.i61.i_crit_edge:            ; preds = %if.end.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i61.i

if.then8.i60.i:                                   ; preds = %if.end.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i52.i)
  %bf.cast.not.i57.i = icmp sgt i8 %bf.load.i52.i, -1
  %.29.i58.i = select i1 %bf.cast.not.i57.i, i32 8192, i32 4096
  %..i59.i = select i1 %bf.cast.not.i57.i, i32 2, i32 1
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i47.i, i32 noundef %73, i32 noundef %.29.i58.i, i32 noundef %..i59.i, i32 noundef 0) #10
  br label %if.end11.i61.i

if.end11.i61.i:                                   ; preds = %if.then8.i60.i, %if.end.i56.i.if.end11.i61.i_crit_edge
  %74 = ptrtoint ptr %page.i48.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %page.i48.i, align 4
  tail call void @__free_pages(ptr noundef %75, i32 noundef %.not.i53.i) #10
  %76 = ptrtoint ptr %page.i48.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %page.i48.i, align 4
  br label %cleanup.i64.i

cleanup.i64.i:                                    ; preds = %if.end11.i61.i, %for.body.i50.i.cleanup.i64.i_crit_edge
  %inc.i62.i = add nuw nsw i32 %i.030.i44.i, 1
  %exitcond.not.i63.i = icmp eq i32 %inc.i62.i, 256
  br i1 %exitcond.not.i63.i, label %cleanup.i64.i.err_free_rx_buffers_crit_edge, label %cleanup.i64.i.for.body.i50.i_crit_edge

cleanup.i64.i.for.body.i50.i_crit_edge:           ; preds = %cleanup.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i50.i

cleanup.i64.i.err_free_rx_buffers_crit_edge:      ; preds = %cleanup.i64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_rx_buffers

if.end11.i:                                       ; preds = %if.end.i
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 4
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %arrayidx.i, align 4
  %frame.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring.i, i32 0, i32 %i.069.i, i32 2
  %80 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call5.i, ptr %frame.i, align 4
  %callback.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring.i, i32 0, i32 %i.069.i, i32 2, i32 1
  %81 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @tbnet_tx_callback, ptr %callback.i, align 4
  %sof.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring.i, i32 0, i32 %i.069.i, i32 2, i32 3
  %82 = ptrtoint ptr %sof.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %bf.load.i = load i32, ptr %sof.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -256
  %bf.set18.i = or i32 %bf.clear.i, 33
  store i32 %bf.set18.i, ptr %sof.i, align 4
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end31, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end31:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %cons.i.i = getelementptr i8, ptr %work, i32 14452
  %83 = ptrtoint ptr %cons.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %cons.i.i, align 4
  %prod.i.i = getelementptr i8, ptr %work, i32 14456
  %84 = ptrtoint ptr %prod.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 255, ptr %prod.i.i, align 4
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  tail call void @netif_carrier_on(ptr noundef %86) #10
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 103
  %89 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %90, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

err_free_rx_buffers:                              ; preds = %cleanup.i64.i.err_free_rx_buffers_crit_edge, %cleanup.i.i.err_free_rx_buffers_crit_edge
  %cons.i.i88 = getelementptr i8, ptr %work, i32 14452
  %91 = ptrtoint ptr %cons.i.i88 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %cons.i.i88, align 4
  %prod.i.i89 = getelementptr i8, ptr %work, i32 14456
  %92 = ptrtoint ptr %prod.i.i89 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %prod.i.i89, align 4
  br label %for.body.i78

for.body.i78:                                     ; preds = %cleanup.i.for.body.i78_crit_edge, %err_free_rx_buffers
  %i.030.i = phi i32 [ 0, %err_free_rx_buffers ], [ %inc.i84, %cleanup.i.for.body.i78_crit_edge ]
  %93 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring, align 4
  %nhi.i.i73 = getelementptr inbounds %struct.tb_ring, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %nhi.i.i73 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %nhi.i.i73, align 4
  %pdev.i.i74 = getelementptr inbounds %struct.tb_nhi, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %pdev.i.i74 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev.i.i74, align 4
  %dev.i.i75 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %page.i76 = getelementptr [256 x %struct.tbnet_frame], ptr %rx_ring, i32 0, i32 %i.030.i, i32 1
  %99 = ptrtoint ptr %page.i76 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %page.i76, align 4
  %tobool.not.i77 = icmp eq ptr %100, null
  br i1 %tobool.not.i77, label %for.body.i78.cleanup.i_crit_edge, label %if.end.i81

for.body.i78.cleanup.i_crit_edge:                 ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i81:                                       ; preds = %for.body.i78
  %is_tx.i = getelementptr inbounds %struct.tb_ring, ptr %94, i32 0, i32 11
  %101 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load.i79 = load i8, ptr %is_tx.i, align 4
  %102 = xor i8 %bf.load.i79, -1
  %103 = lshr i8 %102, 7
  %.not.i = zext i8 %103 to i32
  %frame.i80 = getelementptr [256 x %struct.tbnet_frame], ptr %rx_ring, i32 0, i32 %i.030.i, i32 2
  %104 = ptrtoint ptr %frame.i80 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %frame.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool7.not.i = icmp eq i32 %105, 0
  br i1 %tobool7.not.i, label %if.end.i81.if.end11.i83_crit_edge, label %if.then8.i82

if.end.i81.if.end11.i83_crit_edge:                ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i83

if.then8.i82:                                     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i79)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i79, -1
  %.29.i = select i1 %bf.cast.not.i, i32 8192, i32 4096
  %..i = select i1 %bf.cast.not.i, i32 2, i32 1
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i75, i32 noundef %105, i32 noundef %.29.i, i32 noundef %..i, i32 noundef 0) #10
  br label %if.end11.i83

if.end11.i83:                                     ; preds = %if.then8.i82, %if.end.i81.if.end11.i83_crit_edge
  %106 = ptrtoint ptr %page.i76 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %page.i76, align 4
  tail call void @__free_pages(ptr noundef %107, i32 noundef %.not.i) #10
  %108 = ptrtoint ptr %page.i76 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %page.i76, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end11.i83, %for.body.i78.cleanup.i_crit_edge
  %inc.i84 = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i85 = icmp eq i32 %inc.i84, 256
  br i1 %exitcond.not.i85, label %tbnet_free_buffers.exit, label %cleanup.i.for.body.i78_crit_edge

cleanup.i.for.body.i78_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i78

tbnet_free_buffers.exit:                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  %cons.i = getelementptr i8, ptr %work, i32 7268
  %109 = ptrtoint ptr %cons.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %cons.i, align 4
  %prod.i = getelementptr i8, ptr %work, i32 7272
  %110 = ptrtoint ptr %prod.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %prod.i, align 4
  br label %err_stop_rings

err_stop_rings:                                   ; preds = %tbnet_free_buffers.exit, %if.end19.err_stop_rings_crit_edge
  %111 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ring, align 4
  tail call void @tb_ring_stop(ptr noundef %112) #10
  %113 = ptrtoint ptr %ring13 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ring13, align 4
  tail call void @tb_ring_stop(ptr noundef %114) #10
  %115 = ptrtoint ptr %xd to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %xd, align 4
  %117 = ptrtoint ptr %remote_transmit_path to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %remote_transmit_path, align 8
  tail call void @tb_xdomain_release_in_hopid(ptr noundef %116, i32 noundef %118) #10
  br label %cleanup

cleanup:                                          ; preds = %err_stop_rings, %if.end31, %if.then17, %if.then8, %if.then4.critedge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tbnet_disconnect_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -596
  tail call fastcc void @tbnet_tear_down(ptr noundef %add.ptr, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbnet_poll(ptr noundef %napi, i32 noundef %budget) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -32
  %prod.i = getelementptr i8, ptr %napi, i32 7792
  %0 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prod.i, align 4
  %cons.i = getelementptr i8, ptr %napi, i32 7788
  %2 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cons.i, align 4
  %sub.i = sub i32 %1, %3
  %ring = getelementptr i8, ptr %napi, i32 7796
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring, align 4
  %nhi.i = getelementptr inbounds %struct.tb_ring, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp175.not = icmp eq i32 %budget, 0
  br i1 %cmp175.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx_crc_errors.i = getelementptr i8, ptr %napi, i32 288
  %rx_over_errors.i = getelementptr i8, ptr %napi, i32 280
  %skb.i = getelementptr i8, ptr %napi, i32 304
  %frame_count30.i = getelementptr i8, ptr %napi, i32 616
  %rx_length_errors39.i = getelementptr i8, ptr %napi, i32 272
  %frame_index43.i = getelementptr i8, ptr %napi, i32 612
  %frame_id49.i = getelementptr i8, ptr %napi, i32 614
  %rx_missed_errors.i = getelementptr i8, ptr %napi, i32 296
  %rx_hdr = getelementptr i8, ptr %napi, i32 608
  %rx_bytes = getelementptr i8, ptr %napi, i32 248
  %dev = getelementptr i8, ptr %napi, i32 -4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %rx_packets.0177 = phi i32 [ 0, %while.body.lr.ph ], [ %rx_packets.1, %cleanup.while.body_crit_edge ]
  %cleaned_count.0176 = phi i32 [ %sub.i, %while.body.lr.ph ], [ %inc17, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %cleaned_count.0176)
  %cmp3 = icmp ugt i32 %cleaned_count.0176, 16
  br i1 %cmp3, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call fastcc i32 @tbnet_alloc_rx_buffers(ptr noundef %add.ptr, i32 noundef %cleaned_count.0176)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %cleaned_count.1 = phi i32 [ 0, %if.then ], [ %cleaned_count.0176, %while.body.if.end_crit_edge ]
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring, align 4
  %call7 = tail call ptr @tb_ring_poll(ptr noundef %11) #10
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end9

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call7, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %13, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #10
  %page14 = getelementptr i8, ptr %call7, i32 -4
  %14 = ptrtoint ptr %page14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %page14, align 4
  store ptr null, ptr %page14, align 4
  %16 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cons.i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %cons.i, align 4
  %inc17 = add nuw nsw i32 %cleaned_count.1, 1
  %call18 = tail call ptr @page_address(ptr noundef %15) #10
  %flags.i = getelementptr i8, ptr %call7, i32 16
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i = load i32, ptr %flags.i, align 4
  %19 = and i32 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end9.if.then20_crit_edge

if.end9.if.then20_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.else.i:                                        ; preds = %if.end9
  %20 = and i32 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7.not.i = icmp eq i32 %20, 0
  br i1 %tobool7.not.i, label %if.end11.i, label %if.else.i.if.then20_crit_edge

if.else.i.if.then20_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end11.i:                                       ; preds = %if.else.i
  %bf.lshr.i.i = lshr i32 %bf.load.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %bf.load.i)
  %tobool.not.i.i = icmp ult i32 %bf.load.i, 1048576
  %bf.lshr..i.i = select i1 %tobool.not.i.i, i32 4096, i32 %bf.lshr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %bf.lshr..i.i)
  %cmp.i = icmp ult i32 %bf.lshr..i.i, 13
  br i1 %cmp.i, label %if.end11.i.if.then20_crit_edge, label %if.end15.i

if.end11.i.if.then20_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end15.i:                                       ; preds = %if.end11.i
  %frame_count16.i = getelementptr inbounds %struct.thunderbolt_ip_frame_header, ptr %call18, i32 0, i32 3
  %21 = ptrtoint ptr %frame_count16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frame_count16.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %24 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call18, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  %frame_index18.i = getelementptr inbounds %struct.thunderbolt_ip_frame_header, ptr %call18, i32 0, i32 1
  %27 = ptrtoint ptr %frame_index18.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %frame_index18.i, align 4
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #10
  %conv.i = zext i16 %29 to i32
  %frame_id19.i = getelementptr inbounds %struct.thunderbolt_ip_frame_header, ptr %call18, i32 0, i32 2
  %30 = ptrtoint ptr %frame_id19.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %frame_id19.i, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #10
  %sub.i156 = add nsw i32 %bf.lshr..i.i, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub.i156)
  %cmp21.i = icmp ugt i32 %26, %sub.i156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool23.not.i = icmp eq i32 %25, 0
  %or.cond.i = select i1 %cmp21.i, i1 true, i1 %tobool23.not.i
  br i1 %or.cond.i, label %if.end15.i.if.then20_crit_edge, label %if.end28.i

if.end15.i.if.then20_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end28.i:                                       ; preds = %if.end15.i
  %33 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skb.i, align 8
  %tobool29.not.i = icmp eq ptr %34, null
  br i1 %tobool29.not.i, label %if.end28.i.if.end66.i_crit_edge, label %land.lhs.true.i

if.end28.i.if.end66.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

land.lhs.true.i:                                  ; preds = %if.end28.i
  %35 = ptrtoint ptr %frame_count30.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frame_count30.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool31.not.i = icmp eq i32 %36, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i.if.end66.i_crit_edge, label %if.then32.i

land.lhs.true.i.if.end66.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.then32.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %36)
  %cmp35.not.i = icmp eq i32 %23, %36
  br i1 %cmp35.not.i, label %if.end41.i, label %if.then32.i.if.then20_crit_edge

if.then32.i.if.then20_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end41.i:                                       ; preds = %if.then32.i
  %37 = ptrtoint ptr %frame_index43.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %frame_index43.i, align 4
  %conv44.i = zext i16 %38 to i32
  %add.i = add nuw nsw i32 %conv44.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp45.not.i = icmp eq i32 %add.i, %conv.i
  br i1 %cmp45.not.i, label %lor.lhs.false47.i, label %if.end41.i.if.then20_crit_edge

if.end41.i.if.then20_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

lor.lhs.false47.i:                                ; preds = %if.end41.i
  %39 = ptrtoint ptr %frame_id49.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %frame_id49.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %40)
  %cmp51.not.i = icmp eq i16 %32, %40
  br i1 %cmp51.not.i, label %if.end56.i, label %lor.lhs.false47.i.if.then20_crit_edge

lor.lhs.false47.i.if.then20_crit_edge:            ; preds = %lor.lhs.false47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end56.i:                                       ; preds = %lor.lhs.false47.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 6
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  %add58.i = add i32 %42, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add58.i)
  %cmp59.i = icmp ugt i32 %add58.i, 65536
  br i1 %cmp59.i, label %if.end56.i.if.then20_crit_edge, label %if.end56.i.if.end24_crit_edge

if.end56.i.if.end24_crit_edge:                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end56.i.if.then20_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end66.i:                                       ; preds = %land.lhs.true.i.if.end66.i_crit_edge, %if.end28.i.if.end66.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp67.i = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %23)
  %cmp70.i = icmp ugt i32 %23, 64
  %or.cond116.i = select i1 %cmp67.i, i1 true, i1 %cmp70.i
  br i1 %or.cond116.i, label %if.end66.i.if.then20_crit_edge, label %if.end76.i

if.end66.i.if.then20_crit_edge:                   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end76.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp77.not.i = icmp eq i16 %28, 0
  br i1 %cmp77.not.i, label %if.end76.i.if.end24_crit_edge, label %if.end76.i.if.then20_crit_edge

if.end76.i.if.then20_crit_edge:                   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.end76.i.if.end24_crit_edge:                    ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %if.end76.i.if.then20_crit_edge, %if.end66.i.if.then20_crit_edge, %if.end56.i.if.then20_crit_edge, %lor.lhs.false47.i.if.then20_crit_edge, %if.end41.i.if.then20_crit_edge, %if.then32.i.if.then20_crit_edge, %if.end15.i.if.then20_crit_edge, %if.end11.i.if.then20_crit_edge, %if.else.i.if.then20_crit_edge, %if.end9.if.then20_crit_edge
  %rx_missed_errors81.sink117.i = phi ptr [ %rx_crc_errors.i, %if.end9.if.then20_crit_edge ], [ %rx_over_errors.i, %if.else.i.if.then20_crit_edge ], [ %rx_length_errors39.i, %if.end11.i.if.then20_crit_edge ], [ %rx_length_errors39.i, %if.end15.i.if.then20_crit_edge ], [ %rx_length_errors39.i, %if.then32.i.if.then20_crit_edge ], [ %rx_missed_errors.i, %lor.lhs.false47.i.if.then20_crit_edge ], [ %rx_missed_errors.i, %if.end41.i.if.then20_crit_edge ], [ %rx_length_errors39.i, %if.end56.i.if.then20_crit_edge ], [ %rx_length_errors39.i, %if.end66.i.if.then20_crit_edge ], [ %rx_missed_errors.i, %if.end76.i.if.then20_crit_edge ]
  %43 = ptrtoint ptr %rx_missed_errors81.sink117.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rx_missed_errors81.sink117.i, align 8
  %inc82.i = add i64 %44, 1
  store i64 %inc82.i, ptr %rx_missed_errors81.sink117.i, align 8
  tail call void @__free_pages(ptr noundef %15, i32 noundef 1) #10
  %45 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %skb.i, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %46, i32 noundef 1) #10
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end76.i.if.end24_crit_edge, %if.end56.i.if.end24_crit_edge
  %47 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call18, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb.i, align 8
  %tobool27.not = icmp eq ptr %51, null
  br i1 %tobool27.not, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end24
  %call29 = tail call ptr @page_address(ptr noundef %15) #10
  %call32 = tail call ptr @build_skb(ptr noundef %call29, i32 noundef 8192) #10
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %while.end.thread, label %if.end37

while.end.thread:                                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__free_pages(ptr noundef %15, i32 noundef 1) #10
  %rx_errors = getelementptr i8, ptr %napi, i32 256
  %52 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %rx_errors, align 8
  %inc36 = add i64 %53, 1
  store i64 %inc36, ptr %rx_errors, align 8
  br label %if.then81.sink.split

if.end37:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call32, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %55, i32 12
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call32, i32 0, i32 16
  %56 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %57, i32 12
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call38 = tail call ptr @skb_put(ptr noundef nonnull %call32, i32 noundef %49) #10
  %58 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call32, ptr %skb.i, align 8
  br label %if.end43

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 17
  %59 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %62 to i32
  tail call void @skb_add_rx_frag(ptr noundef nonnull %51, i32 noundef %conv, ptr noundef %15, i32 noundef 12, i32 noundef %49, i32 noundef 8180) #10
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.end37
  %skb.0 = phi ptr [ %51, %if.else ], [ %call32, %if.end37 ]
  %63 = ptrtoint ptr %rx_hdr to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %49, ptr %rx_hdr, align 8
  %64 = ptrtoint ptr %frame_count16.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %frame_count16.i, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %frame_count30.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %frame_count30.i, align 8
  %68 = ptrtoint ptr %frame_index18.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %frame_index18.i, align 4
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %71 = ptrtoint ptr %frame_index43.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %frame_index43.i, align 4
  %72 = ptrtoint ptr %frame_id19.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %frame_id19.i, align 2
  %74 = tail call i16 @llvm.bswap.i16(i16 %73)
  %75 = ptrtoint ptr %frame_id49.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %frame_id49.i, align 2
  %conv53 = zext i16 %70 to i32
  %sub56 = add i32 %66, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub56, i32 %conv53)
  %cmp57 = icmp eq i32 %sub56, %conv53
  %inc59 = add nuw i32 %rx_packets.0177, 1
  %conv60 = zext i32 %49 to i64
  %76 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %rx_bytes, align 8
  %add = add i64 %77, %conv60
  store i64 %add, ptr %rx_bytes, align 8
  br i1 %cmp57, label %if.then63, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then63:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  %call64 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.0, ptr noundef %79) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %80 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %call64, ptr %protocol, align 8
  %call66 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %skb.0) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then63, %if.then20
  %rx_packets.1.ph = phi i32 [ %inc59, %if.then63 ], [ %rx_packets.0177, %if.then20 ]
  %81 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %skb.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end43.cleanup_crit_edge
  %rx_packets.1 = phi i32 [ %inc59, %if.end43.cleanup_crit_edge ], [ %rx_packets.1.ph, %cleanup.sink.split ]
  %cmp = icmp ult i32 %rx_packets.1, %budget
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.if.then81.sink.split_crit_edge

cleanup.if.then81.sink.split_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81.sink.split

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %rx_packets.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %rx_packets.0177, %if.end.while.end_crit_edge ]
  %cleaned_count.3 = phi i32 [ %sub.i, %entry.while.end_crit_edge ], [ %cleaned_count.1, %if.end.while.end_crit_edge ]
  %conv76 = zext i32 %rx_packets.0.lcssa to i64
  %rx_packets78 = getelementptr i8, ptr %napi, i32 232
  %82 = ptrtoint ptr %rx_packets78 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rx_packets78, align 8
  %add79 = add i64 %83, %conv76
  store i64 %add79, ptr %rx_packets78, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleaned_count.3)
  %tobool80.not = icmp eq i32 %cleaned_count.3, 0
  br i1 %tobool80.not, label %while.end.if.end83_crit_edge, label %while.end.if.then81_crit_edge

while.end.if.then81_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

while.end.if.end83_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then81.sink.split:                             ; preds = %cleanup.if.then81.sink.split_crit_edge, %while.end.thread
  %rx_packets.0177.lcssa192.sink = phi i32 [ %rx_packets.0177, %while.end.thread ], [ %rx_packets.1, %cleanup.if.then81.sink.split_crit_edge ]
  %conv76165 = zext i32 %rx_packets.0177.lcssa192.sink to i64
  %rx_packets78166 = getelementptr i8, ptr %napi, i32 232
  %84 = ptrtoint ptr %rx_packets78166 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %rx_packets78166, align 8
  %add79190 = add i64 %85, %conv76165
  store i64 %add79190, ptr %rx_packets78166, align 8
  br label %if.then81

if.then81:                                        ; preds = %if.then81.sink.split, %while.end.if.then81_crit_edge
  %rx_packets.0173 = phi i32 [ %rx_packets.0.lcssa, %while.end.if.then81_crit_edge ], [ %rx_packets.0177.lcssa192.sink, %if.then81.sink.split ]
  %cleaned_count.3169 = phi i32 [ %cleaned_count.3, %while.end.if.then81_crit_edge ], [ %inc17, %if.then81.sink.split ]
  %call82 = tail call fastcc i32 @tbnet_alloc_rx_buffers(ptr noundef %add.ptr, i32 noundef %cleaned_count.3169)
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %while.end.if.end83_crit_edge
  %rx_packets.0174 = phi i32 [ %rx_packets.0173, %if.then81 ], [ %rx_packets.0.lcssa, %while.end.if.end83_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_packets.0174, i32 %budget)
  %cmp84.not = icmp ult i32 %rx_packets.0174, %budget
  br i1 %cmp84.not, label %if.end87, label %if.end83.cleanup91_crit_edge

if.end83.cleanup91_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

if.end87:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %rx_packets.0174) #10
  %86 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ring, align 4
  tail call void @tb_ring_poll_complete(ptr noundef %87) #10
  br label %cleanup91

cleanup91:                                        ; preds = %if.end87, %if.end83.cleanup91_crit_edge
  %retval.0 = phi i32 [ %rx_packets.0174, %if.end87 ], [ %budget, %if.end83.cleanup91_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbnet_handle_packet(ptr nocapture noundef readonly %buf, i32 noundef %size, ptr noundef %data) #3 align 64 {
entry:
  %reply.i = alloca %struct.thunderbolt_ip_status, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %size)
  %cmp = icmp ult i32 %size, 68
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %initiator_uuid = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %buf, i32 0, i32 4
  %xd = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %xd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xd, align 4
  %remote_uuid = getelementptr inbounds %struct.tb_xdomain, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %remote_uuid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remote_uuid, align 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %initiator_uuid, ptr noundef dereferenceable(16) %3, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %target_uuid = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %buf, i32 0, i32 5
  %local_uuid = getelementptr inbounds %struct.tb_xdomain, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %local_uuid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_uuid, align 8
  %bcmp.i87 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %target_uuid, ptr noundef dereferenceable(16) %5, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i87)
  %cmp.i88 = icmp eq i32 %bcmp.i87, 0
  br i1 %cmp.i88, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf, align 4
  %conv = zext i32 %7 to i64
  %shl = shl nuw i64 %conv, 32
  %route_lo = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %buf, i32 0, i32 1
  %8 = ptrtoint ptr %route_lo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %route_lo, align 4
  %conv10 = zext i32 %9 to i64
  %shl.masked = and i64 %shl, 9223372032559808512
  %and = or i64 %shl.masked, %conv10
  %route12 = getelementptr inbounds %struct.tb_xdomain, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %route12 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %route12, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %11)
  %cmp13.not = icmp eq i64 %and, %11
  br i1 %cmp13.not, label %if.end16, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %length_sn = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %buf, i32 0, i32 2
  %12 = ptrtoint ptr %length_sn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length_sn, align 4
  %and18 = lshr i32 %13, 27
  %shr = and i32 %and18, 3
  %command_id20 = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %buf, i32 0, i32 7
  %type = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %buf, i32 0, i32 6
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end16.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb40
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end16
  %dev = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %sw.bb.cleanup_crit_edge, label %if.end24

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %sw.bb
  %conv25 = trunc i32 %shr to i8
  %21 = ptrtoint ptr %command_id20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %command_id20, align 4
  %call28 = tail call fastcc i32 @tbnet_login_response(ptr noundef %data, i64 noundef %and, i8 noundef zeroext %conv25, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.then29, label %if.end24.if.then48_crit_edge

if.end24.if.then48_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

if.then29:                                        ; preds = %if.end24
  %connection_lock = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %connection_lock, i32 noundef 0) #10
  %login_received = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 9
  %23 = ptrtoint ptr %login_received to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %login_received, align 1
  %transmit_path = getelementptr inbounds %struct.thunderbolt_ip_login, ptr %buf, i32 0, i32 2
  %24 = ptrtoint ptr %transmit_path to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transmit_path, align 4
  %remote_transmit_path = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 11
  %26 = ptrtoint ptr %remote_transmit_path to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %remote_transmit_path, align 8
  %login_retries = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 13
  %27 = ptrtoint ptr %login_retries to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %login_retries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %28)
  %cmp30 = icmp sgt i32 %28, 59
  br i1 %cmp30, label %if.then29.if.then33_crit_edge, label %lor.lhs.false

if.then29.if.then33_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

lor.lhs.false:                                    ; preds = %if.then29
  %login_sent = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 8
  %29 = ptrtoint ptr %login_sent to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %login_sent, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool32.not = icmp eq i8 %30, 0
  br i1 %tobool32.not, label %lor.lhs.false.if.then33_crit_edge, label %lor.lhs.false.if.end36_crit_edge

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %if.then29.if.then33_crit_edge
  %31 = ptrtoint ptr %login_retries to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %login_retries, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %32 = load ptr, ptr @system_long_wq, align 4
  %login_work = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 14
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %login_work, i32 noundef 0) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %lor.lhs.false.if.end36_crit_edge
  tail call void @mutex_unlock(ptr noundef %connection_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %33 = load ptr, ptr @system_long_wq, align 4
  %connected_work = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 15
  %call.i89 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %connected_work) #10
  br label %cleanup

sw.bb40:                                          ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %reply.i) #10
  %34 = getelementptr inbounds i8, ptr %reply.i, i32 68
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %34, align 4
  %command_id2.i = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %command_id2.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %command_id2.i, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %command_id2.i, ptr %command_id2.i, i32 1, ptr elementtype(i32) %command_id2.i) #10, !srcloc !89
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %shl.i.i = shl nuw nsw i32 %shr, 27
  %or.i.i = or i32 %shl.i.i, 15
  %shr.i.i = lshr exact i64 %shl.masked, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %37 = ptrtoint ptr %reply.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv2.i.i, ptr %reply.i, align 4
  %route_lo.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply.i, i32 0, i32 1
  %38 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %9, ptr %route_lo.i.i, align 4
  %length_sn5.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply.i, i32 0, i32 2
  %39 = ptrtoint ptr %length_sn5.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i.i, ptr %length_sn5.i.i, align 4
  %uuid.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply.i, i32 0, i32 3
  %40 = call ptr @memcpy(ptr %uuid.i.i, ptr @tbnet_svc_uuid, i32 16)
  %initiator_uuid6.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply.i, i32 0, i32 4
  %41 = call ptr @memcpy(ptr %initiator_uuid6.i.i, ptr %5, i32 16)
  %target_uuid7.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply.i, i32 0, i32 5
  %42 = call ptr @memcpy(ptr %target_uuid7.i.i, ptr %3, i32 16)
  %type8.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply.i, i32 0, i32 6
  %43 = ptrtoint ptr %type8.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %type8.i.i, align 4
  %command_id9.i.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply.i, i32 0, i32 7
  %44 = ptrtoint ptr %command_id9.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %asmresult.i.i.i.i.i, ptr %command_id9.i.i, align 4
  %call3.i = call i32 @tb_xdomain_response(ptr noundef %1, ptr noundef nonnull %reply.i, i32 noundef 72, i32 noundef 7) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %reply.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool43.not = icmp eq i32 %call3.i, 0
  br i1 %tobool43.not, label %if.then44, label %sw.bb40.if.then48_crit_edge

sw.bb40.if.then48_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

if.then44:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %45 = load ptr, ptr @system_long_wq, align 4
  %disconnect_work = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 16
  %call.i90 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %disconnect_work) #10
  br label %cleanup

if.then48:                                        ; preds = %sw.bb40.if.then48_crit_edge, %if.end24.if.then48_crit_edge
  %dev49 = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 3
  %46 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev49, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %47, ptr noundef nonnull @.str.25) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.then44, %if.end36, %sw.bb.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 1, %if.then48 ], [ 1, %if.then44 ], [ 1, %if.end36 ], [ 1, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_alloc_in_hopid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_enable_paths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ring_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tbnet_alloc_rx_buffers(ptr noundef %net, i32 noundef %nbuffers) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbuffers)
  %tobool.not52 = icmp eq i32 %nbuffers, 0
  br i1 %tobool.not52, label %entry.cleanup25_crit_edge, label %while.body.lr.ph

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

while.body.lr.ph:                                 ; preds = %entry
  %ring1 = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 18, i32 3
  %prod = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 18, i32 2
  %dev = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dec53.in = phi i32 [ %nbuffers, %while.body.lr.ph ], [ %dec53, %cleanup.while.body_crit_edge ]
  %dec53 = add i32 %dec53.in, -1
  %0 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring1, align 4
  %nhi.i = getelementptr inbounds %struct.tb_ring, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prod, align 4
  %and = and i32 %7, 255
  %arrayidx = getelementptr [256 x %struct.tbnet_frame], ptr %rx_ring, i32 0, i32 %and
  %page = getelementptr [256 x %struct.tbnet_frame], ptr %rx_ring, i32 0, i32 %and, i32 1
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end, label %while.body.cleanup25_crit_edge

while.body.cleanup25_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

if.end:                                           ; preds = %while.body
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  %10 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call38.i.i.i.i, ptr %page, align 4
  %tobool7.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool7.not, label %if.end.for.body.i.preheader_crit_edge, label %if.end9

if.end.for.body.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.end9:                                          ; preds = %if.end
  %call12 = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #10
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12)
  %cmp.i.not = icmp eq i32 %call12, -1
  br i1 %cmp.i.not, label %if.end9.for.body.i.preheader_crit_edge, label %if.end16

if.end9.for.body.i.preheader_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end9.for.body.i.preheader_crit_edge, %if.end.for.body.i.preheader_crit_edge
  br label %for.body.i

if.end16:                                         ; preds = %if.end9
  %frame = getelementptr [256 x %struct.tbnet_frame], ptr %rx_ring, i32 0, i32 %and, i32 2
  %11 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call12, ptr %frame, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring1, align 4
  %is_tx.i = getelementptr inbounds %struct.tb_ring, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %is_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.end16.cleanup_crit_edge, label %do.end.i, !prof !91

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 618, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end16.cleanup_crit_edge
  %call.i = tail call i32 @__tb_ring_enqueue(ptr noundef %16, ptr noundef %frame) #10
  %18 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prod, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %prod, align 4
  %tobool.not = icmp eq i32 %dec53, 0
  br i1 %tobool.not, label %cleanup.cleanup25_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup25_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.030.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %20 = ptrtoint ptr %ring1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring1, align 4
  %nhi.i.i = getelementptr inbounds %struct.tb_ring, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %nhi.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nhi.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.tb_nhi, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %page.i = getelementptr [256 x %struct.tbnet_frame], ptr %rx_ring, i32 0, i32 %i.030.i, i32 1
  %26 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %is_tx.i41 = getelementptr inbounds %struct.tb_ring, ptr %21, i32 0, i32 11
  %28 = ptrtoint ptr %is_tx.i41 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i42 = load i8, ptr %is_tx.i41, align 4
  %29 = xor i8 %bf.load.i42, -1
  %30 = lshr i8 %29, 7
  %.not.i = zext i8 %30 to i32
  %frame.i = getelementptr [256 x %struct.tbnet_frame], ptr %rx_ring, i32 0, i32 %i.030.i, i32 2
  %31 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %frame.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool7.not.i = icmp eq i32 %32, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then8.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i42)
  %bf.cast.not.i43 = icmp sgt i8 %bf.load.i42, -1
  %.29.i = select i1 %bf.cast.not.i43, i32 8192, i32 4096
  %..i44 = select i1 %bf.cast.not.i43, i32 2, i32 1
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %32, i32 noundef %.29.i, i32 noundef %..i44, i32 noundef 0) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end.i.if.end11.i_crit_edge
  %33 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %page.i, align 4
  tail call void @__free_pages(ptr noundef %34, i32 noundef %.not.i) #10
  %35 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %page.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end11.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %tbnet_free_buffers.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

tbnet_free_buffers.exit:                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  %cons.i = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %cons.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %cons.i, align 4
  %37 = ptrtoint ptr %prod to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %prod, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %tbnet_free_buffers.exit, %cleanup.cleanup25_crit_edge, %while.body.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ -12, %tbnet_free_buffers.exit ], [ 0, %entry.cleanup25_crit_edge ], [ 0, %while.body.cleanup25_crit_edge ], [ 0, %cleanup.cleanup25_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tb_ring_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tbnet_tx_callback(ptr nocapture noundef readnone %ring, ptr nocapture noundef readonly %frame, i1 noundef zeroext %canceled) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %frame, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %prod = getelementptr i8, ptr %1, i32 17312
  %2 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prod, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %prod, align 4
  %cons.i = getelementptr i8, ptr %1, i32 17308
  %4 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cons.i, align 4
  %sub.i = sub i32 %inc, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub.i)
  %cmp = icmp ugt i32 %sub.i, 127
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr i8, ptr %1, i32 2332
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbnet_open(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %xd1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %xd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xd1, align 4
  tail call void @netif_carrier_off(ptr noundef %dev) #10
  %tb = getelementptr inbounds %struct.tb_xdomain, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi, align 4
  %call2 = tail call ptr @tb_ring_alloc_tx(ptr noundef %5, i32 noundef -1, i32 noundef 256, i32 noundef 2) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ring3 = getelementptr i8, ptr %dev, i32 17316
  %6 = ptrtoint ptr %ring3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %ring3, align 4
  %call4 = tail call i32 @tb_xdomain_alloc_out_hopid(ptr noundef %1, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #13
  %7 = ptrtoint ptr %ring3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring3, align 4
  tail call void @tb_ring_free(ptr noundef %8) #10
  %9 = ptrtoint ptr %ring3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ring3, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %local_transmit_path = getelementptr i8, ptr %dev, i32 2652
  %10 = ptrtoint ptr %local_transmit_path to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4, ptr %local_transmit_path, align 4
  %11 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tb, align 8
  %nhi12 = getelementptr inbounds %struct.tb, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %nhi12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nhi12, align 4
  %call13 = tail call ptr @tb_ring_alloc_rx(ptr noundef %14, i32 noundef -1, i32 noundef 256, i32 noundef 2, i32 noundef 0, i16 noundef zeroext 2, i16 noundef zeroext 4, ptr noundef nonnull @tbnet_start_poll, ptr noundef %add.ptr.i) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #13
  %15 = ptrtoint ptr %ring3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring3, align 4
  tail call void @tb_ring_free(ptr noundef %16) #10
  %17 = ptrtoint ptr %ring3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ring3, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %ring21 = getelementptr i8, ptr %dev, i32 10132
  %18 = ptrtoint ptr %ring21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13, ptr %ring21, align 4
  %napi = getelementptr i8, ptr %dev, i32 2336
  tail call void @napi_enable(ptr noundef %napi) #10
  %connection_lock.i = getelementptr i8, ptr %dev, i32 2660
  tail call void @mutex_lock_nested(ptr noundef %connection_lock.i, i32 noundef 0) #10
  %login_sent.i = getelementptr i8, ptr %dev, i32 2648
  %19 = ptrtoint ptr %login_sent.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %login_sent.i, align 8
  %login_received.i = getelementptr i8, ptr %dev, i32 2649
  %20 = ptrtoint ptr %login_received.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %login_received.i, align 1
  tail call void @mutex_unlock(ptr noundef %connection_lock.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %21 = load ptr, ptr @system_long_wq, align 4
  %login_work.i = getelementptr i8, ptr %dev, i32 2756
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %login_work.i, i32 noundef 100) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then15, %if.then5, %if.then
  %retval.0 = phi i32 [ %call4, %if.then5 ], [ 0, %if.end20 ], [ -12, %if.then15 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbnet_stop(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %napi = getelementptr i8, ptr %dev, i32 2336
  tail call void @napi_disable(ptr noundef %napi) #10
  %disconnect_work = getelementptr i8, ptr %dev, i32 2900
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %disconnect_work) #10
  tail call fastcc void @tbnet_tear_down(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  %ring = getelementptr i8, ptr %dev, i32 10132
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  tail call void @tb_ring_free(ptr noundef %1) #10
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ring, align 4
  %xd = getelementptr i8, ptr %dev, i32 2308
  %3 = ptrtoint ptr %xd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xd, align 4
  %local_transmit_path = getelementptr i8, ptr %dev, i32 2652
  %5 = ptrtoint ptr %local_transmit_path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %local_transmit_path, align 4
  tail call void @tb_xdomain_release_out_hopid(ptr noundef %4, i32 noundef %6) #10
  %ring4 = getelementptr i8, ptr %dev, i32 17316
  %7 = ptrtoint ptr %ring4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring4, align 4
  tail call void @tb_ring_free(ptr noundef %8) #10
  %9 = ptrtoint ptr %ring4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ring4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tbnet_start_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  %vh.i = alloca %struct.vlan_hdr, align 2
  %frames = alloca [17 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frames) #10
  %0 = getelementptr inbounds i8, ptr %frames, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  %frame_id1 = getelementptr i8, ptr %dev, i32 10136
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_id1, i32 noundef 4) #10
  %2 = ptrtoint ptr %frame_id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %frame_id1, align 4
  %conv = trunc i32 %3 to i16
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %5, %7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %sub = add i32 %5, 4083
  %div = udiv i32 %sub, 4084
  %tx_ring = getelementptr i8, ptr %dev, i32 10140
  %prod.i = getelementptr i8, ptr %dev, i32 17312
  %10 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prod.i, align 4
  %cons.i = getelementptr i8, ptr %dev, i32 17308
  %12 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cons.i, align 4
  %sub.i246 = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i246, i32 %div)
  %cmp = icmp ult i32 %sub.i246, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev7 = getelementptr i8, ptr %dev, i32 2332
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup140

if.end:                                           ; preds = %entry
  %18 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prod.i, align 4
  %20 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cons.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %tobool.not.i = icmp eq i32 %19, %21
  br i1 %tobool.not.i, label %if.end.err_drop_crit_edge, label %tbnet_get_tx_buffer.exit

if.end.err_drop_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_drop

tbnet_get_tx_buffer.exit:                         ; preds = %if.end
  %ring1.i = getelementptr i8, ptr %dev, i32 17316
  %22 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring1.i, align 4
  %nhi.i.i = getelementptr inbounds %struct.tb_ring, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %nhi.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nhi.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.tb_nhi, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %inc.i = add i32 %21, 1
  %28 = ptrtoint ptr %cons.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i, ptr %cons.i, align 4
  %and.i = and i32 %21, 255
  %arrayidx.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring, i32 0, i32 %and.i
  %frame.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring, i32 0, i32 %and.i, i32 2
  %size.i = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring, i32 0, i32 %and.i, i32 2, i32 3
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i = load i32, ptr %size.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 1048575
  store i32 %bf.clear.i, ptr %size.i, align 4
  %30 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frame.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i, i32 noundef %31, i32 noundef 4096, i32 noundef 1) #10
  %32 = ptrtoint ptr %frames to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx.i, ptr %frames, align 4
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %tbnet_get_tx_buffer.exit.err_drop_crit_edge, label %if.end11

tbnet_get_tx_buffer.exit.err_drop_crit_edge:      ; preds = %tbnet_get_tx_buffer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_drop

if.end11:                                         ; preds = %tbnet_get_tx_buffer.exit
  %page = getelementptr inbounds %struct.tbnet_frame, ptr %arrayidx.i, i32 0, i32 1
  %33 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %page, align 4
  %call13 = tail call ptr @page_address(ptr noundef %34) #10
  %dest.0375 = getelementptr %struct.thunderbolt_ip_frame_header, ptr %call13, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4084, i32 %5)
  %cmp14376 = icmp ugt i32 %5, 4084
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv)
  br i1 %cmp14376, label %while.body.lr.ph, label %if.end11.while.end_crit_edge

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %36 = add i32 %5, -4085
  %37 = udiv i32 %36, 4084
  %38 = add nuw nsw i32 %37, 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dest.0385 = phi ptr [ %dest.0375, %while.body.lr.ph ], [ %dest.0, %cleanup.while.body_crit_edge ]
  %unmap.0.off0384 = phi i1 [ false, %while.body.lr.ph ], [ %unmap.4.off0, %cleanup.while.body_crit_edge ]
  %frame_index.0382 = phi i32 [ 0, %while.body.lr.ph ], [ %inc53, %cleanup.while.body_crit_edge ]
  %src.0381 = phi ptr [ %9, %while.body.lr.ph ], [ %src.3, %cleanup.while.body_crit_edge ]
  %frag.0380 = phi i32 [ 0, %while.body.lr.ph ], [ %frag.3, %cleanup.while.body_crit_edge ]
  %data_len.0379 = phi i32 [ %5, %while.body.lr.ph ], [ %sub52, %cleanup.while.body_crit_edge ]
  %hdr.0378 = phi ptr [ %call13, %while.body.lr.ph ], [ %call62, %cleanup.while.body_crit_edge ]
  %len.0377 = phi i32 [ %sub.i, %while.body.lr.ph ], [ %len.3, %cleanup.while.body_crit_edge ]
  %39 = ptrtoint ptr %hdr.0378 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -200343552, ptr %hdr.0378, align 4
  %conv16 = trunc i32 %frame_index.0382 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %frame_index17 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, ptr %hdr.0378, i32 0, i32 1
  %41 = ptrtoint ptr %frame_index17 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %frame_index17, align 4
  %frame_id18 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, ptr %hdr.0378, i32 0, i32 2
  %42 = ptrtoint ptr %frame_id18 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %35, ptr %frame_id18, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond48.do.body_crit_edge, %while.body
  %len.1 = phi i32 [ %len.0377, %while.body ], [ %60, %do.cond48.do.body_crit_edge ]
  %frag.1 = phi i32 [ %frag.0380, %while.body ], [ %inc, %do.cond48.do.body_crit_edge ]
  %src.1 = phi ptr [ %src.0381, %while.body ], [ %add.ptr.i248, %do.cond48.do.body_crit_edge ]
  %unmap.1.off0 = phi i1 [ %unmap.0.off0384, %while.body ], [ true, %do.cond48.do.body_crit_edge ]
  %dest.1 = phi ptr [ %dest.0385, %while.body ], [ %add.ptr27, %do.cond48.do.body_crit_edge ]
  %size_left.0 = phi i32 [ 4084, %while.body ], [ %sub26, %do.cond48.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %size_left.0, i32 %len.1)
  %cmp19 = icmp ult i32 %size_left.0, %len.1
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %43 = call ptr @memcpy(ptr %dest.1, ptr %src.1, i32 %size_left.0)
  %sub22 = sub i32 %len.1, %size_left.0
  %add.ptr24 = getelementptr i8, ptr %src.1, i32 %size_left.0
  br label %do.end51

if.end25:                                         ; preds = %do.body
  %44 = call ptr @memcpy(ptr %dest.1, ptr %src.1, i32 %len.1)
  %sub26 = sub i32 %size_left.0, %len.1
  %add.ptr27 = getelementptr i8, ptr %dest.1, i32 %len.1
  br i1 %unmap.1.off0, label %do.end, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kunmap_local_indexed(ptr noundef %src.1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %45 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i1.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 213
  %49 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %50, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %51 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end25.if.end34_crit_edge
  %55 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %nr_frags, align 2
  %conv36 = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.1, i32 %conv36)
  %cmp37 = icmp ult i32 %frag.1, %conv36
  br i1 %cmp37, label %do.cond48, label %if.else

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26)
  %cmp41.not = icmp eq i32 %sub26, 0
  br i1 %cmp41.not, label %if.else.do.end51_crit_edge, label %if.else.err_drop_crit_edge, !prof !91

if.else.err_drop_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_drop

if.else.do.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.cond48:                                        ; preds = %if.end34
  %inc = add nuw i32 %frag.1, 1
  %arrayidx.i247 = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %frag.1
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %frag.1, i32 1
  %59 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bv_len.i.i, align 4
  %61 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i247, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %63 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %63, 512
  %64 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %67, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %68 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i1.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 213
  %72 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %62, i32 noundef %or.i.i) #10
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %56, i32 0, i32 12, i32 %frag.1, i32 2
  %74 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i248 = getelementptr i8, ptr %call.i.i.i, i32 %75
  %cmp49.not = icmp eq i32 %sub26, 0
  br i1 %cmp49.not, label %do.cond48.do.end51_crit_edge, label %do.cond48.do.body_crit_edge

do.cond48.do.body_crit_edge:                      ; preds = %do.cond48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond48.do.end51_crit_edge:                     ; preds = %do.cond48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

do.end51:                                         ; preds = %do.cond48.do.end51_crit_edge, %if.else.do.end51_crit_edge, %if.then21
  %len.3 = phi i32 [ %sub22, %if.then21 ], [ %len.1, %if.else.do.end51_crit_edge ], [ %60, %do.cond48.do.end51_crit_edge ]
  %frag.3 = phi i32 [ %frag.1, %if.then21 ], [ %frag.1, %if.else.do.end51_crit_edge ], [ %inc, %do.cond48.do.end51_crit_edge ]
  %src.3 = phi ptr [ %add.ptr24, %if.then21 ], [ %src.1, %if.else.do.end51_crit_edge ], [ %add.ptr.i248, %do.cond48.do.end51_crit_edge ]
  %unmap.4.off0 = phi i1 [ %unmap.1.off0, %if.then21 ], [ false, %if.else.do.end51_crit_edge ], [ true, %do.cond48.do.end51_crit_edge ]
  %sub52 = add i32 %data_len.0379, -4084
  %inc53 = add nuw nsw i32 %frame_index.0382, 1
  %76 = ptrtoint ptr %prod.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %prod.i, align 4
  %78 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cons.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %tobool.not.i251 = icmp eq i32 %77, %79
  br i1 %tobool.not.i251, label %tbnet_get_tx_buffer.exit266.thread, label %tbnet_get_tx_buffer.exit266

tbnet_get_tx_buffer.exit266.thread:               ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx55325 = getelementptr [17 x ptr], ptr %frames, i32 0, i32 %inc53
  %80 = ptrtoint ptr %arrayidx55325 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx55325, align 4
  br label %err_drop

tbnet_get_tx_buffer.exit266:                      ; preds = %do.end51
  %81 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ring1.i, align 4
  %nhi.i.i254 = getelementptr inbounds %struct.tb_ring, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %nhi.i.i254 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nhi.i.i254, align 4
  %pdev.i.i255 = getelementptr inbounds %struct.tb_nhi, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %pdev.i.i255 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev.i.i255, align 4
  %dev.i.i256 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %inc.i257 = add i32 %79, 1
  %87 = ptrtoint ptr %cons.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %inc.i257, ptr %cons.i, align 4
  %and.i258 = and i32 %79, 255
  %arrayidx.i259 = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring, i32 0, i32 %and.i258
  %frame.i260 = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring, i32 0, i32 %and.i258, i32 2
  %size.i261 = getelementptr [256 x %struct.tbnet_frame], ptr %tx_ring, i32 0, i32 %and.i258, i32 2, i32 3
  %88 = ptrtoint ptr %size.i261 to i32
  call void @__asan_load4_noabort(i32 %88)
  %bf.load.i262 = load i32, ptr %size.i261, align 4
  %bf.clear.i263 = and i32 %bf.load.i262, 1048575
  store i32 %bf.clear.i263, ptr %size.i261, align 4
  %89 = ptrtoint ptr %frame.i260 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %frame.i260, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i256, i32 noundef %90, i32 noundef 4096, i32 noundef 1) #10
  %arrayidx55 = getelementptr [17 x ptr], ptr %frames, i32 0, i32 %inc53
  %91 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %arrayidx.i259, ptr %arrayidx55, align 4
  %tobool57.not = icmp eq ptr %arrayidx.i259, null
  br i1 %tobool57.not, label %tbnet_get_tx_buffer.exit266.err_drop_crit_edge, label %cleanup

tbnet_get_tx_buffer.exit266.err_drop_crit_edge:   ; preds = %tbnet_get_tx_buffer.exit266
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_drop

cleanup:                                          ; preds = %tbnet_get_tx_buffer.exit266
  %page61 = getelementptr inbounds %struct.tbnet_frame, ptr %arrayidx.i259, i32 0, i32 1
  %92 = ptrtoint ptr %page61 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %page61, align 4
  %call62 = tail call ptr @page_address(ptr noundef %93) #10
  %dest.0 = getelementptr %struct.thunderbolt_ip_frame_header, ptr %call62, i32 1
  %exitcond.not = icmp eq i32 %frame_index.0382, %37
  br i1 %exitcond.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end11.while.end_crit_edge
  %len.0.lcssa = phi i32 [ %sub.i, %if.end11.while.end_crit_edge ], [ %len.3, %cleanup.while.end_crit_edge ]
  %hdr.0.lcssa = phi ptr [ %call13, %if.end11.while.end_crit_edge ], [ %call62, %cleanup.while.end_crit_edge ]
  %data_len.0.lcssa = phi i32 [ %5, %if.end11.while.end_crit_edge ], [ %sub52, %cleanup.while.end_crit_edge ]
  %frag.0.lcssa = phi i32 [ 0, %if.end11.while.end_crit_edge ], [ %frag.3, %cleanup.while.end_crit_edge ]
  %src.0.lcssa = phi ptr [ %9, %if.end11.while.end_crit_edge ], [ %src.3, %cleanup.while.end_crit_edge ]
  %frame_index.0.lcssa = phi i32 [ 0, %if.end11.while.end_crit_edge ], [ %38, %cleanup.while.end_crit_edge ]
  %unmap.0.off0.lcssa = phi i1 [ false, %if.end11.while.end_crit_edge ], [ %unmap.4.off0, %cleanup.while.end_crit_edge ]
  %dest.0.lcssa = phi ptr [ %dest.0375, %if.end11.while.end_crit_edge ], [ %dest.0, %cleanup.while.end_crit_edge ]
  %94 = tail call i32 @llvm.bswap.i32(i32 %data_len.0.lcssa)
  %95 = ptrtoint ptr %hdr.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %hdr.0.lcssa, align 4
  %conv65 = trunc i32 %frame_index.0.lcssa to i16
  %96 = tail call i16 @llvm.bswap.i16(i16 %conv65)
  %frame_index66 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, ptr %hdr.0.lcssa, i32 0, i32 1
  %97 = ptrtoint ptr %frame_index66 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %frame_index66, align 4
  %frame_id67 = getelementptr inbounds %struct.thunderbolt_ip_frame_header, ptr %hdr.0.lcssa, i32 0, i32 2
  %98 = ptrtoint ptr %frame_id67 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %35, ptr %frame_id67, align 2
  %arrayidx69 = getelementptr [17 x ptr], ptr %frames, i32 0, i32 %frame_index.0.lcssa
  %99 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx69, align 4
  %size = getelementptr inbounds %struct.tbnet_frame, ptr %100, i32 0, i32 2, i32 3
  %101 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %101)
  %bf.load = load i32, ptr %size, align 4
  %add68 = shl nuw i32 %data_len.0.lcssa, 20
  %bf.shl = add i32 %add68, 12582912
  %bf.clear = and i32 %bf.load, 1048575
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %data_len.0.lcssa, i32 %len.0.lcssa)
  %cmp71393 = icmp ugt i32 %data_len.0.lcssa, %len.0.lcssa
  br i1 %cmp71393, label %while.body73.lr.ph, label %while.end.while.end105_crit_edge

while.end.while.end105_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end105

while.body73.lr.ph:                               ; preds = %while.end
  %end.i274 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  br label %while.body73

while.body73:                                     ; preds = %if.end104.while.body73_crit_edge, %while.body73.lr.ph
  %dest.4400 = phi ptr [ %dest.0.lcssa, %while.body73.lr.ph ], [ %add.ptr75, %if.end104.while.body73_crit_edge ]
  %unmap.6.off0399 = phi i1 [ %unmap.0.off0.lcssa, %while.body73.lr.ph ], [ %cmp88, %if.end104.while.body73_crit_edge ]
  %src.5397 = phi ptr [ %src.0.lcssa, %while.body73.lr.ph ], [ %src.6, %if.end104.while.body73_crit_edge ]
  %frag.5396 = phi i32 [ %frag.0.lcssa, %while.body73.lr.ph ], [ %frag.6, %if.end104.while.body73_crit_edge ]
  %data_len.2395 = phi i32 [ %data_len.0.lcssa, %while.body73.lr.ph ], [ %sub74, %if.end104.while.body73_crit_edge ]
  %len.5394 = phi i32 [ %len.0.lcssa, %while.body73.lr.ph ], [ %len.6, %if.end104.while.body73_crit_edge ]
  %102 = call ptr @memcpy(ptr %dest.4400, ptr %src.5397, i32 %len.5394)
  %sub74 = sub i32 %data_len.2395, %len.5394
  %add.ptr75 = getelementptr i8, ptr %dest.4400, i32 %len.5394
  br i1 %unmap.6.off0399, label %do.end81, label %while.body73.if.end84_crit_edge

while.body73.if.end84_crit_edge:                  ; preds = %while.body73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end81:                                         ; preds = %while.body73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kunmap_local_indexed(ptr noundef %src.5397) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %103 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i1.i267 = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i1.i267 to ptr
  %task.i.i.i268 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %task.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task.i.i.i268, align 8
  %pagefault_disabled.i.i.i269 = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 213
  %107 = ptrtoint ptr %pagefault_disabled.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pagefault_disabled.i.i.i269, align 8
  %dec.i.i.i270 = add i32 %108, -1
  store i32 %dec.i.i.i270, ptr %pagefault_disabled.i.i.i269, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %109 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i271 = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i271 to ptr
  %preempt_count.i.i.i272 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i.i272 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i.i272, align 4
  %sub.i.i273 = add i32 %112, -1
  store volatile i32 %sub.i.i273, ptr %preempt_count.i.i.i272, align 4
  br label %if.end84

if.end84:                                         ; preds = %do.end81, %while.body73.if.end84_crit_edge
  %113 = ptrtoint ptr %end.i274 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %end.i274, align 4
  %nr_frags86 = getelementptr inbounds %struct.skb_shared_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %nr_frags86 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %nr_frags86, align 2
  %conv87 = zext i8 %116 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.5396, i32 %conv87)
  %cmp88 = icmp ult i32 %frag.5396, %conv87
  br i1 %cmp88, label %if.then90, label %if.else93

if.then90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %inc91 = add nuw i32 %frag.5396, 1
  %arrayidx.i276 = getelementptr %struct.skb_shared_info, ptr %114, i32 0, i32 12, i32 %frag.5396
  %bv_len.i.i277 = getelementptr %struct.skb_shared_info, ptr %114, i32 0, i32 12, i32 %frag.5396, i32 1
  %117 = ptrtoint ptr %bv_len.i.i277 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bv_len.i.i277, align 4
  %119 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i276, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %121 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i278 = or i32 %121, 512
  %122 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i.i.i279 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i.i279 to ptr
  %preempt_count.i.i.i.i.i280 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i.i280 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i.i280, align 4
  %add.i.i.i.i281 = add i32 %125, 1
  store volatile i32 %add.i.i.i.i281, ptr %preempt_count.i.i.i.i.i280, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %126 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i1.i.i.i282 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i1.i.i.i282 to ptr
  %task.i.i.i.i.i283 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %task.i.i.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %task.i.i.i.i.i283, align 8
  %pagefault_disabled.i.i.i.i.i284 = getelementptr inbounds %struct.task_struct, ptr %129, i32 0, i32 213
  %130 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i284 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pagefault_disabled.i.i.i.i.i284, align 8
  %inc.i.i.i.i.i285 = add i32 %131, 1
  store i32 %inc.i.i.i.i.i285, ptr %pagefault_disabled.i.i.i.i.i284, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %call.i.i.i286 = tail call ptr @__kmap_local_page_prot(ptr noundef %120, i32 noundef %or.i.i278) #10
  %bv_offset.i.i287 = getelementptr %struct.skb_shared_info, ptr %114, i32 0, i32 12, i32 %frag.5396, i32 2
  %132 = ptrtoint ptr %bv_offset.i.i287 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %bv_offset.i.i287, align 4
  %add.ptr.i288 = getelementptr i8, ptr %call.i.i.i286, i32 %133
  br label %if.end104

if.else93:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub74)
  %cmp94.not = icmp eq i32 %sub74, 0
  br i1 %cmp94.not, label %if.else93.if.end104_crit_edge, label %if.else93.err_drop_crit_edge, !prof !91

if.else93.err_drop_crit_edge:                     ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_drop

if.else93.if.end104_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.end104:                                        ; preds = %if.else93.if.end104_crit_edge, %if.then90
  %len.6 = phi i32 [ %118, %if.then90 ], [ %len.5394, %if.else93.if.end104_crit_edge ]
  %frag.6 = phi i32 [ %inc91, %if.then90 ], [ %frag.5396, %if.else93.if.end104_crit_edge ]
  %src.6 = phi ptr [ %add.ptr.i288, %if.then90 ], [ %src.5397, %if.else93.if.end104_crit_edge ]
  %cmp71 = icmp ugt i32 %sub74, %len.6
  br i1 %cmp71, label %if.end104.while.body73_crit_edge, label %if.end104.while.end105_crit_edge

if.end104.while.end105_crit_edge:                 ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end105

if.end104.while.body73_crit_edge:                 ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body73

while.end105:                                     ; preds = %if.end104.while.end105_crit_edge, %while.end.while.end105_crit_edge
  %data_len.2.lcssa = phi i32 [ %data_len.0.lcssa, %while.end.while.end105_crit_edge ], [ %sub74, %if.end104.while.end105_crit_edge ]
  %src.5.lcssa = phi ptr [ %src.0.lcssa, %while.end.while.end105_crit_edge ], [ %src.6, %if.end104.while.end105_crit_edge ]
  %unmap.6.off0.lcssa = phi i1 [ %unmap.0.off0.lcssa, %while.end.while.end105_crit_edge ], [ %cmp88, %if.end104.while.end105_crit_edge ]
  %dest.4.lcssa = phi ptr [ %dest.0.lcssa, %while.end.while.end105_crit_edge ], [ %add.ptr75, %if.end104.while.end105_crit_edge ]
  %134 = call ptr @memcpy(ptr %dest.4.lcssa, ptr %src.5.lcssa, i32 %data_len.2.lcssa)
  br i1 %unmap.6.off0.lcssa, label %do.end111, label %while.end105.if.end114_crit_edge

while.end105.if.end114_crit_edge:                 ; preds = %while.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

do.end111:                                        ; preds = %while.end105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kunmap_local_indexed(ptr noundef %src.5.lcssa) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %135 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i1.i289 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i.i1.i289 to ptr
  %task.i.i.i290 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task.i.i.i290, align 8
  %pagefault_disabled.i.i.i291 = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 213
  %139 = ptrtoint ptr %pagefault_disabled.i.i.i291 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pagefault_disabled.i.i.i291, align 8
  %dec.i.i.i292 = add i32 %140, -1
  store i32 %dec.i.i.i292, ptr %pagefault_disabled.i.i.i291, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %141 = tail call i32 @llvm.read_register.i32(metadata !77) #10
  %and.i.i.i.i293 = and i32 %141, -16384
  %142 = inttoptr i32 %and.i.i.i.i293 to ptr
  %preempt_count.i.i.i294 = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %preempt_count.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %preempt_count.i.i.i294, align 4
  %sub.i.i295 = add i32 %144, -1
  store volatile i32 %sub.i.i295, ptr %preempt_count.i.i.i294, align 4
  br label %if.end114

if.end114:                                        ; preds = %do.end111, %while.end105.if.end114_crit_edge
  %add115 = add nsw i32 %frame_index.0.lcssa, 1
  %145 = ptrtoint ptr %frames to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %frames, align 4
  %page.i = getelementptr inbounds %struct.tbnet_frame, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %page.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %148) #10
  %149 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ring1.i, align 4
  %nhi.i.i296 = getelementptr inbounds %struct.tb_ring, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %nhi.i.i296 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %nhi.i.i296, align 4
  %pdev.i.i297 = getelementptr inbounds %struct.tb_nhi, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %pdev.i.i297 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdev.i.i297, align 4
  %dev.i.i298 = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 44
  %155 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %len.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %157 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %159 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %160 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %158, i32 %conv.i.i.i
  %161 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %162 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.i300 = sub i32 %156, %sub.ptr.sub.i.i
  %add.ptr.i301 = getelementptr %struct.thunderbolt_ip_frame_header, ptr %call.i, i32 1
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %163 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %bf.load.i302 = load i16, ptr %ip_summed.i, align 8
  %164 = and i16 %bf.load.i302, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %164)
  %cmp.not.i = icmp eq i16 %164, 1536
  br i1 %cmp.not.i, label %if.end.i305, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end114
  %165 = tail call i32 @llvm.bswap.i32(i32 %add115) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0334.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i304, %for.body.i.for.body.i_crit_edge ]
  %arrayidx10.i = getelementptr ptr, ptr %frames, i32 %i.0334.i
  %166 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx10.i, align 4
  %page11.i = getelementptr inbounds %struct.tbnet_frame, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %page11.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %page11.i, align 4
  %call12.i = tail call ptr @page_address(ptr noundef %169) #10
  %frame_count13.i = getelementptr inbounds %struct.thunderbolt_ip_frame_header, ptr %call12.i, i32 0, i32 3
  %170 = ptrtoint ptr %frame_count13.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %165, ptr %frame_count13.i, align 4
  %frame.i303 = getelementptr inbounds %struct.tbnet_frame, ptr %167, i32 0, i32 2
  %171 = ptrtoint ptr %frame.i303 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %frame.i303, align 4
  %size.i.i = getelementptr inbounds %struct.tbnet_frame, ptr %167, i32 0, i32 2, i32 3
  %173 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %bf.load.i.i = load i32, ptr %size.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp ult i32 %bf.load.i.i, 1048576
  %bf.lshr..i.i = select i1 %tobool.not.i.i, i32 4096, i32 %bf.lshr.i.i
  tail call void @dma_sync_single_for_device(ptr noundef %dev.i.i298, i32 noundef %172, i32 noundef %bf.lshr..i.i, i32 noundef 1) #10
  %inc.i304 = add nuw nsw i32 %i.0334.i, 1
  %exitcond.not.i = icmp eq i32 %i.0334.i, %frame_index.0.lcssa
  br i1 %exitcond.not.i, label %for.body.i.for.body.preheader_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.body.preheader_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end.i305:                                      ; preds = %if.end114
  %protocol5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %174 = ptrtoint ptr %protocol5.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %protocol5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %175)
  %cmp18.i = icmp eq i16 %175, -32512
  br i1 %cmp18.i, label %if.then20.i, label %if.end.i305.if.end25.i_crit_edge

if.end.i305.if.end25.i_crit_edge:                 ; preds = %if.end.i305
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then20.i:                                      ; preds = %if.end.i305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vh.i) #10
  %176 = ptrtoint ptr %vh.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 -1, ptr %vh.i, align 2, !annotation !96
  %177 = getelementptr inbounds %struct.vlan_hdr, ptr %vh.i, i32 0, i32 1
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 -1, ptr %177, align 2, !annotation !96
  %179 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %data_len.i, align 8
  %sub.i.i.i = add i32 %156, -14
  %sub.i1.i.i = sub i32 %sub.i.i.i, %180
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 3
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !91

if.end.i.i.i:                                     ; preds = %if.then20.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.cleanup.thread.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.cleanup.thread.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i306 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 14, ptr noundef nonnull %vh.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i306)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i306, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.cleanup.thread.i_crit_edge, label %lor.lhs.false.i.i.i.cleanup.i_crit_edge

lor.lhs.false.i.i.i.cleanup.i_crit_edge:          ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

lor.lhs.false.i.i.i.cleanup.thread.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

skb_header_pointer.exit.i:                        ; preds = %if.then20.i
  %add.ptr.i.i233.i = getelementptr i8, ptr %162, i32 14
  %tobool.not.i307 = icmp eq ptr %add.ptr.i.i233.i, null
  br i1 %tobool.not.i307, label %skb_header_pointer.exit.i.cleanup.thread.i_crit_edge, label %skb_header_pointer.exit.i.cleanup.i_crit_edge

skb_header_pointer.exit.i.cleanup.i_crit_edge:    ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

skb_header_pointer.exit.i.cleanup.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %skb_header_pointer.exit.i.cleanup.thread.i_crit_edge, %lor.lhs.false.i.i.i.cleanup.thread.i_crit_edge, %if.end.i.i.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vh.i) #10
  br label %err_drop

cleanup.i:                                        ; preds = %skb_header_pointer.exit.i.cleanup.i_crit_edge, %lor.lhs.false.i.i.i.cleanup.i_crit_edge
  %retval.0.i.i326.i = phi ptr [ %add.ptr.i.i233.i, %skb_header_pointer.exit.i.cleanup.i_crit_edge ], [ %vh.i, %lor.lhs.false.i.i.i.cleanup.i_crit_edge ]
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i326.i, i32 0, i32 1
  %181 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vh.i) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %cleanup.i, %if.end.i305.if.end25.i_crit_edge
  %protocol.1.i = phi i16 [ %182, %cleanup.i ], [ %175, %if.end.i305.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %protocol.1.i)
  %cmp27.i = icmp eq i16 %protocol.1.i, 2048
  br i1 %cmp27.i, label %if.then29.i, label %if.else76.i

if.then29.i:                                      ; preds = %if.end25.i
  %183 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %185 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i235.i = zext i16 %186 to i32
  %add.ptr.i.i236.i = getelementptr i8, ptr %184, i32 %conv.i.i235.i
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i236.i, i32 0, i32 7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %check.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  %add.ptr31.i = getelementptr i8, ptr %add.ptr.i301, i32 %sub.ptr.sub.i
  %187 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 0, ptr %add.ptr31.i, align 2
  %188 = load ptr, ptr %head.i.i.i, align 8
  %189 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i239.i = zext i16 %189 to i32
  %add.ptr.i.i240.i = getelementptr i8, ptr %188, i32 %conv.i.i239.i
  %190 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i242.i = ptrtoint ptr %add.ptr.i.i240.i to i32
  %sub.ptr.rhs.cast.i243.i = ptrtoint ptr %191 to i32
  %sub.ptr.sub.i244.i = sub i32 %sub.ptr.lhs.cast.i242.i, %sub.ptr.rhs.cast.i243.i
  %add.ptr33.i = getelementptr i8, ptr %add.ptr.i301, i32 %sub.ptr.sub.i244.i
  %192 = ptrtoint ptr %add.ptr.i.i240.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %bf.load35.i = load i8, ptr %add.ptr.i.i240.i, align 4
  %bf.clear36.i = and i8 %bf.load35.i, 15
  %conv37.i = zext i8 %bf.clear36.i to i32
  %193 = call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr33.i, i32 %conv37.i) #10, !srcloc !97
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %193, 0
  %194 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #15, !srcloc !98
  %neg.i.i.i = xor i32 %194, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i249.i = trunc i32 %shr.i.i.i to i16
  %195 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv.i.i249.i, ptr %add.ptr31.i, align 2
  %196 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %head.i.i.i, align 8
  %198 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i252.i = zext i16 %199 to i32
  %add.ptr.i.i253.i = getelementptr i8, ptr %197, i32 %conv.i.i252.i
  %protocol40.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i253.i, i32 0, i32 6
  %200 = ptrtoint ptr %protocol40.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %protocol40.i, align 1
  %202 = zext i8 %201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %201, label %if.then29.i.err_drop_crit_edge [
    i8 6, label %if.then44.i
    i8 17, label %if.then56.i
  ]

if.then29.i.err_drop_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_drop

if.then44.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  %203 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i256.i = zext i16 %204 to i32
  %add.ptr.i.i257.i = getelementptr i8, ptr %197, i32 %conv.i.i256.i
  %check46.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i257.i, i32 0, i32 6
  br label %cleanup73.thread.i

if.then56.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #12
  %205 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i264.i = zext i16 %206 to i32
  %add.ptr.i.i265.i = getelementptr i8, ptr %197, i32 %conv.i.i264.i
  %check58.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i265.i, i32 0, i32 3
  br label %cleanup73.thread.i

cleanup73.thread.i:                               ; preds = %if.then56.i, %if.then44.i
  %sub.ptr.lhs.cast47.pn.in.i = phi ptr [ %check46.i, %if.then44.i ], [ %check58.i, %if.then56.i ]
  %sub.ptr.lhs.cast47.pn.i = ptrtoint ptr %sub.ptr.lhs.cast47.pn.in.i to i32
  %sub.ptr.sub49.pn.i = sub i32 %sub.ptr.lhs.cast47.pn.i, %sub.ptr.rhs.cast.i.i
  %tucso.0.i = getelementptr i8, ptr %add.ptr.i301, i32 %sub.ptr.sub49.pn.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i253.i, i32 0, i32 8
  %207 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i253.i, i32 0, i32 9
  %209 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %daddr.i, align 4
  %conv.i.i278.i = zext i8 %201 to i32
  %211 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %210, i32 %208, i32 %conv.i.i278.i) #15, !srcloc !99
  %212 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %211) #15, !srcloc !98
  br label %for.body118.lr.ph.i

if.else76.i:                                      ; preds = %if.end25.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %213 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %end.i.i.i, align 4
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %214, i32 0, i32 8
  %215 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %gso_type.i.i, align 8
  %and.i.i = and i32 %216, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else93.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #12
  %217 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %head.i.i.i, align 8
  %219 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i283.i = zext i16 %220 to i32
  %add.ptr.i.i284.i = getelementptr i8, ptr %218, i32 %conv.i.i283.i
  %check80.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i284.i, i32 0, i32 6
  %sub.ptr.lhs.cast81.i = ptrtoint ptr %check80.i to i32
  %sub.ptr.sub83.i = sub i32 %sub.ptr.lhs.cast81.i, %sub.ptr.rhs.cast.i.i
  %add.ptr84.i = getelementptr i8, ptr %add.ptr.i301, i32 %sub.ptr.sub83.i
  %network_header.i.i286.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %221 = ptrtoint ptr %network_header.i.i286.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %network_header.i.i286.i, align 4
  %conv.i.i287.i = zext i16 %222 to i32
  %add.ptr.i.i288.i = getelementptr i8, ptr %218, i32 %conv.i.i287.i
  %saddr86.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i288.i, i32 0, i32 5
  %daddr88.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i288.i, i32 0, i32 6
  %call.i.i308 = call i32 @__csum_ipv6_magic(ptr noundef %saddr86.i, ptr noundef %daddr88.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #10
  %223 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i308) #15, !srcloc !98
  %neg.i.i293.i = xor i32 %223, -1
  %shr.i.i294.i = lshr i32 %neg.i.i293.i, 16
  %conv.i.i295.i = trunc i32 %shr.i.i294.i to i16
  %neg91.i = xor i16 %conv.i.i295.i, -1
  %224 = ptrtoint ptr %add.ptr84.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %neg91.i, ptr %add.ptr84.i, align 2
  br label %err_drop

if.else93.i:                                      ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %protocol.1.i)
  %cmp95.i = icmp eq i16 %protocol.1.i, -31011
  br i1 %cmp95.i, label %if.then97.i, label %if.else93.i.err_drop_crit_edge

if.else93.i.err_drop_crit_edge:                   ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_drop

if.then97.i:                                      ; preds = %if.else93.i
  call void @__sanitizer_cov_trace_pc() #12
  %225 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %225, align 8
  %conv.i.i = zext i16 %227 to i32
  %228 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %data, align 4
  %230 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %229 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %231 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i309 = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.ptr99.i = getelementptr i8, ptr %add.ptr.i301, i32 %sub.i.i309
  %csum_offset.i = getelementptr inbounds %struct.anon.60, ptr %225, i32 0, i32 1
  %232 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %csum_offset.i, align 2
  %conv100.i = zext i16 %233 to i32
  %add.ptr101.i = getelementptr i8, ptr %add.ptr99.i, i32 %conv100.i
  %network_header.i.i298.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %234 = ptrtoint ptr %network_header.i.i298.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %network_header.i.i298.i, align 4
  %conv.i.i299.i = zext i16 %235 to i32
  %add.ptr.i.i300.i = getelementptr i8, ptr %231, i32 %conv.i.i299.i
  %saddr103.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i300.i, i32 0, i32 5
  %daddr105.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i300.i, i32 0, i32 6
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i300.i, i32 0, i32 3
  %236 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %nexthdr.i, align 2
  %conv.i309.i = zext i8 %237 to i32
  %call.i310.i = call i32 @__csum_ipv6_magic(ptr noundef %saddr103.i, ptr noundef %daddr105.i, i32 noundef 0, i32 noundef %conv.i309.i, i32 noundef 0) #10
  %238 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i310.i) #15, !srcloc !98
  br label %for.body118.lr.ph.i

for.body118.lr.ph.i:                              ; preds = %if.then97.i, %cleanup73.thread.i
  %.sink.i = phi i32 [ %212, %cleanup73.thread.i ], [ %238, %if.then97.i ]
  %tucso.0.sink.i = phi ptr [ %tucso.0.i, %cleanup73.thread.i ], [ %add.ptr101.i, %if.then97.i ]
  %neg.i.i279.i = xor i32 %.sink.i, -1
  %shr.i.i280.i = lshr i32 %neg.i.i279.i, 16
  %conv.i1.i.i = trunc i32 %shr.i.i280.i to i16
  %neg.i = xor i16 %conv.i1.i.i, -1
  %239 = ptrtoint ptr %tucso.0.sink.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %neg.i, ptr %tucso.0.sink.i, align 2
  %240 = call i32 @llvm.bswap.i32(i32 %add115) #10
  %241 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %page.i, align 4
  %call121.peel.i = call ptr @page_address(ptr noundef %242) #10
  %add.ptr122.peel.i = getelementptr %struct.thunderbolt_ip_frame_header, ptr %call121.peel.i, i32 1
  %add.ptr123.peel.i = getelementptr i8, ptr %add.ptr122.peel.i, i32 %sub.ptr.sub.i.i
  %243 = ptrtoint ptr %call121.peel.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %call121.peel.i, align 4
  %245 = call i32 @llvm.bswap.i32(i32 %244) #10
  %sub124.peel.i = sub i32 %245, %sub.ptr.sub.i.i
  %call125.peel.i = call i32 @csum_partial(ptr noundef %add.ptr123.peel.i, i32 noundef %sub124.peel.i, i32 noundef %sub.i300) #10
  %frame_count126.peel.i = getelementptr inbounds %struct.thunderbolt_ip_frame_header, ptr %call121.peel.i, i32 0, i32 3
  %246 = ptrtoint ptr %frame_count126.peel.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %240, ptr %frame_count126.peel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame_index.0.lcssa)
  %exitcond342.peel.not.i = icmp eq i32 %frame_index.0.lcssa, 0
  br i1 %exitcond342.peel.not.i, label %for.body134.preheader.critedge.i, label %for.body118.lr.ph.i.for.body118.i_crit_edge

for.body118.lr.ph.i.for.body118.i_crit_edge:      ; preds = %for.body118.lr.ph.i
  br label %for.body118.i

for.body118.i:                                    ; preds = %for.body118.i.for.body118.i_crit_edge, %for.body118.lr.ph.i.for.body118.i_crit_edge
  %i.1337.i = phi i32 [ %inc128.i, %for.body118.i.for.body118.i_crit_edge ], [ 1, %for.body118.lr.ph.i.for.body118.i_crit_edge ]
  %wsum.0336.i = phi i32 [ %call125.i, %for.body118.i.for.body118.i_crit_edge ], [ %call125.peel.i, %for.body118.lr.ph.i.for.body118.i_crit_edge ]
  %arrayidx119.i = getelementptr ptr, ptr %frames, i32 %i.1337.i
  %247 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx119.i, align 4
  %page120.i = getelementptr inbounds %struct.tbnet_frame, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %page120.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %page120.i, align 4
  %call121.i = call ptr @page_address(ptr noundef %250) #10
  %add.ptr122.i = getelementptr %struct.thunderbolt_ip_frame_header, ptr %call121.i, i32 1
  %251 = ptrtoint ptr %call121.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %call121.i, align 4
  %253 = call i32 @llvm.bswap.i32(i32 %252) #10
  %call125.i = call i32 @csum_partial(ptr noundef %add.ptr122.i, i32 noundef %253, i32 noundef %wsum.0336.i) #10
  %frame_count126.i = getelementptr inbounds %struct.thunderbolt_ip_frame_header, ptr %call121.i, i32 0, i32 3
  %254 = ptrtoint ptr %frame_count126.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %240, ptr %frame_count126.i, align 4
  %inc128.i = add nuw nsw i32 %i.1337.i, 1
  %exitcond342.not.i = icmp eq i32 %i.1337.i, %frame_index.0.lcssa
  br i1 %exitcond342.not.i, label %for.end129.i, label %for.body118.i.for.body118.i_crit_edge, !llvm.loop !100

for.body118.i.for.body118.i_crit_edge:            ; preds = %for.body118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body118.i

for.end129.i:                                     ; preds = %for.body118.i
  call void @__sanitizer_cov_trace_pc() #12
  %255 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call125.i) #15, !srcloc !98
  br label %for.body134.preheader.i

for.body134.preheader.critedge.i:                 ; preds = %for.body118.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  %256 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call125.peel.i) #15, !srcloc !98
  br label %for.body134.preheader.i

for.body134.preheader.i:                          ; preds = %for.body134.preheader.critedge.i, %for.end129.i
  %storemerge.in.in.in = phi i32 [ %255, %for.end129.i ], [ %256, %for.body134.preheader.critedge.i ]
  %storemerge.in.in = xor i32 %storemerge.in.in.in, -1
  %storemerge.in = lshr i32 %storemerge.in.in, 16
  %storemerge = trunc i32 %storemerge.in to i16
  %257 = ptrtoint ptr %tucso.0.sink.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %storemerge, ptr %tucso.0.sink.i, align 2
  br label %for.body134.i

for.body134.i:                                    ; preds = %for.body134.i.for.body134.i_crit_edge, %for.body134.preheader.i
  %i.2340.i = phi i32 [ %inc141.i, %for.body134.i.for.body134.i_crit_edge ], [ 0, %for.body134.preheader.i ]
  %arrayidx135.i = getelementptr ptr, ptr %frames, i32 %i.2340.i
  %258 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx135.i, align 4
  %frame136.i = getelementptr inbounds %struct.tbnet_frame, ptr %259, i32 0, i32 2
  %260 = ptrtoint ptr %frame136.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %frame136.i, align 4
  %size.i315.i = getelementptr inbounds %struct.tbnet_frame, ptr %259, i32 0, i32 2, i32 3
  %262 = ptrtoint ptr %size.i315.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %bf.load.i316.i = load i32, ptr %size.i315.i, align 4
  %bf.lshr.i317.i = lshr i32 %bf.load.i316.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %bf.load.i316.i)
  %tobool.not.i318.i = icmp ult i32 %bf.load.i316.i, 1048576
  %bf.lshr..i319.i = select i1 %tobool.not.i318.i, i32 4096, i32 %bf.lshr.i317.i
  call void @dma_sync_single_for_device(ptr noundef %dev.i.i298, i32 noundef %261, i32 noundef %bf.lshr..i319.i, i32 noundef 1) #10
  %inc141.i = add nuw nsw i32 %i.2340.i, 1
  %exitcond344.not.i = icmp eq i32 %i.2340.i, %frame_index.0.lcssa
  br i1 %exitcond344.not.i, label %for.body134.i.for.body.preheader_crit_edge, label %for.body134.i.for.body134.i_crit_edge

for.body134.i.for.body134.i_crit_edge:            ; preds = %for.body134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body134.i

for.body134.i.for.body.preheader_crit_edge:       ; preds = %for.body134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %for.body134.i.for.body.preheader_crit_edge, %for.body.i.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %tb_ring_tx.exit.for.body_crit_edge, %for.body.preheader
  %i.0406 = phi i32 [ %inc126, %tb_ring_tx.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %263 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %ring1.i, align 4
  %arrayidx123 = getelementptr [17 x ptr], ptr %frames, i32 0, i32 %i.0406
  %265 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %arrayidx123, align 4
  %frame124 = getelementptr inbounds %struct.tbnet_frame, ptr %266, i32 0, i32 2
  %is_tx.i = getelementptr inbounds %struct.tb_ring, ptr %264, i32 0, i32 11
  %267 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %bf.load.i310 = load i8, ptr %is_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i310)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i310, -1
  br i1 %bf.cast.not.i, label %do.end.i, label %for.body.tb_ring_tx.exit_crit_edge, !prof !102

for.body.tb_ring_tx.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %tb_ring_tx.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 639, i32 noundef 9, ptr noundef null) #10
  br label %tb_ring_tx.exit

tb_ring_tx.exit:                                  ; preds = %do.end.i, %for.body.tb_ring_tx.exit_crit_edge
  %call.i311 = call i32 @__tb_ring_enqueue(ptr noundef %264, ptr noundef %frame124) #10
  %inc126 = add nuw nsw i32 %i.0406, 1
  %exitcond432.not = icmp eq i32 %i.0406, %frame_index.0.lcssa
  br i1 %exitcond432.not, label %for.end, label %tb_ring_tx.exit.for.body_crit_edge

tb_ring_tx.exit.for.body_crit_edge:               ; preds = %tb_ring_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %tb_ring_tx.exit
  %268 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %add.ptr.i, align 8
  %prtcstns = getelementptr inbounds %struct.tb_service, ptr %269, i32 0, i32 6
  %270 = ptrtoint ptr %prtcstns to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %prtcstns, align 4
  %and = and i32 %271, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool127.not = icmp eq i32 %and, 0
  br i1 %tobool127.not, label %for.end.if.end130_crit_edge, label %if.then128

for.end.if.end130_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then128:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i245 = call zeroext i1 @__kasan_check_write(ptr noundef %frame_id1, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %frame_id1, i32 1, i32 3, i32 1) #10
  %272 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frame_id1, ptr %frame_id1, i32 1, ptr elementtype(i32) %frame_id1) #10, !srcloc !103
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %for.end.if.end130_crit_edge
  %stats = getelementptr i8, ptr %dev, i32 2560
  %273 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %stats, align 8
  %inc131 = add i64 %274, 1
  store i64 %inc131, ptr %stats, align 8
  %275 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %len.i, align 4
  %conv133 = zext i32 %276 to i64
  %tx_bytes = getelementptr i8, ptr %dev, i32 2576
  %277 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %tx_bytes, align 8
  %add135 = add i64 %278, %conv133
  store i64 %add135, ptr %tx_bytes, align 8
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup140

err_drop:                                         ; preds = %if.else93.i.err_drop_crit_edge, %if.then78.i, %if.then29.i.err_drop_crit_edge, %cleanup.thread.i, %if.else93.err_drop_crit_edge, %tbnet_get_tx_buffer.exit266.err_drop_crit_edge, %tbnet_get_tx_buffer.exit266.thread, %if.else.err_drop_crit_edge, %tbnet_get_tx_buffer.exit.err_drop_crit_edge, %if.end.err_drop_crit_edge
  %frame_index.2 = phi i32 [ 0, %tbnet_get_tx_buffer.exit.err_drop_crit_edge ], [ %inc53, %tbnet_get_tx_buffer.exit266.thread ], [ %frame_index.0.lcssa, %if.then78.i ], [ %frame_index.0.lcssa, %if.else93.i.err_drop_crit_edge ], [ %frame_index.0.lcssa, %cleanup.thread.i ], [ %frame_index.0.lcssa, %if.then29.i.err_drop_crit_edge ], [ 0, %if.end.err_drop_crit_edge ], [ %frame_index.0.lcssa, %if.else93.err_drop_crit_edge ], [ %frame_index.0382, %if.else.err_drop_crit_edge ], [ %inc53, %tbnet_get_tx_buffer.exit266.err_drop_crit_edge ]
  %279 = ptrtoint ptr %cons.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %cons.i, align 4
  %sub137 = sub i32 %280, %frame_index.2
  store i32 %sub137, ptr %cons.i, align 4
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  %tx_errors = getelementptr i8, ptr %dev, i32 2600
  %281 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %tx_errors, align 8
  %inc139 = add i64 %282, 1
  store i64 %inc139, ptr %tx_errors, align 8
  br label %cleanup140

cleanup140:                                       ; preds = %err_drop, %if.end130, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %err_drop ], [ 0, %if.end130 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frames) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tbnet_get_stats64(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stats) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %dev, i32 2560
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats1, align 8
  %tx_packets2 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %2 = ptrtoint ptr %tx_packets2 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %tx_packets2, align 8
  %rx_packets = getelementptr i8, ptr %dev, i32 2568
  %3 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rx_packets, align 8
  %5 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %stats, align 8
  %tx_bytes = getelementptr i8, ptr %dev, i32 2576
  %6 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_bytes, align 8
  %tx_bytes6 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %8 = ptrtoint ptr %tx_bytes6 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %tx_bytes6, align 8
  %rx_bytes = getelementptr i8, ptr %dev, i32 2584
  %9 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rx_bytes, align 8
  %rx_bytes8 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %11 = ptrtoint ptr %rx_bytes8 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %rx_bytes8, align 8
  %rx_errors = getelementptr i8, ptr %dev, i32 2592
  %12 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_errors, align 8
  %rx_length_errors = getelementptr i8, ptr %dev, i32 2608
  %14 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_length_errors, align 8
  %add = add i64 %15, %13
  %rx_over_errors = getelementptr i8, ptr %dev, i32 2616
  %16 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_over_errors, align 8
  %add12 = add i64 %add, %17
  %rx_crc_errors = getelementptr i8, ptr %dev, i32 2624
  %18 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_crc_errors, align 8
  %add14 = add i64 %add12, %19
  %rx_missed_errors = getelementptr i8, ptr %dev, i32 2632
  %20 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rx_missed_errors, align 8
  %add16 = add i64 %add14, %21
  %rx_errors17 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %22 = ptrtoint ptr %rx_errors17 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add16, ptr %rx_errors17, align 8
  %tx_errors = getelementptr i8, ptr %dev, i32 2600
  %23 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tx_errors, align 8
  %tx_errors19 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %25 = ptrtoint ptr %tx_errors19 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %tx_errors19, align 8
  %26 = load i64, ptr %rx_length_errors, align 8
  %rx_length_errors22 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 10
  %27 = ptrtoint ptr %rx_length_errors22 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %rx_length_errors22, align 8
  %28 = load i64, ptr %rx_over_errors, align 8
  %rx_over_errors25 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 11
  %29 = ptrtoint ptr %rx_over_errors25 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %rx_over_errors25, align 8
  %30 = load i64, ptr %rx_crc_errors, align 8
  %rx_crc_errors28 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %31 = ptrtoint ptr %rx_crc_errors28 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %rx_crc_errors28, align 8
  %32 = load i64, ptr %rx_missed_errors, align 8
  %rx_missed_errors31 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 15
  %33 = ptrtoint ptr %rx_missed_errors31 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %rx_missed_errors31, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_ring_alloc_tx(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_alloc_out_hopid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ring_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_ring_alloc_rx(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tbnet_start_poll(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.tbnet, ptr %data, i32 0, i32 4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_xdomain_release_out_hopid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_ring_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ring_poll_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tbnet_login_response(ptr nocapture noundef readonly %net, i64 noundef %route, i8 noundef zeroext %sequence, i32 noundef %command_id) unnamed_addr #3 align 64 {
entry:
  %reply = alloca %struct.thunderbolt_ip_login_response, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %reply) #10
  %xd1 = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 1
  %0 = ptrtoint ptr %xd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xd1, align 4
  %2 = getelementptr inbounds i8, ptr %reply, i32 68
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %local_uuid = getelementptr inbounds %struct.tb_xdomain, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %local_uuid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_uuid, align 8
  %remote_uuid = getelementptr inbounds %struct.tb_xdomain, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %remote_uuid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remote_uuid, align 4
  %conv.i = zext i8 %sequence to i32
  %shl.i = shl i32 %conv.i, 27
  %and.i = and i32 %shl.i, 402653184
  %or.i = or i32 %and.i, 22
  %shr.i = lshr i64 %route, 32
  %conv2.i = trunc i64 %shr.i to i32
  %8 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2.i, ptr %reply, align 4
  %conv4.i = trunc i64 %route to i32
  %route_lo.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply, i32 0, i32 1
  %9 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4.i, ptr %route_lo.i, align 4
  %length_sn5.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply, i32 0, i32 2
  %10 = ptrtoint ptr %length_sn5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %length_sn5.i, align 4
  %uuid.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply, i32 0, i32 3
  %11 = call ptr @memcpy(ptr %uuid.i, ptr @tbnet_svc_uuid, i32 16)
  %initiator_uuid6.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply, i32 0, i32 4
  %12 = call ptr @memcpy(ptr %initiator_uuid6.i, ptr %5, i32 16)
  %target_uuid7.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply, i32 0, i32 5
  %13 = call ptr @memcpy(ptr %target_uuid7.i, ptr %7, i32 16)
  %type8.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply, i32 0, i32 6
  %14 = ptrtoint ptr %type8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type8.i, align 4
  %command_id9.i = getelementptr inbounds %struct.thunderbolt_ip_header, ptr %reply, i32 0, i32 7
  %15 = ptrtoint ptr %command_id9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %command_id, ptr %command_id9.i, align 4
  %receiver_mac = getelementptr inbounds %struct.thunderbolt_ip_login_response, ptr %reply, i32 0, i32 2
  %dev = getelementptr inbounds %struct.tbnet, ptr %net, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %20 = call ptr @memcpy(ptr %receiver_mac, ptr %19, i32 6)
  %receiver_mac_len = getelementptr inbounds %struct.thunderbolt_ip_login_response, ptr %reply, i32 0, i32 3
  %21 = ptrtoint ptr %receiver_mac_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %receiver_mac_len, align 4
  %call = call i32 @tb_xdomain_response(ptr noundef %1, ptr noundef nonnull %reply, i32 noundef 100, i32 noundef 7) #10
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %reply) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_response(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_thunderbolt_net__499_1383_tbnet_init6, !1, !"__initcall__kmod_thunderbolt_net__499_1383_tbnet_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/thunderbolt.c", i32 1383, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/thunderbolt.c", i32 1388, i32 29}
!4 = !{ptr @__exitcall_tbnet_exit, !5, !"__exitcall_tbnet_exit", i1 false, i1 false}
!5 = !{!"../drivers/net/thunderbolt.c", i32 1391, i32 1}
!6 = !{ptr @__UNIQUE_ID_author500, !7, !"__UNIQUE_ID_author500", i1 false, i1 false}
!7 = !{!"../drivers/net/thunderbolt.c", i32 1393, i32 1}
!8 = !{ptr @__UNIQUE_ID_author501, !9, !"__UNIQUE_ID_author501", i1 false, i1 false}
!9 = !{!"../drivers/net/thunderbolt.c", i32 1394, i32 1}
!10 = !{ptr @__UNIQUE_ID_author502, !11, !"__UNIQUE_ID_author502", i1 false, i1 false}
!11 = !{!"../drivers/net/thunderbolt.c", i32 1395, i32 1}
!12 = !{ptr @__UNIQUE_ID_description503, !13, !"__UNIQUE_ID_description503", i1 false, i1 false}
!13 = !{!"../drivers/net/thunderbolt.c", i32 1396, i32 1}
!14 = !{ptr @__UNIQUE_ID_file504, !15, !"__UNIQUE_ID_file504", i1 false, i1 false}
!15 = !{!"../drivers/net/thunderbolt.c", i32 1397, i32 1}
!16 = !{ptr @__UNIQUE_ID_license505, !15, !"__UNIQUE_ID_license505", i1 false, i1 false}
!17 = !{ptr @tbnet_dir, !18, !"tbnet_dir", i1 false, i1 false}
!18 = !{!"../drivers/net/thunderbolt.c", i32 210, i32 32}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/thunderbolt.c", i32 1365, i32 39}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/thunderbolt.c", i32 1366, i32 39}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/thunderbolt.c", i32 1367, i32 39}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/thunderbolt.c", i32 1372, i32 39}
!27 = !{ptr @tbnet_dir_uuid, !28, !"tbnet_dir_uuid", i1 false, i1 false}
!28 = !{!"../drivers/net/thunderbolt.c", i32 201, i32 21}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/thunderbolt.c", i32 1348, i32 11}
!31 = !{ptr @tbnet_driver, !32, !"tbnet_driver", i1 false, i1 false}
!32 = !{!"../drivers/net/thunderbolt.c", i32 1345, i32 33}
!33 = !{ptr @tbnet_pm_ops, !34, !"tbnet_pm_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/thunderbolt.c", i32 1335, i32 32}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/thunderbolt.c", i32 387, i32 26}
!37 = !{ptr @tbnet_svc_uuid, !38, !"tbnet_svc_uuid", i1 false, i1 false}
!38 = !{!"../drivers/net/thunderbolt.c", i32 206, i32 21}
!39 = !{ptr @tbnet_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/thunderbolt.c", i32 1234, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tbnet_probe.__key.8, !40, !"__key", i1 false, i1 false}
!43 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tbnet_probe.__key.10, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/thunderbolt.c", i32 1235, i32 2}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tbnet_probe.__key.12, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/net/thunderbolt.c", i32 1236, i32 2}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tbnet_probe.__key.14, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/net/thunderbolt.c", i32 1237, i32 2}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/thunderbolt.c", i32 1246, i32 20}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/thunderbolt.c", i32 665, i32 26}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/thunderbolt.c", i32 611, i32 24}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/thunderbolt.c", i32 623, i32 24}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/thunderbolt.h", i32 618, i32 2}
!65 = !{ptr @tbnet_netdev_ops, !66, !"tbnet_netdev_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/thunderbolt.c", i32 1194, i32 36}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/thunderbolt.c", i32 877, i32 19}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/thunderbolt.c", i32 884, i32 19}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/thunderbolt.c", i32 898, i32 19}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/thunderbolt.c", i32 465, i32 25}
!75 = !{ptr @tbnet_ids, !76, !"tbnet_ids", i1 false, i1 false}
!76 = !{!"../drivers/net/thunderbolt.c", i32 1339, i32 35}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i8 0, i8 2}
!88 = !{i64 2148238359}
!89 = !{i64 2148153668, i64 2148153700, i64 2148153729, i64 2148153763, i64 2148153794, i64 2148153817}
!90 = !{i64 2148238588}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2152213986}
!93 = !{i64 2153672550}
!94 = !{i64 2153669779}
!95 = !{i64 2152213779}
!96 = !{!"auto-init"}
!97 = !{i64 6941018, i64 6941057, i64 6941083, i64 6941107, i64 6941132, i64 6941158, i64 6941183, i64 6941209, i64 6941236, i64 6941262, i64 6941301, i64 6941345, i64 6941376, i64 6941401}
!98 = !{i64 6940635}
!99 = !{i64 6941737, i64 6941778, i64 6941823}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.peeled.count", i32 1}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 2148152948, i64 2148152974, i64 2148153003, i64 2148153037, i64 2148153068, i64 2148153091}
