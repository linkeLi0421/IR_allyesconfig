; ModuleID = '/llk/IR_all_yes/drivers/atm/solos-pci.c_pt.bc'
source_filename = "../drivers/atm/solos-pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.geos_gpio_attr = type { %struct.device_attribute, i32 }
%struct.solos_card = type { ptr, ptr, i32, i32, ptr, [4 x ptr], %struct.tasklet_struct, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, [4 x %struct.sk_buff_head], [4 x %struct.sk_buff_head], [4 x ptr], [4 x ptr], ptr, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.153, i32 }
%union.anon.153 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.145, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.145 = type { ptr }
%struct.pkt_hdr = type { i16, i16, i16, i16 }
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
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.146, i8, %union.anon.148 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i8, i8 }
%union.anon.148 = type { %struct.anon.151 }
%struct.anon.151 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.152 }
%struct.anon.152 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.solos_param = type { %struct.list_head, i32, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.108 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__UNIQUE_ID_author459 = internal constant [65 x i8] c"solos_pci.author=Traverse Technologies <support@traverse.com.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description460 = internal constant [39 x i8] c"solos_pci.description=Solos PCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version461 = internal constant [23 x i8] c"solos_pci.version=1.04\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"solos_pci\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.04\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file462 = internal constant [37 x i8] c"solos_pci.file=drivers/atm/solos-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license463 = internal constant [22 x i8] c"solos_pci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware464 = internal constant [34 x i8] c"solos_pci.firmware=solos-FPGA.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware465 = internal constant [38 x i8] c"solos_pci.firmware=solos-Firmware.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware466 = internal constant [37 x i8] c"solos_pci.firmware=solos-db-FPGA.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_reset467 = internal constant [50 x i8] c"solos_pci.parm=reset:Reset Solos chips on startup\00", section ".modinfo", align 1
@__UNIQUE_ID_atmdebug468 = internal constant [39 x i8] c"solos_pci.parm=atmdebug:Print ATM data\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware_upgrade469 = internal constant [64 x i8] c"solos_pci.parm=firmware_upgrade:Initiate Solos firmware upgrade\00", section ".modinfo", align 1
@__UNIQUE_ID_fpga_upgrade470 = internal constant [50 x i8] c"solos_pci.parm=fpga_upgrade:Initiate FPGA upgrade\00", section ".modinfo", align 1
@__UNIQUE_ID_db_firmware_upgrade471 = internal constant [82 x i8] c"solos_pci.parm=db_firmware_upgrade:Initiate daughter board Solos firmware upgrade\00", section ".modinfo", align 1
@__UNIQUE_ID_db_fpga_upgrade472 = internal constant [68 x i8] c"solos_pci.parm=db_fpga_upgrade:Initiate daughter board FPGA upgrade\00", section ".modinfo", align 1
@__param_str_reset = internal constant [16 x i8] c"solos_pci.reset\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@reset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_reset = internal constant %struct.kernel_param { ptr @__param_str_reset, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @reset } }, section "__param", align 4
@__UNIQUE_ID_resettype473 = internal constant [29 x i8] c"solos_pci.parmtype=reset:int\00", section ".modinfo", align 1
@__param_str_atmdebug = internal constant [19 x i8] c"solos_pci.atmdebug\00", align 1
@atmdebug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_atmdebug = internal constant %struct.kernel_param { ptr @__param_str_atmdebug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @atmdebug } }, section "__param", align 4
@__UNIQUE_ID_atmdebugtype474 = internal constant [32 x i8] c"solos_pci.parmtype=atmdebug:int\00", section ".modinfo", align 1
@__param_str_firmware_upgrade = internal constant [27 x i8] c"solos_pci.firmware_upgrade\00", align 1
@firmware_upgrade = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_firmware_upgrade = internal constant %struct.kernel_param { ptr @__param_str_firmware_upgrade, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @firmware_upgrade } }, section "__param", align 4
@__UNIQUE_ID_firmware_upgradetype475 = internal constant [40 x i8] c"solos_pci.parmtype=firmware_upgrade:int\00", section ".modinfo", align 1
@__param_str_fpga_upgrade = internal constant [23 x i8] c"solos_pci.fpga_upgrade\00", align 1
@fpga_upgrade = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fpga_upgrade = internal constant %struct.kernel_param { ptr @__param_str_fpga_upgrade, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @fpga_upgrade } }, section "__param", align 4
@__UNIQUE_ID_fpga_upgradetype476 = internal constant [36 x i8] c"solos_pci.parmtype=fpga_upgrade:int\00", section ".modinfo", align 1
@__param_str_db_firmware_upgrade = internal constant [30 x i8] c"solos_pci.db_firmware_upgrade\00", align 1
@db_firmware_upgrade = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_db_firmware_upgrade = internal constant %struct.kernel_param { ptr @__param_str_db_firmware_upgrade, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @db_firmware_upgrade } }, section "__param", align 4
@__UNIQUE_ID_db_firmware_upgradetype477 = internal constant [43 x i8] c"solos_pci.parmtype=db_firmware_upgrade:int\00", section ".modinfo", align 1
@__param_str_db_fpga_upgrade = internal constant [26 x i8] c"solos_pci.db_fpga_upgrade\00", align 1
@db_fpga_upgrade = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_db_fpga_upgrade = internal constant %struct.kernel_param { ptr @__param_str_db_fpga_upgrade, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @db_fpga_upgrade } }, section "__param", align 4
@__UNIQUE_ID_db_fpga_upgradetype478 = internal constant [39 x i8] c"solos_pci.parmtype=db_fpga_upgrade:int\00", section ".modinfo", align 1
@fpga_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @fpga_pci_tbl, ptr @fpga_probe, ptr @fpga_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@solos_pci_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Solos PCI Driver %s Unloaded\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"solos_pci_exit\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/atm/solos-pci.c\00", [40 x i8] zeroinitializer }, align 32
@solos_pci_exit._entry_ptr = internal global ptr @solos_pci_exit._entry, section ".printk_index", align 4
@__initcall__kmod_solos_pci__483_1495_solos_pci_init6 = internal global ptr @solos_pci_init, section ".initcall6.init", align 4
@__exitcall_solos_pci_exit = internal global ptr @solos_pci_exit, section ".exitcall.exit", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"solos\00", [26 x i8] zeroinitializer }, align 32
@fpga_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4334, i32 768, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@fpga_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&card->fw_wq\00", [19 x i8] zeroinitializer }, align 32
@fpga_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&card->param_wq\00", [16 x i8] zeroinitializer }, align 32
@fpga_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 1209, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable PCI device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fpga_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fpga_probe._entry_ptr = internal global ptr @fpga_probe._entry, section ".printk_index", align 4
@fpga_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.5, i32 1215, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set 32-bit DMA mask\0A\00", [33 x i8] zeroinitializer }, align 32
@fpga_probe._entry_ptr.16 = internal global ptr @fpga_probe._entry.14, section ".printk_index", align 4
@fpga_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.5, i32 1221, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request regions\0A\00", [37 x i8] zeroinitializer }, align 32
@fpga_probe._entry_ptr.19 = internal global ptr @fpga_probe._entry.17, section ".printk_index", align 4
@fpga_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.5, i32 1227, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to ioremap config registers\0A\00", [60 x i8] zeroinitializer }, align 32
@fpga_probe._entry_ptr.22 = internal global ptr @fpga_probe._entry.20, section ".printk_index", align 4
@fpga_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.5, i32 1233, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to ioremap data buffers\0A\00", [32 x i8] zeroinitializer }, align 32
@fpga_probe._entry_ptr.25 = internal global ptr @fpga_probe._entry.23, section ".printk_index", align 4
@fpga_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.5, i32 1256, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Solos FPGA Version %d.%02d svn-%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fpga_probe._entry_ptr.29 = internal global ptr @fpga_probe._entry.26, section ".printk_index", align 4
@fpga_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.11, ptr @.str.5, i32 1261, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FPGA too old; cannot upgrade flash. Use JTAG.\0A\00", [49 x i8] zeroinitializer }, align 32
@fpga_probe._entry_ptr.32 = internal global ptr @fpga_probe._entry.30, section ".printk_index", align 4
@fpga_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.11, ptr @.str.5, i32 1283, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate DMA bounce buffers\0A\00", [57 x i8] zeroinitializer }, align 32
@fpga_probe._entry_ptr.35 = internal global ptr @fpga_probe._entry.33, section ".printk_index", align 4
@fpga_probe.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&card->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@fpga_probe.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&card->tx_queue_lock\00", [43 x i8] zeroinitializer }, align 32
@fpga_probe.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&card->cli_queue_lock\00", [42 x i8] zeroinitializer }, align 32
@fpga_probe.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&card->param_queue_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"solos-pci\00", [22 x i8] zeroinitializer }, align 32
@fpga_probe.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.5, ptr @.str.45, i8 1, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request interrupt IRQ: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@gpio_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.260, ptr null, ptr null, ptr @gpio_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fpga_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.11, ptr @.str.5, i32 1331, ptr @.str.48, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not register parameter group for GPIOs\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fpga_probe._entry_ptr.49 = internal global ptr @fpga_probe._entry.46, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@solos_bh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 798, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid buffer size\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"solos_bh\00", [23 x i8] zeroinitializer }, align 32
@solos_bh._entry_ptr = internal global ptr @solos_bh._entry, section ".printk_index", align 4
@solos_bh._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.5, i32 810, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate sk_buff for RX\0A\00", [61 x i8] zeroinitializer }, align 32
@solos_bh._entry_ptr.54 = internal global ptr @solos_bh._entry.52, section ".printk_index", align 4
@solos_bh._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.5, i32 819, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Received: port %d\0A\00", [45 x i8] zeroinitializer }, align 32
@solos_bh._entry_ptr.57 = internal global ptr @solos_bh._entry.55, section ".printk_index", align 4
@solos_bh._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.5, i32 822, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"size: %d VPI: %d VCI: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@solos_bh._entry_ptr.60 = internal global ptr @solos_bh._entry.58, section ".printk_index", align 4
@solos_bh._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.5, i32 834, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Received packet for unknown VPI.VCI %d.%d on port %d\0A\00", [42 x i8] zeroinitializer }, align 32
@solos_bh._entry_ptr.63 = internal global ptr @solos_bh._entry.61, section ".printk_index", align 4
@solos_bh._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.51, ptr @.str.5, i32 846, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Bad status packet of %d bytes on port %d:\0A\00", [53 x i8] zeroinitializer }, align 32
@solos_bh._entry_ptr.66 = internal global ptr @solos_bh._entry.64, section ".printk_index", align 4
@solos_bh._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.51, ptr @.str.5, i32 860, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Dropping console response on port %d\0A\00", [58 x i8] zeroinitializer }, align 32
@solos_bh._entry_ptr.69 = internal global ptr @solos_bh._entry.67, section ".printk_index", align 4
@solos_bh._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.51, ptr @.str.5, i32 884, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to allocate RX skb\00", [38 x i8] zeroinitializer }, align 32
@solos_bh._entry_ptr.72 = internal global ptr @solos_bh._entry.70, section ".printk_index", align 4
@fpga_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.5, i32 1111, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Transmitted: port %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fpga_tx\00", [24 x i8] zeroinitializer }, align 32
@fpga_tx._entry_ptr = internal global ptr @fpga_tx._entry, section ".printk_index", align 4
@fpga_tx._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.74, ptr @.str.5, i32 1114, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@fpga_tx._entry_ptr.76 = internal global ptr @fpga_tx._entry.75, section ".printk_index", align 4
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%02X: \00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X \00", [26 x i8] zeroinitializer }, align 32
@print_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.5, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\017%s\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"print_buffer\00", [19 x i8] zeroinitializer }, align 32
@print_buffer._entry_ptr = internal global ptr @print_buffer._entry, section ".printk_index", align 4
@print_buffer._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.5, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@print_buffer._entry_ptr.83 = internal global ptr @print_buffer._entry.82, section ".printk_index", align 4
@print_buffer._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.81, ptr @.str.5, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\017\0A\00", [28 x i8] zeroinitializer }, align 32
@print_buffer._entry_ptr.86 = internal global ptr @print_buffer._entry.84, section ".printk_index", align 4
@vcc_sklist_lock = external dso_local global %struct.rwlock_t, align 4
@vcc_hash = external dso_local local_unnamed_addr global [32 x %struct.hlist_head], align 4
@process_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.5, i32 353, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unexpected status interrupt version\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"process_status\00", [17 x i8] zeroinitializer }, align 32
@process_status._entry_ptr = internal global ptr @process_status._entry, section ".printk_index", align 4
@process_status._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.5, i32 358, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unexpected status interrupt version %d\0A\00", [56 x i8] zeroinitializer }, align 32
@process_status._entry_ptr.91 = internal global ptr @process_status._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@process_status.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str.5, ptr @.str.93, i8 0, i8 91, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Status packet indicated Solos error on port %d (starting up?)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Showtime\00", [23 x i8] zeroinitializer }, align 32
@process_status._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.5, i32 389, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Port %d: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@process_status._entry_ptr.97 = internal global ptr @process_status._entry.95, section ".printk_index", align 4
@process_status._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.5, i32 402, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Port %d: %s @%d/%d kb/s%s%s%s%s\0A\00", [63 x i8] zeroinitializer }, align 32
@process_status._entry_ptr.100 = internal global ptr @process_status._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c", SNR \00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c", Attn \00", [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"solos-FPGA.bin\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"solos-Firmware.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"solos-db-FPGA.bin\00", [46 x i8] zeroinitializer }, align 32
@flash_upgrade._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.5, i32 656, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"FPGA version doesn't support daughter board upgrades\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flash_upgrade\00", [18 x i8] zeroinitializer }, align 32
@flash_upgrade._entry_ptr = internal global ptr @flash_upgrade._entry, section ".printk_index", align 4
@flash_upgrade._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.5, i32 669, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@flash_upgrade._entry_ptr.112 = internal global ptr @flash_upgrade._entry.111, section ".printk_index", align 4
@flash_upgrade._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.110, ptr @.str.5, i32 680, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Flash upgrade starting\0A\00", [40 x i8] zeroinitializer }, align 32
@flash_upgrade._entry_ptr.115 = internal global ptr @flash_upgrade._entry.113, section ".printk_index", align 4
@flash_upgrade._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.110, ptr @.str.5, i32 686, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Firmware size: %zd\0A\00", [44 x i8] zeroinitializer }, align 32
@flash_upgrade._entry_ptr.118 = internal global ptr @flash_upgrade._entry.116, section ".printk_index", align 4
@flash_upgrade._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.110, ptr @.str.5, i32 687, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Number of blocks: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@flash_upgrade._entry_ptr.121 = internal global ptr @flash_upgrade._entry.119, section ".printk_index", align 4
@flash_upgrade._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.110, ptr @.str.5, i32 689, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Changing FPGA to Update mode\0A\00", [34 x i8] zeroinitializer }, align 32
@flash_upgrade._entry_ptr.124 = internal global ptr @flash_upgrade._entry.122, section ".printk_index", align 4
@flash_upgrade._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.110, ptr @.str.5, i32 695, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Set FPGA Flash mode to FPGA Chip Erase\0A\00", [56 x i8] zeroinitializer }, align 32
@flash_upgrade._entry_ptr.127 = internal global ptr @flash_upgrade._entry.125, section ".printk_index", align 4
@flash_upgrade._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.110, ptr @.str.5, i32 697, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Set FPGA Flash mode to Solos Chip Erase\0A\00", [55 x i8] zeroinitializer }, align 32
@flash_upgrade._entry_ptr.130 = internal global ptr @flash_upgrade._entry.128, section ".printk_index", align 4
@flash_upgrade._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.110, ptr @.str.5, i32 737, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Returning FPGA to Data mode\0A\00", [35 x i8] zeroinitializer }, align 32
@flash_upgrade._entry_ptr.133 = internal global ptr @flash_upgrade._entry.131, section ".printk_index", align 4
@fpga_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr null, ptr @popen, ptr @pclose, ptr null, ptr @psend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@atm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.5, i32 1365, ptr @.str.48, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not register ATM device %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atm_init\00", [23 x i8] zeroinitializer }, align 32
@atm_init._entry_ptr = internal global ptr @atm_init._entry, section ".printk_index", align 4
@dev_attr_console = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @console_show, ptr @console_store }, [36 x i8] zeroinitializer }, align 32
@atm_init._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.5, i32 1370, ptr @.str.48, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not register console for ATM device %d\0A\00", [50 x i8] zeroinitializer }, align 32
@atm_init._entry_ptr.138 = internal global ptr @atm_init._entry.136, section ".printk_index", align 4
@solos_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.171, ptr null, ptr null, ptr @solos_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@atm_init._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.5, i32 1372, ptr @.str.48, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Could not register parameter group for ATM device %d\0A\00", [42 x i8] zeroinitializer }, align 32
@atm_init._entry_ptr.141 = internal global ptr @atm_init._entry.139, section ".printk_index", align 4
@atm_init._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.5, i32 1374, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Registered ATM device %d\0A\00", [38 x i8] zeroinitializer }, align 32
@atm_init._entry_ptr.144 = internal global ptr @atm_init._entry.142, section ".printk_index", align 4
@atm_init._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str.5, i32 1384, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate sk_buff in atm_init()\0A\00", [54 x i8] zeroinitializer }, align 32
@atm_init._entry_ptr.147 = internal global ptr @atm_init._entry.145, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@popen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.5, i32 926, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported ATM type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"popen\00", [26 x i8] zeroinitializer }, align 32
@popen._entry_ptr = internal global ptr @popen._entry, section ".printk_index", align 4
@popen._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.5, i32 933, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate sk_buff in popen()\0A\00", [57 x i8] zeroinitializer }, align 32
@popen._entry_ptr.153 = internal global ptr @popen._entry.151, section ".printk_index", align 4
@pclose._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.5, i32 970, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate sk_buff in pclose()\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pclose\00", [25 x i8] zeroinitializer }, align 32
@pclose._entry_ptr = internal global ptr @pclose._entry, section ".printk_index", align 4
@pclose._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.5, i32 985, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Timeout waiting for VCC close on port %d\0A\00", [54 x i8] zeroinitializer }, align 32
@pclose._entry_ptr.158 = internal global ptr @pclose._entry.156, section ".printk_index", align 4
@psend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.5, i32 1145, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Length of PDU is too large. Dropping PDU.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"psend\00", [26 x i8] zeroinitializer }, align 32
@psend._entry_ptr = internal global ptr @psend._entry, section ".printk_index", align 4
@psend._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.5, i32 1159, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pskb_expand_head failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@psend._entry_ptr.163 = internal global ptr @psend._entry.161, section ".printk_index", align 4
@atm_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.5, i32 1408, ptr @.str.28, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unregistering ATM device %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atm_remove\00", [21 x i8] zeroinitializer }, align 32
@atm_remove._entry_ptr = internal global ptr @atm_remove._entry, section ".printk_index", align 4
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"console\00", [24 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"No data.\0A\00", [22 x i8] zeroinitializer }, align 32
@send_command.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.168, ptr @.str.5, ptr @.str.169, i8 0, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send_command\00", [19 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Command is too big.  Dropping request\0A\00", [57 x i8] zeroinitializer }, align 32
@send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.5, i32 476, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to allocate sk_buff in send_command()\0A\00", [50 x i8] zeroinitializer }, align 32
@send_command._entry_ptr = internal global ptr @send_command._entry, section ".printk_index", align 4
@.str.171 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parameters\00", [21 x i8] zeroinitializer }, align 32
@solos_attrs = internal global { [79 x ptr], [68 x i8] } { [79 x ptr] [ptr @dev_attr_DriverVersion, ptr @dev_attr_APIVersion, ptr @dev_attr_FirmwareVersion, ptr @dev_attr_Version, ptr @dev_attr_Connected, ptr @dev_attr_OperationalMode, ptr @dev_attr_State, ptr @dev_attr_Watchdog, ptr @dev_attr_OperationProgress, ptr @dev_attr_LastFailed, ptr @dev_attr_TxBitRate, ptr @dev_attr_RxBitRate, ptr @dev_attr_TxATTNDR, ptr @dev_attr_RxATTNDR, ptr @dev_attr_AnnexType, ptr @dev_attr_GeneralFailure, ptr @dev_attr_InterleaveDpDn, ptr @dev_attr_InterleaveDpUp, ptr @dev_attr_RSCorrectedErrorsDn, ptr @dev_attr_RSUnCorrectedErrorsDn, ptr @dev_attr_RSCorrectedErrorsUp, ptr @dev_attr_RSUnCorrectedErrorsUp, ptr @dev_attr_InterleaveRDn, ptr @dev_attr_InterleaveRUp, ptr @dev_attr_BisRDn, ptr @dev_attr_BisRUp, ptr @dev_attr_INPdown, ptr @dev_attr_INPup, ptr @dev_attr_ShowtimeStart, ptr @dev_attr_ATURVendor, ptr @dev_attr_ATUCCountry, ptr @dev_attr_ATURANSIRev, ptr @dev_attr_ATURANSISTD, ptr @dev_attr_ATUCANSIRev, ptr @dev_attr_ATUCANSIId, ptr @dev_attr_ATUCANSISTD, ptr @dev_attr_DataBoost, ptr @dev_attr_LocalITUCountryCode, ptr @dev_attr_LocalSEF, ptr @dev_attr_LocalEndLOS, ptr @dev_attr_LocalSNRMargin, ptr @dev_attr_LocalLineAttn, ptr @dev_attr_RawAttn, ptr @dev_attr_LocalTxPower, ptr @dev_attr_RemoteTxPower, ptr @dev_attr_RemoteSEF, ptr @dev_attr_RemoteLOS, ptr @dev_attr_RemoteLineAttn, ptr @dev_attr_RemoteSNRMargin, ptr @dev_attr_LineUpCount, ptr @dev_attr_SRACnt, ptr @dev_attr_SRACntUp, ptr @dev_attr_ProfileStatus, ptr @dev_attr_Action, ptr @dev_attr_ActivateLine, ptr @dev_attr_LineStatus, ptr @dev_attr_HostControl, ptr @dev_attr_AutoStart, ptr @dev_attr_Failsafe, ptr @dev_attr_ShowtimeLed, ptr @dev_attr_Retrain, ptr @dev_attr_Defaults, ptr @dev_attr_LineMode, ptr @dev_attr_Profile, ptr @dev_attr_DetectNoise, ptr @dev_attr_BisAForceSNRMarginDn, ptr @dev_attr_BisMForceSNRMarginDn, ptr @dev_attr_BisAMaxMargin, ptr @dev_attr_BisMMaxMargin, ptr @dev_attr_AnnexAForceSNRMarginDn, ptr @dev_attr_AnnexAMaxMargin, ptr @dev_attr_AnnexMMaxMargin, ptr @dev_attr_SupportedAnnexes, ptr @dev_attr_Status, ptr @dev_attr_TotalStart, ptr @dev_attr_RecentShowtimeStart, ptr @dev_attr_TotalRxBlocks, ptr @dev_attr_TotalTxBlocks, ptr null], [68 x i8] zeroinitializer }, align 32
@dev_attr_DriverVersion = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_APIVersion = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_FirmwareVersion = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_Version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.178, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_Connected = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.179, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_OperationalMode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_State = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_Watchdog = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.182, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_OperationProgress = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.183, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_LastFailed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.184, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_TxBitRate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.185, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RxBitRate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_TxATTNDR = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.187, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RxATTNDR = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.188, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_AnnexType = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.189, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_GeneralFailure = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.190, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_InterleaveDpDn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.191, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_InterleaveDpUp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.192, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RSCorrectedErrorsDn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.193, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RSUnCorrectedErrorsDn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.194, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RSCorrectedErrorsUp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.195, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RSUnCorrectedErrorsUp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.196, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_InterleaveRDn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.197, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_InterleaveRUp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.198, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_BisRDn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.199, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_BisRUp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.200, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_INPdown = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.201, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_INPup = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.202, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ShowtimeStart = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.203, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ATURVendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.204, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ATUCCountry = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.205, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ATURANSIRev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.206, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ATURANSISTD = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.207, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ATUCANSIRev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.208, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ATUCANSIId = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.209, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ATUCANSISTD = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.210, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_DataBoost = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.211, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_LocalITUCountryCode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.212, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_LocalSEF = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.213, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_LocalEndLOS = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.214, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_LocalSNRMargin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.215, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_LocalLineAttn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.216, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RawAttn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.217, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_LocalTxPower = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.218, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RemoteTxPower = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.219, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RemoteSEF = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.220, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RemoteLOS = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.221, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RemoteLineAttn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.222, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RemoteSNRMargin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.223, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_LineUpCount = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.224, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_SRACnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.225, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_SRACntUp = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.226, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ProfileStatus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.227, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_Action = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.228, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ActivateLine = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.236, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_LineStatus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.237, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_HostControl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.238, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_AutoStart = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.239, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_Failsafe = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.240, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ShowtimeLed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.241, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_Retrain = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.242, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_Defaults = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.243, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_LineMode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.244, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_Profile = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.245, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_DetectNoise = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.246, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_BisAForceSNRMarginDn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.247, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_BisMForceSNRMarginDn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.248, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_BisAMaxMargin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.249, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_BisMMaxMargin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.250, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_AnnexAForceSNRMarginDn = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.251, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_AnnexAMaxMargin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.252, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_AnnexMMaxMargin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.253, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr @solos_param_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_SupportedAnnexes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.254, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_Status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.255, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_TotalStart = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.256, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_RecentShowtimeStart = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.257, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_TotalRxBlocks = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.258, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_TotalTxBlocks = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.259, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @solos_param_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DriverVersion\00", [18 x i8] zeroinitializer }, align 32
@solos_param_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.5, i32 195, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to allocate sk_buff in solos_param_show()\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"solos_param_show\00", [47 x i8] zeroinitializer }, align 32
@solos_param_show._entry_ptr = internal global ptr @solos_param_show._entry, section ".printk_index", align 4
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"L%05d\0A%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"APIVersion\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FirmwareVersion\00", [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Version\00", [24 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Connected\00", [22 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OperationalMode\00", [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"State\00", [26 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Watchdog\00", [23 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OperationProgress\00", [46 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LastFailed\00", [21 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TxBitRate\00", [22 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RxBitRate\00", [22 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TxATTNDR\00", [23 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxATTNDR\00", [23 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AnnexType\00", [22 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GeneralFailure\00", [17 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"InterleaveDpDn\00", [17 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"InterleaveDpUp\00", [17 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RSCorrectedErrorsDn\00", [44 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RSUnCorrectedErrorsDn\00", [42 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RSCorrectedErrorsUp\00", [44 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RSUnCorrectedErrorsUp\00", [42 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"InterleaveRDn\00", [18 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"InterleaveRUp\00", [18 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BisRDn\00", [25 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BisRUp\00", [25 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INPdown\00", [24 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"INPup\00", [26 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ShowtimeStart\00", [18 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ATURVendor\00", [21 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ATUCCountry\00", [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ATURANSIRev\00", [20 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ATURANSISTD\00", [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ATUCANSIRev\00", [20 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ATUCANSIId\00", [21 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ATUCANSISTD\00", [20 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DataBoost\00", [22 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"LocalITUCountryCode\00", [44 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LocalSEF\00", [23 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LocalEndLOS\00", [20 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LocalSNRMargin\00", [17 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LocalLineAttn\00", [18 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RawAttn\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LocalTxPower\00", [19 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RemoteTxPower\00", [18 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RemoteSEF\00", [22 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RemoteLOS\00", [22 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RemoteLineAttn\00", [17 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RemoteSNRMargin\00", [16 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LineUpCount\00", [20 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SRACnt\00", [25 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SRACntUp\00", [23 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ProfileStatus\00", [18 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Action\00", [25 x i8] zeroinitializer }, align 32
@solos_param_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.230, ptr @.str.5, i32 251, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to allocate sk_buff in solos_param_store()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"solos_param_store\00", [46 x i8] zeroinitializer }, align 32
@solos_param_store._entry_ptr = internal global ptr @solos_param_store._entry, section ".printk_index", align 4
@.str.231 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"L%05d\0A%s\0A%s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@solos_param_store._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.230, ptr @.str.5, i32 303, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unexpected parameter response: '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@solos_param_store._entry_ptr.235 = internal global ptr @solos_param_store._entry.233, section ".printk_index", align 4
@.str.236 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ActivateLine\00", [19 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LineStatus\00", [21 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HostControl\00", [20 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AutoStart\00", [22 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Failsafe\00", [23 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ShowtimeLed\00", [20 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Retrain\00", [24 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Defaults\00", [23 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LineMode\00", [23 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Profile\00", [24 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DetectNoise\00", [20 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BisAForceSNRMarginDn\00", [43 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BisMForceSNRMarginDn\00", [43 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BisAMaxMargin\00", [18 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BisMMaxMargin\00", [18 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AnnexAForceSNRMarginDn\00", [41 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AnnexAMaxMargin\00", [16 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AnnexMMaxMargin\00", [16 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SupportedAnnexes\00", [47 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Status\00", [25 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TotalStart\00", [21 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RecentShowtimeStart\00", [44 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TotalRxBlocks\00", [18 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TotalTxBlocks\00", [18 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@gpio_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @gpio_attr_GPIO1, ptr @gpio_attr_GPIO2, ptr @gpio_attr_GPIO3, ptr @gpio_attr_GPIO4, ptr @gpio_attr_GPIO5, ptr @gpio_attr_PushButton, ptr @gpio_attr_HardwareVersion, ptr @gpio_attr_HardwareVariant, ptr null], [60 x i8] zeroinitializer }, align 32
@gpio_attr_GPIO1 = internal global { %struct.geos_gpio_attr, [32 x i8] } { %struct.geos_gpio_attr { %struct.device_attribute { %struct.attribute { ptr @.str.261, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @geos_gpio_show, ptr @geos_gpio_store }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@gpio_attr_GPIO2 = internal global { %struct.geos_gpio_attr, [32 x i8] } { %struct.geos_gpio_attr { %struct.device_attribute { %struct.attribute { ptr @.str.263, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @geos_gpio_show, ptr @geos_gpio_store }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@gpio_attr_GPIO3 = internal global { %struct.geos_gpio_attr, [32 x i8] } { %struct.geos_gpio_attr { %struct.device_attribute { %struct.attribute { ptr @.str.264, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @geos_gpio_show, ptr @geos_gpio_store }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@gpio_attr_GPIO4 = internal global { %struct.geos_gpio_attr, [32 x i8] } { %struct.geos_gpio_attr { %struct.device_attribute { %struct.attribute { ptr @.str.265, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @geos_gpio_show, ptr @geos_gpio_store }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@gpio_attr_GPIO5 = internal global { %struct.geos_gpio_attr, [32 x i8] } { %struct.geos_gpio_attr { %struct.device_attribute { %struct.attribute { ptr @.str.266, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @geos_gpio_show, ptr @geos_gpio_store }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@gpio_attr_PushButton = internal global { %struct.geos_gpio_attr, [32 x i8] } { %struct.geos_gpio_attr { %struct.device_attribute { %struct.attribute { ptr @.str.267, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @geos_gpio_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@gpio_attr_HardwareVersion = internal global { %struct.geos_gpio_attr, [32 x i8] } { %struct.geos_gpio_attr { %struct.device_attribute { %struct.attribute { ptr @.str.268, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hardware_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@gpio_attr_HardwareVariant = internal global { %struct.geos_gpio_attr, [32 x i8] } { %struct.geos_gpio_attr { %struct.device_attribute { %struct.attribute { ptr @.str.269, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hardware_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO1\00", [26 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO2\00", [26 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO3\00", [26 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO4\00", [26 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO5\00", [26 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PushButton\00", [21 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HardwareVersion\00", [16 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HardwareVariant\00", [16 x i8] zeroinitializer }, align 32
@solos_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.271, ptr @.str.5, i32 1485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Solos PCI Driver Version %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"solos_pci_init\00", [17 x i8] zeroinitializer }, align 32
@solos_pci_init._entry_ptr = internal global ptr @solos_pci_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 5]
@__sancov_gen_cov_switch_values.272 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.273 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@__sancov_gen_cov_switch_values.277 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 144, i32 1 }
@___asan_gen_.287 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 77, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant [9 x i8] c"atmdebug\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 78, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"firmware_upgrade\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 79, i32 12 }
@___asan_gen_.296 = private unnamed_addr constant [13 x i8] c"fpga_upgrade\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 80, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c"db_firmware_upgrade\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 81, i32 12 }
@___asan_gen_.302 = private unnamed_addr constant [16 x i8] c"db_fpga_upgrade\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 82, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant [12 x i8] c"fpga_driver\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1473, i32 26 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1492, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1474, i32 11 }
@___asan_gen_.323 = private unnamed_addr constant [13 x i8] c"fpga_pci_tbl\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1466, i32 35 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1204, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1205, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1209, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1215, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1221, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1227, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1233, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1255, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1260, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1283, i32 5 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1298, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1299, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1300, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1301, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1305, i32 6 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1307, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant [16 x i8] c"gpio_attr_group\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 619, i32 37 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1331, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 798, i32 6 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 810, i32 7 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 819, i32 5 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 820, i32 5 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 832, i32 7 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 846, i32 6 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 859, i32 7 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 884, i32 6 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1110, i32 5 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1112, i32 5 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1008, i32 17 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1010, i32 16 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1015, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1021, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1023, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 353, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 357, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 365, i32 19 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 366, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 387, i32 24 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 389, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 400, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.576, i32 326, i32 6 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 634, i32 13 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 641, i32 13 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 649, i32 14 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 655, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 668, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 680, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 686, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 687, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 689, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 695, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 697, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 737, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [9 x i8] c"fpga_ops\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1178, i32 32 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1365, i32 4 }
@___asan_gen_.653 = private unnamed_addr constant [17 x i8] c"dev_attr_console\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1370, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant [17 x i8] c"solos_attr_group\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 602, i32 37 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1372, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1374, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1384, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.687 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.687, i32 1984, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 925, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 933, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 970, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 984, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1145, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1159, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1408, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 575, i32 8 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 456, i32 23 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 471, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 476, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 604, i32 10 }
@___asan_gen_.764 = private unnamed_addr constant [12 x i8] c"solos_attrs\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 597, i32 26 }
@___asan_gen_.767 = private unnamed_addr constant [23 x i8] c"dev_attr_DriverVersion\00", align 1
@___asan_gen_.770 = private unnamed_addr constant [20 x i8] c"dev_attr_APIVersion\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [25 x i8] c"dev_attr_FirmwareVersion\00", align 1
@___asan_gen_.776 = private unnamed_addr constant [17 x i8] c"dev_attr_Version\00", align 1
@___asan_gen_.779 = private unnamed_addr constant [19 x i8] c"dev_attr_Connected\00", align 1
@___asan_gen_.782 = private unnamed_addr constant [25 x i8] c"dev_attr_OperationalMode\00", align 1
@___asan_gen_.785 = private unnamed_addr constant [15 x i8] c"dev_attr_State\00", align 1
@___asan_gen_.788 = private unnamed_addr constant [18 x i8] c"dev_attr_Watchdog\00", align 1
@___asan_gen_.791 = private unnamed_addr constant [27 x i8] c"dev_attr_OperationProgress\00", align 1
@___asan_gen_.794 = private unnamed_addr constant [20 x i8] c"dev_attr_LastFailed\00", align 1
@___asan_gen_.797 = private unnamed_addr constant [19 x i8] c"dev_attr_TxBitRate\00", align 1
@___asan_gen_.800 = private unnamed_addr constant [19 x i8] c"dev_attr_RxBitRate\00", align 1
@___asan_gen_.803 = private unnamed_addr constant [18 x i8] c"dev_attr_TxATTNDR\00", align 1
@___asan_gen_.806 = private unnamed_addr constant [18 x i8] c"dev_attr_RxATTNDR\00", align 1
@___asan_gen_.809 = private unnamed_addr constant [19 x i8] c"dev_attr_AnnexType\00", align 1
@___asan_gen_.812 = private unnamed_addr constant [24 x i8] c"dev_attr_GeneralFailure\00", align 1
@___asan_gen_.815 = private unnamed_addr constant [24 x i8] c"dev_attr_InterleaveDpDn\00", align 1
@___asan_gen_.818 = private unnamed_addr constant [24 x i8] c"dev_attr_InterleaveDpUp\00", align 1
@___asan_gen_.821 = private unnamed_addr constant [29 x i8] c"dev_attr_RSCorrectedErrorsDn\00", align 1
@___asan_gen_.824 = private unnamed_addr constant [31 x i8] c"dev_attr_RSUnCorrectedErrorsDn\00", align 1
@___asan_gen_.827 = private unnamed_addr constant [29 x i8] c"dev_attr_RSCorrectedErrorsUp\00", align 1
@___asan_gen_.830 = private unnamed_addr constant [31 x i8] c"dev_attr_RSUnCorrectedErrorsUp\00", align 1
@___asan_gen_.833 = private unnamed_addr constant [23 x i8] c"dev_attr_InterleaveRDn\00", align 1
@___asan_gen_.836 = private unnamed_addr constant [23 x i8] c"dev_attr_InterleaveRUp\00", align 1
@___asan_gen_.839 = private unnamed_addr constant [16 x i8] c"dev_attr_BisRDn\00", align 1
@___asan_gen_.842 = private unnamed_addr constant [16 x i8] c"dev_attr_BisRUp\00", align 1
@___asan_gen_.845 = private unnamed_addr constant [17 x i8] c"dev_attr_INPdown\00", align 1
@___asan_gen_.848 = private unnamed_addr constant [15 x i8] c"dev_attr_INPup\00", align 1
@___asan_gen_.851 = private unnamed_addr constant [23 x i8] c"dev_attr_ShowtimeStart\00", align 1
@___asan_gen_.854 = private unnamed_addr constant [20 x i8] c"dev_attr_ATURVendor\00", align 1
@___asan_gen_.857 = private unnamed_addr constant [21 x i8] c"dev_attr_ATUCCountry\00", align 1
@___asan_gen_.860 = private unnamed_addr constant [21 x i8] c"dev_attr_ATURANSIRev\00", align 1
@___asan_gen_.863 = private unnamed_addr constant [21 x i8] c"dev_attr_ATURANSISTD\00", align 1
@___asan_gen_.866 = private unnamed_addr constant [21 x i8] c"dev_attr_ATUCANSIRev\00", align 1
@___asan_gen_.869 = private unnamed_addr constant [20 x i8] c"dev_attr_ATUCANSIId\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [21 x i8] c"dev_attr_ATUCANSISTD\00", align 1
@___asan_gen_.875 = private unnamed_addr constant [19 x i8] c"dev_attr_DataBoost\00", align 1
@___asan_gen_.878 = private unnamed_addr constant [29 x i8] c"dev_attr_LocalITUCountryCode\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [18 x i8] c"dev_attr_LocalSEF\00", align 1
@___asan_gen_.884 = private unnamed_addr constant [21 x i8] c"dev_attr_LocalEndLOS\00", align 1
@___asan_gen_.887 = private unnamed_addr constant [24 x i8] c"dev_attr_LocalSNRMargin\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [23 x i8] c"dev_attr_LocalLineAttn\00", align 1
@___asan_gen_.893 = private unnamed_addr constant [17 x i8] c"dev_attr_RawAttn\00", align 1
@___asan_gen_.896 = private unnamed_addr constant [22 x i8] c"dev_attr_LocalTxPower\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [23 x i8] c"dev_attr_RemoteTxPower\00", align 1
@___asan_gen_.902 = private unnamed_addr constant [19 x i8] c"dev_attr_RemoteSEF\00", align 1
@___asan_gen_.905 = private unnamed_addr constant [19 x i8] c"dev_attr_RemoteLOS\00", align 1
@___asan_gen_.908 = private unnamed_addr constant [24 x i8] c"dev_attr_RemoteLineAttn\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [25 x i8] c"dev_attr_RemoteSNRMargin\00", align 1
@___asan_gen_.914 = private unnamed_addr constant [21 x i8] c"dev_attr_LineUpCount\00", align 1
@___asan_gen_.917 = private unnamed_addr constant [16 x i8] c"dev_attr_SRACnt\00", align 1
@___asan_gen_.920 = private unnamed_addr constant [18 x i8] c"dev_attr_SRACntUp\00", align 1
@___asan_gen_.923 = private unnamed_addr constant [23 x i8] c"dev_attr_ProfileStatus\00", align 1
@___asan_gen_.926 = private unnamed_addr constant [16 x i8] c"dev_attr_Action\00", align 1
@___asan_gen_.929 = private unnamed_addr constant [22 x i8] c"dev_attr_ActivateLine\00", align 1
@___asan_gen_.932 = private unnamed_addr constant [20 x i8] c"dev_attr_LineStatus\00", align 1
@___asan_gen_.935 = private unnamed_addr constant [21 x i8] c"dev_attr_HostControl\00", align 1
@___asan_gen_.938 = private unnamed_addr constant [19 x i8] c"dev_attr_AutoStart\00", align 1
@___asan_gen_.941 = private unnamed_addr constant [18 x i8] c"dev_attr_Failsafe\00", align 1
@___asan_gen_.944 = private unnamed_addr constant [21 x i8] c"dev_attr_ShowtimeLed\00", align 1
@___asan_gen_.947 = private unnamed_addr constant [17 x i8] c"dev_attr_Retrain\00", align 1
@___asan_gen_.950 = private unnamed_addr constant [18 x i8] c"dev_attr_Defaults\00", align 1
@___asan_gen_.953 = private unnamed_addr constant [18 x i8] c"dev_attr_LineMode\00", align 1
@___asan_gen_.956 = private unnamed_addr constant [17 x i8] c"dev_attr_Profile\00", align 1
@___asan_gen_.959 = private unnamed_addr constant [21 x i8] c"dev_attr_DetectNoise\00", align 1
@___asan_gen_.962 = private unnamed_addr constant [30 x i8] c"dev_attr_BisAForceSNRMarginDn\00", align 1
@___asan_gen_.965 = private unnamed_addr constant [30 x i8] c"dev_attr_BisMForceSNRMarginDn\00", align 1
@___asan_gen_.968 = private unnamed_addr constant [23 x i8] c"dev_attr_BisAMaxMargin\00", align 1
@___asan_gen_.971 = private unnamed_addr constant [23 x i8] c"dev_attr_BisMMaxMargin\00", align 1
@___asan_gen_.974 = private unnamed_addr constant [32 x i8] c"dev_attr_AnnexAForceSNRMarginDn\00", align 1
@___asan_gen_.977 = private unnamed_addr constant [25 x i8] c"dev_attr_AnnexAMaxMargin\00", align 1
@___asan_gen_.980 = private unnamed_addr constant [25 x i8] c"dev_attr_AnnexMMaxMargin\00", align 1
@___asan_gen_.983 = private unnamed_addr constant [26 x i8] c"dev_attr_SupportedAnnexes\00", align 1
@___asan_gen_.986 = private unnamed_addr constant [16 x i8] c"dev_attr_Status\00", align 1
@___asan_gen_.989 = private unnamed_addr constant [20 x i8] c"dev_attr_TotalStart\00", align 1
@___asan_gen_.992 = private unnamed_addr constant [29 x i8] c"dev_attr_RecentShowtimeStart\00", align 1
@___asan_gen_.995 = private unnamed_addr constant [23 x i8] c"dev_attr_TotalRxBlocks\00", align 1
@___asan_gen_.998 = private unnamed_addr constant [23 x i8] c"dev_attr_TotalTxBlocks\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 2, i32 1 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 195, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 202, i32 6 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 3, i32 1 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 4, i32 1 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 5, i32 1 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 8, i32 1 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 9, i32 1 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 10, i32 1 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 11, i32 1 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 12, i32 1 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 13, i32 1 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 14, i32 1 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 15, i32 1 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 18, i32 1 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 19, i32 1 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 20, i32 1 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 21, i32 1 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 22, i32 1 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 23, i32 1 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 24, i32 1 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 25, i32 1 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 26, i32 1 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 27, i32 1 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 28, i32 1 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 29, i32 1 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 30, i32 1 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 31, i32 1 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 32, i32 1 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 33, i32 1 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 34, i32 1 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 35, i32 1 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 36, i32 1 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 37, i32 1 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 38, i32 1 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 39, i32 1 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 40, i32 1 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 41, i32 1 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 42, i32 1 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 43, i32 1 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 44, i32 1 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 45, i32 1 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 46, i32 1 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 47, i32 1 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 48, i32 1 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 49, i32 1 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 50, i32 1 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 51, i32 1 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 52, i32 1 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 53, i32 1 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 54, i32 1 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 55, i32 1 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 56, i32 1 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 57, i32 1 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 58, i32 1 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 59, i32 1 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 251, i32 3 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 258, i32 6 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 293, i32 41 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 302, i32 3 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 60, i32 1 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 61, i32 1 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 62, i32 1 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 63, i32 1 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 64, i32 1 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 65, i32 1 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 66, i32 1 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 67, i32 1 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 68, i32 1 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 69, i32 1 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 70, i32 1 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 71, i32 1 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 72, i32 1 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 73, i32 1 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 74, i32 1 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 75, i32 1 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 76, i32 1 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 77, i32 1 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 78, i32 1 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 79, i32 1 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 80, i32 1 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 81, i32 1 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 82, i32 1 }
@___asan_gen_.1266 = private unnamed_addr constant [32 x i8] c"../drivers/atm/solos-attrlist.c\00", align 1
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1266, i32 83, i32 1 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 621, i32 10 }
@___asan_gen_.1271 = private unnamed_addr constant [11 x i8] c"gpio_attrs\00", align 1
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 607, i32 26 }
@___asan_gen_.1274 = private unnamed_addr constant [16 x i8] c"gpio_attr_GPIO1\00", align 1
@___asan_gen_.1277 = private unnamed_addr constant [16 x i8] c"gpio_attr_GPIO2\00", align 1
@___asan_gen_.1280 = private unnamed_addr constant [16 x i8] c"gpio_attr_GPIO3\00", align 1
@___asan_gen_.1283 = private unnamed_addr constant [16 x i8] c"gpio_attr_GPIO4\00", align 1
@___asan_gen_.1286 = private unnamed_addr constant [16 x i8] c"gpio_attr_GPIO5\00", align 1
@___asan_gen_.1289 = private unnamed_addr constant [21 x i8] c"gpio_attr_PushButton\00", align 1
@___asan_gen_.1292 = private unnamed_addr constant [26 x i8] c"gpio_attr_HardwareVersion\00", align 1
@___asan_gen_.1295 = private unnamed_addr constant [26 x i8] c"gpio_attr_HardwareVariant\00", align 1
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 583, i32 8 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 551, i32 22 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 584, i32 8 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 585, i32 8 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 586, i32 8 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 587, i32 8 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 588, i32 8 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 589, i32 8 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 590, i32 8 }
@___asan_gen_.1325 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1331 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1332 = private constant [27 x i8] c"../drivers/atm/solos-pci.c\00", align 1
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1332, i32 1485, i32 2 }
@llvm.compiler.used = appending global [435 x ptr] [ptr @__UNIQUE_ID_atmdebug468, ptr @__UNIQUE_ID_atmdebugtype474, ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_db_firmware_upgrade471, ptr @__UNIQUE_ID_db_firmware_upgradetype477, ptr @__UNIQUE_ID_db_fpga_upgrade472, ptr @__UNIQUE_ID_db_fpga_upgradetype478, ptr @__UNIQUE_ID_description460, ptr @__UNIQUE_ID_file462, ptr @__UNIQUE_ID_firmware464, ptr @__UNIQUE_ID_firmware465, ptr @__UNIQUE_ID_firmware466, ptr @__UNIQUE_ID_firmware_upgrade469, ptr @__UNIQUE_ID_firmware_upgradetype475, ptr @__UNIQUE_ID_fpga_upgrade470, ptr @__UNIQUE_ID_fpga_upgradetype476, ptr @__UNIQUE_ID_license463, ptr @__UNIQUE_ID_reset467, ptr @__UNIQUE_ID_resettype473, ptr @__UNIQUE_ID_version461, ptr @__exitcall_solos_pci_exit, ptr @__initcall__kmod_solos_pci__483_1495_solos_pci_init6, ptr @__modver_attr, ptr @__param_atmdebug, ptr @__param_db_firmware_upgrade, ptr @__param_db_fpga_upgrade, ptr @__param_firmware_upgrade, ptr @__param_fpga_upgrade, ptr @__param_reset, ptr @atm_init._entry, ptr @atm_init._entry.136, ptr @atm_init._entry.139, ptr @atm_init._entry.142, ptr @atm_init._entry.145, ptr @atm_init._entry_ptr, ptr @atm_init._entry_ptr.138, ptr @atm_init._entry_ptr.141, ptr @atm_init._entry_ptr.144, ptr @atm_init._entry_ptr.147, ptr @atm_remove._entry, ptr @atm_remove._entry_ptr, ptr @flash_upgrade._entry, ptr @flash_upgrade._entry.111, ptr @flash_upgrade._entry.113, ptr @flash_upgrade._entry.116, ptr @flash_upgrade._entry.119, ptr @flash_upgrade._entry.122, ptr @flash_upgrade._entry.125, ptr @flash_upgrade._entry.128, ptr @flash_upgrade._entry.131, ptr @flash_upgrade._entry_ptr, ptr @flash_upgrade._entry_ptr.112, ptr @flash_upgrade._entry_ptr.115, ptr @flash_upgrade._entry_ptr.118, ptr @flash_upgrade._entry_ptr.121, ptr @flash_upgrade._entry_ptr.124, ptr @flash_upgrade._entry_ptr.127, ptr @flash_upgrade._entry_ptr.130, ptr @flash_upgrade._entry_ptr.133, ptr @fpga_probe._entry, ptr @fpga_probe._entry.14, ptr @fpga_probe._entry.17, ptr @fpga_probe._entry.20, ptr @fpga_probe._entry.23, ptr @fpga_probe._entry.26, ptr @fpga_probe._entry.30, ptr @fpga_probe._entry.33, ptr @fpga_probe._entry.46, ptr @fpga_probe._entry_ptr, ptr @fpga_probe._entry_ptr.16, ptr @fpga_probe._entry_ptr.19, ptr @fpga_probe._entry_ptr.22, ptr @fpga_probe._entry_ptr.25, ptr @fpga_probe._entry_ptr.29, ptr @fpga_probe._entry_ptr.32, ptr @fpga_probe._entry_ptr.35, ptr @fpga_probe._entry_ptr.49, ptr @fpga_tx._entry, ptr @fpga_tx._entry.75, ptr @fpga_tx._entry_ptr, ptr @fpga_tx._entry_ptr.76, ptr @pclose._entry, ptr @pclose._entry.156, ptr @pclose._entry_ptr, ptr @pclose._entry_ptr.158, ptr @popen._entry, ptr @popen._entry.151, ptr @popen._entry_ptr, ptr @popen._entry_ptr.153, ptr @print_buffer._entry, ptr @print_buffer._entry.82, ptr @print_buffer._entry.84, ptr @print_buffer._entry_ptr, ptr @print_buffer._entry_ptr.83, ptr @print_buffer._entry_ptr.86, ptr @process_status._entry, ptr @process_status._entry.89, ptr @process_status._entry.95, ptr @process_status._entry.98, ptr @process_status._entry_ptr, ptr @process_status._entry_ptr.100, ptr @process_status._entry_ptr.91, ptr @process_status._entry_ptr.97, ptr @psend._entry, ptr @psend._entry.161, ptr @psend._entry_ptr, ptr @psend._entry_ptr.163, ptr @send_command._entry, ptr @send_command._entry_ptr, ptr @solos_bh._entry, ptr @solos_bh._entry.52, ptr @solos_bh._entry.55, ptr @solos_bh._entry.58, ptr @solos_bh._entry.61, ptr @solos_bh._entry.64, ptr @solos_bh._entry.67, ptr @solos_bh._entry.70, ptr @solos_bh._entry_ptr, ptr @solos_bh._entry_ptr.54, ptr @solos_bh._entry_ptr.57, ptr @solos_bh._entry_ptr.60, ptr @solos_bh._entry_ptr.63, ptr @solos_bh._entry_ptr.66, ptr @solos_bh._entry_ptr.69, ptr @solos_bh._entry_ptr.72, ptr @solos_param_show._entry, ptr @solos_param_show._entry_ptr, ptr @solos_param_store._entry, ptr @solos_param_store._entry.233, ptr @solos_param_store._entry_ptr, ptr @solos_param_store._entry_ptr.235, ptr @solos_pci_exit, ptr @solos_pci_exit._entry, ptr @solos_pci_exit._entry_ptr, ptr @solos_pci_init._entry, ptr @solos_pci_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @reset, ptr @atmdebug, ptr @firmware_upgrade, ptr @fpga_upgrade, ptr @db_firmware_upgrade, ptr @db_fpga_upgrade, ptr @fpga_driver, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fpga_pci_tbl, ptr @fpga_probe.__key, ptr @.str.7, ptr @fpga_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @fpga_probe.__key.36, ptr @.str.37, ptr @fpga_probe.__key.38, ptr @.str.39, ptr @fpga_probe.__key.40, ptr @.str.41, ptr @fpga_probe.__key.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @gpio_attr_group, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @fpga_ops, ptr @.str.134, ptr @.str.135, ptr @dev_attr_console, ptr @.str.137, ptr @solos_attr_group, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @skb_queue_head_init.__key, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @solos_attrs, ptr @dev_attr_DriverVersion, ptr @dev_attr_APIVersion, ptr @dev_attr_FirmwareVersion, ptr @dev_attr_Version, ptr @dev_attr_Connected, ptr @dev_attr_OperationalMode, ptr @dev_attr_State, ptr @dev_attr_Watchdog, ptr @dev_attr_OperationProgress, ptr @dev_attr_LastFailed, ptr @dev_attr_TxBitRate, ptr @dev_attr_RxBitRate, ptr @dev_attr_TxATTNDR, ptr @dev_attr_RxATTNDR, ptr @dev_attr_AnnexType, ptr @dev_attr_GeneralFailure, ptr @dev_attr_InterleaveDpDn, ptr @dev_attr_InterleaveDpUp, ptr @dev_attr_RSCorrectedErrorsDn, ptr @dev_attr_RSUnCorrectedErrorsDn, ptr @dev_attr_RSCorrectedErrorsUp, ptr @dev_attr_RSUnCorrectedErrorsUp, ptr @dev_attr_InterleaveRDn, ptr @dev_attr_InterleaveRUp, ptr @dev_attr_BisRDn, ptr @dev_attr_BisRUp, ptr @dev_attr_INPdown, ptr @dev_attr_INPup, ptr @dev_attr_ShowtimeStart, ptr @dev_attr_ATURVendor, ptr @dev_attr_ATUCCountry, ptr @dev_attr_ATURANSIRev, ptr @dev_attr_ATURANSISTD, ptr @dev_attr_ATUCANSIRev, ptr @dev_attr_ATUCANSIId, ptr @dev_attr_ATUCANSISTD, ptr @dev_attr_DataBoost, ptr @dev_attr_LocalITUCountryCode, ptr @dev_attr_LocalSEF, ptr @dev_attr_LocalEndLOS, ptr @dev_attr_LocalSNRMargin, ptr @dev_attr_LocalLineAttn, ptr @dev_attr_RawAttn, ptr @dev_attr_LocalTxPower, ptr @dev_attr_RemoteTxPower, ptr @dev_attr_RemoteSEF, ptr @dev_attr_RemoteLOS, ptr @dev_attr_RemoteLineAttn, ptr @dev_attr_RemoteSNRMargin, ptr @dev_attr_LineUpCount, ptr @dev_attr_SRACnt, ptr @dev_attr_SRACntUp, ptr @dev_attr_ProfileStatus, ptr @dev_attr_Action, ptr @dev_attr_ActivateLine, ptr @dev_attr_LineStatus, ptr @dev_attr_HostControl, ptr @dev_attr_AutoStart, ptr @dev_attr_Failsafe, ptr @dev_attr_ShowtimeLed, ptr @dev_attr_Retrain, ptr @dev_attr_Defaults, ptr @dev_attr_LineMode, ptr @dev_attr_Profile, ptr @dev_attr_DetectNoise, ptr @dev_attr_BisAForceSNRMarginDn, ptr @dev_attr_BisMForceSNRMarginDn, ptr @dev_attr_BisAMaxMargin, ptr @dev_attr_BisMMaxMargin, ptr @dev_attr_AnnexAForceSNRMarginDn, ptr @dev_attr_AnnexAMaxMargin, ptr @dev_attr_AnnexMMaxMargin, ptr @dev_attr_SupportedAnnexes, ptr @dev_attr_Status, ptr @dev_attr_TotalStart, ptr @dev_attr_RecentShowtimeStart, ptr @dev_attr_TotalRxBlocks, ptr @dev_attr_TotalTxBlocks, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.234, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @gpio_attrs, ptr @gpio_attr_GPIO1, ptr @gpio_attr_GPIO2, ptr @gpio_attr_GPIO3, ptr @gpio_attr_GPIO4, ptr @gpio_attr_GPIO5, ptr @gpio_attr_PushButton, ptr @gpio_attr_HardwareVersion, ptr @gpio_attr_HardwareVariant, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271], section "llvm.metadata"
@0 = internal global [352 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmdebug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_upgrade to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_upgrade to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_firmware_upgrade to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_fpga_upgrade to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_pci_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_bh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_bh._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_bh._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_bh._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_bh._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_bh._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_bh._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_bh._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_tx._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_buffer._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_buffer._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_status._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_status._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_status._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_upgrade._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_upgrade._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_upgrade._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_upgrade._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_upgrade._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_upgrade._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_upgrade._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_upgrade._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_upgrade._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_console to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_init._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_init._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_init._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_init._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @popen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @popen._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pclose._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pclose._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psend._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_attrs to i32), i32 316, i32 384, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_DriverVersion to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_APIVersion to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_FirmwareVersion to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_Version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_Connected to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_OperationalMode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_State to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_Watchdog to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_OperationProgress to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_LastFailed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_TxBitRate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RxBitRate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_TxATTNDR to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RxATTNDR to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_AnnexType to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_GeneralFailure to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_InterleaveDpDn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_InterleaveDpUp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RSCorrectedErrorsDn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RSUnCorrectedErrorsDn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RSCorrectedErrorsUp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RSUnCorrectedErrorsUp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_InterleaveRDn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_InterleaveRUp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_BisRDn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_BisRUp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_INPdown to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_INPup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ShowtimeStart to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ATURVendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ATUCCountry to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ATURANSIRev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ATURANSISTD to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ATUCANSIRev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ATUCANSIId to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ATUCANSISTD to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_DataBoost to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_LocalITUCountryCode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_LocalSEF to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_LocalEndLOS to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_LocalSNRMargin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_LocalLineAttn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RawAttn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_LocalTxPower to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RemoteTxPower to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RemoteSEF to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RemoteLOS to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RemoteLineAttn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RemoteSNRMargin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_LineUpCount to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_SRACnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_SRACntUp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ProfileStatus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_Action to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ActivateLine to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_LineStatus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_HostControl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_AutoStart to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_Failsafe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ShowtimeLed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_Retrain to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_Defaults to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_LineMode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_Profile to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_DetectNoise to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_BisAForceSNRMarginDn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_BisMForceSNRMarginDn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_BisAMaxMargin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_BisMMaxMargin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_AnnexAForceSNRMarginDn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_AnnexAMaxMargin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_AnnexMMaxMargin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_SupportedAnnexes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_Status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_TotalStart to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_RecentShowtimeStart to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_TotalRxBlocks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_TotalTxBlocks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_param_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_param_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_param_store._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attr_GPIO1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attr_GPIO2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attr_GPIO3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attr_GPIO4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attr_GPIO5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attr_PushButton to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attr_HardwareVersion to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_attr_HardwareVariant to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solos_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @solos_pci_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @fpga_driver) #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @solos_pci_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.2) #16
  %call3 = tail call i32 @__pci_register_driver(ptr noundef nonnull @fpga_driver, ptr noundef null, ptr noundef nonnull @.str.1) #13
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fpga_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 852) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 8
  %fw_wq = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %fw_wq, ptr noundef nonnull @.str.7, ptr noundef nonnull @fpga_probe.__key) #13
  %param_wq = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %param_wq, ptr noundef nonnull @.str.9, ptr noundef nonnull @fpga_probe.__key.8) #13
  %call5 = tail call i32 @pci_enable_device(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.10) #16
  br label %out

if.end12:                                         ; preds = %if.end
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev13, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.15) #16
  br label %out

if.end21:                                         ; preds = %if.end12
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev13, i64 noundef 4294967295) #13
  %call22 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str.6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.18) #16
  br label %out

if.end29:                                         ; preds = %if.end21
  %call30 = tail call ptr @pci_iomap(ptr noundef %dev, i32 noundef 0, i32 noundef 128) #13
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call30, ptr %call7.i.i, align 8
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.21) #16
  br label %out_release_regions

if.end38:                                         ; preds = %if.end29
  %call39 = tail call ptr @pci_iomap(ptr noundef %dev, i32 noundef 1, i32 noundef 32768) #13
  %buffers = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call39, ptr %buffers, align 4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.24) #16
  br label %out_unmap_config

if.end47:                                         ; preds = %if.end38
  %4 = load i32, ptr @reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool48.not = icmp eq i32 %4, 0
  br i1 %tobool48.not, label %if.end47.if.end59_crit_edge, label %if.then49

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call7.i.i, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #13, !srcloc !658
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i.i, align 8
  %add.ptr52 = getelementptr i8, ptr %8, i32 92
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #13, !srcloc !659
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i, align 8
  %add.ptr55 = getelementptr i8, ptr %11, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 0) #13, !srcloc !658
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %add.ptr57 = getelementptr i8, ptr %13, i32 92
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #13, !srcloc !659
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  br label %if.end59

if.end59:                                         ; preds = %if.then49, %if.end47.if.end59_crit_edge
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %add.ptr61 = getelementptr i8, ptr %16, i32 116
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #13, !srcloc !659
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %shr = lshr i32 %18, 24
  %and65 = lshr i32 %18, 16
  %conv69 = and i32 %and65, 255
  %trunc = trunc i32 %17 to i16
  %rev = tail call i16 @llvm.bswap.i16(i16 %trunc)
  %add = zext i16 %rev to i32
  %fpga_version = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 21
  %19 = ptrtoint ptr %fpga_version to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %fpga_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %rev)
  %cmp = icmp ugt i16 %rev, 2
  %spec.select = select i1 %cmp, i32 2048, i32 4096
  %20 = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 22
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %20, align 4
  %conv81 = and i32 %18, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.27, i32 noundef %shr, i32 noundef %conv69, i32 noundef %conv81) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %conv81)
  %cmp83 = icmp ult i32 %conv81, 37
  br i1 %cmp83, label %land.lhs.true, label %if.end96

land.lhs.true:                                    ; preds = %if.end59
  %22 = load i32, ptr @fpga_upgrade, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool85.not = icmp eq i32 %22, 0
  br i1 %tobool85.not, label %lor.lhs.false, label %land.lhs.true.do.end94_crit_edge

land.lhs.true.do.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end94

lor.lhs.false:                                    ; preds = %land.lhs.true
  %23 = load i32, ptr @firmware_upgrade, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool86.not = icmp eq i32 %23, 0
  br i1 %tobool86.not, label %lor.lhs.false87, label %lor.lhs.false.do.end94_crit_edge

lor.lhs.false.do.end94_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end94

lor.lhs.false87:                                  ; preds = %lor.lhs.false
  %24 = load i32, ptr @db_fpga_upgrade, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool88.not = icmp eq i32 %24, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %lor.lhs.false87.do.end94_crit_edge

lor.lhs.false87.do.end94_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end94

lor.lhs.false89:                                  ; preds = %lor.lhs.false87
  %25 = load i32, ptr @db_firmware_upgrade, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool90.not = icmp eq i32 %25, 0
  br i1 %tobool90.not, label %lor.lhs.false89.if.end103_crit_edge, label %lor.lhs.false89.do.end94_crit_edge

lor.lhs.false89.do.end94_crit_edge:               ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end94

lor.lhs.false89.if.end103_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

do.end94:                                         ; preds = %lor.lhs.false89.do.end94_crit_edge, %lor.lhs.false87.do.end94_crit_edge, %lor.lhs.false.do.end94_crit_edge, %land.lhs.true.do.end94_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13, ptr noundef nonnull @.str.31) #16
  store i32 0, ptr @firmware_upgrade, align 4
  store i32 0, ptr @fpga_upgrade, align 4
  store i32 0, ptr @db_firmware_upgrade, align 4
  store i32 0, ptr @db_fpga_upgrade, align 4
  br label %if.end103

if.end96:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %conv81)
  %cmp98 = icmp ult i32 %conv81, 39
  %spec.select312 = zext i1 %cmp98 to i32
  br label %if.end103

if.end103:                                        ; preds = %if.end96, %do.end94, %lor.lhs.false89.if.end103_crit_edge
  %.sink = phi i32 [ 1, %lor.lhs.false89.if.end103_crit_edge ], [ 1, %do.end94 ], [ %spec.select312, %if.end96 ]
  %atmel_flash102 = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 23
  %26 = ptrtoint ptr %atmel_flash102 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %atmel_flash102, align 8
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %add.ptr105 = getelementptr i8, ptr %28, i32 104
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #13, !srcloc !659
  %30 = lshr i32 %29, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %nr_ports = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %nr_ports to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %nr_ports, align 8
  %32 = ptrtoint ptr %fpga_version to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fpga_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp109 = icmp sgt i32 %33, 3
  br i1 %cmp109, label %if.then111, label %if.else123

if.then111:                                       ; preds = %if.end103
  tail call void @pci_set_master(ptr noundef %dev) #13
  %using_dma = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 19
  %34 = ptrtoint ptr %using_dma to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %using_dma, align 8
  %dma_alignment = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 20
  %35 = ptrtoint ptr %dma_alignment to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %dma_alignment, align 4
  %36 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_ports, align 8
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 2048) #13
  %39 = extractvalue { i32, i1 } %38, 1
  br i1 %39, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !661

kmalloc_array.exit.thread:                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #15
  %dma_bounce305 = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 16
  %40 = ptrtoint ptr %dma_bounce305 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %dma_bounce305, align 4
  br label %do.end119

if.end7.i:                                        ; preds = %if.then111
  %41 = extractvalue { i32, i1 } %38, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3264) #18
  %dma_bounce = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 16
  %42 = ptrtoint ptr %dma_bounce to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call8.i, ptr %dma_bounce, align 4
  %tobool115.not = icmp eq ptr %call8.i, null
  br i1 %tobool115.not, label %if.end7.i.do.end119_crit_edge, label %if.end7.i.if.end127_crit_edge

if.end7.i.if.end127_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.end7.i.do.end119_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end119

do.end119:                                        ; preds = %if.end7.i.do.end119_crit_edge, %kmalloc_array.exit.thread
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 8
  %dev121 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev121, ptr noundef nonnull @.str.34) #16
  br label %out_unmap_both

if.else123:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %using_dma124 = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 19
  %45 = ptrtoint ptr %using_dma124 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %using_dma124, align 8
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call7.i.i, align 8
  %add.ptr126 = getelementptr i8, ptr %47, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 -268435456) #13, !srcloc !658
  br label %if.end127

if.end127:                                        ; preds = %if.else123, %if.end7.i.if.end127_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %tlet = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %call7.i.i to i32
  tail call void @tasklet_init(ptr noundef %tlet, ptr noundef nonnull @solos_bh, i32 noundef %49) #13
  %tx_lock = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @fpga_probe.__key.36, i16 noundef signext 3) #13
  %tx_queue_lock = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %tx_queue_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @fpga_probe.__key.38, i16 noundef signext 3) #13
  %cli_queue_lock = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %cli_queue_lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @fpga_probe.__key.40, i16 noundef signext 3) #13
  %param_queue_lock = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %param_queue_lock, ptr noundef nonnull @.str.43, ptr noundef nonnull @fpga_probe.__key.42, i16 noundef signext 3) #13
  %param_queue = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 11
  %50 = ptrtoint ptr %param_queue to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %param_queue, ptr %param_queue, align 4
  %prev.i = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 11, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %param_queue, ptr %prev.i, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  %call.i302 = tail call i32 @request_threaded_irq(i32 noundef %53, ptr noundef nonnull @solos_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.44, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302)
  %tobool145.not = icmp eq i32 %call.i302, 0
  br i1 %tobool145.not, label %if.end160, label %do.body147

do.body147:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fpga_probe.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fpga_probe, %out_unmap_both)) #13
          to label %if.then153 [label %out_unmap_both], !srcloc !662

if.then153:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev1, align 8
  %dev155 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fpga_probe.__UNIQUE_ID_ddebug481, ptr noundef %dev155, ptr noundef nonnull @.str.45, i32 noundef %57) #13
  br label %out_unmap_both

if.end160:                                        ; preds = %if.end127
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call7.i.i, align 8
  %add.ptr162 = getelementptr i8, ptr %59, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 16777216) #13, !srcloc !658
  %60 = load i32, ptr @fpga_upgrade, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool163.not = icmp eq i32 %60, 0
  br i1 %tobool163.not, label %if.end160.if.end166_crit_edge, label %if.then164

if.end160.if.end166_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end166

if.then164:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @flash_upgrade(ptr noundef nonnull %call7.i.i, i32 noundef 0)
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %if.end160.if.end166_crit_edge
  %61 = load i32, ptr @firmware_upgrade, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool167.not = icmp eq i32 %61, 0
  br i1 %tobool167.not, label %if.end166.if.end170_crit_edge, label %if.then168

if.end166.if.end170_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end170

if.then168:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @flash_upgrade(ptr noundef nonnull %call7.i.i, i32 noundef 1)
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %if.end166.if.end170_crit_edge
  %62 = load i32, ptr @db_fpga_upgrade, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool171.not = icmp eq i32 %62, 0
  br i1 %tobool171.not, label %if.end170.if.end174_crit_edge, label %if.then172

if.end170.if.end174_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end174

if.then172:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @flash_upgrade(ptr noundef nonnull %call7.i.i, i32 noundef 2)
  br label %if.end174

if.end174:                                        ; preds = %if.then172, %if.end170.if.end174_crit_edge
  %63 = load i32, ptr @db_firmware_upgrade, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool175.not = icmp eq i32 %63, 0
  br i1 %tobool175.not, label %if.end174.if.end178_crit_edge, label %if.then176

if.end174.if.end178_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178

if.then176:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @flash_upgrade(ptr noundef nonnull %call7.i.i, i32 noundef 3)
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %if.end174.if.end178_crit_edge
  %call180 = tail call fastcc i32 @atm_init(ptr noundef nonnull %call7.i.i, ptr noundef %dev13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end183, label %out_free_irq

if.end183:                                        ; preds = %if.end178
  %64 = ptrtoint ptr %fpga_version to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %fpga_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp185 = icmp sgt i32 %65, 3
  br i1 %cmp185, label %land.lhs.true187, label %if.end183.cleanup_crit_edge

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true187:                                 ; preds = %if.end183
  %66 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1, align 8
  %dev189 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %call190 = tail call i32 @sysfs_create_group(ptr noundef %dev189, ptr noundef nonnull @gpio_attr_group) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %land.lhs.true187.cleanup_crit_edge, label %do.end195

land.lhs.true187.cleanup_crit_edge:               ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end195:                                        ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1, align 8
  %dev197 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev197, ptr noundef nonnull @.str.47) #16
  br label %cleanup

out_free_irq:                                     ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call7.i.i, align 8
  %add.ptr200 = getelementptr i8, ptr %71, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 0) #13, !srcloc !658
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  %call202 = tail call ptr @free_irq(i32 noundef %73, ptr noundef nonnull %call7.i.i) #13
  tail call void @tasklet_kill(ptr noundef %tlet) #13
  br label %out_unmap_both

out_unmap_both:                                   ; preds = %out_free_irq, %if.then153, %do.body147, %do.end119
  %err.0 = phi i32 [ %call.i302, %if.then153 ], [ %call180, %out_free_irq ], [ -12, %do.end119 ], [ %call.i302, %do.body147 ]
  %dma_bounce204 = getelementptr inbounds %struct.solos_card, ptr %call7.i.i, i32 0, i32 16
  %74 = ptrtoint ptr %dma_bounce204 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma_bounce204, align 4
  tail call void @kfree(ptr noundef %75) #13
  %76 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buffers, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %77) #13
  br label %out_unmap_config

out_unmap_config:                                 ; preds = %out_unmap_both, %do.end45
  %err.1 = phi i32 [ %err.0, %out_unmap_both ], [ -12, %do.end45 ]
  %78 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call7.i.i, align 8
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %79) #13
  br label %out_release_regions

out_release_regions:                              ; preds = %out_unmap_config, %do.end36
  %err.2 = phi i32 [ %err.1, %out_unmap_config ], [ -12, %do.end36 ]
  tail call void @pci_release_regions(ptr noundef %dev) #13
  br label %out

out:                                              ; preds = %out_release_regions, %do.end27, %do.end19, %do.end10
  %err.3 = phi i32 [ %call5, %do.end10 ], [ %call.i, %do.end19 ], [ %call22, %do.end27 ], [ %err.2, %out_release_regions ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end195, %land.lhs.true187.cleanup_crit_edge, %if.end183.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end195 ], [ 0, %land.lhs.true187.cleanup_crit_edge ], [ 0, %if.end183.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fpga_remove(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !658
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #13, !srcloc !658
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 92
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #13, !srcloc !659
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %fpga_version = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %fpga_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fpga_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp sgt i32 %10, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev6 = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void @sysfs_remove_group(ptr noundef %dev7, ptr noundef nonnull @gpio_attr_group) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @atm_remove(ptr noundef %1)
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %1) #13
  %tlet = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 6
  tail call void @tasklet_kill(ptr noundef %tlet) #13
  %dma_bounce = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %dma_bounce to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_bounce, align 4
  tail call void @kfree(ptr noundef %16) #13
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr10 = getelementptr i8, ptr %18, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #13, !srcloc !658
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr12 = getelementptr i8, ptr %20, i32 92
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #13, !srcloc !659
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %buffers = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffers, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %23) #13
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void @pci_iounmap(ptr noundef %dev, ptr noundef %25) #13
  tail call void @pci_release_regions(ptr noundef %dev) #13
  tail call void @pci_disable_device(ptr noundef %dev) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @solos_bh(i32 noundef %card_arg) #3 align 64 {
entry:
  %cmdpid.i = alloca i32, align 4
  %_hdr = alloca %struct.pkt_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %card_arg to ptr
  %call = tail call fastcc i32 @fpga_tx(ptr noundef %0)
  %nr_ports = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp296 = icmp sgt i32 %2, 0
  br i1 %cmp296, label %for.body.lr.ph, label %entry.if.end168_crit_edge

entry.if.end168_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end168

for.body.lr.ph:                                   ; preds = %entry
  %using_dma = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 19
  %dev = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 4
  %buffers = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 1
  %buffer_size = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 22
  %param_queue_lock.i = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 10
  %param_queue.i = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 11
  %param_wq.i = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 17
  %cli_queue_lock = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 9
  %state.i = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 6, i32 1
  %tlet = getelementptr inbounds %struct.solos_card, ptr %0, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.0298 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rx_done.0297 = phi i32 [ 0, %for.body.lr.ph ], [ %rx_done.4, %for.inc.for.body_crit_edge ]
  %shl = shl i32 16, %port.0298
  %and = and i32 %shl, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end121_crit_edge, label %if.then

for.body.if.end121_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_hdr) #13
  %3 = ptrtoint ptr %_hdr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %_hdr, align 8
  %4 = ptrtoint ptr %using_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %using_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.solos_card, ptr %0, i32 0, i32 15, i32 %port.0298
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev5, i32 noundef %11, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #13
  %data = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv = zext i16 %16 to i32
  %add = add nuw nsw i32 %conv, 8
  %call7 = call ptr @skb_put(ptr noundef %7, i32 noundef %add) #13
  %call8 = call ptr @skb_pull(ptr noundef %7, i32 noundef 8) #13
  br label %if.end40

if.else:                                          ; preds = %if.then
  %or = or i32 %shl, %rx_done.0297
  %17 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffers, align 4
  %19 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buffer_size, align 4
  %mul = shl nuw i32 %port.0298, 1
  %mul10 = mul i32 %mul, %20
  %add.ptr = getelementptr i8, ptr %18, i32 %mul10
  call void @mmiocpy(ptr noundef nonnull %_hdr, ptr noundef %add.ptr, i32 noundef 8) #13
  %21 = ptrtoint ptr %_hdr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %_hdr, align 8
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv12 = zext i16 %23 to i32
  %24 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buffer_size, align 4
  %sub = add i32 %25, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv12)
  %cmp14 = icmp ult i32 %sub, %conv12
  br i1 %cmp14, label %if.else.cleanup.sink.split_crit_edge, label %if.end

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.else
  %add.i.i = add nuw nsw i32 %conv12, 3
  %call.i.i266 = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i.i, i32 noundef 2592) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i266, null
  br i1 %tobool.not.i.i, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.end
  %call23 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %if.then22.cleanup.sink.split_crit_edge

if.then22.cleanup.sink.split_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i266, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i266, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %29, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call33 = call ptr @skb_put(ptr noundef nonnull %call.i.i266, i32 noundef %conv12) #13
  %30 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffers, align 4
  %32 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer_size, align 4
  %mul37 = mul i32 %mul, %33
  %add.ptr38 = getelementptr i8, ptr %31, i32 8
  %add.ptr39 = getelementptr i8, ptr %add.ptr38, i32 %mul37
  call void @mmiocpy(ptr noundef %call33, ptr noundef %add.ptr39, i32 noundef %conv12) #13
  br label %if.end40

if.end40:                                         ; preds = %if.end32, %if.then2
  %rx_done.1 = phi i32 [ %rx_done.0297, %if.then2 ], [ %or, %if.end32 ]
  %header.0 = phi ptr [ %13, %if.then2 ], [ %_hdr, %if.end32 ]
  %skb.0 = phi ptr [ %7, %if.then2 ], [ %call.i.i266, %if.end32 ]
  %size.0 = phi i32 [ %conv, %if.then2 ], [ %conv12, %if.end32 ]
  %34 = load i32, ptr @atmdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool41.not = icmp eq i32 %34, 0
  br i1 %tobool41.not, label %if.end40.if.end56_crit_edge, label %do.end45

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev47, ptr noundef nonnull @.str.56, i32 noundef %port.0298) #16
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %vpi = getelementptr inbounds %struct.pkt_hdr, ptr %header.0, i32 0, i32 1
  %39 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vpi, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %conv53 = zext i16 %41 to i32
  %vci = getelementptr inbounds %struct.pkt_hdr, ptr %header.0, i32 0, i32 2
  %42 = ptrtoint ptr %vci to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vci, align 2
  %44 = call i16 @llvm.bswap.i16(i16 %43)
  %conv54 = zext i16 %44 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev52, ptr noundef nonnull @.str.59, i32 noundef %size.0, i32 noundef %conv53, i32 noundef %conv54) #16
  call fastcc void @print_buffer(ptr noundef %skb.0)
  br label %if.end56

if.end56:                                         ; preds = %do.end45, %if.end40.if.end56_crit_edge
  %type = getelementptr inbounds %struct.pkt_hdr, ptr %header.0, i32 0, i32 3
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %type, align 2
  %47 = call i16 @llvm.bswap.i16(i16 %46)
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i16 %47, label %sw.default [
    i16 0, label %sw.bb
    i16 5, label %sw.bb80
  ]

sw.bb:                                            ; preds = %if.end56
  %arrayidx58 = getelementptr %struct.solos_card, ptr %0, i32 0, i32 5, i32 %port.0298
  %49 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx58, align 4
  %vpi59 = getelementptr inbounds %struct.pkt_hdr, ptr %header.0, i32 0, i32 1
  %51 = ptrtoint ptr %vpi59 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vpi59, align 2
  %53 = call i16 @llvm.bswap.i16(i16 %52)
  %vci60 = getelementptr inbounds %struct.pkt_hdr, ptr %header.0, i32 0, i32 2
  %54 = ptrtoint ptr %vci60 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vci60, align 2
  %56 = call i16 @llvm.bswap.i16(i16 %55)
  %conv61 = zext i16 %56 to i32
  call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #13
  %and.i = and i32 %conv61, 31
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @vcc_hash, i32 0, i32 %and.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %58, null
  %add.ptr.i = getelementptr i8, ptr %58, i32 -84
  %tobool2.not4246.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not42.i = or i1 %tobool.not.i, %tobool2.not4246.i
  br i1 %tobool2.not42.i, label %sw.bb.if.then64_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.if.then64_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then64

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %s.043.i = phi ptr [ %add.ptr24.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %sw.bb.for.body.i_crit_edge ]
  %dev3.i = getelementptr inbounds %struct.atm_vcc, ptr %s.043.i, i32 0, i32 6
  %59 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev3.i, align 4
  %cmp.i = icmp eq ptr %60, %50
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vci4.i = getelementptr inbounds %struct.atm_vcc, ptr %s.043.i, i32 0, i32 3
  %61 = ptrtoint ptr %vci4.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vci4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %conv61)
  %cmp5.i = icmp eq i32 %62, %conv61
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %vpi7.i = getelementptr inbounds %struct.atm_vcc, ptr %s.043.i, i32 0, i32 2
  %63 = ptrtoint ptr %vpi7.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vpi7.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %53)
  %cmp9.i = icmp eq i16 %64, %53
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %land.lhs.true6.i
  %rxtp.i = getelementptr inbounds %struct.atm_vcc, ptr %s.043.i, i32 0, i32 7, i32 1
  %65 = ptrtoint ptr %rxtp.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %rxtp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp13.not.i = icmp eq i8 %66, 0
  br i1 %cmp13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %land.lhs.true15.i

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %land.lhs.true11.i
  %flags.i = getelementptr inbounds %struct.atm_vcc, ptr %s.043.i, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags.i, align 4
  %69 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool17.not.i = icmp eq i32 %69, 0
  br i1 %tobool17.not.i, label %land.lhs.true15.i.for.inc.i_crit_edge, label %if.end78

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %land.lhs.true11.i.for.inc.i_crit_edge, %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %70 = getelementptr inbounds %struct.sock_common, ptr %s.043.i, i32 0, i32 15
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool20.not.i = icmp eq ptr %72, null
  %add.ptr24.i = getelementptr i8, ptr %72, i32 -84
  %tobool2.not47.i = icmp eq ptr %add.ptr24.i, null
  %tobool2.not.i = or i1 %tobool20.not.i, %tobool2.not47.i
  br i1 %tobool2.not.i, label %for.inc.i.if.then64_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.then64_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then64

if.then64:                                        ; preds = %for.inc.i.if.then64_crit_edge, %sw.bb.if.then64_crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #13
  %call65 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end77_crit_edge, label %do.end70

if.then64.if.end77_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

do.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %75 = ptrtoint ptr %vpi59 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vpi59, align 2
  %77 = call i16 @llvm.bswap.i16(i16 %76)
  %conv74 = zext i16 %77 to i32
  %78 = ptrtoint ptr %vci60 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %vci60, align 2
  %80 = call i16 @llvm.bswap.i16(i16 %79)
  %conv76 = zext i16 %80 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev72, ptr noundef nonnull @.str.62, i32 noundef %conv74, i32 noundef %conv76, i32 noundef %port.0298) #16
  br label %if.end77

if.end77:                                         ; preds = %do.end70, %if.then64.if.end77_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb.0, i32 noundef 1) #13
  br label %cleanup.thread

if.end78:                                         ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #13
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 20
  %81 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %truesize, align 8
  %call79 = call i32 @atm_charge(ptr noundef nonnull %s.043.i, i32 noundef %82) #13
  %push = getelementptr inbounds %struct.atm_vcc, ptr %s.043.i, i32 0, i32 10
  %83 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %push, align 8
  call void %84(ptr noundef nonnull %s.043.i, ptr noundef %skb.0) #13
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %s.043.i, i32 0, i32 16
  %85 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %stats, align 8
  %rx = getelementptr inbounds %struct.k_atm_aal_stats, ptr %86, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %rx, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %rx, i32 1, i32 3, i32 1) #13
  %87 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx, ptr %rx, i32 1, ptr elementtype(i32) %rx) #13, !srcloc !663
  br label %cleanup.thread

sw.bb80:                                          ; preds = %if.end56
  %call81 = call fastcc i32 @process_status(ptr noundef %0, i32 noundef %port.0298, ptr noundef %skb.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %sw.bb80.if.end92_crit_edge, label %land.lhs.true

sw.bb80.if.end92_crit_edge:                       ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

land.lhs.true:                                    ; preds = %sw.bb80
  %call83 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.lhs.true.if.end92_crit_edge, label %do.end88

land.lhs.true.if.end92_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

do.end88:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 4
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %90 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev90, ptr noundef nonnull @.str.65, i32 noundef %91, i32 noundef %port.0298) #16
  call fastcc void @print_buffer(ptr noundef %skb.0)
  br label %if.end92

if.end92:                                         ; preds = %do.end88, %land.lhs.true.if.end92_crit_edge, %sw.bb80.if.end92_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb.0, i32 noundef 1) #13
  br label %cleanup.thread

sw.default:                                       ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmdpid.i) #13
  %92 = ptrtoint ptr %cmdpid.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %cmdpid.i, align 4, !annotation !664
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %93 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %94)
  %cmp.i267 = icmp ult i32 %94, 7
  br i1 %cmp.i267, label %sw.default.process_command.exit.thread_crit_edge, label %if.end.i

sw.default.process_command.exit.thread_crit_edge: ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_command.exit.thread

if.end.i:                                         ; preds = %sw.default
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %95 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %98)
  %cmp1.not.i = icmp eq i8 %98, 76
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %if.end.i.process_command.exit.thread_crit_edge

if.end.i.process_command.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_command.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx4.i = getelementptr i8, ptr %96, i32 1
  %99 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %100 to i32
  %101 = add nsw i32 %conv5.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %101)
  %102 = icmp ult i32 %101, -10
  br i1 %102, label %lor.lhs.false.i.process_command.exit.thread_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i.process_command.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_command.exit.thread

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx8.i = getelementptr i8, ptr %96, i32 2
  %103 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %104 to i32
  %105 = add nsw i32 %conv9.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %105)
  %106 = icmp ult i32 %105, -10
  br i1 %106, label %lor.lhs.false6.i.process_command.exit.thread_crit_edge, label %lor.lhs.false12.i

lor.lhs.false6.i.process_command.exit.thread_crit_edge: ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_command.exit.thread

lor.lhs.false12.i:                                ; preds = %lor.lhs.false6.i
  %arrayidx14.i = getelementptr i8, ptr %96, i32 3
  %107 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %108 to i32
  %109 = add nsw i32 %conv15.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %109)
  %110 = icmp ult i32 %109, -10
  br i1 %110, label %lor.lhs.false12.i.process_command.exit.thread_crit_edge, label %lor.lhs.false18.i

lor.lhs.false12.i.process_command.exit.thread_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_command.exit.thread

lor.lhs.false18.i:                                ; preds = %lor.lhs.false12.i
  %arrayidx20.i = getelementptr i8, ptr %96, i32 4
  %111 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %112 to i32
  %113 = add nsw i32 %conv21.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %113)
  %114 = icmp ult i32 %113, -10
  br i1 %114, label %lor.lhs.false18.i.process_command.exit.thread_crit_edge, label %lor.lhs.false24.i

