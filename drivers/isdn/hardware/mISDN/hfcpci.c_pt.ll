; ModuleID = '/llk/IR_all_yes/drivers/isdn/hardware/mISDN/hfcpci.c_pt.bc'
source_filename = "../drivers/isdn/hardware/mISDN/hfcpci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._hfc_map = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hfc_pci = type { i8, i8, i8, i32, i32, i32, ptr, %struct.hfcPCI_hw, %struct.spinlock, %struct.dchannel, [2 x %struct.bchannel] }
%struct.hfcPCI_hw = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, ptr, [2 x i32], %struct.timer_list }
%struct.dchannel = type { %struct.mISDNdevice, i32, %struct.work_struct, ptr, i32, ptr, ptr, i32, %struct.timer_list, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32 }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.bchannel = type { %struct.mISDNchannel, i32, i32, %struct.work_struct, i32, ptr, i32, %struct.timer_list, [4 x i8], ptr, i16, i16, i16, i16, i16, i16, ptr, ptr, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.145, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.145 = type { ptr }
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
%struct.channel_req = type { i32, %struct.sockaddr_mISDN, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }
%struct.dfifo = type { [512 x i8], [7840 x i8], i8, i8, [30 x i8], [16 x %struct.zt], [7936 x i8] }
%struct.zt = type { i16, i16 }
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
%union.anon.108 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.146 = type { %struct.dfifo, %struct.dfifo }
%struct.anon.147 = type { [512 x i8], [7680 x i8], %struct.bzfifo, %struct.bzfifo, [7680 x i8], [512 x i8], [7680 x i8], %struct.bzfifo, %struct.bzfifo, [7680 x i8] }
%struct.bzfifo = type { [32 x %struct.zt], i8, i8, [126 x i8] }

@__UNIQUE_ID_author459 = internal constant [27 x i8] c"hfcpci.author=Karsten Keil\00", section ".modinfo", align 1
@__UNIQUE_ID_file460 = internal constant [47 x i8] c"hfcpci.file=drivers/isdn/hardware/mISDN/hfcpci\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [19 x i8] c"hfcpci.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"hfcpci.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype462 = internal constant [27 x i8] c"hfcpci.parmtype=debug:uint\00", section ".modinfo", align 1
@__param_str_poll = internal constant [12 x i8] c"hfcpci.poll\00", align 1
@poll = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_poll = internal constant %struct.kernel_param { ptr @__param_str_poll, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @poll } }, section "__param", align 4
@__UNIQUE_ID_polltype463 = internal constant [26 x i8] c"hfcpci.parmtype=poll:uint\00", section ".modinfo", align 1
@hfc_tl = internal global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@hfc_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @hfc_ids, ptr @hfc_probe, ptr @hfc_remove_pci, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_hfcpci__466_2354_HFC_init6 = internal global ptr @HFC_init, section ".initcall6.init", align 4
@__exitcall_HFC_cleanup = internal global ptr @HFC_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hfcpci\00", [25 x i8] zeroinitializer }, align 32
@hfc_ids = internal constant { [24 x %struct.pci_device_id], [192 x i8] } { [24 x %struct.pci_device_id] [%struct.pci_device_id { i32 5015, i32 11216, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @hfc_map to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 45056, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 12) to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 45062, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 24) to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 45063, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 36) to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 45064, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 48) to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 45065, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 60) to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 45066, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 72) to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 45067, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 84) to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 45068, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 96) to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 45312, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 108) to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 46848, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 120) to i32), i32 0 }, %struct.pci_device_id { i32 5015, i32 46849, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 132) to i32), i32 0 }, %struct.pci_device_id { i32 5073, i32 11217, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 144) to i32), i32 0 }, %struct.pci_device_id { i32 4163, i32 1653, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 156) to i32), i32 0 }, %struct.pci_device_id { i32 2161, i32 65442, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 168) to i32), i32 0 }, %struct.pci_device_id { i32 2161, i32 65441, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 180) to i32), i32 0 }, %struct.pci_device_id { i32 4177, i32 256, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 192) to i32), i32 0 }, %struct.pci_device_id { i32 5552, i32 11216, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 204) to i32), i32 0 }, %struct.pci_device_id { i32 4431, i32 112, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 216) to i32), i32 0 }, %struct.pci_device_id { i32 4431, i32 113, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 228) to i32), i32 0 }, %struct.pci_device_id { i32 4431, i32 114, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 240) to i32), i32 0 }, %struct.pci_device_id { i32 4431, i32 115, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 252) to i32), i32 0 }, %struct.pci_device_id { i32 6189, i32 12393, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr getelementptr (i8, ptr @hfc_map, i64 264) to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@hfc_map = internal constant { [24 x %struct._hfc_map], [64 x i8] } { [24 x %struct._hfc_map] [%struct._hfc_map { i32 0, i32 0, ptr @.str.1 }, %struct._hfc_map { i32 1, i32 0, ptr @.str.2 }, %struct._hfc_map { i32 2, i32 0, ptr @.str.3 }, %struct._hfc_map { i32 3, i32 0, ptr @.str.4 }, %struct._hfc_map { i32 4, i32 0, ptr @.str.5 }, %struct._hfc_map { i32 5, i32 0, ptr @.str.6 }, %struct._hfc_map { i32 6, i32 0, ptr @.str.7 }, %struct._hfc_map { i32 7, i32 0, ptr @.str.8 }, %struct._hfc_map { i32 8, i32 0, ptr @.str.9 }, %struct._hfc_map { i32 9, i32 0, ptr @.str.10 }, %struct._hfc_map { i32 10, i32 0, ptr @.str.11 }, %struct._hfc_map { i32 11, i32 0, ptr @.str.12 }, %struct._hfc_map { i32 21, i32 0, ptr @.str.13 }, %struct._hfc_map { i32 12, i32 0, ptr @.str.14 }, %struct._hfc_map { i32 14, i32 0, ptr @.str.15 }, %struct._hfc_map { i32 13, i32 0, ptr @.str.16 }, %struct._hfc_map { i32 15, i32 0, ptr @.str.17 }, %struct._hfc_map { i32 16, i32 0, ptr @.str.18 }, %struct._hfc_map { i32 17, i32 0, ptr @.str.19 }, %struct._hfc_map { i32 18, i32 0, ptr @.str.20 }, %struct._hfc_map { i32 19, i32 0, ptr @.str.21 }, %struct._hfc_map { i32 20, i32 0, ptr @.str.22 }, %struct._hfc_map { i32 22, i32 0, ptr @.str.23 }, %struct._hfc_map zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CCD/Billion/Asuscom 2BD0\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Billion B000\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Billion B006\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Billion B007\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Billion B008\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Billion B009\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Billion B00A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Billion B00B\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Billion B00C\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Seyeon B100\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Primux II S0 B700\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Primux II S0 NT B701\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Abocom/Magitek 2BD1\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Asuscom/Askey 675\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"German telekom T-Concept\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"German telekom A1T\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Motorola MC145575\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Zoltrix 2BD0\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Digi International DataFire Micro V IOM2 (Europe)\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Digi International DataFire Micro V (Europe)\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Digi International DataFire Micro V IOM2 (North America)\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Digi International DataFire Micro V (North America)\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Sitecom Connectivity DC-105 ISDN TA\00", [60 x i8] zeroinitializer }, align 32
@hfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.26, i32 2223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013No kmem for HFC card\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hfc_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/isdn/hardware/mISDN/hfcpci.c\00", [59 x i8] zeroinitializer }, align 32
@hfc_probe._entry_ptr = internal global ptr @hfc_probe._entry, section ".printk_index", align 4
@hfc_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.26, i32 2235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016mISDN_hfcpci: found adapter %s at %s\0A\00", [56 x i8] zeroinitializer }, align 32
@hfc_probe._entry_ptr.29 = internal global ptr @hfc_probe._entry.27, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@setup_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&card->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hfc-pci.%d\00", [21 x i8] zeroinitializer }, align 32
@HFC_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@setup_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.26, i32 2114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016HFC %d cards installed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setup_card\00", [21 x i8] zeroinitializer }, align 32
@setup_card._entry_ptr = internal global ptr @setup_card._entry, section ".printk_index", align 4
@ph_state_nt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.26, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: NT newstate %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ph_state_nt\00", [20 x i8] zeroinitializer }, align 32
@ph_state_nt._entry_ptr = internal global ptr @ph_state_nt._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ph_state_te._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.26, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: TE newstate %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ph_state_te\00", [20 x i8] zeroinitializer }, align 32
@ph_state_te._entry_ptr = internal global ptr @ph_state_te._entry, section ".printk_index", align 4
@hfcpci_fill_dfifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.26, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\017%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hfcpci_fill_dfifo\00", [46 x i8] zeroinitializer }, align 32
@hfcpci_fill_dfifo._entry_ptr = internal global ptr @hfcpci_fill_dfifo._entry, section ".printk_index", align 4
@hfcpci_fill_dfifo._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.26, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:f1(%d) f2(%d) z1(f1)(%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@hfcpci_fill_dfifo._entry_ptr.42 = internal global ptr @hfcpci_fill_dfifo._entry.40, section ".printk_index", align 4
@hfcpci_fill_dfifo._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.26, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017hfcpci_fill_Dfifo more as 14 frames\0A\00", [57 x i8] zeroinitializer }, align 32
@hfcpci_fill_dfifo._entry_ptr.45 = internal global ptr @hfcpci_fill_dfifo._entry.43, section ".printk_index", align 4
@hfcpci_fill_dfifo._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.26, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017hfcpci_fill_Dfifo count(%d/%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@hfcpci_fill_dfifo._entry_ptr.48 = internal global ptr @hfcpci_fill_dfifo._entry.46, section ".printk_index", align 4
@hfcpci_fill_dfifo._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.26, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017hfcpci_fill_Dfifo no fifo mem\0A\00", [63 x i8] zeroinitializer }, align 32
@hfcpci_fill_dfifo._entry_ptr.51 = internal global ptr @hfcpci_fill_dfifo._entry.49, section ".printk_index", align 4
@hfc_dctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.26, i32 1957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: cmd:%x %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hfc_dctrl\00", [22 x i8] zeroinitializer }, align 32
@hfc_dctrl._entry_ptr = internal global ptr @hfc_dctrl._entry, section ".printk_index", align 4
@hfc_dctrl._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.26, i32 1971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: dev(%d) close from %p\0A\00", [35 x i8] zeroinitializer }, align 32
@hfc_dctrl._entry_ptr.56 = internal global ptr @hfc_dctrl._entry.54, section ".printk_index", align 4
@hfc_dctrl._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.26, i32 1980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: unknown command %x\0A\00", [38 x i8] zeroinitializer }, align 32
@hfc_dctrl._entry_ptr.59 = internal global ptr @hfc_dctrl._entry.57, section ".printk_index", align 4
@open_dchannel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.26, i32 1880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: dev(%d) open from %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open_dchannel\00", [18 x i8] zeroinitializer }, align 32
@open_dchannel._entry_ptr = internal global ptr @open_dchannel._entry, section ".printk_index", align 4
@open_dchannel._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.26, i32 1920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s:cannot get module\0A\00", [40 x i8] zeroinitializer }, align 32
@open_dchannel._entry_ptr.64 = internal global ptr @open_dchannel._entry.62, section ".printk_index", align 4
@hfc_l1callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.65, ptr @.str.26, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hfc_l1callback\00", [17 x i8] zeroinitializer }, align 32
@hfc_l1callback._entry_ptr = internal global ptr @hfc_l1callback._entry, section ".printk_index", align 4
@init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.26, i32 1719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017init_card: entered\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_card\00", [22 x i8] zeroinitializer }, align 32
@init_card._entry_ptr = internal global ptr @init_card._entry, section ".printk_index", align 4
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HFC PCI\00", [24 x i8] zeroinitializer }, align 32
@init_card._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.67, ptr @.str.26, i32 1727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014mISDN: couldn't get interrupt %d\0A\00", [60 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.71 = internal global ptr @init_card._entry.69, section ".printk_index", align 4
@init_card._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.67, ptr @.str.26, i32 1745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016HFC PCI: IRQ %d count %d\0A\00", [36 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.74 = internal global ptr @init_card._entry.72, section ".printk_index", align 4
@init_card._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.67, ptr @.str.26, i32 1755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014HFC PCI: IRQ(%d) getting no interrupts during init %d\0A\00", [39 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.77 = internal global ptr @init_card._entry.75, section ".printk_index", align 4
@hfcpci_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.26, i32 1158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017HFC-PCI: stat(%02x) s1(%02x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hfcpci_int\00", [21 x i8] zeroinitializer }, align 32
@hfcpci_int._entry_ptr = internal global ptr @hfcpci_int._entry, section ".printk_index", align 4
@hfcpci_int._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.26, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017HFC-PCI irq %x\0A\00", [46 x i8] zeroinitializer }, align 32
@hfcpci_int._entry_ptr.82 = internal global ptr @hfcpci_int._entry.80, section ".printk_index", align 4
@hfcpci_int._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.26, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017ph_state chg %d->%d\0A\00", [41 x i8] zeroinitializer }, align 32
@hfcpci_int._entry_ptr.85 = internal global ptr @hfcpci_int._entry.83, section ".printk_index", align 4
@hfcpci_int._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.26, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017hfcpci spurious 0x08 IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@hfcpci_int._entry_ptr.88 = internal global ptr @hfcpci_int._entry.86, section ".printk_index", align 4
@hfcpci_int._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.79, ptr @.str.26, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017hfcpci spurious 0x10 IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@hfcpci_int._entry_ptr.91 = internal global ptr @hfcpci_int._entry.89, section ".printk_index", align 4
@hfcpci_int._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.79, ptr @.str.26, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017hfcpci spurious 0x01 IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@hfcpci_int._entry_ptr.94 = internal global ptr @hfcpci_int._entry.92, section ".printk_index", align 4
@hfcpci_int._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.79, ptr @.str.26, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017hfcpci spurious 0x02 IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@hfcpci_int._entry_ptr.97 = internal global ptr @hfcpci_int._entry.95, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@main_rec_hfcpci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.26, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017hfcpci rec ch(%x) f1(%d) f2(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"main_rec_hfcpci\00", [16 x i8] zeroinitializer }, align 32
@main_rec_hfcpci._entry_ptr = internal global ptr @main_rec_hfcpci._entry, section ".printk_index", align 4
@main_rec_hfcpci._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.26, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017hfcpci rec ch(%x) z1(%x) z2(%x) cnt(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@main_rec_hfcpci._entry_ptr.102 = internal global ptr @main_rec_hfcpci._entry.100, section ".printk_index", align 4
@hfcpci_empty_bfifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.26, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017hfcpci_empty_fifo\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hfcpci_empty_bfifo\00", [45 x i8] zeroinitializer }, align 32
@hfcpci_empty_bfifo._entry_ptr = internal global ptr @hfcpci_empty_bfifo._entry, section ".printk_index", align 4
@hfcpci_empty_bfifo._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.26, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017hfcpci_empty_fifo: incoming packet invalid length %d or crc\0A\00", [33 x i8] zeroinitializer }, align 32
@hfcpci_empty_bfifo._entry_ptr.107 = internal global ptr @hfcpci_empty_bfifo._entry.105, section ".printk_index", align 4
@hfcpci_empty_bfifo._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.26, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014HFCPCI: receive out of memory\0A\00", [63 x i8] zeroinitializer }, align 32
@hfcpci_empty_bfifo._entry_ptr.110 = internal global ptr @hfcpci_empty_bfifo._entry.108, section ".printk_index", align 4
@hfcpci_empty_fifo_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.26, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014B%d: No bufferspace for %d bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hfcpci_empty_fifo_trans\00", [40 x i8] zeroinitializer }, align 32
@hfcpci_empty_fifo_trans._entry_ptr = internal global ptr @hfcpci_empty_fifo_trans._entry, section ".printk_index", align 4
@hfcpci_fill_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.113, ptr @.str.26, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hfcpci_fill_fifo\00", [47 x i8] zeroinitializer }, align 32
@hfcpci_fill_fifo._entry_ptr = internal global ptr @hfcpci_fill_fifo._entry, section ".printk_index", align 4
@hfcpci_fill_fifo._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.26, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017hfcpci_fill_fifo_trans ch(%x) cnt(%d) z1(%x) z2(%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@hfcpci_fill_fifo._entry_ptr.116 = internal global ptr @hfcpci_fill_fifo._entry.114, section ".printk_index", align 4
@hfcpci_fill_fifo._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.26, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017hfcpci_FFt fillempty fcnt(%d) maxl(%d) nz1(%x) dst(%p)\0A\00", [38 x i8] zeroinitializer }, align 32
@hfcpci_fill_fifo._entry_ptr.119 = internal global ptr @hfcpci_fill_fifo._entry.117, section ".printk_index", align 4
@hfcpci_fill_fifo._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.113, ptr @.str.26, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017hfcpci_FFt fcnt(%d) maxl(%d) nz1(%x) dst(%p)\0A\00", [48 x i8] zeroinitializer }, align 32
@hfcpci_fill_fifo._entry_ptr.122 = internal global ptr @hfcpci_fill_fifo._entry.120, section ".printk_index", align 4
@hfcpci_fill_fifo._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.113, ptr @.str.26, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: ch(%x) f1(%d) f2(%d) z1(f1)(%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@hfcpci_fill_fifo._entry_ptr.125 = internal global ptr @hfcpci_fill_fifo._entry.123, section ".printk_index", align 4
@hfcpci_fill_fifo._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.113, ptr @.str.26, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017hfcpci_fill_Bfifo more as 14 frames\0A\00", [57 x i8] zeroinitializer }, align 32
@hfcpci_fill_fifo._entry_ptr.128 = internal global ptr @hfcpci_fill_fifo._entry.126, section ".printk_index", align 4
@hfcpci_fill_fifo._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.113, ptr @.str.26, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017hfcpci_fill_fifo ch(%x) count(%d/%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@hfcpci_fill_fifo._entry_ptr.131 = internal global ptr @hfcpci_fill_fifo._entry.129, section ".printk_index", align 4
@hfcpci_fill_fifo._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.113, ptr @.str.26, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017hfcpci_fill_fifo no fifo mem\0A\00", [32 x i8] zeroinitializer }, align 32
@hfcpci_fill_fifo._entry_ptr.134 = internal global ptr @hfcpci_fill_fifo._entry.132, section ".printk_index", align 4
@receive_dmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.26, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017hfcpci recd f1(%d) f2(%d) z1(%x) z2(%x) cnt(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"receive_dmsg\00", [19 x i8] zeroinitializer }, align 32
@receive_dmsg._entry_ptr = internal global ptr @receive_dmsg._entry, section ".printk_index", align 4
@receive_dmsg._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.26, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017empty_fifo hfcpci packet inv. len %d or crc %d\0A\00", [46 x i8] zeroinitializer }, align 32
@receive_dmsg._entry_ptr.139 = internal global ptr @receive_dmsg._entry.137, section ".printk_index", align 4
@receive_dmsg._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.136, ptr @.str.26, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014HFC-PCI: D receive out of memory\0A\00", [60 x i8] zeroinitializer }, align 32
@receive_dmsg._entry_ptr.142 = internal global ptr @receive_dmsg._entry.140, section ".printk_index", align 4
@reset_hfcpci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.26, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017reset_hfcpci: entered\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reset_hfcpci\00", [19 x i8] zeroinitializer }, align 32
@reset_hfcpci._entry_ptr = internal global ptr @reset_hfcpci._entry, section ".printk_index", align 4
@reset_hfcpci._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.26, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016HFC_PCI: resetting HFC ChipId(%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@reset_hfcpci._entry_ptr.147 = internal global ptr @reset_hfcpci._entry.145, section ".printk_index", align 4
@reset_hfcpci._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.144, ptr @.str.26, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017HFC-PCI status(%x) before reset\0A\00", [61 x i8] zeroinitializer }, align 32
@reset_hfcpci._entry_ptr.150 = internal global ptr @reset_hfcpci._entry.148, section ".printk_index", align 4
@reset_hfcpci._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.144, ptr @.str.26, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017HFC-PCI status(%x) after reset\0A\00", [62 x i8] zeroinitializer }, align 32
@reset_hfcpci._entry_ptr.153 = internal global ptr @reset_hfcpci._entry.151, section ".printk_index", align 4
@reset_hfcpci._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.144, ptr @.str.26, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017HFC-PCI status(%x) after %dus\0A\00", [63 x i8] zeroinitializer }, align 32
@reset_hfcpci._entry_ptr.156 = internal global ptr @reset_hfcpci._entry.154, section ".printk_index", align 4
@inithfcpci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.26, i32 1705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017inithfcpci: entered\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inithfcpci\00", [21 x i8] zeroinitializer }, align 32
@inithfcpci._entry_ptr = internal global ptr @inithfcpci._entry, section ".printk_index", align 4
@inithfcpci.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&hc->dch.timer)\00", [47 x i8] zeroinitializer }, align 32
@mode_hfcpci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.26, i32 1246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017HFCPCI bchannel protocol %x-->%x ch %x-->%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mode_hfcpci\00", [20 x i8] zeroinitializer }, align 32
@mode_hfcpci._entry_ptr = internal global ptr @mode_hfcpci._entry, section ".printk_index", align 4
@mode_hfcpci._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.26, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: pcm channel id without HFC_CFG_PCM\0A\00", [54 x i8] zeroinitializer }, align 32
@mode_hfcpci._entry_ptr.164 = internal global ptr @mode_hfcpci._entry.162, section ".printk_index", align 4
@mode_hfcpci._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.161, ptr @.str.26, i32 1260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: no pcm channel id but HFC_CFG_PCM\0A\00", [55 x i8] zeroinitializer }, align 32
@mode_hfcpci._entry_ptr.167 = internal global ptr @mode_hfcpci._entry.165, section ".printk_index", align 4
@tics = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mode_hfcpci._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.161, ptr @.str.26, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017prot not known %x\0A\00", [43 x i8] zeroinitializer }, align 32
@mode_hfcpci._entry_ptr.170 = internal global ptr @mode_hfcpci._entry.168, section ".printk_index", align 4
@mode_hfcpci._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.161, ptr @.str.26, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Write_hfc: B2_SSL 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@mode_hfcpci._entry_ptr.173 = internal global ptr @mode_hfcpci._entry.171, section ".printk_index", align 4
@mode_hfcpci._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.161, ptr @.str.26, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Write_hfc: B2_RSL 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@mode_hfcpci._entry_ptr.176 = internal global ptr @mode_hfcpci._entry.174, section ".printk_index", align 4
@mode_hfcpci._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.161, ptr @.str.26, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Write_hfc: B1_SSL 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@mode_hfcpci._entry_ptr.179 = internal global ptr @mode_hfcpci._entry.177, section ".printk_index", align 4
@mode_hfcpci._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.161, ptr @.str.26, i32 1411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Write_hfc: B1_RSL 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@mode_hfcpci._entry_ptr.182 = internal global ptr @mode_hfcpci._entry.180, section ".printk_index", align 4
@hfcpci_clear_fifo_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.26, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017hfcpci_clear_fifo_tx%d f1(%x) f2(%x) z1(%x) z2(%x) state(%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hfcpci_clear_fifo_tx\00", [43 x i8] zeroinitializer }, align 32
@hfcpci_clear_fifo_tx._entry_ptr = internal global ptr @hfcpci_clear_fifo_tx._entry, section ".printk_index", align 4
@hfcpci_clear_fifo_tx._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.26, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017hfcpci_clear_fifo_tx%d f1(%x) f2(%x) z1(%x) z2(%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@hfcpci_clear_fifo_tx._entry_ptr.187 = internal global ptr @hfcpci_clear_fifo_tx._entry.185, section ".printk_index", align 4
@open_bchannel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.188, ptr @.str.26, i32 1939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"open_bchannel\00", [18 x i8] zeroinitializer }, align 32
@open_bchannel._entry_ptr = internal global ptr @open_bchannel._entry, section ".printk_index", align 4
@channel_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.26, i32 1797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Write_hfc: B1_SSL/RSL 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channel_ctrl\00", [19 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr = internal global ptr @channel_ctrl._entry, section ".printk_index", align 4
@channel_ctrl._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.26, i32 1809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Write_hfc: B2_SSL/RSL 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr.193 = internal global ptr @channel_ctrl._entry.191, section ".printk_index", align 4
@channel_ctrl._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.26, i32 1839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr.195 = internal global ptr @channel_ctrl._entry.194, section ".printk_index", align 4
@channel_ctrl._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.26, i32 1847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr.197 = internal global ptr @channel_ctrl._entry.196, section ".printk_index", align 4
@channel_ctrl._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.190, ptr @.str.26, i32 1865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s: unknown Op %x\0A\00", [43 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr.200 = internal global ptr @channel_ctrl._entry.198, section ".printk_index", align 4
@hfc_bctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.201, ptr @.str.26, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hfc_bctrl\00", [22 x i8] zeroinitializer }, align 32
@hfc_bctrl._entry_ptr = internal global ptr @hfc_bctrl._entry, section ".printk_index", align 4
@hfc_bctrl._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.201, ptr @.str.26, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: unknown prim(%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@hfc_bctrl._entry_ptr.204 = internal global ptr @hfc_bctrl._entry.202, section ".printk_index", align 4
@set_hfcpci_rxtest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.26, i32 1437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017HFCPCI bchannel test rx protocol %x-->%x ch %x-->%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_hfcpci_rxtest\00", [46 x i8] zeroinitializer }, align 32
@set_hfcpci_rxtest._entry_ptr = internal global ptr @set_hfcpci_rxtest._entry, section ".printk_index", align 4
@set_hfcpci_rxtest._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.206, ptr @.str.26, i32 1441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017HFCPCI rxtest wrong channel parameter %x/%x\0A\00", [49 x i8] zeroinitializer }, align 32
@set_hfcpci_rxtest._entry_ptr.209 = internal global ptr @set_hfcpci_rxtest._entry.207, section ".printk_index", align 4
@set_hfcpci_rxtest._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.206, ptr @.str.26, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_hfcpci_rxtest._entry_ptr.211 = internal global ptr @set_hfcpci_rxtest._entry.210, section ".printk_index", align 4
@setup_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.26, i32 1991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016mISDN: HFC-PCI driver %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setup_hw\00", [23 x i8] zeroinitializer }, align 32
@setup_hw._entry_ptr = internal global ptr @setup_hw._entry, section ".printk_index", align 4
@setup_hw._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.26, i32 1996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014HFC-PCI: No IRQ for PCI card found\0A\00", [58 x i8] zeroinitializer }, align 32
@setup_hw._entry_ptr.216 = internal global ptr @setup_hw._entry.214, section ".printk_index", align 4
@setup_hw._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.213, ptr @.str.26, i32 2003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014HFC-PCI: No IO-Mem for PCI card found\0A\00", [55 x i8] zeroinitializer }, align 32
@setup_hw._entry_ptr.219 = internal global ptr @setup_hw._entry.217, section ".printk_index", align 4
@setup_hw._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.213, ptr @.str.26, i32 2010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014HFC-PCI: No usable DMA configuration!\0A\00", [55 x i8] zeroinitializer }, align 32
@setup_hw._entry_ptr.222 = internal global ptr @setup_hw._entry.220, section ".printk_index", align 4
@setup_hw._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.213, ptr @.str.26, i32 2018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014HFC-PCI: Error allocating memory for FIFO!\0A\00", [50 x i8] zeroinitializer }, align 32
@setup_hw._entry_ptr.225 = internal global ptr @setup_hw._entry.223, section ".printk_index", align 4
@setup_hw._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.213, ptr @.str.26, i32 2026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014HFC-PCI: Error in ioremap for PCI!\0A\00", [58 x i8] zeroinitializer }, align 32
@setup_hw._entry_ptr.228 = internal global ptr @setup_hw._entry.226, section ".printk_index", align 4
@setup_hw._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.213, ptr @.str.26, i32 2035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016HFC-PCI: defined at mem %#lx fifo %p(%pad) IRQ %d HZ %d\0A\00", [37 x i8] zeroinitializer }, align 32
@setup_hw._entry_ptr.231 = internal global ptr @setup_hw._entry.229, section ".printk_index", align 4
@setup_hw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.232 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&hc->hw.timer)\00", [16 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hfc_remove_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.26, i32 2255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: drvdata already removed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hfc_remove_pci\00", [17 x i8] zeroinitializer }, align 32
@hfc_remove_pci._entry_ptr = internal global ptr @hfc_remove_pci._entry, section ".printk_index", align 4
@HFC_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.237, ptr @.str.26, i32 2321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Wrong poll value %d not in range of 8..256.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HFC_init\00", [23 x i8] zeroinitializer }, align 32
@HFC_init._entry_ptr = internal global ptr @HFC_init._entry, section ".printk_index", align 4
@HFC_init._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.237, ptr @.str.26, i32 2328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: Using alternative poll value of %d\0A\00", [54 x i8] zeroinitializer }, align 32
@HFC_init._entry_ptr.240 = internal global ptr @HFC_init._entry.238, section ".printk_index", align 4
@HFC_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.241 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(&hfc_tl)\00", [22 x i8] zeroinitializer }, align 32
@hfc_jiffies = internal global { i32, [28 x i8] } zeroinitializer, align 32
@hfcpci_softirq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.ph_state = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 36866, i32 36866, i32 36866, i32 37378, i32 36866, i32 34818, i32 33282, i32 34050, i32 34818], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 128]
@__sancov_gen_cov_switch_values.242 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.243 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.244 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.246 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 2048]
@__sancov_gen_cov_switch_values.247 = internal global [5 x i64] [i64 3, i64 32, i64 257, i64 513, i64 8193]
@__sancov_gen_cov_switch_values.248 = internal global [7 x i64] [i64 5, i64 32, i64 512, i64 768, i64 38402, i64 38658, i64 38914]
@__sancov_gen_cov_switch_values.249 = internal global [9 x i64] [i64 7, i64 32, i64 258, i64 514, i64 33538, i64 33794, i64 35330, i64 35586, i64 35842]
@__sancov_gen_cov_switch_values.250 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 33, i64 34, i64 4294967295]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 32, i64 33, i64 34]
@___asan_gen_.253 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 45, i32 13 }
@___asan_gen_.256 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 46, i32 13 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"hfc_tl\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 47, i32 26 }
@___asan_gen_.262 = private unnamed_addr constant [11 x i8] c"hfc_driver\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2259, i32 26 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2260, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant [8 x i8] c"hfc_ids\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2163, i32 35 }
@___asan_gen_.271 = private unnamed_addr constant [8 x i8] c"hfc_map\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2131, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2133, i32 20 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2134, i32 20 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2135, i32 20 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2136, i32 20 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2137, i32 20 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2138, i32 20 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2139, i32 20 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2140, i32 20 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2141, i32 20 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2142, i32 20 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2143, i32 20 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2144, i32 20 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2145, i32 23 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2146, i32 21 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2147, i32 27 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2148, i32 22 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2149, i32 27 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2150, i32 24 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2152, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2154, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2156, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2158, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2159, i32 27 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2223, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2234, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2086, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2109, i32 38 }
@___asan_gen_.370 = private unnamed_addr constant [8 x i8] c"HFC_cnt\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 44, i32 12 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2114, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 960, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 912, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 671, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 681, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 689, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 703, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 707, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1956, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1969, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1979, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1879, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1920, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1106, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1719, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1725, i32 52 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1726, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1744, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1753, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1157, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1167, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1172, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1191, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1198, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1205, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1212, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 622, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 631, i32 4 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 401, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 410, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 420, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 570, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 750, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 771, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 789, i32 5 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 825, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 848, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 857, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 868, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 873, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 470, i32 4 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 480, i32 5 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 496, i32 5 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 198, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 200, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 208, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 216, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 224, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1705, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1706, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1244, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1252, i32 4 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1259, i32 3 }
@___asan_gen_.733 = private unnamed_addr constant [5 x i8] c"tics\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 46, i32 19 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1379, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1399, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1401, i32 4 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1408, i32 4 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1410, i32 4 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 368, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 382, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1939, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1796, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1808, i32 4 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1838, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1846, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1864, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1533, i32 3 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1563, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1435, i32 3 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1439, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1490, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1991, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 1996, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2003, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2009, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2017, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2025, i32 3 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2032, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2045, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 42, i32 38 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2254, i32 4 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2320, i32 4 }
@___asan_gen_.916 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2327, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.925 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 2329, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant [12 x i8] c"hfc_jiffies\00", align 1
@___asan_gen_.929 = private constant [40 x i8] c"../drivers/isdn/hardware/mISDN/hfcpci.c\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.929, i32 48, i32 22 }
@___asan_gen_.931 = private unnamed_addr constant [22 x i8] c"switch.table.ph_state\00", align 1
@llvm.compiler.used = appending global [318 x ptr] [ptr @HFC_cleanup, ptr @HFC_init._entry, ptr @HFC_init._entry.238, ptr @HFC_init._entry_ptr, ptr @HFC_init._entry_ptr.240, ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_debugtype462, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_license461, ptr @__UNIQUE_ID_polltype463, ptr @__exitcall_HFC_cleanup, ptr @__initcall__kmod_hfcpci__466_2354_HFC_init6, ptr @__param_debug, ptr @__param_poll, ptr @channel_ctrl._entry, ptr @channel_ctrl._entry.191, ptr @channel_ctrl._entry.194, ptr @channel_ctrl._entry.196, ptr @channel_ctrl._entry.198, ptr @channel_ctrl._entry_ptr, ptr @channel_ctrl._entry_ptr.193, ptr @channel_ctrl._entry_ptr.195, ptr @channel_ctrl._entry_ptr.197, ptr @channel_ctrl._entry_ptr.200, ptr @hfc_bctrl._entry, ptr @hfc_bctrl._entry.202, ptr @hfc_bctrl._entry_ptr, ptr @hfc_bctrl._entry_ptr.204, ptr @hfc_dctrl._entry, ptr @hfc_dctrl._entry.54, ptr @hfc_dctrl._entry.57, ptr @hfc_dctrl._entry_ptr, ptr @hfc_dctrl._entry_ptr.56, ptr @hfc_dctrl._entry_ptr.59, ptr @hfc_l1callback._entry, ptr @hfc_l1callback._entry_ptr, ptr @hfc_probe._entry, ptr @hfc_probe._entry.27, ptr @hfc_probe._entry_ptr, ptr @hfc_probe._entry_ptr.29, ptr @hfc_remove_pci._entry, ptr @hfc_remove_pci._entry_ptr, ptr @hfcpci_clear_fifo_tx._entry, ptr @hfcpci_clear_fifo_tx._entry.185, ptr @hfcpci_clear_fifo_tx._entry_ptr, ptr @hfcpci_clear_fifo_tx._entry_ptr.187, ptr @hfcpci_empty_bfifo._entry, ptr @hfcpci_empty_bfifo._entry.105, ptr @hfcpci_empty_bfifo._entry.108, ptr @hfcpci_empty_bfifo._entry_ptr, ptr @hfcpci_empty_bfifo._entry_ptr.107, ptr @hfcpci_empty_bfifo._entry_ptr.110, ptr @hfcpci_empty_fifo_trans._entry, ptr @hfcpci_empty_fifo_trans._entry_ptr, ptr @hfcpci_fill_dfifo._entry, ptr @hfcpci_fill_dfifo._entry.40, ptr @hfcpci_fill_dfifo._entry.43, ptr @hfcpci_fill_dfifo._entry.46, ptr @hfcpci_fill_dfifo._entry.49, ptr @hfcpci_fill_dfifo._entry_ptr, ptr @hfcpci_fill_dfifo._entry_ptr.42, ptr @hfcpci_fill_dfifo._entry_ptr.45, ptr @hfcpci_fill_dfifo._entry_ptr.48, ptr @hfcpci_fill_dfifo._entry_ptr.51, ptr @hfcpci_fill_fifo._entry, ptr @hfcpci_fill_fifo._entry.114, ptr @hfcpci_fill_fifo._entry.117, ptr @hfcpci_fill_fifo._entry.120, ptr @hfcpci_fill_fifo._entry.123, ptr @hfcpci_fill_fifo._entry.126, ptr @hfcpci_fill_fifo._entry.129, ptr @hfcpci_fill_fifo._entry.132, ptr @hfcpci_fill_fifo._entry_ptr, ptr @hfcpci_fill_fifo._entry_ptr.116, ptr @hfcpci_fill_fifo._entry_ptr.119, ptr @hfcpci_fill_fifo._entry_ptr.122, ptr @hfcpci_fill_fifo._entry_ptr.125, ptr @hfcpci_fill_fifo._entry_ptr.128, ptr @hfcpci_fill_fifo._entry_ptr.131, ptr @hfcpci_fill_fifo._entry_ptr.134, ptr @hfcpci_int._entry, ptr @hfcpci_int._entry.80, ptr @hfcpci_int._entry.83, ptr @hfcpci_int._entry.86, ptr @hfcpci_int._entry.89, ptr @hfcpci_int._entry.92, ptr @hfcpci_int._entry.95, ptr @hfcpci_int._entry_ptr, ptr @hfcpci_int._entry_ptr.82, ptr @hfcpci_int._entry_ptr.85, ptr @hfcpci_int._entry_ptr.88, ptr @hfcpci_int._entry_ptr.91, ptr @hfcpci_int._entry_ptr.94, ptr @hfcpci_int._entry_ptr.97, ptr @init_card._entry, ptr @init_card._entry.69, ptr @init_card._entry.72, ptr @init_card._entry.75, ptr @init_card._entry_ptr, ptr @init_card._entry_ptr.71, ptr @init_card._entry_ptr.74, ptr @init_card._entry_ptr.77, ptr @inithfcpci._entry, ptr @inithfcpci._entry_ptr, ptr @main_rec_hfcpci._entry, ptr @main_rec_hfcpci._entry.100, ptr @main_rec_hfcpci._entry_ptr, ptr @main_rec_hfcpci._entry_ptr.102, ptr @mode_hfcpci._entry, ptr @mode_hfcpci._entry.162, ptr @mode_hfcpci._entry.165, ptr @mode_hfcpci._entry.168, ptr @mode_hfcpci._entry.171, ptr @mode_hfcpci._entry.174, ptr @mode_hfcpci._entry.177, ptr @mode_hfcpci._entry.180, ptr @mode_hfcpci._entry_ptr, ptr @mode_hfcpci._entry_ptr.164, ptr @mode_hfcpci._entry_ptr.167, ptr @mode_hfcpci._entry_ptr.170, ptr @mode_hfcpci._entry_ptr.173, ptr @mode_hfcpci._entry_ptr.176, ptr @mode_hfcpci._entry_ptr.179, ptr @mode_hfcpci._entry_ptr.182, ptr @open_bchannel._entry, ptr @open_bchannel._entry_ptr, ptr @open_dchannel._entry, ptr @open_dchannel._entry.62, ptr @open_dchannel._entry_ptr, ptr @open_dchannel._entry_ptr.64, ptr @ph_state_nt._entry, ptr @ph_state_nt._entry_ptr, ptr @ph_state_te._entry, ptr @ph_state_te._entry_ptr, ptr @receive_dmsg._entry, ptr @receive_dmsg._entry.137, ptr @receive_dmsg._entry.140, ptr @receive_dmsg._entry_ptr, ptr @receive_dmsg._entry_ptr.139, ptr @receive_dmsg._entry_ptr.142, ptr @reset_hfcpci._entry, ptr @reset_hfcpci._entry.145, ptr @reset_hfcpci._entry.148, ptr @reset_hfcpci._entry.151, ptr @reset_hfcpci._entry.154, ptr @reset_hfcpci._entry_ptr, ptr @reset_hfcpci._entry_ptr.147, ptr @reset_hfcpci._entry_ptr.150, ptr @reset_hfcpci._entry_ptr.153, ptr @reset_hfcpci._entry_ptr.156, ptr @set_hfcpci_rxtest._entry, ptr @set_hfcpci_rxtest._entry.207, ptr @set_hfcpci_rxtest._entry.210, ptr @set_hfcpci_rxtest._entry_ptr, ptr @set_hfcpci_rxtest._entry_ptr.209, ptr @set_hfcpci_rxtest._entry_ptr.211, ptr @setup_card._entry, ptr @setup_card._entry_ptr, ptr @setup_hw._entry, ptr @setup_hw._entry.214, ptr @setup_hw._entry.217, ptr @setup_hw._entry.220, ptr @setup_hw._entry.223, ptr @setup_hw._entry.226, ptr @setup_hw._entry.229, ptr @setup_hw._entry_ptr, ptr @setup_hw._entry_ptr.216, ptr @setup_hw._entry_ptr.219, ptr @setup_hw._entry_ptr.222, ptr @setup_hw._entry_ptr.225, ptr @setup_hw._entry_ptr.228, ptr @setup_hw._entry_ptr.231, ptr @debug, ptr @poll, ptr @hfc_tl, ptr @hfc_driver, ptr @.str, ptr @hfc_ids, ptr @hfc_map, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @setup_card.__key, ptr @.str.30, ptr @.str.31, ptr @HFC_cnt, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @inithfcpci.__key, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.166, ptr @tics, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.199, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.206, ptr @.str.208, ptr @.str.212, ptr @.str.213, ptr @.str.215, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @setup_hw.__key, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.239, ptr @HFC_init.__key, ptr @.str.241, ptr @hfc_jiffies, ptr @switch.table.ph_state], section "llvm.metadata"
@0 = internal global [227 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_tl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_ids to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_map to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HFC_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_state_nt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ph_state_te._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_dfifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_dfifo._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_dfifo._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_dfifo._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_dfifo._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_dctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_dctrl._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_dctrl._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_dchannel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_dchannel._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_l1callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_int._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_int._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_int._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_int._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_int._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_int._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_rec_hfcpci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_rec_hfcpci._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_empty_bfifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_empty_bfifo._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_empty_bfifo._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_empty_fifo_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_fifo._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_fifo._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_fifo._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_fifo._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_fifo._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_fifo._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_fill_fifo._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_dmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_dmsg._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_dmsg._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hfcpci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hfcpci._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hfcpci._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hfcpci._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_hfcpci._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inithfcpci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inithfcpci.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_hfcpci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_hfcpci._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_hfcpci._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tics to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_hfcpci._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_hfcpci._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_hfcpci._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_hfcpci._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_hfcpci._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_clear_fifo_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfcpci_clear_fifo_tx._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_bchannel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_bctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_bctrl._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_hfcpci_rxtest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_hfcpci_rxtest._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_hfcpci_rxtest._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hw._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hw._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hw._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hw._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hw._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hw._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_remove_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HFC_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HFC_init._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HFC_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfc_jiffies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ph_state to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @HFC_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @hfc_tl, i32 0, i32 0, i32 1), align 4
  %tobool.not.i.i.not = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @del_timer_sync(ptr noundef nonnull @hfc_tl) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_unregister_driver(ptr noundef nonnull @hfc_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @HFC_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @poll, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %if.then1 [
    i32 0, label %if.end11.thread
    i32 128, label %entry.if.else_crit_edge
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end11.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store i32 128, ptr @poll, align 4
  br label %if.else

if.then1:                                         ; preds = %entry
  %mul = mul i32 %0, 100
  %div = udiv i32 %mul, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %mul)
  %2 = icmp ult i32 %mul, 8000
  %spec.store.select = select i1 %2, i32 1, i32 %div
  store i32 %spec.store.select, ptr @tics, align 4
  %mul5 = mul nuw i32 %spec.store.select, 8000
  %div6 = mul nuw nsw i32 %spec.store.select, 80
  store i32 %div6, ptr @poll, align 4
  %3 = add i32 %mul5, -25700
  call void @__sanitizer_cov_trace_const_cmp4(i32 -24900, i32 %3)
  %4 = icmp ult i32 %3, -24900
  br i1 %4, label %do.end, label %do.end16

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.237, i32 noundef %div6) #15
  br label %cleanup

do.end16:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.237, i32 noundef %div6) #15
  tail call void @init_timer_key(ptr noundef nonnull @hfc_tl, ptr noundef nonnull @hfcpci_softirq, i32 noundef 0, ptr noundef nonnull @.str.241, ptr noundef nonnull @HFC_init.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %6 = load i32, ptr @tics, align 4
  %add = add i32 %6, %5
  store i32 %add, ptr getelementptr inbounds (%struct.timer_list, ptr @hfc_tl, i32 0, i32 1), align 4
  store i32 %add, ptr @hfc_jiffies, align 4
  tail call void @add_timer(ptr noundef nonnull @hfc_tl) #12
  br label %if.end22

if.else:                                          ; preds = %if.end11.thread, %entry.if.else_crit_edge
  store i32 0, ptr @tics, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %do.end16
  %call23 = tail call i32 @__pci_register_driver(ptr noundef nonnull @hfc_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @hfc_tl, i32 0, i32 0, i32 1), align 4
  %tobool.not.i.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.not, label %if.then25.cleanup_crit_edge, label %if.then28

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call i32 @del_timer(ptr noundef nonnull @hfc_tl) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.then25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call23, %if.then25.cleanup_crit_edge ], [ %call23, %if.then28 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfc_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %name.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1968) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev2, align 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %call7.i.i, align 8
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end10, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

do.end10:                                         ; preds = %if.end
  %name = getelementptr inbounds %struct._hfc_map, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end10.pci_name.exit_crit_edge

do.end10.pci_name.exit_crit_edge:                 ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end10.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %do.end10.pci_name.exit_crit_edge ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %9, ptr noundef %retval.0.i.i) #15
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  %irq14 = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %irq14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %irq14, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name.i) #12
  %18 = call ptr @memset(ptr %name.i, i32 255, i32 20)
  %19 = load i32, ptr @debug, align 4
  %dch.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9
  %debug.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9, i32 15
  %20 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %debug.i, align 4
  %lock.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @setup_card.__key, i16 noundef signext 3) #12
  %call2.i = tail call i32 @mISDN_initdchannel(ptr noundef %dch.i, i32 noundef 300, ptr noundef nonnull @ph_state) #12
  %hw.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9, i32 6
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %hw.i, align 4
  %Dprotocols.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 2
  %22 = ptrtoint ptr %Dprotocols.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6, ptr %Dprotocols.i, align 8
  %Bprotocols.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 3
  %23 = ptrtoint ptr %Bprotocols.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %Bprotocols.i, align 4
  %send.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 7
  %24 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @hfcpci_l2l1D, ptr %send.i, align 8
  %ctrl.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 0, i32 9
  %25 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hfc_dctrl, ptr %ctrl.i, align 8
  %nrbchan.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 4
  %26 = ptrtoint ptr %nrbchan.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %nrbchan.i, align 8
  %channelmap.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 5
  %bchannels.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 0
  %nr.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 1
  %27 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %nr.i, align 4
  %28 = ptrtoint ptr %channelmap.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %channelmap.i, align 4
  %conv1.i.i = or i8 %29, 2
  store i8 %conv1.i.i, ptr %channelmap.i, align 4
  %30 = load i32, ptr @debug, align 4
  %debug19.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 21
  %31 = ptrtoint ptr %debug19.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %debug19.i, align 8
  %32 = load i32, ptr @poll, align 4
  %shr.i = lshr i32 %32, 1
  %conv.i = trunc i32 %shr.i to i16
  %call22.i = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx.i, i16 noundef zeroext 2056, i16 noundef zeroext %conv.i) #12
  %hw25.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 5
  %33 = ptrtoint ptr %hw25.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %hw25.i, align 4
  %send28.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 7
  %34 = ptrtoint ptr %send28.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @hfcpci_l2l1B, ptr %send28.i, align 8
  %ctrl32.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 9
  %35 = ptrtoint ptr %ctrl32.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @hfc_bctrl, ptr %ctrl32.i, align 8
  %nr37.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %nr37.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %nr37.i, align 4
  %37 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bchannels.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.i, ptr noundef %bchannels.i, ptr noundef %38) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %pci_name.exit.list_add.exit.i_crit_edge

