; ModuleID = '/llk/IR_all_yes/drivers/net/can/softing/softing_fw.c_pt.bc'
source_filename = "../drivers/net/can/softing/softing_fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.softing = type { ptr, ptr, [2 x ptr], %struct.spinlock, i64, i64, %struct.anon.142, %struct.anon.143, %struct.anon.144, ptr, i32, i32, %struct.anon.145 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.142 = type { i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.143 = type { i32, i32, i32, i32 }
%struct.anon.144 = type { i32, i32 }
%struct.anon.145 = type { i16, i16, i16, i16, [2 x i16], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.softing_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.anon, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { i32, i32, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.can_frame = type { i32, %union.anon.152, i8, i8, i8, [8 x i8] }
%union.anon.152 = type { i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.127, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.141, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.127 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.141 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@softing_bootloader_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bootloader %s failed (%i)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"softing_bootloader_command\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/can/softing/softing_fw.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@softing_bootloader_command._entry_ptr = internal global ptr @softing_bootloader_command._entry, section ".printk_index", align 4
@softing_load_fw.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"softing\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"softing_load_fw\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s, firmware(%s) got %u bytes, offset %c0x%04x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Structured Binary Format, Softing GmbH\00", [57 x i8] zeroinitializer }, align 32
@softing_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DPRAM readback failed\0A\00", [41 x i8] zeroinitializer }, align 32
@softing_load_fw._entry_ptr = internal global ptr @softing_load_fw._entry, section ".printk_index", align 4
@softing_load_fw._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 214, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"firmware %s failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@softing_load_fw._entry_ptr.13 = internal global ptr @softing_load_fw._entry.10, section ".printk_index", align 4
@softing_load_app_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request_firmware(%s) got %i\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"softing_load_app_fw\00", [44 x i8] zeroinitializer }, align 32
@softing_load_app_fw._entry_ptr = internal global ptr @softing_load_app_fw._entry, section ".printk_index", align 4
@softing_load_app_fw.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware(%s) got %lu bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@softing_load_app_fw._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"firmware starts with type 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@softing_load_app_fw._entry_ptr.19 = internal global ptr @softing_load_app_fw._entry.17, section ".printk_index", align 4
@softing_load_app_fw._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firmware string '%.*s' fault\0A\00", [34 x i8] zeroinitializer }, align 32
@softing_load_app_fw._entry_ptr.22 = internal global ptr @softing_load_app_fw._entry.20, section ".printk_index", align 4
@softing_load_app_fw._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.15, ptr @.str.2, i32 271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unknown record type 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@softing_load_app_fw._entry_ptr.25 = internal global ptr @softing_load_app_fw._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"loading app.\00", [19 x i8] zeroinitializer }, align 32
@softing_load_app_fw._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.15, ptr @.str.2, i32 295, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"SRAM seems to be damaged, wanted 0x%04x, got 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@softing_load_app_fw._entry_ptr.29 = internal global ptr @softing_load_app_fw._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"start app.\00", [21 x i8] zeroinitializer }, align 32
@softing_load_app_fw._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.15, ptr @.str.2, i32 312, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@softing_load_app_fw._entry_ptr.32 = internal global ptr @softing_load_app_fw._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sync-a\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sync-b\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_serial_number\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_version\00", [20 x i8] zeroinitializer }, align 32
@softing_startstop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 484, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"err_reporting flag differs for buses\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"softing_startstop\00", [46 x i8] zeroinitializer }, align 32
@softing_startstop._entry_ptr = internal global ptr @softing_startstop._entry, section ".printk_index", align 4
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"initialize_chip[0]\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_mode[0]\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_filter[0]\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_output[0]\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"initialize_chip[1]\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_mode[1]\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_filter[1]\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_output[1]\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"initialize_interface\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_fifo\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fifo_tx_ack[0]\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fifo_tx_ack[1]\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"start_chip\00", [21 x i8] zeroinitializer }, align 32
@_softing_fct_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"firmware %s failed (%i)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_softing_fct_cmd\00", [47 x i8] zeroinitializer }, align 32
@_softing_fct_cmd._entry_ptr = internal global ptr @_softing_fct_cmd._entry, section ".printk_index", align 4
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reset_can\00", [22 x i8] zeroinitializer }, align 32
@softing_fct_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s returned %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"softing_fct_cmd\00", [16 x i8] zeroinitializer }, align 32
@softing_fct_cmd._entry_ptr = internal global ptr @softing_fct_cmd._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 1000]
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 90, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 148, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 161, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 201, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 214, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 230, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 234, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 245, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 250, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 270, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 288, i32 45 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 294, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 305, i32 44 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 312, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 342, i32 41 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 346, i32 41 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 354, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 359, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 483, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 501, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 507, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 519, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 524, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 541, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 547, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 559, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 564, i32 34 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 592, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 596, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 600, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 604, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 608, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 49, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 327, i32 34 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [40 x i8] c"../drivers/net/can/softing/softing_fw.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 59, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @_softing_fct_cmd._entry, ptr @_softing_fct_cmd._entry_ptr, ptr @softing_bootloader_command._entry, ptr @softing_bootloader_command._entry_ptr, ptr @softing_fct_cmd._entry, ptr @softing_fct_cmd._entry_ptr, ptr @softing_load_app_fw._entry, ptr @softing_load_app_fw._entry.17, ptr @softing_load_app_fw._entry.20, ptr @softing_load_app_fw._entry.23, ptr @softing_load_app_fw._entry.27, ptr @softing_load_app_fw._entry.31, ptr @softing_load_app_fw._entry_ptr, ptr @softing_load_app_fw._entry_ptr.19, ptr @softing_load_app_fw._entry_ptr.22, ptr @softing_load_app_fw._entry_ptr.25, ptr @softing_load_app_fw._entry_ptr.29, ptr @softing_load_app_fw._entry_ptr.32, ptr @softing_load_fw._entry, ptr @softing_load_fw._entry.10, ptr @softing_load_fw._entry_ptr, ptr @softing_load_fw._entry_ptr.13, ptr @softing_startstop._entry, ptr @softing_startstop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_bootloader_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_load_fw._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_load_app_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_load_app_fw._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_load_app_fw._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_load_app_fw._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_load_app_fw._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_load_app_fw._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_startstop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_softing_fct_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_fct_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @softing_bootloader_command(ptr nocapture noundef readonly %card, i16 noundef signext %cmd, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dpram = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpram, align 8
  %arrayidx = getelementptr i8, ptr %1, i32 2032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx, i16 0) #10, !srcloc !117
  %2 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpram, align 8
  %arrayidx2 = getelementptr i8, ptr %3, i32 2016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %4 = tail call i16 @llvm.bswap.i16(i16 %cmd) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx2, i16 %4) #10, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, 300
  br label %do.body3

do.body3:                                         ; preds = %signal_pending.exit.do.body3_crit_edge, %entry
  %6 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dpram, align 8
  %arrayidx5 = getelementptr i8, ptr %7, i32 2032
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx5) #10, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp = icmp eq i16 %8, 256
  br i1 %cmp, label %do.body3.cleanup_crit_edge, label %if.end

do.body3.cleanup_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %do.body3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp7 = icmp slt i32 %sub, 0
  br i1 %cmp7, label %if.end.do.end14_crit_edge, label %if.end10

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

if.end10:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 10000, i32 noundef 2) #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !106) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stack.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end10.do.end14_crit_edge, !prof !122

if.end10.do.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

signal_pending.exit:                              ; preds = %if.end10
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %and1.i.i.i.i.i = and i32 %20, 1
  %tobool.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not, label %signal_pending.exit.do.body3_crit_edge, label %signal_pending.exit.do.end14_crit_edge

signal_pending.exit.do.end14_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

signal_pending.exit.do.body3_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

do.end14:                                         ; preds = %signal_pending.exit.do.end14_crit_edge, %if.end10.do.end14_crit_edge, %if.end.do.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp15 = icmp eq i16 %8, 0
  %cond = select i1 %cmp15, i32 -110, i32 -125
  %pdev = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %msg, i32 noundef %cond) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.body3.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %do.end14 ], [ 0, %do.body3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @softing_load_fw(ptr noundef %file, ptr nocapture noundef readonly %card, ptr noundef %dpram, i32 noundef %size, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !123
  %pdev = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %file, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @softing_load_fw.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@softing_load_fw, %do.end)) #10
          to label %if.then5 [label %do.end], !srcloc !124

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 8
  %name = getelementptr inbounds %struct.softing_platform_data, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset)
  %cmp9 = icmp sgt i32 %offset, -1
  %cond = select i1 %cmp9, i32 43, i32 45
  %13 = call i32 @llvm.abs.i32(i32 %offset, i1 false)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @softing_load_fw.__UNIQUE_ID_ddebug459, ptr noundef %dev7, ptr noundef nonnull @.str.7, ptr noundef %8, ptr noundef %file, i32 noundef %12, i32 noundef %cond, i32 noundef %13) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 4
  %arrayidx = getelementptr i8, ptr %17, i32 %19
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %17, align 2
  %arrayidx3.i = getelementptr i8, ptr %17, i32 6
  %22 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx3.i, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23) #10
  %arrayidx5.i = getelementptr i8, ptr %17, i32 8
  %conv.i = zext i16 %24 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %arrayidx6.i = getelementptr i8, ptr %17, i32 %add.i
  %25 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx6.i, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26) #10
  %cmp38.i = icmp ult ptr %17, %arrayidx6.i
  br i1 %cmp38.i, label %do.end.for.body.i_crit_edge, label %do.end.for.end.i_crit_edge

do.end.for.end.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %mem.040.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %17, %do.end.for.body.i_crit_edge ]
  %checksum.sroa.5.039.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %mem.040.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mem.040.i, align 1
  %conv11.i = zext i8 %29 to i32
  %add14.i = add nuw nsw i32 %checksum.sroa.5.039.i, %conv11.i
  %incdec.ptr.i = getelementptr i8, ptr %mem.040.i, i32 1
  %phi.cast.i = and i32 %add14.i, 65535
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %arrayidx6.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end.for.end.i_crit_edge
  %checksum.sroa.5.0.lcssa.i = phi i32 [ 0, %do.end.for.end.i_crit_edge ], [ %phi.cast.i, %for.body.i.for.end.i_crit_edge ]
  %conv17.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %checksum.sroa.5.0.lcssa.i, i32 %conv17.i)
  %cmp20.not.i = icmp eq i32 %checksum.sroa.5.0.lcssa.i, %conv17.i
  br i1 %cmp20.not.i, label %if.end18, label %for.end.i.failed_crit_edge