lor.lhs.false18.i.process_command.exit.thread_crit_edge: ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_command.exit.thread

lor.lhs.false24.i:                                ; preds = %lor.lhs.false18.i
  %arrayidx26.i = getelementptr i8, ptr %96, i32 5
  %115 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %116 to i32
  %117 = add nsw i32 %conv27.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %117)
  %118 = icmp ult i32 %117, -10
  br i1 %118, label %lor.lhs.false24.i.process_command.exit.thread_crit_edge, label %lor.lhs.false30.i

lor.lhs.false24.i.process_command.exit.thread_crit_edge: ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_command.exit.thread

lor.lhs.false30.i:                                ; preds = %lor.lhs.false24.i
  %arrayidx32.i = getelementptr i8, ptr %96, i32 6
  %119 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %120)
  %cmp34.not.i = icmp eq i8 %120, 10
  br i1 %cmp34.not.i, label %if.end37.i, label %lor.lhs.false30.i.process_command.exit.thread_crit_edge

lor.lhs.false30.i.process_command.exit.thread_crit_edge: ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_command.exit.thread

if.end37.i:                                       ; preds = %lor.lhs.false30.i
  %call40.i = call i32 @kstrtoint(ptr noundef %arrayidx4.i, i32 noundef 10, ptr noundef nonnull %cmdpid.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %do.body44.i, label %process_command.exit.thread284

process_command.exit.thread284:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmdpid.i) #13
  br label %cleanup.thread