pci_name.exit.list_add.exit.i_crit_edge:          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx.i, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %arrayidx.i, align 8
  %prev3.i.i.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %bchannels.i, ptr %prev3.i.i.i, align 4
  %42 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %arrayidx.i, ptr %bchannels.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %pci_name.exit.list_add.exit.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 1
  %nr.1.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %43 = ptrtoint ptr %nr.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %nr.1.i, align 8
  %44 = ptrtoint ptr %channelmap.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %channelmap.i, align 4
  %conv1.i.1.i = or i8 %45, 4
  store i8 %conv1.i.1.i, ptr %channelmap.i, align 4
  %46 = load i32, ptr @debug, align 4
  %debug19.1.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 21
  %47 = ptrtoint ptr %debug19.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %debug19.1.i, align 4
  %48 = load i32, ptr @poll, align 4
  %shr.1.i = lshr i32 %48, 1
  %conv.1.i = trunc i32 %shr.1.i to i16
  %call22.1.i = tail call i32 @mISDN_initbchannel(ptr noundef %arrayidx.1.i, i16 noundef zeroext 2056, i16 noundef zeroext %conv.1.i) #12
  %hw25.1.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 5
  %49 = ptrtoint ptr %hw25.1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %hw25.1.i, align 8
  %send28.1.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 0, i32 7
  %50 = ptrtoint ptr %send28.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @hfcpci_l2l1B, ptr %send28.1.i, align 4
  %ctrl32.1.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 0, i32 9
  %51 = ptrtoint ptr %ctrl32.1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @hfc_bctrl, ptr %ctrl32.1.i, align 4
  %nr37.1.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %nr37.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %nr37.1.i, align 8
  %53 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bchannels.i, align 4
  %call.i.i.1.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.1.i, ptr noundef %bchannels.i, ptr noundef %54) #12
  br i1 %call.i.i.1.i, label %if.end.i.i.1.i, label %list_add.exit.i.list_add.exit.1.i_crit_edge

list_add.exit.i.list_add.exit.1.i_crit_edge:      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.1.i

if.end.i.i.1.i:                                   ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx.1.i, ptr %prev1.i.i.1.i, align 4
  %56 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %arrayidx.1.i, align 4
  %prev3.i.i.1.i = getelementptr %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 0, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %bchannels.i, ptr %prev3.i.i.1.i, align 8
  %58 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %arrayidx.1.i, ptr %bchannels.i, align 4
  br label %list_add.exit.1.i

list_add.exit.1.i:                                ; preds = %if.end.i.i.1.i, %list_add.exit.i.list_add.exit.1.i_crit_edge
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.233) #15
  %hw.i.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 7
  %59 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %hw.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 9, i32 4
  %60 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %state.i.i, align 4
  %61 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev2, align 8
  tail call void @pci_set_master(ptr noundef %62) #12
  %63 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i37 = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i37, label %do.end3.i.i, label %if.end.i.i38

do.end3.i.i:                                      ; preds = %list_add.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215) #15
  br label %if.then17

if.end.i.i38:                                     ; preds = %list_add.exit.1.i
  %65 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev2, align 8
  %arrayidx.i.i = getelementptr %struct.pci_dev, ptr %66, i32 0, i32 47, i32 1
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i, align 8
  %69 = inttoptr i32 %68 to ptr
  %pci_io.i.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 7, i32 16
  %70 = ptrtoint ptr %pci_io.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %pci_io.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool10.not.i.i = icmp eq i32 %68, 0
  br i1 %tobool10.not.i.i, label %do.end14.i.i, label %if.end17.i.i

do.end14.i.i:                                     ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #15
  br label %if.then17

if.end17.i.i:                                     ; preds = %if.end.i.i38
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %call19.i.i = tail call i32 @dma_set_mask(ptr noundef %dev.i.i, i64 noundef 4294934528) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end27.i.i, label %do.end24.i.i

do.end24.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221) #15
  br label %if.then17

if.end27.i.i:                                     ; preds = %if.end17.i.i
  %71 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev2, align 8
  %dev29.i.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %dmahandle.i.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 7, i32 17
  %call.i.i109.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev29.i.i, i32 noundef 32768, ptr noundef %dmahandle.i.i, i32 noundef 3264, i32 noundef 0) #12
  %tobool32.not.i.i = icmp eq ptr %call.i.i109.i, null
  br i1 %tobool32.not.i.i, label %do.end36.i.i, label %if.end39.i.i

do.end36.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224) #15
  br label %if.then17

if.end39.i.i:                                     ; preds = %if.end27.i.i
  %fifos.i.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 7, i32 18
  %73 = ptrtoint ptr %fifos.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i.i109.i, ptr %fifos.i.i, align 8
  %74 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev2, align 8
  %76 = ptrtoint ptr %dmahandle.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dmahandle.i.i, align 4
  %call44.i.i = tail call i32 @pci_write_config_dword(ptr noundef %75, i32 noundef 128, i32 noundef %77) #12
  %78 = ptrtoint ptr %pci_io.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pci_io.i.i, align 8
  %80 = ptrtoint ptr %79 to i32
  %call47.i.i = tail call ptr @ioremap(i32 noundef %80, i32 noundef 256) #12
  %81 = ptrtoint ptr %pci_io.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call47.i.i, ptr %pci_io.i.i, align 8
  %tobool52.not.i.i = icmp eq ptr %call47.i.i, null
  br i1 %tobool52.not.i.i, label %do.end59.i.i, label %if.end.i, !prof !463

do.end59.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call61.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227) #15
  %82 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev2, align 8
  %dev63.i.i = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %84 = ptrtoint ptr %fifos.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fifos.i.i, align 8
  %86 = ptrtoint ptr %dmahandle.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dmahandle.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev63.i.i, i32 noundef 32768, ptr noundef %85, i32 noundef %87, i32 noundef 0) #12
  br label %if.then17

if.end.i:                                         ; preds = %if.end39.i.i
  %88 = ptrtoint ptr %call47.i.i to i32
  %89 = ptrtoint ptr %fifos.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fifos.i.i, align 8
  %91 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq14, align 8
  %call80.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %88, ptr noundef %90, ptr noundef %dmahandle.i.i, i32 noundef %92, i32 noundef 100) #15
  %93 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev2, align 8
  %call82.i.i = tail call i32 @pci_write_config_word(ptr noundef %94, i32 noundef 4, i16 noundef zeroext 2) #12
  %int_m2.i.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 7, i32 7
  %95 = ptrtoint ptr %int_m2.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %int_m2.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  tail call void @arm_heavy_mb() #12
  %96 = ptrtoint ptr %int_m2.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %int_m2.i.i, align 1
  %98 = ptrtoint ptr %pci_io.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pci_io.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %99, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %97) #12, !srcloc !465
  %int_m1.i.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 7, i32 6
  %100 = ptrtoint ptr %int_m1.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %int_m1.i.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !466
  tail call void @arm_heavy_mb() #12
  %101 = ptrtoint ptr %int_m1.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %int_m1.i.i, align 2
  %103 = ptrtoint ptr %pci_io.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pci_io.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %104, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %102) #12, !srcloc !465
  %timer.i.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 7, i32 20
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @hfcpci_Timer, i32 noundef 0, ptr noundef nonnull @.str.232, ptr noundef nonnull @setup_hw.__key) #12
  %cfg.i.i = getelementptr inbounds %struct.hfc_pci, ptr %call7.i.i, i32 0, i32 3
  %call96.i.i = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %cfg.i.i) #12
  %105 = load i32, ptr @HFC_cnt, align 4
  %add45.i = add i32 %105, 1
  %call46.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 19, ptr noundef nonnull @.str.31, i32 noundef %add45.i) #12
  %106 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pdev2, align 8
  %dev49.i = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %call51.i = call i32 @mISDN_register_device(ptr noundef %dch.i, ptr noundef %dev49.i, ptr noundef nonnull %name.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %setup_card.exit.thread, label %if.end.i.if.then17_crit_edge

if.end.i.if.then17_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

setup_card.exit.thread:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = load i32, ptr @HFC_cnt, align 4
  %inc55.i = add i32 %108, 1
  store i32 %inc55.i, ptr @HFC_cnt, align 4
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %inc55.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name.i) #12
  br label %cleanup

if.then17:                                        ; preds = %if.end.i.if.then17_crit_edge, %do.end59.i.i, %do.end36.i.i, %do.end24.i.i, %do.end14.i.i, %do.end3.i.i
  %err.0.i = phi i32 [ %call51.i, %if.end.i.if.then17_crit_edge ], [ -22, %do.end3.i.i ], [ -12, %do.end14.i.i ], [ -12, %do.end36.i.i ], [ -12, %do.end59.i.i ], [ -5, %do.end24.i.i ]
  call void @mISDN_freebchannel(ptr noundef %arrayidx.1.i) #12
  call void @mISDN_freebchannel(ptr noundef %arrayidx.i) #12
  %call65.i = call i32 @mISDN_freedchannel(ptr noundef %dch.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name.i) #12
  %109 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %setup_card.exit.thread, %if.then6, %do.end
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ -12, %do.end ], [ %err.0.i, %if.then17 ], [ 0, %setup_card.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfc_remove_pci(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %int_m2.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 7
  %2 = ptrtoint ptr %int_m2.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %int_m2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  tail call void @arm_heavy_mb() #12
  %3 = ptrtoint ptr %int_m2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %int_m2.i, align 1
  %pci_io.i.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %5 = ptrtoint ptr %pci_io.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_io.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %4) #12, !srcloc !465
  %bch.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 10
  %call5.i = tail call fastcc i32 @mode_hfcpci(ptr noundef %bch.i, i32 noundef 1, i32 noundef 0) #12
  %arrayidx7.i = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 1
  %call8.i = tail call fastcc i32 @mode_hfcpci(ptr noundef %arrayidx7.i, i32 noundef 2, i32 noundef 0) #12
  %function.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9, i32 8, i32 2
  %7 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %function.i, align 4
  %cmp9.not.i = icmp eq ptr %8, null
  br i1 %cmp9.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %timer.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9, i32 8
  %call13.i = tail call i32 @del_timer(ptr noundef %timer.i) #12
  %9 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %function.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %protocol.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 14
  %10 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %protocol.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp20.i = icmp eq i8 %11, 1
  br i1 %cmp20.i, label %if.then22.i, label %if.end.i.if.end25.i_crit_edge

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %l1.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9, i32 5
  %12 = ptrtoint ptr %l1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %l1.i, align 8
  %call24.i = tail call i32 @l1_event(ptr noundef %13, i32 noundef 512) #12
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end.i.if.end25.i_crit_edge
  %initdone.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %initdone.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %initdone.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end25.i.release_card.exit_crit_edge, label %if.then26.i

if.end25.i.release_card.exit_crit_edge:           ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_card.exit

if.then26.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %irq.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 8
  %call27.i = tail call ptr @free_irq(i32 noundef %17, ptr noundef nonnull %1) #12
  br label %release_card.exit

release_card.exit:                                ; preds = %if.then26.i, %if.end25.i.release_card.exit_crit_edge
  %dch.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9
  %pdev.i.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i.i, align 8
  %call.i.i = tail call i32 @pci_write_config_word(ptr noundef %19, i32 noundef 4, i16 noundef zeroext 0) #12
  %timer.i.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 20
  %call1.i.i = tail call i32 @del_timer(ptr noundef %timer.i.i) #12
  %20 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %fifos.i.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 18
  %22 = ptrtoint ptr %fifos.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fifos.i.i, align 4
  %dmahandle.i.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 17
  %24 = ptrtoint ptr %dmahandle.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dmahandle.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef 32768, ptr noundef %23, i32 noundef %25, i32 noundef 0) #12
  %26 = ptrtoint ptr %pci_io.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_io.i.i, align 4
  tail call void @iounmap(ptr noundef %27) #12
  tail call void @mISDN_unregister_device(ptr noundef %dch.i) #12
  tail call void @mISDN_freebchannel(ptr noundef %arrayidx7.i) #12
  tail call void @mISDN_freebchannel(ptr noundef %bch.i) #12
  %call35.i = tail call i32 @mISDN_freedchannel(ptr noundef %dch.i) #12
  %28 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %driver_data.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %if.end4

if.else:                                          ; preds = %entry
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool1.not = icmp eq i32 %31, 0
  br i1 %tobool1.not, label %if.else.if.end4_crit_edge, label %do.end

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.235) #15
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.else.if.end4_crit_edge, %release_card.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initdchannel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ph_state(ptr noundef %dch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %protocol = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 14
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %Flags = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %4 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %Flags, align 4
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %nt_timer = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 15
  %7 = ptrtoint ptr %nt_timer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nt_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %if.then6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @handle_nt_timer3(ptr noundef %dch)
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %debug.i = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 15
  %9 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %do.end.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %state.i = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %12) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.else.if.end.i_crit_edge
  %state1.i = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %13 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state1.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %14, label %if.end.i.if.end8_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb94.i
    i32 4, label %sw.bb130.i
    i32 3, label %sw.bb150.i
  ]

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

sw.bb.i:                                          ; preds = %if.end.i
  %nt_timer.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 15
  %16 = ptrtoint ptr %nt_timer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nt_timer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp slt i32 %17, 0
  br i1 %cmp.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %nt_timer.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %nt_timer.i, align 4
  %call6.i = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %Flags) #12
  %call8.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %Flags) #12
  %int_m1.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %19 = ptrtoint ptr %int_m1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %int_m1.i, align 2
  %21 = and i8 %20, 127
  store i8 %21, ptr %int_m1.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !467
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %int_m1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %int_m1.i, align 2
  %pci_io.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %24 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %23) #12, !srcloc !465
  %26 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_io.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %27, i32 120
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19.i) #12, !srcloc !468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !470
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_io.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %30, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 20) #12, !srcloc !465
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !471
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_io.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %33, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34.i, i8 4) #12, !srcloc !465
  %34 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %state1.i, align 4
  br label %if.end8

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp38.i = icmp eq i32 %17, 0
  br i1 %cmp38.i, label %if.then40.i, label %do.body86.i

if.then40.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %int_m142.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %35 = ptrtoint ptr %int_m142.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %int_m142.i, align 2
  %37 = or i8 %36, -128
  store i8 %37, ptr %int_m142.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !472
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %int_m142.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %int_m142.i, align 2
  %pci_io51.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %40 = ptrtoint ptr %pci_io51.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_io51.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %41, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr52.i, i8 %39) #12, !srcloc !465
  %42 = ptrtoint ptr %nt_timer.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1120, ptr %nt_timer.i, align 4
  %ctmt.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %ctmt.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ctmt.i, align 1
  %45 = and i8 %44, -37
  %46 = or i8 %45, 4
  store i8 %46, ptr %ctmt.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !473
  tail call void @arm_heavy_mb() #12
  %47 = ptrtoint ptr %ctmt.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ctmt.i, align 1
  %49 = or i8 %48, -128
  %50 = ptrtoint ptr %pci_io51.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci_io51.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %51, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr74.i, i8 %49) #12, !srcloc !465
  %call76.i = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %Flags) #12
  %call78.i = tail call i32 @_test_and_set_bit(i32 noundef 16, ptr noundef %Flags) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !474
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %pci_io51.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci_io51.i, align 4
  %add.ptr84.i = getelementptr i8, ptr %53, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr84.i, i8 -126) #12, !srcloc !465
  br label %if.end8

do.body86.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !475
  tail call void @arm_heavy_mb() #12
  %pci_io90.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %54 = ptrtoint ptr %pci_io90.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pci_io90.i, align 4
  %add.ptr91.i = getelementptr i8, ptr %55, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr91.i, i8 -126) #12, !srcloc !465
  br label %if.end8

sw.bb94.i:                                        ; preds = %if.end.i
  %nt_timer96.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 15
  %56 = ptrtoint ptr %nt_timer96.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %nt_timer96.i, align 4
  %call98.i = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %Flags) #12
  %call100.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %Flags) #12
  %int_m1102.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %57 = ptrtoint ptr %int_m1102.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %int_m1102.i, align 2
  %59 = and i8 %58, 127
  store i8 %59, ptr %int_m1102.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !476
  tail call void @arm_heavy_mb() #12
  %60 = ptrtoint ptr %int_m1102.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %int_m1102.i, align 2
  %pci_io112.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %62 = ptrtoint ptr %pci_io112.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci_io112.i, align 4
  %add.ptr113.i = getelementptr i8, ptr %63, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr113.i, i8 %61) #12, !srcloc !465
  %call115.i = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags) #12
  %mst_m.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %64 = ptrtoint ptr %mst_m.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mst_m.i, align 1
  %66 = and i8 %65, -2
  store i8 %66, ptr %mst_m.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !477
  tail call void @arm_heavy_mb() #12
  %67 = ptrtoint ptr %mst_m.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %mst_m.i, align 1
  %69 = ptrtoint ptr %pci_io112.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pci_io112.i, align 4
  %add.ptr127.i = getelementptr i8, ptr %70, i32 184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr127.i, i8 %68) #12, !srcloc !465
  %call129.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %Flags) #12
  %peer.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %71 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i, label %sw.bb94.i.if.end8_crit_edge, label %if.end.i.i

sw.bb94.i.if.end8_crit_edge:                      ; preds = %sw.bb94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.i.i:                                       ; preds = %sw.bb94.i
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.if.end8_crit_edge, label %if.end3.i.i, !prof !463

if.end.i.i.if.end8_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end3.i.i:                                      ; preds = %if.end.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %73 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %74, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %75 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %76, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %77 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 514, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %78 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 65535, ptr %id6.i.i.i, align 1
  %recv.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %79 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %recv.i.i, align 4
  %81 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = tail call i32 %80(ptr noundef %82, ptr noundef nonnull %call.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end3.i.i.if.end8_crit_edge, label %if.then7.i.i

if.end3.i.i.if.end8_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #12
  br label %if.end8

sw.bb130.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %nt_timer132.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 15
  %83 = ptrtoint ptr %nt_timer132.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %nt_timer132.i, align 4
  %call134.i = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %Flags) #12
  %call136.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %Flags) #12
  %int_m1138.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %84 = ptrtoint ptr %int_m1138.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %int_m1138.i, align 2
  %86 = and i8 %85, 127
  store i8 %86, ptr %int_m1138.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !478
  tail call void @arm_heavy_mb() #12
  %87 = ptrtoint ptr %int_m1138.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %int_m1138.i, align 2
  %pci_io148.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %89 = ptrtoint ptr %pci_io148.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pci_io148.i, align 4
  %add.ptr149.i = getelementptr i8, ptr %90, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr149.i, i8 %88) #12, !srcloc !465
  br label %if.end8

sw.bb150.i:                                       ; preds = %if.end.i
  %call152.i = tail call i32 @_test_and_set_bit(i32 noundef 17, ptr noundef %Flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152.i)
  %tobool153.not.i = icmp eq i32 %call152.i, 0
  br i1 %tobool153.not.i, label %if.then154.i, label %sw.bb150.i.if.end8_crit_edge

sw.bb150.i.if.end8_crit_edge:                     ; preds = %sw.bb150.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then154.i:                                     ; preds = %sw.bb150.i
  %call156.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %Flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156.i)
  %tobool157.not.i = icmp eq i32 %call156.i, 0
  br i1 %tobool157.not.i, label %if.then158.i, label %if.end159.i

if.then158.i:                                     ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @handle_nt_timer3(ptr noundef %dch) #12
  br label %if.end8

if.end159.i:                                      ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #14
  %call161.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %Flags) #12
  %int_m1163.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %91 = ptrtoint ptr %int_m1163.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %int_m1163.i, align 2
  %93 = or i8 %92, -128
  store i8 %93, ptr %int_m1163.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !479
  tail call void @arm_heavy_mb() #12
  %94 = ptrtoint ptr %int_m1163.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %int_m1163.i, align 2
  %pci_io173.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %96 = ptrtoint ptr %pci_io173.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pci_io173.i, align 4
  %add.ptr174.i = getelementptr i8, ptr %97, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr174.i, i8 %95) #12, !srcloc !465
  %nt_timer176.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 15
  %98 = ptrtoint ptr %nt_timer176.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 31, ptr %nt_timer176.i, align 4
  %ctmt178.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 1
  %99 = ptrtoint ptr %ctmt178.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ctmt178.i, align 1
  %101 = and i8 %100, -37
  %102 = or i8 %101, 4
  store i8 %102, ptr %ctmt178.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !480
  tail call void @arm_heavy_mb() #12
  %103 = ptrtoint ptr %ctmt178.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ctmt178.i, align 1
  %105 = or i8 %104, -128
  %106 = ptrtoint ptr %pci_io173.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pci_io173.i, align 4
  %add.ptr197.i = getelementptr i8, ptr %107, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr197.i, i8 %105) #12, !srcloc !465
  br label %if.end8

if.else7:                                         ; preds = %entry
  %debug.i14 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 15
  %108 = ptrtoint ptr %debug.i14 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %debug.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i15 = icmp eq i32 %109, 0
  br i1 %tobool.not.i15, label %if.else7.if.end.i20_crit_edge, label %do.end.i18

if.else7.if.end.i20_crit_edge:                    ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i20

do.end.i18:                                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  %state.i16 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %110 = ptrtoint ptr %state.i16 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %state.i16, align 4
  %call.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %111) #15
  br label %if.end.i20

if.end.i20:                                       ; preds = %do.end.i18, %if.else7.if.end.i20_crit_edge
  %state1.i19 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 4
  %112 = ptrtoint ptr %state1.i19 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %state1.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %113)
  %114 = icmp ult i32 %113, 9
  br i1 %114, label %switch.hole_check, label %if.end.i20.if.end8_crit_edge

if.end.i20.if.end8_crit_edge:                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

switch.hole_check:                                ; preds = %if.end.i20
  %switch.maskindex = trunc i32 %113 to i16
  %switch.shifted = lshr i16 489, %switch.maskindex
  %115 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %switch.lobit.not = icmp eq i16 %115, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end8_crit_edge, label %switch.lookup

switch.hole_check.if.end8_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.ph_state, i32 0, i32 %113
  %116 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %116)
  %switch.load = load i32, ptr %switch.gep, align 4
  %l113.i = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %117 = ptrtoint ptr %l113.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %l113.i, align 8
  %call14.i = tail call i32 @l1_event(ptr noundef %118, i32 noundef %switch.load) #12
  br label %if.end8

if.end8:                                          ; preds = %switch.lookup, %switch.hole_check.if.end8_crit_edge, %if.end.i20.if.end8_crit_edge, %if.end159.i, %if.then158.i, %sw.bb150.i.if.end8_crit_edge, %sw.bb130.i, %if.then7.i.i, %if.end3.i.i.if.end8_crit_edge, %if.end.i.i.if.end8_crit_edge, %sw.bb94.i.if.end8_crit_edge, %do.body86.i, %if.then40.i, %if.then3.i, %if.end.i.if.end8_crit_edge, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfcpci_l2l1D(ptr noundef %ch, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cb, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 8193, label %do.body4
    i32 257, label %do.body18
    i32 513, label %sw.bb68
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body4:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call9 = tail call i32 @dchannel_senddata(ptr noundef %ch, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %id12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %id12 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %id12, align 1
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  tail call fastcc void @hfcpci_fill_dfifo(ptr noundef %8)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  tail call void @queue_ch_frame(ptr noundef %ch, i32 noundef 24578, i32 noundef %6, ptr noundef null) #12
  br label %cleanup

if.else:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  br label %cleanup

do.body18:                                        ; preds = %entry
  %lock24 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock24) #12
  %protocol = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 14
  %9 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp33 = icmp eq i8 %10, 2
  br i1 %cmp33, label %if.then35, label %if.else63

if.then35:                                        ; preds = %do.body18
  %cfg = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %cfg, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then35.do.body42_crit_edge, label %if.then37

if.then35.do.body42_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %mst_m = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %mst_m to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mst_m, align 1
  %16 = or i8 %15, 1
  store i8 %16, ptr %mst_m, align 1
  br label %do.body42

do.body42:                                        ; preds = %if.then37, %if.then35.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !481
  tail call void @arm_heavy_mb() #12
  %mst_m46 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %17 = ptrtoint ptr %mst_m46 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mst_m46, align 1
  %pci_io = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %19 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_io, align 4
  %add.ptr48 = getelementptr i8, ptr %20, i32 184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr48, i8 %18) #12, !srcloc !465
  %Flags = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 1
  %21 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %Flags, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool50.not = icmp eq i32 %23, 0
  br i1 %tobool50.not, label %if.end54, label %if.then51