for.end.i.failed_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end18:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %cmp19.not = icmp eq i16 %21, -1
  br i1 %cmp19.not, label %if.end22, label %if.end18.failed_crit_edge

if.end18.failed_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end22:                                         ; preds = %if.end18
  %call24 = call i32 @strncmp(ptr noundef nonnull @.str.8, ptr noundef %arrayidx5.i, i32 noundef %conv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %while.cond.outer.preheader, label %if.end22.failed_crit_edge

if.end22.failed_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

while.cond.outer.preheader:                       ; preds = %if.end22
  %add23.i = add nuw nsw i32 %conv.i, 10
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add23.i
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end73.while.cond.outer_crit_edge, %while.cond.outer.preheader
  %mem.1.ph = phi ptr [ %add.ptr.i154, %if.end73.while.cond.outer_crit_edge ], [ %add.ptr.i, %while.cond.outer.preheader ]
  %buf.0.ph = phi ptr [ %buf.1, %if.end73.while.cond.outer_crit_edge ], [ null, %while.cond.outer.preheader ]
  %buflen.0.ph = phi i32 [ %buflen.1, %if.end73.while.cond.outer_crit_edge ], [ 0, %while.cond.outer.preheader ]
  br label %while.cond

while.cond:                                       ; preds = %if.end34.while.cond_crit_edge, %while.cond.outer
  %mem.1 = phi ptr [ %add.ptr.i154, %if.end34.while.cond_crit_edge ], [ %mem.1.ph, %while.cond.outer ]
  %cmp28 = icmp ult ptr %mem.1, %arrayidx
  br i1 %cmp28, label %while.body, label %while.cond.failed_crit_edge

while.cond.failed_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

while.body:                                       ; preds = %while.cond
  %30 = ptrtoint ptr %mem.1 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mem.1, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31) #10
  %arrayidx3.i135 = getelementptr i8, ptr %mem.1, i32 6
  %33 = ptrtoint ptr %arrayidx3.i135 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx3.i135, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34) #10
  %conv.i137 = zext i16 %35 to i32
  %add.i138 = add nuw nsw i32 %conv.i137, 8
  %arrayidx6.i139 = getelementptr i8, ptr %mem.1, i32 %add.i138
  %36 = ptrtoint ptr %arrayidx6.i139 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx6.i139, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37) #10
  %cmp38.i140 = icmp ult ptr %mem.1, %arrayidx6.i139
  br i1 %cmp38.i140, label %while.body.for.body.i148_crit_edge, label %while.body.for.end.i152_crit_edge

while.body.for.end.i152_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i152

while.body.for.body.i148_crit_edge:               ; preds = %while.body
  br label %for.body.i148

for.body.i148:                                    ; preds = %for.body.i148.for.body.i148_crit_edge, %while.body.for.body.i148_crit_edge
  %mem.040.i141 = phi ptr [ %incdec.ptr.i145, %for.body.i148.for.body.i148_crit_edge ], [ %mem.1, %while.body.for.body.i148_crit_edge ]
  %checksum.sroa.5.039.i142 = phi i32 [ %phi.cast.i146, %for.body.i148.for.body.i148_crit_edge ], [ 0, %while.body.for.body.i148_crit_edge ]
  %39 = ptrtoint ptr %mem.040.i141 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mem.040.i141, align 1
  %conv11.i143 = zext i8 %40 to i32
  %add14.i144 = add nuw nsw i32 %checksum.sroa.5.039.i142, %conv11.i143
  %incdec.ptr.i145 = getelementptr i8, ptr %mem.040.i141, i32 1
  %phi.cast.i146 = and i32 %add14.i144, 65535
  %exitcond.not.i147 = icmp eq ptr %incdec.ptr.i145, %arrayidx6.i139
  br i1 %exitcond.not.i147, label %for.body.i148.for.end.i152_crit_edge, label %for.body.i148.for.body.i148_crit_edge

for.body.i148.for.body.i148_crit_edge:            ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i148

for.body.i148.for.end.i152_crit_edge:             ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i152

for.end.i152:                                     ; preds = %for.body.i148.for.end.i152_crit_edge, %while.body.for.end.i152_crit_edge
  %checksum.sroa.5.0.lcssa.i149 = phi i32 [ 0, %while.body.for.end.i152_crit_edge ], [ %phi.cast.i146, %for.body.i148.for.end.i152_crit_edge ]
  %conv17.i150 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %checksum.sroa.5.0.lcssa.i149, i32 %conv17.i150)
  %cmp20.not.i151 = icmp eq i32 %checksum.sroa.5.0.lcssa.i149, %conv17.i150
  br i1 %cmp20.not.i151, label %if.end34, label %for.end.i152.failed.loopexit_crit_edge

for.end.i152.failed.loopexit_crit_edge:           ; preds = %for.end.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.loopexit

if.end34:                                         ; preds = %for.end.i152
  %add23.i153 = add nuw nsw i32 %conv.i137, 10
  %add.ptr.i154 = getelementptr i8, ptr %mem.1, i32 %add23.i153
  %41 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i16 %32, label %if.end34.failed.loopexit_crit_edge [
    i16 3, label %if.end34.while.cond_crit_edge
    i16 1, label %if.end34.failed_crit_edge
    i16 0, label %if.end50
  ]

if.end34.failed_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end34.while.cond_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end34.failed.loopexit_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.loopexit

if.end50:                                         ; preds = %if.end34
  %arrayidx1.i134.le = getelementptr i8, ptr %mem.1, i32 2
  %42 = ptrtoint ptr %arrayidx1.i134.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx1.i134.le, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #10
  %arrayidx5.i136.le = getelementptr i8, ptr %mem.1, i32 8
  %add = add i32 %44, %offset
  %add52 = add i32 %add, %conv.i137
  call void @__sanitizer_cov_trace_cmp4(i32 %add52, i32 %size)
  %cmp53 = icmp ugt i32 %add52, %size
  br i1 %cmp53, label %if.end50.failed.loopexit.loopexit189_crit_edge, label %if.end56

if.end50.failed.loopexit.loopexit189_crit_edge:   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.loopexit.loopexit189

if.end56:                                         ; preds = %if.end50
  %arrayidx58 = getelementptr i8, ptr %dpram, i32 %add
  call void @mmiocpy(ptr noundef %arrayidx58, ptr noundef %arrayidx5.i136.le, i32 noundef %conv.i137) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !125
  call void @arm_heavy_mb() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %buflen.0.ph, i32 %conv.i137)
  %cmp64 = icmp slt i32 %buflen.0.ph, %conv.i137
  br i1 %cmp64, label %if.then66, label %if.end56.if.end73_crit_edge

if.end56.if.end73_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then66:                                        ; preds = %if.end56
  %add68 = add nuw nsw i32 %conv.i137, 1023
  %and = and i32 %add68, 130048
  %call69 = call noalias ptr @krealloc(ptr noundef %buf.0.ph, i32 noundef %and, i32 noundef 3264) #14
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.then66.failed.loopexit.loopexit189_crit_edge, label %if.then66.if.end73_crit_edge

if.then66.if.end73_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then66.failed.loopexit.loopexit189_crit_edge:  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.loopexit.loopexit189

if.end73:                                         ; preds = %if.then66.if.end73_crit_edge, %if.end56.if.end73_crit_edge
  %buf.1 = phi ptr [ %buf.0.ph, %if.end56.if.end73_crit_edge ], [ %call69, %if.then66.if.end73_crit_edge ]
  %buflen.1 = phi i32 [ %buflen.0.ph, %if.end56.if.end73_crit_edge ], [ %and, %if.then66.if.end73_crit_edge ]
  call void @mmiocpy(ptr noundef %buf.1, ptr noundef %arrayidx58, i32 noundef %conv.i137) #10
  %bcmp = call i32 @bcmp(ptr %buf.1, ptr %arrayidx5.i136.le, i32 %conv.i137) #15
  %tobool79.not = icmp eq i32 %bcmp, 0
  br i1 %tobool79.not, label %if.end73.while.cond.outer_crit_edge, label %do.end83

if.end73.while.cond.outer_crit_edge:              ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer

do.end83:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev, align 4
  %dev85 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev85, ptr noundef nonnull @.str.9) #13
  br label %failed

failed.loopexit.loopexit189:                      ; preds = %if.then66.failed.loopexit.loopexit189_crit_edge, %if.end50.failed.loopexit.loopexit189_crit_edge
  %ret.2.ph.ph = phi i32 [ -12, %if.then66.failed.loopexit.loopexit189_crit_edge ], [ 0, %if.end50.failed.loopexit.loopexit189_crit_edge ]
  %47 = xor i1 %cmp53, true
  br label %failed

failed.loopexit:                                  ; preds = %if.end34.failed.loopexit_crit_edge, %for.end.i152.failed.loopexit_crit_edge
  br label %failed

failed:                                           ; preds = %failed.loopexit, %failed.loopexit.loopexit189, %do.end83, %if.end34.failed_crit_edge, %while.cond.failed_crit_edge, %if.end22.failed_crit_edge, %if.end18.failed_crit_edge, %for.end.i.failed_crit_edge
  %buf.2 = phi ptr [ null, %if.end18.failed_crit_edge ], [ %buf.1, %do.end83 ], [ null, %if.end22.failed_crit_edge ], [ null, %for.end.i.failed_crit_edge ], [ %buf.0.ph, %failed.loopexit.loopexit189 ], [ %buf.0.ph, %failed.loopexit ], [ %buf.0.ph, %if.end34.failed_crit_edge ], [ %buf.0.ph, %while.cond.failed_crit_edge ]
  %cmp90 = phi i1 [ false, %if.end18.failed_crit_edge ], [ true, %do.end83 ], [ true, %if.end22.failed_crit_edge ], [ true, %for.end.i.failed_crit_edge ], [ %47, %failed.loopexit.loopexit189 ], [ true, %failed.loopexit ], [ false, %if.end34.failed_crit_edge ], [ false, %while.cond.failed_crit_edge ]
  %ret.2 = phi i32 [ 0, %if.end18.failed_crit_edge ], [ -5, %do.end83 ], [ -22, %if.end22.failed_crit_edge ], [ -22, %for.end.i.failed_crit_edge ], [ %ret.2.ph.ph, %failed.loopexit.loopexit189 ], [ -22, %failed.loopexit ], [ 0, %if.end34.failed_crit_edge ], [ 0, %while.cond.failed_crit_edge ]
  call void @kfree(ptr noundef %buf.2) #10
  %48 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %49) #10
  br i1 %cmp90, label %do.end95, label %failed.cleanup_crit_edge