do.body44.i:                                      ; preds = %if.end37.i
  %call48.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %param_queue_lock.i) #13
  %121 = ptrtoint ptr %param_queue.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %prm.093.i = load ptr, ptr %param_queue.i, align 4
  %cmp53.not94.i = icmp eq ptr %prm.093.i, %param_queue.i
  br i1 %cmp53.not94.i, label %do.body44.i.process_command.exit.thread288_crit_edge, label %do.body44.i.for.body.i268_crit_edge

do.body44.i.for.body.i268_crit_edge:              ; preds = %do.body44.i
  br label %for.body.i268

do.body44.i.process_command.exit.thread288_crit_edge: ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_command.exit.thread288

for.body.i268:                                    ; preds = %for.inc.i270.for.body.i268_crit_edge, %do.body44.i.for.body.i268_crit_edge
  %prm.095.i = phi ptr [ %prm.0.i, %for.inc.i270.for.body.i268_crit_edge ], [ %prm.093.i, %do.body44.i.for.body.i268_crit_edge ]
  %port55.i = getelementptr inbounds %struct.solos_param, ptr %prm.095.i, i32 0, i32 2
  %122 = ptrtoint ptr %port55.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port55.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %port.0298)
  %cmp56.i = icmp eq i32 %123, %port.0298
  br i1 %cmp56.i, label %land.lhs.true.i269, label %for.body.i268.for.inc.i270_crit_edge