if.then51:                                        ; preds = %do.body42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock24, i32 noundef %call26) #12
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %24 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then51.if.then134_crit_edge, label %if.end.i

if.then51.if.then134_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then134

if.end.i:                                         ; preds = %if.then51
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.then134_crit_edge, label %if.end3.i, !prof !463

if.end.i.if.then134_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then134

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %27, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %29, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %32 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %recv.i, align 4
  %34 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %33(ptr noundef %35, ptr noundef nonnull %call.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.if.then134_crit_edge, label %if.then7.i

if.end3.i.if.then134_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then134

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #12
  br label %if.then134

if.end54:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %Flags) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !482
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_io, align 4
  %add.ptr62 = getelementptr i8, ptr %37, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr62, i8 97) #12, !srcloc !465
  br label %if.end66

if.else63:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #14
  %l1 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 5
  %38 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %l1, align 8
  %40 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %cb, align 1
  %call65 = tail call i32 @l1_event(ptr noundef %39, i32 noundef %41) #12
  br label %if.end66

if.end66:                                         ; preds = %if.else63, %if.end54
  %ret.1 = phi i32 [ 0, %if.end54 ], [ %call65, %if.else63 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock24, i32 noundef %call26) #12
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  %Flags69 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 1
  %call70 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %Flags69) #12
  %lock78 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  %call80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock78) #12
  %protocol86 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 14
  %42 = ptrtoint ptr %protocol86 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %protocol86, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp88 = icmp eq i8 %43, 2
  br i1 %cmp88, label %do.body91, label %if.else127

do.body91:                                        ; preds = %sw.bb68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !483
  tail call void @arm_heavy_mb() #12
  %pci_io95 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %44 = ptrtoint ptr %pci_io95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci_io95, align 4
  %add.ptr96 = getelementptr i8, ptr %45, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr96, i8 64) #12, !srcloc !465
  %squeue = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 11
  tail call void @skb_queue_purge(ptr noundef %squeue) #12
  %tx_skb = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 13
  %46 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_skb, align 4
  %tobool97.not = icmp eq ptr %47, null
  br i1 %tobool97.not, label %do.body91.if.end101_crit_edge, label %if.then98

do.body91.if.end101_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then98:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %47) #12
  %48 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %do.body91.if.end101_crit_edge
  %tx_idx = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 14
  %49 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %tx_idx, align 8
  %rx_skb = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 9
  %50 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_skb, align 4
  %tobool102.not = icmp eq ptr %51, null
  br i1 %tobool102.not, label %if.end101.if.end106_crit_edge, label %if.then103

if.end101.if.end106_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %51) #12
  %52 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %rx_skb, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end101.if.end106_crit_edge
  %call108 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %Flags69) #12
  %call110 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags69) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end106.if.end114_crit_edge, label %if.then112

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then112:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 8
  %call113 = tail call i32 @del_timer(ptr noundef %timer) #12
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end106.if.end114_crit_edge
  %mst_m116 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %53 = ptrtoint ptr %mst_m116 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mst_m116, align 1
  %55 = and i8 %54, -2
  store i8 %55, ptr %mst_m116, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !484
  tail call void @arm_heavy_mb() #12
  %56 = ptrtoint ptr %mst_m116 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mst_m116, align 1
  %58 = ptrtoint ptr %pci_io95 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pci_io95, align 4
  %add.ptr126 = getelementptr i8, ptr %59, i32 184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr126, i8 %57) #12, !srcloc !465
  br label %if.end131

if.else127:                                       ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #14
  %l1128 = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 5
  %60 = ptrtoint ptr %l1128 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %l1128, align 8
  %62 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %cb, align 1
  %call130 = tail call i32 @l1_event(ptr noundef %61, i32 noundef %63) #12
  br label %if.end131

if.end131:                                        ; preds = %if.else127, %if.end114
  %ret.2 = phi i32 [ 0, %if.end114 ], [ %call130, %if.else127 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock78, i32 noundef %call80) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end131, %if.end66
  %ret.3 = phi i32 [ %ret.2, %if.end131 ], [ %ret.1, %if.end66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool133.not = icmp eq i32 %ret.3, 0
  br i1 %tobool133.not, label %sw.epilog.if.then134_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog.if.then134_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then134

if.then134:                                       ; preds = %sw.epilog.if.then134_crit_edge, %if.then7.i, %if.end3.i.if.then134_crit_edge, %if.end.i.if.then134_crit_edge, %if.then51.if.then134_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then134, %sw.epilog.cleanup_crit_edge, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ %call9, %if.else ], [ 0, %if.then134 ], [ %ret.3, %sw.epilog.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfc_dctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %debug = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 15
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %cmd, ptr noundef %arg) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %cmd, label %sw.default [
    i32 256, label %sw.bb
    i32 512, label %sw.bb11
    i32 768, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arg, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb
  %7 = load i32, ptr @debug, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.if.end.i_crit_edge, label %do.end.i

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %id.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9, i32 0, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 4
  %10 = tail call ptr @llvm.returnaddress(i32 0) #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %9, ptr noundef %10) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then7.if.end.i_crit_edge
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %channel.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %channel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp3.i = icmp eq i8 %14, 1
  br i1 %cmp3.i, label %if.end2.i.cleanup_crit_edge, label %if.end6.i

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.i:                                        ; preds = %if.end2.i
  %initdone.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %initdone.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %initdone.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not.i = icmp eq i8 %16, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp10.i = icmp eq i32 %12, 1
  br i1 %cmp10.i, label %if.then12.i, label %if.then8.i.if.end18.i_crit_edge

if.then8.i.if.end18.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.then8.i
  %dch13.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9
  %call14.i = tail call i32 @create_l1(ptr noundef %dch13.i, ptr noundef nonnull @hfc_l1callback) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then12.i.if.end18.i_crit_edge, label %if.then12.i.cleanup_crit_edge

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12.i.if.end18.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i.if.end18.i_crit_edge, %if.then8.i.if.end18.i_crit_edge
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arg, align 4
  %conv20.i = trunc i32 %18 to i8
  %protocol21.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 14
  %19 = ptrtoint ptr %protocol21.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv20.i, ptr %protocol21.i, align 2
  %20 = load i32, ptr %arg, align 4
  %protocol23.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %21 = ptrtoint ptr %protocol23.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %protocol23.i, align 4
  %call24.i = tail call fastcc i32 @init_card(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end18.i.if.end59.i_crit_edge, label %if.end18.i.cleanup_crit_edge

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18.i.if.end59.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.else.i:                                        ; preds = %if.end6.i
  %protocol29.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %22 = ptrtoint ptr %protocol29.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %protocol29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %23)
  %cmp30.not.i = icmp eq i32 %12, %23
  br i1 %cmp30.not.i, label %if.else.i.if.end59.i_crit_edge, label %if.then32.i

if.else.i.if.end59.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then32.i:                                      ; preds = %if.else.i
  %protocol34.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 14
  %24 = ptrtoint ptr %protocol34.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %protocol34.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp36.i = icmp eq i8 %25, 1
  br i1 %cmp36.i, label %if.then38.i, label %if.then32.i.if.end41.i_crit_edge

if.then32.i.if.end41.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  %l1.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9, i32 5
  %26 = ptrtoint ptr %l1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %l1.i, align 8
  %call40.i = tail call i32 @l1_event(ptr noundef %27, i32 noundef 512) #12
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.then32.i.if.end41.i_crit_edge
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp43.i = icmp eq i32 %29, 1
  br i1 %cmp43.i, label %if.then45.i, label %if.end41.i.if.end51.i_crit_edge

if.end41.i.if.end51.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.then45.i:                                      ; preds = %if.end41.i
  %dch46.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9
  %call47.i = tail call i32 @create_l1(ptr noundef %dch46.i, ptr noundef nonnull @hfc_l1callback) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then45.i.if.end51.i_crit_edge, label %if.then45.i.cleanup_crit_edge

if.then45.i.cleanup_crit_edge:                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then45.i.if.end51.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then45.i.if.end51.i_crit_edge, %if.end41.i.if.end51.i_crit_edge
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arg, align 4
  %conv53.i = trunc i32 %31 to i8
  %32 = ptrtoint ptr %protocol34.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv53.i, ptr %protocol34.i, align 2
  %33 = load i32, ptr %arg, align 4
  %34 = ptrtoint ptr %protocol29.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %protocol29.i, align 4
  tail call fastcc void @hfcpci_setmode(ptr noundef %1) #12
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end51.i, %if.else.i.if.end59.i_crit_edge, %if.end18.i.if.end59.i_crit_edge
  %protocol60.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %35 = ptrtoint ptr %protocol60.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %protocol60.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %36, label %if.end59.i.if.end75.i_crit_edge [
    i32 2, label %land.lhs.true.i
    i32 1, label %land.lhs.true69.i
  ]

if.end59.i.if.end75.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

land.lhs.true.i:                                  ; preds = %if.end59.i
  %state.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9, i32 4
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp64.i = icmp eq i32 %39, 3
  br i1 %cmp64.i, label %land.lhs.true.i.if.then74.i_crit_edge, label %land.lhs.true.i.if.end75.i_crit_edge

land.lhs.true.i.if.end75.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

land.lhs.true.i.if.then74.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74.i

land.lhs.true69.i:                                ; preds = %if.end59.i
  %state71.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9, i32 4
  %40 = ptrtoint ptr %state71.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %41)
  %cmp72.i = icmp eq i32 %41, 7
  br i1 %cmp72.i, label %land.lhs.true69.i.if.then74.i_crit_edge, label %land.lhs.true69.i.if.end75.i_crit_edge

land.lhs.true69.i.if.end75.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

land.lhs.true69.i.if.then74.i_crit_edge:          ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then74.i

if.then74.i:                                      ; preds = %land.lhs.true69.i.if.then74.i_crit_edge, %land.lhs.true.i.if.then74.i_crit_edge
  %peer.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %42 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %peer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.then74.i.if.end75.i_crit_edge, label %if.end.i.i

if.then74.i.if.end75.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

if.end.i.i:                                       ; preds = %if.then74.i
  %call.i.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.if.end75.i_crit_edge, label %if.end3.i.i, !prof !463

if.end.i.i.if.end75.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %45, i32 8
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %46 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %47, i32 8
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 258, ptr %cb.i.i.i, align 1
  %id6.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 3, i32 4
  %49 = ptrtoint ptr %id6.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 65535, ptr %id6.i.i.i, align 1
  %recv.i.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %50 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %recv.i.i, align 4
  %52 = ptrtoint ptr %peer.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %peer.i.i, align 4
  %call5.i.i = tail call i32 %51(ptr noundef %53, ptr noundef nonnull %call.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end3.i.i.if.end75.i_crit_edge, label %if.then7.i.i

if.end3.i.i.if.end75.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75.i

if.then7.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.i) #12
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then7.i.i, %if.end3.i.i.if.end75.i_crit_edge, %if.end.i.i.if.end75.i_crit_edge, %if.then74.i.if.end75.i_crit_edge, %land.lhs.true69.i.if.end75.i_crit_edge, %land.lhs.true.i.if.end75.i_crit_edge, %if.end59.i.if.end75.i_crit_edge
  %ch76.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %54 = ptrtoint ptr %ch76.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %ch, ptr %ch76.i, align 4
  %call77.i = tail call zeroext i1 @try_module_get(ptr noundef null) #12
  br i1 %call77.i, label %if.end75.i.cleanup_crit_edge, label %do.end81.i

if.end75.i.cleanup_crit_edge:                     ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end81.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #14
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61) #15
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %channel.i52 = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %channel.i52 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %channel.i52, align 1
  %57 = add i8 %56, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %57)
  %58 = icmp ult i8 %57, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7.i = icmp eq i32 %6, 0
  %or.cond = select i1 %58, i1 true, i1 %cmp7.i
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.end10.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10.i:                                       ; preds = %if.else
  %conv.i = zext i8 %56 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %Flags.i = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 %sub.i, i32 2
  %call.i54 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %Flags.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i55, label %if.end16.i, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16.i:                                       ; preds = %if.end10.i
  %arrayidx.i = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 %sub.i
  %59 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arg, align 4
  %protocol18.i = getelementptr inbounds %struct.mISDNchannel, ptr %arrayidx.i, i32 0, i32 1
  %61 = ptrtoint ptr %protocol18.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %protocol18.i, align 4
  %ch20.i = getelementptr inbounds %struct.channel_req, ptr %arg, i32 0, i32 2
  %62 = ptrtoint ptr %ch20.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx.i, ptr %ch20.i, align 4
  %call21.i = tail call zeroext i1 @try_module_get(ptr noundef null) #12
  br i1 %call21.i, label %if.end16.i.cleanup_crit_edge, label %do.end.i56

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i56:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.188) #15
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %63 = load i32, ptr @debug, align 4
  %and12 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %sw.bb11.if.end22_crit_edge, label %do.end17

sw.bb11.if.end22_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.end17:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #14
  %id = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9, i32 0, i32 1
  %64 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id, align 4
  %66 = tail call ptr @llvm.returnaddress(i32 0)
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %65, ptr noundef %66) #15
  br label %if.end22

if.end22:                                         ; preds = %do.end17, %sw.bb11.if.end22_crit_edge
  tail call void @module_put(ptr noundef null) #12
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  %67 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arg, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %68, label %do.end248.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb119.i
    i32 4, label %sw.bb219.i
    i32 2048, label %sw.bb241.i
  ]

sw.bb.i:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2055, ptr %arg, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb23
  %channel.i58 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 1
  %71 = ptrtoint ptr %channel.i58 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %channel.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %73 = icmp ugt i32 %72, 2
  br i1 %73, label %sw.bb2.i.cleanup_crit_edge, label %if.end.i61

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i61:                                       ; preds = %sw.bb2.i
  %and.i59 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool.not.i60 = icmp eq i32 %and.i59, 0
  br i1 %tobool.not.i60, label %if.end.i61.if.end34.i_crit_edge, label %if.then6.i

if.end.i61.if.end34.i_crit_edge:                  ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then6.i:                                       ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  %cfg.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 3
  %74 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %cfg.i, align 4
  %76 = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool7.not.i62 = icmp eq i32 %76, 0
  %..i = select i1 %tobool7.not.i62, i8 -128, i8 -64
  %conv.i63 = zext i8 %..i to i32
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, i32 noundef %conv.i63) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !485
  tail call void @arm_heavy_mb() #12
  %pci_io.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %77 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pci_io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %78, i32 128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %..i) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !486
  tail call void @arm_heavy_mb() #12
  %79 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci_io.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %80, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19.i, i8 %..i) #12, !srcloc !465
  %conn.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %81 = ptrtoint ptr %conn.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %conn.i, align 4
  %83 = and i8 %82, -8
  %84 = or i8 %83, 6
  store i8 %84, ptr %conn.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !487
  tail call void @arm_heavy_mb() #12
  %85 = ptrtoint ptr %conn.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %conn.i, align 4
  %87 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pci_io.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %88, i32 188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33.i, i8 %86) #12, !srcloc !465
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then6.i, %if.end.i61.if.end34.i_crit_edge
  %89 = ptrtoint ptr %channel.i58 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %channel.i58, align 4
  %and36.i = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end34.i.if.end79.i_crit_edge, label %if.then38.i64

if.end34.i.if.end79.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

if.then38.i64:                                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %cfg39.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 3
  %91 = ptrtoint ptr %cfg39.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %cfg39.i, align 4
  %93 = and i32 %92, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool41.not.i = icmp eq i32 %93, 0
  %.319.i = select i1 %tobool41.not.i, i8 -127, i8 -63
  %conv49.i = zext i8 %.319.i to i32
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.190, i32 noundef %conv49.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !488
  tail call void @arm_heavy_mb() #12
  %pci_io55.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %94 = ptrtoint ptr %pci_io55.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pci_io55.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %95, i32 132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56.i, i8 %.319.i) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !489
  tail call void @arm_heavy_mb() #12
  %96 = ptrtoint ptr %pci_io55.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pci_io55.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %97, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr62.i, i8 %.319.i) #12, !srcloc !465
  %conn64.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %98 = ptrtoint ptr %conn64.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %conn64.i, align 4
  %100 = and i8 %99, -57
  %101 = or i8 %100, 48
  store i8 %101, ptr %conn64.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !490
  tail call void @arm_heavy_mb() #12
  %102 = ptrtoint ptr %conn64.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %conn64.i, align 4
  %104 = ptrtoint ptr %pci_io55.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pci_io55.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %105, i32 188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr78.i, i8 %103) #12, !srcloc !465
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then38.i64, %if.end34.i.if.end79.i_crit_edge
  %106 = ptrtoint ptr %channel.i58 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %channel.i58, align 4
  %and81.i = and i32 %107, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.else88.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  %trm.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 11
  %108 = ptrtoint ptr %trm.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %trm.i, align 1
  %110 = or i8 %109, -128
  store i8 %110, ptr %trm.i, align 1
  br label %do.body111.i

if.else88.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  %conn90.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %111 = ptrtoint ptr %conn90.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %conn90.i, align 4
  %113 = and i8 %112, -64
  %114 = or i8 %113, 9
  store i8 %114, ptr %conn90.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !491
  tail call void @arm_heavy_mb() #12
  %115 = ptrtoint ptr %conn90.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %conn90.i, align 4
  %pci_io103.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %117 = ptrtoint ptr %pci_io103.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pci_io103.i, align 4
  %add.ptr104.i = getelementptr i8, ptr %118, i32 188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr104.i, i8 %116) #12, !srcloc !465
  %trm106.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 11
  %119 = ptrtoint ptr %trm106.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %trm106.i, align 1
  %121 = and i8 %120, 127
  store i8 %121, ptr %trm106.i, align 1
  br label %do.body111.i

do.body111.i:                                     ; preds = %if.else88.i, %if.then83.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !492
  tail call void @arm_heavy_mb() #12
  %trm115.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 11
  %122 = ptrtoint ptr %trm115.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %trm115.i, align 1
  %pci_io117.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %124 = ptrtoint ptr %pci_io117.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pci_io117.i, align 4
  %add.ptr118.i = getelementptr i8, ptr %125, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr118.i, i8 %123) #12, !srcloc !465
  br label %cleanup

sw.bb119.i:                                       ; preds = %sw.bb23
  %channel120.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 1
  %126 = ptrtoint ptr %channel120.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %channel120.i, align 4
  %p1.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 2
  %128 = ptrtoint ptr %p1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %p1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %129)
  %cmp121.i = icmp eq i32 %127, %129
  br i1 %cmp121.i, label %sw.bb119.i.cleanup_crit_edge, label %if.end124.i

sw.bb119.i.cleanup_crit_edge:                     ; preds = %sw.bb119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end124.i:                                      ; preds = %sw.bb119.i
  %130 = add i32 %127, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %130)
  %131 = icmp ult i32 %130, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %129)
  %cmp134.i = icmp slt i32 %129, 1
  %or.cond321.i = select i1 %131, i1 true, i1 %cmp134.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %129)
  %cmp138.i = icmp sgt i32 %129, 2
  %or.cond322.i = select i1 %or.cond321.i, i1 true, i1 %cmp138.i
  br i1 %or.cond322.i, label %if.end124.i.cleanup_crit_edge, label %if.end141.i

if.end124.i.cleanup_crit_edge:                    ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end141.i:                                      ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #14
  %cfg142.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 3
  %132 = ptrtoint ptr %cfg142.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %cfg142.i, align 4
  %134 = and i32 %133, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool144.not.i = icmp eq i32 %134, 0
  %.323.i = select i1 %tobool144.not.i, i8 -128, i8 -64
  %conv152.i = zext i8 %.323.i to i32
  %call153.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, i32 noundef %conv152.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !493
  tail call void @arm_heavy_mb() #12
  %pci_io158.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %135 = ptrtoint ptr %pci_io158.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pci_io158.i, align 4
  %add.ptr159.i = getelementptr i8, ptr %136, i32 128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr159.i, i8 %.323.i) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !494
  tail call void @arm_heavy_mb() #12
  %137 = ptrtoint ptr %pci_io158.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pci_io158.i, align 4
  %add.ptr165.i = getelementptr i8, ptr %138, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr165.i, i8 %.323.i) #12, !srcloc !465
  %139 = ptrtoint ptr %cfg142.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %cfg142.i, align 4
  %141 = and i32 %140, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool168.not.i = icmp eq i32 %141, 0
  %slot.3.i = select i1 %tobool168.not.i, i8 -127, i8 -63
  %conv176.i = zext i8 %slot.3.i to i32
  %call177.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.190, i32 noundef %conv176.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !495
  tail call void @arm_heavy_mb() #12
  %142 = ptrtoint ptr %pci_io158.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pci_io158.i, align 4
  %add.ptr183.i = getelementptr i8, ptr %143, i32 132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr183.i, i8 %slot.3.i) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !496
  tail call void @arm_heavy_mb() #12
  %144 = ptrtoint ptr %pci_io158.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pci_io158.i, align 4
  %add.ptr189.i = getelementptr i8, ptr %145, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr189.i, i8 %slot.3.i) #12, !srcloc !465
  %conn191.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %146 = ptrtoint ptr %conn191.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %conn191.i, align 4
  %148 = and i8 %147, -64
  %149 = or i8 %148, 54
  store i8 %149, ptr %conn191.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !497
  tail call void @arm_heavy_mb() #12
  %150 = ptrtoint ptr %conn191.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %conn191.i, align 4
  %152 = ptrtoint ptr %pci_io158.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pci_io158.i, align 4
  %add.ptr205.i = getelementptr i8, ptr %153, i32 188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr205.i, i8 %151) #12, !srcloc !465
  %trm207.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 11
  %154 = ptrtoint ptr %trm207.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %trm207.i, align 1
  %156 = or i8 %155, -128
  store i8 %156, ptr %trm207.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !498
  tail call void @arm_heavy_mb() #12
  %157 = ptrtoint ptr %trm207.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %trm207.i, align 1
  %159 = ptrtoint ptr %pci_io158.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pci_io158.i, align 4
  %add.ptr218.i = getelementptr i8, ptr %160, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr218.i, i8 %158) #12, !srcloc !465
  br label %cleanup

sw.bb219.i:                                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  %conn221.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %161 = ptrtoint ptr %conn221.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %conn221.i, align 4
  %163 = and i8 %162, -64
  %164 = or i8 %163, 9
  store i8 %164, ptr %conn221.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !499
  tail call void @arm_heavy_mb() #12
  %165 = ptrtoint ptr %conn221.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %conn221.i, align 4
  %pci_io234.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %167 = ptrtoint ptr %pci_io234.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pci_io234.i, align 4
  %add.ptr235.i = getelementptr i8, ptr %168, i32 188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr235.i, i8 %166) #12, !srcloc !465
  %trm237.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 11
  %169 = ptrtoint ptr %trm237.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %trm237.i, align 1
  %171 = and i8 %170, 127
  store i8 %171, ptr %trm237.i, align 1
  br label %cleanup

sw.bb241.i:                                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  %l1.i65 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 9, i32 5
  %172 = ptrtoint ptr %l1.i65 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %l1.i65, align 8
  %p1242.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 2
  %174 = ptrtoint ptr %p1242.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %p1242.i, align 4
  %and243.i = and i32 %175, 255
  %or244.i = or i32 %and243.i, 39424
  %call245.i = tail call i32 @l1_event(ptr noundef %173, i32 noundef %or244.i) #12
  br label %cleanup

do.end248.i:                                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  %call251.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.190, i32 noundef %68) #15
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %176 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %debug, align 4
  %and26 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %sw.default.cleanup_crit_edge, label %do.end31

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end31:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, i32 noundef %cmd) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %sw.default.cleanup_crit_edge, %do.end248.i, %sw.bb241.i, %sw.bb219.i, %if.end141.i, %if.end124.i.cleanup_crit_edge, %sw.bb119.i.cleanup_crit_edge, %do.body111.i, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i, %if.end22, %do.end.i56, %if.end16.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end81.i, %if.end75.i.cleanup_crit_edge, %if.then45.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end31 ], [ -22, %sw.default.cleanup_crit_edge ], [ 0, %if.end22 ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end2.i.cleanup_crit_edge ], [ %call14.i, %if.then12.i.cleanup_crit_edge ], [ %call24.i, %if.end18.i.cleanup_crit_edge ], [ %call47.i, %if.then45.i.cleanup_crit_edge ], [ 0, %do.end81.i ], [ 0, %if.end75.i.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -16, %if.end10.i.cleanup_crit_edge ], [ 0, %do.end.i56 ], [ 0, %if.end16.i.cleanup_crit_edge ], [ -22, %do.end248.i ], [ %call245.i, %sw.bb241.i ], [ 0, %sw.bb219.i ], [ 0, %if.end141.i ], [ 0, %do.body111.i ], [ 0, %sw.bb.i ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -22, %sw.bb119.i.cleanup_crit_edge ], [ -22, %if.end124.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_initbchannel(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfcpci_l2l1B(ptr noundef %ch, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %cb, align 1
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 8193, label %do.body1
    i32 257, label %do.body12
    i32 513, label %sw.bb33
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %call6 = tail call i32 @bchannel_senddata(ptr noundef %ch, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %if.then, label %do.body1.if.end_crit_edge

do.body1.if.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @hfcpci_fill_fifo(ptr noundef %ch)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body1.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %call6, %do.body1.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br label %cleanup

do.body12:                                        ; preds = %entry
  %lock18 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock18) #12
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call25 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end28, label %if.end28.thread

if.end28.thread:                                  ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call20) #12
  br label %if.then31

if.end28:                                         ; preds = %do.body12
  %nr = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr, align 4
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %protocol, align 4
  %call27 = tail call fastcc i32 @mode_hfcpci(ptr noundef %ch, i32 noundef %6, i32 noundef %8)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool30.not = icmp eq i32 %call27, 0
  br i1 %tobool30.not, label %if.end28.if.then31_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28.if.then31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.then31:                                        ; preds = %if.end28.if.then31_crit_edge, %if.end28.thread
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %9 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then31.if.then35_crit_edge, label %if.end.i

if.then31.if.then35_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.end.i:                                         ; preds = %if.then31
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.if.then35_crit_edge, label %if.end3.i, !prof !463

if.end.i.if.then35_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %17 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %recv.i, align 4
  %19 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %18(ptr noundef %20, ptr noundef nonnull %call.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.if.then35_crit_edge, label %if.end3.i.if.then35.sink.split_crit_edge

if.end3.i.if.then35.sink.split_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35.sink.split

if.end3.i.if.then35_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

sw.bb33:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #12
  %nr.i = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %21 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr.i, align 4
  %call5.i60 = tail call fastcc i32 @mode_hfcpci(ptr noundef %ch, i32 noundef %22, i32 noundef 0) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %peer.i61 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %23 = ptrtoint ptr %peer.i61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %peer.i61, align 4
  %tobool.not.i62 = icmp eq ptr %24, null
  br i1 %tobool.not.i62, label %sw.bb33.if.then35_crit_edge, label %if.end.i65

sw.bb33.if.then35_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.end.i65:                                       ; preds = %sw.bb33
  %call.i.i.i.i63 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i.i64 = icmp eq ptr %call.i.i.i.i63, null
  br i1 %tobool.not.i.i.i64, label %if.end.i65.if.then35_crit_edge, label %if.end3.i75, !prof !463

if.end.i65.if.then35_crit_edge:                   ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.end3.i75:                                      ; preds = %if.end.i65
  %data.i.i.i.i66 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i63, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i.i66, align 4
  %add.ptr.i.i.i.i67 = getelementptr i8, ptr %26, i32 8
  store ptr %add.ptr.i.i.i.i67, ptr %data.i.i.i.i66, align 4
  %tail.i.i.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i63, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i.i68, align 8
  %add.ptr1.i.i.i.i69 = getelementptr i8, ptr %28, i32 8
  store ptr %add.ptr1.i.i.i.i69, ptr %tail.i.i.i.i68, align 8
  %cb.i.i70 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i63, i32 0, i32 3
  %29 = ptrtoint ptr %cb.i.i70 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 514, ptr %cb.i.i70, align 1
  %id6.i.i71 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i63, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %id6.i.i71 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 65535, ptr %id6.i.i71, align 1
  %recv.i72 = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 8
  %31 = ptrtoint ptr %recv.i72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %recv.i72, align 4
  %33 = ptrtoint ptr %peer.i61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %peer.i61, align 4
  %call5.i73 = tail call i32 %32(ptr noundef %34, ptr noundef nonnull %call.i.i.i.i63) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i73)
  %tobool6.not.i74 = icmp eq i32 %call5.i73, 0
  br i1 %tobool6.not.i74, label %if.end3.i75.if.then35_crit_edge, label %if.end3.i75.if.then35.sink.split_crit_edge

if.end3.i75.if.then35.sink.split_crit_edge:       ; preds = %if.end3.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35.sink.split

if.end3.i75.if.then35_crit_edge:                  ; preds = %if.end3.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.then35.sink.split:                             ; preds = %if.end3.i75.if.then35.sink.split_crit_edge, %if.end3.i.if.then35.sink.split_crit_edge
  %call.i.i.i.i.sink = phi ptr [ %call.i.i.i.i, %if.end3.i.if.then35.sink.split_crit_edge ], [ %call.i.i.i.i63, %if.end3.i75.if.then35.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i.sink) #12
  br label %if.then35

if.then35:                                        ; preds = %if.then35.sink.split, %if.end3.i75.if.then35_crit_edge, %if.end.i65.if.then35_crit_edge, %sw.bb33.if.then35_crit_edge, %if.end3.i.if.then35_crit_edge, %if.end.i.if.then35_crit_edge, %if.then31.if.then35_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end28.cleanup_crit_edge, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ 0, %if.then35 ], [ -22, %entry.cleanup_crit_edge ], [ %call27, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfc_bctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %debug = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 21
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.201, i32 noundef %cmd, ptr noundef %arg) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %cmd, label %do.end53 [
    i32 38402, label %do.body3
    i32 38658, label %do.body15
    i32 38914, label %do.body32
    i32 512, label %sw.bb47
    i32 768, label %sw.bb49
  ]

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %5 = ptrtoint ptr %arg to i32
  %call11 = tail call fastcc i32 @set_hfcpci_rxtest(ptr noundef %ch, i32 noundef 33, i32 noundef %5)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  br label %sw.epilog

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %lock21 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock21) #12
  %6 = ptrtoint ptr %arg to i32
  %call28 = tail call fastcc i32 @set_hfcpci_rxtest(ptr noundef %ch, i32 noundef 34, i32 noundef %6)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call23) #12
  br label %sw.epilog

do.body32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %lock38 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock38) #12
  %nr = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  %call45 = tail call fastcc i32 @mode_hfcpci(ptr noundef %ch, i32 noundef %8, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock38, i32 noundef %call40) #12
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %Flags = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 2
  %call48 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %Flags) #12
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %lock.i = getelementptr inbounds %struct.hfc_pci, ptr %10, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  tail call void @mISDN_clear_bchannel(ptr noundef %ch) #12
  %nr.i = getelementptr inbounds %struct.bchannel, ptr %ch, i32 0, i32 1
  %11 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr.i, align 4
  %call5.i = tail call fastcc i32 @mode_hfcpci(ptr noundef %ch, i32 noundef %12, i32 noundef 0) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 1
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %protocol, align 4
  %peer = getelementptr inbounds %struct.mISDNchannel, ptr %ch, i32 0, i32 6
  %14 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %peer, align 4
  tail call void @module_put(ptr noundef null) #12
  br label %sw.epilog

sw.bb49:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @mISDN_ctrl_bchannel(ptr noundef %ch, ptr noundef %arg) #12
  br label %sw.epilog

do.end53:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.201, i32 noundef %cmd) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end53, %sw.bb49, %sw.bb47, %do.body32, %do.body15, %do.body3
  %ret.0 = phi i32 [ -22, %do.end53 ], [ %call.i, %sw.bb49 ], [ 0, %sw.bb47 ], [ 0, %do.body32 ], [ %call28, %do.body15 ], [ %call11, %do.body3 ]
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_freebchannel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_freedchannel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_nt_timer3(ptr noundef %dch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %Flags = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %Flags) #12
  %int_m1 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %2 = ptrtoint ptr %int_m1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %int_m1, align 2
  %4 = and i8 %3, 127
  store i8 %4, ptr %int_m1, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !500
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %int_m1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %int_m1, align 2
  %pci_io = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %7 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_io, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %6) #12, !srcloc !465
  %nt_timer = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 15
  %9 = ptrtoint ptr %nt_timer to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %nt_timer, align 4
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags) #12
  %cfg = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %cfg, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.do.body13_crit_edge, label %if.then

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mst_m = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %13 = ptrtoint ptr %mst_m to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mst_m, align 1
  %15 = or i8 %14, 1
  store i8 %15, ptr %mst_m, align 1
  br label %do.body13

do.body13:                                        ; preds = %if.then, %entry.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !501
  tail call void @arm_heavy_mb() #12
  %mst_m17 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %mst_m17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mst_m17, align 1
  %18 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_io, align 4
  %add.ptr20 = getelementptr i8, ptr %19, i32 184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %17) #12, !srcloc !465
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %20 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %do.body13._queue_data.exit_crit_edge, label %if.end.i

do.body13._queue_data.exit_crit_edge:             ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %_queue_data.exit

if.end.i:                                         ; preds = %do.body13
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i._queue_data.exit_crit_edge, label %if.end3.i, !prof !463

if.end.i._queue_data.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_queue_data.exit

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %23, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %25, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %28 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %recv.i, align 4
  %30 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %29(ptr noundef %31, ptr noundef nonnull %call.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i._queue_data.exit_crit_edge, label %if.then7.i

if.end3.i._queue_data.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_queue_data.exit

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #12
  br label %_queue_data.exit

_queue_data.exit:                                 ; preds = %if.then7.i, %if.end3.i._queue_data.exit_crit_edge, %if.end.i._queue_data.exit_crit_edge, %do.body13._queue_data.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l1_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfcpci_fill_dfifo(ptr nocapture noundef %hc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 9, i32 15
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 4
  %2 = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %2)
  %3 = icmp eq i32 %2, 256
  br i1 %3, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_skb = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 9, i32 13
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %tx_idx = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 9, i32 14
  %8 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_idx, align 8
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %fifos = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 18
  %10 = ptrtoint ptr %fifos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fifos, align 4
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  %and12 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end25_crit_edge, label %do.end17

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %f1 = getelementptr inbounds %struct.dfifo, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %f1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %f1, align 2
  %conv = zext i8 %15 to i32
  %f2 = getelementptr inbounds %struct.dfifo, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %f2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %f2, align 1
  %conv19 = zext i8 %17 to i32
  %and22 = and i32 %conv, 15
  %arrayidx = getelementptr %struct.dfifo, ptr %11, i32 0, i32 5, i32 %and22
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv23 = zext i16 %20 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %conv19, i32 noundef %conv23) #15
  br label %if.end25