failed.cleanup_crit_edge:                         ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end95:                                         ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 4
  %dev97 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev97, ptr noundef nonnull @.str.11, ptr noundef %file) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %failed.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.2, %do.end95 ], [ 0, %failed.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @softing_load_app_fw(ptr noundef %file, ptr nocapture noundef readonly %card) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !123
  %pdev = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %file, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev2, ptr noundef nonnull @.str.14, ptr noundef %file, i32 noundef %call) #13
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @softing_load_app_fw.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@softing_load_app_fw, %do.end14)) #10
          to label %if.then9 [label %do.end14], !srcloc !124

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @softing_load_app_fw.__UNIQUE_ID_ddebug460, ptr noundef %dev11, ptr noundef nonnull @.str.16, ptr noundef %file, i32 noundef %10) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body3
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %arrayidx = getelementptr i8, ptr %14, i32 %16
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %14, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #10
  %arrayidx3.i = getelementptr i8, ptr %14, i32 6
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx3.i, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21) #10
  %arrayidx5.i = getelementptr i8, ptr %14, i32 8
  %conv.i = zext i16 %22 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %arrayidx6.i = getelementptr i8, ptr %14, i32 %add.i
  %23 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx6.i, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24) #10
  %cmp38.i = icmp ult ptr %14, %arrayidx6.i
  br i1 %cmp38.i, label %do.end14.for.body.i_crit_edge, label %do.end14.for.end.i_crit_edge

do.end14.for.end.i_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

do.end14.for.body.i_crit_edge:                    ; preds = %do.end14
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end14.for.body.i_crit_edge
  %mem.040.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %14, %do.end14.for.body.i_crit_edge ]
  %checksum.sroa.5.039.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end14.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %mem.040.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mem.040.i, align 1
  %conv11.i = zext i8 %27 to i32
  %add14.i = add nuw nsw i32 %checksum.sroa.5.039.i, %conv11.i
  %incdec.ptr.i = getelementptr i8, ptr %mem.040.i, i32 1
  %phi.cast.i = and i32 %add14.i, 65535
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %arrayidx6.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end14.for.end.i_crit_edge
  %checksum.sroa.5.0.lcssa.i = phi i32 [ 0, %do.end14.for.end.i_crit_edge ], [ %phi.cast.i, %for.body.i.for.end.i_crit_edge ]
  %conv17.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %checksum.sroa.5.0.lcssa.i, i32 %conv17.i)
  %cmp20.not.i = icmp eq i32 %checksum.sroa.5.0.lcssa.i, %conv17.i
  br i1 %cmp20.not.i, label %if.end19, label %for.end.i.do.end126.sink.split_crit_edge

for.end.i.do.end126.sink.split_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end126.sink.split

if.end19:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %18)
  %cmp.not = icmp eq i16 %18, -1
  br i1 %cmp.not, label %if.end28, label %do.end24

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %19 to i32
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 4
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev26, ptr noundef nonnull @.str.18, i32 noundef %conv) #13
  br label %do.end126.sink.split

if.end28:                                         ; preds = %if.end19
  %add23.i = add nuw nsw i32 %conv.i, 10
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add23.i
  %call30 = call i32 @strncmp(ptr noundef nonnull @.str.8, ptr noundef %arrayidx5.i, i32 noundef %conv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %while.cond.preheader, label %do.end35

while.cond.preheader:                             ; preds = %if.end28
  %cmp40269275 = icmp ult ptr %add.ptr.i, %arrayidx
  br i1 %cmp40269275, label %while.body.lr.ph.lr.ph, label %while.cond.preheader.do.end126.sink.split_crit_edge

while.cond.preheader.do.end126.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end126.sink.split

while.body.lr.ph.lr.ph:                           ; preds = %while.cond.preheader
  %dpram = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 9
  br label %while.body.lr.ph

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %dev37 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev37, ptr noundef nonnull @.str.21, i32 noundef %conv.i, ptr noundef %arrayidx5.i) #13
  br label %do.end126.sink.split

while.cond:                                       ; preds = %if.end94
  %cmp40 = icmp ult ptr %add.ptr.i201, %arrayidx
  br i1 %cmp40, label %while.cond.while.body_crit_edge, label %while.cond.failed.thread314_crit_edge

while.cond.failed.thread314_crit_edge:            ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.thread314

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.while.body_crit_edge
  %mem.1270 = phi ptr [ %mem.1.ph276, %while.body.lr.ph ], [ %add.ptr.i201, %while.cond.while.body_crit_edge ]
  %32 = ptrtoint ptr %mem.1270 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mem.1270, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33) #10
  %arrayidx1.i181 = getelementptr i8, ptr %mem.1270, i32 2
  %35 = ptrtoint ptr %arrayidx1.i181 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx1.i181, align 4
  %arrayidx3.i182 = getelementptr i8, ptr %mem.1270, i32 6
  %37 = ptrtoint ptr %arrayidx3.i182 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx3.i182, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38) #10
  %arrayidx5.i183 = getelementptr i8, ptr %mem.1270, i32 8
  %conv.i184 = zext i16 %39 to i32
  %add.i185 = add nuw nsw i32 %conv.i184, 8
  %arrayidx6.i186 = getelementptr i8, ptr %mem.1270, i32 %add.i185
  %40 = ptrtoint ptr %arrayidx6.i186 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx6.i186, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41) #10
  %cmp38.i187 = icmp ult ptr %mem.1270, %arrayidx6.i186
  br i1 %cmp38.i187, label %while.body.for.body.i195_crit_edge, label %while.body.for.end.i199_crit_edge

while.body.for.end.i199_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i199

while.body.for.body.i195_crit_edge:               ; preds = %while.body
  br label %for.body.i195

for.body.i195:                                    ; preds = %for.body.i195.for.body.i195_crit_edge, %while.body.for.body.i195_crit_edge
  %mem.040.i188 = phi ptr [ %incdec.ptr.i192, %for.body.i195.for.body.i195_crit_edge ], [ %mem.1270, %while.body.for.body.i195_crit_edge ]
  %checksum.sroa.5.039.i189 = phi i32 [ %phi.cast.i193, %for.body.i195.for.body.i195_crit_edge ], [ 0, %while.body.for.body.i195_crit_edge ]
  %43 = ptrtoint ptr %mem.040.i188 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mem.040.i188, align 1
  %conv11.i190 = zext i8 %44 to i32
  %add14.i191 = add nuw nsw i32 %checksum.sroa.5.039.i189, %conv11.i190
  %incdec.ptr.i192 = getelementptr i8, ptr %mem.040.i188, i32 1
  %phi.cast.i193 = and i32 %add14.i191, 65535
  %exitcond.not.i194 = icmp eq ptr %incdec.ptr.i192, %arrayidx6.i186
  br i1 %exitcond.not.i194, label %for.body.i195.for.end.i199_crit_edge, label %for.body.i195.for.body.i195_crit_edge

for.body.i195.for.body.i195_crit_edge:            ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i195

for.body.i195.for.end.i199_crit_edge:             ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i199

for.end.i199:                                     ; preds = %for.body.i195.for.end.i199_crit_edge, %while.body.for.end.i199_crit_edge
  %checksum.sroa.5.0.lcssa.i196 = phi i32 [ 0, %while.body.for.end.i199_crit_edge ], [ %phi.cast.i193, %for.body.i195.for.end.i199_crit_edge ]
  %conv17.i197 = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %checksum.sroa.5.0.lcssa.i196, i32 %conv17.i197)
  %cmp20.not.i198 = icmp eq i32 %checksum.sroa.5.0.lcssa.i196, %conv17.i197
  br i1 %cmp20.not.i198, label %if.end45, label %for.end.i199.do.end126.sink.split_crit_edge

for.end.i199.do.end126.sink.split_crit_edge:      ; preds = %for.end.i199
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end126.sink.split

if.end45:                                         ; preds = %for.end.i199
  %add23.i200 = add nuw nsw i32 %conv.i184, 10
  %add.ptr.i201 = getelementptr i8, ptr %mem.1270, i32 %add23.i200
  %45 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.57)
  switch i16 %34, label %do.end61 [
    i16 3, label %while.cond.outer.loopexit
    i16 1, label %while.end
    i16 0, label %for.cond.preheader
  ]

while.cond.outer.loopexit:                        ; preds = %if.end45
  %46 = call i32 @llvm.bswap.i32(i32 %36) #10
  %cmp40269 = icmp ult ptr %add.ptr.i201, %arrayidx
  br i1 %cmp40269, label %while.cond.outer.loopexit.while.body.lr.ph_crit_edge, label %while.cond.outer.loopexit.failed.thread314_crit_edge

while.cond.outer.loopexit.failed.thread314_crit_edge: ; preds = %while.cond.outer.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.thread314

while.cond.outer.loopexit.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.loopexit.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %tobool109.not = phi i1 [ true, %while.body.lr.ph.lr.ph ], [ false, %while.cond.outer.loopexit.while.body.lr.ph_crit_edge ]
  %start_addr.0.ph277 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %46, %while.cond.outer.loopexit.while.body.lr.ph_crit_edge ]
  %mem.1.ph276 = phi ptr [ %add.ptr.i, %while.body.lr.ph.lr.ph ], [ %add.ptr.i201, %while.cond.outer.loopexit.while.body.lr.ph_crit_edge ]
  br label %while.body

for.cond.preheader:                               ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp69266.not = icmp eq i16 %38, 0
  br i1 %cmp69266.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %conv.i184, i32 1)
  br label %for.body