for.body.i268.for.inc.i270_crit_edge:             ; preds = %for.body.i268
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i270

land.lhs.true.i269:                               ; preds = %for.body.i268
  %pid.i = getelementptr inbounds %struct.solos_param, ptr %prm.095.i, i32 0, i32 1
  %124 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pid.i, align 4
  %126 = ptrtoint ptr %cmdpid.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cmdpid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %127)
  %cmp58.i = icmp eq i32 %125, %127
  br i1 %cmp58.i, label %process_command.exit, label %land.lhs.true.i269.for.inc.i270_crit_edge

land.lhs.true.i269.for.inc.i270_crit_edge:        ; preds = %land.lhs.true.i269
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i270

for.inc.i270:                                     ; preds = %land.lhs.true.i269.for.inc.i270_crit_edge, %for.body.i268.for.inc.i270_crit_edge
  %128 = ptrtoint ptr %prm.095.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %prm.0.i = load ptr, ptr %prm.095.i, align 4
  %cmp53.not.i = icmp eq ptr %prm.0.i, %param_queue.i
  br i1 %cmp53.not.i, label %for.inc.i270.process_command.exit.thread288_crit_edge, label %for.inc.i270.for.body.i268_crit_edge

for.inc.i270.for.body.i268_crit_edge:             ; preds = %for.inc.i270
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i268

for.inc.i270.process_command.exit.thread288_crit_edge: ; preds = %for.inc.i270
  call void @__sanitizer_cov_trace_pc() #15
  br label %process_command.exit.thread288

process_command.exit.thread:                      ; preds = %lor.lhs.false30.i.process_command.exit.thread_crit_edge, %lor.lhs.false24.i.process_command.exit.thread_crit_edge, %lor.lhs.false18.i.process_command.exit.thread_crit_edge, %lor.lhs.false12.i.process_command.exit.thread_crit_edge, %lor.lhs.false6.i.process_command.exit.thread_crit_edge, %lor.lhs.false.i.process_command.exit.thread_crit_edge, %if.end.i.process_command.exit.thread_crit_edge, %sw.default.process_command.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmdpid.i) #13
  br label %if.end97

process_command.exit.thread288:                   ; preds = %for.inc.i270.process_command.exit.thread288_crit_edge, %do.body44.i.process_command.exit.thread288_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %param_queue_lock.i, i32 noundef %call48.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmdpid.i) #13
  br label %if.end97

process_command.exit:                             ; preds = %land.lhs.true.i269
  call void @__sanitizer_cov_trace_pc() #15
  %response.i = getelementptr inbounds %struct.solos_param, ptr %prm.095.i, i32 0, i32 3
  %129 = ptrtoint ptr %response.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %skb.0, ptr %response.i, align 4
  %call61.i = call ptr @skb_pull(ptr noundef %skb.0, i32 noundef 7) #13
  call void @__wake_up(ptr noundef %param_wq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %param_queue_lock.i, i32 noundef %call48.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmdpid.i) #13
  br label %cleanup.thread

if.end97:                                         ; preds = %process_command.exit.thread288, %process_command.exit.thread
  call void @_raw_spin_lock(ptr noundef %cli_queue_lock) #13
  %qlen.i = getelementptr %struct.solos_card, ptr %0, i32 0, i32 13, i32 %port.0298, i32 1
  %130 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %131)
  %cmp100 = icmp ugt i32 %131, 10
  br i1 %cmp100, label %if.then102, label %if.else112

if.then102:                                       ; preds = %if.end97
  %call103 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then102.if.end111_crit_edge, label %do.end108

if.then102.if.end111_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

do.end108:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #15
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 4
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev110, ptr noundef nonnull @.str.68, i32 noundef %port.0298) #16
  br label %if.end111

if.end111:                                        ; preds = %do.end108, %if.then102.if.end111_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef %skb.0, i32 noundef 1) #13
  br label %if.end115

if.else112:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx98 = getelementptr %struct.solos_card, ptr %0, i32 0, i32 13, i32 %port.0298
  call void @skb_queue_tail(ptr noundef %arrayidx98, ptr noundef %skb.0) #13
  br label %if.end115

if.end115:                                        ; preds = %if.else112, %if.end111
  call void @_raw_spin_unlock(ptr noundef %cli_queue_lock) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end115, %process_command.exit, %process_command.exit.thread284, %if.end92, %if.end78, %if.end77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr) #13
  br label %if.end121

cleanup.sink.split:                               ; preds = %if.then22.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge
  %.str.53.sink = phi ptr [ @.str.50, %if.else.cleanup.sink.split_crit_edge ], [ @.str.53, %if.then22.cleanup.sink.split_crit_edge ]
  %134 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30, ptr noundef nonnull %.str.53.sink) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then22.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr) #13
  br label %for.inc

if.end121:                                        ; preds = %cleanup.thread, %for.body.if.end121_crit_edge
  %rx_done.3 = phi i32 [ %rx_done.0297, %for.body.if.end121_crit_edge ], [ %rx_done.1, %cleanup.thread ]
  %136 = ptrtoint ptr %using_dma to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %using_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool123.not = icmp eq i32 %137, 0
  br i1 %tobool123.not, label %if.end121.for.inc_crit_edge, label %land.lhs.true124

if.end121.for.inc_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true124:                                 ; preds = %if.end121
  %arrayidx126 = getelementptr %struct.solos_card, ptr %0, i32 0, i32 5, i32 %port.0298
  %138 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx126, align 4
  %tobool127.not = icmp eq ptr %139, null
  br i1 %tobool127.not, label %land.lhs.true124.for.inc_crit_edge, label %land.lhs.true128

land.lhs.true124.for.inc_crit_edge:               ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true128:                                 ; preds = %land.lhs.true124
  %arrayidx130 = getelementptr %struct.solos_card, ptr %0, i32 0, i32 15, i32 %port.0298
  %140 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx130, align 4
  %tobool131.not = icmp eq ptr %141, null
  br i1 %tobool131.not, label %if.then132, label %land.lhs.true128.for.inc_crit_edge

land.lhs.true128.for.inc_crit_edge:               ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then132:                                       ; preds = %land.lhs.true128
  %call.i.i271 = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2048, i32 noundef 2592) #13
  %tobool135.not = icmp eq ptr %call.i.i271, null
  br i1 %tobool135.not, label %if.else152, label %if.then136

if.then136:                                       ; preds = %if.then132
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev, align 4
  %dev138 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  %data139 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i271, i32 0, i32 19
  %144 = ptrtoint ptr %data139 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data139, align 4
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %145) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then136
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !665

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %dev138) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44, i32 3
  %146 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i272 = icmp eq ptr %147, null
  br i1 %tobool.not.i.i272, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev138, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %149, %if.end.i.i ], [ %147, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.104, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.105, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #15
  call void @debug_dma_map_single(ptr noundef %dev138, ptr noundef %145, i32 noundef 2048) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %150 = load ptr, ptr @mem_map, align 4
  %151 = ptrtoint ptr %145 to i32
  %sub.i = add i32 %151, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i273 = getelementptr %struct.page, ptr %150, i32 %shr.i
  %and.i274 = and i32 %151, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %dev138, ptr noundef %add.ptr.i273, i32 noundef %and.i274, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i275 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr143 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i271, i32 0, i32 3, i32 4
  %152 = ptrtoint ptr %dma_addr143 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %retval.0.i275, ptr %dma_addr143, align 4
  %153 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %0, align 4
  %mul147 = shl i32 %port.0298, 2
  %add148 = add i32 %mul147, 48
  %add.ptr149 = getelementptr i8, ptr %154, i32 %add148
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  %155 = call i32 @llvm.bswap.i32(i32 %retval.0.i275) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 %155) #13, !srcloc !658
  %156 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %call.i.i271, ptr %arrayidx130, align 4
  br label %for.inc

if.else152:                                       ; preds = %if.then132
  %call153 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.else152.if.end161_crit_edge, label %do.end158

if.else152.if.end161_crit_edge:                   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

do.end158:                                        ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #15
  %157 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev, align 4
  %dev160 = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev160, ptr noundef nonnull @.str.71) #16
  br label %if.end161

if.end161:                                        ; preds = %do.end158, %if.else152.if.end161_crit_edge
  %call.i276 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool.not.i277 = icmp eq i32 %call.i276, 0
  br i1 %tobool.not.i277, label %if.then.i278, label %if.end161.for.inc_crit_edge

if.end161.for.inc_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i278:                                     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  call void @__tasklet_schedule(ptr noundef %tlet) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then.i278, %if.end161.for.inc_crit_edge, %dma_map_single_attrs.exit, %land.lhs.true128.for.inc_crit_edge, %land.lhs.true124.for.inc_crit_edge, %if.end121.for.inc_crit_edge, %cleanup
  %rx_done.4 = phi i32 [ %or, %cleanup ], [ %rx_done.3, %land.lhs.true128.for.inc_crit_edge ], [ %rx_done.3, %land.lhs.true124.for.inc_crit_edge ], [ %rx_done.3, %if.end121.for.inc_crit_edge ], [ %rx_done.3, %dma_map_single_attrs.exit ], [ %rx_done.3, %if.end161.for.inc_crit_edge ], [ %rx_done.3, %if.then.i278 ]
  %inc = add nuw nsw i32 %port.0298, 1
  %159 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %nr_ports, align 4
  %cmp = icmp slt i32 %inc, %160
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_done.4)
  %tobool164.not = icmp eq i32 %rx_done.4, 0
  br i1 %tobool164.not, label %for.end.if.end168_crit_edge, label %if.then165

for.end.if.end168_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end168

if.then165:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %161 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %0, align 4
  %add.ptr167 = getelementptr i8, ptr %162, i32 124
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  %163 = call i32 @llvm.bswap.i32(i32 %rx_done.4) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 %163) #13, !srcloc !658
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %for.end.if.end168_crit_edge, %entry.if.end168_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solos_irq(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !658
  %atmdev = getelementptr inbounds %struct.solos_card, ptr %dev_id, i32 0, i32 5
  %2 = ptrtoint ptr %atmdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atmdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.solos_card, ptr %dev_id, i32 0, i32 6, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %tlet = getelementptr inbounds %struct.solos_card, ptr %dev_id, i32 0, i32 6
  tail call void @__tasklet_schedule(ptr noundef %tlet) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %fw_wq = getelementptr inbounds %struct.solos_card, ptr %dev_id, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %fw_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flash_upgrade(ptr noundef %card, i32 noundef %chip) unnamed_addr #3 align 64 {
entry:
  %fw = alloca ptr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry167 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #13
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !664
  %1 = zext i32 %chip to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %chip, label %entry.cleanup202_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb7
    i32 3, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.cleanup202_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup202

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %fpga_version = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 21
  %2 = ptrtoint ptr %fpga_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fpga_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %sw.bb7.sw.epilog_crit_edge, label %do.end

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.109) #16
  br label %cleanup202

sw.bb17:                                          ; preds = %entry
  %fpga_version18 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 21
  %6 = ptrtoint ptr %fpga_version18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fpga_version18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp19 = icmp sgt i32 %7, 2
  br i1 %cmp19, label %sw.bb17.sw.epilog_crit_edge, label %do.end29

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end29:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #15
  %dev30 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %8 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev30, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef nonnull @.str.109) #16
  br label %cleanup202

sw.epilog:                                        ; preds = %sw.bb17.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 4096, %sw.bb1 ], [ 4224, %entry.sw.epilog_crit_edge ], [ 4224, %sw.bb7.sw.epilog_crit_edge ], [ 4096, %sw.bb17.sw.epilog_crit_edge ]
  %fw_name.0 = phi ptr [ @.str.107, %sw.bb1 ], [ @.str.106, %entry.sw.epilog_crit_edge ], [ @.str.108, %sw.bb7.sw.epilog_crit_edge ], [ @.str.107, %sw.bb17.sw.epilog_crit_edge ]
  %atmel_flash21 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 23
  %10 = ptrtoint ptr %atmel_flash21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %atmel_flash21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  %.3 = select i1 %tobool22.not, i32 16384, i32 %.sink
  %dev33 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %12 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev33, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %fw_name.0, ptr noundef %dev34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool35.not = icmp eq i32 %call, 0
  br i1 %tobool35.not, label %do.end40, label %sw.epilog.cleanup202_crit_edge

sw.epilog.cleanup202_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup202

do.end40:                                         ; preds = %sw.epilog
  %14 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev33, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42, ptr noundef nonnull @.str.114) #16
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #13, !srcloc !658
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %div = udiv i32 %21, %.3
  %22 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev33, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev47, ptr noundef nonnull @.str.117, i32 noundef %21) #16
  %24 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev33, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev53, ptr noundef nonnull @.str.120, i32 noundef %div) #16
  %26 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev33, align 4
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev58, ptr noundef nonnull @.str.123) #16
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %add.ptr60 = getelementptr i8, ptr %29, i32 92
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 16777216) #13, !srcloc !658
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 4
  %add.ptr62 = getelementptr i8, ptr %31, i32 92
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #13, !srcloc !659
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %33 = zext i32 %chip to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %chip, label %do.end40.if.end82_crit_edge [
    i32 0, label %do.end40.do.end69_crit_edge
    i32 2, label %do.end40.do.end69_crit_edge28
    i32 1, label %do.end40.do.end79_crit_edge
    i32 3, label %do.end40.do.end79_crit_edge29
  ]

do.end40.do.end79_crit_edge29:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end79

do.end40.do.end79_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end79

do.end40.do.end69_crit_edge28:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end69

do.end40.do.end69_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end69

do.end40.if.end82_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

do.end69:                                         ; preds = %do.end40.do.end69_crit_edge, %do.end40.do.end69_crit_edge28
  %34 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev33, align 4
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef nonnull @.str.126) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chip)
  %cond = icmp eq i32 %chip, 1
  br i1 %cond, label %do.end69.do.end79_crit_edge, label %do.end69.if.end82_crit_edge

do.end69.if.end82_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

do.end69.do.end79_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end79

do.end79:                                         ; preds = %do.end69.do.end79_crit_edge, %do.end40.do.end79_crit_edge, %do.end40.do.end79_crit_edge29
  %36 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev33, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev81, ptr noundef nonnull @.str.129) #16
  br label %if.end82

if.end82:                                         ; preds = %do.end79, %do.end69.if.end82_crit_edge, %do.end40.if.end82_crit_edge
  %mul = shl nuw nsw i32 %chip, 1
  %38 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card, align 4
  %add.ptr84 = getelementptr i8, ptr %39, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  %40 = call i32 @llvm.bswap.i32(i32 %mul) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %40) #13, !srcloc !658
  %41 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card, align 4
  %add.ptr86 = getelementptr i8, ptr %42, i32 108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 16777216) #13, !srcloc !658
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 702) #13
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %add.ptr95 = getelementptr i8, ptr %44, i32 96
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #13, !srcloc !659
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool97.not = icmp eq i32 %45, 0
  br i1 %tobool97.not, label %if.end82.do.end109_crit_edge, label %if.end99

if.end82.do.end109_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end109

if.end99:                                         ; preds = %if.end82
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %46 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %fw_wq = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 18
  %call1009 = call i32 @prepare_to_wait_event(ptr noundef %fw_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %47 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card, align 4
  %add.ptr10210 = getelementptr i8, ptr %48, i32 96
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10210) #13, !srcloc !659
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool104.not11 = icmp eq i32 %49, 0
  br i1 %tobool104.not11, label %if.end99.for.end_crit_edge, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  br label %cleanup

if.end99.for.end_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end99.cleanup_crit_edge
  call void @schedule() #13
  %call100 = call i32 @prepare_to_wait_event(ptr noundef %fw_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %50 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card, align 4
  %add.ptr102 = getelementptr i8, ptr %51, i32 96
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #13, !srcloc !659
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %tobool104.not = icmp eq i32 %52, 0
  br i1 %tobool104.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end99.for.end_crit_edge
  call void @finish_wait(ptr noundef %fw_wq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end109

do.end109:                                        ; preds = %for.end, %if.end82.do.end109_crit_edge
  %53 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp11219.not = icmp eq i32 %56, 0
  br i1 %cmp11219.not, label %do.end109.for.end190_crit_edge, label %for.body.lr.ph

do.end109.for.end190_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end190

for.body.lr.ph:                                   ; preds = %do.end109
  %add = or i32 %mul, 1
  %57 = call i32 @llvm.bswap.i32(i32 %add) #13
  %atmel_flash121 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 23
  %fpga_version132 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 21
  %buffers140 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 1
  %buffer_size141 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 22
  %fw_wq171 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %do.end187.for.body_crit_edge, %for.body.lr.ph
  %offset.020 = phi i32 [ 0, %for.body.lr.ph ], [ %add189, %do.end187.for.body_crit_edge ]
  %58 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card, align 4
  %add.ptr114 = getelementptr i8, ptr %59, i32 108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 0) #13, !srcloc !658
  %60 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card, align 4
  %add.ptr117 = getelementptr i8, ptr %61, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %57) #13, !srcloc !658
  br label %for.body120

for.body120:                                      ; preds = %if.end146.for.body120_crit_edge, %for.body
  %i.012 = phi i32 [ 0, %for.body ], [ %add147, %if.end146.for.body120_crit_edge ]
  %62 = ptrtoint ptr %atmel_flash121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %atmel_flash121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool122.not = icmp eq i32 %63, 0
  %64 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fw, align 4
  %data128 = getelementptr inbounds %struct.firmware, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %data128 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data128, align 4
  %add.ptr129 = getelementptr i8, ptr %67, i32 %offset.020
  %add.ptr130 = getelementptr i8, ptr %add.ptr129, i32 %i.012
  %68 = ptrtoint ptr %add.ptr130 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr130, align 4
  br i1 %tobool122.not, label %for.body120.if.end131_crit_edge, label %cond.false.i

for.body120.if.end131_crit_edge:                  ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end131

cond.false.i:                                     ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #15
  %70 = call i32 asm "rev16 $0, $1", "=r,r"(i32 %69) #19, !srcloc !666
  br label %if.end131