if.end25:                                         ; preds = %do.end17, %if.end10.if.end25_crit_edge
  %f126 = getelementptr inbounds %struct.dfifo, ptr %11, i32 0, i32 2
  %21 = ptrtoint ptr %f126 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %f126, align 2
  %conv27 = zext i8 %22 to i32
  %f228 = getelementptr inbounds %struct.dfifo, ptr %11, i32 0, i32 3
  %23 = ptrtoint ptr %f228 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %f228, align 1
  %conv29 = zext i8 %24 to i32
  %sub30 = sub nsw i32 %conv27, %conv29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %cmp31 = icmp slt i32 %sub30, 0
  %add = add nsw i32 %sub30, 16
  %spec.select = select i1 %cmp31, i32 %add, i32 %sub30
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %spec.select)
  %cmp35 = icmp sgt i32 %spec.select, 14
  br i1 %cmp35, label %if.then37, label %if.end48

if.then37:                                        ; preds = %if.end25
  %25 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug, align 4
  %and39 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then37.cleanup_crit_edge, label %do.end44

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #15
  br label %cleanup

if.end48:                                         ; preds = %if.end25
  %27 = and i8 %24, 15
  %and52 = zext i8 %27 to i32
  %z2 = getelementptr %struct.dfifo, ptr %11, i32 0, i32 5, i32 %and52, i32 1
  %28 = ptrtoint ptr %z2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %z2, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv54 = zext i16 %30 to i32
  %31 = and i8 %22, 15
  %and58 = zext i8 %31 to i32
  %arrayidx59 = getelementptr %struct.dfifo, ptr %11, i32 0, i32 5, i32 %and58
  %32 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx59, align 2
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv61 = zext i16 %34 to i32
  %35 = xor i32 %conv61, -1
  %sub63 = add nsw i32 %35, %conv54
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub63)
  %cmp64 = icmp slt i32 %sub63, 1
  %add67 = add nsw i32 %sub63, 512
  %spec.select219 = select i1 %cmp64, i32 %add67, i32 %sub63
  %36 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug, align 4
  %and70 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end48.if.end78_crit_edge, label %do.end75

if.end48.if.end78_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

do.end75:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %sub, i32 noundef %spec.select219) #15
  br label %if.end78

if.end78:                                         ; preds = %do.end75, %if.end48.if.end78_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %spec.select219)
  %cmp79 = icmp sgt i32 %sub, %spec.select219
  br i1 %cmp79, label %if.then81, label %if.end92

if.then81:                                        ; preds = %if.end78
  %38 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug, align 4
  %and83 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.then81.cleanup_crit_edge, label %do.end88

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end88:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  br label %cleanup

if.end92:                                         ; preds = %if.end78
  %40 = ptrtoint ptr %f126 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %f126, align 2
  %42 = and i8 %41, 15
  %and96 = zext i8 %42 to i32
  %arrayidx97 = getelementptr %struct.dfifo, ptr %11, i32 0, i32 5, i32 %and96
  %43 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx97, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %conv99 = zext i16 %45 to i32
  %add104 = add i8 %41, 1
  %and105 = and i8 %add104, 15
  %or = or i8 %and105, 16
  %46 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 19
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_idx, align 8
  %add.ptr = getelementptr i8, ptr %49, i32 %51
  %add.ptr117 = getelementptr i8, ptr %11, i32 %conv99
  %sub125 = sub nsw i32 512, %conv99
  %52 = tail call i32 @llvm.smin.i32(i32 %sub125, i32 %sub)
  %53 = call ptr @memcpy(ptr %add.ptr117, ptr %add.ptr, i32 %52)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub125)
  %tobool131.not.not = icmp sgt i32 %sub, %sub125
  br i1 %tobool131.not.not, label %if.then132, label %if.end92.if.end136_crit_edge

if.end92.if.end136_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then132:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  %sub130 = sub i32 %sub, %52
  %add.ptr135 = getelementptr i8, ptr %add.ptr, i32 %52
  %54 = call ptr @memcpy(ptr %11, ptr %add.ptr135, i32 %sub130)
  br label %if.end136

if.end136:                                        ; preds = %if.then132, %if.end92.if.end136_crit_edge
  %55 = trunc i32 %sub to i16
  %56 = add i16 %45, %55
  %conv137 = and i16 %56, 511
  %57 = tail call i16 @llvm.bswap.i16(i16 %conv137)
  %and140 = zext i8 %and105 to i32
  %arrayidx141 = getelementptr %struct.dfifo, ptr %11, i32 0, i32 5, i32 %and140
  %58 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %arrayidx141, align 2
  %59 = ptrtoint ptr %f126 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %f126, align 2
  %61 = and i8 %60, 15
  %and147 = zext i8 %61 to i32
  %arrayidx148 = getelementptr %struct.dfifo, ptr %11, i32 0, i32 5, i32 %and147
  %62 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %57, ptr %arrayidx148, align 2
  store i8 %or, ptr %f126, align 2
  %63 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_skb, align 4
  %len152 = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %len152 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len152, align 4
  %67 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %tx_idx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end136, %do.end88, %if.then81.cleanup_crit_edge, %do.end44, %if.then37.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_ch_frame(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_l1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfc_l1callback(ptr noundef %dch, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %cmd, label %sw.default [
    i32 33538, label %entry.sw.bb_crit_edge
    i32 33794, label %entry.sw.bb_crit_edge151
    i32 35330, label %do.body7
    i32 35842, label %sw.bb44
    i32 35586, label %do.body75
    i32 258, label %sw.bb81
    i32 514, label %sw.bb84
  ]

entry.sw.bb_crit_edge151:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge151
  %cfg = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %cfg, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %sw.bb.do.body_crit_edge, label %if.then

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %mst_m = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %mst_m to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mst_m, align 1
  %8 = or i8 %7, 1
  store i8 %8, ptr %mst_m, align 1
  br label %do.body

do.body:                                          ; preds = %if.then, %sw.bb.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !502
  tail call void @arm_heavy_mb() #12
  %mst_m4 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %9 = ptrtoint ptr %mst_m4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mst_m4, align 1
  %pci_io = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %11 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_io, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %10) #12, !srcloc !465
  br label %cleanup

do.body7:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !503
  tail call void @arm_heavy_mb() #12
  %pci_io11 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %13 = ptrtoint ptr %pci_io11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_io11, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 19) #12, !srcloc !465
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1288488) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !504
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %pci_io11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_io11, align 4
  %add.ptr18 = getelementptr i8, ptr %17, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 3) #12, !srcloc !465
  %cfg19 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %cfg19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %cfg19, align 4
  %20 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %do.body7.do.body29_crit_edge, label %if.then22

do.body7.do.body29_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

if.then22:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %mst_m24 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %mst_m24 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mst_m24, align 1
  %23 = or i8 %22, 1
  store i8 %23, ptr %mst_m24, align 1
  br label %do.body29

do.body29:                                        ; preds = %if.then22, %do.body7.do.body29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !505
  tail call void @arm_heavy_mb() #12
  %mst_m33 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %24 = ptrtoint ptr %mst_m33 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mst_m33, align 1
  %26 = ptrtoint ptr %pci_io11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_io11, align 4
  %add.ptr36 = getelementptr i8, ptr %27, i32 184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %25) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !506
  tail call void @arm_heavy_mb() #12
  %28 = ptrtoint ptr %pci_io11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_io11, align 4
  %add.ptr42 = getelementptr i8, ptr %29, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42, i8 96) #12, !srcloc !465
  %l1 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 5
  %30 = ptrtoint ptr %l1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %l1, align 8
  %call43 = tail call i32 @l1_event(ptr noundef %31, i32 noundef 37122) #12
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  %mst_m46 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %mst_m46 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mst_m46, align 1
  %34 = and i8 %33, -2
  store i8 %34, ptr %mst_m46, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !507
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %mst_m46 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mst_m46, align 1
  %pci_io55 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %37 = ptrtoint ptr %pci_io55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci_io55, align 4
  %add.ptr56 = getelementptr i8, ptr %38, i32 184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56, i8 %36) #12, !srcloc !465
  %squeue = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 11
  tail call void @skb_queue_purge(ptr noundef %squeue) #12
  %tx_skb = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 13
  %39 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_skb, align 4
  %tobool57.not = icmp eq ptr %40, null
  br i1 %tobool57.not, label %sw.bb44.if.end61_crit_edge, label %if.then58

sw.bb44.if.end61_crit_edge:                       ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then58:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %40) #12
  %41 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %tx_skb, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %sw.bb44.if.end61_crit_edge
  %tx_idx = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 14
  %42 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %tx_idx, align 8
  %rx_skb = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 9
  %43 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_skb, align 4
  %tobool62.not = icmp eq ptr %44, null
  br i1 %tobool62.not, label %if.end61.if.end66_crit_edge, label %if.then63

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %44) #12
  %45 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %rx_skb, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end61.if.end66_crit_edge
  %Flags = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call67 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %Flags) #12
  %call69 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end66.cleanup_crit_edge, label %if.then71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 8
  %call72 = tail call i32 @del_timer(ptr noundef %timer) #12
  br label %cleanup

do.body75:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !508
  tail call void @arm_heavy_mb() #12
  %pci_io79 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %46 = ptrtoint ptr %pci_io79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci_io79, align 4
  %add.ptr80 = getelementptr i8, ptr %47, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr80, i8 64) #12, !srcloc !465
  br label %cleanup

sw.bb81:                                          ; preds = %entry
  %Flags82 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call83 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %Flags82) #12
  %peer.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %48 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %sw.bb81.cleanup_crit_edge, label %if.end.i

sw.bb81.cleanup_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb81
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i, !prof !463

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %51, i32 8
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %52 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %53, i32 8
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 258, ptr %cb.i.i, align 1
  %id6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 4
  %55 = ptrtoint ptr %id6.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 65535, ptr %id6.i.i, align 1
  %recv.i = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %56 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %recv.i, align 4
  %58 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %peer.i, align 4
  %call5.i = tail call i32 %57(ptr noundef %59, ptr noundef nonnull %call.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.cleanup_crit_edge, label %if.then7.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i) #12
  br label %cleanup

sw.bb84:                                          ; preds = %entry
  %Flags85 = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 1
  %call86 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %Flags85) #12
  %peer.i134 = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 6
  %60 = ptrtoint ptr %peer.i134 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %peer.i134, align 4
  %tobool.not.i135 = icmp eq ptr %61, null
  br i1 %tobool.not.i135, label %sw.bb84.cleanup_crit_edge, label %if.end.i138

sw.bb84.cleanup_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i138:                                      ; preds = %sw.bb84
  %call.i.i.i.i136 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i.i137 = icmp eq ptr %call.i.i.i.i136, null
  br i1 %tobool.not.i.i.i137, label %if.end.i138.cleanup_crit_edge, label %if.end3.i148, !prof !463

if.end.i138.cleanup_crit_edge:                    ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i148:                                     ; preds = %if.end.i138
  %data.i.i.i.i139 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i136, i32 0, i32 19
  %62 = ptrtoint ptr %data.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i.i.i139, align 4
  %add.ptr.i.i.i.i140 = getelementptr i8, ptr %63, i32 8
  store ptr %add.ptr.i.i.i.i140, ptr %data.i.i.i.i139, align 4
  %tail.i.i.i.i141 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i136, i32 0, i32 16
  %64 = ptrtoint ptr %tail.i.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i.i.i141, align 8
  %add.ptr1.i.i.i.i142 = getelementptr i8, ptr %65, i32 8
  store ptr %add.ptr1.i.i.i.i142, ptr %tail.i.i.i.i141, align 8
  %cb.i.i143 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i136, i32 0, i32 3
  %66 = ptrtoint ptr %cb.i.i143 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 514, ptr %cb.i.i143, align 1
  %id6.i.i144 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i136, i32 0, i32 3, i32 4
  %67 = ptrtoint ptr %id6.i.i144 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 65535, ptr %id6.i.i144, align 1
  %recv.i145 = getelementptr inbounds %struct.mISDNchannel, ptr %dch, i32 0, i32 8
  %68 = ptrtoint ptr %recv.i145 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %recv.i145, align 4
  %70 = ptrtoint ptr %peer.i134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %peer.i134, align 4
  %call5.i146 = tail call i32 %69(ptr noundef %71, ptr noundef nonnull %call.i.i.i.i136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i146)
  %tobool6.not.i147 = icmp eq i32 %call5.i146, 0
  br i1 %tobool6.not.i147, label %if.end3.i148.cleanup_crit_edge, label %if.then7.i149

if.end3.i148.cleanup_crit_edge:                   ; preds = %if.end3.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.i149:                                    ; preds = %if.end3.i148
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef nonnull %call.i.i.i.i136) #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  %debug = getelementptr inbounds %struct.dchannel, ptr %dch, i32 0, i32 15
  %72 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %debug, align 4
  %and89 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %sw.default.cleanup_crit_edge, label %do.end94

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end94:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.65, i32 noundef %cmd) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %sw.default.cleanup_crit_edge, %if.then7.i149, %if.end3.i148.cleanup_crit_edge, %if.end.i138.cleanup_crit_edge, %sw.bb84.cleanup_crit_edge, %if.then7.i, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb81.cleanup_crit_edge, %do.body75, %if.then71, %if.end66.cleanup_crit_edge, %do.body29, %do.body
  %retval.0 = phi i32 [ -1, %do.end94 ], [ -1, %sw.default.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ], [ 0, %if.then71 ], [ 0, %do.body75 ], [ 0, %do.body29 ], [ 0, %do.body ], [ 0, %sw.bb81.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ], [ 0, %if.then7.i ], [ 0, %sw.bb84.cleanup_crit_edge ], [ 0, %if.end.i138.cleanup_crit_edge ], [ 0, %if.end3.i148.cleanup_crit_edge ], [ 0, %if.then7.i149 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_card(ptr noundef %hc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #15
  %lock = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %int_m2.i = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 7
  %0 = ptrtoint ptr %int_m2.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %int_m2.i, align 1
  %2 = and i8 %1, -9
  store i8 %2, ptr %int_m2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  tail call void @arm_heavy_mb() #12
  %3 = ptrtoint ptr %int_m2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %int_m2.i, align 1
  %pci_io.i = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 16
  %5 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %4) #12, !srcloc !465
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  %irq = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 4
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @hfcpci_int, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.68, ptr noundef %hc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body19, label %do.end14

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %10) #15
  br label %cleanup

do.body19:                                        ; preds = %entry
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call fastcc void @reset_hfcpci(ptr noundef %hc)
  %timer.i = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 9, i32 8
  %chanlimit.i = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 1
  %bch.i = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 10
  %arrayidx5.i = getelementptr %struct.hfc_pci, ptr %hc, i32 0, i32 10, i32 1
  %irqcnt = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 5
  %int_m1 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 6
  %mst_m = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.else, %do.body19
  %flags.0 = phi i32 [ %call27, %do.body19 ], [ %call118, %if.else ]
  %cnt.0 = phi i32 [ 3, %do.body19 ], [ %dec, %if.else ]
  %call.i193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #15
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @hfcpci_dbusy_timer, i32 noundef 0, ptr noundef nonnull @.str.159, ptr noundef nonnull @inithfcpci.__key) #12
  %11 = ptrtoint ptr %chanlimit.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %chanlimit.i, align 1
  %call3.i = tail call fastcc i32 @mode_hfcpci(ptr noundef %bch.i, i32 noundef 1, i32 noundef -1) #12
  %call6.i = tail call fastcc i32 @mode_hfcpci(ptr noundef %arrayidx5.i, i32 noundef 2, i32 noundef -1) #12
  %12 = ptrtoint ptr %int_m2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %int_m2.i, align 1
  %14 = or i8 %13, 8
  store i8 %14, ptr %int_m2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !509
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %int_m2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %int_m2.i, align 1
  %17 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_io.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %18, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i196, i8 %16) #12, !srcloc !465
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #12
  br label %__here

__here:                                           ; preds = %while.cond
  %19 = tail call i32 @llvm.read_register.i32(metadata !453) #12
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@init_card, %__here) to i32), ptr %task_state_change, align 4
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 2, ptr %24, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !510
  %call102 = tail call i32 @schedule_timeout(i32 noundef 8) #12
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 8
  %28 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irqcnt, align 4
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %27, i32 noundef %29) #15
  %call118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %30 = ptrtoint ptr %int_m1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %int_m1, align 2
  %32 = and i8 %31, 127
  store i8 %32, ptr %int_m1, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !511
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %int_m1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %int_m1, align 2
  %35 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_io.i, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %34) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !512
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %mst_m to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mst_m, align 1
  %39 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_io.i, align 4
  %add.ptr137 = getelementptr i8, ptr %40, i32 184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr137, i8 %38) #12, !srcloc !465
  %41 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irqcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool139.not = icmp eq i32 %42, 0
  br i1 %tobool139.not, label %do.end143, label %if.else151

do.end143:                                        ; preds = %__here
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 8
  %sub = sub nuw nsw i32 4, %cnt.0
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %44, i32 noundef %sub) #15
  %cmp147 = icmp eq i32 %cnt.0, 1
  br i1 %cmp147, label %while.end, label %if.else

if.else:                                          ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @reset_hfcpci(ptr noundef %hc)
  %dec = add nsw i32 %cnt.0, -1
  br label %while.cond

if.else151:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call118) #12
  %initdone = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 2
  %45 = ptrtoint ptr %initdone to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %initdone, align 2
  br label %cleanup

while.end:                                        ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %int_m2.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %int_m2.i, align 1
  %48 = and i8 %47, -9
  store i8 %48, ptr %int_m2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  tail call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %int_m2.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %int_m2.i, align 1
  %51 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci_io.i, align 4
  %add.ptr.i199 = getelementptr i8, ptr %52, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i199, i8 %50) #12, !srcloc !465
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call118) #12
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 8
  %call156 = tail call ptr @free_irq(i32 noundef %54, ptr noundef %hc) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else151, %do.end14
  %retval.0 = phi i32 [ -5, %do.end14 ], [ 0, %if.else151 ], [ -5, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfcpci_setmode(ptr nocapture noundef %hc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 14
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  %clkdel = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %clkdel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 108, ptr %clkdel, align 2
  %sctrl = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 8
  %3 = ptrtoint ptr %sctrl to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sctrl, align 4
  %5 = or i8 %4, 4
  store i8 %5, ptr %sctrl, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %clkdel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 14, ptr %clkdel, align 2
  %sctrl10 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 8
  %7 = ptrtoint ptr %sctrl10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sctrl10, align 4
  %9 = and i8 %8, -5
  store i8 %9, ptr %sctrl10, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %.sink = phi i8 [ 1, %if.then ], [ 2, %if.else ]
  %10 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %10, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !513
  tail call void @arm_heavy_mb() #12
  %clkdel16 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %clkdel16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %clkdel16, align 2
  %pci_io = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 16
  %14 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_io, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 220
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %13) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !514
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %10, align 1
  %18 = or i8 %17, 16
  %19 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_io, align 4
  %add.ptr27 = getelementptr i8, ptr %20, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 %18) #12, !srcloc !465
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !515
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %10, align 1
  %24 = or i8 %23, 64
  %25 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_io, align 4
  %add.ptr37 = getelementptr i8, ptr %26, i32 192
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 %24) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !516
  tail call void @arm_heavy_mb() #12
  %sctrl41 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 8
  %27 = ptrtoint ptr %sctrl41 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %sctrl41, align 4
  %29 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_io, align 4
  %add.ptr44 = getelementptr i8, ptr %30, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44, i8 %28) #12, !srcloc !465
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfcpci_int(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %int_m2 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 7, i32 7
  %0 = ptrtoint ptr %int_m2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %int_m2, align 1
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci_io = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 7, i32 16
  %3 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_io, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 112
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !517
  %conv4 = zext i8 %5 to i32
  %and5 = and i32 %conv4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %6 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_io, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 120
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #12, !srcloc !468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !518
  %dch = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9
  %debug = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 15
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 4
  %and16 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then7.if.end25_crit_edge, label %do.end

if.then7.if.end25_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %conv21 = zext i8 %8 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %conv4, i32 noundef %conv21) #15
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.then7.if.end25_crit_edge
  %irqcnt = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 5
  %11 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irqcnt, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %irqcnt, align 4
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug, align 4
  %and28 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end25.if.end37_crit_edge, label %do.end33

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %conv35 = zext i8 %8 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %conv35) #15
  br label %if.end37

if.end37:                                         ; preds = %do.end33, %if.end25.if.end37_crit_edge
  %int_m1 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 7, i32 6
  %15 = ptrtoint ptr %int_m1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %int_m1, align 2
  %and41291 = and i8 %16, %8
  %17 = and i8 %and41291, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool45.not = icmp eq i8 %17, 0
  br i1 %tobool45.not, label %if.end37.if.end84_crit_edge, label %if.then46

if.end37.if.end84_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then46:                                        ; preds = %if.end37
  %18 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_io, align 4
  %add.ptr51 = getelementptr i8, ptr %19, i32 192
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51) #12, !srcloc !468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !519
  %21 = and i8 %20, 15
  %22 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug, align 4
  %and60 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then46.if.end70_crit_edge, label %do.end65

if.then46.if.end70_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = zext i8 %21 to i32
  br label %if.end70

do.end65:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 4
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  %conv68 = zext i8 %21 to i32
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %25, i32 noundef %conv68) #15
  br label %if.end70

if.end70:                                         ; preds = %do.end65, %if.then46.if.end70_crit_edge
  %conv71.pre-phi = phi i32 [ %.pre, %if.then46.if.end70_crit_edge ], [ %conv68, %do.end65 ]
  %state73 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 4
  %26 = ptrtoint ptr %state73 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv71.pre-phi, ptr %state73, align 4
  %Flags = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 1
  %call76 = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %Flags) #12
  %workq = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %workq) #12
  %and82 = and i8 %and41291, -65
  br label %if.end84

if.end84:                                         ; preds = %if.end70, %if.end37.if.end84_crit_edge
  %val.0 = phi i8 [ %and82, %if.end70 ], [ %and41291, %if.end37.if.end84_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %val.0)
  %tobool87.not = icmp sgt i8 %val.0, -1
  br i1 %tobool87.not, label %if.end84.if.end120_crit_edge, label %if.then88

if.end84.if.end120_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then88:                                        ; preds = %if.end84
  %protocol = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 7, i32 14
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp = icmp eq i8 %29, 2
  br i1 %cmp, label %if.then92, label %if.then88.if.end107_crit_edge

if.then88.if.end107_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then92:                                        ; preds = %if.then88
  %nt_timer = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 7, i32 15
  %30 = ptrtoint ptr %nt_timer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nt_timer, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %nt_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp94 = icmp slt i32 %dec, 0
  br i1 %cmp94, label %do.body97, label %if.then92.if.end107_crit_edge

if.then92.if.end107_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

do.body97:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  %Flags99 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 1
  %call100 = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %Flags99) #12
  %workq102 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i292 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %workq102) #12
  br label %if.end107

if.end107:                                        ; preds = %do.body97, %if.then92.if.end107_crit_edge, %if.then88.if.end107_crit_edge
  %and109 = and i8 %val.0, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !520
  tail call void @arm_heavy_mb() #12
  %ctmt = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %ctmt to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ctmt, align 1
  %35 = or i8 %34, -128
  %36 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_io, align 4
  %add.ptr119 = getelementptr i8, ptr %37, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr119, i8 %35) #12, !srcloc !465
  br label %if.end120

if.end120:                                        ; preds = %if.end107, %if.end84.if.end120_crit_edge
  %val.1 = phi i8 [ %and109, %if.end107 ], [ %val.0, %if.end84.if.end120_crit_edge ]
  %conv121 = zext i8 %val.1 to i32
  %and122 = and i32 %conv121, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end120.if.end143_crit_edge, label %if.then124

if.end120.if.end143_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then124:                                       ; preds = %if.end120
  %bswapped = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 7, i32 13
  %38 = ptrtoint ptr %bswapped to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bswapped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool127.not = icmp eq i8 %39, 0
  %cond = select i1 %tobool127.not, i32 1, i32 2
  %Flags.i = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 0, i32 2
  %40 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %Flags.i, align 4
  %42 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.then124.if.else.i_crit_edge, label %land.lhs.true.i

if.then124.if.else.i_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then124
  %bch.i = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10
  %nr.i = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 0, i32 1
  %43 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr.i, align 4
  %and.i = and i32 %44, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.Sel_BCS.exit_crit_edge

land.lhs.true.i.Sel_BCS.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then124.if.else.i_crit_edge
  %Flags8.i = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1, i32 2
  %45 = ptrtoint ptr %Flags8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %Flags8.i, align 4
  %47 = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool10.not.i = icmp eq i32 %47, 0
  br i1 %tobool10.not.i, label %if.else.i.if.else131_crit_edge, label %land.lhs.true11.i

if.else.i.if.else131_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else131

land.lhs.true11.i:                                ; preds = %if.else.i
  %arrayidx7.i = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1
  %nr14.i = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1, i32 1
  %48 = ptrtoint ptr %nr14.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr14.i, align 4
  %and15.i = and i32 %49, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true11.i.if.else131_crit_edge, label %land.lhs.true11.i.Sel_BCS.exit_crit_edge

land.lhs.true11.i.Sel_BCS.exit_crit_edge:         ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit

land.lhs.true11.i.if.else131_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else131

Sel_BCS.exit:                                     ; preds = %land.lhs.true11.i.Sel_BCS.exit_crit_edge, %land.lhs.true.i.Sel_BCS.exit_crit_edge
  %retval.0.i = phi ptr [ %bch.i, %land.lhs.true.i.Sel_BCS.exit_crit_edge ], [ %arrayidx7.i, %land.lhs.true11.i.Sel_BCS.exit_crit_edge ]
  %tobool129.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool129.not, label %Sel_BCS.exit.if.else131_crit_edge, label %if.then130

Sel_BCS.exit.if.else131_crit_edge:                ; preds = %Sel_BCS.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else131

if.then130:                                       ; preds = %Sel_BCS.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @main_rec_hfcpci(ptr noundef nonnull %retval.0.i)
  br label %if.end143

if.else131:                                       ; preds = %Sel_BCS.exit.if.else131_crit_edge, %land.lhs.true11.i.if.else131_crit_edge, %if.else.i.if.else131_crit_edge
  %50 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool134.not = icmp eq i32 %51, 0
  br i1 %tobool134.not, label %if.else131.if.end143_crit_edge, label %do.end138

if.else131.if.end143_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

do.end138:                                        ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #14
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #15
  br label %if.end143

if.end143:                                        ; preds = %do.end138, %if.else131.if.end143_crit_edge, %if.then130, %if.end120.if.end143_crit_edge
  %and145 = and i32 %conv121, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end143.if.end163_crit_edge, label %if.then147

if.end143.if.end163_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

if.then147:                                       ; preds = %if.end143
  %Flags.i293 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 0, i32 2
  %52 = ptrtoint ptr %Flags.i293 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %Flags.i293, align 4
  %54 = and i32 %53, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i294 = icmp eq i32 %54, 0
  br i1 %tobool.not.i294, label %if.then147.if.else.i302_crit_edge, label %land.lhs.true.i299

if.then147.if.else.i302_crit_edge:                ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i302

land.lhs.true.i299:                               ; preds = %if.then147
  %bch.i295 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10
  %nr.i296 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 0, i32 1
  %55 = ptrtoint ptr %nr.i296 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr.i296, align 4
  %and.i297 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i297)
  %tobool3.not.i298 = icmp eq i32 %and.i297, 0
  br i1 %tobool3.not.i298, label %land.lhs.true.i299.if.else.i302_crit_edge, label %land.lhs.true.i299.Sel_BCS.exit310_crit_edge

land.lhs.true.i299.Sel_BCS.exit310_crit_edge:     ; preds = %land.lhs.true.i299
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit310

land.lhs.true.i299.if.else.i302_crit_edge:        ; preds = %land.lhs.true.i299
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i302

if.else.i302:                                     ; preds = %land.lhs.true.i299.if.else.i302_crit_edge, %if.then147.if.else.i302_crit_edge
  %Flags8.i300 = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1, i32 2
  %57 = ptrtoint ptr %Flags8.i300 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %Flags8.i300, align 4
  %59 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool10.not.i301 = icmp eq i32 %59, 0
  br i1 %tobool10.not.i301, label %if.else.i302.if.else151_crit_edge, label %land.lhs.true11.i307

if.else.i302.if.else151_crit_edge:                ; preds = %if.else.i302
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else151

land.lhs.true11.i307:                             ; preds = %if.else.i302
  %arrayidx7.i303 = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1
  %nr14.i304 = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1, i32 1
  %60 = ptrtoint ptr %nr14.i304 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr14.i304, align 4
  %and15.i305 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i305)
  %tobool16.not.i306 = icmp eq i32 %and15.i305, 0
  br i1 %tobool16.not.i306, label %land.lhs.true11.i307.if.else151_crit_edge, label %land.lhs.true11.i307.Sel_BCS.exit310_crit_edge

land.lhs.true11.i307.Sel_BCS.exit310_crit_edge:   ; preds = %land.lhs.true11.i307
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit310

land.lhs.true11.i307.if.else151_crit_edge:        ; preds = %land.lhs.true11.i307
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else151

Sel_BCS.exit310:                                  ; preds = %land.lhs.true11.i307.Sel_BCS.exit310_crit_edge, %land.lhs.true.i299.Sel_BCS.exit310_crit_edge
  %retval.0.i309 = phi ptr [ %bch.i295, %land.lhs.true.i299.Sel_BCS.exit310_crit_edge ], [ %arrayidx7.i303, %land.lhs.true11.i307.Sel_BCS.exit310_crit_edge ]
  %tobool149.not = icmp eq ptr %retval.0.i309, null
  br i1 %tobool149.not, label %Sel_BCS.exit310.if.else151_crit_edge, label %if.then150

Sel_BCS.exit310.if.else151_crit_edge:             ; preds = %Sel_BCS.exit310
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else151

if.then150:                                       ; preds = %Sel_BCS.exit310
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @main_rec_hfcpci(ptr noundef nonnull %retval.0.i309)
  br label %if.end163

if.else151:                                       ; preds = %Sel_BCS.exit310.if.else151_crit_edge, %land.lhs.true11.i307.if.else151_crit_edge, %if.else.i302.if.else151_crit_edge
  %62 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool154.not = icmp eq i32 %63, 0
  br i1 %tobool154.not, label %if.else151.if.end163_crit_edge, label %do.end158

if.else151.if.end163_crit_edge:                   ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

do.end158:                                        ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #14
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #15
  br label %if.end163

if.end163:                                        ; preds = %do.end158, %if.else151.if.end163_crit_edge, %if.then150, %if.end143.if.end163_crit_edge
  %and165 = and i32 %conv121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end163.if.end188_crit_edge, label %if.then167

if.end163.if.end188_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.then167:                                       ; preds = %if.end163
  %bswapped169 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 7, i32 13
  %64 = ptrtoint ptr %bswapped169 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bswapped169, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool171.not = icmp eq i8 %65, 0
  %cond172 = select i1 %tobool171.not, i32 1, i32 2
  %Flags.i311 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 0, i32 2
  %66 = ptrtoint ptr %Flags.i311 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %Flags.i311, align 4
  %68 = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i312 = icmp eq i32 %68, 0
  br i1 %tobool.not.i312, label %if.then167.if.else.i320_crit_edge, label %land.lhs.true.i317

if.then167.if.else.i320_crit_edge:                ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i320

land.lhs.true.i317:                               ; preds = %if.then167
  %bch.i313 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10
  %nr.i314 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 0, i32 1
  %69 = ptrtoint ptr %nr.i314 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr.i314, align 4
  %and.i315 = and i32 %70, %cond172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i315)
  %tobool3.not.i316 = icmp eq i32 %and.i315, 0
  br i1 %tobool3.not.i316, label %land.lhs.true.i317.if.else.i320_crit_edge, label %land.lhs.true.i317.Sel_BCS.exit328_crit_edge

land.lhs.true.i317.Sel_BCS.exit328_crit_edge:     ; preds = %land.lhs.true.i317
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit328

land.lhs.true.i317.if.else.i320_crit_edge:        ; preds = %land.lhs.true.i317
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i320

if.else.i320:                                     ; preds = %land.lhs.true.i317.if.else.i320_crit_edge, %if.then167.if.else.i320_crit_edge
  %Flags8.i318 = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1, i32 2
  %71 = ptrtoint ptr %Flags8.i318 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %Flags8.i318, align 4
  %73 = and i32 %72, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool10.not.i319 = icmp eq i32 %73, 0
  br i1 %tobool10.not.i319, label %if.else.i320.if.else176_crit_edge, label %land.lhs.true11.i325

if.else.i320.if.else176_crit_edge:                ; preds = %if.else.i320
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else176

land.lhs.true11.i325:                             ; preds = %if.else.i320
  %arrayidx7.i321 = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1
  %nr14.i322 = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1, i32 1
  %74 = ptrtoint ptr %nr14.i322 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr14.i322, align 4
  %and15.i323 = and i32 %75, %cond172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i323)
  %tobool16.not.i324 = icmp eq i32 %and15.i323, 0
  br i1 %tobool16.not.i324, label %land.lhs.true11.i325.if.else176_crit_edge, label %land.lhs.true11.i325.Sel_BCS.exit328_crit_edge

land.lhs.true11.i325.Sel_BCS.exit328_crit_edge:   ; preds = %land.lhs.true11.i325
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit328

land.lhs.true11.i325.if.else176_crit_edge:        ; preds = %land.lhs.true11.i325
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else176

Sel_BCS.exit328:                                  ; preds = %land.lhs.true11.i325.Sel_BCS.exit328_crit_edge, %land.lhs.true.i317.Sel_BCS.exit328_crit_edge
  %retval.0.i327 = phi ptr [ %bch.i313, %land.lhs.true.i317.Sel_BCS.exit328_crit_edge ], [ %arrayidx7.i321, %land.lhs.true11.i325.Sel_BCS.exit328_crit_edge ]
  %tobool174.not = icmp eq ptr %retval.0.i327, null
  br i1 %tobool174.not, label %Sel_BCS.exit328.if.else176_crit_edge, label %if.then175

Sel_BCS.exit328.if.else176_crit_edge:             ; preds = %Sel_BCS.exit328
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else176

if.then175:                                       ; preds = %Sel_BCS.exit328
  %tx_skb.i = getelementptr inbounds %struct.bchannel, ptr %retval.0.i327, i32 0, i32 17
  %76 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i329 = icmp eq ptr %77, null
  br i1 %tobool.not.i329, label %if.then175.if.else.i332_crit_edge, label %land.lhs.true.i330

if.then175.if.else.i332_crit_edge:                ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i332

land.lhs.true.i330:                               ; preds = %if.then175
  %tx_idx.i = getelementptr inbounds %struct.bchannel, ptr %retval.0.i327, i32 0, i32 20
  %78 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_idx.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 6
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp.i = icmp ult i32 %79, %81
  br i1 %cmp.i, label %land.lhs.true.i330.if.end5.sink.split.i_crit_edge, label %land.lhs.true.i330.if.else.i332_crit_edge

land.lhs.true.i330.if.else.i332_crit_edge:        ; preds = %land.lhs.true.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i332

land.lhs.true.i330.if.end5.sink.split.i_crit_edge: ; preds = %land.lhs.true.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split.i