do.end61:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %conv46 = zext i16 %34 to i32
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 4
  %dev63 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev63, ptr noundef nonnull @.str.24, i32 noundef %conv46) #13
  br label %do.end126.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %sum.0268 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %j.0267 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx71 = getelementptr i8, ptr %arrayidx5.i183, i32 %j.0267
  %49 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %50 to i32
  %add = add i32 %sum.0268, %conv72
  %inc = add nuw nsw i32 %j.0267, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sum.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %51 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dpram, align 8
  %53 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %card, align 8
  %app = getelementptr inbounds %struct.softing_platform_data, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %app, align 4
  %arrayidx73 = getelementptr i8, ptr %52, i32 %56
  call void @mmiocpy(ptr noundef %arrayidx73, ptr noundef %arrayidx5.i183, i32 noundef %conv.i184) #10
  %57 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card, align 8
  %app76 = getelementptr inbounds %struct.softing_platform_data, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %app76 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %app76, align 4
  %addr80 = getelementptr inbounds %struct.softing_platform_data, ptr %58, i32 0, i32 11, i32 1
  %61 = ptrtoint ptr %addr80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr80, align 4
  %add81 = add i32 %62, %60
  %63 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dpram, align 8
  %arrayidx83 = getelementptr i8, ptr %64, i32 2018
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  call void @arm_heavy_mb() #10
  %65 = call i32 @llvm.bswap.i32(i32 %add81) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx83, i32 %65) #10, !srcloc !127
  %66 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dpram, align 8
  %arrayidx85 = getelementptr i8, ptr %67, i32 2022
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx85, i32 %36) #10, !srcloc !127
  %68 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dpram, align 8
  %arrayidx87 = getelementptr i8, ptr %69, i32 2026
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx87, i16 %38) #10, !srcloc !117
  %70 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dpram, align 8
  %arrayidx89 = getelementptr i8, ptr %71, i32 2028
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx89, i8 1) #10, !srcloc !129
  %call90 = call i32 @softing_bootloader_command(ptr noundef %card, i16 noundef signext 1, ptr noundef nonnull @.str.26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %for.end.do.end126.sink.split_crit_edge, label %if.end94

for.end.do.end126.sink.split_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end126.sink.split

if.end94:                                         ; preds = %for.end
  %and = and i32 %sum.0.lcssa, 65535
  %72 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dpram, align 8
  %arrayidx96 = getelementptr i8, ptr %73, i32 2034
  %74 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx96) #10, !srcloc !119
  %75 = call i16 @llvm.bswap.i16(i16 %74) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  %conv98 = zext i16 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv98)
  %cmp99.not = icmp eq i32 %and, %conv98
  br i1 %cmp99.not, label %while.cond, label %do.end104

do.end104:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev, align 4
  %dev106 = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev106, ptr noundef nonnull @.str.28, i32 noundef %and, i32 noundef %conv98) #13
  br label %do.end126.sink.split

while.end:                                        ; preds = %if.end45
  br i1 %tobool109.not, label %failed.thread233, label %failed

failed.thread233:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %79) #10
  br label %cleanup

failed.thread314:                                 ; preds = %while.cond.outer.loopexit.failed.thread314_crit_edge, %while.cond.failed.thread314_crit_edge
  %80 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %81) #10
  br label %cleanup

failed:                                           ; preds = %while.end
  %82 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dpram, align 8
  %arrayidx113 = getelementptr i8, ptr %83, i32 2018
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  call void @arm_heavy_mb() #10
  %84 = call i32 @llvm.bswap.i32(i32 %start_addr.0.ph277) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx113, i32 %84) #10, !srcloc !127
  %85 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dpram, align 8
  %arrayidx115 = getelementptr i8, ptr %86, i32 2022
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx115, i8 1) #10, !srcloc !129
  %call116 = call i32 @softing_bootloader_command(ptr noundef %card, i16 noundef signext 3, ptr noundef nonnull @.str.30)
  %87 = call i32 @llvm.smin.i32(i32 %call116, i32 0)
  %88 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %89) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp121 = icmp slt i32 %call116, 0
  br i1 %cmp121, label %failed.do.end126_crit_edge, label %failed.cleanup_crit_edge

failed.cleanup_crit_edge:                         ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

failed.do.end126_crit_edge:                       ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end126

do.end126.sink.split:                             ; preds = %do.end104, %for.end.do.end126.sink.split_crit_edge, %do.end61, %for.end.i199.do.end126.sink.split_crit_edge, %do.end35, %while.cond.preheader.do.end126.sink.split_crit_edge, %do.end24, %for.end.i.do.end126.sink.split_crit_edge
  %ret.2232.ph = phi i32 [ -22, %while.cond.preheader.do.end126.sink.split_crit_edge ], [ -22, %for.end.i.do.end126.sink.split_crit_edge ], [ -5, %do.end104 ], [ -22, %do.end61 ], [ -22, %do.end35 ], [ -22, %do.end24 ], [ %call90, %for.end.do.end126.sink.split_crit_edge ], [ -22, %for.end.i199.do.end126.sink.split_crit_edge ]
  %90 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %90)
  %.sink = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %.sink) #10
  br label %do.end126

do.end126:                                        ; preds = %do.end126.sink.split, %failed.do.end126_crit_edge
  %ret.2232 = phi i32 [ %87, %failed.do.end126_crit_edge ], [ %ret.2232.ph, %do.end126.sink.split ]
  %91 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev, align 4
  %dev128 = getelementptr inbounds %struct.platform_device, ptr %92, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev128, ptr noundef nonnull @.str.11, ptr noundef %file) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %failed.cleanup_crit_edge, %failed.thread314, %failed.thread233, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2232, %do.end126 ], [ 0, %failed.cleanup_crit_edge ], [ 0, %failed.thread233 ], [ 0, %failed.thread314 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @softing_chip_poweron(ptr nocapture noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_softing_fct_cmd(ptr noundef %card, i16 noundef signext 99, i16 noundef zeroext 85, ptr noundef nonnull @.str.33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @_softing_fct_cmd(ptr noundef %card, i16 noundef signext 99, i16 noundef zeroext 170, ptr noundef nonnull @.str.34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @softing_reset_chip(ptr noundef %card)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i = tail call fastcc i32 @_softing_fct_cmd(ptr noundef %card, i16 noundef signext 43, i16 noundef zeroext 0, ptr noundef nonnull @.str.35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %softing_fct_cmd.exit.thread, label %softing_fct_cmd.exit

softing_fct_cmd.exit.thread:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.35, i32 noundef %call.i) #13
  br label %cleanup

softing_fct_cmd.exit:                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %softing_fct_cmd.exit.cleanup_crit_edge, label %if.end12

softing_fct_cmd.exit.cleanup_crit_edge:           ; preds = %softing_fct_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %softing_fct_cmd.exit
  %dpram = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 9
  %2 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpram, align 8
  %arrayidx = getelementptr i8, ptr %3, i32 768
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #10, !srcloc !130
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  %conv = trunc i32 %5 to i16
  %serial = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 12, i32 3
  %6 = ptrtoint ptr %serial to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %serial, align 2
  %call.i63 = tail call fastcc i32 @_softing_fct_cmd(ptr noundef %card, i16 noundef signext 12, i16 noundef zeroext 0, ptr noundef nonnull @.str.36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i64 = icmp sgt i32 %call.i63, 0
  br i1 %cmp.i64, label %softing_fct_cmd.exit69.thread, label %softing_fct_cmd.exit69

softing_fct_cmd.exit69.thread:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i65 = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %7 = ptrtoint ptr %pdev.i65 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i65, align 4
  %dev.i66 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev.i66, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.36, i32 noundef %call.i63) #13
  br label %cleanup

softing_fct_cmd.exit69:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp15 = icmp slt i32 %call.i63, 0
  br i1 %cmp15, label %softing_fct_cmd.exit69.cleanup_crit_edge, label %if.end18

softing_fct_cmd.exit69.cleanup_crit_edge:         ; preds = %softing_fct_cmd.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %softing_fct_cmd.exit69
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 12
  %9 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dpram, align 8
  %arrayidx20 = getelementptr i8, ptr %10, i32 770
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx20) #10, !srcloc !119
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %id, align 4
  %14 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dpram, align 8
  %arrayidx24 = getelementptr i8, ptr %15, i32 772
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx24) #10, !srcloc !119
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  %hw_version = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %hw_version to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %hw_version, align 2
  %19 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dpram, align 8
  %arrayidx28 = getelementptr i8, ptr %20, i32 774
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx28) #10, !srcloc !119
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  %license = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 12, i32 2
  %23 = ptrtoint ptr %license to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %license, align 4
  %24 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dpram, align 8
  %arrayidx32 = getelementptr i8, ptr %25, i32 776
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx32) #10, !srcloc !119
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  %chip = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 12, i32 4
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %chip, align 4
  %29 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dpram, align 8
  %arrayidx37 = getelementptr i8, ptr %30, i32 778
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx37) #10, !srcloc !119
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  %arrayidx41 = getelementptr %struct.softing, ptr %card, i32 0, i32 12, i32 4, i32 1
  %33 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx41, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %softing_fct_cmd.exit69.cleanup_crit_edge, %softing_fct_cmd.exit69.thread, %softing_fct_cmd.exit.cleanup_crit_edge, %softing_fct_cmd.exit.thread, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call.i, %softing_fct_cmd.exit.cleanup_crit_edge ], [ %call.i63, %softing_fct_cmd.exit69.cleanup_crit_edge ], [ -5, %softing_fct_cmd.exit.thread ], [ -5, %softing_fct_cmd.exit69.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_softing_fct_cmd(ptr nocapture noundef readonly %card, i16 noundef signext %cmd, i16 noundef zeroext %vector, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dpram = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpram, align 8
  %arrayidx = getelementptr i8, ptr %1, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %2 = tail call i16 @llvm.bswap.i16(i16 %cmd) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx, i16 %2) #10, !srcloc !117
  %conv = zext i16 %vector to i32
  %3 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dpram, align 8
  %arrayidx3 = getelementptr i8, ptr %4, i32 812
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx3, i8 0) #10, !srcloc !129
  %conv4 = trunc i16 %vector to i8
  %5 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dpram, align 8
  %arrayidx6 = getelementptr i8, ptr %6, i32 811
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx6, i8 %conv4) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 100
  br label %do.body7