if.end131:                                        ; preds = %cond.false.i, %for.body120.if.end131_crit_edge
  %word.0 = phi i32 [ %70, %cond.false.i ], [ %69, %for.body120.if.end131_crit_edge ]
  %71 = ptrtoint ptr %fpga_version132 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fpga_version132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp133 = icmp sgt i32 %72, 2
  %73 = ptrtoint ptr %buffers140 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buffers140, align 4
  %75 = ptrtoint ptr %buffer_size141 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %buffer_size141, align 4
  br i1 %cmp133, label %if.then134, label %if.else139

if.then134:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  %mul136 = shl i32 %76, 3
  %add.ptr137 = getelementptr i8, ptr %74, i32 %mul136
  %add.ptr138 = getelementptr i8, ptr %add.ptr137, i32 %i.012
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  %77 = call i32 @llvm.bswap.i32(i32 %word.0) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 %77) #13, !srcloc !658
  br label %if.end146

if.else139:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #15
  %mul143 = mul i32 %76, 6
  %add.ptr144 = getelementptr i8, ptr %74, i32 %mul143
  %add.ptr145 = getelementptr i8, ptr %add.ptr144, i32 %i.012
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  %78 = call i32 @llvm.bswap.i32(i32 %word.0) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %78) #13, !srcloc !658
  br label %if.end146

if.end146:                                        ; preds = %if.else139, %if.then134
  %add147 = add nuw nsw i32 %i.012, 4
  %cmp119 = icmp ult i32 %add147, %.3
  br i1 %cmp119, label %if.end146.for.body120_crit_edge, label %for.end148

if.end146.for.body120_crit_edge:                  ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body120

for.end148:                                       ; preds = %if.end146
  %div149 = sdiv i32 %offset.020, %.3
  %79 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card, align 4
  %add.ptr151 = getelementptr i8, ptr %80, i32 100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  %81 = call i32 @llvm.bswap.i32(i32 %div149) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151, i32 %81) #13, !srcloc !658
  %82 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %card, align 4
  %add.ptr153 = getelementptr i8, ptr %83, i32 108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 16777216) #13, !srcloc !658
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 730) #13
  %84 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %card, align 4
  %add.ptr162 = getelementptr i8, ptr %85, i32 96
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #13, !srcloc !659
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool164.not = icmp eq i32 %86, 0
  br i1 %tobool164.not, label %for.end148.do.end187_crit_edge, label %if.end166

for.end148.do.end187_crit_edge:                   ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end187

if.end166:                                        ; preds = %for.end148
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry167) #13
  %87 = call ptr @memset(ptr %__wq_entry167, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry167, i32 noundef 0) #13
  %call17215 = call i32 @prepare_to_wait_event(ptr noundef %fw_wq171, ptr noundef nonnull %__wq_entry167, i32 noundef 2) #13
  %88 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card, align 4
  %add.ptr17416 = getelementptr i8, ptr %89, i32 96
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17416) #13, !srcloc !659
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool176.not17 = icmp eq i32 %90, 0
  br i1 %tobool176.not17, label %if.end166.for.end182_crit_edge, label %if.end166.cleanup179_crit_edge

if.end166.cleanup179_crit_edge:                   ; preds = %if.end166
  br label %cleanup179

if.end166.for.end182_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end182

cleanup179:                                       ; preds = %cleanup179.cleanup179_crit_edge, %if.end166.cleanup179_crit_edge
  call void @schedule() #13
  %call172 = call i32 @prepare_to_wait_event(ptr noundef %fw_wq171, ptr noundef nonnull %__wq_entry167, i32 noundef 2) #13
  %91 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %card, align 4
  %add.ptr174 = getelementptr i8, ptr %92, i32 96
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr174) #13, !srcloc !659
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %tobool176.not = icmp eq i32 %93, 0
  br i1 %tobool176.not, label %cleanup179.for.end182_crit_edge, label %cleanup179.cleanup179_crit_edge

cleanup179.cleanup179_crit_edge:                  ; preds = %cleanup179
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup179

cleanup179.for.end182_crit_edge:                  ; preds = %cleanup179
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end182

for.end182:                                       ; preds = %cleanup179.for.end182_crit_edge, %if.end166.for.end182_crit_edge
  call void @finish_wait(ptr noundef %fw_wq171, ptr noundef nonnull %__wq_entry167) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry167) #13
  br label %do.end187

do.end187:                                        ; preds = %for.end182, %for.end148.do.end187_crit_edge
  %add189 = add i32 %offset.020, %.3
  %94 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fw, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %cmp112 = icmp ult i32 %add189, %97
  br i1 %cmp112, label %do.end187.for.body_crit_edge, label %do.end187.for.end190_crit_edge

do.end187.for.end190_crit_edge:                   ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end190

do.end187.for.body_crit_edge:                     ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end190:                                       ; preds = %do.end187.for.end190_crit_edge, %do.end109.for.end190_crit_edge
  %.lcssa = phi ptr [ %54, %do.end109.for.end190_crit_edge ], [ %95, %do.end187.for.end190_crit_edge ]
  call void @release_firmware(ptr noundef %.lcssa) #13
  %98 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %card, align 4
  %add.ptr192 = getelementptr i8, ptr %99, i32 108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 0) #13, !srcloc !658
  %100 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %card, align 4
  %add.ptr194 = getelementptr i8, ptr %101, i32 92
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 0) #13, !srcloc !658
  %102 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %card, align 4
  %add.ptr196 = getelementptr i8, ptr %103, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr196, i32 0) #13, !srcloc !658
  %104 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev33, align 4
  %dev201 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev201, ptr noundef nonnull @.str.132) #16
  br label %cleanup202

cleanup202:                                       ; preds = %for.end190, %sw.epilog.cleanup202_crit_edge, %do.end29, %do.end, %entry.cleanup202_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atm_init(ptr noundef %card, ptr noundef %parent) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_ports = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 2
  %0 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp108 = icmp sgt i32 %1, 0
  br i1 %cmp108, label %for.body.lr.ph, label %entry.cleanup58_crit_edge

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

for.body.lr.ph:                                   ; preds = %entry
  %dev14 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %tx_queue_lock.i = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 8
  %tx_mask.i = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.solos_card, ptr %card, i32 0, i32 12, i32 %i.0109
  %lock.i = getelementptr %struct.solos_card, ptr %card, i32 0, i32 12, i32 %i.0109, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.148, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.79, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.solos_card, ptr %card, i32 0, i32 12, i32 %i.0109, i32 1
  %4 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i.i, align 4
  %arrayidx1 = getelementptr %struct.solos_card, ptr %card, i32 0, i32 13, i32 %i.0109
  %lock.i102 = getelementptr %struct.solos_card, ptr %card, i32 0, i32 13, i32 %i.0109, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i102, ptr noundef nonnull @.str.148, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx1, ptr %arrayidx1, align 4
  %prev.i.i103 = getelementptr inbounds %struct.anon.79, ptr %arrayidx1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i103 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx1, ptr %prev.i.i103, align 4
  %qlen.i.i104 = getelementptr %struct.solos_card, ptr %card, i32 0, i32 13, i32 %i.0109, i32 1
  %7 = ptrtoint ptr %qlen.i.i104 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i104, align 4
  %call = tail call ptr @atm_dev_register(ptr noundef nonnull @.str.44, ptr noundef %parent, ptr noundef nonnull @fpga_ops, i32 noundef -1, ptr noundef null) #13
  %arrayidx2 = getelementptr %struct.solos_card, ptr %card, i32 0, i32 5, i32 %i.0109
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %class_dev = getelementptr inbounds %struct.atm_dev, ptr %call, i32 0, i32 18
  %call8 = tail call i32 @device_create_file(ptr noundef %class_dev, ptr noundef nonnull @dev_attr_console) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.if.end16_crit_edge, label %do.end13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev14, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.137, i32 noundef %i.0109) #16
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end.if.end16_crit_edge
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx2, align 4
  %class_dev19 = getelementptr inbounds %struct.atm_dev, ptr %12, i32 0, i32 18
  %call20 = tail call i32 @sysfs_create_group(ptr noundef %class_dev19, ptr noundef nonnull @solos_attr_group) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end16.do.end31_crit_edge, label %do.end25

if.end16.do.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

do.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.140, i32 noundef %i.0109) #16
  br label %do.end31

do.end31:                                         ; preds = %do.end25, %if.end16.do.end31_crit_edge
  %15 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev14, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx2, align 4
  %number = getelementptr inbounds %struct.atm_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33, ptr noundef nonnull @.str.143, i32 noundef %20) #16
  %21 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx2, align 4
  %ci_range = getelementptr inbounds %struct.atm_dev, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %ci_range to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %ci_range, align 2
  %24 = load ptr, ptr %arrayidx2, align 4
  %vci_bits = getelementptr inbounds %struct.atm_dev, ptr %24, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %vci_bits to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %vci_bits, align 1
  %26 = load ptr, ptr %arrayidx2, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %dev_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %card, ptr %dev_data, align 8
  %28 = inttoptr i32 %i.0109 to ptr
  %29 = load ptr, ptr %arrayidx2, align 4
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %phy_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %phy_data, align 4
  %31 = load ptr, ptr %arrayidx2, align 4
  tail call void @atm_dev_signal_change(ptr noundef %31, i8 noundef zeroext 2) #13
  %call.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool48.not = icmp eq ptr %call.i, null
  br i1 %tobool48.not, label %do.end52, label %if.end55

do.end52:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev14, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev54, ptr noundef nonnull @.str.146) #16
  br label %for.inc

if.end55:                                         ; preds = %do.end31
  %call56 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #13
  %34 = ptrtoint ptr %call56 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %call56, align 2
  %vpi = getelementptr inbounds %struct.pkt_hdr, ptr %call56, i32 0, i32 1
  %35 = ptrtoint ptr %vpi to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %vpi, align 2
  %vci = getelementptr inbounds %struct.pkt_hdr, ptr %call56, i32 0, i32 2
  %36 = ptrtoint ptr %vci to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %vci, align 2
  %type = getelementptr inbounds %struct.pkt_hdr, ptr %call56, i32 0, i32 3
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1280, ptr %type, align 2
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %cb.i, align 8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue_lock.i) #13
  %39 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.i, align 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.critedge.i

if.then.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl nuw i32 1, %i.0109
  %41 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_mask.i, align 4
  %or.i = or i32 %42, %shl.i
  store i32 %or.i, ptr %tx_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  %call12.i = tail call fastcc i32 @fpga_tx(ptr noundef %card) #13
  br label %for.inc

if.end13.critedge.i:                              ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev14, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.134, i32 noundef %i.0109) #16
  tail call fastcc void @atm_remove(ptr noundef %card)
  br label %cleanup58

for.inc:                                          ; preds = %if.end13.critedge.i, %if.then.i, %do.end52
  %inc = add nuw nsw i32 %i.0109, 1
  %45 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_ports, align 4
  %cmp = icmp slt i32 %inc, %46
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup58_crit_edge

for.inc.cleanup58_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup58

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup58:                                        ; preds = %for.inc.cleanup58_crit_edge, %cleanup, %entry.cleanup58_crit_edge
  %retval.2 = phi i32 [ -19, %cleanup ], [ 0, %entry.cleanup58_crit_edge ], [ 0, %for.inc.cleanup58_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fpga_tx(ptr noundef %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #13
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !659
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %tx_mask = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 3
  %4 = ptrtoint ptr %tx_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_mask, align 4
  %neg = xor i32 %3, -1
  %and = and i32 %5, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not189 = icmp eq i32 %and, 0
  br i1 %tobool.not189, label %entry.if.end107_crit_edge, label %for.body.lr.ph

entry.if.end107_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %tx_queue_lock = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 8
  %using_dma = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 19
  %dma_alignment = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 20
  %dma_bounce = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 16
  %buffers = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 1
  %buffer_size = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 22
  %param_wq = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %tx_pending.0192 = phi i32 [ %and, %for.body.lr.ph ], [ %shr, %for.inc.for.body_crit_edge ]
  %tx_started.0191 = phi i32 [ 0, %for.body.lr.ph ], [ %tx_started.2, %for.inc.for.body_crit_edge ]
  %and6 = and i32 %tx_pending.0192, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.solos_card, ptr %card, i32 0, i32 14, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %11, i32 noundef %13, i32 noundef 1, i32 noundef 0) #13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %tx_queue_lock) #13
  %arrayidx15 = getelementptr %struct.solos_card, ptr %card, i32 0, i32 12, i32 %indvars.iv
  %call16 = tail call ptr @skb_dequeue(ptr noundef %arrayidx15) #13
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true.critedge

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shl = shl nuw i32 1, %indvars.iv
  %neg20 = xor i32 %shl, -1
  %15 = ptrtoint ptr %tx_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_mask, align 4
  %and22 = and i32 %16, %neg20
  store i32 %and22, ptr %tx_mask, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tx_queue_lock) #13
  br label %if.end70

land.lhs.true.critedge:                           ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %tx_queue_lock) #13
  %17 = ptrtoint ptr %using_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %using_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool26.not = icmp eq i32 %18, 0
  br i1 %tobool26.not, label %if.end70.thread, label %if.then40

if.end70.thread:                                  ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffers, align 4
  %21 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buffer_size, align 4
  %mul = shl nuw nsw i32 %indvars.iv, 1
  %mul29 = mul i32 %mul, %22
  %add.ptr30 = getelementptr i8, ptr %20, i32 %mul29
  %add.ptr32 = getelementptr i8, ptr %add.ptr30, i32 %22
  %data = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 19
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %len33 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 6
  %25 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len33, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr32, ptr noundef %24, i32 noundef %26) #13
  %shl35 = shl nuw i32 1, %indvars.iv
  %or = or i32 %shl35, %tx_started.0191
  br label %if.end73

if.then40:                                        ; preds = %land.lhs.true.critedge
  %data42 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 19
  %27 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data42, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = ptrtoint ptr %dma_alignment to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_alignment, align 4
  %and43 = and i32 %31, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then40.if.end51_crit_edge, label %if.then45

if.then40.if.end51_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %dma_bounce to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_bounce, align 4
  %mul47 = shl nuw nsw i32 %indvars.iv, 11
  %add.ptr48 = getelementptr i8, ptr %33, i32 %mul47
  %len50 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 6
  %34 = ptrtoint ptr %len50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len50, align 4
  %36 = call ptr @memcpy(ptr %add.ptr48, ptr %28, i32 %35)
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %if.then40.if.end51_crit_edge
  %data41.0 = phi ptr [ %add.ptr48, %if.then45 ], [ %28, %if.then40.if.end51_crit_edge ]
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %len54 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 6
  %39 = ptrtoint ptr %len54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len54, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %data41.0) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end51
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !665

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev53) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev53, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %44, %if.end.i.i ], [ %42, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.104, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.105, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev53, ptr noundef %data41.0, i32 noundef %40) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %45 = load ptr, ptr @mem_map, align 4
  %46 = ptrtoint ptr %data41.0 to i32
  %sub.i = add i32 %46, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %45, i32 %shr.i
  %and.i = and i32 %46, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev53, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %40, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr58 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 3, i32 4
  %47 = ptrtoint ptr %dma_addr58 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i, ptr %dma_addr58, align 4
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call16, ptr %arrayidx, align 4
  %49 = load i32, ptr %dma_addr58, align 4
  %50 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card, align 4
  %mul67 = shl nuw nsw i32 %indvars.iv, 2
  %add = add nuw nsw i32 %mul67, 64
  %add.ptr68 = getelementptr i8, ptr %51, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %52) #13, !srcloc !658
  br label %if.end70

if.end70:                                         ; preds = %dma_map_single_attrs.exit, %if.then18
  br i1 %tobool8.not, label %if.end70.for.inc_crit_edge, label %if.end70.if.end73_crit_edge

if.end70.if.end73_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.end70.for.inc_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end73:                                         ; preds = %if.end70.if.end73_crit_edge, %if.end70.thread
  %oldskb.0188 = phi ptr [ %call16, %if.end70.thread ], [ %7, %if.end70.if.end73_crit_edge ]
  %tx_started.1187 = phi i32 [ %or, %if.end70.thread ], [ %tx_started.0191, %if.end70.if.end73_crit_edge ]
  %53 = load i32, ptr @atmdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool74.not = icmp eq i32 %53, 0
  br i1 %tobool74.not, label %if.end73.if.end94_crit_edge, label %if.then75

if.end73.if.end94_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %data76 = getelementptr inbounds %struct.sk_buff, ptr %oldskb.0188, i32 0, i32 19
  %54 = ptrtoint ptr %data76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data76, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %55, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %conv78 = zext i16 %58 to i32
  %call79 = tail call ptr @skb_pull(ptr noundef nonnull %oldskb.0188, i32 noundef 8) #13
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev84, ptr noundef nonnull @.str.73, i32 noundef %indvars.iv) #16
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %vpi = getelementptr inbounds %struct.pkt_hdr, ptr %55, i32 0, i32 1
  %63 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vpi, align 2
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %conv91 = zext i16 %65 to i32
  %vci = getelementptr inbounds %struct.pkt_hdr, ptr %55, i32 0, i32 2
  %66 = ptrtoint ptr %vci to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vci, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %conv92 = zext i16 %68 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev90, ptr noundef nonnull @.str.59, i32 noundef %conv78, i32 noundef %conv91, i32 noundef %conv92) #16
  tail call fastcc void @print_buffer(ptr noundef nonnull %oldskb.0188)
  br label %if.end94

if.end94:                                         ; preds = %if.then75, %if.end73.if.end94_crit_edge
  %cb95 = getelementptr inbounds %struct.sk_buff, ptr %oldskb.0188, i32 0, i32 3
  %69 = ptrtoint ptr %cb95 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cb95, align 8
  %tobool98.not = icmp eq ptr %70, null
  br i1 %tobool98.not, label %if.else100, label %if.then99

if.then99:                                        ; preds = %if.end94
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %70, i32 0, i32 16
  %71 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stats, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %72, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %72, i32 1, i32 3, i32 1) #13
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 1, ptr elementtype(i32) %72) #13, !srcloc !663
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %70, i32 0, i32 11
  %74 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pop.i, align 4
  %tobool.not.i = icmp eq ptr %75, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i183

if.then.i183:                                     ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %75(ptr noundef nonnull %70, ptr noundef nonnull %oldskb.0188) #13
  br label %for.inc

if.else.i:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %oldskb.0188, i32 noundef 1) #13
  br label %for.inc

if.else100:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %oldskb.0188, i32 noundef 1) #13
  tail call void @__wake_up(ptr noundef %param_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %for.inc

for.inc:                                          ; preds = %if.else100, %if.else.i, %if.then.i183, %if.end70.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %tx_started.2 = phi i32 [ %tx_started.0191, %for.body.for.inc_crit_edge ], [ %tx_started.1187, %if.else100 ], [ %tx_started.0191, %if.end70.for.inc_crit_edge ], [ %tx_started.1187, %if.then.i183 ], [ %tx_started.1187, %if.else.i ]
  %shr = lshr i32 %tx_pending.0192, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %tobool.not = icmp ult i32 %tx_pending.0192, 2
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_started.2)
  %tobool103.not = icmp eq i32 %tx_started.2, 0
  br i1 %tobool103.not, label %for.end.if.end107_crit_edge, label %if.then104

for.end.if.end107_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then104:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %card, align 4
  %add.ptr106 = getelementptr i8, ptr %77, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  %78 = tail call i32 @llvm.bswap.i32(i32 %tx_started.2) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %78) #13, !srcloc !658
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %for.end.if.end107_crit_edge, %entry.if.end107_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call2) #13
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_buffer(ptr nocapture noundef readonly %buf) unnamed_addr #3 align 64 {
entry:
  %msg = alloca [500 x i8], align 1
  %item = alloca [10 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %msg) #13
  %0 = call ptr @memset(ptr %msg, i32 255, i32 500)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %item) #13
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %buf, i32 0, i32 6
  %1 = call ptr @memset(ptr %item, i32 255, i32 10)
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %for.body.lr.ph, label %entry.do.end38_crit_edge

entry.do.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

for.body.lr.ph:                                   ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %buf, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rem = and i32 %i.02, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %msg, ptr noundef nonnull @.str.77, i32 noundef %i.02)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %i.02
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %7 to i32
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %item, ptr noundef nonnull @.str.78, i32 noundef %conv)
  %call7 = call ptr @strcat(ptr noundef nonnull %msg, ptr noundef nonnull %item)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rem)
  %cmp9 = icmp eq i32 %rem, 7
  br i1 %cmp9, label %if.then11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %item to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2560, ptr %item, align 2
  %call16 = call ptr @strcat(ptr noundef nonnull %msg, ptr noundef nonnull %item)
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull %msg) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %phi.bo = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br i1 %phi.cmp, label %for.end.do.end38_crit_edge, label %if.then23

for.end.do.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %item to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2560, ptr %item, align 2
  %call28 = call ptr @strcat(ptr noundef nonnull %msg, ptr noundef nonnull %item)
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull %msg) #16
  br label %do.end38

do.end38:                                         ; preds = %if.then23, %for.end.do.end38_crit_edge, %entry.do.end38_crit_edge
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #16
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %item) #13
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %msg) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_charge(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_status(ptr nocapture noundef readonly %card, i32 noundef %port, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  %ver = alloca i32, align 4
  %rate_up = alloca i32, align 4
  %rate_down = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #13
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ver, align 4, !annotation !664
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_up) #13
  %1 = ptrtoint ptr %rate_up to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rate_up, align 4, !annotation !664
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_down) #13
  %2 = ptrtoint ptr %rate_down to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rate_down, align 4, !annotation !664
  %arrayidx = getelementptr %struct.solos_card, ptr %card, i32 0, i32 5, i32 %port
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp24.not.i = icmp eq i32 %8, 0
  br i1 %cmp24.not.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %6, i32 %i.025.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp1.i = icmp eq i8 %10, 10
  br i1 %cmp1.i, label %next_string.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %conv.i = zext i8 %10 to i32
  %arrayidx6.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6.i, align 1
  %13 = and i8 %12, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp8.not.i = icmp ne i8 %13, 0
  %inc.i = add nuw i32 %i.025.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %8)
  %cmp.i = icmp ult i32 %inc.i, %8
  %or.cond.i = select i1 %cmp8.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

next_string.exit:                                 ; preds = %for.body.i
  %arrayidx.i.le = getelementptr i8, ptr %6, i32 %i.025.i
  %14 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx.i.le, align 1
  %add.i = add nuw i32 %i.025.i, 1
  %call.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add.i) #13
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %next_string.exit.cleanup_crit_edge, label %if.end3

next_string.exit.cleanup_crit_edge:               ; preds = %next_string.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %next_string.exit
  %call4 = call i32 @kstrtoint(ptr noundef nonnull %6, i32 noundef 10, ptr noundef nonnull %ver) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.87) #16
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %17 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp slt i32 %18, 1
  br i1 %cmp, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %dev13 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %19 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev13, align 4
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev14, ptr noundef nonnull @.str.90, i32 noundef %18) #16
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp24.not.i135 = icmp eq i32 %24, 0
  br i1 %cmp24.not.i135, label %if.end15.cleanup_crit_edge, label %if.end15.for.body.i139_crit_edge

if.end15.for.body.i139_crit_edge:                 ; preds = %if.end15
  br label %for.body.i139

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i139:                                    ; preds = %if.end.i150.for.body.i139_crit_edge, %if.end15.for.body.i139_crit_edge
  %i.025.i136 = phi i32 [ %inc.i147, %if.end.i150.for.body.i139_crit_edge ], [ 0, %if.end15.for.body.i139_crit_edge ]
  %arrayidx.i137 = getelementptr i8, ptr %22, i32 %i.025.i136
  %25 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %26)
  %cmp1.i138 = icmp eq i8 %26, 10
  br i1 %cmp1.i138, label %next_string.exit152, label %if.end.i150

if.end.i150:                                      ; preds = %for.body.i139
  %conv.i144 = zext i8 %26 to i32
  %arrayidx6.i145 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i144
  %27 = ptrtoint ptr %arrayidx6.i145 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx6.i145, align 1
  %29 = and i8 %28, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp8.not.i146 = icmp ne i8 %29, 0
  %inc.i147 = add nuw i32 %i.025.i136, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i147, i32 %24)
  %cmp.i148 = icmp ult i32 %inc.i147, %24
  %or.cond.i149 = select i1 %cmp8.not.i146, i1 %cmp.i148, i1 false
  br i1 %or.cond.i149, label %if.end.i150.for.body.i139_crit_edge, label %if.end.i150.cleanup_crit_edge

if.end.i150.cleanup_crit_edge:                    ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i150.for.body.i139_crit_edge:              ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i139

next_string.exit152:                              ; preds = %for.body.i139
  %arrayidx.i137.le = getelementptr i8, ptr %22, i32 %i.025.i136
  %30 = ptrtoint ptr %arrayidx.i137.le to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx.i137.le, align 1
  %add.i141 = add nuw i32 %i.025.i136, 1
  %call.i142 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %add.i141) #13
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %next_string.exit152.cleanup_crit_edge, label %if.end19

next_string.exit152.cleanup_crit_edge:            ; preds = %next_string.exit152
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %next_string.exit152
  %call20 = call i32 @strcmp(ptr noundef nonnull %22, ptr noundef nonnull dereferenceable(6) @.str.92) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body23, label %if.end35

do.body23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_status.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@process_status, %cleanup)) #13
          to label %if.then29 [label %cleanup], !srcloc !662

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %dev30 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %31 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev30, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @process_status.__UNIQUE_ID_ddebug479, ptr noundef %dev31, ptr noundef nonnull @.str.93, i32 noundef %port) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end19
  %call36 = call i32 @kstrtoint(ptr noundef nonnull %22, i32 noundef 10, ptr noundef nonnull %rate_down) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp24.not.i155 = icmp eq i32 %36, 0
  br i1 %cmp24.not.i155, label %if.end39.cleanup_crit_edge, label %if.end39.for.body.i159_crit_edge

if.end39.for.body.i159_crit_edge:                 ; preds = %if.end39
  br label %for.body.i159

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i159:                                    ; preds = %if.end.i170.for.body.i159_crit_edge, %if.end39.for.body.i159_crit_edge
  %i.025.i156 = phi i32 [ %inc.i167, %if.end.i170.for.body.i159_crit_edge ], [ 0, %if.end39.for.body.i159_crit_edge ]
  %arrayidx.i157 = getelementptr i8, ptr %34, i32 %i.025.i156
  %37 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %38)
  %cmp1.i158 = icmp eq i8 %38, 10
  br i1 %cmp1.i158, label %next_string.exit172, label %if.end.i170

if.end.i170:                                      ; preds = %for.body.i159
  %conv.i164 = zext i8 %38 to i32
  %arrayidx6.i165 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i164
  %39 = ptrtoint ptr %arrayidx6.i165 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx6.i165, align 1
  %41 = and i8 %40, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp8.not.i166 = icmp ne i8 %41, 0
  %inc.i167 = add nuw i32 %i.025.i156, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i167, i32 %36)
  %cmp.i168 = icmp ult i32 %inc.i167, %36
  %or.cond.i169 = select i1 %cmp8.not.i166, i1 %cmp.i168, i1 false
  br i1 %or.cond.i169, label %if.end.i170.for.body.i159_crit_edge, label %if.end.i170.cleanup_crit_edge

if.end.i170.cleanup_crit_edge:                    ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i170.for.body.i159_crit_edge:              ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i159