if.else.i332:                                     ; preds = %land.lhs.true.i330.if.else.i332_crit_edge, %if.then175.if.else.i332_crit_edge
  tail call void @consume_skb(ptr noundef %77) #12
  %call.i = tail call i32 @get_next_bframe(ptr noundef nonnull %retval.0.i327) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i331 = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i331, label %if.else.i332.if.end188_crit_edge, label %if.else.i332.if.end5.sink.split.i_crit_edge

if.else.i332.if.end5.sink.split.i_crit_edge:      ; preds = %if.else.i332
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split.i

if.else.i332.if.end188_crit_edge:                 ; preds = %if.else.i332
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.end5.sink.split.i:                             ; preds = %if.else.i332.if.end5.sink.split.i_crit_edge, %land.lhs.true.i330.if.end5.sink.split.i_crit_edge
  tail call fastcc void @hfcpci_fill_fifo(ptr noundef nonnull %retval.0.i327) #12
  br label %if.end188

if.else176:                                       ; preds = %Sel_BCS.exit328.if.else176_crit_edge, %land.lhs.true11.i325.if.else176_crit_edge, %if.else.i320.if.else176_crit_edge
  %82 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool179.not = icmp eq i32 %83, 0
  br i1 %tobool179.not, label %if.else176.if.end188_crit_edge, label %do.end183

if.else176.if.end188_crit_edge:                   ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

do.end183:                                        ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #14
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #15
  br label %if.end188

if.end188:                                        ; preds = %do.end183, %if.else176.if.end188_crit_edge, %if.end5.sink.split.i, %if.else.i332.if.end188_crit_edge, %if.end163.if.end188_crit_edge
  %and190 = and i32 %conv121, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end188.if.end208_crit_edge, label %if.then192

if.end188.if.end208_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end208

if.then192:                                       ; preds = %if.end188
  %Flags.i333 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 0, i32 2
  %84 = ptrtoint ptr %Flags.i333 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %Flags.i333, align 4
  %86 = and i32 %85, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i334 = icmp eq i32 %86, 0
  br i1 %tobool.not.i334, label %if.then192.if.else.i342_crit_edge, label %land.lhs.true.i339

if.then192.if.else.i342_crit_edge:                ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i342

land.lhs.true.i339:                               ; preds = %if.then192
  %bch.i335 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10
  %nr.i336 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 0, i32 1
  %87 = ptrtoint ptr %nr.i336 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nr.i336, align 4
  %and.i337 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i337)
  %tobool3.not.i338 = icmp eq i32 %and.i337, 0
  br i1 %tobool3.not.i338, label %land.lhs.true.i339.if.else.i342_crit_edge, label %land.lhs.true.i339.Sel_BCS.exit350_crit_edge

land.lhs.true.i339.Sel_BCS.exit350_crit_edge:     ; preds = %land.lhs.true.i339
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit350

land.lhs.true.i339.if.else.i342_crit_edge:        ; preds = %land.lhs.true.i339
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i342

if.else.i342:                                     ; preds = %land.lhs.true.i339.if.else.i342_crit_edge, %if.then192.if.else.i342_crit_edge
  %Flags8.i340 = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1, i32 2
  %89 = ptrtoint ptr %Flags8.i340 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %Flags8.i340, align 4
  %91 = and i32 %90, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool10.not.i341 = icmp eq i32 %91, 0
  br i1 %tobool10.not.i341, label %if.else.i342.if.else196_crit_edge, label %land.lhs.true11.i347

if.else.i342.if.else196_crit_edge:                ; preds = %if.else.i342
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else196

land.lhs.true11.i347:                             ; preds = %if.else.i342
  %arrayidx7.i343 = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1
  %nr14.i344 = getelementptr %struct.hfc_pci, ptr %dev_id, i32 0, i32 10, i32 1, i32 1
  %92 = ptrtoint ptr %nr14.i344 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nr14.i344, align 4
  %and15.i345 = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i345)
  %tobool16.not.i346 = icmp eq i32 %and15.i345, 0
  br i1 %tobool16.not.i346, label %land.lhs.true11.i347.if.else196_crit_edge, label %land.lhs.true11.i347.Sel_BCS.exit350_crit_edge

land.lhs.true11.i347.Sel_BCS.exit350_crit_edge:   ; preds = %land.lhs.true11.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit350

land.lhs.true11.i347.if.else196_crit_edge:        ; preds = %land.lhs.true11.i347
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else196

Sel_BCS.exit350:                                  ; preds = %land.lhs.true11.i347.Sel_BCS.exit350_crit_edge, %land.lhs.true.i339.Sel_BCS.exit350_crit_edge
  %retval.0.i349 = phi ptr [ %bch.i335, %land.lhs.true.i339.Sel_BCS.exit350_crit_edge ], [ %arrayidx7.i343, %land.lhs.true11.i347.Sel_BCS.exit350_crit_edge ]
  %tobool194.not = icmp eq ptr %retval.0.i349, null
  br i1 %tobool194.not, label %Sel_BCS.exit350.if.else196_crit_edge, label %if.then195

Sel_BCS.exit350.if.else196_crit_edge:             ; preds = %Sel_BCS.exit350
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else196

if.then195:                                       ; preds = %Sel_BCS.exit350
  %tx_skb.i351 = getelementptr inbounds %struct.bchannel, ptr %retval.0.i349, i32 0, i32 17
  %94 = ptrtoint ptr %tx_skb.i351 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_skb.i351, align 4
  %tobool.not.i352 = icmp eq ptr %95, null
  br i1 %tobool.not.i352, label %if.then195.if.else.i359_crit_edge, label %land.lhs.true.i356

if.then195.if.else.i359_crit_edge:                ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i359

land.lhs.true.i356:                               ; preds = %if.then195
  %tx_idx.i353 = getelementptr inbounds %struct.bchannel, ptr %retval.0.i349, i32 0, i32 20
  %96 = ptrtoint ptr %tx_idx.i353 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_idx.i353, align 4
  %len.i354 = getelementptr inbounds %struct.sk_buff, ptr %95, i32 0, i32 6
  %98 = ptrtoint ptr %len.i354 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len.i354, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp.i355 = icmp ult i32 %97, %99
  br i1 %cmp.i355, label %land.lhs.true.i356.if.end5.sink.split.i360_crit_edge, label %land.lhs.true.i356.if.else.i359_crit_edge

land.lhs.true.i356.if.else.i359_crit_edge:        ; preds = %land.lhs.true.i356
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i359

land.lhs.true.i356.if.end5.sink.split.i360_crit_edge: ; preds = %land.lhs.true.i356
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split.i360

if.else.i359:                                     ; preds = %land.lhs.true.i356.if.else.i359_crit_edge, %if.then195.if.else.i359_crit_edge
  tail call void @consume_skb(ptr noundef %95) #12
  %call.i357 = tail call i32 @get_next_bframe(ptr noundef nonnull %retval.0.i349) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i357)
  %tobool3.not.i358 = icmp eq i32 %call.i357, 0
  br i1 %tobool3.not.i358, label %if.else.i359.if.end208_crit_edge, label %if.else.i359.if.end5.sink.split.i360_crit_edge

if.else.i359.if.end5.sink.split.i360_crit_edge:   ; preds = %if.else.i359
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split.i360

if.else.i359.if.end208_crit_edge:                 ; preds = %if.else.i359
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end208

if.end5.sink.split.i360:                          ; preds = %if.else.i359.if.end5.sink.split.i360_crit_edge, %land.lhs.true.i356.if.end5.sink.split.i360_crit_edge
  tail call fastcc void @hfcpci_fill_fifo(ptr noundef nonnull %retval.0.i349) #12
  br label %if.end208

if.else196:                                       ; preds = %Sel_BCS.exit350.if.else196_crit_edge, %land.lhs.true11.i347.if.else196_crit_edge, %if.else.i342.if.else196_crit_edge
  %100 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool199.not = icmp eq i32 %101, 0
  br i1 %tobool199.not, label %if.else196.if.end208_crit_edge, label %do.end203

if.else196.if.end208_crit_edge:                   ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end208

do.end203:                                        ; preds = %if.else196
  call void @__sanitizer_cov_trace_pc() #14
  %call205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #15
  br label %if.end208

if.end208:                                        ; preds = %do.end203, %if.else196.if.end208_crit_edge, %if.end5.sink.split.i360, %if.else.i359.if.end208_crit_edge, %if.end188.if.end208_crit_edge
  %and210 = and i32 %conv121, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %if.end208.if.end214_crit_edge, label %if.then212

if.end208.if.end214_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end214

if.then212:                                       ; preds = %if.end208
  %fifos.i = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 7, i32 18
  %102 = ptrtoint ptr %fifos.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fifos.i, align 4
  %d_rx.i = getelementptr inbounds %struct.anon.146, ptr %103, i32 0, i32 1
  %f1.i = getelementptr inbounds %struct.anon.146, ptr %103, i32 0, i32 1, i32 2
  %f2.i = getelementptr inbounds %struct.anon.146, ptr %103, i32 0, i32 1, i32 3
  %104 = ptrtoint ptr %f1.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %f1.i, align 2
  %106 = and i8 %105, 15
  %107 = ptrtoint ptr %f2.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %f2.i, align 1
  %109 = and i8 %108, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %106, i8 %109)
  %cmp.not3.i = icmp eq i8 %106, %109
  br i1 %cmp.not3.i, label %if.then212.if.end214_crit_edge, label %land.rhs.lr.ph.i

if.then212.if.end214_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end214

land.rhs.lr.ph.i:                                 ; preds = %if.then212
  %rx_skb.i = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 9
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end119.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %and36.in.i = phi i8 [ %109, %land.rhs.lr.ph.i ], [ %174, %if.end119.i.land.rhs.i_crit_edge ]
  %110 = phi i8 [ %108, %land.rhs.lr.ph.i ], [ %173, %if.end119.i.land.rhs.i_crit_edge ]
  %111 = phi i8 [ %105, %land.rhs.lr.ph.i ], [ %170, %if.end119.i.land.rhs.i_crit_edge ]
  %count.04.i = phi i32 [ 5, %land.rhs.lr.ph.i ], [ %dec.i, %if.end119.i.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %count.04.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.04.i)
  %tobool.not.i362 = icmp eq i32 %count.04.i, 0
  br i1 %tobool.not.i362, label %land.rhs.i.if.end214_crit_edge, label %while.body.i

land.rhs.i.if.end214_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end214

while.body.i:                                     ; preds = %land.rhs.i
  %and36.i = zext i8 %and36.in.i to i32
  %arrayidx.i = getelementptr %struct.anon.146, ptr %103, i32 0, i32 1, i32 5, i32 %and36.i
  %112 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx.i, align 2
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #12
  %conv8.i = zext i16 %114 to i32
  %z2.i = getelementptr %struct.anon.146, ptr %103, i32 0, i32 1, i32 5, i32 %and36.i, i32 1
  %115 = ptrtoint ptr %z2.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %z2.i, align 2
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #12
  %conv9.i = zext i16 %117 to i32
  %sub.i = sub nsw i32 %conv8.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp10.i = icmp slt i32 %sub.i, 0
  %add.i = add nsw i32 %sub.i, 512
  %spec.select.i = select i1 %cmp10.i, i32 %add.i, i32 %sub.i
  %inc.i = add nsw i32 %spec.select.i, 1
  %118 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %debug, align 4
  %and12.i = and i32 %119, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %while.body.i.if.end23.i_crit_edge, label %do.end.i

while.body.i.if.end23.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv16.i = zext i8 %111 to i32
  %conv18.i = zext i8 %110 to i32
  %call.i363 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %conv16.i, i32 noundef %conv18.i, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %inc.i) #15
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end.i, %while.body.i.if.end23.i_crit_edge
  %120 = add nsw i32 %spec.select.i, -263
  call void @__sanitizer_cov_trace_const_cmp4(i32 -260, i32 %120)
  %121 = icmp ult i32 %120, -260
  br i1 %121, label %if.end23.i.if.then33.i_crit_edge, label %lor.lhs.false28.i

if.end23.i.if.then33.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

lor.lhs.false28.i:                                ; preds = %if.end23.i
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx.i, align 2
  %124 = tail call i16 @llvm.bswap.i16(i16 %123) #12
  %idxprom.i = zext i16 %124 to i32
  %arrayidx30.i = getelementptr [512 x i8], ptr %d_rx.i, i32 0, i32 %idxprom.i
  %125 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool32.not.i = icmp eq i8 %126, 0
  br i1 %tobool32.not.i, label %if.else.i364, label %lor.lhs.false28.i.if.then33.i_crit_edge

lor.lhs.false28.i.if.then33.i_crit_edge:          ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33.i

if.then33.i:                                      ; preds = %lor.lhs.false28.i.if.then33.i_crit_edge, %if.end23.i.if.then33.i_crit_edge
  %127 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %debug, align 4
  %and35.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.then33.i.if.end48.i_crit_edge, label %do.end40.i

if.then33.i.if.end48.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

do.end40.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx.i, align 2
  %131 = tail call i16 @llvm.bswap.i16(i16 %130) #12
  %idxprom44.i = zext i16 %131 to i32
  %arrayidx45.i = getelementptr [512 x i8], ptr %d_rx.i, i32 0, i32 %idxprom44.i
  %132 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx45.i, align 1
  %conv46.i = zext i8 %133 to i32
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %inc.i, i32 noundef %conv46.i) #15
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end40.i, %if.then33.i.if.end48.i_crit_edge
  %134 = ptrtoint ptr %f2.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %f2.i, align 1
  %136 = add i8 %135, 1
  %137 = and i8 %136, 15
  %138 = or i8 %137, 16
  store i8 %138, ptr %f2.i, align 1
  %139 = ptrtoint ptr %z2.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %z2.i, align 2
  %141 = tail call i16 @llvm.bswap.i16(i16 %140) #12
  %142 = trunc i32 %inc.i to i16
  %143 = add i16 %141, %142
  %conv59.i = and i16 %143, 511
  %144 = tail call i16 @llvm.bswap.i16(i16 %conv59.i) #12
  %and63.i = zext i8 %137 to i32
  %z265.i = getelementptr %struct.anon.146, ptr %103, i32 0, i32 1, i32 5, i32 %and63.i, i32 1
  %145 = ptrtoint ptr %z265.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %z265.i, align 2
  br label %if.end119.i

if.else.i364:                                     ; preds = %lor.lhs.false28.i
  %sub66.i = add nsw i32 %spec.select.i, -2
  %add.i.i = add nuw nsw i32 %spec.select.i, 6
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end73.i, label %if.end76.i, !prof !463

do.end73.i:                                       ; preds = %if.else.i364
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %rx_skb.i, align 4
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #15
  br label %if.end214

if.end76.i:                                       ; preds = %if.else.i364
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %147 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %148, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %149 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %150, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %151 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call.i.i.i, ptr %rx_skb.i, align 4
  %call79.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub66.i) #12
  %152 = ptrtoint ptr %z2.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %z2.i, align 2
  %154 = tail call i16 @llvm.bswap.i16(i16 %153) #12
  %conv81.i = zext i16 %154 to i32
  %add82.i = add nuw nsw i32 %sub66.i, %conv81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %add82.i)
  %cmp83.i = icmp ult i32 %add82.i, 513
  %sub89.i = sub nsw i32 512, %conv81.i
  %maxlen.0.i = select i1 %cmp83.i, i32 %sub66.i, i32 %sub89.i
  %add.ptr.i = getelementptr i8, ptr %d_rx.i, i32 %conv81.i
  %155 = call ptr @memcpy(ptr %call79.i, ptr %add.ptr.i, i32 %maxlen.0.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub66.i, i32 %maxlen.0.i)
  %tobool95.not.i = icmp eq i32 %sub66.i, %maxlen.0.i
  br i1 %tobool95.not.i, label %if.end76.i.if.end100.i_crit_edge, label %if.then96.i

if.end76.i.if.end100.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100.i

if.then96.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub94.i = sub nsw i32 %sub66.i, %maxlen.0.i
  %add.ptr97.i = getelementptr i8, ptr %call79.i, i32 %maxlen.0.i
  %156 = call ptr @memcpy(ptr %add.ptr97.i, ptr %d_rx.i, i32 %sub94.i)
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.then96.i, %if.end76.i.if.end100.i_crit_edge
  %157 = ptrtoint ptr %f2.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %f2.i, align 1
  %159 = add i8 %158, 1
  %160 = and i8 %159, 15
  %161 = or i8 %160, 16
  store i8 %161, ptr %f2.i, align 1
  %162 = ptrtoint ptr %z2.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %z2.i, align 2
  %164 = tail call i16 @llvm.bswap.i16(i16 %163) #12
  %165 = trunc i32 %inc.i to i16
  %166 = add i16 %164, %165
  %conv112.i = and i16 %166, 511
  %167 = tail call i16 @llvm.bswap.i16(i16 %conv112.i) #12
  %and116.i = zext i8 %160 to i32
  %z2118.i = getelementptr %struct.anon.146, ptr %103, i32 0, i32 1, i32 5, i32 %and116.i, i32 1
  %168 = ptrtoint ptr %z2118.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %z2118.i, align 2
  tail call void @recv_Dchannel(ptr noundef %dch) #12
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.end100.i, %if.end48.i
  %169 = ptrtoint ptr %f1.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %f1.i, align 2
  %171 = and i8 %170, 15
  %172 = ptrtoint ptr %f2.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %f2.i, align 1
  %174 = and i8 %173, 15
  %cmp.not.i = icmp eq i8 %171, %174
  br i1 %cmp.not.i, label %if.end119.i.if.end214_crit_edge, label %if.end119.i.land.rhs.i_crit_edge

if.end119.i.land.rhs.i_crit_edge:                 ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end119.i.if.end214_crit_edge:                  ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end214

if.end214:                                        ; preds = %if.end119.i.if.end214_crit_edge, %do.end73.i, %land.rhs.i.if.end214_crit_edge, %if.then212.if.end214_crit_edge, %if.end208.if.end214_crit_edge
  %and216 = and i32 %conv121, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %if.end214.cleanup_crit_edge, label %if.then218

if.end214.cleanup_crit_edge:                      ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then218:                                       ; preds = %if.end214
  %Flags220 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 1
  %call221 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %Flags220) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.then218.if.end226_crit_edge, label %if.then223

if.then218.if.end226_crit_edge:                   ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end226

if.then223:                                       ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #14
  %timer = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 8
  %call225 = tail call i32 @del_timer(ptr noundef %timer) #12
  br label %if.end226

if.end226:                                        ; preds = %if.then223, %if.then218.if.end226_crit_edge
  %tx_skb.i365 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 13
  %175 = ptrtoint ptr %tx_skb.i365 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tx_skb.i365, align 4
  %tobool.not.i366 = icmp eq ptr %176, null
  br i1 %tobool.not.i366, label %if.end226.if.else.i373_crit_edge, label %land.lhs.true.i370

if.end226.if.else.i373_crit_edge:                 ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i373

land.lhs.true.i370:                               ; preds = %if.end226
  %tx_idx.i367 = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 14
  %177 = ptrtoint ptr %tx_idx.i367 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %tx_idx.i367, align 8
  %len.i368 = getelementptr inbounds %struct.sk_buff, ptr %176, i32 0, i32 6
  %179 = ptrtoint ptr %len.i368 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %len.i368, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %180)
  %cmp.i369 = icmp ult i32 %178, %180
  br i1 %cmp.i369, label %land.lhs.true.i370.if.end6.sink.split.i_crit_edge, label %land.lhs.true.i370.if.else.i373_crit_edge

land.lhs.true.i370.if.else.i373_crit_edge:        ; preds = %land.lhs.true.i370
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i373

land.lhs.true.i370.if.end6.sink.split.i_crit_edge: ; preds = %land.lhs.true.i370
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.sink.split.i

if.else.i373:                                     ; preds = %land.lhs.true.i370.if.else.i373_crit_edge, %if.end226.if.else.i373_crit_edge
  tail call void @consume_skb(ptr noundef %176) #12
  %call.i371 = tail call i32 @get_next_dframe(ptr noundef %dch) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371)
  %tobool3.not.i372 = icmp eq i32 %call.i371, 0
  br i1 %tobool3.not.i372, label %if.else.i373.cleanup_crit_edge, label %if.else.i373.if.end6.sink.split.i_crit_edge

if.else.i373.if.end6.sink.split.i_crit_edge:      ; preds = %if.else.i373
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.sink.split.i

if.else.i373.cleanup_crit_edge:                   ; preds = %if.else.i373
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.sink.split.i:                             ; preds = %if.else.i373.if.end6.sink.split.i_crit_edge, %land.lhs.true.i370.if.end6.sink.split.i_crit_edge
  %hw5.i = getelementptr inbounds %struct.hfc_pci, ptr %dev_id, i32 0, i32 9, i32 6
  %181 = ptrtoint ptr %hw5.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw5.i, align 4
  tail call fastcc void @hfcpci_fill_dfifo(ptr noundef %182) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6.sink.split.i, %if.else.i373.cleanup_crit_edge, %if.end214.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end6.sink.split.i ], [ 1, %if.else.i373.cleanup_crit_edge ], [ 1, %if.end214.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_hfcpci(ptr noundef %hc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #15
  %hw = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7
  %pci_io = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 16
  %0 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_io, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 88
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !521
  %conv = zext i8 %2 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %conv) #15
  %pdev = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 6
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %call9 = tail call i32 @pci_write_config_word(ptr noundef %4, i32 noundef 4, i16 noundef zeroext 2) #12
  %int_m2.i = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 7
  %5 = ptrtoint ptr %int_m2.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %int_m2.i, align 1
  %7 = and i8 %6, -9
  store i8 %7, ptr %int_m2.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !464
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %int_m2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %int_m2.i, align 1
  %10 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_io, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 108
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %9) #12, !srcloc !465
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %call11 = tail call i32 @pci_write_config_word(ptr noundef %13, i32 noundef 4, i16 noundef zeroext 6) #12
  %14 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_io, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 112
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16) #12, !srcloc !468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !522
  %conv24 = zext i8 %16 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %conv24) #15
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !523
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hw, align 4
  %20 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_io, align 4
  %add.ptr34 = getelementptr i8, ptr %21, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 %19) #12, !srcloc !465
  br label %__here

__here:                                           ; preds = %entry
  %22 = tail call i32 @llvm.read_register.i32(metadata !453) #12
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 212
  %26 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 ptrtoint (ptr blockaddress(@reset_hfcpci, %__here) to i32), ptr %task_state_change, align 4
  %27 = load ptr, ptr %task, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 2, ptr %27, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !524
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #12
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %hw, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !525
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hw, align 4
  %42 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_io, align 4
  %add.ptr110 = getelementptr i8, ptr %43, i32 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr110, i8 %41) #12, !srcloc !465
  %44 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pci_io, align 4
  %add.ptr115 = getelementptr i8, ptr %45, i32 112
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr115) #12, !srcloc !468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !526
  %conv123 = zext i8 %46 to i32
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %conv123) #15
  br label %while.body127

while.body127:                                    ; preds = %while.body127.while.body127_crit_edge, %__here
  %cnt.0387 = phi i32 [ 0, %__here ], [ %add, %while.body127.while.body127_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 1073740) #12
  %add = add nuw nsw i32 %cnt.0387, 5
  %48 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_io, align 4
  %add.ptr132 = getelementptr i8, ptr %49, i32 112
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr132) #12, !srcloc !468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !527
  %51 = and i8 %50, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool137.not = icmp ne i8 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 49995, i32 %cnt.0387)
  %cmp = icmp ult i32 %cnt.0387, 49995
  %or.cond = select i1 %tobool137.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body127.while.body127_crit_edge, label %do.end143

while.body127.while.body127_crit_edge:            ; preds = %while.body127
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body127

do.end143:                                        ; preds = %while.body127
  %conv145 = zext i8 %50 to i32
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %conv145, i32 noundef %add) #15
  %fifo_en = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 12
  %52 = ptrtoint ptr %fifo_en to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 48, ptr %fifo_en, align 4
  %bswapped = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 13
  %53 = ptrtoint ptr %bswapped to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %bswapped, align 1
  %ctmt = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %ctmt to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 36, ptr %ctmt, align 1
  %trm = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 11
  %55 = ptrtoint ptr %trm to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %trm, align 1
  %sctrl = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 8
  %56 = ptrtoint ptr %sctrl to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 64, ptr %sctrl, align 4
  %sctrl_r = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 9
  %57 = ptrtoint ptr %sctrl_r to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %sctrl_r, align 1
  %sctrl_e = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 10
  %58 = ptrtoint ptr %sctrl_e to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %sctrl_e, align 2
  %mst_m = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 5
  %59 = ptrtoint ptr %mst_m to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %mst_m, align 1
  %cfg = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 3
  %60 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %cfg, align 4
  %62 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool156.not = icmp eq i32 %62, 0
  br i1 %tobool156.not, label %do.end143.if.end162_crit_edge, label %if.then157

do.end143.if.end162_crit_edge:                    ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

if.then157:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %mst_m to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %mst_m, align 1
  br label %if.end162

if.end162:                                        ; preds = %if.then157, %do.end143.if.end162_crit_edge
  %64 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %cfg, align 4
  %66 = and i32 %65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool165.not = icmp eq i32 %66, 0
  br i1 %tobool165.not, label %if.end162.do.body173_crit_edge, label %if.then166

if.end162.do.body173_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body173

if.then166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %mst_m to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %mst_m, align 1
  %69 = or i8 %68, 4
  store i8 %69, ptr %mst_m, align 1
  br label %do.body173

do.body173:                                       ; preds = %if.then166, %if.end162.do.body173_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !528
  tail call void @arm_heavy_mb() #12
  %70 = ptrtoint ptr %fifo_en to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %fifo_en, align 4
  %72 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci_io, align 4
  %add.ptr180 = getelementptr i8, ptr %73, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr180, i8 %71) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !529
  tail call void @arm_heavy_mb() #12
  %74 = ptrtoint ptr %trm to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %trm, align 1
  %76 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pci_io, align 4
  %add.ptr188 = getelementptr i8, ptr %77, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr188, i8 %75) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !530
  tail call void @arm_heavy_mb() #12
  %78 = ptrtoint ptr %sctrl_e to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sctrl_e, align 2
  %80 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci_io, align 4
  %add.ptr196 = getelementptr i8, ptr %81, i32 200
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr196, i8 %79) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !531
  tail call void @arm_heavy_mb() #12
  %82 = ptrtoint ptr %ctmt to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ctmt, align 1
  %84 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci_io, align 4
  %add.ptr204 = getelementptr i8, ptr %85, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr204, i8 %83) #12, !srcloc !465
  %int_m1 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 6
  %86 = ptrtoint ptr %int_m1 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -28, ptr %int_m1, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !532
  tail call void @arm_heavy_mb() #12
  %87 = ptrtoint ptr %int_m1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %int_m1, align 2
  %89 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pci_io, align 4
  %add.ptr213 = getelementptr i8, ptr %90, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr213, i8 %88) #12, !srcloc !465
  %91 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pci_io, align 4
  %add.ptr218 = getelementptr i8, ptr %92, i32 120
  %93 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr218) #12, !srcloc !468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !533
  tail call fastcc void @hfcpci_setmode(ptr noundef %hc)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !534
  tail call void @arm_heavy_mb() #12
  %94 = ptrtoint ptr %mst_m to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mst_m, align 1
  %96 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pci_io, align 4
  %add.ptr229 = getelementptr i8, ptr %97, i32 184
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr229, i8 %95) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !535
  tail call void @arm_heavy_mb() #12
  %98 = ptrtoint ptr %sctrl_r to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sctrl_r, align 1
  %100 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pci_io, align 4
  %add.ptr237 = getelementptr i8, ptr %101, i32 204
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr237, i8 %99) #12, !srcloc !465
  %102 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %cfg, align 4
  %104 = and i32 %103, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool240.not = icmp eq i32 %104, 0
  %conn244 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 4
  br i1 %tobool240.not, label %if.else, label %if.then241

if.then241:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %conn244 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 9, ptr %conn244, align 4
  br label %do.body300

if.else:                                          ; preds = %do.body173
  %106 = ptrtoint ptr %conn244 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 54, ptr %conn244, align 4
  %107 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %cfg, align 4
  %109 = and i32 %108, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool247.not = icmp eq i32 %109, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %110 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pci_io, align 4
  %add.ptr279 = getelementptr i8, ptr %111, i32 128
  br i1 %tobool247.not, label %do.body274, label %do.body249

do.body249:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr279, i8 -64) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !536
  tail call void @arm_heavy_mb() #12
  %112 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pci_io, align 4
  %add.ptr260 = getelementptr i8, ptr %113, i32 132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr260, i8 -63) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !537
  tail call void @arm_heavy_mb() #12
  %114 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pci_io, align 4
  %add.ptr266 = getelementptr i8, ptr %115, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr266, i8 -64) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !538
  tail call void @arm_heavy_mb() #12
  %116 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pci_io, align 4
  %add.ptr272 = getelementptr i8, ptr %117, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr272, i8 -63) #12, !srcloc !465
  br label %do.body300

do.body274:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr279, i8 -128) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !539
  tail call void @arm_heavy_mb() #12
  %118 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pci_io, align 4
  %add.ptr285 = getelementptr i8, ptr %119, i32 132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr285, i8 -127) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !540
  tail call void @arm_heavy_mb() #12
  %120 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pci_io, align 4
  %add.ptr291 = getelementptr i8, ptr %121, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr291, i8 -128) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !541
  tail call void @arm_heavy_mb() #12
  %122 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pci_io, align 4
  %add.ptr297 = getelementptr i8, ptr %123, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr297, i8 -127) #12, !srcloc !465
  br label %do.body300

do.body300:                                       ; preds = %do.body274, %do.body249, %if.then241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !542
  tail call void @arm_heavy_mb() #12
  %conn304 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 4
  %124 = ptrtoint ptr %conn304 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %conn304, align 4
  %126 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pci_io, align 4
  %add.ptr307 = getelementptr i8, ptr %127, i32 188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr307, i8 %125) #12, !srcloc !465
  %128 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pci_io, align 4
  %add.ptr312 = getelementptr i8, ptr %129, i32 124
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr312) #12, !srcloc !468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !543
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @main_rec_hfcpci(ptr noundef %bch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %bswapped = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 13
  %4 = ptrtoint ptr %bswapped to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bswapped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %fifos = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 18
  %6 = ptrtoint ptr %fifos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifos, align 4
  %rxbz_b2 = getelementptr inbounds %struct.anon.147, ptr %7, i32 0, i32 8
  %txbz_b2 = getelementptr inbounds %struct.anon.147, ptr %7, i32 0, i32 3
  %rxdat_b2 = getelementptr inbounds %struct.anon.147, ptr %7, i32 0, i32 9
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %fifos9 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 18
  %8 = ptrtoint ptr %fifos9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fifos9, align 4
  %rxbz_b1 = getelementptr inbounds %struct.anon.147, ptr %9, i32 0, i32 7
  %txbz_b1 = getelementptr inbounds %struct.anon.147, ptr %9, i32 0, i32 2
  %rxdat_b1 = getelementptr inbounds %struct.anon.147, ptr %9, i32 0, i32 6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tobool.not.i = phi i1 [ true, %if.else ], [ false, %if.then ]
  %real_fifo.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ]
  %txbz.0 = phi ptr [ %txbz_b1, %if.else ], [ %txbz_b2, %if.then ]
  %rxbz.0 = phi ptr [ %rxbz_b1, %if.else ], [ %rxbz_b2, %if.then ]
  %bdata.0 = phi ptr [ %rxdat_b1, %if.else ], [ %rxdat_b2, %if.then ]
  %f1 = getelementptr inbounds %struct.bzfifo, ptr %rxbz.0, i32 0, i32 1
  %f2 = getelementptr inbounds %struct.bzfifo, ptr %rxbz.0, i32 0, i32 2
  %debug = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 21
  %rx_skb.i = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 9
  %arrayidx60 = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 19, i32 %real_fifo.0
  br label %Begin

Begin:                                            ; preds = %if.end65.Begin_crit_edge, %if.end
  %count.0 = phi i32 [ 5, %if.end ], [ %dec, %if.end65.Begin_crit_edge ]
  %dec = add nsw i32 %count.0, -1
  %10 = ptrtoint ptr %f1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %f1, align 2
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %f2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %f2, align 1
  %conv15 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp.not = icmp eq i8 %11, %13
  br i1 %cmp.not, label %if.else74, label %if.then17

if.then17:                                        ; preds = %Begin
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug, align 4
  %and18 = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then17.if.end26_crit_edge, label %do.end

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %17, i32 noundef %conv, i32 noundef %conv15) #15
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.then17.if.end26_crit_edge
  %18 = ptrtoint ptr %f2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %f2, align 1
  %idxprom = zext i8 %19 to i32
  %arrayidx = getelementptr [32 x %struct.zt], ptr %rxbz.0, i32 0, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv28 = zext i16 %22 to i32
  %z2 = getelementptr [32 x %struct.zt], ptr %rxbz.0, i32 0, i32 %idxprom, i32 1
  %23 = ptrtoint ptr %z2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %z2, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv29 = zext i16 %25 to i32
  %sub = sub nsw i32 %conv28, %conv29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp30 = icmp slt i32 %sub, 0
  %add = add nsw i32 %sub, 7680
  %spec.select = select i1 %cmp30, i32 %add, i32 %sub
  %inc = add nsw i32 %spec.select, 1
  %26 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug, align 4
  %and35 = and i32 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end26.if.end48_crit_edge, label %do.end40

if.end26.if.end48_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

do.end40:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %29, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %inc) #15
  br label %if.end48

if.end48:                                         ; preds = %do.end40, %if.end26.if.end48_crit_edge
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug, align 4
  %32 = and i32 %31, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %32)
  %33 = icmp eq i32 %32, 4096
  br i1 %33, label %do.end.i, label %if.end48.if.end.i_crit_edge

if.end48.if.end.i_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end48.if.end.i_crit_edge
  %34 = ptrtoint ptr %f2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %f2, align 1
  %idxprom.i = zext i8 %35 to i32
  %z2.i = getelementptr [32 x %struct.zt], ptr %rxbz.0, i32 0, i32 %idxprom.i, i32 1
  %36 = ptrtoint ptr %z2.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %z2.i, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #12
  %conv.i = zext i16 %38 to i32
  %add.i = add nsw i32 %inc, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %add.i)
  %cmp.i = icmp sgt i32 %add.i, 8191
  %sub.i = add nsw i32 %add.i, -7680
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %add.i
  %39 = add i8 %35, 1
  %40 = and i8 %39, 31
  %41 = add nsw i32 %spec.select, -2051
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2048, i32 %41)
  %42 = icmp ult i32 %41, -2048
  br i1 %42, label %if.end.i.if.then21.i_crit_edge, label %lor.lhs.false16.i

if.end.i.if.then21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

lor.lhs.false16.i:                                ; preds = %if.end.i
  %arrayidx.i = getelementptr [32 x %struct.zt], ptr %rxbz.0, i32 0, i32 %idxprom.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #12
  %conv17.i = zext i16 %45 to i32
  %sub18.i = add nsw i32 %conv17.i, -512
  %add.ptr.i = getelementptr i8, ptr %bdata.0, i32 %sub18.i
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool20.not.i = icmp eq i8 %47, 0
  br i1 %tobool20.not.i, label %if.else.i, label %lor.lhs.false16.i.if.then21.i_crit_edge

lor.lhs.false16.i.if.then21.i_crit_edge:          ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false16.i.if.then21.i_crit_edge, %if.end.i.if.then21.i_crit_edge
  %48 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug, align 4
  %and23.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then21.i.if.end31.i_crit_edge, label %do.end28.i

if.then21.i.if.end31.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