do.body7:                                         ; preds = %if.end27, %entry
  %8 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpram, align 8
  %arrayidx9 = getelementptr i8, ptr %9, i32 811
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx9) #10, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  %conv10 = zext i8 %10 to i32
  %11 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dpram, align 8
  %arrayidx12 = getelementptr i8, ptr %12, i32 812
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx12) #10, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  %conv14 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv14, 8
  %add15 = or i32 %shl, %conv10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add15)
  %cmp = icmp eq i32 %add15, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dpram, align 8
  %arrayidx18 = getelementptr i8, ptr %15, i32 808
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx18) #10, !srcloc !119
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  %conv20 = zext i16 %17 to i32
  br label %cleanup

if.end:                                           ; preds = %do.body7
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %conv)
  %cmp22.not = icmp eq i32 %add15, %conv
  br i1 %cmp22.not, label %lor.lhs.false, label %if.end.do.end29_crit_edge

if.end.do.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

lor.lhs.false:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %18
  %cmp24 = icmp slt i32 %sub, 0
  br i1 %cmp24, label %lor.lhs.false.do.end29_crit_edge, label %if.end27

lor.lhs.false.do.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

if.end27:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 10000, i32 noundef 2) #10
  br label %do.body7

do.end29:                                         ; preds = %lor.lhs.false.do.end29_crit_edge, %if.end.do.end29_crit_edge
  %add15.lcssa49 = phi i32 [ %add15, %if.end.do.end29_crit_edge ], [ %conv, %lor.lhs.false.do.end29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add15.lcssa49)
  %cmp30 = icmp eq i32 %add15.lcssa49, 0
  %cond = select i1 %cmp30, i32 -110, i32 -125
  %pdev = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.52, ptr noundef %msg, i32 noundef %cond) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.then
  %retval.0 = phi i32 [ %conv20, %if.then ], [ %cond, %do.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @softing_reset_chip(ptr nocapture noundef %card) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dpram = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 9
  %pdev.i = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %signal_pending.exit.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpram, align 8
  %arrayidx = getelementptr i8, ptr %1, i32 865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx, i8 0) #10, !srcloc !129
  %2 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpram, align 8
  %arrayidx2 = getelementptr i8, ptr %3, i32 866
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx2, i8 0) #10, !srcloc !129
  %4 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dpram, align 8
  %arrayidx4 = getelementptr i8, ptr %5, i32 833
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx4, i8 1) #10, !srcloc !129
  %6 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dpram, align 8
  %arrayidx6 = getelementptr i8, ptr %7, i32 834
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx6, i8 0) #10, !srcloc !129
  %call.i = tail call fastcc i32 @_softing_fct_cmd(ptr noundef %card, i16 noundef signext 0, i16 noundef zeroext 0, ptr noundef nonnull @.str.54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %softing_fct_cmd.exit.thread, label %softing_fct_cmd.exit

softing_fct_cmd.exit.thread:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %call.i) #13
  br label %if.end

softing_fct_cmd.exit:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %softing_fct_cmd.exit.do.end_crit_edge, label %softing_fct_cmd.exit.if.end_crit_edge

softing_fct_cmd.exit.if.end_crit_edge:            ; preds = %softing_fct_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

softing_fct_cmd.exit.do.end_crit_edge:            ; preds = %softing_fct_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %softing_fct_cmd.exit.if.end_crit_edge, %softing_fct_cmd.exit.thread
  %ret.0.i20 = phi i32 [ -5, %softing_fct_cmd.exit.thread ], [ %call.i, %softing_fct_cmd.exit.if.end_crit_edge ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !106) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stack.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end.do.end_crit_edge, !prof !122

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

signal_pending.exit:                              ; preds = %if.end
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %and1.i.i.i.i.i = and i32 %20, 1
  %tobool9.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool9.not, label %signal_pending.exit.do.body_crit_edge, label %signal_pending.exit.do.end_crit_edge

signal_pending.exit.do.end_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

signal_pending.exit.do.body_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %signal_pending.exit.do.end_crit_edge, %if.end.do.end_crit_edge, %softing_fct_cmd.exit.do.end_crit_edge
  %ret.0.i21 = phi i32 [ %ret.0.i20, %signal_pending.exit.do.end_crit_edge ], [ 0, %softing_fct_cmd.exit.do.end_crit_edge ], [ %ret.0.i20, %if.end.do.end_crit_edge ]
  %tx = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 8
  %21 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tx, align 8
  ret i32 %ret.0.i21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @softing_fct_cmd(ptr nocapture noundef readonly %card, i16 noundef signext %cmd, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @_softing_fct_cmd(ptr noundef %card, i16 noundef signext %cmd, i16 noundef zeroext 0, ptr noundef %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef %msg, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ -5, %do.end ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @softing_raw2ktime(ptr nocapture noundef %card, i32 noundef %raw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #10
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  %mul = shl i32 %raw, 4
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %freq = getelementptr inbounds %struct.softing_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 16, i32 %3
  %div184 = udiv i32 %mul, %.
  %conv185 = zext i32 %div184 to i64
  %ts_ref = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 4
  %4 = ptrtoint ptr %ts_ref to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ts_ref, align 8
  %mul.i = mul nuw nsw i64 %conv185, 1000
  %add.i = add i64 %mul.i, %5
  %ts_overflow = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 5
  %6 = ptrtoint ptr %ts_overflow to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ts_overflow, align 8
  %tmp.0325 = add i64 %add.i, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %tmp.0325, i64 %call)
  %cmp196326 = icmp sgt i64 %tmp.0325, %call
  br i1 %cmp196326, label %while.body.lr.ph, label %entry.while.end_crit_edge, !prof !136

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %8 = ptrtoint ptr %ts_ref to i32
  call void @__asan_load8_noabort(i32 %8)
  %ts_ref.promoted = load i64, ptr %ts_ref, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %add206328 = phi i64 [ %ts_ref.promoted, %while.body.lr.ph ], [ %add206, %while.body.while.body_crit_edge ]
  %tmp.0327 = phi i64 [ %tmp.0325, %while.body.lr.ph ], [ %tmp.0, %while.body.while.body_crit_edge ]
  %add206 = add i64 %add206328, %7
  %tmp.0 = add i64 %tmp.0327, %7
  %cmp196 = icmp sgt i64 %tmp.0, %call
  br i1 %cmp196, label %while.body.while.body_crit_edge, label %while.cond.while.end_crit_edge, !prof !136

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %ts_ref to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add206, ptr %ts_ref, align 8
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %target.0.lcssa = phi i64 [ %tmp.0327, %while.cond.while.end_crit_edge ], [ %add.i, %entry.while.end_crit_edge ]
  %sub = sub i64 %call.i, %call
  %add210 = add i64 %sub, %target.0.lcssa
  ret i64 %add210
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @softing_startstop(ptr noundef readonly %dev, i32 noundef %up) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.can_frame, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #10
  %0 = getelementptr inbounds %struct.can_frame, ptr %msg, i32 0, i32 1
  %card1 = getelementptr i8, ptr %dev, i32 2620
  %1 = call ptr @memset(ptr %msg, i32 255, i32 16)
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %fw = getelementptr inbounds %struct.softing, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.softing, ptr %3, i32 0, i32 6, i32 1
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tobool8.not = icmp eq ptr %dev, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool9.not = icmp eq i32 %up, 0
  %or.cond = or i1 %tobool8.not, %tobool9.not
  br i1 %or.cond, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %index = getelementptr i8, ptr %dev, i32 2684
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %7
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %bus_bitmask_start.0 = phi i32 [ %shl, %if.then10 ], [ 0, %if.end7.if.end11_crit_edge ]
  %arrayidx = getelementptr %struct.softing, ptr %3, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.end11.for.inc_crit_edge, label %if.end14

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end14:                                         ; preds = %if.end11
  %cmp16.not = icmp eq ptr %9, %dev
  br i1 %cmp16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end18.if.end28_crit_edge, label %if.then20

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %not.cmp16.not = xor i1 %cmp16.not, true
  %or24 = zext i1 %not.cmp16.not to i32
  %bus_bitmask_start.2 = or i32 %bus_bitmask_start.0, %or24
  %tx = getelementptr i8, ptr %9, i32 2624
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tx, align 4
  %echo_put = getelementptr i8, ptr %9, i32 2628
  %15 = ptrtoint ptr %echo_put to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %echo_put, align 4
  %echo_get = getelementptr i8, ptr %9, i32 2632
  %16 = ptrtoint ptr %echo_get to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %echo_get, align 4
  tail call void @close_candev(ptr noundef nonnull %9) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.end18.if.end28_crit_edge
  %bus_bitmask_start.3 = phi i32 [ %bus_bitmask_start.2, %if.then20 ], [ %bus_bitmask_start.0, %if.end18.if.end28_crit_edge ]
  %state = getelementptr i8, ptr %9, i32 2472
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %state, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %if.end11.for.inc_crit_edge
  %bus_bitmask_start.4 = phi i32 [ %bus_bitmask_start.3, %if.end28 ], [ %bus_bitmask_start.0, %if.end11.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.softing, ptr %3, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1, align 4
  %tobool12.not.1 = icmp eq ptr %19, null
  br i1 %tobool12.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end14.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end14.1:                                       ; preds = %for.inc
  %cmp16.not.1 = icmp eq ptr %19, %dev
  br i1 %cmp16.not.1, label %if.end14.1.if.end18.1_crit_edge, label %if.then17.1

if.end14.1.if.end18.1_crit_edge:                  ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.1

if.then17.1:                                      ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i.1 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i.1, align 128
  %state.i.i.1 = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.1) #10
  br label %if.end18.1

if.end18.1:                                       ; preds = %if.then17.1, %if.end14.1.if.end18.1_crit_edge
  %state.i.1 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i.1, align 4
  %and1.i.i.1 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.1)
  %tobool.i.not.1 = icmp eq i32 %and1.i.i.1, 0
  br i1 %tobool.i.not.1, label %if.end18.1.if.end28.1_crit_edge, label %if.then20.1

if.end18.1.if.end28.1_crit_edge:                  ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.1

if.then20.1:                                      ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #12
  %or24.1 = select i1 %cmp16.not.1, i32 0, i32 2
  %bus_bitmask_start.2.1 = or i32 %or24.1, %bus_bitmask_start.4
  %tx.1 = getelementptr i8, ptr %19, i32 2624
  %24 = ptrtoint ptr %tx.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tx.1, align 4
  %echo_put.1 = getelementptr i8, ptr %19, i32 2628
  %25 = ptrtoint ptr %echo_put.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %echo_put.1, align 4
  %echo_get.1 = getelementptr i8, ptr %19, i32 2632
  %26 = ptrtoint ptr %echo_get.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %echo_get.1, align 4
  tail call void @close_candev(ptr noundef nonnull %19) #10
  br label %if.end28.1

if.end28.1:                                       ; preds = %if.then20.1, %if.end18.1.if.end28.1_crit_edge
  %bus_bitmask_start.3.1 = phi i32 [ %bus_bitmask_start.2.1, %if.then20.1 ], [ %bus_bitmask_start.4, %if.end18.1.if.end28.1_crit_edge ]
  %state.1 = getelementptr i8, ptr %19, i32 2472
  %27 = ptrtoint ptr %state.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %state.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end28.1, %for.inc.for.inc.1_crit_edge
  %bus_bitmask_start.4.1 = phi i32 [ %bus_bitmask_start.3.1, %if.end28.1 ], [ %bus_bitmask_start.4, %for.inc.for.inc.1_crit_edge ]
  %tx29 = getelementptr inbounds %struct.softing, ptr %3, i32 0, i32 8
  %28 = ptrtoint ptr %tx29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tx29, align 8
  %call31 = tail call i32 @softing_enable_irq(ptr noundef %3, i32 noundef 0) #10
  %call32 = tail call fastcc i32 @softing_reset_chip(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %for.inc.1.failed_crit_edge

for.inc.1.failed_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end35:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bus_bitmask_start.4.1)
  %tobool36.not = icmp eq i32 %bus_bitmask_start.4.1, 0
  br i1 %tobool36.not, label %if.end35.card_done_crit_edge, label %if.end38

if.end35.card_done_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %card_done

if.end38:                                         ; preds = %if.end35
  %and = and i32 %bus_bitmask_start.4.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  %and41 = and i32 %bus_bitmask_start.4.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %29 = and i32 %bus_bitmask_start.4.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %.not = icmp eq i32 %29, 3
  br i1 %.not, label %land.lhs.true43, label %if.end38.if.end53_crit_edge

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true43:                                  ; preds = %if.end38
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 8
  %ctrlmode.i = getelementptr i8, ptr %31, i32 2476
  %32 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrlmode.i, align 4
  %34 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.1, align 4
  %ctrlmode.i468 = getelementptr i8, ptr %35, i32 2476
  %36 = ptrtoint ptr %ctrlmode.i468 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctrlmode.i468, align 4
  %and.i483 = xor i32 %37, %33
  %38 = and i32 %and.i483, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp50.not = icmp eq i32 %38, 0
  br i1 %cmp50.not, label %land.lhs.true43.if.end53_crit_edge, label %do.end

land.lhs.true43.if.end53_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.end:                                           ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.softing, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %dev52 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev52, ptr noundef nonnull @.str.37) #13
  br label %failed