next_string.exit172:                              ; preds = %for.body.i159
  %arrayidx.i157.le = getelementptr i8, ptr %34, i32 %i.025.i156
  %42 = ptrtoint ptr %arrayidx.i157.le to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx.i157.le, align 1
  %add.i161 = add nuw i32 %i.025.i156, 1
  %call.i162 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %add.i161) #13
  %tobool41.not = icmp eq ptr %34, null
  br i1 %tobool41.not, label %next_string.exit172.cleanup_crit_edge, label %if.end43

next_string.exit172.cleanup_crit_edge:            ; preds = %next_string.exit172
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end43:                                         ; preds = %next_string.exit172
  %call44 = call i32 @kstrtoint(ptr noundef nonnull %34, i32 noundef 10, ptr noundef nonnull %rate_up) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %call48 = call fastcc ptr @next_string(ptr noundef %skb)
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %call52 = call i32 @strcmp(ptr noundef nonnull %call48, ptr noundef nonnull dereferenceable(9) @.str.94) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end62, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  call void @atm_dev_signal_change(ptr noundef %44, i8 noundef zeroext 0) #13
  %dev60 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %45 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev60, align 4
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull @.str.96, i32 noundef %port, ptr noundef nonnull %call48) #16
  br label %cleanup

if.end62:                                         ; preds = %if.end51
  %call63 = call fastcc ptr @next_string(ptr noundef %skb)
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.end62.cleanup_crit_edge, label %if.end66

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %call67 = call fastcc ptr @next_string(ptr noundef %skb)
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %do.end73

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %dev74 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %47 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev74, align 4
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %rate_down to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rate_down, align 4
  %div = sdiv i32 %50, 1000
  %51 = ptrtoint ptr %rate_up to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rate_up, align 4
  %div76 = sdiv i32 %52, 1000
  %53 = ptrtoint ptr %call63 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %call63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool78.not = icmp eq i8 %54, 0
  %cond = select i1 %tobool78.not, ptr @.str.102, ptr @.str.101
  %55 = ptrtoint ptr %call67 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %call67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool81.not = icmp eq i8 %56, 0
  %cond82 = select i1 %tobool81.not, ptr @.str.102, ptr @.str.103
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev75, ptr noundef nonnull @.str.99, i32 noundef %port, ptr noundef nonnull %call48, i32 noundef %div, i32 noundef %div76, ptr noundef nonnull %cond, ptr noundef nonnull %call63, ptr noundef nonnull %cond82, ptr noundef nonnull %call67) #16
  %57 = ptrtoint ptr %rate_down to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rate_down, align 4
  %div83 = sdiv i32 %58, 424
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %link_rate = getelementptr inbounds %struct.atm_dev, ptr %60, i32 0, i32 13
  %61 = ptrtoint ptr %link_rate to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div83, ptr %link_rate, align 4
  %62 = load ptr, ptr %arrayidx, align 4
  call void @atm_dev_signal_change(ptr noundef %62, i8 noundef zeroext 2) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.end66.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.then54, %if.end47.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %next_string.exit172.cleanup_crit_edge, %if.end.i170.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then29, %do.body23, %next_string.exit152.cleanup_crit_edge, %if.end.i150.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end12, %do.end, %next_string.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ -5, %do.end12 ], [ 0, %if.then54 ], [ 0, %do.end73 ], [ -19, %entry.cleanup_crit_edge ], [ -5, %next_string.exit.cleanup_crit_edge ], [ -5, %next_string.exit152.cleanup_crit_edge ], [ 0, %if.then29 ], [ %call36, %if.end35.cleanup_crit_edge ], [ -5, %next_string.exit172.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ], [ -5, %if.end47.cleanup_crit_edge ], [ -5, %if.end62.cleanup_crit_edge ], [ -5, %if.end66.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end15.cleanup_crit_edge ], [ 0, %do.body23 ], [ -5, %if.end39.cleanup_crit_edge ], [ -5, %if.end.i170.cleanup_crit_edge ], [ -5, %if.end.i150.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_down) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_up) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @next_string(ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24.not = icmp eq i32 %3, 0
  br i1 %cmp24.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %1, i32 %i.025
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp1 = icmp eq i8 %5, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.le = getelementptr i8, ptr %1, i32 %i.025
  %6 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx.le, align 1
  %add = add nuw i32 %i.025, 1
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add) #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  %conv = zext i8 %5 to i32
  %arrayidx6 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  %9 = and i8 %8, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8.not = icmp ne i8 %9, 0
  %inc = add nuw i32 %i.025, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %3)
  %cmp = icmp ult i32 %inc, %3
  %or.cond = select i1 %cmp8.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_signal_change(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atm_remove(ptr noundef %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_ports = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 2
  %0 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp55 = icmp sgt i32 %1, 0
  br i1 %cmp55, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.solos_card, ptr %card, i32 0, i32 5, i32 %i.056
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %number = getelementptr inbounds %struct.atm_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.164, i32 noundef %7) #16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %class_dev = getelementptr inbounds %struct.atm_dev, ptr %9, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %class_dev, ptr noundef nonnull @solos_attr_group) #13
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @atm_dev_deregister(ptr noundef %11) #13
  %arrayidx8 = getelementptr %struct.solos_card, ptr %card, i32 0, i32 15, i32 %i.056
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then.if.end_crit_edge, label %if.then10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev12, i32 noundef %17, i32 noundef 2048, i32 noundef 2, i32 noundef 0) #13
  tail call void @consume_skb(ptr noundef nonnull %13) #13
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %arrayidx13 = getelementptr %struct.solos_card, ptr %card, i32 0, i32 14, i32 %i.056
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %if.end.if.end21_crit_edge, label %if.then15

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %dma_addr20 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %dma_addr20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_addr20, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev17, i32 noundef %23, i32 noundef %25, i32 noundef 1, i32 noundef 0) #13
  tail call void @consume_skb(ptr noundef nonnull %19) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end.if.end21_crit_edge
  %arrayidx22 = getelementptr %struct.solos_card, ptr %card, i32 0, i32 12, i32 %i.056
  %call52 = tail call ptr @skb_dequeue(ptr noundef %arrayidx22) #13
  %tobool23.not53 = icmp eq ptr %call52, null
  br i1 %tobool23.not53, label %if.end21.for.inc_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  br label %while.body

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end21.while.body_crit_edge
  %call54 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call52, %if.end21.while.body_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call54) #13
  %call = tail call ptr @skb_dequeue(ptr noundef %arrayidx22) #13
  %tobool23.not = icmp eq ptr %call, null
  br i1 %tobool23.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %26 = ptrtoint ptr %nr_ports to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_ports, align 4
  %cmp = icmp slt i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @popen(ptr noundef %vcc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %aal = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %aal to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp.not = icmp eq i8 %5, 5
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %5 to i32
  %dev2 = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.149, i32 noundef %conv) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.cleanup_crit_edge, label %do.end13

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %dev14 = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev14, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.152) #16
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %call18 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #13
  %10 = ptrtoint ptr %call18 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %call18, align 2
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %11 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vpi, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %vpi19 = getelementptr inbounds %struct.pkt_hdr, ptr %call18, i32 0, i32 1
  %14 = ptrtoint ptr %vpi19 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %vpi19, align 2
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %15 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vci, align 8
  %conv20 = trunc i32 %16 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %vci21 = getelementptr inbounds %struct.pkt_hdr, ptr %call18, i32 0, i32 2
  %18 = ptrtoint ptr %vci21 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %vci21, align 2
  %type = getelementptr inbounds %struct.pkt_hdr, ptr %call18, i32 0, i32 3
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 768, ptr %type, align 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_data, align 4
  %24 = ptrtoint ptr %23 to i32
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cb.i, align 8
  %tx_queue_lock.i = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue_lock.i) #13
  %arrayidx.i = getelementptr %struct.solos_card, ptr %3, i32 0, i32 12, i32 %24
  %qlen.i.i = getelementptr %struct.solos_card, ptr %3, i32 0, i32 12, i32 %24, i32 1
  %26 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i.i, align 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.critedge.i

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl nuw i32 1, %24
  %tx_mask.i = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_mask.i, align 4
  %or.i = or i32 %29, %shl.i
  store i32 %or.i, ptr %tx_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  %call12.i = tail call fastcc i32 @fpga_tx(ptr noundef %3) #13
  br label %fpga_queue.exit

if.end13.critedge.i:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  br label %fpga_queue.exit

fpga_queue.exit:                                  ; preds = %if.end13.critedge.i, %if.then.i
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #13
  br label %cleanup

cleanup:                                          ; preds = %fpga_queue.exit, %do.end13, %if.then7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %fpga_queue.exit ], [ -12, %do.end13 ], [ -12, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pclose(ptr noundef %vcc) #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_data, align 4
  %6 = ptrtoint ptr %5 to i32
  %tx_queue_lock = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %tx_queue_lock) #13
  %idxprom = and i32 %6, 255
  %arrayidx = getelementptr %struct.solos_card, ptr %3, i32 0, i32 12, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp.not146 = icmp eq ptr %8, %arrayidx
  br i1 %cmp.not146, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.0147 = phi ptr [ %8, %for.body.lr.ph ], [ %tmpskb.0148, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %skb.0147 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmpskb.0148 = load ptr, ptr %skb.0147, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.0147, i32 0, i32 3
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb, align 8
  %cmp8 = icmp eq ptr %11, %vcc
  br i1 %cmp8, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @skb_unlink(ptr noundef %skb.0147, ptr noundef %arrayidx) #13
  %12 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pop.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %13(ptr noundef %vcc, ptr noundef %skb.0147) #13
  br label %for.inc

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.0147, i32 noundef 1) #13
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then.i, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmpskb.0148, %arrayidx
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_queue_lock) #13
  %call.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end18

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %dev16 = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.154) #16
  br label %cleanup84

if.end18:                                         ; preds = %for.end
  %call19 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #13
  %16 = ptrtoint ptr %call19 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %call19, align 2
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %17 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vpi, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %vpi20 = getelementptr inbounds %struct.pkt_hdr, ptr %call19, i32 0, i32 1
  %20 = ptrtoint ptr %vpi20 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %vpi20, align 2
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %21 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vci, align 8
  %conv21 = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv21)
  %vci22 = getelementptr inbounds %struct.pkt_hdr, ptr %call19, i32 0, i32 2
  %24 = ptrtoint ptr %vci22 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %vci22, align 2
  %type = getelementptr inbounds %struct.pkt_hdr, ptr %call19, i32 0, i32 3
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1024, ptr %type, align 2
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !667
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end18.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !661

if.end18.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end18
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !665

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end18.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end18.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #13
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %cb.i, align 8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue_lock) #13
  %qlen.i.i = getelementptr %struct.solos_card, ptr %3, i32 0, i32 12, i32 %idxprom, i32 1
  %29 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i.i, align 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i132 = icmp eq i32 %30, 0
  br i1 %tobool.not.i132, label %if.then.i133, label %if.end13.critedge.i

if.then.i133:                                     ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl nuw i32 1, %idxprom
  %tx_mask.i = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_mask.i, align 4
  %or.i = or i32 %32, %shl.i
  store i32 %or.i, ptr %tx_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock, i32 noundef %call3.i) #13
  %call12.i = tail call fastcc i32 @fpga_tx(ptr noundef %3) #13
  br label %fpga_queue.exit

if.end13.critedge.i:                              ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock, i32 noundef %call3.i) #13
  br label %fpga_queue.exit

fpga_queue.exit:                                  ; preds = %if.end13.critedge.i, %if.then.i133
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 983) #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #13
  %33 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i.not = icmp eq i32 %34, 1
  br i1 %cmp.i.not, label %fpga_queue.exit.if.end83_crit_edge, label %if.then43

fpga_queue.exit.if.end83_crit_edge:               ; preds = %fpga_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then43:                                        ; preds = %fpga_queue.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %35 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %param_wq = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 17
  %call46149 = call i32 @prepare_to_wait_event(ptr noundef %param_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i.i.i.i136150 = call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #13
  %36 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i137.not151 = icmp eq i32 %37, 1
  br i1 %cmp.i137.not151, label %if.end73.thread, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  br label %cleanup

if.end73.thread:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  call void @finish_wait(ptr noundef %param_wq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end83

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then43.cleanup_crit_edge
  %__ret44.1152 = phi i32 [ %__ret44.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then43.cleanup_crit_edge ]
  %call69 = call i32 @schedule_timeout(i32 noundef %__ret44.1152) #13
  %call46 = call i32 @prepare_to_wait_event(ptr noundef %param_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %call.i.i.i.i136 = call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #13
  %38 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i137.not = icmp eq i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool55.not = icmp eq i32 %call69, 0
  %40 = select i1 %cmp.i137.not, i1 %tobool55.not, i1 false
  %__ret44.1 = select i1 %40, i32 1, i32 %call69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret44.1)
  %tobool62.not = icmp eq i32 %__ret44.1, 0
  %41 = select i1 %cmp.i137.not, i1 true, i1 %tobool62.not
  br i1 %41, label %if.end73, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end73:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret44.1)
  %phi.cmp = icmp eq i32 %__ret44.1, 0
  call void @finish_wait(ptr noundef %param_wq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br i1 %phi.cmp, label %do.end79, label %if.end73.if.end83_crit_edge

if.end73.if.end83_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

do.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %dev80 = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 4
  %42 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev80, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev81, ptr noundef nonnull @.str.157, i32 noundef %idxprom) #16
  br label %if.end83

if.end83:                                         ; preds = %do.end79, %if.end73.if.end83_crit_edge, %if.end73.thread, %fpga_queue.exit.if.end83_crit_edge
  call void @consume_skb(ptr noundef nonnull %call.i) #13
  %tlet = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 6
  call void @tasklet_unlock_wait(ptr noundef %tlet) #13
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %cleanup84

cleanup84:                                        ; preds = %if.end83, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @psend(ptr noundef %vcc, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2040, i32 %5)
  %cmp = icmp ugt i32 %5, 2040
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.159) #16
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %8 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pop.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %9(ptr noundef %vcc, ptr noundef %skb) #13
  br label %cleanup25

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup25

if.end:                                           ; preds = %entry
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %10 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.skb_clone_writable.exit_crit_edge, label %skb_header_cloned.exit.i

if.end.skb_clone_writable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_clone_writable.exit

skb_header_cloned.exit.i:                         ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #13
  %13 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %14, 65535
  %shr.i.i = ashr i32 %14, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %skb_header_cloned.exit.i.skb_clone_writable.exit_crit_edge, label %skb_header_cloned.exit.i.if.then3_crit_edge

skb_header_cloned.exit.i.if.then3_crit_edge:      ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

skb_header_cloned.exit.i.skb_clone_writable.exit_crit_edge: ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_clone_writable.exit

skb_clone_writable.exit:                          ; preds = %skb_header_cloned.exit.i.skb_clone_writable.exit_crit_edge, %if.end.skb_clone_writable.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = add i32 %sub.ptr.lhs.cast.i.i, 8
  %add.i = sub i32 %sub.ptr.sub.i.i, %sub.ptr.rhs.cast.i.i
  %hdr_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %19 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdr_len.i, align 2
  %conv.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i.not = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp.i.not, label %skb_clone_writable.exit.if.then3_crit_edge, label %skb_clone_writable.exit.if.end19_crit_edge

skb_clone_writable.exit.if.end19_crit_edge:       ; preds = %skb_clone_writable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

skb_clone_writable.exit.if.then3_crit_edge:       ; preds = %skb_clone_writable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.then3:                                         ; preds = %skb_clone_writable.exit.if.then3_crit_edge, %skb_header_cloned.exit.i.if.then3_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %25 = tail call i32 @llvm.usub.sat.i32(i32 8, i32 %sub.ptr.sub.i)
  %call9 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %25, i32 noundef 0, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then3.if.end19_crit_edge, label %do.end14

if.then3.if.end19_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.end14:                                         ; preds = %if.then3
  %dev15 = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev15, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16, ptr noundef nonnull @.str.162) #16
  %pop.i54 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %28 = ptrtoint ptr %pop.i54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pop.i54, align 4
  %tobool.not.i55 = icmp eq ptr %29, null
  br i1 %tobool.not.i55, label %if.else.i57, label %if.then.i56

if.then.i56:                                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %29(ptr noundef %vcc, ptr noundef %skb) #13
  br label %cleanup25

if.else.i57:                                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup25

if.end19:                                         ; preds = %if.then3.if.end19_crit_edge, %skb_clone_writable.exit.if.end19_crit_edge
  %call20 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #13
  %conv = trunc i32 %5 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %31 = ptrtoint ptr %call20 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %call20, align 2
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %32 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vpi, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %vpi21 = getelementptr inbounds %struct.pkt_hdr, ptr %call20, i32 0, i32 1
  %35 = ptrtoint ptr %vpi21 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %vpi21, align 2
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %36 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vci, align 8
  %conv22 = trunc i32 %37 to i16
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %vci23 = getelementptr inbounds %struct.pkt_hdr, ptr %call20, i32 0, i32 2
  %39 = ptrtoint ptr %vci23 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %vci23, align 2
  %type = getelementptr inbounds %struct.pkt_hdr, ptr %call20, i32 0, i32 3
  %40 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %type, align 2
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  %phy_data = getelementptr inbounds %struct.atm_dev, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_data, align 4
  %45 = ptrtoint ptr %44 to i32
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %46 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %vcc, ptr %cb.i, align 8
  %tx_queue_lock.i = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue_lock.i) #13
  %arrayidx.i = getelementptr %struct.solos_card, ptr %3, i32 0, i32 12, i32 %45
  %qlen.i.i = getelementptr %struct.solos_card, ptr %3, i32 0, i32 12, i32 %45, i32 1
  %47 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %qlen.i.i, align 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i59 = icmp eq i32 %48, 0
  br i1 %tobool.not.i59, label %if.then.i60, label %if.end13.critedge.i

if.then.i60:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl nuw i32 1, %45
  %tx_mask.i = getelementptr inbounds %struct.solos_card, ptr %3, i32 0, i32 3
  %49 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_mask.i, align 4
  %or.i = or i32 %50, %shl.i
  store i32 %or.i, ptr %tx_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  %call12.i = tail call fastcc i32 @fpga_tx(ptr noundef %3) #13
  br label %cleanup25

if.end13.critedge.i:                              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  br label %cleanup25

cleanup25:                                        ; preds = %if.end13.critedge.i, %if.then.i60, %if.else.i57, %if.then.i56, %if.else.i, %if.then.i
  %retval.1 = phi i32 [ 0, %if.then.i ], [ 0, %if.else.i ], [ %call9, %if.then.i56 ], [ %call9, %if.else.i57 ], [ 0, %if.then.i60 ], [ 0, %if.end13.critedge.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @console_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr i8, ptr %dev, i32 -160
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %cli_queue_lock = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %cli_queue_lock) #13
  %phy_data = getelementptr i8, ptr %dev, i32 -156
  %2 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data, align 4
  %4 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr %struct.solos_card, ptr %1, i32 0, i32 13, i32 %4
  %call = tail call ptr @skb_dequeue(ptr noundef %arrayidx) #13
  tail call void @_raw_spin_unlock(ptr noundef %cli_queue_lock) #13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.167, i32 10)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len3, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = call ptr @memcpy(ptr %buf, ptr %9, i32 %7)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 9, %if.then ], [ %7, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @console_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr i8, ptr %dev, i32 -160
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  %phy_data = getelementptr i8, ptr %dev, i32 -156
  %2 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_data, align 4
  %4 = ptrtoint ptr %3 to i32
  tail call fastcc void @send_command(ptr noundef %1, i32 noundef %4, ptr noundef %buf, i32 noundef %count)
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_command(ptr noundef %card, i32 noundef %dev, ptr nocapture noundef readonly %buf, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2040, i32 %size)
  %cmp = icmp ugt i32 %size, 2040
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_command.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@send_command, %cleanup)) #13
          to label %if.then4 [label %cleanup], !srcloc !662

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev5 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %0 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev5, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_command.__UNIQUE_ID_ddebug480, ptr noundef %dev6, ptr noundef nonnull @.str.169) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %add = add nuw nsw i32 %size, 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %dev14 = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 4
  %2 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev14, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.170) #16
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #13
  %conv = trunc i32 %size to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %5 = ptrtoint ptr %call17 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %call17, align 2
  %vpi = getelementptr inbounds %struct.pkt_hdr, ptr %call17, i32 0, i32 1
  %6 = ptrtoint ptr %vpi to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %vpi, align 2
  %vci = getelementptr inbounds %struct.pkt_hdr, ptr %call17, i32 0, i32 2
  %7 = ptrtoint ptr %vci to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %vci, align 2
  %type = getelementptr inbounds %struct.pkt_hdr, ptr %call17, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %type, align 2
  %call.i1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %size) #13
  %9 = call ptr @memcpy(ptr %call.i1, ptr %buf, i32 %size)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cb.i, align 8
  %tx_queue_lock.i = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 8
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue_lock.i) #13
  %arrayidx.i = getelementptr %struct.solos_card, ptr %card, i32 0, i32 12, i32 %dev
  %qlen.i.i = getelementptr %struct.solos_card, ptr %card, i32 0, i32 12, i32 %dev, i32 1
  %11 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen.i.i, align 4
  tail call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.critedge.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl nuw i32 1, %dev
  %tx_mask.i = getelementptr inbounds %struct.solos_card, ptr %card, i32 0, i32 3
  %13 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_mask.i, align 4
  %or.i = or i32 %14, %shl.i
  store i32 %or.i, ptr %tx_mask.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  %call12.i = tail call fastcc i32 @fpga_tx(ptr noundef %card) #13
  br label %cleanup

if.end13.critedge.i:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13.critedge.i, %if.then.i, %do.end13, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solos_param_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %prm = alloca %struct.solos_param, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr i8, ptr %dev, i32 -160
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %prm) #13
  %2 = getelementptr inbounds %struct.list_head, ptr %prm, i32 0, i32 1
  %3 = getelementptr inbounds %struct.solos_param, ptr %prm, i32 0, i32 2
  %4 = getelementptr inbounds %struct.solos_param, ptr %prm, i32 0, i32 3
  %5 = ptrtoint ptr %prm to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %prm, align 8
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 4
  %call = tail call i32 @strlen(ptr noundef %7) #20
  %add2 = add i32 %call, 18
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add2, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev4 = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.173) #16
  br label %cleanup75

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds %struct.solos_param, ptr %prm, i32 0, i32 1
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #13
  %arrayidx = getelementptr %struct.pkt_hdr, ptr %call6, i32 1
  %sub = add i32 %call, 9
  %11 = tail call i32 @llvm.read_register.i32(metadata !647) #13
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attr, align 4
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.175, i32 noundef %16, ptr noundef %18)
  %call11 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %call10) #13
  %conv = trunc i32 %call10 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %20 = ptrtoint ptr %call6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %call6, align 2
  %vpi = getelementptr inbounds %struct.pkt_hdr, ptr %call6, i32 0, i32 1
  %21 = ptrtoint ptr %vpi to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %vpi, align 2
  %vci = getelementptr inbounds %struct.pkt_hdr, ptr %call6, i32 0, i32 2
  %22 = ptrtoint ptr %vci to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %vci, align 2
  %type = getelementptr inbounds %struct.pkt_hdr, ptr %call6, i32 0, i32 3
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 256, ptr %type, align 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %pid14 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid14, align 8
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %10, align 8
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %4, align 8
  %phy_data = getelementptr i8, ptr %dev, i32 -156
  %30 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_data, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %3, align 4
  %param_queue_lock = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %param_queue_lock) #13
  %param_queue = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %param_queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %param_queue, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %prm, ptr noundef %param_queue, ptr noundef %35) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %prm, ptr %prev1.i.i, align 4
  %37 = ptrtoint ptr %prm to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %prm, align 8
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %param_queue, ptr %2, align 4
  %39 = ptrtoint ptr %param_queue to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %prm, ptr %param_queue, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %param_queue_lock) #13
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %cb.i, align 8
  %tx_queue_lock.i = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 8
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue_lock.i) #13
  %arrayidx.i = getelementptr %struct.solos_card, ptr %1, i32 0, i32 12, i32 %41
  %qlen.i.i = getelementptr %struct.solos_card, ptr %1, i32 0, i32 12, i32 %41, i32 1
  %43 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen.i.i, align 4
  call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.critedge.i

if.then.i:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl nuw i32 1, %41
  %tx_mask.i = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_mask.i, align 4
  %or.i = or i32 %46, %shl.i
  store i32 %or.i, ptr %tx_mask.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  %call12.i = call fastcc i32 @fpga_tx(ptr noundef %1) #13
  br label %fpga_queue.exit

if.end13.critedge.i:                              ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  br label %fpga_queue.exit

fpga_queue.exit:                                  ; preds = %if.end13.critedge.i, %if.then.i
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 220) #13
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %4, align 8
  %tobool25.not = icmp eq ptr %48, null
  br i1 %tobool25.not, label %if.then36, label %fpga_queue.exit.if.end63_crit_edge

fpga_queue.exit.if.end63_crit_edge:               ; preds = %fpga_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then36:                                        ; preds = %fpga_queue.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %49 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %param_wq = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 17
  %call38116 = call i32 @prepare_to_wait_event(ptr noundef %param_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %4, align 8
  %tobool41.not117.not = icmp eq ptr %51, null
  br i1 %tobool41.not117.not, label %if.then36.cleanup_crit_edge, label %if.then36.for.end_crit_edge

if.then36.for.end_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then36.cleanup_crit_edge
  %__ret37.1119 = phi i32 [ %__ret37.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then36.cleanup_crit_edge ]
  %call60 = call i32 @schedule_timeout(i32 noundef %__ret37.1119) #13
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %param_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %4, align 8
  %tobool41.not = icmp eq ptr %53, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool46.not = icmp eq i32 %call60, 0
  %spec.store.select81 = select i1 %tobool46.not, i32 1, i32 %call60
  %__ret37.1 = select i1 %tobool41.not, i32 %call60, i32 %spec.store.select81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.1)
  %tobool53.not = icmp eq i32 %__ret37.1, 0
  %not.tobool41.not = xor i1 %tobool41.not, true
  %54 = select i1 %not.tobool41.not, i1 true, i1 %tobool53.not
  br i1 %54, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then36.for.end_crit_edge
  call void @finish_wait(ptr noundef %param_wq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end63

if.end63:                                         ; preds = %for.end, %fpga_queue.exit.if.end63_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %param_queue_lock) #13
  %call.i.i111 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %prm) #13
  br i1 %call.i.i111, label %if.end.i.i112, label %if.end63.list_del.exit_crit_edge

if.end63.list_del.exit_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i112:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %2, align 4
  %57 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prm, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i112, %if.end63.list_del.exit_crit_edge
  %61 = ptrtoint ptr %prm to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %prm, align 8
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %param_queue_lock) #13
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %4, align 8
  %tobool69.not = icmp eq ptr %64, null
  br i1 %tobool69.not, label %list_del.exit.cleanup75_crit_edge, label %if.end71

list_del.exit.cleanup75_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup75

if.end71:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 19
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %69 = call ptr @memcpy(ptr %buf, ptr %68, i32 %66)
  call void @kfree_skb_reason(ptr noundef nonnull %64, i32 noundef 0) #13
  br label %cleanup75