do.end28.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %inc) #15
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end28.i, %if.then21.i.if.end31.i_crit_edge
  %conv32.i = trunc i32 %spec.select.i to i16
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv32.i) #12
  %idxprom34.i = zext i8 %40 to i32
  %z236.i = getelementptr [32 x %struct.zt], ptr %rxbz.0, i32 0, i32 %idxprom34.i, i32 1
  %51 = ptrtoint ptr %z236.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %z236.i, align 2
  %52 = ptrtoint ptr %f2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %40, ptr %f2, align 1
  br label %hfcpci_empty_bfifo.exit

if.else.i:                                        ; preds = %lor.lhs.false16.i
  %sub38.i = add nsw i32 %spec.select, -2
  %add.i.i = add nuw nsw i32 %spec.select, 6
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end45.i, label %if.end48.i, !prof !463

do.end45.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rx_skb.i, align 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #15
  br label %hfcpci_empty_bfifo.exit

if.end48.i:                                       ; preds = %if.else.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 8
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %56 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %57, i32 8
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %58 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i.i, ptr %rx_skb.i, align 4
  %call51.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub38.i) #12
  %59 = ptrtoint ptr %z2.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %z2.i, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #12
  %conv53.i = zext i16 %61 to i32
  %add54.i = add nuw nsw i32 %sub38.i, %conv53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %add54.i)
  %cmp55.i = icmp ult i32 %add54.i, 8193
  %sub61.i = sub nsw i32 8192, %conv53.i
  %maxlen.0.i = select i1 %cmp55.i, i32 %sub38.i, i32 %sub61.i
  %sub65.i = add nsw i32 %conv53.i, -512
  %add.ptr66.i = getelementptr i8, ptr %bdata.0, i32 %sub65.i
  %62 = call ptr @memcpy(ptr %call51.i, ptr %add.ptr66.i, i32 %maxlen.0.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub38.i, i32 %maxlen.0.i)
  %tobool68.not.i = icmp eq i32 %sub38.i, %maxlen.0.i
  br i1 %tobool68.not.i, label %if.end48.i.if.end71.i_crit_edge, label %if.then69.i

if.end48.i.if.end71.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.i

if.then69.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub67.i = sub nsw i32 %sub38.i, %maxlen.0.i
  %add.ptr70.i = getelementptr i8, ptr %call51.i, i32 %maxlen.0.i
  %63 = call ptr @memcpy(ptr %add.ptr70.i, ptr %bdata.0, i32 %sub67.i)
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then69.i, %if.end48.i.if.end71.i_crit_edge
  %conv72.i = trunc i32 %spec.select.i to i16
  %64 = tail call i16 @llvm.bswap.i16(i16 %conv72.i) #12
  %idxprom74.i = zext i8 %40 to i32
  %z276.i = getelementptr [32 x %struct.zt], ptr %rxbz.0, i32 0, i32 %idxprom74.i, i32 1
  %65 = ptrtoint ptr %z276.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %z276.i, align 2
  %66 = ptrtoint ptr %f2 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %40, ptr %f2, align 1
  tail call void @recv_Bchannel(ptr noundef %bch, i32 noundef 65535, i1 noundef zeroext false) #12
  br label %hfcpci_empty_bfifo.exit

hfcpci_empty_bfifo.exit:                          ; preds = %if.end71.i, %do.end45.i, %if.end31.i
  %67 = ptrtoint ptr %f1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %f1, align 2
  %conv50 = zext i8 %68 to i32
  %69 = ptrtoint ptr %f2 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %f2, align 1
  %conv52 = zext i8 %70 to i32
  %sub53 = sub nsw i32 %conv50, %conv52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub53)
  %cmp54 = icmp slt i32 %sub53, 0
  %add57 = add nsw i32 %sub53, 32
  %spec.select136 = select i1 %cmp54, i32 %add57, i32 %sub53
  %71 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx60, align 4
  %add61 = add nsw i32 %spec.select136, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %add61)
  %cmp62 = icmp sgt i32 %72, %add61
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %hfcpci_empty_bfifo.exit
  %fifos4.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 18
  %73 = ptrtoint ptr %fifos4.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fifos4.i, align 4
  %rxbz_b1.i = getelementptr inbounds %struct.anon.147, ptr %74, i32 0, i32 7
  %rxbz_b2.i = getelementptr inbounds %struct.anon.147, ptr %74, i32 0, i32 8
  %.sink66.i = select i1 %tobool.not.i, i8 2, i8 8
  %bzr.0.i = select i1 %tobool.not.i, ptr %rxbz_b1.i, ptr %rxbz_b2.i
  %fifo_en6.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 12
  %75 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %fifo_en6.i, align 4
  %77 = and i8 %76, %.sink66.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool10.not.i = icmp eq i8 %77, 0
  br i1 %tobool10.not.i, label %if.then64.do.body.i_crit_edge, label %if.then11.i

if.then64.do.body.i_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then11.i:                                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %xor65.i = xor i8 %77, %76
  %78 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %xor65.i, ptr %fifo_en6.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then11.i, %if.then64.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !544
  tail call void @arm_heavy_mb() #12
  %79 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %fifo_en6.i, align 4
  %pci_io.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %81 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pci_io.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %82, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i137, i8 %80) #12, !srcloc !465
  %83 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %arrayidx60, align 4
  %f1.i = getelementptr inbounds %struct.bzfifo, ptr %bzr.0.i, i32 0, i32 1
  %84 = ptrtoint ptr %f1.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 31, ptr %f1.i, align 2
  %f2.i139 = getelementptr inbounds %struct.bzfifo, ptr %bzr.0.i, i32 0, i32 2
  %85 = ptrtoint ptr %f2.i139 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 31, ptr %f2.i139, align 1
  %arrayidx23.i = getelementptr [32 x %struct.zt], ptr %bzr.0.i, i32 0, i32 31
  %86 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -225, ptr %arrayidx23.i, align 2
  %z2.i140 = getelementptr [32 x %struct.zt], ptr %bzr.0.i, i32 0, i32 31, i32 1
  %87 = ptrtoint ptr %z2.i140 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -225, ptr %z2.i140, align 2
  br i1 %tobool10.not.i, label %do.body.i.if.end65.thread_crit_edge, label %if.then30.i

do.body.i.if.end65.thread_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.thread

if.then30.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %fifo_en6.i, align 4
  %or64.i = or i8 %89, %77
  store i8 %or64.i, ptr %fifo_en6.i, align 4
  br label %if.end65.thread

if.end65.thread:                                  ; preds = %if.then30.i, %do.body.i.if.end65.thread_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !545
  tail call void @arm_heavy_mb() #12
  %90 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fifo_en6.i, align 4
  %92 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pci_io.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %93, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i, i8 %91) #12, !srcloc !465
  %94 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %arrayidx60, align 4
  br label %cleanup

if.end65:                                         ; preds = %hfcpci_empty_bfifo.exit
  %95 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %spec.select136, ptr %arrayidx60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select136)
  %cmp69 = icmp slt i32 %spec.select136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool81.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp69, i1 true, i1 %tobool81.not
  br i1 %or.cond, label %if.end65.cleanup_crit_edge, label %if.end65.Begin_crit_edge

if.end65.Begin_crit_edge:                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %Begin

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else74:                                        ; preds = %Begin
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %96 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %Flags, align 4
  %98 = and i32 %97, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool76.not = icmp eq i32 %98, 0
  br i1 %tobool76.not, label %if.else74.cleanup_crit_edge, label %if.then77

if.else74.cleanup_crit_edge:                      ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then77:                                        ; preds = %if.else74
  %arrayidx.i141 = getelementptr [32 x %struct.zt], ptr %rxbz.0, i32 0, i32 31
  %add.ptr.i142 = getelementptr [32 x %struct.zt], ptr %rxbz.0, i32 0, i32 31, i32 1
  %99 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx.i141, align 2
  %101 = ptrtoint ptr %add.ptr.i142 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr.i142, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %102)
  %tobool.not.i143 = icmp eq i16 %100, %102
  br i1 %tobool.not.i143, label %if.then77.cleanup_crit_edge, label %if.end.i151

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i151:                                      ; preds = %if.then77
  %103 = tail call i16 @llvm.bswap.i16(i16 %102) #12
  %104 = tail call i16 @llvm.bswap.i16(i16 %100) #12
  %conv5.i = zext i16 %103 to i32
  %conv.i144 = zext i16 %104 to i32
  %sub.i145 = sub nsw i32 %conv.i144, %conv5.i
  %add.ptr4.i = getelementptr [32 x %struct.zt], ptr %txbz.0, i32 0, i32 31, i32 1
  %arrayidx2.i = getelementptr [32 x %struct.zt], ptr %txbz.0, i32 0, i32 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i145)
  %cmp.i146 = icmp slt i32 %sub.i145, 1
  %add.i147 = add nsw i32 %sub.i145, 7680
  %spec.select.i148 = select i1 %cmp.i146, i32 %add.i147, i32 %sub.i145
  %add10.i = add nsw i32 %spec.select.i148, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %add10.i)
  %cmp11.i = icmp sgt i32 %add10.i, 8191
  %sub14.i = add nsw i32 %add10.i, 57856
  %new_z2.0.i = select i1 %cmp11.i, i32 %sub14.i, i32 %add10.i
  %105 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %add.ptr4.i, align 2
  %107 = tail call i16 @llvm.bswap.i16(i16 %106) #12
  %conv16.i = zext i16 %107 to i32
  %108 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx2.i, align 2
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #12
  %conv17.i149 = zext i16 %110 to i32
  %sub18.i150 = sub nsw i32 %conv16.i, %conv17.i149
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub18.i150)
  %cmp19.i = icmp slt i32 %sub18.i150, 1
  %add22.i = add nsw i32 %sub18.i150, 7680
  %fcnt_tx.0.i = select i1 %cmp19.i, i32 %add22.i, i32 %sub18.i150
  %sub24.i = sub nsw i32 7680, %fcnt_tx.0.i
  %111 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %Flags, align 4
  %113 = and i32 %112, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool25.not.i = icmp eq i32 %113, 0
  br i1 %tobool25.not.i, label %if.end29.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #14
  %dropcnt.i = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 25
  %114 = ptrtoint ptr %dropcnt.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dropcnt.i, align 4
  %add27.i = add i32 %115, %spec.select.i148
  store i32 %add27.i, ptr %dropcnt.i, align 4
  br label %cleanup.sink.split.i

if.end29.i:                                       ; preds = %if.end.i151
  %call30.i152 = tail call i32 @bchannel_get_rxbuf(ptr noundef %bch, i32 noundef %spec.select.i148) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i152)
  %cmp31.i = icmp slt i32 %call30.i152, 0
  br i1 %cmp31.i, label %do.end.i153, label %if.else.i156

do.end.i153:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nr, align 4
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %117, i32 noundef %spec.select.i148) #15
  br label %cleanup.sink.split.i

if.else.i156:                                     ; preds = %if.end29.i
  %118 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rx_skb.i, align 4
  %call35.i = tail call ptr @skb_put(ptr noundef %119, i32 noundef %spec.select.i148) #12
  %120 = ptrtoint ptr %add.ptr.i142 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr.i142, align 2
  %122 = tail call i16 @llvm.bswap.i16(i16 %121) #12
  %conv36.i = zext i16 %122 to i32
  %add37.i = add nsw i32 %spec.select.i148, %conv36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %add37.i)
  %cmp38.i = icmp slt i32 %add37.i, 8193
  %sub43.i = sub nsw i32 8192, %conv36.i
  %maxlen.0.i155 = select i1 %cmp38.i, i32 %spec.select.i148, i32 %sub43.i
  %sub46.i = add nsw i32 %conv36.i, -512
  %add.ptr47.i = getelementptr i8, ptr %bdata.0, i32 %sub46.i
  %123 = call ptr @memcpy(ptr %call35.i, ptr %add.ptr47.i, i32 %maxlen.0.i155)
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i148, i32 %maxlen.0.i155)
  %tobool49.not.i = icmp eq i32 %spec.select.i148, %maxlen.0.i155
  br i1 %tobool49.not.i, label %if.else.i156.if.end52.i_crit_edge, label %if.then50.i

if.else.i156.if.end52.i_crit_edge:                ; preds = %if.else.i156
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.then50.i:                                      ; preds = %if.else.i156
  call void @__sanitizer_cov_trace_pc() #14
  %sub48.i = sub nsw i32 %spec.select.i148, %maxlen.0.i155
  %add.ptr51.i = getelementptr i8, ptr %call35.i, i32 %maxlen.0.i155
  %124 = call ptr @memcpy(ptr %add.ptr51.i, ptr %bdata.0, i32 %sub48.i)
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %if.else.i156.if.end52.i_crit_edge
  tail call void @recv_Bchannel(ptr noundef %bch, i32 noundef %sub24.i, i1 noundef zeroext false) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end52.i, %do.end.i153, %if.then26.i
  %conv54.i = trunc i32 %new_z2.0.i to i16
  %125 = tail call i16 @llvm.bswap.i16(i16 %conv54.i) #12
  %126 = ptrtoint ptr %add.ptr.i142 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %add.ptr.i142, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.then77.cleanup_crit_edge, %if.else74.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end65.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Bchannel(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_get_rxbuf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfcpci_fill_fifo(ptr noundef %bch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %debug = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 21
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %4 = and i32 %3, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %4)
  %5 = icmp eq i32 %4, 4096
  br i1 %5, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.113) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tx_skb = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 17
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_skb, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %lor.lhs.false.if.then6_crit_edge, label %if.else

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %10 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %Flags, align 4
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %if.then6.if.end17_crit_edge

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true9:                                   ; preds = %if.then6
  %13 = ptrtoint ptr %Flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %Flags, align 4
  %15 = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end17_crit_edge

land.lhs.true9.if.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %tx_idx = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 20
  %16 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_idx, align 4
  %sub = sub i32 %9, %17
  br label %if.end17

if.end17:                                         ; preds = %if.else, %land.lhs.true9.if.end17_crit_edge, %if.then6.if.end17_crit_edge
  %count.0 = phi i32 [ %sub, %if.else ], [ 64, %land.lhs.true9.if.end17_crit_edge ], [ 64, %if.then6.if.end17_crit_edge ]
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %18 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr, align 4
  %and18 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.else27_crit_edge, label %land.lhs.true20

if.end17.if.else27_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else27

land.lhs.true20:                                  ; preds = %if.end17
  %bswapped = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 13
  %20 = ptrtoint ptr %bswapped to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bswapped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not = icmp eq i8 %21, 0
  br i1 %tobool22.not, label %if.then23, label %land.lhs.true20.if.else27_crit_edge

land.lhs.true20.if.else27_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else27

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  %fifos = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 18
  %22 = ptrtoint ptr %fifos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fifos, align 4
  %txbz_b2 = getelementptr inbounds %struct.anon.147, ptr %23, i32 0, i32 3
  %txdat_b2 = getelementptr inbounds %struct.anon.147, ptr %23, i32 0, i32 4
  br label %if.end33

if.else27:                                        ; preds = %land.lhs.true20.if.else27_crit_edge, %if.end17.if.else27_crit_edge
  %fifos29 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 18
  %24 = ptrtoint ptr %fifos29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fifos29, align 4
  %txbz_b1 = getelementptr inbounds %struct.anon.147, ptr %25, i32 0, i32 2
  %txdat_b1 = getelementptr inbounds %struct.anon.147, ptr %25, i32 0, i32 1
  br label %if.end33

if.end33:                                         ; preds = %if.else27, %if.then23
  %bdata.0 = phi ptr [ %txdat_b1, %if.else27 ], [ %txdat_b2, %if.then23 ]
  %bz.0 = phi ptr [ %txbz_b1, %if.else27 ], [ %txbz_b2, %if.then23 ]
  %Flags34 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %26 = ptrtoint ptr %Flags34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %Flags34, align 4
  %28 = and i32 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool36.not = icmp eq i32 %28, 0
  br i1 %tobool36.not, label %if.end168, label %if.then37

if.then37:                                        ; preds = %if.end33
  %arrayidx = getelementptr [32 x %struct.zt], ptr %bz.0, i32 0, i32 31
  %add.ptr = getelementptr [32 x %struct.zt], ptr %bz.0, i32 0, i32 31, i32 1
  %29 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug, align 4
  %and39 = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then37.if.end49_crit_edge, label %do.end44

if.then37.if.end49_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv = zext i16 %33 to i32
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %conv47 = zext i16 %36 to i32
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %19, i32 noundef %count.0, i32 noundef %conv, i32 noundef %conv47) #15
  br label %if.end49

if.end49:                                         ; preds = %do.end44, %if.then37.if.end49_crit_edge
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv50 = zext i16 %39 to i32
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv51 = zext i16 %42 to i32
  %sub52 = sub nsw i32 %conv50, %conv51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub52)
  %cmp53 = icmp slt i32 %sub52, 1
  %add = add nsw i32 %sub52, 7680
  %spec.select = select i1 %cmp53, i32 %add, i32 %sub52
  %43 = ptrtoint ptr %Flags34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %Flags34, align 4
  %45 = and i32 %44, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool59.not = icmp eq i32 %45, 0
  br i1 %tobool59.not, label %if.end101, label %if.then60

if.then60:                                        ; preds = %if.end49
  %46 = tail call i32 @llvm.smin.i32(i32 %count.0, i32 %spec.select)
  %add66 = add nsw i32 %46, %conv51
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %add66)
  %cmp67 = icmp sgt i32 %add66, 8191
  %sub70 = add i32 %add66, -7680
  %new_z1.0 = select i1 %cmp67, i32 %sub70, i32 %add66
  %sub73 = add nsw i32 %conv51, -512
  %add.ptr74 = getelementptr i8, ptr %bdata.0, i32 %sub73
  %sub76 = sub nsw i32 8192, %conv51
  %47 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %debug, align 4
  %and78 = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.then60.if.end86_crit_edge, label %do.end83

if.then60.if.end86_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

do.end83:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %spec.select, i32 noundef %sub76, i32 noundef %new_z1.0, ptr noundef %add.ptr74) #15
  br label %if.end86

if.end86:                                         ; preds = %do.end83, %if.then60.if.end86_crit_edge
  %49 = tail call i32 @llvm.smin.i32(i32 %sub76, i32 %46)
  %fill = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 8
  %50 = ptrtoint ptr %fill to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %fill, align 4
  %52 = zext i8 %51 to i32
  %53 = call ptr @memset(ptr %add.ptr74, i32 %52, i32 %49)
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %sub76)
  %tobool94.not.not = icmp sgt i32 %46, %sub76
  br i1 %tobool94.not.not, label %if.then95, label %if.end86.if.end99_crit_edge

if.end86.if.end99_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then95:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %sub93 = sub i32 %46, %49
  %54 = ptrtoint ptr %fill to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fill, align 4
  %56 = zext i8 %55 to i32
  %57 = call ptr @memset(ptr %bdata.0, i32 %56, i32 %sub93)
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.end86.if.end99_crit_edge
  %conv100 = trunc i32 %new_z1.0 to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv100)
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %arrayidx, align 2
  br label %cleanup

if.end101:                                        ; preds = %if.end49
  %sub102 = sub nsw i32 7680, %spec.select
  %tx_idx105 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 20
  br label %next_t_frame

next_t_frame:                                     ; preds = %if.end162.next_t_frame_crit_edge, %if.end101
  %fcnt.1 = phi i32 [ %sub102, %if.end101 ], [ %add143, %if.end162.next_t_frame_crit_edge ]
  %60 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_skb, align 4
  %len104 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %len104 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len104, align 4
  %64 = ptrtoint ptr %tx_idx105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_idx105, align 4
  %sub106 = sub i32 %63, %65
  %66 = load i32, ptr @poll, align 4
  %shl = shl i32 %66, 1
  %sub107 = sub i32 %shl, %fcnt.1
  %67 = tail call i32 @llvm.umin.i32(i32 %sub106, i32 %sub107)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp114 = icmp slt i32 %67, 1
  br i1 %cmp114, label %next_t_frame.cleanup_crit_edge, label %if.end117

next_t_frame.cleanup_crit_edge:                   ; preds = %next_t_frame
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end117:                                        ; preds = %next_t_frame
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx, align 2
  %70 = tail call i16 @llvm.bswap.i16(i16 %69)
  %conv118 = zext i16 %70 to i32
  %add119 = add nuw i32 %67, %conv118
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %add119)
  %cmp120 = icmp sgt i32 %add119, 8191
  %sub123 = add i32 %add119, -7680
  %spec.select473 = select i1 %cmp120, i32 %sub123, i32 %add119
  %data = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 19
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  %add.ptr127 = getelementptr i8, ptr %72, i32 %65
  %sub129 = add nsw i32 %conv118, -512
  %add.ptr130 = getelementptr i8, ptr %bdata.0, i32 %sub129
  %sub132 = sub nsw i32 8192, %conv118
  %73 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %debug, align 4
  %and134 = and i32 %74, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end117.if.end142_crit_edge, label %do.end139

if.end117.if.end142_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end142

do.end139:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %fcnt.1, i32 noundef %sub132, i32 noundef %spec.select473, ptr noundef %add.ptr130) #15
  br label %if.end142

if.end142:                                        ; preds = %do.end139, %if.end117.if.end142_crit_edge
  %add143 = add i32 %67, %fcnt.1
  %75 = ptrtoint ptr %tx_idx105 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_idx105, align 4
  %add145 = add i32 %76, %67
  store i32 %add145, ptr %tx_idx105, align 4
  %77 = tail call i32 @llvm.smin.i32(i32 %sub132, i32 %67)
  %78 = call ptr @memcpy(ptr %add.ptr130, ptr %add.ptr127, i32 %77)
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %sub132)
  %tobool151.not.not = icmp sgt i32 %67, %sub132
  br i1 %tobool151.not.not, label %if.then152, label %if.end142.if.end154_crit_edge

if.end142.if.end154_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

if.then152:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #14
  %sub150 = sub i32 %67, %77
  %add.ptr153 = getelementptr i8, ptr %add.ptr127, i32 %77
  %79 = call ptr @memcpy(ptr %bdata.0, ptr %add.ptr153, i32 %sub150)
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.end142.if.end154_crit_edge
  %conv155 = trunc i32 %spec.select473 to i16
  %80 = tail call i16 @llvm.bswap.i16(i16 %conv155)
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %arrayidx, align 2
  %82 = ptrtoint ptr %tx_idx105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_idx105, align 4
  %84 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_skb, align 4
  %len158 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %len158 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %87)
  %cmp159 = icmp ult i32 %83, %87
  br i1 %cmp159, label %if.end154.cleanup_crit_edge, label %if.end162

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end162:                                        ; preds = %if.end154
  tail call void @consume_skb(ptr noundef %85) #12
  %call164 = tail call i32 @get_next_bframe(ptr noundef %bch) #12
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end162.cleanup_crit_edge, label %if.end162.next_t_frame_crit_edge

if.end162.next_t_frame_crit_edge:                 ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_t_frame

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end168:                                        ; preds = %if.end33
  %88 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %debug, align 4
  %and170 = and i32 %89, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %if.end168.if.end186_crit_edge, label %do.end175

if.end168.if.end186_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

do.end175:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  %f1 = getelementptr inbounds %struct.bzfifo, ptr %bz.0, i32 0, i32 1
  %90 = ptrtoint ptr %f1 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %f1, align 2
  %conv178 = zext i8 %91 to i32
  %f2 = getelementptr inbounds %struct.bzfifo, ptr %bz.0, i32 0, i32 2
  %92 = ptrtoint ptr %f2 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %f2, align 1
  %conv179 = zext i8 %93 to i32
  %arrayidx182 = getelementptr [32 x %struct.zt], ptr %bz.0, i32 0, i32 %conv178
  %94 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx182, align 2
  %conv184 = zext i16 %95 to i32
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.113, i32 noundef %19, i32 noundef %conv178, i32 noundef %conv179, i32 noundef %conv184) #15
  br label %if.end186

if.end186:                                        ; preds = %do.end175, %if.end168.if.end186_crit_edge
  %f1187 = getelementptr inbounds %struct.bzfifo, ptr %bz.0, i32 0, i32 1
  %96 = ptrtoint ptr %f1187 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %f1187, align 2
  %conv188 = zext i8 %97 to i32
  %f2189 = getelementptr inbounds %struct.bzfifo, ptr %bz.0, i32 0, i32 2
  %98 = ptrtoint ptr %f2189 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %f2189, align 1
  %conv190 = zext i8 %99 to i32
  %sub191 = sub nsw i32 %conv188, %conv190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub191)
  %cmp192 = icmp slt i32 %sub191, 0
  %add195 = add nsw i32 %sub191, 32
  %spec.select475 = select i1 %cmp192, i32 %add195, i32 %sub191
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %spec.select475)
  %cmp197 = icmp sgt i32 %spec.select475, 30
  br i1 %cmp197, label %if.then199, label %if.end210

if.then199:                                       ; preds = %if.end186
  %100 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %debug, align 4
  %and201 = and i32 %101, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.then199.cleanup_crit_edge, label %do.end206

if.then199.cleanup_crit_edge:                     ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end206:                                        ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #14
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #15
  br label %cleanup

if.end210:                                        ; preds = %if.end186
  %z2 = getelementptr [32 x %struct.zt], ptr %bz.0, i32 0, i32 %conv190, i32 1
  %102 = ptrtoint ptr %z2 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %z2, align 2
  %104 = tail call i16 @llvm.bswap.i16(i16 %103)
  %conv215 = zext i16 %104 to i32
  %arrayidx219 = getelementptr [32 x %struct.zt], ptr %bz.0, i32 0, i32 %conv188
  %105 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx219, align 2
  %107 = tail call i16 @llvm.bswap.i16(i16 %106)
  %conv221 = zext i16 %107 to i32
  %108 = xor i32 %conv221, -1
  %sub223 = add nsw i32 %108, %conv215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub223)
  %cmp224 = icmp slt i32 %sub223, 1
  %add227 = add nsw i32 %sub223, 7680
  %spec.select476 = select i1 %cmp224, i32 %add227, i32 %sub223
  %109 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %debug, align 4
  %and230 = and i32 %110, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.end210.if.end239_crit_edge, label %do.end235

if.end210.if.end239_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239

do.end235:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nr, align 4
  %call238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, i32 noundef %112, i32 noundef %count.0, i32 noundef %spec.select476) #15
  br label %if.end239

if.end239:                                        ; preds = %do.end235, %if.end210.if.end239_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select476, i32 %count.0)
  %cmp240 = icmp slt i32 %spec.select476, %count.0
  br i1 %cmp240, label %if.then242, label %if.end253

if.then242:                                       ; preds = %if.end239
  %113 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %debug, align 4
  %and244 = and i32 %114, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %if.then242.cleanup_crit_edge, label %do.end249

if.then242.cleanup_crit_edge:                     ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end249:                                        ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #14
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #15
  br label %cleanup

if.end253:                                        ; preds = %if.end239
  %115 = ptrtoint ptr %f1187 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %f1187, align 2
  %idxprom256 = zext i8 %116 to i32
  %arrayidx257 = getelementptr [32 x %struct.zt], ptr %bz.0, i32 0, i32 %idxprom256
  %117 = ptrtoint ptr %arrayidx257 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx257, align 2
  %119 = tail call i16 @llvm.bswap.i16(i16 %118)
  %conv259 = zext i16 %119 to i32
  %add260 = add i32 %count.0, %conv259
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %add260)
  %cmp261 = icmp sgt i32 %add260, 8191
  %sub264 = add i32 %add260, 57856
  %spec.select477 = select i1 %cmp261, i32 %sub264, i32 %add260
  %add268 = add i8 %116, 1
  %and269 = and i8 %add268, 31
  %120 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tx_skb, align 4
  %data272 = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 19
  %122 = ptrtoint ptr %data272 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data272, align 4
  %tx_idx273 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 20
  %124 = ptrtoint ptr %tx_idx273 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_idx273, align 4
  %add.ptr274 = getelementptr i8, ptr %123, i32 %125
  %sub281 = add nsw i32 %conv259, -512
  %add.ptr282 = getelementptr i8, ptr %bdata.0, i32 %sub281
  %sub289 = sub nsw i32 8192, %conv259
  %126 = tail call i32 @llvm.smin.i32(i32 %sub289, i32 %count.0)
  %127 = call ptr @memcpy(ptr %add.ptr282, ptr %add.ptr274, i32 %126)
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0, i32 %sub289)
  %tobool295.not.not = icmp sgt i32 %count.0, %sub289
  br i1 %tobool295.not.not, label %if.then296, label %if.end253.if.end298_crit_edge

if.end253.if.end298_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end298

if.then296:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #14
  %sub294 = sub i32 %count.0, %126
  %add.ptr297 = getelementptr i8, ptr %add.ptr274, i32 %126
  %128 = call ptr @memcpy(ptr %bdata.0, ptr %add.ptr297, i32 %sub294)
  br label %if.end298

if.end298:                                        ; preds = %if.then296, %if.end253.if.end298_crit_edge
  %conv299 = trunc i32 %spec.select477 to i16
  %129 = tail call i16 @llvm.bswap.i16(i16 %conv299)
  %idxprom301 = zext i8 %and269 to i32
  %arrayidx302 = getelementptr [32 x %struct.zt], ptr %bz.0, i32 0, i32 %idxprom301
  %130 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %arrayidx302, align 2
  %131 = ptrtoint ptr %f1187 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %and269, ptr %f1187, align 2
  %132 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tx_skb, align 4
  tail call void @consume_skb(ptr noundef %133) #12
  %call306 = tail call i32 @get_next_bframe(ptr noundef %bch) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end298, %do.end249, %if.then242.cleanup_crit_edge, %do.end206, %if.then199.cleanup_crit_edge, %if.end162.cleanup_crit_edge, %if.end154.cleanup_crit_edge, %next_t_frame.cleanup_crit_edge, %if.end99, %land.lhs.true9.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_bframe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @recv_Dchannel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_dframe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hfcpci_dbusy_timer(ptr nocapture noundef %t) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mode_hfcpci(ptr noundef %bch, i32 noundef %bc, i32 noundef %protocol) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %debug = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 21
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %5, i32 noundef %protocol, i32 noundef %7, i32 noundef %bc) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bc)
  %tobool2.not = icmp ult i32 %bc, 16777216
  %cfg20 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %cfg20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cfg20, align 4
  %10 = and i32 %9, 8
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %do.end9, label %if.then3.if.end12_crit_edge

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.161) #15
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.then3.if.end12_crit_edge
  %11 = lshr i32 %bc, 8
  %12 = lshr i32 %bc, 16
  %and19 = and i32 %bc, 255
  %phi.cast = trunc i32 %11 to i8
  %phi.cast593 = trunc i32 %12 to i8
  br label %if.end31

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %cmp = icmp sgt i32 %protocol, 0
  %or.cond = and i1 %cmp, %tobool22.not
  br i1 %or.cond, label %do.end27, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.161) #15
  br label %if.end31

if.end31:                                         ; preds = %do.end27, %if.else.if.end31_crit_edge, %if.end12
  %tx_slot.0 = phi i8 [ %phi.cast593, %if.end12 ], [ 0, %do.end27 ], [ 0, %if.else.if.end31_crit_edge ]
  %rx_slot.0 = phi i8 [ %phi.cast, %if.end12 ], [ 0, %do.end27 ], [ 0, %if.else.if.end31_crit_edge ]
  %bc.addr.0 = phi i32 [ %and19, %if.end12 ], [ %bc, %do.end27 ], [ %bc, %if.else.if.end31_crit_edge ]
  %chanlimit = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %chanlimit to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chanlimit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp33 = icmp ugt i8 %14, 1
  br i1 %cmp33, label %if.then35, label %if.else41

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %bswapped = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 13
  %15 = ptrtoint ptr %bswapped to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %bswapped, align 1
  %sctrl_e = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 10
  %16 = ptrtoint ptr %sctrl_e to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sctrl_e, align 2
  %18 = and i8 %17, 127
  store i8 %18, ptr %sctrl_e, align 2
  br label %if.end72

if.else41:                                        ; preds = %if.end31
  %and42 = and i32 %bc.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else63, label %if.then44

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %cmp45.not = icmp eq i32 %protocol, 0
  %bswapped56 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 13
  br i1 %cmp45.not, label %if.end72.thread, label %if.then47

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %bswapped56 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %bswapped56, align 1
  %sctrl_e51 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 10
  %20 = ptrtoint ptr %sctrl_e51 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sctrl_e51, align 2
  %22 = or i8 %21, -128
  store i8 %22, ptr %sctrl_e51, align 2
  br label %if.end72

if.end72.thread:                                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %bswapped56 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bswapped56, align 1
  %sctrl_e58 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 10
  %24 = ptrtoint ptr %sctrl_e58 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sctrl_e58, align 2
  %26 = and i8 %25, 127
  store i8 %26, ptr %sctrl_e58, align 2
  br label %sw.bb75

if.else63:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  %bswapped65 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 13
  %27 = ptrtoint ptr %bswapped65 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %bswapped65, align 1
  %sctrl_e67 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 10
  %28 = ptrtoint ptr %sctrl_e67 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sctrl_e67, align 2
  %30 = and i8 %29, 127
  store i8 %30, ptr %sctrl_e67, align 2
  br label %if.end72

if.end72:                                         ; preds = %if.else63, %if.then47, %if.then35
  %fifo2.0 = phi i32 [ %bc, %if.then35 ], [ %bc, %if.else63 ], [ 1, %if.then47 ]
  %31 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %protocol, label %do.end303 [
    i32 -1, label %sw.bb
    i32 0, label %if.end72.sw.bb75_crit_edge
    i32 33, label %sw.bb132
    i32 34, label %sw.bb216
  ]

if.end72.sw.bb75_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb75

sw.bb:                                            ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %state73 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %32 = ptrtoint ptr %state73 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %state73, align 4
  %nr74 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %33 = ptrtoint ptr %nr74 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %bc.addr.0, ptr %nr74, align 4
  br label %sw.bb75

sw.bb75:                                          ; preds = %sw.bb, %if.end72.sw.bb75_crit_edge, %if.end72.thread
  %fifo2.0624 = phi i32 [ 1, %if.end72.thread ], [ %fifo2.0, %if.end72.sw.bb75_crit_edge ], [ %fifo2.0, %sw.bb ]
  %state76 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %34 = ptrtoint ptr %state76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp77 = icmp eq i32 %35, 0
  br i1 %cmp77, label %sw.bb75.cleanup_crit_edge, label %if.end80

sw.bb75.cleanup_crit_edge:                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end80:                                         ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #14
  %and81 = and i32 %bc.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %sctrl94 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 8
  %36 = ptrtoint ptr %sctrl94 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sctrl94, align 4
  %. = select i1 %tobool82.not, i8 -2, i8 -3
  %38 = and i8 %37, %.
  store i8 %38, ptr %sctrl94, align 4
  %sctrl_r99 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 9
  %39 = ptrtoint ptr %sctrl_r99 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sctrl_r99, align 1
  %41 = and i8 %40, %.
  store i8 %41, ptr %sctrl_r99, align 1
  %and104 = and i32 %fifo2.0624, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %.660 = select i1 %tobool105.not, i8 -4, i8 -13
  %.661 = select i1 %tobool105.not, i8 -10, i8 -19
  %fifo_en117 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 12
  %42 = ptrtoint ptr %fifo_en117 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fifo_en117, align 4
  %44 = and i8 %43, %.660
  store i8 %44, ptr %fifo_en117, align 4
  %int_m1122 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %45 = ptrtoint ptr %int_m1122 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %int_m1122, align 2
  %47 = and i8 %46, %.661
  store i8 %47, ptr %int_m1122, align 2
  %48 = ptrtoint ptr %state76 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %state76, align 4
  %nr128 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %49 = ptrtoint ptr %nr128 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %bc.addr.0, ptr %nr128, align 4
  %Flags = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %call129 = tail call i32 @_test_and_clear_bit(i32 noundef 13, ptr noundef %Flags) #12
  %call131 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %Flags) #12
  br label %sw.epilog