if.end53:                                         ; preds = %land.lhs.true43.if.end53_crit_edge, %if.end38.if.end53_crit_edge
  br i1 %tobool39.not, label %if.end53.if.end118_crit_edge, label %if.then56

if.end53.if.end118_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then56:                                        ; preds = %if.end53
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 8
  %brp = getelementptr i8, ptr %42, i32 2368
  %43 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %brp, align 4
  %conv = trunc i32 %44 to i16
  %dpram = getelementptr inbounds %struct.softing, ptr %3, i32 0, i32 9
  %45 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dpram, align 8
  %arrayidx62 = getelementptr i8, ptr %46, i32 770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx62, i16 %47) #10, !srcloc !117
  %sjw = getelementptr i8, ptr %42, i32 2364
  %48 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sjw, align 4
  %conv63 = trunc i32 %49 to i16
  %50 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dpram, align 8
  %arrayidx65 = getelementptr i8, ptr %51, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv63) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx65, i16 %52) #10, !srcloc !117
  %phase_seg1 = getelementptr i8, ptr %42, i32 2356
  %53 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phase_seg1, align 4
  %prop_seg = getelementptr i8, ptr %42, i32 2352
  %55 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %prop_seg, align 4
  %add66 = add i32 %56, %54
  %conv67 = trunc i32 %add66 to i16
  %57 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dpram, align 8
  %arrayidx69 = getelementptr i8, ptr %58, i32 774
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv67) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx69, i16 %59) #10, !srcloc !117
  %phase_seg2 = getelementptr i8, ptr %42, i32 2360
  %60 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %phase_seg2, align 4
  %conv70 = trunc i32 %61 to i16
  %62 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dpram, align 8
  %arrayidx72 = getelementptr i8, ptr %63, i32 776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %64 = tail call i16 @llvm.bswap.i16(i16 %conv70) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx72, i16 %64) #10, !srcloc !117
  %ctrlmode = getelementptr i8, ptr %42, i32 2476
  %65 = ptrtoint ptr %ctrlmode to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ctrlmode, align 4
  %67 = trunc i32 %66 to i16
  %68 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dpram, align 8
  %arrayidx78 = getelementptr i8, ptr %69, i32 778
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %70 = shl i16 %67, 6
  %71 = and i16 %70, 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx78, i16 %71) #10, !srcloc !117
  %call.i = tail call fastcc i32 @_softing_fct_cmd(ptr noundef %3, i16 noundef signext 1, i16 noundef zeroext 0, ptr noundef nonnull @.str.39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %softing_fct_cmd.exit.thread, label %softing_fct_cmd.exit

softing_fct_cmd.exit.thread:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.softing, ptr %3, i32 0, i32 1
  %72 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.39, i32 noundef %call.i) #13
  br label %failed

softing_fct_cmd.exit:                             ; preds = %if.then56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp80 = icmp slt i32 %call.i, 0
  br i1 %cmp80, label %softing_fct_cmd.exit.failed_crit_edge, label %if.end83

softing_fct_cmd.exit.failed_crit_edge:            ; preds = %softing_fct_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end83:                                         ; preds = %softing_fct_cmd.exit
  %74 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dpram, align 8
  %arrayidx85 = getelementptr i8, ptr %75, i32 770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx85, i16 0) #10, !srcloc !117
  %76 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dpram, align 8
  %arrayidx87 = getelementptr i8, ptr %77, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx87, i16 0) #10, !srcloc !117
  %call88 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 3, ptr noundef nonnull @.str.40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.end83.failed_crit_edge, label %if.end92

if.end83.failed_crit_edge:                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end92:                                         ; preds = %if.end83
  %78 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dpram, align 8
  %arrayidx94 = getelementptr i8, ptr %79, i32 770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx94, i16 0) #10, !srcloc !117
  %80 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dpram, align 8
  %arrayidx96 = getelementptr i8, ptr %81, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx96, i16 -249) #10, !srcloc !117
  %82 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dpram, align 8
  %arrayidx98 = getelementptr i8, ptr %83, i32 774
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx98, i16 0) #10, !srcloc !117
  %84 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dpram, align 8
  %arrayidx100 = getelementptr i8, ptr %85, i32 776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx100, i16 -1) #10, !srcloc !117
  %86 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dpram, align 8
  %arrayidx102 = getelementptr i8, ptr %87, i32 778
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx102, i16 0) #10, !srcloc !117
  %88 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dpram, align 8
  %arrayidx104 = getelementptr i8, ptr %89, i32 780
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx104, i16 -225) #10, !srcloc !117
  %call105 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 7, ptr noundef nonnull @.str.41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.end92.failed_crit_edge, label %if.end109

if.end92.failed_crit_edge:                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end109:                                        ; preds = %if.end92
  %output = getelementptr i8, ptr %42, i32 2688
  %90 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %output, align 4
  %conv110 = zext i8 %91 to i16
  %92 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dpram, align 8
  %arrayidx112 = getelementptr i8, ptr %93, i32 770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %94 = shl nuw i16 %conv110, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx112, i16 %94) #10, !srcloc !117
  %call113 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 5, ptr noundef nonnull @.str.42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.end109.failed_crit_edge, label %if.end109.if.end118_crit_edge

if.end109.if.end118_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.end109.failed_crit_edge:                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end118:                                        ; preds = %if.end109.if.end118_crit_edge, %if.end53.if.end118_crit_edge
  br i1 %tobool42.not, label %if.end118.if.end195_crit_edge, label %if.then121

if.end118.if.end195_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

if.then121:                                       ; preds = %if.end118
  %95 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.1, align 4
  %brp129 = getelementptr i8, ptr %96, i32 2368
  %97 = ptrtoint ptr %brp129 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %brp129, align 4
  %conv130 = trunc i32 %98 to i16
  %dpram131 = getelementptr inbounds %struct.softing, ptr %3, i32 0, i32 9
  %99 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dpram131, align 8
  %arrayidx132 = getelementptr i8, ptr %100, i32 770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %101 = tail call i16 @llvm.bswap.i16(i16 %conv130) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx132, i16 %101) #10, !srcloc !117
  %sjw133 = getelementptr i8, ptr %96, i32 2364
  %102 = ptrtoint ptr %sjw133 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sjw133, align 4
  %conv134 = trunc i32 %103 to i16
  %104 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dpram131, align 8
  %arrayidx136 = getelementptr i8, ptr %105, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %106 = tail call i16 @llvm.bswap.i16(i16 %conv134) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx136, i16 %106) #10, !srcloc !117
  %phase_seg1137 = getelementptr i8, ptr %96, i32 2356
  %107 = ptrtoint ptr %phase_seg1137 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %phase_seg1137, align 4
  %prop_seg138 = getelementptr i8, ptr %96, i32 2352
  %109 = ptrtoint ptr %prop_seg138 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %prop_seg138, align 4
  %add139 = add i32 %110, %108
  %conv140 = trunc i32 %add139 to i16
  %111 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dpram131, align 8
  %arrayidx142 = getelementptr i8, ptr %112, i32 774
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %113 = tail call i16 @llvm.bswap.i16(i16 %conv140) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx142, i16 %113) #10, !srcloc !117
  %phase_seg2143 = getelementptr i8, ptr %96, i32 2360
  %114 = ptrtoint ptr %phase_seg2143 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %phase_seg2143, align 4
  %conv144 = trunc i32 %115 to i16
  %116 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dpram131, align 8
  %arrayidx146 = getelementptr i8, ptr %117, i32 776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %118 = tail call i16 @llvm.bswap.i16(i16 %conv144) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx146, i16 %118) #10, !srcloc !117
  %ctrlmode148 = getelementptr i8, ptr %96, i32 2476
  %119 = ptrtoint ptr %ctrlmode148 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ctrlmode148, align 4
  %121 = trunc i32 %120 to i16
  %122 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dpram131, align 8
  %arrayidx154 = getelementptr i8, ptr %123, i32 778
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %124 = shl i16 %121, 6
  %125 = and i16 %124, 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx154, i16 %125) #10, !srcloc !117
  %call155 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 2, ptr noundef nonnull @.str.43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %if.then121.failed_crit_edge, label %if.end159