cleanup75:                                        ; preds = %if.end71, %list_del.exit.cleanup75_crit_edge, %do.end
  %retval.0 = phi i32 [ %66, %if.end71 ], [ -12, %do.end ], [ -5, %list_del.exit.cleanup75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %prm) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solos_param_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %prm = alloca %struct.solos_param, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data = getelementptr i8, ptr %dev, i32 -160
  %0 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %prm) #13
  %2 = getelementptr inbounds %struct.list_head, ptr %prm, i32 0, i32 1
  %3 = getelementptr inbounds %struct.solos_param, ptr %prm, i32 0, i32 2
  %4 = getelementptr inbounds %struct.solos_param, ptr %prm, i32 0, i32 3
  %5 = ptrtoint ptr %prm to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %prm, align 8
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 4
  %call = tail call i32 @strlen(ptr noundef %7) #20
  %add = add i32 %count, 11
  %add2 = add i32 %add, %call
  %add3 = add i32 %add2, 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add3, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev5 = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef nonnull @.str.229) #16
  br label %cleanup104

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds %struct.solos_param, ptr %prm, i32 0, i32 1
  %call7 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 8) #13
  %arrayidx = getelementptr %struct.pkt_hdr, ptr %call7, i32 1
  %sub = add i32 %add2, -1
  %11 = tail call i32 @llvm.read_register.i32(metadata !647) #13
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attr, align 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull @.str.231, i32 noundef %16, ptr noundef %18, ptr noundef %buf)
  %call12 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %call11) #13
  %conv = trunc i32 %call11 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %20 = ptrtoint ptr %call7 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %call7, align 2
  %vpi = getelementptr inbounds %struct.pkt_hdr, ptr %call7, i32 0, i32 1
  %21 = ptrtoint ptr %vpi to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %vpi, align 2
  %vci = getelementptr inbounds %struct.pkt_hdr, ptr %call7, i32 0, i32 2
  %22 = ptrtoint ptr %vci to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %vci, align 2
  %type = getelementptr inbounds %struct.pkt_hdr, ptr %call7, i32 0, i32 3
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 256, ptr %type, align 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %pid15 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid15, align 8
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %10, align 8
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %4, align 8
  %phy_data = getelementptr i8, ptr %dev, i32 -156
  %30 = ptrtoint ptr %phy_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_data, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %3, align 4
  %param_queue_lock = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %param_queue_lock) #13
  %param_queue = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %param_queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %param_queue, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %prm, ptr noundef %param_queue, ptr noundef %35) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %prm, ptr %prev1.i.i, align 4
  %37 = ptrtoint ptr %prm to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %prm, align 8
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %param_queue, ptr %2, align 4
  %39 = ptrtoint ptr %param_queue to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %prm, ptr %param_queue, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %param_queue_lock) #13
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %42 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %cb.i, align 8
  %tx_queue_lock.i = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 8
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_queue_lock.i) #13
  %arrayidx.i = getelementptr %struct.solos_card, ptr %1, i32 0, i32 12, i32 %41
  %qlen.i.i = getelementptr %struct.solos_card, ptr %1, i32 0, i32 12, i32 %41, i32 1
  %43 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen.i.i, align 4
  call void @skb_queue_tail(ptr noundef %arrayidx.i, ptr noundef nonnull %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end13.critedge.i

if.then.i:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl nuw i32 1, %41
  %tx_mask.i = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_mask.i, align 4
  %or.i = or i32 %46, %shl.i
  store i32 %or.i, ptr %tx_mask.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  %call12.i = call fastcc i32 @fpga_tx(ptr noundef %1) #13
  br label %fpga_queue.exit

if.end13.critedge.i:                              ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_queue_lock.i, i32 noundef %call3.i) #13
  br label %fpga_queue.exit

fpga_queue.exit:                                  ; preds = %if.end13.critedge.i, %if.then.i
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 276) #13
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %4, align 8
  %tobool26.not = icmp eq ptr %48, null
  br i1 %tobool26.not, label %if.then37, label %fpga_queue.exit.if.end64_crit_edge

fpga_queue.exit.if.end64_crit_edge:               ; preds = %fpga_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then37:                                        ; preds = %fpga_queue.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %49 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %param_wq = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 17
  %call39159 = call i32 @prepare_to_wait_event(ptr noundef %param_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %4, align 8
  %tobool42.not160.not = icmp eq ptr %51, null
  br i1 %tobool42.not160.not, label %if.then37.cleanup_crit_edge, label %if.then37.for.end_crit_edge

if.then37.for.end_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then37.cleanup_crit_edge
  %__ret38.1162 = phi i32 [ %__ret38.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then37.cleanup_crit_edge ]
  %call61 = call i32 @schedule_timeout(i32 noundef %__ret38.1162) #13
  %call39 = call i32 @prepare_to_wait_event(ptr noundef %param_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %4, align 8
  %tobool42.not = icmp eq ptr %53, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool47.not = icmp eq i32 %call61, 0
  %spec.store.select111 = select i1 %tobool47.not, i32 1, i32 %call61
  %__ret38.1 = select i1 %tobool42.not, i32 %call61, i32 %spec.store.select111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret38.1)
  %tobool54.not = icmp eq i32 %__ret38.1, 0
  %not.tobool42.not = xor i1 %tobool42.not, true
  %54 = select i1 %not.tobool42.not, i1 true, i1 %tobool54.not
  br i1 %54, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then37.for.end_crit_edge
  call void @finish_wait(ptr noundef %param_wq, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end64

if.end64:                                         ; preds = %for.end, %fpga_queue.exit.if.end64_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %param_queue_lock) #13
  %call.i.i154 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %prm) #13
  br i1 %call.i.i154, label %if.end.i.i155, label %if.end64.list_del.exit_crit_edge

if.end64.list_del.exit_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i155:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %2, align 4
  %57 = ptrtoint ptr %prm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prm, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i155, %if.end64.list_del.exit_crit_edge
  %61 = ptrtoint ptr %prm to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %prm, align 8
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %param_queue_lock) #13
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %4, align 8
  %tobool70.not = icmp eq ptr %64, null
  br i1 %tobool70.not, label %list_del.exit.cleanup104_crit_edge, label %if.end72

list_del.exit.cleanup104_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup104

if.end72:                                         ; preds = %list_del.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 19
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %sub73 = add i32 %66, -1
  %arrayidx74 = getelementptr i8, ptr %68, i32 %sub73
  %69 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %70)
  %cmp = icmp eq i8 %70, 10
  %spec.select = select i1 %cmp, i32 %sub73, i32 %66
  %71 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %spec.select, label %if.end72.if.else93_crit_edge [
    i32 2, label %land.lhs.true81
    i32 5, label %land.lhs.true88
  ]

if.end72.if.else93_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else93