sw.bb132:                                         ; preds = %if.end72
  %state133 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %50 = ptrtoint ptr %state133 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 33, ptr %state133, align 4
  %nr134 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %51 = ptrtoint ptr %nr134 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %bc.addr.0, ptr %nr134, align 4
  %and135 = and i32 %fifo2.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %not.tobool136.not = xor i1 %tobool136.not, true
  %cond = zext i1 %not.tobool136.not to i32
  %fifos4.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 18
  %52 = ptrtoint ptr %fifos4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fifos4.i, align 4
  %rxbz_b1.i = getelementptr inbounds %struct.anon.147, ptr %53, i32 0, i32 7
  %rxbz_b2.i = getelementptr inbounds %struct.anon.147, ptr %53, i32 0, i32 8
  %.sink66.i = select i1 %tobool136.not, i8 2, i8 8
  %bzr.0.i = select i1 %tobool136.not, ptr %rxbz_b1.i, ptr %rxbz_b2.i
  %fifo_en6.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 12
  %54 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fifo_en6.i, align 4
  %56 = and i8 %55, %.sink66.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool10.not.i = icmp eq i8 %56, 0
  br i1 %tobool10.not.i, label %sw.bb132.do.body.i_crit_edge, label %if.then11.i

sw.bb132.do.body.i_crit_edge:                     ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then11.i:                                      ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #14
  %xor65.i = xor i8 %56, %55
  %57 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %xor65.i, ptr %fifo_en6.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then11.i, %sw.bb132.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !544
  tail call void @arm_heavy_mb() #12
  %58 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %fifo_en6.i, align 4
  %pci_io.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %60 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci_io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %59) #12, !srcloc !465
  %arrayidx.i = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 19, i32 %cond
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %arrayidx.i, align 4
  %f1.i = getelementptr inbounds %struct.bzfifo, ptr %bzr.0.i, i32 0, i32 1
  %63 = ptrtoint ptr %f1.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 31, ptr %f1.i, align 2
  %f2.i = getelementptr inbounds %struct.bzfifo, ptr %bzr.0.i, i32 0, i32 2
  %64 = ptrtoint ptr %f2.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 31, ptr %f2.i, align 1
  %arrayidx23.i = getelementptr [32 x %struct.zt], ptr %bzr.0.i, i32 0, i32 31
  %65 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -225, ptr %arrayidx23.i, align 2
  %z2.i = getelementptr [32 x %struct.zt], ptr %bzr.0.i, i32 0, i32 31, i32 1
  %66 = ptrtoint ptr %z2.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -225, ptr %z2.i, align 2
  br i1 %tobool10.not.i, label %do.body.i.hfcpci_clear_fifo_rx.exit_crit_edge, label %if.then30.i

do.body.i.hfcpci_clear_fifo_rx.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hfcpci_clear_fifo_rx.exit

if.then30.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %fifo_en6.i, align 4
  %or64.i = or i8 %68, %56
  store i8 %or64.i, ptr %fifo_en6.i, align 4
  br label %hfcpci_clear_fifo_rx.exit

hfcpci_clear_fifo_rx.exit:                        ; preds = %if.then30.i, %do.body.i.hfcpci_clear_fifo_rx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !545
  tail call void @arm_heavy_mb() #12
  %69 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %fifo_en6.i, align 4
  %71 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci_io.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %72, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i, i8 %70) #12, !srcloc !465
  tail call fastcc void @hfcpci_clear_fifo_tx(ptr noundef %1, i32 noundef %cond)
  %and140 = and i32 %bc.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  %sctrl155 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 8
  %73 = ptrtoint ptr %sctrl155 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sctrl155, align 4
  %.655 = select i1 %tobool141.not, i8 1, i8 2
  %75 = or i8 %74, %.655
  store i8 %75, ptr %sctrl155, align 4
  %sctrl_r160 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 9
  %76 = ptrtoint ptr %sctrl_r160 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %sctrl_r160, align 1
  %78 = or i8 %77, %.655
  store i8 %78, ptr %sctrl_r160, align 1
  %79 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %fifo_en6.i, align 4
  br i1 %tobool136.not, label %if.else189, label %if.then167

if.then167:                                       ; preds = %hfcpci_clear_fifo_rx.exit
  %81 = or i8 %80, 12
  %82 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %fifo_en6.i, align 4
  %83 = load i32, ptr @tics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool173.not = icmp eq i32 %83, 0
  br i1 %tobool173.not, label %if.then167.if.end213.sink.split_crit_edge, label %if.then167.if.end213_crit_edge

if.then167.if.end213_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end213

if.then167.if.end213.sink.split_crit_edge:        ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end213.sink.split

if.else189:                                       ; preds = %hfcpci_clear_fifo_rx.exit
  %84 = or i8 %80, 3
  %85 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %fifo_en6.i, align 4
  %86 = load i32, ptr @tics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool195.not = icmp eq i32 %86, 0
  br i1 %tobool195.not, label %if.else189.if.end213.sink.split_crit_edge, label %if.else189.if.end213_crit_edge

if.else189.if.end213_crit_edge:                   ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end213

if.else189.if.end213.sink.split_crit_edge:        ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end213.sink.split

if.end213.sink.split:                             ; preds = %if.else189.if.end213.sink.split_crit_edge, %if.then167.if.end213.sink.split_crit_edge
  %.sink663 = phi i8 [ 18, %if.then167.if.end213.sink.split_crit_edge ], [ 9, %if.else189.if.end213.sink.split_crit_edge ]
  %.sink649.ph = phi i8 [ 2, %if.then167.if.end213.sink.split_crit_edge ], [ 1, %if.else189.if.end213.sink.split_crit_edge ]
  %.sink635.ph = phi i8 [ -25, %if.then167.if.end213.sink.split_crit_edge ], [ -4, %if.else189.if.end213.sink.split_crit_edge ]
  %int_m1176 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %87 = ptrtoint ptr %int_m1176 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %int_m1176, align 2
  %89 = or i8 %88, %.sink663
  store i8 %89, ptr %int_m1176, align 2
  br label %if.end213

if.end213:                                        ; preds = %if.end213.sink.split, %if.else189.if.end213_crit_edge, %if.then167.if.end213_crit_edge
  %.sink649 = phi i8 [ 2, %if.then167.if.end213_crit_edge ], [ 1, %if.else189.if.end213_crit_edge ], [ %.sink649.ph, %if.end213.sink.split ]
  %.sink635 = phi i8 [ -25, %if.then167.if.end213_crit_edge ], [ -4, %if.else189.if.end213_crit_edge ], [ %.sink635.ph, %if.end213.sink.split ]
  %ctmt204 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 1
  %90 = ptrtoint ptr %ctmt204 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ctmt204, align 1
  %92 = or i8 %91, %.sink649
  store i8 %92, ptr %ctmt204, align 1
  %conn209 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %93 = ptrtoint ptr %conn209 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %conn209, align 4
  %95 = and i8 %94, %.sink635
  store i8 %95, ptr %conn209, align 4
  %Flags214 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %call215 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %Flags214) #12
  br label %sw.epilog

sw.bb216:                                         ; preds = %if.end72
  %state217 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %96 = ptrtoint ptr %state217 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 34, ptr %state217, align 4
  %nr218 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %97 = ptrtoint ptr %nr218 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %bc.addr.0, ptr %nr218, align 4
  %and219 = and i32 %fifo2.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  %not.tobool220.not = xor i1 %tobool220.not, true
  %cond221 = zext i1 %not.tobool220.not to i32
  %fifos4.i600 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 18
  %98 = ptrtoint ptr %fifos4.i600 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fifos4.i600, align 4
  %rxbz_b1.i601 = getelementptr inbounds %struct.anon.147, ptr %99, i32 0, i32 7
  %rxbz_b2.i602 = getelementptr inbounds %struct.anon.147, ptr %99, i32 0, i32 8
  %.sink66.i603 = select i1 %tobool220.not, i8 2, i8 8
  %bzr.0.i604 = select i1 %tobool220.not, ptr %rxbz_b1.i601, ptr %rxbz_b2.i602
  %fifo_en6.i605 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 12
  %100 = ptrtoint ptr %fifo_en6.i605 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %fifo_en6.i605, align 4
  %102 = and i8 %101, %.sink66.i603
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool10.not.i606 = icmp eq i8 %102, 0
  br i1 %tobool10.not.i606, label %sw.bb216.do.body.i618_crit_edge, label %if.then11.i609

sw.bb216.do.body.i618_crit_edge:                  ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i618

if.then11.i609:                                   ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #14
  %xor65.i608 = xor i8 %102, %101
  %103 = ptrtoint ptr %fifo_en6.i605 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %xor65.i608, ptr %fifo_en6.i605, align 4
  br label %do.body.i618

do.body.i618:                                     ; preds = %if.then11.i609, %sw.bb216.do.body.i618_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !544
  tail call void @arm_heavy_mb() #12
  %104 = ptrtoint ptr %fifo_en6.i605 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %fifo_en6.i605, align 4
  %pci_io.i611 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %106 = ptrtoint ptr %pci_io.i611 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pci_io.i611, align 4
  %add.ptr.i612 = getelementptr i8, ptr %107, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i612, i8 %105) #12, !srcloc !465
  %arrayidx.i613 = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 19, i32 %cond221
  %108 = ptrtoint ptr %arrayidx.i613 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %arrayidx.i613, align 4
  %f1.i614 = getelementptr inbounds %struct.bzfifo, ptr %bzr.0.i604, i32 0, i32 1
  %109 = ptrtoint ptr %f1.i614 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 31, ptr %f1.i614, align 2
  %f2.i615 = getelementptr inbounds %struct.bzfifo, ptr %bzr.0.i604, i32 0, i32 2
  %110 = ptrtoint ptr %f2.i615 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 31, ptr %f2.i615, align 1
  %arrayidx23.i616 = getelementptr [32 x %struct.zt], ptr %bzr.0.i604, i32 0, i32 31
  %111 = ptrtoint ptr %arrayidx23.i616 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -225, ptr %arrayidx23.i616, align 2
  %z2.i617 = getelementptr [32 x %struct.zt], ptr %bzr.0.i604, i32 0, i32 31, i32 1
  %112 = ptrtoint ptr %z2.i617 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -225, ptr %z2.i617, align 2
  br i1 %tobool10.not.i606, label %do.body.i618.hfcpci_clear_fifo_rx.exit622_crit_edge, label %if.then30.i620

do.body.i618.hfcpci_clear_fifo_rx.exit622_crit_edge: ; preds = %do.body.i618
  call void @__sanitizer_cov_trace_pc() #14
  br label %hfcpci_clear_fifo_rx.exit622

if.then30.i620:                                   ; preds = %do.body.i618
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %fifo_en6.i605 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %fifo_en6.i605, align 4
  %or64.i619 = or i8 %114, %102
  store i8 %or64.i619, ptr %fifo_en6.i605, align 4
  br label %hfcpci_clear_fifo_rx.exit622

hfcpci_clear_fifo_rx.exit622:                     ; preds = %if.then30.i620, %do.body.i618.hfcpci_clear_fifo_rx.exit622_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !545
  tail call void @arm_heavy_mb() #12
  %115 = ptrtoint ptr %fifo_en6.i605 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %fifo_en6.i605, align 4
  %117 = ptrtoint ptr %pci_io.i611 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pci_io.i611, align 4
  %add.ptr44.i621 = getelementptr i8, ptr %118, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i621, i8 %116) #12, !srcloc !465
  tail call fastcc void @hfcpci_clear_fifo_tx(ptr noundef %1, i32 noundef %cond221)
  %and225 = and i32 %bc.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  %sctrl240 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 8
  %119 = ptrtoint ptr %sctrl240 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %sctrl240, align 4
  %.656 = select i1 %tobool226.not, i8 1, i8 2
  %121 = or i8 %120, %.656
  store i8 %121, ptr %sctrl240, align 4
  %sctrl_r245 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 9
  %122 = ptrtoint ptr %sctrl_r245 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %sctrl_r245, align 1
  %124 = or i8 %123, %.656
  store i8 %124, ptr %sctrl_r245, align 1
  br i1 %tobool220.not, label %if.else274, label %if.then252

if.then252:                                       ; preds = %hfcpci_clear_fifo_rx.exit622
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 19, i32 1
  br label %if.end298

if.else274:                                       ; preds = %hfcpci_clear_fifo_rx.exit622
  call void @__sanitizer_cov_trace_pc() #14
  %last_bfifo_cnt276 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 19
  br label %if.end298

if.end298:                                        ; preds = %if.else274, %if.then252
  %last_bfifo_cnt276.sink = phi ptr [ %last_bfifo_cnt276, %if.else274 ], [ %arrayidx, %if.then252 ]
  %.sink666 = phi i8 [ 3, %if.else274 ], [ 12, %if.then252 ]
  %.sink658 = phi i8 [ 9, %if.else274 ], [ 18, %if.then252 ]
  %.sink653 = phi i8 [ -2, %if.else274 ], [ -3, %if.then252 ]
  %.sink641 = phi i8 [ -4, %if.else274 ], [ -25, %if.then252 ]
  %125 = ptrtoint ptr %last_bfifo_cnt276.sink to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %last_bfifo_cnt276.sink, align 4
  %126 = ptrtoint ptr %fifo_en6.i605 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %fifo_en6.i605, align 4
  %128 = or i8 %127, %.sink666
  store i8 %128, ptr %fifo_en6.i605, align 4
  %int_m1284 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %129 = ptrtoint ptr %int_m1284 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %int_m1284, align 2
  %131 = or i8 %130, %.sink658
  store i8 %131, ptr %int_m1284, align 2
  %ctmt289 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 1
  %132 = ptrtoint ptr %ctmt289 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %ctmt289, align 1
  %134 = and i8 %133, %.sink653
  store i8 %134, ptr %ctmt289, align 1
  %conn294 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %135 = ptrtoint ptr %conn294 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %conn294, align 4
  %137 = and i8 %136, %.sink641
  store i8 %137, ptr %conn294, align 4
  %Flags299 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 2
  %call300 = tail call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %Flags299) #12
  br label %sw.epilog

do.end303:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %call305 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %protocol) #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.end298, %if.end213, %if.end80
  %cfg306 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 3
  %138 = ptrtoint ptr %cfg306 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %cfg306, align 4
  %140 = and i32 %139, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool308.not = icmp eq i32 %140, 0
  br i1 %tobool308.not, label %sw.epilog.do.body407_crit_edge, label %if.then309

sw.epilog.do.body407_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body407

if.then309:                                       ; preds = %sw.epilog
  %141 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %protocol, label %if.else315 [
    i32 0, label %if.then309.if.end334_crit_edge
    i32 -1, label %if.then309.if.end334_crit_edge667
  ]

if.then309.if.end334_crit_edge667:                ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end334

if.then309.if.end334_crit_edge:                   ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end334

if.else315:                                       ; preds = %if.then309
  %142 = ptrtoint ptr %cfg306 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %cfg306, align 4
  %144 = and i32 %143, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool318.not = icmp eq i32 %144, 0
  br i1 %tobool318.not, label %if.else326, label %if.then319

if.then319:                                       ; preds = %if.else315
  call void @__sanitizer_cov_trace_pc() #14
  %conv322 = or i8 %rx_slot.0, -64
  %conv325 = or i8 %tx_slot.0, -64
  br label %if.end334

if.else326:                                       ; preds = %if.else315
  call void @__sanitizer_cov_trace_pc() #14
  %conv329 = or i8 %rx_slot.0, -128
  %conv332 = or i8 %tx_slot.0, -128
  br label %if.end334

if.end334:                                        ; preds = %if.else326, %if.then319, %if.then309.if.end334_crit_edge, %if.then309.if.end334_crit_edge667
  %tx_slot.1 = phi i8 [ %conv325, %if.then319 ], [ %conv332, %if.else326 ], [ 0, %if.then309.if.end334_crit_edge ], [ 0, %if.then309.if.end334_crit_edge667 ]
  %rx_slot.1 = phi i8 [ %conv322, %if.then319 ], [ %conv329, %if.else326 ], [ 0, %if.then309.if.end334_crit_edge ], [ 0, %if.then309.if.end334_crit_edge667 ]
  %and335 = and i32 %bc.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335)
  %tobool336.not = icmp eq i32 %and335, 0
  %conn372 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %145 = ptrtoint ptr %conn372 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %conn372, align 4
  br i1 %tobool336.not, label %if.else370, label %if.then337

if.then337:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #14
  %147 = and i8 %146, -57
  %148 = or i8 %147, 8
  %149 = ptrtoint ptr %conn372 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %conn372, align 4
  %conv352 = zext i8 %tx_slot.1 to i32
  %call353 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.161, i32 noundef %conv352) #15
  %conv358 = zext i8 %rx_slot.1 to i32
  %call359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.161, i32 noundef %conv358) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !546
  tail call void @arm_heavy_mb() #12
  %pci_io = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %150 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pci_io, align 4
  %add.ptr = getelementptr i8, ptr %151, i32 132
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %tx_slot.1) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !547
  tail call void @arm_heavy_mb() #12
  %152 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pci_io, align 4
  %add.ptr369 = getelementptr i8, ptr %153, i32 148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr369, i8 %rx_slot.1) #12, !srcloc !465
  br label %do.body407

if.else370:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #14
  %154 = and i8 %146, -8
  %155 = or i8 %154, 1
  %156 = ptrtoint ptr %conn372 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %conn372, align 4
  %conv385 = zext i8 %tx_slot.1 to i32
  %call386 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.161, i32 noundef %conv385) #15
  %conv391 = zext i8 %rx_slot.1 to i32
  %call392 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.161, i32 noundef %conv391) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !548
  tail call void @arm_heavy_mb() #12
  %pci_io397 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %157 = ptrtoint ptr %pci_io397 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pci_io397, align 4
  %add.ptr398 = getelementptr i8, ptr %158, i32 128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr398, i8 %tx_slot.1) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !549
  tail call void @arm_heavy_mb() #12
  %159 = ptrtoint ptr %pci_io397 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pci_io397, align 4
  %add.ptr404 = getelementptr i8, ptr %160, i32 144
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr404, i8 %rx_slot.1) #12, !srcloc !465
  br label %do.body407

do.body407:                                       ; preds = %if.else370, %if.then337, %sw.epilog.do.body407_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !550
  tail call void @arm_heavy_mb() #12
  %sctrl_e411 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 10
  %161 = ptrtoint ptr %sctrl_e411 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %sctrl_e411, align 2
  %pci_io413 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %163 = ptrtoint ptr %pci_io413 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pci_io413, align 4
  %add.ptr414 = getelementptr i8, ptr %164, i32 200
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr414, i8 %162) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !551
  tail call void @arm_heavy_mb() #12
  %int_m1419 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %165 = ptrtoint ptr %int_m1419 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %int_m1419, align 2
  %167 = ptrtoint ptr %pci_io413 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pci_io413, align 4
  %add.ptr422 = getelementptr i8, ptr %168, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr422, i8 %166) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !552
  tail call void @arm_heavy_mb() #12
  %fifo_en427 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 12
  %169 = ptrtoint ptr %fifo_en427 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %fifo_en427, align 4
  %171 = ptrtoint ptr %pci_io413 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pci_io413, align 4
  %add.ptr430 = getelementptr i8, ptr %172, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr430, i8 %170) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !553
  tail call void @arm_heavy_mb() #12
  %sctrl435 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 8
  %173 = ptrtoint ptr %sctrl435 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %sctrl435, align 4
  %175 = ptrtoint ptr %pci_io413 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pci_io413, align 4
  %add.ptr438 = getelementptr i8, ptr %176, i32 196
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr438, i8 %174) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !554
  tail call void @arm_heavy_mb() #12
  %sctrl_r443 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 9
  %177 = ptrtoint ptr %sctrl_r443 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %sctrl_r443, align 1
  %179 = ptrtoint ptr %pci_io413 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pci_io413, align 4
  %add.ptr446 = getelementptr i8, ptr %180, i32 204
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr446, i8 %178) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !555
  tail call void @arm_heavy_mb() #12
  %ctmt451 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 1
  %181 = ptrtoint ptr %ctmt451 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %ctmt451, align 1
  %183 = ptrtoint ptr %pci_io413 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pci_io413, align 4
  %add.ptr454 = getelementptr i8, ptr %184, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr454, i8 %182) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !556
  tail call void @arm_heavy_mb() #12
  %conn459 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %185 = ptrtoint ptr %conn459 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %conn459, align 4
  %187 = ptrtoint ptr %pci_io413 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pci_io413, align 4
  %add.ptr462 = getelementptr i8, ptr %188, i32 188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr462, i8 %186) #12, !srcloc !465
  br label %cleanup

cleanup:                                          ; preds = %do.body407, %do.end303, %sw.bb75.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %do.end303 ], [ 0, %do.body407 ], [ 0, %sw.bb75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hfcpci_clear_fifo_tx(ptr nocapture noundef %hc, i32 noundef %fifo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fifo)
  %tobool.not = icmp eq i32 %fifo, 0
  %fifos4 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 18
  %0 = ptrtoint ptr %fifos4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifos4, align 4
  %txbz_b1 = getelementptr inbounds %struct.anon.147, ptr %1, i32 0, i32 2
  %txbz_b2 = getelementptr inbounds %struct.anon.147, ptr %1, i32 0, i32 3
  %.sink118 = select i1 %tobool.not, i8 1, i8 4
  %bzt.0 = select i1 %tobool.not, ptr %txbz_b1, ptr %txbz_b2
  %fifo_en6 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 12
  %2 = ptrtoint ptr %fifo_en6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fifo_en6, align 4
  %4 = and i8 %3, %.sink118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool10.not = icmp eq i8 %4, 0
  br i1 %tobool10.not, label %entry.do.body_crit_edge, label %if.then11

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fifo_en14 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 12
  %5 = ptrtoint ptr %fifo_en14 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fifo_en14, align 4
  %xor117 = xor i8 %6, %4
  store i8 %xor117, ptr %fifo_en14, align 4
  br label %do.body

do.body:                                          ; preds = %if.then11, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !557
  tail call void @arm_heavy_mb() #12
  %fifo_en19 = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 12
  %7 = ptrtoint ptr %fifo_en19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fifo_en19, align 4
  %pci_io = getelementptr inbounds %struct.hfc_pci, ptr %hc, i32 0, i32 7, i32 16
  %9 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_io, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %8) #12, !srcloc !465
  %debug = getelementptr %struct.hfc_pci, ptr %hc, i32 0, i32 10, i32 %fifo, i32 21
  %11 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug, align 4
  %and21 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body.if.end35_crit_edge, label %do.end26

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end26:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %f1 = getelementptr inbounds %struct.bzfifo, ptr %bzt.0, i32 0, i32 1
  %13 = ptrtoint ptr %f1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %f1, align 2
  %conv27 = zext i8 %14 to i32
  %f2 = getelementptr inbounds %struct.bzfifo, ptr %bzt.0, i32 0, i32 2
  %15 = ptrtoint ptr %f2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %f2, align 1
  %conv28 = zext i8 %16 to i32
  %arrayidx29 = getelementptr [32 x %struct.zt], ptr %bzt.0, i32 0, i32 31
  %17 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx29, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv30 = zext i16 %19 to i32
  %z2 = getelementptr [32 x %struct.zt], ptr %bzt.0, i32 0, i32 31, i32 1
  %20 = ptrtoint ptr %z2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %z2, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv33 = zext i16 %22 to i32
  %conv34 = zext i8 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, i32 noundef %fifo, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %conv30, i32 noundef %conv33, i32 noundef %conv34) #15
  br label %if.end35

if.end35:                                         ; preds = %do.end26, %do.body.if.end35_crit_edge
  %f236 = getelementptr inbounds %struct.bzfifo, ptr %bzt.0, i32 0, i32 2
  %23 = ptrtoint ptr %f236 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 31, ptr %f236, align 1
  %f138 = getelementptr inbounds %struct.bzfifo, ptr %bzt.0, i32 0, i32 1
  %24 = ptrtoint ptr %f138 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 31, ptr %f138, align 2
  %arrayidx40 = getelementptr [32 x %struct.zt], ptr %bzt.0, i32 0, i32 31
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -225, ptr %arrayidx40, align 2
  %z244 = getelementptr [32 x %struct.zt], ptr %bzt.0, i32 0, i32 31, i32 1
  %26 = ptrtoint ptr %z244 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -481, ptr %z244, align 2
  br i1 %tobool10.not, label %if.end35.do.body53_crit_edge, label %if.then46

if.end35.do.body53_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

if.then46:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %fifo_en19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fifo_en19, align 4
  %or116 = or i8 %28, %4
  store i8 %or116, ptr %fifo_en19, align 4
  br label %do.body53

do.body53:                                        ; preds = %if.then46, %if.end35.do.body53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !558
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %fifo_en19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fifo_en19, align 4
  %31 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_io, align 4
  %add.ptr60 = getelementptr i8, ptr %32, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60, i8 %30) #12, !srcloc !465
  %33 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug, align 4
  %and64 = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body53.if.end84_crit_edge, label %do.end69

do.body53.if.end84_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

do.end69:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %f138 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %f138, align 2
  %conv72 = zext i8 %36 to i32
  %37 = ptrtoint ptr %f236 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %f236, align 1
  %conv74 = zext i8 %38 to i32
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx40, align 2
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv78 = zext i16 %41 to i32
  %42 = ptrtoint ptr %z244 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %z244, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv82 = zext i16 %44 to i32
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, i32 noundef %fifo, i32 noundef %conv72, i32 noundef %conv74, i32 noundef %conv78, i32 noundef %conv82) #15
  br label %if.end84

if.end84:                                         ; preds = %do.end69, %do.body53.if.end84_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bchannel_senddata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_clear_bchannel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_hfcpci_rxtest(ptr nocapture noundef %bch, i32 noundef %protocol, i32 noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 5
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %debug = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 21
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %nr = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, i32 noundef %5, i32 noundef %protocol, i32 noundef %7, i32 noundef %chan) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %nr1 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 1
  %8 = ptrtoint ptr %nr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %chan)
  %cmp.not = icmp eq i32 %9, %chan
  br i1 %cmp.not, label %if.end9, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, i32 noundef %9, i32 noundef %chan) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %10 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %protocol, label %do.end132 [
    i32 33, label %sw.bb
    i32 34, label %sw.bb66
  ]

sw.bb:                                            ; preds = %if.end9
  %state10 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %11 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 33, ptr %state10, align 4
  %and11 = and i32 %chan, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %not.tobool12.not = xor i1 %tobool12.not, true
  %cond = zext i1 %not.tobool12.not to i32
  %fifos4.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 18
  %12 = ptrtoint ptr %fifos4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fifos4.i, align 4
  %rxbz_b1.i = getelementptr inbounds %struct.anon.147, ptr %13, i32 0, i32 7
  %rxbz_b2.i = getelementptr inbounds %struct.anon.147, ptr %13, i32 0, i32 8
  %.sink66.i = select i1 %tobool12.not, i8 2, i8 8
  %bzr.0.i = select i1 %tobool12.not, ptr %rxbz_b1.i, ptr %rxbz_b2.i
  %fifo_en6.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 12
  %14 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fifo_en6.i, align 4
  %16 = and i8 %15, %.sink66.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not.i = icmp eq i8 %16, 0
  br i1 %tobool10.not.i, label %sw.bb.do.body.i_crit_edge, label %if.then11.i

sw.bb.do.body.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then11.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %xor65.i = xor i8 %16, %15
  %17 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %xor65.i, ptr %fifo_en6.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then11.i, %sw.bb.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !544
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fifo_en6.i, align 4
  %pci_io.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %20 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_io.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %19) #12, !srcloc !465
  %arrayidx.i = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 19, i32 %cond
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx.i, align 4
  %f1.i = getelementptr inbounds %struct.bzfifo, ptr %bzr.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %f1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 31, ptr %f1.i, align 2
  %f2.i = getelementptr inbounds %struct.bzfifo, ptr %bzr.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %f2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 31, ptr %f2.i, align 1
  %arrayidx23.i = getelementptr [32 x %struct.zt], ptr %bzr.0.i, i32 0, i32 31
  %25 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -225, ptr %arrayidx23.i, align 2
  %z2.i = getelementptr [32 x %struct.zt], ptr %bzr.0.i, i32 0, i32 31, i32 1
  %26 = ptrtoint ptr %z2.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -225, ptr %z2.i, align 2
  br i1 %tobool10.not.i, label %do.body.i.hfcpci_clear_fifo_rx.exit_crit_edge, label %if.then30.i

do.body.i.hfcpci_clear_fifo_rx.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hfcpci_clear_fifo_rx.exit

if.then30.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fifo_en6.i, align 4
  %or64.i = or i8 %28, %16
  store i8 %or64.i, ptr %fifo_en6.i, align 4
  br label %hfcpci_clear_fifo_rx.exit

hfcpci_clear_fifo_rx.exit:                        ; preds = %if.then30.i, %do.body.i.hfcpci_clear_fifo_rx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !545
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fifo_en6.i, align 4
  %31 = ptrtoint ptr %pci_io.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_io.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %32, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i, i8 %30) #12, !srcloc !465
  %sctrl_r38 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 9
  %33 = ptrtoint ptr %sctrl_r38 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sctrl_r38, align 1
  br i1 %tobool12.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %hfcpci_clear_fifo_rx.exit
  %35 = or i8 %34, 2
  %36 = ptrtoint ptr %sctrl_r38 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %sctrl_r38, align 1
  %37 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %fifo_en6.i, align 4
  %39 = or i8 %38, 8
  store i8 %39, ptr %fifo_en6.i, align 4
  %40 = load i32, ptr @tics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool22.not = icmp eq i32 %40, 0
  br i1 %tobool22.not, label %if.then23, label %if.then15.if.end28_crit_edge

if.then15.if.end28_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %int_m1 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %41 = ptrtoint ptr %int_m1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %int_m1, align 2
  %43 = or i8 %42, 16
  store i8 %43, ptr %int_m1, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then15.if.end28_crit_edge
  %ctmt = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %ctmt to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ctmt, align 1
  %46 = or i8 %45, 2
  store i8 %46, ptr %ctmt, align 1
  br label %do.body135

if.else:                                          ; preds = %hfcpci_clear_fifo_rx.exit
  %47 = or i8 %34, 1
  %48 = ptrtoint ptr %sctrl_r38 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %sctrl_r38, align 1
  %49 = ptrtoint ptr %fifo_en6.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fifo_en6.i, align 4
  %51 = or i8 %50, 2
  store i8 %51, ptr %fifo_en6.i, align 4
  %52 = load i32, ptr @tics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool47.not = icmp eq i32 %52, 0
  br i1 %tobool47.not, label %if.then48, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %int_m150 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %53 = ptrtoint ptr %int_m150 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %int_m150, align 2
  %55 = or i8 %54, 8
  store i8 %55, ptr %int_m150, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.else.if.end54_crit_edge
  %ctmt56 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 1
  %56 = ptrtoint ptr %ctmt56 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ctmt56, align 1
  %58 = or i8 %57, 1
  store i8 %58, ptr %ctmt56, align 1
  br label %do.body135

sw.bb66:                                          ; preds = %if.end9
  %state67 = getelementptr inbounds %struct.bchannel, ptr %bch, i32 0, i32 4
  %59 = ptrtoint ptr %state67 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 34, ptr %state67, align 4
  %and68 = and i32 %chan, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %not.tobool69.not = xor i1 %tobool69.not, true
  %cond70 = zext i1 %not.tobool69.not to i32
  %fifos4.i223 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 18
  %60 = ptrtoint ptr %fifos4.i223 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fifos4.i223, align 4
  %rxbz_b1.i224 = getelementptr inbounds %struct.anon.147, ptr %61, i32 0, i32 7
  %rxbz_b2.i225 = getelementptr inbounds %struct.anon.147, ptr %61, i32 0, i32 8
  %.sink66.i226 = select i1 %tobool69.not, i8 2, i8 8
  %bzr.0.i227 = select i1 %tobool69.not, ptr %rxbz_b1.i224, ptr %rxbz_b2.i225
  %fifo_en6.i228 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 12
  %62 = ptrtoint ptr %fifo_en6.i228 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %fifo_en6.i228, align 4
  %64 = and i8 %63, %.sink66.i226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool10.not.i229 = icmp eq i8 %64, 0
  br i1 %tobool10.not.i229, label %sw.bb66.do.body.i241_crit_edge, label %if.then11.i232

sw.bb66.do.body.i241_crit_edge:                   ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i241

if.then11.i232:                                   ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #14
  %xor65.i231 = xor i8 %64, %63
  %65 = ptrtoint ptr %fifo_en6.i228 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %xor65.i231, ptr %fifo_en6.i228, align 4
  br label %do.body.i241

do.body.i241:                                     ; preds = %if.then11.i232, %sw.bb66.do.body.i241_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !544
  tail call void @arm_heavy_mb() #12
  %66 = ptrtoint ptr %fifo_en6.i228 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %fifo_en6.i228, align 4
  %pci_io.i234 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %68 = ptrtoint ptr %pci_io.i234 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pci_io.i234, align 4
  %add.ptr.i235 = getelementptr i8, ptr %69, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i235, i8 %67) #12, !srcloc !465
  %arrayidx.i236 = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 19, i32 %cond70
  %70 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %arrayidx.i236, align 4
  %f1.i237 = getelementptr inbounds %struct.bzfifo, ptr %bzr.0.i227, i32 0, i32 1
  %71 = ptrtoint ptr %f1.i237 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 31, ptr %f1.i237, align 2
  %f2.i238 = getelementptr inbounds %struct.bzfifo, ptr %bzr.0.i227, i32 0, i32 2
  %72 = ptrtoint ptr %f2.i238 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 31, ptr %f2.i238, align 1
  %arrayidx23.i239 = getelementptr [32 x %struct.zt], ptr %bzr.0.i227, i32 0, i32 31
  %73 = ptrtoint ptr %arrayidx23.i239 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -225, ptr %arrayidx23.i239, align 2
  %z2.i240 = getelementptr [32 x %struct.zt], ptr %bzr.0.i227, i32 0, i32 31, i32 1
  %74 = ptrtoint ptr %z2.i240 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -225, ptr %z2.i240, align 2
  br i1 %tobool10.not.i229, label %do.body.i241.hfcpci_clear_fifo_rx.exit245_crit_edge, label %if.then30.i243

do.body.i241.hfcpci_clear_fifo_rx.exit245_crit_edge: ; preds = %do.body.i241
  call void @__sanitizer_cov_trace_pc() #14
  br label %hfcpci_clear_fifo_rx.exit245

if.then30.i243:                                   ; preds = %do.body.i241
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %fifo_en6.i228 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %fifo_en6.i228, align 4
  %or64.i242 = or i8 %76, %64
  store i8 %or64.i242, ptr %fifo_en6.i228, align 4
  br label %hfcpci_clear_fifo_rx.exit245

hfcpci_clear_fifo_rx.exit245:                     ; preds = %if.then30.i243, %do.body.i241.hfcpci_clear_fifo_rx.exit245_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !545
  tail call void @arm_heavy_mb() #12
  %77 = ptrtoint ptr %fifo_en6.i228 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %fifo_en6.i228, align 4
  %79 = ptrtoint ptr %pci_io.i234 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pci_io.i234, align 4
  %add.ptr44.i244 = getelementptr i8, ptr %80, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44.i244, i8 %78) #12, !srcloc !465
  %sctrl_r102 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 9
  %81 = ptrtoint ptr %sctrl_r102 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %sctrl_r102, align 1
  br i1 %tobool69.not, label %if.else100, label %if.then73