if.then121.failed_crit_edge:                      ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end159:                                        ; preds = %if.then121
  %126 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dpram131, align 8
  %arrayidx161 = getelementptr i8, ptr %127, i32 770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx161, i16 0) #10, !srcloc !117
  %128 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dpram131, align 8
  %arrayidx163 = getelementptr i8, ptr %129, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx163, i16 0) #10, !srcloc !117
  %call164 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 4, ptr noundef nonnull @.str.44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.end159.failed_crit_edge, label %if.end168

if.end159.failed_crit_edge:                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end168:                                        ; preds = %if.end159
  %130 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dpram131, align 8
  %arrayidx170 = getelementptr i8, ptr %131, i32 770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx170, i16 0) #10, !srcloc !117
  %132 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dpram131, align 8
  %arrayidx172 = getelementptr i8, ptr %133, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx172, i16 -249) #10, !srcloc !117
  %134 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dpram131, align 8
  %arrayidx174 = getelementptr i8, ptr %135, i32 774
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx174, i16 0) #10, !srcloc !117
  %136 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dpram131, align 8
  %arrayidx176 = getelementptr i8, ptr %137, i32 776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx176, i16 -1) #10, !srcloc !117
  %138 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dpram131, align 8
  %arrayidx178 = getelementptr i8, ptr %139, i32 778
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx178, i16 0) #10, !srcloc !117
  %140 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dpram131, align 8
  %arrayidx180 = getelementptr i8, ptr %141, i32 780
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx180, i16 -225) #10, !srcloc !117
  %call181 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 8, ptr noundef nonnull @.str.45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %if.end168.failed_crit_edge, label %if.end185

if.end168.failed_crit_edge:                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end185:                                        ; preds = %if.end168
  %output186 = getelementptr i8, ptr %96, i32 2688
  %142 = ptrtoint ptr %output186 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %output186, align 4
  %conv187 = zext i8 %143 to i16
  %144 = ptrtoint ptr %dpram131 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dpram131, align 8
  %arrayidx189 = getelementptr i8, ptr %145, i32 770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %146 = shl nuw i16 %conv187, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx189, i16 %146) #10, !srcloc !117
  %call190 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 6, ptr noundef nonnull @.str.46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %if.end185.failed_crit_edge, label %if.end185.if.end195_crit_edge

if.end185.if.end195_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

if.end185.failed_crit_edge:                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end195:                                        ; preds = %if.end185.if.end195_crit_edge, %if.end118.if.end195_crit_edge
  %dpram196 = getelementptr inbounds %struct.softing, ptr %3, i32 0, i32 9
  %147 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dpram196, align 8
  %arrayidx197 = getelementptr i8, ptr %148, i32 770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx197, i16 256) #10, !srcloc !117
  %149 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dpram196, align 8
  %arrayidx199 = getelementptr i8, ptr %150, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx199, i16 256) #10, !srcloc !117
  %151 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dpram196, align 8
  %arrayidx201 = getelementptr i8, ptr %152, i32 774
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx201, i16 256) #10, !srcloc !117
  %153 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dpram196, align 8
  %arrayidx203 = getelementptr i8, ptr %154, i32 776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx203, i16 256) #10, !srcloc !117
  %155 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dpram196, align 8
  %arrayidx205 = getelementptr i8, ptr %156, i32 778
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx205, i16 256) #10, !srcloc !117
  %157 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dpram196, align 8
  %arrayidx207 = getelementptr i8, ptr %158, i32 780
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx207, i16 256) #10, !srcloc !117
  %159 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dpram196, align 8
  %arrayidx209 = getelementptr i8, ptr %160, i32 782
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx209, i16 256) #10, !srcloc !117
  %161 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dpram196, align 8
  %arrayidx211 = getelementptr i8, ptr %162, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx211, i16 256) #10, !srcloc !117
  %163 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dpram196, align 8
  %arrayidx213 = getelementptr i8, ptr %164, i32 786
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx213, i16 256) #10, !srcloc !117
  %165 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dpram196, align 8
  %arrayidx215 = getelementptr i8, ptr %166, i32 788
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx215, i16 256) #10, !srcloc !117
  %call216 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 17, ptr noundef nonnull @.str.47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %if.end195.failed_crit_edge, label %if.end220

if.end195.failed_crit_edge:                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end220:                                        ; preds = %if.end195
  %call221 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 36, ptr noundef nonnull @.str.48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %cmp222 = icmp slt i32 %call221, 0
  br i1 %cmp222, label %if.end220.failed_crit_edge, label %if.end225

if.end220.failed_crit_edge:                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end225:                                        ; preds = %if.end220
  %call226 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 13, ptr noundef nonnull @.str.49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %cmp227 = icmp slt i32 %call226, 0
  br i1 %cmp227, label %if.end225.failed_crit_edge, label %if.end230

if.end225.failed_crit_edge:                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end230:                                        ; preds = %if.end225
  %call231 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 14, ptr noundef nonnull @.str.50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %cmp232 = icmp slt i32 %call231, 0
  br i1 %cmp232, label %if.end230.failed_crit_edge, label %if.end235

if.end230.failed_crit_edge:                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end235:                                        ; preds = %if.end230
  %call236 = tail call fastcc i32 @softing_fct_cmd(ptr noundef %3, i16 noundef signext 11, ptr noundef nonnull @.str.51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %if.end235.failed_crit_edge, label %if.end240

if.end235.failed_crit_edge:                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end240:                                        ; preds = %if.end235
  %167 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dpram196, align 8
  %arrayidx242 = getelementptr i8, ptr %168, i32 817
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx242, i8 0) #10, !srcloc !129
  %169 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dpram196, align 8
  %arrayidx244 = getelementptr i8, ptr %170, i32 821
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx244, i8 0) #10, !srcloc !129
  %171 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %3, align 8
  %generation = getelementptr inbounds %struct.softing_platform_data, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %174)
  %cmp245 = icmp slt i32 %174, 2
  br i1 %cmp245, label %if.then247, label %if.end240.if.end253_crit_edge

if.end240.if.end253_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end253

if.then247:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %dpram196 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dpram196, align 8
  %arrayidx249 = getelementptr i8, ptr %176, i32 3586
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx249, i8 0) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @arm_heavy_mb() #10
  br label %if.end253

if.end253:                                        ; preds = %if.then247, %if.end240.if.end253_crit_edge
  tail call fastcc void @softing_initialize_timestamp(ptr noundef %3)
  %177 = call ptr @memset(ptr %msg, i32 0, i32 16)
  %178 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 536871168, ptr %msg, align 8
  %179 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 8, ptr %0, align 4
  br i1 %tobool39.not, label %if.end253.for.inc279_crit_edge, label %if.end262

if.end253.for.inc279_crit_edge:                   ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc279

if.end262:                                        ; preds = %if.end253
  %180 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx, align 4
  %tobool265.not = icmp eq ptr %181, null
  br i1 %tobool265.not, label %if.end262.for.inc279_crit_edge, label %if.end267

if.end262.for.inc279_crit_edge:                   ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc279

if.end267:                                        ; preds = %if.end262
  %state270 = getelementptr i8, ptr %181, i32 2472
  %182 = ptrtoint ptr %state270 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %state270, align 4
  %call271 = call i32 @open_candev(ptr noundef nonnull %181) #10
  %cmp272.not = icmp eq ptr %181, %dev
  br i1 %cmp272.not, label %if.end267.if.end278_crit_edge, label %if.then274

if.end267.if.end278_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end278

if.then274:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #12
  %call275 = call i32 @softing_netdev_rx(ptr noundef nonnull %181, ptr noundef nonnull %msg, i64 noundef 0) #10
  %restarts = getelementptr i8, ptr %181, i32 2328
  %183 = ptrtoint ptr %restarts to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %restarts, align 4
  %inc277 = add i32 %184, 1
  store i32 %inc277, ptr %restarts, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.then274, %if.end267.if.end278_crit_edge
  %_tx.i.i480 = getelementptr inbounds %struct.net_device, ptr %181, i32 0, i32 103
  %185 = ptrtoint ptr %_tx.i.i480 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %_tx.i.i480, align 128
  call void @netif_tx_wake_queue(ptr noundef %186) #10
  br label %for.inc279

for.inc279:                                       ; preds = %if.end278, %if.end262.for.inc279_crit_edge, %if.end253.for.inc279_crit_edge
  br i1 %tobool42.not, label %for.inc279.for.inc279.1_crit_edge, label %if.end262.1

for.inc279.for.inc279.1_crit_edge:                ; preds = %for.inc279
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc279.1

if.end262.1:                                      ; preds = %for.inc279
  %187 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.1, align 4
  %tobool265.not.1 = icmp eq ptr %188, null
  br i1 %tobool265.not.1, label %if.end262.1.for.inc279.1_crit_edge, label %if.end267.1

if.end262.1.for.inc279.1_crit_edge:               ; preds = %if.end262.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc279.1