land.lhs.true81:                                  ; preds = %if.end72
  %call83 = call i32 @strncmp(ptr noundef %68, ptr noundef nonnull dereferenceable(3) @.str.232, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.lhs.true81.if.end103_crit_edge, label %land.lhs.true81.if.else93_crit_edge

land.lhs.true81.if.else93_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else93

land.lhs.true81.if.end103_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

land.lhs.true88:                                  ; preds = %if.end72
  %call90 = call i32 @strncmp(ptr noundef %68, ptr noundef nonnull dereferenceable(6) @.str.92, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.lhs.true88.if.end103_crit_edge, label %land.lhs.true88.if.else93_crit_edge

land.lhs.true88.if.else93_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else93

land.lhs.true88.if.end103_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.else93:                                        ; preds = %land.lhs.true88.if.else93_crit_edge, %land.lhs.true81.if.else93_crit_edge, %if.end72.if.else93_crit_edge
  %arrayidx95 = getelementptr i8, ptr %68, i32 %spec.select
  %72 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %arrayidx95, align 1
  %dev99 = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev99, align 4
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev100, ptr noundef nonnull @.str.234, ptr noundef %76) #16
  br label %if.end103

if.end103:                                        ; preds = %if.else93, %land.lhs.true88.if.end103_crit_edge, %land.lhs.true81.if.end103_crit_edge
  %ret.0 = phi i32 [ -5, %if.else93 ], [ %count, %land.lhs.true81.if.end103_crit_edge ], [ -5, %land.lhs.true88.if.end103_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %64, i32 noundef 0) #13
  br label %cleanup104

cleanup104:                                       ; preds = %if.end103, %list_del.exit.cleanup104_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %if.end103 ], [ -12, %do.end ], [ -5, %list_del.exit.cleanup104_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %prm) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geos_gpio_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #13, !srcloc !659
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %offset = getelementptr inbounds %struct.geos_gpio_attr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %shr = lshr i32 %5, %7
  %and = and i32 %shr, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.262, i32 noundef %and)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geos_gpio_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.275)
  switch i32 %count, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 2, label %lor.lhs.false
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %buf, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp2.not = icmp eq i8 %4, 10
  br i1 %cmp2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %param_queue_lock = getelementptr inbounds %struct.solos_card, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %param_queue_lock) #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 84
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #13, !srcloc !659
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.276)
  switch i8 %10, label %if.end.if.end24_crit_edge [
    i8 49, label %if.then10
    i8 48, label %if.then17
  ]

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %offset = getelementptr inbounds %struct.geos_gpio_attr, ptr %attr, i32 0, i32 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %shl = shl nuw i32 1, %13
  %or = or i32 %shl, %8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %16) #13, !srcloc !658
  br label %if.end24

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %offset18 = getelementptr inbounds %struct.geos_gpio_attr, ptr %attr, i32 0, i32 1
  %17 = ptrtoint ptr %offset18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset18, align 4
  %shl19 = shl nuw i32 1, %18
  %neg = xor i32 %shl19, -1
  %and = and i32 %8, %neg
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr21 = getelementptr i8, ptr %20, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  tail call void @arm_heavy_mb() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %21) #13, !srcloc !658
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.then10, %if.end.if.end24_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.then10 ], [ %count, %if.then17 ], [ -22, %if.end.if.end24_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %param_queue_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end24 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hardware_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 84
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #13, !srcloc !659
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %offset = getelementptr inbounds %struct.geos_gpio_attr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.277)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %5, 31
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shr = lshr i32 %5, 5
  %and4 = and i32 %shr, 15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %data32.0 = phi i32 [ %5, %entry.sw.epilog_crit_edge ], [ %and4, %sw.bb3 ], [ %and, %sw.bb ]
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.262, i32 noundef %data32.0)
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 352)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 352)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !54, !55, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !83, !85, !86, !88, !89, !91, !92, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !190, !192, !194, !196, !197, !198, !199, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !219, !220, !222, !224, !225, !226, !228, !229, !230, !231, !232, !233, !235, !236, !237, !239, !241, !243, !245, !246, !247, !248, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !305, !307, !308, !309, !310, !312, !313, !314, !316, !317, !318, !319, !321, !322, !323, !325, !326, !327, !328, !330, !331, !332, !334, !335, !336, !337, !339, !340, !342, !344, !345, !346, !348, !349, !350, !352, !354, !356, !358, !359, !361, !362, !363, !364, !366, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !387, !389, !390, !392, !393, !395, !396, !398, !399, !401, !402, !404, !405, !407, !408, !410, !411, !413, !414, !416, !417, !419, !420, !422, !423, !425, !426, !428, !429, !431, !432, !434, !435, !437, !438, !440, !441, !443, !444, !446, !447, !449, !450, !452, !453, !455, !456, !458, !459, !461, !462, !464, !465, !467, !468, !470, !471, !473, !474, !476, !477, !479, !480, !482, !483, !485, !486, !488, !489, !491, !492, !494, !495, !497, !498, !500, !501, !503, !504, !506, !507, !509, !510, !512, !513, !515, !516, !518, !519, !521, !522, !524, !525, !527, !528, !529, !530, !532, !534, !536, !537, !538, !540, !541, !543, !544, !546, !547, !549, !550, !552, !553, !555, !556, !558, !559, !561, !562, !564, !565, !567, !568, !570, !571, !573, !574, !576, !577, !579, !580, !582, !583, !585, !586, !588, !589, !591, !592, !594, !595, !597, !598, !600, !601, !603, !604, !606, !607, !609, !610, !612, !614, !616, !618, !619, !621, !623, !624, !626, !627, !629, !630, !632, !633, !635, !636, !638, !639, !641, !642, !644, !645, !646}
!llvm.named.register.sp = !{!647}
!llvm.module.flags = !{!648, !649, !650, !651, !652, !653, !654, !655}
!llvm.ident = !{!656}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/atm/solos-pci.c", i32 142, i32 1}
!2 = !{ptr @__UNIQUE_ID_description460, !3, !"__UNIQUE_ID_description460", i1 false, i1 false}
!3 = !{!"../drivers/atm/solos-pci.c", i32 143, i32 1}
!4 = !{ptr @__UNIQUE_ID_version461, !5, !"__UNIQUE_ID_version461", i1 false, i1 false}
!5 = !{!"../drivers/atm/solos-pci.c", i32 144, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file462, !11, !"__UNIQUE_ID_file462", i1 false, i1 false}
!11 = !{!"../drivers/atm/solos-pci.c", i32 145, i32 1}
!12 = !{ptr @__UNIQUE_ID_license463, !11, !"__UNIQUE_ID_license463", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_firmware464, !14, !"__UNIQUE_ID_firmware464", i1 false, i1 false}
!14 = !{!"../drivers/atm/solos-pci.c", i32 146, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware465, !16, !"__UNIQUE_ID_firmware465", i1 false, i1 false}
!16 = !{!"../drivers/atm/solos-pci.c", i32 147, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware466, !18, !"__UNIQUE_ID_firmware466", i1 false, i1 false}
!18 = !{!"../drivers/atm/solos-pci.c", i32 148, i32 1}
!19 = !{ptr @__UNIQUE_ID_reset467, !20, !"__UNIQUE_ID_reset467", i1 false, i1 false}
!20 = !{!"../drivers/atm/solos-pci.c", i32 149, i32 1}
!21 = !{ptr @__UNIQUE_ID_atmdebug468, !22, !"__UNIQUE_ID_atmdebug468", i1 false, i1 false}
!22 = !{!"../drivers/atm/solos-pci.c", i32 150, i32 1}
!23 = !{ptr @__UNIQUE_ID_firmware_upgrade469, !24, !"__UNIQUE_ID_firmware_upgrade469", i1 false, i1 false}
!24 = !{!"../drivers/atm/solos-pci.c", i32 151, i32 1}
!25 = !{ptr @__UNIQUE_ID_fpga_upgrade470, !26, !"__UNIQUE_ID_fpga_upgrade470", i1 false, i1 false}
!26 = !{!"../drivers/atm/solos-pci.c", i32 152, i32 1}
!27 = !{ptr @__UNIQUE_ID_db_firmware_upgrade471, !28, !"__UNIQUE_ID_db_firmware_upgrade471", i1 false, i1 false}
!28 = !{!"../drivers/atm/solos-pci.c", i32 153, i32 1}
!29 = !{ptr @__UNIQUE_ID_db_fpga_upgrade472, !30, !"__UNIQUE_ID_db_fpga_upgrade472", i1 false, i1 false}
!30 = !{!"../drivers/atm/solos-pci.c", i32 154, i32 1}
!31 = !{ptr @__param_reset, !32, !"__param_reset", i1 false, i1 false}
!32 = !{!"../drivers/atm/solos-pci.c", i32 155, i32 1}
!33 = !{ptr @__UNIQUE_ID_resettype473, !32, !"__UNIQUE_ID_resettype473", i1 false, i1 false}
!34 = !{ptr @__param_atmdebug, !35, !"__param_atmdebug", i1 false, i1 false}
!35 = !{!"../drivers/atm/solos-pci.c", i32 156, i32 1}
!36 = !{ptr @__UNIQUE_ID_atmdebugtype474, !35, !"__UNIQUE_ID_atmdebugtype474", i1 false, i1 false}
!37 = !{ptr @__param_firmware_upgrade, !38, !"__param_firmware_upgrade", i1 false, i1 false}
!38 = !{!"../drivers/atm/solos-pci.c", i32 157, i32 1}
!39 = !{ptr @__UNIQUE_ID_firmware_upgradetype475, !38, !"__UNIQUE_ID_firmware_upgradetype475", i1 false, i1 false}
!40 = !{ptr @__param_fpga_upgrade, !41, !"__param_fpga_upgrade", i1 false, i1 false}
!41 = !{!"../drivers/atm/solos-pci.c", i32 158, i32 1}
!42 = !{ptr @__UNIQUE_ID_fpga_upgradetype476, !41, !"__UNIQUE_ID_fpga_upgradetype476", i1 false, i1 false}
!43 = !{ptr @__param_db_firmware_upgrade, !44, !"__param_db_firmware_upgrade", i1 false, i1 false}
!44 = !{!"../drivers/atm/solos-pci.c", i32 159, i32 1}
!45 = !{ptr @__UNIQUE_ID_db_firmware_upgradetype477, !44, !"__UNIQUE_ID_db_firmware_upgradetype477", i1 false, i1 false}
!46 = !{ptr @__param_db_fpga_upgrade, !47, !"__param_db_fpga_upgrade", i1 false, i1 false}
!47 = !{!"../drivers/atm/solos-pci.c", i32 160, i32 1}
!48 = !{ptr @__UNIQUE_ID_db_fpga_upgradetype478, !47, !"__UNIQUE_ID_db_fpga_upgradetype478", i1 false, i1 false}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/atm/solos-pci.c", i32 1492, i32 2}
!51 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @solos_pci_exit._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @solos_pci_exit._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @__initcall__kmod_solos_pci__483_1495_solos_pci_init6, !56, !"__initcall__kmod_solos_pci__483_1495_solos_pci_init6", i1 false, i1 false}
!56 = !{!"../drivers/atm/solos-pci.c", i32 1495, i32 1}
!57 = !{ptr @__exitcall_solos_pci_exit, !58, !"__exitcall_solos_pci_exit", i1 false, i1 false}
!58 = !{!"../drivers/atm/solos-pci.c", i32 1496, i32 1}
!59 = !{ptr @__param_str_reset, !32, !"__param_str_reset", i1 false, i1 false}
!60 = !{ptr @reset, !61, !"reset", i1 false, i1 false}
!61 = !{!"../drivers/atm/solos-pci.c", i32 77, i32 12}
!62 = !{ptr @__param_str_atmdebug, !35, !"__param_str_atmdebug", i1 false, i1 false}
!63 = !{ptr @atmdebug, !64, !"atmdebug", i1 false, i1 false}
!64 = !{!"../drivers/atm/solos-pci.c", i32 78, i32 12}
!65 = !{ptr @__param_str_firmware_upgrade, !38, !"__param_str_firmware_upgrade", i1 false, i1 false}
!66 = !{ptr @firmware_upgrade, !67, !"firmware_upgrade", i1 false, i1 false}
!67 = !{!"../drivers/atm/solos-pci.c", i32 79, i32 12}
!68 = !{ptr @__param_str_fpga_upgrade, !41, !"__param_str_fpga_upgrade", i1 false, i1 false}
!69 = !{ptr @fpga_upgrade, !70, !"fpga_upgrade", i1 false, i1 false}
!70 = !{!"../drivers/atm/solos-pci.c", i32 80, i32 12}
!71 = !{ptr @__param_str_db_firmware_upgrade, !44, !"__param_str_db_firmware_upgrade", i1 false, i1 false}
!72 = !{ptr @db_firmware_upgrade, !73, !"db_firmware_upgrade", i1 false, i1 false}
!73 = !{!"../drivers/atm/solos-pci.c", i32 81, i32 12}
!74 = !{ptr @__param_str_db_fpga_upgrade, !47, !"__param_str_db_fpga_upgrade", i1 false, i1 false}
!75 = !{ptr @db_fpga_upgrade, !76, !"db_fpga_upgrade", i1 false, i1 false}
!76 = !{!"../drivers/atm/solos-pci.c", i32 82, i32 12}
!77 = !{ptr @.str.6, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/atm/solos-pci.c", i32 1474, i32 11}
!79 = !{ptr @fpga_driver, !80, !"fpga_driver", i1 false, i1 false}
!80 = !{!"../drivers/atm/solos-pci.c", i32 1473, i32 26}
!81 = !{ptr @fpga_pci_tbl, !82, !"fpga_pci_tbl", i1 false, i1 false}
!82 = !{!"../drivers/atm/solos-pci.c", i32 1466, i32 35}
!83 = !{ptr @fpga_probe.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/atm/solos-pci.c", i32 1204, i32 2}
!85 = !{ptr @.str.7, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @fpga_probe.__key.8, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/atm/solos-pci.c", i32 1205, i32 2}
!88 = !{ptr @.str.9, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.10, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/atm/solos-pci.c", i32 1209, i32 3}
!91 = !{ptr @.str.11, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.12, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.13, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @fpga_probe._entry, !90, !"_entry", i1 false, i1 false}
!95 = !{ptr @fpga_probe._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.15, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/atm/solos-pci.c", i32 1215, i32 3}
!98 = !{ptr @fpga_probe._entry.14, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @fpga_probe._entry_ptr.16, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.18, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/atm/solos-pci.c", i32 1221, i32 3}
!102 = !{ptr @fpga_probe._entry.17, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @fpga_probe._entry_ptr.19, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.21, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/atm/solos-pci.c", i32 1227, i32 3}
!106 = !{ptr @fpga_probe._entry.20, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @fpga_probe._entry_ptr.22, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.24, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/atm/solos-pci.c", i32 1233, i32 3}
!110 = !{ptr @fpga_probe._entry.23, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @fpga_probe._entry_ptr.25, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/atm/solos-pci.c", i32 1255, i32 2}
!114 = !{ptr @.str.28, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @fpga_probe._entry.26, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @fpga_probe._entry_ptr.29, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.31, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/atm/solos-pci.c", i32 1260, i32 3}
!119 = !{ptr @fpga_probe._entry.30, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @fpga_probe._entry_ptr.32, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.34, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/atm/solos-pci.c", i32 1283, i32 5}
!123 = !{ptr @fpga_probe._entry.33, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @fpga_probe._entry_ptr.35, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @fpga_probe.__key.36, !126, !"__key", i1 false, i1 false}
!126 = !{!"../drivers/atm/solos-pci.c", i32 1298, i32 2}
!127 = !{ptr @.str.37, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @fpga_probe.__key.38, !129, !"__key", i1 false, i1 false}
!129 = !{!"../drivers/atm/solos-pci.c", i32 1299, i32 2}
!130 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @fpga_probe.__key.40, !132, !"__key", i1 false, i1 false}
!132 = !{!"../drivers/atm/solos-pci.c", i32 1300, i32 2}
!133 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @fpga_probe.__key.42, !135, !"__key", i1 false, i1 false}
!135 = !{!"../drivers/atm/solos-pci.c", i32 1301, i32 2}
!136 = !{ptr @.str.43, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/atm/solos-pci.c", i32 1305, i32 6}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/atm/solos-pci.c", i32 1307, i32 3}
!141 = !{ptr @fpga_probe.__UNIQUE_ID_ddebug481, !140, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!142 = !{ptr @.str.47, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/atm/solos-pci.c", i32 1331, i32 3}
!144 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @fpga_probe._entry.46, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @fpga_probe._entry_ptr.49, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/atm/solos-pci.c", i32 798, i32 6}
!149 = !{ptr @.str.51, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @solos_bh._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @solos_bh._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.53, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/atm/solos-pci.c", i32 810, i32 7}
!154 = !{ptr @solos_bh._entry.52, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @solos_bh._entry_ptr.54, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/atm/solos-pci.c", i32 819, i32 5}
!158 = !{ptr @solos_bh._entry.55, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @solos_bh._entry_ptr.57, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/atm/solos-pci.c", i32 820, i32 5}
!162 = !{ptr @solos_bh._entry.58, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @solos_bh._entry_ptr.60, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/atm/solos-pci.c", i32 832, i32 7}
!166 = !{ptr @solos_bh._entry.61, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @solos_bh._entry_ptr.63, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/atm/solos-pci.c", i32 846, i32 6}
!170 = !{ptr @solos_bh._entry.64, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @solos_bh._entry_ptr.66, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/atm/solos-pci.c", i32 859, i32 7}
!174 = !{ptr @solos_bh._entry.67, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @solos_bh._entry_ptr.69, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.71, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/atm/solos-pci.c", i32 884, i32 6}
!178 = !{ptr @solos_bh._entry.70, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @solos_bh._entry_ptr.72, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/atm/solos-pci.c", i32 1110, i32 5}
!182 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @fpga_tx._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @fpga_tx._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @fpga_tx._entry.75, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/atm/solos-pci.c", i32 1112, i32 5}
!187 = !{ptr @fpga_tx._entry_ptr.76, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.77, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/atm/solos-pci.c", i32 1008, i32 17}
!190 = !{ptr @.str.78, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/atm/solos-pci.c", i32 1010, i32 16}
!192 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/atm/solos-pci.c", i32 1013, i32 18}
!194 = !{ptr @.str.80, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/atm/solos-pci.c", i32 1015, i32 4}
!196 = !{ptr @.str.81, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @print_buffer._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @print_buffer._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @print_buffer._entry.82, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../drivers/atm/solos-pci.c", i32 1021, i32 3}
!201 = !{ptr @print_buffer._entry_ptr.83, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/atm/solos-pci.c", i32 1023, i32 2}
!204 = !{ptr @print_buffer._entry.84, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @print_buffer._entry_ptr.86, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/atm/solos-pci.c", i32 353, i32 3}
!208 = !{ptr @.str.88, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @process_status._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @process_status._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/atm/solos-pci.c", i32 357, i32 3}
!213 = !{ptr @process_status._entry.89, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @process_status._entry_ptr.91, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.92, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/atm/solos-pci.c", i32 365, i32 19}
!217 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/atm/solos-pci.c", i32 366, i32 3}
!219 = !{ptr @process_status.__UNIQUE_ID_ddebug479, !218, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!220 = !{ptr @.str.94, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/atm/solos-pci.c", i32 387, i32 24}
!222 = !{ptr @.str.96, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/atm/solos-pci.c", i32 389, i32 3}
!224 = !{ptr @process_status._entry.95, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @process_status._entry_ptr.97, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/atm/solos-pci.c", i32 400, i32 2}
!228 = !{ptr @process_status._entry.98, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @process_status._entry_ptr.100, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.101, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.103, !227, !"<string literal>", i1 false, i1 false}
!233 = distinct !{null, !234, !"__already_done", i1 false, i1 false}
!234 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!235 = !{ptr @.str.104, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.105, !234, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.106, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/atm/solos-pci.c", i32 634, i32 13}
!239 = !{ptr @.str.107, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/atm/solos-pci.c", i32 641, i32 13}
!241 = !{ptr @.str.108, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/atm/solos-pci.c", i32 649, i32 14}
!243 = !{ptr @.str.109, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/atm/solos-pci.c", i32 655, i32 4}
!245 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @flash_upgrade._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @flash_upgrade._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @flash_upgrade._entry.111, !249, !"_entry", i1 false, i1 false}
!249 = !{!"../drivers/atm/solos-pci.c", i32 668, i32 4}
!250 = !{ptr @flash_upgrade._entry_ptr.112, !249, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.114, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/atm/solos-pci.c", i32 680, i32 2}
!253 = !{ptr @flash_upgrade._entry.113, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @flash_upgrade._entry_ptr.115, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.117, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/atm/solos-pci.c", i32 686, i32 2}
!257 = !{ptr @flash_upgrade._entry.116, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @flash_upgrade._entry_ptr.118, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.120, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/atm/solos-pci.c", i32 687, i32 2}
!261 = !{ptr @flash_upgrade._entry.119, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @flash_upgrade._entry_ptr.121, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.123, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/atm/solos-pci.c", i32 689, i32 2}
!265 = !{ptr @flash_upgrade._entry.122, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @flash_upgrade._entry_ptr.124, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.126, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/atm/solos-pci.c", i32 695, i32 3}
!269 = !{ptr @flash_upgrade._entry.125, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @flash_upgrade._entry_ptr.127, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.129, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/atm/solos-pci.c", i32 697, i32 3}
!273 = !{ptr @flash_upgrade._entry.128, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @flash_upgrade._entry_ptr.130, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.132, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/atm/solos-pci.c", i32 737, i32 2}
!277 = !{ptr @flash_upgrade._entry.131, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @flash_upgrade._entry_ptr.133, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.134, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/atm/solos-pci.c", i32 1365, i32 4}
!281 = !{ptr @.str.135, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @atm_init._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @atm_init._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.137, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/atm/solos-pci.c", i32 1370, i32 4}
!286 = !{ptr @atm_init._entry.136, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @atm_init._entry_ptr.138, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.140, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/atm/solos-pci.c", i32 1372, i32 4}
!290 = !{ptr @atm_init._entry.139, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @atm_init._entry_ptr.141, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.143, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/atm/solos-pci.c", i32 1374, i32 3}
!294 = !{ptr @atm_init._entry.142, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @atm_init._entry_ptr.144, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/atm/solos-pci.c", i32 1384, i32 4}
!298 = !{ptr @atm_init._entry.145, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @atm_init._entry_ptr.147, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @skb_queue_head_init.__key, !301, !"__key", i1 false, i1 false}
!301 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!302 = !{ptr @.str.148, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @fpga_ops, !304, !"fpga_ops", i1 false, i1 false}
!304 = !{!"../drivers/atm/solos-pci.c", i32 1178, i32 32}
!305 = !{ptr @.str.149, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/atm/solos-pci.c", i32 925, i32 3}
!307 = !{ptr @.str.150, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @popen._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @popen._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.152, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/atm/solos-pci.c", i32 933, i32 4}
!312 = !{ptr @popen._entry.151, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @popen._entry_ptr.153, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.154, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/atm/solos-pci.c", i32 970, i32 3}
!316 = !{ptr @.str.155, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @pclose._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @pclose._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.157, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/atm/solos-pci.c", i32 984, i32 3}
!321 = !{ptr @pclose._entry.156, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @pclose._entry_ptr.158, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.159, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/atm/solos-pci.c", i32 1145, i32 3}
!325 = !{ptr @.str.160, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @psend._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @psend._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.162, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/atm/solos-pci.c", i32 1159, i32 4}
!330 = !{ptr @psend._entry.161, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @psend._entry_ptr.163, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.164, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/atm/solos-pci.c", i32 1408, i32 4}
!334 = !{ptr @.str.165, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @atm_remove._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @atm_remove._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.166, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/atm/solos-pci.c", i32 575, i32 8}
!339 = !{ptr @dev_attr_console, !338, !"dev_attr_console", i1 false, i1 false}
!340 = !{ptr @.str.167, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/atm/solos-pci.c", i32 456, i32 23}
!342 = !{ptr @.str.168, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/atm/solos-pci.c", i32 471, i32 3}
!344 = !{ptr @.str.169, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @send_command.__UNIQUE_ID_ddebug480, !343, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!346 = !{ptr @.str.170, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/atm/solos-pci.c", i32 476, i32 3}
!348 = !{ptr @send_command._entry, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @send_command._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.171, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/atm/solos-pci.c", i32 604, i32 10}
!352 = !{ptr @solos_attr_group, !353, !"solos_attr_group", i1 false, i1 false}
!353 = !{!"../drivers/atm/solos-pci.c", i32 602, i32 37}
!354 = !{ptr @solos_attrs, !355, !"solos_attrs", i1 false, i1 false}
!355 = !{!"../drivers/atm/solos-pci.c", i32 597, i32 26}
!356 = !{ptr @.str.172, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/atm/solos-attrlist.c", i32 2, i32 1}
!358 = !{ptr @dev_attr_DriverVersion, !357, !"dev_attr_DriverVersion", i1 false, i1 false}
!359 = !{ptr @.str.173, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/atm/solos-pci.c", i32 195, i32 3}
!361 = !{ptr @.str.174, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @solos_param_show._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @solos_param_show._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.175, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/atm/solos-pci.c", i32 202, i32 6}
!366 = !{ptr @.str.176, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/atm/solos-attrlist.c", i32 3, i32 1}
!368 = !{ptr @dev_attr_APIVersion, !367, !"dev_attr_APIVersion", i1 false, i1 false}
!369 = !{ptr @.str.177, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/atm/solos-attrlist.c", i32 4, i32 1}
!371 = !{ptr @dev_attr_FirmwareVersion, !370, !"dev_attr_FirmwareVersion", i1 false, i1 false}
!372 = !{ptr @.str.178, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/atm/solos-attrlist.c", i32 5, i32 1}
!374 = !{ptr @dev_attr_Version, !373, !"dev_attr_Version", i1 false, i1 false}
!375 = !{ptr @.str.179, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/atm/solos-attrlist.c", i32 8, i32 1}
!377 = !{ptr @dev_attr_Connected, !376, !"dev_attr_Connected", i1 false, i1 false}
!378 = !{ptr @.str.180, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/atm/solos-attrlist.c", i32 9, i32 1}
!380 = !{ptr @dev_attr_OperationalMode, !379, !"dev_attr_OperationalMode", i1 false, i1 false}
!381 = !{ptr @.str.181, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/atm/solos-attrlist.c", i32 10, i32 1}
!383 = !{ptr @dev_attr_State, !382, !"dev_attr_State", i1 false, i1 false}
!384 = !{ptr @.str.182, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/atm/solos-attrlist.c", i32 11, i32 1}
!386 = !{ptr @dev_attr_Watchdog, !385, !"dev_attr_Watchdog", i1 false, i1 false}
!387 = !{ptr @.str.183, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/atm/solos-attrlist.c", i32 12, i32 1}
!389 = !{ptr @dev_attr_OperationProgress, !388, !"dev_attr_OperationProgress", i1 false, i1 false}
!390 = !{ptr @.str.184, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/atm/solos-attrlist.c", i32 13, i32 1}
!392 = !{ptr @dev_attr_LastFailed, !391, !"dev_attr_LastFailed", i1 false, i1 false}
!393 = !{ptr @.str.185, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/atm/solos-attrlist.c", i32 14, i32 1}
!395 = !{ptr @dev_attr_TxBitRate, !394, !"dev_attr_TxBitRate", i1 false, i1 false}
!396 = !{ptr @.str.186, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/atm/solos-attrlist.c", i32 15, i32 1}
!398 = !{ptr @dev_attr_RxBitRate, !397, !"dev_attr_RxBitRate", i1 false, i1 false}
!399 = !{ptr @.str.187, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/atm/solos-attrlist.c", i32 18, i32 1}
!401 = !{ptr @dev_attr_TxATTNDR, !400, !"dev_attr_TxATTNDR", i1 false, i1 false}
!402 = !{ptr @.str.188, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/atm/solos-attrlist.c", i32 19, i32 1}
!404 = !{ptr @dev_attr_RxATTNDR, !403, !"dev_attr_RxATTNDR", i1 false, i1 false}
!405 = !{ptr @.str.189, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/atm/solos-attrlist.c", i32 20, i32 1}
!407 = !{ptr @dev_attr_AnnexType, !406, !"dev_attr_AnnexType", i1 false, i1 false}
!408 = !{ptr @.str.190, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/atm/solos-attrlist.c", i32 21, i32 1}
!410 = !{ptr @dev_attr_GeneralFailure, !409, !"dev_attr_GeneralFailure", i1 false, i1 false}
!411 = !{ptr @.str.191, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/atm/solos-attrlist.c", i32 22, i32 1}
!413 = !{ptr @dev_attr_InterleaveDpDn, !412, !"dev_attr_InterleaveDpDn", i1 false, i1 false}
!414 = !{ptr @.str.192, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/atm/solos-attrlist.c", i32 23, i32 1}
!416 = !{ptr @dev_attr_InterleaveDpUp, !415, !"dev_attr_InterleaveDpUp", i1 false, i1 false}
!417 = !{ptr @.str.193, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/atm/solos-attrlist.c", i32 24, i32 1}
!419 = !{ptr @dev_attr_RSCorrectedErrorsDn, !418, !"dev_attr_RSCorrectedErrorsDn", i1 false, i1 false}
!420 = !{ptr @.str.194, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/atm/solos-attrlist.c", i32 25, i32 1}
!422 = !{ptr @dev_attr_RSUnCorrectedErrorsDn, !421, !"dev_attr_RSUnCorrectedErrorsDn", i1 false, i1 false}
!423 = !{ptr @.str.195, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/atm/solos-attrlist.c", i32 26, i32 1}
!425 = !{ptr @dev_attr_RSCorrectedErrorsUp, !424, !"dev_attr_RSCorrectedErrorsUp", i1 false, i1 false}
!426 = !{ptr @.str.196, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/atm/solos-attrlist.c", i32 27, i32 1}
!428 = !{ptr @dev_attr_RSUnCorrectedErrorsUp, !427, !"dev_attr_RSUnCorrectedErrorsUp", i1 false, i1 false}
!429 = !{ptr @.str.197, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/atm/solos-attrlist.c", i32 28, i32 1}
!431 = !{ptr @dev_attr_InterleaveRDn, !430, !"dev_attr_InterleaveRDn", i1 false, i1 false}
!432 = !{ptr @.str.198, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/atm/solos-attrlist.c", i32 29, i32 1}
!434 = !{ptr @dev_attr_InterleaveRUp, !433, !"dev_attr_InterleaveRUp", i1 false, i1 false}
!435 = !{ptr @.str.199, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/atm/solos-attrlist.c", i32 30, i32 1}
!437 = !{ptr @dev_attr_BisRDn, !436, !"dev_attr_BisRDn", i1 false, i1 false}
!438 = !{ptr @.str.200, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/atm/solos-attrlist.c", i32 31, i32 1}
!440 = !{ptr @dev_attr_BisRUp, !439, !"dev_attr_BisRUp", i1 false, i1 false}
!441 = !{ptr @.str.201, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/atm/solos-attrlist.c", i32 32, i32 1}
!443 = !{ptr @dev_attr_INPdown, !442, !"dev_attr_INPdown", i1 false, i1 false}
!444 = !{ptr @.str.202, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/atm/solos-attrlist.c", i32 33, i32 1}
!446 = !{ptr @dev_attr_INPup, !445, !"dev_attr_INPup", i1 false, i1 false}
!447 = !{ptr @.str.203, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/atm/solos-attrlist.c", i32 34, i32 1}
!449 = !{ptr @dev_attr_ShowtimeStart, !448, !"dev_attr_ShowtimeStart", i1 false, i1 false}
!450 = !{ptr @.str.204, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/atm/solos-attrlist.c", i32 35, i32 1}
!452 = !{ptr @dev_attr_ATURVendor, !451, !"dev_attr_ATURVendor", i1 false, i1 false}
!453 = !{ptr @.str.205, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/atm/solos-attrlist.c", i32 36, i32 1}
!455 = !{ptr @dev_attr_ATUCCountry, !454, !"dev_attr_ATUCCountry", i1 false, i1 false}
!456 = !{ptr @.str.206, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/atm/solos-attrlist.c", i32 37, i32 1}
!458 = !{ptr @dev_attr_ATURANSIRev, !457, !"dev_attr_ATURANSIRev", i1 false, i1 false}
!459 = !{ptr @.str.207, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/atm/solos-attrlist.c", i32 38, i32 1}
!461 = !{ptr @dev_attr_ATURANSISTD, !460, !"dev_attr_ATURANSISTD", i1 false, i1 false}
!462 = !{ptr @.str.208, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/atm/solos-attrlist.c", i32 39, i32 1}
!464 = !{ptr @dev_attr_ATUCANSIRev, !463, !"dev_attr_ATUCANSIRev", i1 false, i1 false}
!465 = !{ptr @.str.209, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/atm/solos-attrlist.c", i32 40, i32 1}
!467 = !{ptr @dev_attr_ATUCANSIId, !466, !"dev_attr_ATUCANSIId", i1 false, i1 false}
!468 = !{ptr @.str.210, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/atm/solos-attrlist.c", i32 41, i32 1}
!470 = !{ptr @dev_attr_ATUCANSISTD, !469, !"dev_attr_ATUCANSISTD", i1 false, i1 false}
!471 = !{ptr @.str.211, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/atm/solos-attrlist.c", i32 42, i32 1}
!473 = !{ptr @dev_attr_DataBoost, !472, !"dev_attr_DataBoost", i1 false, i1 false}
!474 = !{ptr @.str.212, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/atm/solos-attrlist.c", i32 43, i32 1}
!476 = !{ptr @dev_attr_LocalITUCountryCode, !475, !"dev_attr_LocalITUCountryCode", i1 false, i1 false}
!477 = !{ptr @.str.213, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/atm/solos-attrlist.c", i32 44, i32 1}
!479 = !{ptr @dev_attr_LocalSEF, !478, !"dev_attr_LocalSEF", i1 false, i1 false}
!480 = !{ptr @.str.214, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/atm/solos-attrlist.c", i32 45, i32 1}
!482 = !{ptr @dev_attr_LocalEndLOS, !481, !"dev_attr_LocalEndLOS", i1 false, i1 false}
!483 = !{ptr @.str.215, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/atm/solos-attrlist.c", i32 46, i32 1}
!485 = !{ptr @dev_attr_LocalSNRMargin, !484, !"dev_attr_LocalSNRMargin", i1 false, i1 false}
!486 = !{ptr @.str.216, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/atm/solos-attrlist.c", i32 47, i32 1}
!488 = !{ptr @dev_attr_LocalLineAttn, !487, !"dev_attr_LocalLineAttn", i1 false, i1 false}
!489 = !{ptr @.str.217, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/atm/solos-attrlist.c", i32 48, i32 1}
!491 = !{ptr @dev_attr_RawAttn, !490, !"dev_attr_RawAttn", i1 false, i1 false}
!492 = !{ptr @.str.218, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/atm/solos-attrlist.c", i32 49, i32 1}
!494 = !{ptr @dev_attr_LocalTxPower, !493, !"dev_attr_LocalTxPower", i1 false, i1 false}
!495 = !{ptr @.str.219, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/atm/solos-attrlist.c", i32 50, i32 1}
!497 = !{ptr @dev_attr_RemoteTxPower, !496, !"dev_attr_RemoteTxPower", i1 false, i1 false}
!498 = !{ptr @.str.220, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/atm/solos-attrlist.c", i32 51, i32 1}
!500 = !{ptr @dev_attr_RemoteSEF, !499, !"dev_attr_RemoteSEF", i1 false, i1 false}
!501 = !{ptr @.str.221, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/atm/solos-attrlist.c", i32 52, i32 1}
!503 = !{ptr @dev_attr_RemoteLOS, !502, !"dev_attr_RemoteLOS", i1 false, i1 false}
!504 = !{ptr @.str.222, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/atm/solos-attrlist.c", i32 53, i32 1}
!506 = !{ptr @dev_attr_RemoteLineAttn, !505, !"dev_attr_RemoteLineAttn", i1 false, i1 false}
!507 = !{ptr @.str.223, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/atm/solos-attrlist.c", i32 54, i32 1}
!509 = !{ptr @dev_attr_RemoteSNRMargin, !508, !"dev_attr_RemoteSNRMargin", i1 false, i1 false}
!510 = !{ptr @.str.224, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/atm/solos-attrlist.c", i32 55, i32 1}
!512 = !{ptr @dev_attr_LineUpCount, !511, !"dev_attr_LineUpCount", i1 false, i1 false}
!513 = !{ptr @.str.225, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/atm/solos-attrlist.c", i32 56, i32 1}
!515 = !{ptr @dev_attr_SRACnt, !514, !"dev_attr_SRACnt", i1 false, i1 false}
!516 = !{ptr @.str.226, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/atm/solos-attrlist.c", i32 57, i32 1}
!518 = !{ptr @dev_attr_SRACntUp, !517, !"dev_attr_SRACntUp", i1 false, i1 false}
!519 = !{ptr @.str.227, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/atm/solos-attrlist.c", i32 58, i32 1}
!521 = !{ptr @dev_attr_ProfileStatus, !520, !"dev_attr_ProfileStatus", i1 false, i1 false}
!522 = !{ptr @.str.228, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/atm/solos-attrlist.c", i32 59, i32 1}
!524 = !{ptr @dev_attr_Action, !523, !"dev_attr_Action", i1 false, i1 false}
!525 = !{ptr @.str.229, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/atm/solos-pci.c", i32 251, i32 3}
!527 = !{ptr @.str.230, !526, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @solos_param_store._entry, !526, !"_entry", i1 false, i1 false}
!529 = !{ptr @solos_param_store._entry_ptr, !526, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.231, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/atm/solos-pci.c", i32 258, i32 6}
!532 = !{ptr @.str.232, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/atm/solos-pci.c", i32 293, i32 41}
!534 = !{ptr @.str.234, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/atm/solos-pci.c", i32 302, i32 3}
!536 = !{ptr @solos_param_store._entry.233, !535, !"_entry", i1 false, i1 false}
!537 = !{ptr @solos_param_store._entry_ptr.235, !535, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.236, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/atm/solos-attrlist.c", i32 60, i32 1}
!540 = !{ptr @dev_attr_ActivateLine, !539, !"dev_attr_ActivateLine", i1 false, i1 false}
!541 = !{ptr @.str.237, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/atm/solos-attrlist.c", i32 61, i32 1}
!543 = !{ptr @dev_attr_LineStatus, !542, !"dev_attr_LineStatus", i1 false, i1 false}
!544 = !{ptr @.str.238, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/atm/solos-attrlist.c", i32 62, i32 1}
!546 = !{ptr @dev_attr_HostControl, !545, !"dev_attr_HostControl", i1 false, i1 false}
!547 = !{ptr @.str.239, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/atm/solos-attrlist.c", i32 63, i32 1}
!549 = !{ptr @dev_attr_AutoStart, !548, !"dev_attr_AutoStart", i1 false, i1 false}
!550 = !{ptr @.str.240, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/atm/solos-attrlist.c", i32 64, i32 1}
!552 = !{ptr @dev_attr_Failsafe, !551, !"dev_attr_Failsafe", i1 false, i1 false}
!553 = !{ptr @.str.241, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/atm/solos-attrlist.c", i32 65, i32 1}
!555 = !{ptr @dev_attr_ShowtimeLed, !554, !"dev_attr_ShowtimeLed", i1 false, i1 false}
!556 = !{ptr @.str.242, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/atm/solos-attrlist.c", i32 66, i32 1}
!558 = !{ptr @dev_attr_Retrain, !557, !"dev_attr_Retrain", i1 false, i1 false}
!559 = !{ptr @.str.243, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/atm/solos-attrlist.c", i32 67, i32 1}
!561 = !{ptr @dev_attr_Defaults, !560, !"dev_attr_Defaults", i1 false, i1 false}
!562 = !{ptr @.str.244, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/atm/solos-attrlist.c", i32 68, i32 1}
!564 = !{ptr @dev_attr_LineMode, !563, !"dev_attr_LineMode", i1 false, i1 false}
!565 = !{ptr @.str.245, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/atm/solos-attrlist.c", i32 69, i32 1}
!567 = !{ptr @dev_attr_Profile, !566, !"dev_attr_Profile", i1 false, i1 false}
!568 = !{ptr @.str.246, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/atm/solos-attrlist.c", i32 70, i32 1}
!570 = !{ptr @dev_attr_DetectNoise, !569, !"dev_attr_DetectNoise", i1 false, i1 false}
!571 = !{ptr @.str.247, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/atm/solos-attrlist.c", i32 71, i32 1}
!573 = !{ptr @dev_attr_BisAForceSNRMarginDn, !572, !"dev_attr_BisAForceSNRMarginDn", i1 false, i1 false}
!574 = !{ptr @.str.248, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/atm/solos-attrlist.c", i32 72, i32 1}
!576 = !{ptr @dev_attr_BisMForceSNRMarginDn, !575, !"dev_attr_BisMForceSNRMarginDn", i1 false, i1 false}
!577 = !{ptr @.str.249, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/atm/solos-attrlist.c", i32 73, i32 1}
!579 = !{ptr @dev_attr_BisAMaxMargin, !578, !"dev_attr_BisAMaxMargin", i1 false, i1 false}
!580 = !{ptr @.str.250, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/atm/solos-attrlist.c", i32 74, i32 1}
!582 = !{ptr @dev_attr_BisMMaxMargin, !581, !"dev_attr_BisMMaxMargin", i1 false, i1 false}
!583 = !{ptr @.str.251, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/atm/solos-attrlist.c", i32 75, i32 1}
!585 = !{ptr @dev_attr_AnnexAForceSNRMarginDn, !584, !"dev_attr_AnnexAForceSNRMarginDn", i1 false, i1 false}
!586 = !{ptr @.str.252, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/atm/solos-attrlist.c", i32 76, i32 1}
!588 = !{ptr @dev_attr_AnnexAMaxMargin, !587, !"dev_attr_AnnexAMaxMargin", i1 false, i1 false}
!589 = !{ptr @.str.253, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/atm/solos-attrlist.c", i32 77, i32 1}
!591 = !{ptr @dev_attr_AnnexMMaxMargin, !590, !"dev_attr_AnnexMMaxMargin", i1 false, i1 false}
!592 = !{ptr @.str.254, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/atm/solos-attrlist.c", i32 78, i32 1}
!594 = !{ptr @dev_attr_SupportedAnnexes, !593, !"dev_attr_SupportedAnnexes", i1 false, i1 false}
!595 = !{ptr @.str.255, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/atm/solos-attrlist.c", i32 79, i32 1}
!597 = !{ptr @dev_attr_Status, !596, !"dev_attr_Status", i1 false, i1 false}
!598 = !{ptr @.str.256, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/atm/solos-attrlist.c", i32 80, i32 1}
!600 = !{ptr @dev_attr_TotalStart, !599, !"dev_attr_TotalStart", i1 false, i1 false}
!601 = !{ptr @.str.257, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/atm/solos-attrlist.c", i32 81, i32 1}
!603 = !{ptr @dev_attr_RecentShowtimeStart, !602, !"dev_attr_RecentShowtimeStart", i1 false, i1 false}
!604 = !{ptr @.str.258, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/atm/solos-attrlist.c", i32 82, i32 1}
!606 = !{ptr @dev_attr_TotalRxBlocks, !605, !"dev_attr_TotalRxBlocks", i1 false, i1 false}
!607 = !{ptr @.str.259, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/atm/solos-attrlist.c", i32 83, i32 1}
!609 = !{ptr @dev_attr_TotalTxBlocks, !608, !"dev_attr_TotalTxBlocks", i1 false, i1 false}
!610 = !{ptr @.str.260, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/atm/solos-pci.c", i32 621, i32 10}
!612 = !{ptr @gpio_attr_group, !613, !"gpio_attr_group", i1 false, i1 false}
!613 = !{!"../drivers/atm/solos-pci.c", i32 619, i32 37}
!614 = !{ptr @gpio_attrs, !615, !"gpio_attrs", i1 false, i1 false}
!615 = !{!"../drivers/atm/solos-pci.c", i32 607, i32 26}
!616 = !{ptr @.str.261, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/atm/solos-pci.c", i32 583, i32 8}
!618 = !{ptr @gpio_attr_GPIO1, !617, !"gpio_attr_GPIO1", i1 false, i1 false}
!619 = !{ptr @.str.262, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/atm/solos-pci.c", i32 551, i32 22}
!621 = !{ptr @.str.263, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/atm/solos-pci.c", i32 584, i32 8}
!623 = !{ptr @gpio_attr_GPIO2, !622, !"gpio_attr_GPIO2", i1 false, i1 false}
!624 = !{ptr @.str.264, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/atm/solos-pci.c", i32 585, i32 8}
!626 = !{ptr @gpio_attr_GPIO3, !625, !"gpio_attr_GPIO3", i1 false, i1 false}
!627 = !{ptr @.str.265, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/atm/solos-pci.c", i32 586, i32 8}
!629 = !{ptr @gpio_attr_GPIO4, !628, !"gpio_attr_GPIO4", i1 false, i1 false}
!630 = !{ptr @.str.266, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/atm/solos-pci.c", i32 587, i32 8}
!632 = !{ptr @gpio_attr_GPIO5, !631, !"gpio_attr_GPIO5", i1 false, i1 false}
!633 = !{ptr @.str.267, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/atm/solos-pci.c", i32 588, i32 8}
!635 = !{ptr @gpio_attr_PushButton, !634, !"gpio_attr_PushButton", i1 false, i1 false}
!636 = !{ptr @.str.268, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/atm/solos-pci.c", i32 589, i32 8}
!638 = !{ptr @gpio_attr_HardwareVersion, !637, !"gpio_attr_HardwareVersion", i1 false, i1 false}
!639 = !{ptr @.str.269, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/atm/solos-pci.c", i32 590, i32 8}
!641 = !{ptr @gpio_attr_HardwareVariant, !640, !"gpio_attr_HardwareVariant", i1 false, i1 false}
!642 = !{ptr @.str.270, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/atm/solos-pci.c", i32 1485, i32 2}
!644 = !{ptr @.str.271, !643, !"<string literal>", i1 false, i1 false}
!645 = !{ptr @solos_pci_init._entry, !643, !"_entry", i1 false, i1 false}
!646 = !{ptr @solos_pci_init._entry_ptr, !643, !"_entry_ptr", i1 false, i1 false}
!647 = !{!"sp"}
!648 = !{i32 1, !"wchar_size", i32 2}
!649 = !{i32 1, !"min_enum_size", i32 4}
!650 = !{i32 8, !"branch-target-enforcement", i32 0}
!651 = !{i32 8, !"sign-return-address", i32 0}
!652 = !{i32 8, !"sign-return-address-all", i32 0}
!653 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!654 = !{i32 7, !"uwtable", i32 1}
!655 = !{i32 7, !"frame-pointer", i32 2}
!656 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!657 = !{i64 2151777916}
!658 = !{i64 4235794}
!659 = !{i64 4236212}
!660 = !{i64 2151776561}
!661 = !{!"branch_weights", i32 1, i32 2000}
!662 = !{i64 2148754986, i64 2148754991, i64 2148755004, i64 2148755048, i64 2148755082, i64 2148755103}
!663 = !{i64 2148273171, i64 2148273197, i64 2148273226, i64 2148273260, i64 2148273291, i64 2148273314}
!664 = !{!"auto-init"}
!665 = !{!"branch_weights", i32 2000, i32 1}
!666 = !{i64 1122246}
!667 = !{i64 2148274701, i64 2148274733, i64 2148274762, i64 2148274796, i64 2148274827, i64 2148274850}