if.then73:                                        ; preds = %hfcpci_clear_fifo_rx.exit245
  call void @__sanitizer_cov_trace_pc() #14
  %83 = or i8 %82, 2
  %84 = ptrtoint ptr %sctrl_r102 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %sctrl_r102, align 1
  %arrayidx = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 19, i32 1
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx, align 4
  %86 = ptrtoint ptr %fifo_en6.i228 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %fifo_en6.i228, align 4
  %88 = or i8 %87, 8
  store i8 %88, ptr %fifo_en6.i228, align 4
  %int_m186 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %89 = ptrtoint ptr %int_m186 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %int_m186, align 2
  %91 = or i8 %90, 16
  store i8 %91, ptr %int_m186, align 2
  %ctmt91 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 1
  %92 = ptrtoint ptr %ctmt91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ctmt91, align 1
  %94 = and i8 %93, -3
  store i8 %94, ptr %ctmt91, align 1
  br label %do.body135

if.else100:                                       ; preds = %hfcpci_clear_fifo_rx.exit245
  call void @__sanitizer_cov_trace_pc() #14
  %95 = or i8 %82, 1
  %96 = ptrtoint ptr %sctrl_r102 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %sctrl_r102, align 1
  %last_bfifo_cnt107 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 19
  %97 = ptrtoint ptr %last_bfifo_cnt107 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %last_bfifo_cnt107, align 4
  %98 = ptrtoint ptr %fifo_en6.i228 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %fifo_en6.i228, align 4
  %100 = or i8 %99, 2
  store i8 %100, ptr %fifo_en6.i228, align 4
  %int_m1115 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %101 = ptrtoint ptr %int_m1115 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %int_m1115, align 2
  %103 = or i8 %102, 8
  store i8 %103, ptr %int_m1115, align 2
  %ctmt120 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 1
  %104 = ptrtoint ptr %ctmt120 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ctmt120, align 1
  %106 = and i8 %105, -2
  store i8 %106, ptr %ctmt120, align 1
  br label %do.body135

do.end132:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %protocol) #15
  br label %cleanup

do.body135:                                       ; preds = %if.else100, %if.then73, %if.end54, %if.end28
  %.sink247 = phi i8 [ -4, %if.end54 ], [ -25, %if.end28 ], [ -4, %if.else100 ], [ -25, %if.then73 ]
  %conn61 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %107 = ptrtoint ptr %conn61 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %conn61, align 4
  %109 = and i8 %108, %.sink247
  store i8 %109, ptr %conn61, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !559
  tail call void @arm_heavy_mb() #12
  %int_m1139 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 6
  %110 = ptrtoint ptr %int_m1139 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %int_m1139, align 2
  %pci_io = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 16
  %112 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pci_io, align 4
  %add.ptr = getelementptr i8, ptr %113, i32 104
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %111) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !560
  tail call void @arm_heavy_mb() #12
  %fifo_en145 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 12
  %114 = ptrtoint ptr %fifo_en145 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %fifo_en145, align 4
  %116 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pci_io, align 4
  %add.ptr148 = getelementptr i8, ptr %117, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr148, i8 %115) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !561
  tail call void @arm_heavy_mb() #12
  %sctrl_r153 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 9
  %118 = ptrtoint ptr %sctrl_r153 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %sctrl_r153, align 1
  %120 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pci_io, align 4
  %add.ptr156 = getelementptr i8, ptr %121, i32 204
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr156, i8 %119) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !562
  tail call void @arm_heavy_mb() #12
  %ctmt161 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 1
  %122 = ptrtoint ptr %ctmt161 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ctmt161, align 1
  %124 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pci_io, align 4
  %add.ptr164 = getelementptr i8, ptr %125, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr164, i8 %123) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !563
  tail call void @arm_heavy_mb() #12
  %conn169 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 4
  %126 = ptrtoint ptr %conn169 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %conn169, align 4
  %128 = ptrtoint ptr %pci_io to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pci_io, align 4
  %add.ptr172 = getelementptr i8, ptr %129, i32 188
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr172, i8 %127) #12, !srcloc !465
  br label %cleanup

cleanup:                                          ; preds = %do.body135, %do.end132, %do.end5
  %retval.0 = phi i32 [ -22, %do.end5 ], [ -92, %do.end132 ], [ 0, %do.body135 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_ctrl_bchannel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hfcpci_Timer(ptr nocapture noundef writeonly %t) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 75
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %expires, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfcpci_softirq(ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_for_each_device(ptr noundef getelementptr inbounds (%struct.pci_driver, ptr @hfc_driver, i32 0, i32 14), ptr noundef null, ptr noundef null, ptr noundef nonnull @_hfcpci_softirq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %land.rhs

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @hfcpci_softirq.__already_done, align 1
  br i1 %.b42, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !564

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hfcpci_softirq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 2295, i32 noundef 9, ptr noundef null) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  %0 = load i32, ptr @hfc_jiffies, align 4
  %1 = load i32, ptr @tics, align 4
  %add = add i32 %1, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp35 = icmp slt i32 %sub, 1
  br i1 %cmp35, label %if.then36, label %if.end27.if.end39_crit_edge

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add37 = add i32 %3, 1
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end27.if.end39_crit_edge
  %storemerge = phi i32 [ %add37, %if.then36 ], [ %add, %if.end27.if.end39_crit_edge ]
  store i32 %storemerge, ptr @hfc_jiffies, align 4
  store i32 %storemerge, ptr getelementptr inbounds (%struct.timer_list, ptr @hfc_tl, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @hfc_tl) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_hfcpci_softirq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %int_m2 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 7
  %2 = ptrtoint ptr %int_m2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %int_m2, align 1
  %4 = and i8 %3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %bswapped = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 7, i32 13
  %5 = ptrtoint ptr %bswapped to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bswapped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool4.not, i32 1, i32 2
  %Flags.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 0, i32 2
  %7 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %Flags.i, align 4
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then1.if.else.i_crit_edge, label %land.lhs.true.i

if.then1.if.else.i_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then1
  %bch.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 10
  %nr.i = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr.i, align 4
  %and.i = and i32 %11, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.Sel_BCS.exit_crit_edge

land.lhs.true.i.Sel_BCS.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then1.if.else.i_crit_edge
  %Flags8.i = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 1, i32 2
  %12 = ptrtoint ptr %Flags8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %Flags8.i, align 4
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not.i = icmp eq i32 %14, 0
  br i1 %tobool10.not.i, label %if.else.i.if.end10_crit_edge, label %land.lhs.true11.i

if.else.i.if.end10_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true11.i:                                ; preds = %if.else.i
  %arrayidx7.i = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 1
  %nr14.i = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 1, i32 1
  %15 = ptrtoint ptr %nr14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr14.i, align 4
  %and15.i = and i32 %16, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true11.i.if.end10_crit_edge, label %land.lhs.true11.i.Sel_BCS.exit_crit_edge

land.lhs.true11.i.Sel_BCS.exit_crit_edge:         ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit

land.lhs.true11.i.if.end10_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

Sel_BCS.exit:                                     ; preds = %land.lhs.true11.i.Sel_BCS.exit_crit_edge, %land.lhs.true.i.Sel_BCS.exit_crit_edge
  %retval.0.i = phi ptr [ %bch.i, %land.lhs.true.i.Sel_BCS.exit_crit_edge ], [ %arrayidx7.i, %land.lhs.true11.i.Sel_BCS.exit_crit_edge ]
  %tobool6.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool6.not, label %Sel_BCS.exit.if.end10_crit_edge, label %land.lhs.true

Sel_BCS.exit.if.end10_crit_edge:                  ; preds = %Sel_BCS.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %Sel_BCS.exit
  %state = getelementptr inbounds %struct.bchannel, ptr %retval.0.i, i32 0, i32 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %18)
  %cmp7 = icmp eq i32 %18, 33
  br i1 %cmp7, label %if.then9, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  tail call fastcc void @main_rec_hfcpci(ptr noundef nonnull %retval.0.i)
  %tx_skb.i = getelementptr inbounds %struct.bchannel, ptr %retval.0.i, i32 0, i32 17
  %19 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i41 = icmp eq ptr %20, null
  br i1 %tobool.not.i41, label %if.then9.if.else.i44_crit_edge, label %land.lhs.true.i42

if.then9.if.else.i44_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i44

land.lhs.true.i42:                                ; preds = %if.then9
  %tx_idx.i = getelementptr inbounds %struct.bchannel, ptr %retval.0.i, i32 0, i32 20
  %21 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_idx.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i = icmp ult i32 %22, %24
  br i1 %cmp.i, label %land.lhs.true.i42.if.end5.sink.split.i_crit_edge, label %land.lhs.true.i42.if.else.i44_crit_edge

land.lhs.true.i42.if.else.i44_crit_edge:          ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i44

land.lhs.true.i42.if.end5.sink.split.i_crit_edge: ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split.i

if.else.i44:                                      ; preds = %land.lhs.true.i42.if.else.i44_crit_edge, %if.then9.if.else.i44_crit_edge
  tail call void @consume_skb(ptr noundef %20) #12
  %call.i = tail call i32 @get_next_bframe(ptr noundef nonnull %retval.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i43 = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i43, label %if.else.i44.if.end10_crit_edge, label %if.else.i44.if.end5.sink.split.i_crit_edge

if.else.i44.if.end5.sink.split.i_crit_edge:       ; preds = %if.else.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split.i

if.else.i44.if.end10_crit_edge:                   ; preds = %if.else.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end5.sink.split.i:                             ; preds = %if.else.i44.if.end5.sink.split.i_crit_edge, %land.lhs.true.i42.if.end5.sink.split.i_crit_edge
  tail call fastcc void @hfcpci_fill_fifo(ptr noundef nonnull %retval.0.i) #12
  br label %if.end10

if.end10:                                         ; preds = %if.end5.sink.split.i, %if.else.i44.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %Sel_BCS.exit.if.end10_crit_edge, %land.lhs.true11.i.if.end10_crit_edge, %if.else.i.if.end10_crit_edge
  %25 = ptrtoint ptr %bswapped to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bswapped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool14.not = icmp eq i8 %26, 0
  %cond15 = select i1 %tobool14.not, i32 2, i32 1
  %27 = ptrtoint ptr %Flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %Flags.i, align 4
  %29 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i46 = icmp eq i32 %29, 0
  br i1 %tobool.not.i46, label %if.end10.if.else.i54_crit_edge, label %land.lhs.true.i51

if.end10.if.else.i54_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i54

land.lhs.true.i51:                                ; preds = %if.end10
  %bch.i47 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 10
  %nr.i48 = getelementptr inbounds %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 0, i32 1
  %30 = ptrtoint ptr %nr.i48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr.i48, align 4
  %and.i49 = and i32 %31, %cond15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool3.not.i50 = icmp eq i32 %and.i49, 0
  br i1 %tobool3.not.i50, label %land.lhs.true.i51.if.else.i54_crit_edge, label %land.lhs.true.i51.Sel_BCS.exit62_crit_edge

land.lhs.true.i51.Sel_BCS.exit62_crit_edge:       ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit62

land.lhs.true.i51.if.else.i54_crit_edge:          ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i54

if.else.i54:                                      ; preds = %land.lhs.true.i51.if.else.i54_crit_edge, %if.end10.if.else.i54_crit_edge
  %Flags8.i52 = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 1, i32 2
  %32 = ptrtoint ptr %Flags8.i52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %Flags8.i52, align 4
  %34 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool10.not.i53 = icmp eq i32 %34, 0
  br i1 %tobool10.not.i53, label %if.else.i54.if.end23_crit_edge, label %land.lhs.true11.i59

if.else.i54.if.end23_crit_edge:                   ; preds = %if.else.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true11.i59:                              ; preds = %if.else.i54
  %arrayidx7.i55 = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 1
  %nr14.i56 = getelementptr %struct.hfc_pci, ptr %1, i32 0, i32 10, i32 1, i32 1
  %35 = ptrtoint ptr %nr14.i56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr14.i56, align 4
  %and15.i57 = and i32 %36, %cond15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i57)
  %tobool16.not.i58 = icmp eq i32 %and15.i57, 0
  br i1 %tobool16.not.i58, label %land.lhs.true11.i59.if.end23_crit_edge, label %land.lhs.true11.i59.Sel_BCS.exit62_crit_edge

land.lhs.true11.i59.Sel_BCS.exit62_crit_edge:     ; preds = %land.lhs.true11.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %Sel_BCS.exit62

land.lhs.true11.i59.if.end23_crit_edge:           ; preds = %land.lhs.true11.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

Sel_BCS.exit62:                                   ; preds = %land.lhs.true11.i59.Sel_BCS.exit62_crit_edge, %land.lhs.true.i51.Sel_BCS.exit62_crit_edge
  %retval.0.i61 = phi ptr [ %bch.i47, %land.lhs.true.i51.Sel_BCS.exit62_crit_edge ], [ %arrayidx7.i55, %land.lhs.true11.i59.Sel_BCS.exit62_crit_edge ]
  %tobool17.not = icmp eq ptr %retval.0.i61, null
  br i1 %tobool17.not, label %Sel_BCS.exit62.if.end23_crit_edge, label %land.lhs.true18

Sel_BCS.exit62.if.end23_crit_edge:                ; preds = %Sel_BCS.exit62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true18:                                  ; preds = %Sel_BCS.exit62
  %state19 = getelementptr inbounds %struct.bchannel, ptr %retval.0.i61, i32 0, i32 4
  %37 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %38)
  %cmp20 = icmp eq i32 %38, 33
  br i1 %cmp20, label %if.then22, label %land.lhs.true18.if.end23_crit_edge

land.lhs.true18.if.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true18
  tail call fastcc void @main_rec_hfcpci(ptr noundef nonnull %retval.0.i61)
  %tx_skb.i63 = getelementptr inbounds %struct.bchannel, ptr %retval.0.i61, i32 0, i32 17
  %39 = ptrtoint ptr %tx_skb.i63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_skb.i63, align 4
  %tobool.not.i64 = icmp eq ptr %40, null
  br i1 %tobool.not.i64, label %if.then22.if.else.i71_crit_edge, label %land.lhs.true.i68

if.then22.if.else.i71_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i71

land.lhs.true.i68:                                ; preds = %if.then22
  %tx_idx.i65 = getelementptr inbounds %struct.bchannel, ptr %retval.0.i61, i32 0, i32 20
  %41 = ptrtoint ptr %tx_idx.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_idx.i65, align 4
  %len.i66 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 6
  %43 = ptrtoint ptr %len.i66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i67 = icmp ult i32 %42, %44
  br i1 %cmp.i67, label %land.lhs.true.i68.if.end5.sink.split.i72_crit_edge, label %land.lhs.true.i68.if.else.i71_crit_edge

land.lhs.true.i68.if.else.i71_crit_edge:          ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i71

land.lhs.true.i68.if.end5.sink.split.i72_crit_edge: ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split.i72

if.else.i71:                                      ; preds = %land.lhs.true.i68.if.else.i71_crit_edge, %if.then22.if.else.i71_crit_edge
  tail call void @consume_skb(ptr noundef %40) #12
  %call.i69 = tail call i32 @get_next_bframe(ptr noundef nonnull %retval.0.i61) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool3.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool3.not.i70, label %if.else.i71.if.end23_crit_edge, label %if.else.i71.if.end5.sink.split.i72_crit_edge

if.else.i71.if.end5.sink.split.i72_crit_edge:     ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split.i72

if.else.i71.if.end23_crit_edge:                   ; preds = %if.else.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end5.sink.split.i72:                           ; preds = %if.else.i71.if.end5.sink.split.i72_crit_edge, %land.lhs.true.i68.if.end5.sink.split.i72_crit_edge
  tail call fastcc void @hfcpci_fill_fifo(ptr noundef nonnull %retval.0.i61) #12
  br label %if.end23

if.end23:                                         ; preds = %if.end5.sink.split.i72, %if.else.i71.if.end23_crit_edge, %land.lhs.true18.if.end23_crit_edge, %Sel_BCS.exit62.if.end23_crit_edge, %land.lhs.true11.i59.if.end23_crit_edge, %if.else.i54.if.end23_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !163, !164, !165, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !304, !306, !307, !309, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !351, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !366, !367, !369, !370, !372, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385, !386, !387, !389, !390, !391, !393, !394, !396, !397, !398, !399, !401, !402, !403, !405, !406, !407, !409, !410, !411, !413, !414, !415, !417, !418, !419, !421, !422, !423, !425, !426, !428, !430, !432, !434, !435, !436, !437, !439, !440, !441, !442, !444, !445, !446, !448, !449, !451}
!llvm.named.register.sp = !{!453}
!llvm.module.flags = !{!454, !455, !456, !457, !458, !459, !460, !461}
!llvm.ident = !{!462}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_file460, !3, !"__UNIQUE_ID_file460", i1 false, i1 false}
!3 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 51, i32 1}
!4 = !{ptr @__UNIQUE_ID_license461, !3, !"__UNIQUE_ID_license461", i1 false, i1 false}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 52, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype462, !6, !"__UNIQUE_ID_debugtype462", i1 false, i1 false}
!8 = !{ptr @__param_poll, !9, !"__param_poll", i1 false, i1 false}
!9 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 53, i32 1}
!10 = !{ptr @__UNIQUE_ID_polltype463, !9, !"__UNIQUE_ID_polltype463", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_hfcpci__466_2354_HFC_init6, !12, !"__initcall__kmod_hfcpci__466_2354_HFC_init6", i1 false, i1 false}
!12 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2354, i32 1}
!13 = !{ptr @__exitcall_HFC_cleanup, !14, !"__exitcall_HFC_cleanup", i1 false, i1 false}
!14 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2355, i32 1}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 45, i32 13}
!17 = !{ptr @poll, !18, !"poll", i1 false, i1 false}
!18 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 46, i32 13}
!19 = !{ptr @hfc_tl, !20, !"hfc_tl", i1 false, i1 false}
!20 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 47, i32 26}
!21 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @__param_str_poll, !9, !"__param_str_poll", i1 false, i1 false}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2260, i32 10}
!25 = !{ptr @hfc_driver, !26, !"hfc_driver", i1 false, i1 false}
!26 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2259, i32 26}
!27 = !{ptr @hfc_ids, !28, !"hfc_ids", i1 false, i1 false}
!28 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2163, i32 35}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2133, i32 20}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2134, i32 20}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2135, i32 20}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2136, i32 20}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2137, i32 20}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2138, i32 20}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2139, i32 20}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2140, i32 20}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2141, i32 20}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2142, i32 20}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2143, i32 20}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2144, i32 20}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2145, i32 23}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2146, i32 21}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2147, i32 27}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2148, i32 22}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2149, i32 27}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2150, i32 24}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2152, i32 3}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2154, i32 3}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2156, i32 3}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2158, i32 3}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2159, i32 27}
!75 = !{ptr @hfc_map, !76, !"hfc_map", i1 false, i1 false}
!76 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2131, i32 30}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2223, i32 3}
!79 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hfc_probe._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @hfc_probe._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2234, i32 2}
!85 = !{ptr @hfc_probe._entry.27, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @hfc_probe._entry_ptr.29, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @setup_card.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2086, i32 2}
!89 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2109, i32 38}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2114, i32 2}
!94 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @setup_card._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @setup_card._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 960, i32 3}
!99 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ph_state_nt._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ph_state_nt._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 912, i32 3}
!104 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ph_state_te._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @ph_state_te._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 671, i32 3}
!109 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @hfcpci_fill_dfifo._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @hfcpci_fill_dfifo._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 681, i32 3}
!114 = !{ptr @hfcpci_fill_dfifo._entry.40, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @hfcpci_fill_dfifo._entry_ptr.42, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 689, i32 4}
!118 = !{ptr @hfcpci_fill_dfifo._entry.43, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @hfcpci_fill_dfifo._entry_ptr.45, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 703, i32 3}
!122 = !{ptr @hfcpci_fill_dfifo._entry.46, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @hfcpci_fill_dfifo._entry_ptr.48, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 707, i32 4}
!126 = !{ptr @hfcpci_fill_dfifo._entry.49, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @hfcpci_fill_dfifo._entry_ptr.51, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1956, i32 3}
!130 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @hfc_dctrl._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @hfc_dctrl._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1969, i32 4}
!135 = !{ptr @hfc_dctrl._entry.54, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @hfc_dctrl._entry_ptr.56, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1979, i32 4}
!139 = !{ptr @hfc_dctrl._entry.57, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @hfc_dctrl._entry_ptr.59, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1879, i32 3}
!143 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @open_dchannel._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @open_dchannel._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1920, i32 3}
!148 = !{ptr @open_dchannel._entry.62, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @open_dchannel._entry_ptr.64, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1106, i32 4}
!152 = !{ptr @hfc_l1callback._entry, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @hfc_l1callback._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1719, i32 2}
!156 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @init_card._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @init_card._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1725, i32 52}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1726, i32 3}
!163 = !{ptr @init_card._entry.69, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @init_card._entry_ptr.71, !162, !"_entry_ptr", i1 false, i1 false}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1742, i32 3}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1744, i32 3}
!169 = !{ptr @init_card._entry.72, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @init_card._entry_ptr.74, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1753, i32 4}
!173 = !{ptr @init_card._entry.75, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @init_card._entry_ptr.77, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1157, i32 4}
!177 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @hfcpci_int._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @hfcpci_int._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1167, i32 3}
!182 = !{ptr @hfcpci_int._entry.80, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @hfcpci_int._entry_ptr.82, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1172, i32 4}
!186 = !{ptr @hfcpci_int._entry.83, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @hfcpci_int._entry_ptr.85, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1191, i32 4}
!190 = !{ptr @hfcpci_int._entry.86, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @hfcpci_int._entry_ptr.88, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1198, i32 4}
!194 = !{ptr @hfcpci_int._entry.89, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @hfcpci_int._entry_ptr.91, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.93, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1205, i32 4}
!198 = !{ptr @hfcpci_int._entry.92, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @hfcpci_int._entry_ptr.94, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1212, i32 4}
!202 = !{ptr @hfcpci_int._entry.95, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @hfcpci_int._entry_ptr.97, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 622, i32 4}
!206 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @main_rec_hfcpci._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @main_rec_hfcpci._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 631, i32 4}
!211 = !{ptr @main_rec_hfcpci._entry.100, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @main_rec_hfcpci._entry_ptr.102, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 401, i32 3}
!215 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @hfcpci_empty_bfifo._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @hfcpci_empty_bfifo._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 410, i32 4}
!220 = !{ptr @hfcpci_empty_bfifo._entry.105, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @hfcpci_empty_bfifo._entry_ptr.107, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 420, i32 4}
!224 = !{ptr @hfcpci_empty_bfifo._entry.108, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @hfcpci_empty_bfifo._entry_ptr.110, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.111, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 570, i32 3}
!228 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @hfcpci_empty_fifo_trans._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @hfcpci_empty_fifo_trans._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.113, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 750, i32 3}
!233 = !{ptr @hfcpci_fill_fifo._entry, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @hfcpci_fill_fifo._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 771, i32 4}
!237 = !{ptr @hfcpci_fill_fifo._entry.114, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @hfcpci_fill_fifo._entry_ptr.116, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 789, i32 5}
!241 = !{ptr @hfcpci_fill_fifo._entry.117, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @hfcpci_fill_fifo._entry_ptr.119, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.121, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 825, i32 4}
!245 = !{ptr @hfcpci_fill_fifo._entry.120, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @hfcpci_fill_fifo._entry_ptr.122, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.124, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 848, i32 3}
!249 = !{ptr @hfcpci_fill_fifo._entry.123, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @hfcpci_fill_fifo._entry_ptr.125, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 857, i32 4}
!253 = !{ptr @hfcpci_fill_fifo._entry.126, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @hfcpci_fill_fifo._entry_ptr.128, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.130, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 868, i32 3}
!257 = !{ptr @hfcpci_fill_fifo._entry.129, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @hfcpci_fill_fifo._entry_ptr.131, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.133, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 873, i32 4}
!261 = !{ptr @hfcpci_fill_fifo._entry.132, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @hfcpci_fill_fifo._entry_ptr.134, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.135, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 470, i32 4}
!265 = !{ptr @.str.136, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @receive_dmsg._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @receive_dmsg._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.138, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 480, i32 5}
!270 = !{ptr @receive_dmsg._entry.137, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @receive_dmsg._entry_ptr.139, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.141, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 496, i32 5}
!274 = !{ptr @receive_dmsg._entry.140, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @receive_dmsg._entry_ptr.142, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.143, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 198, i32 2}
!278 = !{ptr @.str.144, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @reset_hfcpci._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @reset_hfcpci._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.146, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 200, i32 2}
!283 = !{ptr @reset_hfcpci._entry.145, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @reset_hfcpci._entry_ptr.147, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.149, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 208, i32 2}
!287 = !{ptr @reset_hfcpci._entry.148, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @reset_hfcpci._entry_ptr.150, !286, !"_entry_ptr", i1 false, i1 false}
!289 = distinct !{null, !290, !"__already_done", i1 false, i1 false}
!290 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 211, i32 2}
!291 = !{ptr @.str.152, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 216, i32 2}
!293 = !{ptr @reset_hfcpci._entry.151, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @reset_hfcpci._entry_ptr.153, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.155, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 224, i32 2}
!297 = !{ptr @reset_hfcpci._entry.154, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @reset_hfcpci._entry_ptr.156, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.157, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1705, i32 2}
!301 = !{ptr @.str.158, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @inithfcpci._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @inithfcpci._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @inithfcpci.__key, !305, !"__key", i1 false, i1 false}
!305 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1706, i32 2}
!306 = !{ptr @.str.159, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.160, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1244, i32 3}
!309 = !{ptr @.str.161, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @mode_hfcpci._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @mode_hfcpci._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.163, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1252, i32 4}
!314 = !{ptr @mode_hfcpci._entry.162, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @mode_hfcpci._entry_ptr.164, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.166, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1259, i32 3}
!318 = !{ptr @mode_hfcpci._entry.165, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @mode_hfcpci._entry_ptr.167, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.169, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1379, i32 3}
!322 = !{ptr @mode_hfcpci._entry.168, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @mode_hfcpci._entry_ptr.170, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.172, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1399, i32 4}
!326 = !{ptr @mode_hfcpci._entry.171, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @mode_hfcpci._entry_ptr.173, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.175, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1401, i32 4}
!330 = !{ptr @mode_hfcpci._entry.174, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @mode_hfcpci._entry_ptr.176, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.178, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1408, i32 4}
!334 = !{ptr @mode_hfcpci._entry.177, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @mode_hfcpci._entry_ptr.179, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.181, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1410, i32 4}
!338 = !{ptr @mode_hfcpci._entry.180, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @mode_hfcpci._entry_ptr.182, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.183, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 368, i32 3}
!342 = !{ptr @.str.184, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @hfcpci_clear_fifo_tx._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @hfcpci_clear_fifo_tx._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.186, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 382, i32 3}
!347 = !{ptr @hfcpci_clear_fifo_tx._entry.185, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @hfcpci_clear_fifo_tx._entry_ptr.187, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @tics, !350, !"tics", i1 false, i1 false}
!350 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 46, i32 19}
!351 = !{ptr @.str.188, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1939, i32 3}
!353 = !{ptr @open_bchannel._entry, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @open_bchannel._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.189, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1796, i32 4}
!357 = !{ptr @.str.190, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @channel_ctrl._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @channel_ctrl._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.192, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1808, i32 4}
!362 = !{ptr @channel_ctrl._entry.191, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @channel_ctrl._entry_ptr.193, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @channel_ctrl._entry.194, !365, !"_entry", i1 false, i1 false}
!365 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1838, i32 3}
!366 = !{ptr @channel_ctrl._entry_ptr.195, !365, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @channel_ctrl._entry.196, !368, !"_entry", i1 false, i1 false}
!368 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1846, i32 3}
!369 = !{ptr @channel_ctrl._entry_ptr.197, !368, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.199, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1864, i32 3}
!372 = !{ptr @channel_ctrl._entry.198, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @channel_ctrl._entry_ptr.200, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.201, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1533, i32 3}
!376 = !{ptr @hfc_bctrl._entry, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @hfc_bctrl._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.203, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1563, i32 3}
!380 = !{ptr @hfc_bctrl._entry.202, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @hfc_bctrl._entry_ptr.204, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.205, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1435, i32 3}
!384 = !{ptr @.str.206, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @set_hfcpci_rxtest._entry, !383, !"_entry", i1 false, i1 false}
!386 = !{ptr @set_hfcpci_rxtest._entry_ptr, !383, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.208, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1439, i32 3}
!389 = !{ptr @set_hfcpci_rxtest._entry.207, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @set_hfcpci_rxtest._entry_ptr.209, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @set_hfcpci_rxtest._entry.210, !392, !"_entry", i1 false, i1 false}
!392 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1490, i32 3}
!393 = !{ptr @set_hfcpci_rxtest._entry_ptr.211, !392, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.212, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1991, i32 2}
!396 = !{ptr @.str.213, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @setup_hw._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @setup_hw._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.215, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 1996, i32 3}
!401 = !{ptr @setup_hw._entry.214, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @setup_hw._entry_ptr.216, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.218, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2003, i32 3}
!405 = !{ptr @setup_hw._entry.217, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @setup_hw._entry_ptr.219, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.221, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2009, i32 3}
!409 = !{ptr @setup_hw._entry.220, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @setup_hw._entry_ptr.222, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @.str.224, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2017, i32 3}
!413 = !{ptr @setup_hw._entry.223, !412, !"_entry", i1 false, i1 false}
!414 = !{ptr @setup_hw._entry_ptr.225, !412, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.227, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2025, i32 3}
!417 = !{ptr @setup_hw._entry.226, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @setup_hw._entry_ptr.228, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.230, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2032, i32 2}
!421 = !{ptr @setup_hw._entry.229, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @setup_hw._entry_ptr.231, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @setup_hw.__key, !424, !"__key", i1 false, i1 false}
!424 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2045, i32 2}
!425 = !{ptr @.str.232, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @.str.233, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 42, i32 38}
!428 = distinct !{null, !429, !"hfcpci_revision", i1 false, i1 false}
!429 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 42, i32 20}
!430 = !{ptr @HFC_cnt, !431, !"HFC_cnt", i1 false, i1 false}
!431 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 44, i32 12}
!432 = !{ptr @.str.234, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2254, i32 4}
!434 = !{ptr @.str.235, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @hfc_remove_pci._entry, !433, !"_entry", i1 false, i1 false}
!436 = !{ptr @hfc_remove_pci._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.236, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2320, i32 4}
!439 = !{ptr @.str.237, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @HFC_init._entry, !438, !"_entry", i1 false, i1 false}
!441 = !{ptr @HFC_init._entry_ptr, !438, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.239, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2327, i32 3}
!444 = !{ptr @HFC_init._entry.238, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @HFC_init._entry_ptr.240, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @HFC_init.__key, !447, !"__key", i1 false, i1 false}
!447 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2329, i32 3}
!448 = !{ptr @.str.241, !447, !"<string literal>", i1 false, i1 false}
!449 = distinct !{null, !450, !"__already_done", i1 false, i1 false}
!450 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 2294, i32 2}
!451 = !{ptr @hfc_jiffies, !452, !"hfc_jiffies", i1 false, i1 false}
!452 = !{!"../drivers/isdn/hardware/mISDN/hfcpci.c", i32 48, i32 22}
!453 = !{!"sp"}
!454 = !{i32 1, !"wchar_size", i32 2}
!455 = !{i32 1, !"min_enum_size", i32 4}
!456 = !{i32 8, !"branch-target-enforcement", i32 0}
!457 = !{i32 8, !"sign-return-address", i32 0}
!458 = !{i32 8, !"sign-return-address-all", i32 0}
!459 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!460 = !{i32 7, !"uwtable", i32 1}
!461 = !{i32 7, !"frame-pointer", i32 2}
!462 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!463 = !{!"branch_weights", i32 1, i32 2000}
!464 = !{i64 2157244246}
!465 = !{i64 4260324}
!466 = !{i64 2157440403}
!467 = !{i64 2157325356}
!468 = !{i64 4260719}
!469 = !{i64 2157325713}
!470 = !{i64 2157325998}
!471 = !{i64 2157326871}
!472 = !{i64 2157327224}
!473 = !{i64 2157327614}
!474 = !{i64 2157328216}
!475 = !{i64 2157328566}
!476 = !{i64 2157329174}
!477 = !{i64 2157329658}
!478 = !{i64 2157330583}
!479 = !{i64 2157331311}
!480 = !{i64 2157331699}
!481 = !{i64 2157385799}
!482 = !{i64 2157386495}
!483 = !{i64 2157387322}
!484 = !{i64 2157387996}
!485 = !{i64 2157406581}
!486 = !{i64 2157406914}
!487 = !{i64 2157407261}
!488 = !{i64 2157409117}
!489 = !{i64 2157409450}
!490 = !{i64 2157409797}
!491 = !{i64 2157410151}
!492 = !{i64 2157410503}
!493 = !{i64 2157412371}
!494 = !{i64 2157412704}
!495 = !{i64 2157414553}
!496 = !{i64 2157414886}
!497 = !{i64 2157415233}
!498 = !{i64 2157415585}
!499 = !{i64 2157415945}
!500 = !{i64 2157322619}
!501 = !{i64 2157323113}
!502 = !{i64 2157332119}
!503 = !{i64 2157332480}
!504 = !{i64 2157333347}
!505 = !{i64 2157333714}
!506 = !{i64 2157334079}
!507 = !{i64 2157334454}
!508 = !{i64 2157335127}
!509 = !{i64 2157243881}
!510 = !{i64 2157400526}
!511 = !{i64 2157402659}
!512 = !{i64 2157403017}
!513 = !{i64 2157244644}
!514 = !{i64 2157245023}
!515 = !{i64 2157245946}
!516 = !{i64 2157246311}
!517 = !{i64 2157337948}
!518 = !{i64 2157338240}
!519 = !{i64 2157341409}
!520 = !{i64 2157347767}
!521 = !{i64 2157248082}
!522 = !{i64 2157249889}
!523 = !{i64 2157251663}
!524 = !{i64 2157256472}
!525 = !{i64 2157258056}
!526 = !{i64 2157258411}
!527 = !{i64 2157260711}
!528 = !{i64 2157262546}
!529 = !{i64 2157262901}
!530 = !{i64 2157263260}
!531 = !{i64 2157263617}
!532 = !{i64 2157263995}
!533 = !{i64 2157264352}
!534 = !{i64 2157264640}
!535 = !{i64 2157265001}
!536 = !{i64 2157265709}
!537 = !{i64 2157266042}
!538 = !{i64 2157266375}
!539 = !{i64 2157267041}
!540 = !{i64 2157267374}
!541 = !{i64 2157267707}
!542 = !{i64 2157268054}
!543 = !{i64 2157268409}
!544 = !{i64 2157269947}
!545 = !{i64 2157270900}
!546 = !{i64 2157363806}
!547 = !{i64 2157364148}
!548 = !{i64 2157367454}
!549 = !{i64 2157367796}
!550 = !{i64 2157368152}
!551 = !{i64 2157368513}
!552 = !{i64 2157368875}
!553 = !{i64 2157369234}
!554 = !{i64 2157369595}
!555 = !{i64 2157369952}
!556 = !{i64 2157370306}
!557 = !{i64 2157271273}
!558 = !{i64 2157274321}
!559 = !{i64 2157375405}
!560 = !{i64 2157375767}
!561 = !{i64 2157376130}
!562 = !{i64 2157376487}
!563 = !{i64 2157376841}
!564 = !{!"branch_weights", i32 2000, i32 1}