if.end267.1:                                      ; preds = %if.end262.1
  %state270.1 = getelementptr i8, ptr %188, i32 2472
  %189 = ptrtoint ptr %state270.1 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %state270.1, align 4
  %call271.1 = call i32 @open_candev(ptr noundef nonnull %188) #10
  %cmp272.not.1 = icmp eq ptr %188, %dev
  br i1 %cmp272.not.1, label %if.end267.1.if.end278.1_crit_edge, label %if.then274.1

if.end267.1.if.end278.1_crit_edge:                ; preds = %if.end267.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end278.1

if.then274.1:                                     ; preds = %if.end267.1
  call void @__sanitizer_cov_trace_pc() #12
  %call275.1 = call i32 @softing_netdev_rx(ptr noundef nonnull %188, ptr noundef nonnull %msg, i64 noundef 0) #10
  %restarts.1 = getelementptr i8, ptr %188, i32 2328
  %190 = ptrtoint ptr %restarts.1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %restarts.1, align 4
  %inc277.1 = add i32 %191, 1
  store i32 %inc277.1, ptr %restarts.1, align 4
  br label %if.end278.1

if.end278.1:                                      ; preds = %if.then274.1, %if.end267.1.if.end278.1_crit_edge
  %_tx.i.i480.1 = getelementptr inbounds %struct.net_device, ptr %188, i32 0, i32 103
  %192 = ptrtoint ptr %_tx.i.i480.1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %_tx.i.i480.1, align 128
  call void @netif_tx_wake_queue(ptr noundef %193) #10
  br label %for.inc279.1

for.inc279.1:                                     ; preds = %if.end278.1, %if.end262.1.for.inc279.1_crit_edge, %for.inc279.for.inc279.1_crit_edge
  %call282 = call i32 @softing_enable_irq(ptr noundef %3, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %for.inc279.1.card_done_crit_edge, label %for.inc279.1.failed_crit_edge

for.inc279.1.failed_crit_edge:                    ; preds = %for.inc279.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

for.inc279.1.card_done_crit_edge:                 ; preds = %for.inc279.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %card_done

card_done:                                        ; preds = %for.inc279.1.card_done_crit_edge, %if.end35.card_done_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

failed:                                           ; preds = %for.inc279.1.failed_crit_edge, %if.end235.failed_crit_edge, %if.end230.failed_crit_edge, %if.end225.failed_crit_edge, %if.end220.failed_crit_edge, %if.end195.failed_crit_edge, %if.end185.failed_crit_edge, %if.end168.failed_crit_edge, %if.end159.failed_crit_edge, %if.then121.failed_crit_edge, %if.end109.failed_crit_edge, %if.end92.failed_crit_edge, %if.end83.failed_crit_edge, %softing_fct_cmd.exit.failed_crit_edge, %softing_fct_cmd.exit.thread, %do.end, %for.inc.1.failed_crit_edge
  %ret.0 = phi i32 [ %call32, %for.inc.1.failed_crit_edge ], [ -22, %do.end ], [ %call.i, %softing_fct_cmd.exit.failed_crit_edge ], [ %call88, %if.end83.failed_crit_edge ], [ %call105, %if.end92.failed_crit_edge ], [ %call113, %if.end109.failed_crit_edge ], [ %call155, %if.then121.failed_crit_edge ], [ %call164, %if.end159.failed_crit_edge ], [ %call181, %if.end168.failed_crit_edge ], [ %call190, %if.end185.failed_crit_edge ], [ %call216, %if.end195.failed_crit_edge ], [ %call221, %if.end220.failed_crit_edge ], [ %call226, %if.end225.failed_crit_edge ], [ %call231, %if.end230.failed_crit_edge ], [ %call236, %if.end235.failed_crit_edge ], [ %call282, %for.inc279.1.failed_crit_edge ], [ -5, %softing_fct_cmd.exit.thread ]
  %call288 = call i32 @softing_enable_irq(ptr noundef %3, i32 noundef 0) #10
  %call289 = call fastcc i32 @softing_reset_chip(ptr noundef %3)
  call void @mutex_unlock(ptr noundef %lock) #10
  %194 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx, align 4
  %tobool298.not = icmp eq ptr %195, null
  br i1 %tobool298.not, label %failed.for.inc301_crit_edge, label %if.end300

failed.for.inc301_crit_edge:                      ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc301

if.end300:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_close(ptr noundef nonnull %195) #10
  br label %for.inc301

for.inc301:                                       ; preds = %if.end300, %failed.for.inc301_crit_edge
  %196 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx.1, align 4
  %tobool298.not.1 = icmp eq ptr %197, null
  br i1 %tobool298.not.1, label %for.inc301.cleanup_crit_edge, label %if.end300.1

for.inc301.cleanup_crit_edge:                     ; preds = %for.inc301
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end300.1:                                      ; preds = %for.inc301
  call void @__sanitizer_cov_trace_pc() #12
  call void @dev_close(ptr noundef nonnull %197) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end300.1, %for.inc301.cleanup_crit_edge, %card_done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %card_done ], [ -5, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end300.1 ], [ %ret.0, %for.inc301.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @softing_enable_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @softing_initialize_timestamp(ptr nocapture noundef %card) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #10
  %ts_ref = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 4
  %0 = ptrtoint ptr %ts_ref to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call, ptr %ts_ref, align 8
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 8
  %freq = getelementptr inbounds %struct.softing_platform_data, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i32 16, i32 %4
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %., i64 68719476736) #16, !srcloc !138
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %mul.i = mul i64 %asmresult1.i, 1000
  %ts_overflow = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 5
  %6 = ptrtoint ptr %ts_overflow to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mul.i, ptr %ts_overflow, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @softing_netdev_rx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @softing_default_output(ptr nocapture noundef readonly %netdev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr i8, ptr %netdev, i32 2690
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %chip, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %1, label %sw.default [
    i16 1000, label %sw.bb
    i16 5, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %card1 = getelementptr i8, ptr %netdev, i32 2620
  %3 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %generation = getelementptr inbounds %struct.softing_platform_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp slt i32 %8, 2
  %cond = select i1 %cmp, i32 251, i32 250
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 64, %sw.default ], [ %cond, %sw.bb ], [ 96, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !103, !104, !105}
!llvm.named.register.sp = !{!106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/softing/softing_fw.c", i32 90, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @softing_bootloader_command._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @softing_bootloader_command._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/can/softing/softing_fw.c", i32 148, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @softing_load_fw.__UNIQUE_ID_ddebug459, !9, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/can/softing/softing_fw.c", i32 161, i32 14}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/can/softing/softing_fw.c", i32 201, i32 4}
!17 = !{ptr @softing_load_fw._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @softing_load_fw._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/can/softing/softing_fw.c", i32 214, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @softing_load_fw._entry.10, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @softing_load_fw._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/can/softing/softing_fw.c", i32 230, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @softing_load_app_fw._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @softing_load_app_fw._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/softing/softing_fw.c", i32 234, i32 2}
!31 = !{ptr @softing_load_app_fw.__UNIQUE_ID_ddebug460, !30, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/softing/softing_fw.c", i32 245, i32 3}
!34 = !{ptr @softing_load_app_fw._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @softing_load_app_fw._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/softing/softing_fw.c", i32 250, i32 3}
!38 = !{ptr @softing_load_app_fw._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @softing_load_app_fw._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/softing/softing_fw.c", i32 270, i32 4}
!42 = !{ptr @softing_load_app_fw._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @softing_load_app_fw._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/softing/softing_fw.c", i32 288, i32 45}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/can/softing/softing_fw.c", i32 294, i32 4}
!48 = !{ptr @softing_load_app_fw._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @softing_load_app_fw._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/can/softing/softing_fw.c", i32 305, i32 44}
!52 = !{ptr @softing_load_app_fw._entry.31, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/net/can/softing/softing_fw.c", i32 312, i32 3}
!54 = !{ptr @softing_load_app_fw._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/softing/softing_fw.c", i32 342, i32 41}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/can/softing/softing_fw.c", i32 346, i32 41}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/softing/softing_fw.c", i32 354, i32 34}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/softing/softing_fw.c", i32 359, i32 34}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/softing/softing_fw.c", i32 483, i32 3}
!65 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @softing_startstop._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @softing_startstop._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/can/softing/softing_fw.c", i32 501, i32 34}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/can/softing/softing_fw.c", i32 507, i32 34}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/can/softing/softing_fw.c", i32 519, i32 34}
!74 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/can/softing/softing_fw.c", i32 524, i32 34}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/can/softing/softing_fw.c", i32 541, i32 34}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/can/softing/softing_fw.c", i32 547, i32 34}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/can/softing/softing_fw.c", i32 559, i32 34}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/can/softing/softing_fw.c", i32 564, i32 34}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/can/softing/softing_fw.c", i32 592, i32 34}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/can/softing/softing_fw.c", i32 596, i32 34}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/can/softing/softing_fw.c", i32 600, i32 34}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/can/softing/softing_fw.c", i32 604, i32 34}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/can/softing/softing_fw.c", i32 608, i32 34}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/can/softing/softing_fw.c", i32 49, i32 2}
!96 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @_softing_fct_cmd._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @_softing_fct_cmd._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/can/softing/softing_fw.c", i32 327, i32 34}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/can/softing/softing_fw.c", i32 59, i32 3}
!103 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @softing_fct_cmd._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @softing_fct_cmd._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{!"sp"}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 2151989093}
!117 = !{i64 4446901}
!118 = !{i64 2156925487}
!119 = !{i64 4447101}
!120 = !{i64 2151987676}
!121 = !{i64 2156925608}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{!"auto-init"}
!124 = !{i64 2148196585, i64 2148196590, i64 2148196603, i64 2148196647, i64 2148196681, i64 2148196702}
!125 = !{i64 2156935607}
!126 = !{i64 2151989643}
!127 = !{i64 4447521}
!128 = !{i64 2151988669}
!129 = !{i64 4447324}
!130 = !{i64 4447939}
!131 = !{i64 2151988288}
!132 = !{i64 2156921583}
!133 = !{i64 4447719}
!134 = !{i64 2151987064}
!135 = !{i64 2156921718}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{i64 2156965853}
!138 = !{i64 2148425644, i64 2148425924, i64 2148426258, i64 2148426592}
