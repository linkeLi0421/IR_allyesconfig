; ModuleID = '/llk/IR_all_yes/drivers/parport/parport_pc.c_pt.bc'
source_filename = "../drivers/parport/parport_pc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+parport_pc_probe_port\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_pc_probe_port\09\09\09\09"
module asm "\09.long\09__crc_parport_pc_probe_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_pc_probe_port:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_pc_probe_port\22\09\09\09\09\09"
module asm "__kstrtabns_parport_pc_probe_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_pc_unregister_port\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_pc_unregister_port\09\09\09\09"
module asm "\09.long\09__crc_parport_pc_unregister_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_pc_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_pc_unregister_port\22\09\09\09\09\09"
module asm "__kstrtabns_parport_pc_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.superio_struct = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.parport_pc_pci = type { i32, [4 x %struct.anon.75], ptr, ptr }
%struct.anon.75 = type { i32, i32 }
%struct.parport_pc_superio = type { ptr, ptr }
%struct.parport_pc_via_data = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.parport_pc_private = type { i8, i8, i32, i32, i32, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.pc_parport_state = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.pci_parport_data = type { i32, [2 x ptr] }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parport_pc\00", [21 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2030, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to set coherent dma mask: disabling DMA\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parport_pc_probe_port\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/parport/parport_pc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr = internal global ptr @parport_pc_probe_port._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@parport_pc_ops = internal constant { %struct.parport_operations, [32 x i8] } { %struct.parport_operations { ptr @parport_pc_write_data, ptr @parport_pc_read_data, ptr @parport_pc_write_control, ptr @parport_pc_read_control, ptr @parport_pc_frob_control, ptr @parport_pc_read_status, ptr @parport_pc_enable_irq, ptr @parport_pc_disable_irq, ptr @parport_pc_data_forward, ptr @parport_pc_data_reverse, ptr @parport_pc_init_state, ptr @parport_pc_save_state, ptr @parport_pc_restore_state, ptr @parport_ieee1284_epp_write_data, ptr @parport_ieee1284_epp_read_data, ptr @parport_ieee1284_epp_write_addr, ptr @parport_ieee1284_epp_read_addr, ptr @parport_ieee1284_ecp_write_data, ptr @parport_ieee1284_ecp_read_data, ptr @parport_ieee1284_ecp_write_addr, ptr @parport_ieee1284_write_compat, ptr @parport_ieee1284_read_nibble, ptr @parport_ieee1284_read_byte, ptr null }, [32 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: PC-style at 0x%lx\00", [40 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.8 = internal global ptr @parport_pc_probe_port._entry.6, section ".printk_index", align 4
@parport_pc_probe_port._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 2091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c (0x%lx)\00", [21 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.11 = internal global ptr @parport_pc_probe_port._entry.9, section ".printk_index", align 4
@parport_pc_probe_port._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c, irq %d\00", [21 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.14 = internal global ptr @parport_pc_probe_port._entry.12, section ".printk_index", align 4
@parport_pc_probe_port._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c, dma %d\00", [21 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.17 = internal global ptr @parport_pc_probe_port._entry.15, section ".printk_index", align 4
@parport_pc_probe_port._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c, using FIFO\00", [17 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.20 = internal global ptr @parport_pc_probe_port._entry.18, section ".printk_index", align 4
@parport_pc_probe_port._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 2135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c [\00", [27 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.23 = internal global ptr @parport_pc_probe_port._entry.21, section ".printk_index", align 4
@parport_pc_probe_port._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c%s%s\00", [25 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.26 = internal global ptr @parport_pc_probe_port._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCSPP\00", [26 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.31 = internal global ptr @parport_pc_probe_port._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TRISTATE\00", [23 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.34 = internal global ptr @parport_pc_probe_port._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"COMPAT\00", [25 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.37 = internal global ptr @parport_pc_probe_port._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EPP\00", [28 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.40 = internal global ptr @parport_pc_probe_port._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ECP\00", [28 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.43 = internal global ptr @parport_pc_probe_port._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 2156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c]\0A\00", [27 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.47 = internal global ptr @parport_pc_probe_port._entry.45, section ".printk_index", align 4
@parport_pc_probe_port._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.2, ptr @.str.3, i32 2158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: irq %d detected\0A\00", [41 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.50 = internal global ptr @parport_pc_probe_port._entry.48, section ".printk_index", align 4
@parport_pc_probe_port._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.2, ptr @.str.3, i32 2174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: irq %d in use, resorting to polled operation\0A\00", [44 x i8] zeroinitializer }, align 32
@parport_pc_probe_port._entry_ptr.53 = internal global ptr @parport_pc_probe_port._entry.51, section ".printk_index", align 4
@ports_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.150, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ports_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ports_list, ptr @ports_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_parport_pc_probe_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_pc_probe_port = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_pc_probe_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_pc_probe_port to i32), ptr @__kstrtab_parport_pc_probe_port, ptr @__kstrtabns_parport_pc_probe_port }, section "___ksymtab+parport_pc_probe_port", align 4
@__kstrtab_parport_pc_unregister_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_pc_unregister_port = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_pc_unregister_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_pc_unregister_port to i32), ptr @__kstrtab_parport_pc_unregister_port, ptr @__kstrtabns_parport_pc_unregister_port }, section "___ksymtab+parport_pc_unregister_port", align 4
@__setup_str_parport_setup = internal constant [9 x i8] c"parport=\00", section ".init.rodata", align 1
@__setup_parport_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_parport_setup, ptr @parport_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_parport_init_mode_setup = internal constant [19 x i8] c"parport_init_mode=\00", section ".init.rodata", align 1
@__setup_parport_init_mode_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_parport_init_mode_setup, ptr @parport_init_mode_setup, i32 0 }, section ".init.setup", align 4
@pci_registered_parport = internal global { i1, [31 x i8] } zeroinitializer, align 32
@parport_pc_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @parport_pc_pci_tbl, ptr @parport_pc_pci_probe, ptr @parport_pc_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@parport_pc_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @parport_pc_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@__UNIQUE_ID_author242 = internal constant [51 x i8] c"parport_pc.author=Phil Blundell, Tim Waugh, others\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [53 x i8] c"parport_pc.description=PC-style parallel port driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [43 x i8] c"parport_pc.file=drivers/parport/parport_pc\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"parport_pc.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_parport_pc__246_3318_parport_pc_init6 = internal global ptr @parport_pc_init, section ".initcall6.init", align 4
@__exitcall_parport_pc_exit = internal global ptr @parport_pc_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@parport_pc_write_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.56, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%s): use data_reverse for this!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parport_pc_write_control\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/parport_pc.h\00", [37 x i8] zeroinitializer }, align 32
@parport_pc_write_control._entry_ptr = internal global ptr @parport_pc_write_control._entry, section ".printk_index", align 4
@parport_pc_frob_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.56, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s (%s): use data_%s for this!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"parport_pc_frob_control\00", [40 x i8] zeroinitializer }, align 32
@parport_pc_frob_control._entry_ptr = internal global ptr @parport_pc_frob_control._entry, section ".printk_index", align 4
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reverse\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"forward\00", [24 x i8] zeroinitializer }, align 32
@parport_pc_epp_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017%s: EPP timeout occurred while talking to w91284pic (should not have done)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parport_pc_epp_read_data\00", [39 x i8] zeroinitializer }, align 32
@parport_pc_epp_read_data._entry_ptr = internal global ptr @parport_pc_epp_read_data._entry, section ".printk_index", align 4
@user_specified = internal global { i1, [31 x i8] } zeroinitializer, align 32
@parport_SPP_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016parport 0x%lx (WARNING): CTR: wrote 0x%02x, read 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parport_SPP_supported\00", [42 x i8] zeroinitializer }, align 32
@parport_SPP_supported._entry_ptr = internal global ptr @parport_SPP_supported._entry, section ".printk_index", align 4
@parport_SPP_supported._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 1451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016parport 0x%lx (WARNING): DATA: wrote 0x%02x, read 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@parport_SPP_supported._entry_ptr.67 = internal global ptr @parport_SPP_supported._entry.65, section ".printk_index", align 4
@parport_SPP_supported._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.3, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\016parport 0x%lx: You gave this address, but there is probably no parallel port there!\0A\00", [41 x i8] zeroinitializer }, align 32
@parport_SPP_supported._entry_ptr.70 = internal global ptr @parport_SPP_supported._entry.68, section ".printk_index", align 4
@programmable_irq_support.lookup = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 7, i32 9, i32 10, i32 11, i32 14, i32 15, i32 5], [32 x i8] zeroinitializer }, align 32
@superios = internal global { [3 x %struct.superio_struct], [60 x i8] } zeroinitializer, align 32
@parport_ECP_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0170x%lx: FIFO is %d bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parport_ECP_supported\00", [42 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr = internal global ptr @parport_ECP_supported._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@parport_ECP_supported._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 1605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0170x%lx: writeIntrThreshold is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.75 = internal global ptr @parport_ECP_supported._entry.73, section ".printk_index", align 4
@parport_ECP_supported._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.3, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0160x%lx: readIntrThreshold is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.78 = internal global ptr @parport_ECP_supported._entry.76, section ".printk_index", align 4
@parport_ECP_supported._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.3, i32 1642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0140x%lx: Unsupported pword size!\0A\00", [62 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.81 = internal global ptr @parport_ECP_supported._entry.79, section ".printk_index", align 4
@parport_ECP_supported._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.3, i32 1646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.83 = internal global ptr @parport_ECP_supported._entry.82, section ".printk_index", align 4
@parport_ECP_supported._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.72, ptr @.str.3, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0140x%lx: Unknown implementation ID\0A\00", [60 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.86 = internal global ptr @parport_ECP_supported._entry.84, section ".printk_index", align 4
@parport_ECP_supported._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.72, ptr @.str.3, i32 1658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0170x%lx: PWord is %d bits\0A\00", [37 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.89 = internal global ptr @parport_ECP_supported._entry.87, section ".printk_index", align 4
@parport_ECP_supported._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.72, ptr @.str.3, i32 1661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0170x%lx: Interrupts are ISA-%s\0A\00", [32 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.92 = internal global ptr @parport_ECP_supported._entry.90, section ".printk_index", align 4
@parport_ECP_supported._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.72, ptr @.str.3, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0170x%lx: ECP port cfgA=0x%02x cfgB=0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.97 = internal global ptr @parport_ECP_supported._entry.95, section ".printk_index", align 4
@parport_ECP_supported._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.72, ptr @.str.3, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\0170x%lx: ECP settings irq=\00", [37 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.100 = internal global ptr @parport_ECP_supported._entry.98, section ".printk_index", align 4
@parport_ECP_supported._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.72, ptr @.str.3, i32 1668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c%d\00", [27 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.103 = internal global ptr @parport_ECP_supported._entry.101, section ".printk_index", align 4
@parport_ECP_supported._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.72, ptr @.str.3, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\01c<none or set by other means>\00", [33 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.106 = internal global ptr @parport_ECP_supported._entry.104, section ".printk_index", align 4
@parport_ECP_supported._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.72, ptr @.str.3, i32 1671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c dma=\00", [24 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.109 = internal global ptr @parport_ECP_supported._entry.107, section ".printk_index", align 4
@parport_ECP_supported._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.72, ptr @.str.3, i32 1673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\01c<none or set by other means>\0A\00", [32 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.112 = internal global ptr @parport_ECP_supported._entry.110, section ".printk_index", align 4
@parport_ECP_supported._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.72, ptr @.str.3, i32 1675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%d\0A\00", [26 x i8] zeroinitializer }, align 32
@parport_ECP_supported._entry_ptr.115 = internal global ptr @parport_ECP_supported._entry.113, section ".printk_index", align 4
@parport_pc_compat_write_block_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.3, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Warning change_mode ECR_PPF failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"parport_pc_compat_write_block_pio\00", [62 x i8] zeroinitializer }, align 32
@parport_pc_compat_write_block_pio._entry_ptr = internal global ptr @parport_pc_compat_write_block_pio._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@parport_pc_compat_write_block_pio._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.3, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: FIFO is stuck\0A\00", [43 x i8] zeroinitializer }, align 32
@parport_pc_compat_write_block_pio._entry_ptr.120 = internal global ptr @parport_pc_compat_write_block_pio._entry.118, section ".printk_index", align 4
@parport_pc_compat_write_block_pio._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.117, ptr @.str.3, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: BUSY timeout (%d) in compat_write_block_pio\0A\00", [45 x i8] zeroinitializer }, align 32
@parport_pc_compat_write_block_pio._entry_ptr.123 = internal global ptr @parport_pc_compat_write_block_pio._entry.121, section ".printk_index", align 4
@change_mode.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.124, ptr @.str.3, ptr @.str.125, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"change_mode\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"parport change_mode ECP-ISA to mode 0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@change_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.3, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017change_mode: but there's no ECR!\0A\00", [60 x i8] zeroinitializer }, align 32
@change_mode._entry_ptr = internal global ptr @change_mode._entry, section ".printk_index", align 4
@parport_pc_fifo_write_block_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017Somebody wants the port\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"parport_pc_fifo_write_block_pio\00", [32 x i8] zeroinitializer }, align 32
@parport_pc_fifo_write_block_pio._entry_ptr = internal global ptr @parport_pc_fifo_write_block_pio._entry, section ".printk_index", align 4
@parport_pc_fifo_write_block_pio._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.3, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017FIFO write timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@parport_pc_fifo_write_block_pio._entry_ptr.131 = internal global ptr @parport_pc_fifo_write_block_pio._entry.129, section ".printk_index", align 4
@parport_pc_ecp_write_block_pio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.3, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: PError timeout (%d) in ecp_write_block_pio\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"parport_pc_ecp_write_block_pio\00", [33 x i8] zeroinitializer }, align 32
@parport_pc_ecp_write_block_pio._entry_ptr = internal global ptr @parport_pc_ecp_write_block_pio._entry, section ".printk_index", align 4
@parport_pc_ecp_write_block_pio._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.3, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: Warning change_mode ECR_ECP failed\0A\00", [54 x i8] zeroinitializer }, align 32
@parport_pc_ecp_write_block_pio._entry_ptr.136 = internal global ptr @parport_pc_ecp_write_block_pio._entry.134, section ".printk_index", align 4
@parport_pc_ecp_write_block_pio._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.133, ptr @.str.3, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@parport_pc_ecp_write_block_pio._entry_ptr.138 = internal global ptr @parport_pc_ecp_write_block_pio._entry.137, section ".printk_index", align 4
@parport_pc_ecp_write_block_pio._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.133, ptr @.str.3, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: PE,1 timeout (%d) in ecp_write_block_pio\0A\00", [48 x i8] zeroinitializer }, align 32
@parport_pc_ecp_write_block_pio._entry_ptr.141 = internal global ptr @parport_pc_ecp_write_block_pio._entry.139, section ".printk_index", align 4
@parport_pc_ecp_write_block_pio._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.133, ptr @.str.3, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: PE,2 timeout (%d) in ecp_write_block_pio\0A\00", [48 x i8] zeroinitializer }, align 32
@parport_pc_ecp_write_block_pio._entry_ptr.144 = internal global ptr @parport_pc_ecp_write_block_pio._entry.142, section ".printk_index", align 4
@parport_pc_ecp_write_block_pio._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.133, ptr @.str.3, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: BUSY timeout (%d) in ecp_write_block_pio\0A\00", [48 x i8] zeroinitializer }, align 32
@parport_pc_ecp_write_block_pio._entry_ptr.147 = internal global ptr @parport_pc_ecp_write_block_pio._entry.145, section ".printk_index", align 4
@frob_econtrol.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.3, ptr @.str.149, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frob_econtrol\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"frob_econtrol(%02x,%02x): %02x -> %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ports_lock\00", [21 x i8] zeroinitializer }, align 32
@io = internal unnamed_addr global [17 x i32] zeroinitializer, section ".init.data", align 4
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@irqval = internal unnamed_addr global [16 x i32] [i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3, i32 -3], section ".init.data", align 4
@dmaval = internal unnamed_addr global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], section ".init.data", align 4
@parport_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.3, i32 3216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014parport=%s not understood\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parport_setup\00", [18 x i8] zeroinitializer }, align 32
@parport_setup._entry_ptr = internal global ptr @parport_setup._entry, section ".printk_index", align 4
@parport_setup_ptr = internal unnamed_addr global i32 0, section ".init.data", align 4
@parport_setup._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.3, i32 3221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013parport=%s ignored, too many ports\0A\00", [58 x i8] zeroinitializer }, align 32
@parport_setup._entry_ptr.156 = internal global ptr @parport_setup._entry.154, section ".printk_index", align 4
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nofifo\00", [25 x i8] zeroinitializer }, align 32
@parport_parse_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.3, i32 3077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013parport: bad specifier `%s'\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parport_parse_param\00", [44 x i8] zeroinitializer }, align 32
@parport_parse_param._entry_ptr = internal global ptr @parport_parse_param._entry, section ".printk_index", align 4
@parport_init_mode_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.3, i32 3100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017parport_pc.c: Specified parameter parport_init_mode=%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"parport_init_mode_setup\00", [40 x i8] zeroinitializer }, align 32
@parport_init_mode_setup._entry_ptr = internal global ptr @parport_init_mode_setup._entry, section ".printk_index", align 4
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spp\00", [28 x i8] zeroinitializer }, align 32
@parport_init_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.164 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ps2\00", [28 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"epp\00", [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecp\00", [28 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ecpepp\00", [25 x i8] zeroinitializer }, align 32
@parport_pc_pci_tbl = internal constant { [46 x %struct.pci_device_id], [352 x i8] } { [46 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 1670, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 33329, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4739, i32 34930, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4895, i32 4128, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4895, i32 4129, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4895, i32 8224, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4895, i32 8225, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 5127, i32 32768, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 5127, i32 32770, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 5127, i32 32771, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 5127, i32 34816, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 55373, i32 16404, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 5129, i32 29288, i32 5129, i32 257, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 5129, i32 29288, i32 5129, i32 258, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 5129, i32 29288, i32 5129, i32 259, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 5129, i32 29288, i32 5129, i32 260, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 5129, i32 29288, i32 5129, i32 36888, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 5522, i32 1922, i32 -1, i32 -1, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 5522, i32 1923, i32 -1, i32 -1, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 5330, i32 32769, i32 -1, i32 -1, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 5339, i32 8480, i32 -1, i32 -1, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 5339, i32 8481, i32 -1, i32 -1, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 5141, i32 38179, i32 -1, i32 -1, i32 0, i32 0, i32 22, i32 0 }, %struct.pci_device_id { i32 5141, i32 38163, i32 -1, i32 -1, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 5141, i32 33795, i32 -1, i32 -1, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 5141, i32 49152, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 5141, i32 49156, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 5141, i32 49408, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 5141, i32 49412, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 5141, i32 49424, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 5141, i32 49428, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 5141, i32 49432, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 5141, i32 49436, i32 -1, i32 -1, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 16748, i32 256, i32 -1, i32 -1, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 5362, i32 289, i32 -1, i32 -1, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 38672, i32 38661, i32 -1, i32 -1, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 38672, i32 38677, i32 -1, i32 -1, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 38672, i32 38741, i32 -1, i32 -1, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 38672, i32 38917, i32 -1, i32 -1, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 38672, i32 38933, i32 -1, i32 -1, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 38672, i32 39169, i32 40960, i32 8192, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id { i32 38672, i32 39013, i32 40960, i32 4096, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 38672, i32 39013, i32 40960, i32 8192, i32 0, i32 0, i32 34, i32 0 }, %struct.pci_device_id { i32 4956, i32 632, i32 -1, i32 -1, i32 0, i32 0, i32 35, i32 0 }, %struct.pci_device_id { i32 7168, i32 12368, i32 7168, i32 12368, i32 0, i32 0, i32 36, i32 0 }, %struct.pci_device_id zeroinitializer], [352 x i8] zeroinitializer }, align 32
@cards = internal constant { [34 x %struct.parport_pc_pci], [360 x i8] } { [34 x %struct.parport_pc_pci] [%struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 2, i32 3 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 2, i32 3 }, %struct.anon.75 { i32 4, i32 5 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 { i32 2, i32 3 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 4, i32 -1 }, %struct.anon.75 { i32 5, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 { i32 2, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 { i32 2, i32 3 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 { i32 2, i32 3 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 120 }, %struct.anon.75 { i32 0, i32 376 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 120 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 3, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 { i32 2, i32 3 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 { i32 2, i32 3 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 { i32 2, i32 3 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 2, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 { i32 2, i32 3 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 0, i32 1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }, %struct.parport_pc_pci { i32 1, [4 x %struct.anon.75] [%struct.anon.75 { i32 2, i32 -1 }, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer, %struct.anon.75 zeroinitializer], ptr null, ptr null }], [360 x i8] zeroinitializer }, align 32
@parport_pc_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.3, i32 2823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017PCI parallel port detected: %04x:%04x, I/O at %#lx(%#lx)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"parport_pc_pci_probe\00", [43 x i8] zeroinitializer }, align 32
@parport_pc_pci_probe._entry_ptr = internal global ptr @parport_pc_pci_probe._entry, section ".printk_index", align 4
@parport_pc_pci_probe._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.3, i32 2827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017PCI parallel port detected: %04x:%04x, I/O at %#lx(%#lx), IRQ %d\0A\00", [60 x i8] zeroinitializer }, align 32
@parport_pc_pci_probe._entry_ptr.172 = internal global ptr @parport_pc_pci_probe._entry.170, section ".printk_index", align 4
@io_hi = internal unnamed_addr global [17 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], section ".init.data", align 4
@detect_and_report_it87._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.3, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017IT8705 Super-IO detection, now testing port 2E ...\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"detect_and_report_it87\00", [41 x i8] zeroinitializer }, align 32
@detect_and_report_it87._entry_ptr = internal global ptr @detect_and_report_it87._entry, section ".printk_index", align 4
@detect_and_report_it87._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.3, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016IT%04X SuperIO detected\0A\00", [37 x i8] zeroinitializer }, align 32
@detect_and_report_it87._entry_ptr.177 = internal global ptr @detect_and_report_it87._entry.175, section ".printk_index", align 4
@detect_and_report_winbond._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.3, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017Winbond Super-IO detection, now testing ports 3F0,370,250,4E,2E ...\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"detect_and_report_winbond\00", [38 x i8] zeroinitializer }, align 32
@detect_and_report_winbond._entry_ptr = internal global ptr @detect_and_report_winbond._entry, section ".printk_index", align 4
@__func__.winbond_check = private unnamed_addr constant [14 x i8] c"winbond_check\00", align 1
@decode_winbond._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.3, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016Winbond chip at EFER=0x%x key=0x%02x devid=%02x devrev=%02x oldid=%02x type=%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"decode_winbond\00", [17 x i8] zeroinitializer }, align 32
@decode_winbond._entry_ptr = internal global ptr @decode_winbond._entry, section ".printk_index", align 4
@show_parconfig_winbond._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.3, i32 1069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016Winbond LPT Config: cr_30=%02x 60,61=%02x%02x 70=%02x 74=%02x, f0=%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"show_parconfig_winbond\00", [41 x i8] zeroinitializer }, align 32
@show_parconfig_winbond._entry_ptr = internal global ptr @show_parconfig_winbond._entry, section ".printk_index", align 4
@show_parconfig_winbond._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.204, ptr @.str.3, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016Winbond LPT Config: active=%s, io=0x%02x%02x irq=%d, \00", [40 x i8] zeroinitializer }, align 32
@show_parconfig_winbond._entry_ptr.207 = internal global ptr @show_parconfig_winbond._entry.205, section ".printk_index", align 4
@show_parconfig_winbond._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.204, ptr @.str.3, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01cdma=none\0A\00", [20 x i8] zeroinitializer }, align 32
@show_parconfig_winbond._entry_ptr.212 = internal global ptr @show_parconfig_winbond._entry.210, section ".printk_index", align 4
@show_parconfig_winbond._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.204, ptr @.str.3, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cdma=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@show_parconfig_winbond._entry_ptr.215 = internal global ptr @show_parconfig_winbond._entry.213, section ".printk_index", align 4
@show_parconfig_winbond._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.204, ptr @.str.3, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016Winbond LPT Config: irqtype=%s, ECP fifo threshold=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@show_parconfig_winbond._entry_ptr.218 = internal global ptr @show_parconfig_winbond._entry.216, section ".printk_index", align 4
@show_parconfig_winbond._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.204, ptr @.str.3, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Winbond LPT Config: Port mode=%s\0A\00", [60 x i8] zeroinitializer }, align 32
@show_parconfig_winbond._entry_ptr.221 = internal global ptr @show_parconfig_winbond._entry.219, section ".printk_index", align 4
@show_parconfig_winbond._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.204, ptr @.str.3, i32 1085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Super-IO: too many chips!\0A\00", [35 x i8] zeroinitializer }, align 32
@show_parconfig_winbond._entry_ptr.224 = internal global ptr @show_parconfig_winbond._entry.222, section ".printk_index", align 4
@__func__.winbond_check2 = private unnamed_addr constant [15 x i8] c"winbond_check2\00", align 1
@detect_and_report_smsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.3, i32 1318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017SMSC Super-IO detection, now testing Ports 2F0, 370 ...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"detect_and_report_smsc\00", [41 x i8] zeroinitializer }, align 32
@detect_and_report_smsc._entry_ptr = internal global ptr @detect_and_report_smsc._entry, section ".printk_index", align 4
@__func__.smsc_check = private unnamed_addr constant [11 x i8] c"smsc_check\00", align 1
@decode_smsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.3, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016SMSC chip at EFER=0x%x key=0x%02x devid=%02x devrev=%02x type=%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"decode_smsc\00", [20 x i8] zeroinitializer }, align 32
@decode_smsc._entry_ptr = internal global ptr @decode_smsc._entry, section ".printk_index", align 4
@show_parconfig_smsc37c669._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.237, ptr @.str.3, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016SMSC 37c669 LPT Config: cr_1=0x%02x, 4=0x%02x, A=0x%2x, 23=0x%02x, 26=0x%02x, 27=0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"show_parconfig_smsc37c669\00", [38 x i8] zeroinitializer }, align 32
@show_parconfig_smsc37c669._entry_ptr = internal global ptr @show_parconfig_smsc37c669._entry, section ".printk_index", align 4
@show_parconfig_smsc37c669._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.237, ptr @.str.3, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016SMSC LPT Config: io=0x%04x, irq=%c, dma=%c, fifo threshold=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@show_parconfig_smsc37c669._entry_ptr.240 = internal global ptr @show_parconfig_smsc37c669._entry.238, section ".printk_index", align 4
@show_parconfig_smsc37c669._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.237, ptr @.str.3, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016SMSC LPT Config: enabled=%s power=%s\0A\00", [56 x i8] zeroinitializer }, align 32
@show_parconfig_smsc37c669._entry_ptr.243 = internal global ptr @show_parconfig_smsc37c669._entry.241, section ".printk_index", align 4
@show_parconfig_smsc37c669._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.237, ptr @.str.3, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016SMSC LPT Config: Port mode=%s, EPP version =%s\0A\00", [46 x i8] zeroinitializer }, align 32
@show_parconfig_smsc37c669._entry_ptr.246 = internal global ptr @show_parconfig_smsc37c669._entry.244, section ".printk_index", align 4
@show_parconfig_smsc37c669._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.237, ptr @.str.3, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@show_parconfig_smsc37c669._entry_ptr.251 = internal global ptr @show_parconfig_smsc37c669._entry.250, section ".printk_index", align 4
@parport_pc_superio_info = internal constant { [3 x %struct.parport_pc_superio], [40 x i8] } { [3 x %struct.parport_pc_superio] [%struct.parport_pc_superio { ptr @sio_via_probe, ptr @via_686a_data }, %struct.parport_pc_superio { ptr @sio_via_probe, ptr @via_8231_data }, %struct.parport_pc_superio { ptr @sio_ite_8872_probe, ptr null }], [40 x i8] zeroinitializer }, align 32
@via_686a_data = internal global { %struct.parport_pc_via_data, [25 x i8] } { %struct.parport_pc_via_data { i8 81, i8 80, i8 -123, i8 2, i8 -30, i8 -16, i8 -26 }, [25 x i8] zeroinitializer }, align 32
@via_8231_data = internal global { %struct.parport_pc_via_data, [25 x i8] } { %struct.parport_pc_via_data { i8 69, i8 68, i8 80, i8 4, i8 -14, i8 -6, i8 -10 }, [25 x i8] zeroinitializer }, align 32
@sio_via_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.253, ptr @.str.3, i32 2413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017parport_pc: VIA 686A/8231 detected\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sio_via_probe\00", [18 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr = internal global ptr @sio_via_probe._entry, section ".printk_index", align 4
@sio_via_probe._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.253, ptr @.str.3, i32 2417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017parport_pc: setting SPP mode\0A\00", [32 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.256 = internal global ptr @sio_via_probe._entry.254, section ".printk_index", align 4
@sio_via_probe._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.253, ptr @.str.3, i32 2421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017parport_pc: setting PS/2 mode\0A\00", [63 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.259 = internal global ptr @sio_via_probe._entry.257, section ".printk_index", align 4
@sio_via_probe._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.253, ptr @.str.3, i32 2426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017parport_pc: setting EPP mode\0A\00", [32 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.262 = internal global ptr @sio_via_probe._entry.260, section ".printk_index", align 4
@sio_via_probe._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.253, ptr @.str.3, i32 2432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017parport_pc: setting ECP mode\0A\00", [32 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.265 = internal global ptr @sio_via_probe._entry.263, section ".printk_index", align 4
@sio_via_probe._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.253, ptr @.str.3, i32 2437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017parport_pc: setting EPP+ECP mode\0A\00", [60 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.268 = internal global ptr @sio_via_probe._entry.266, section ".printk_index", align 4
@sio_via_probe._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.253, ptr @.str.3, i32 2443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017parport_pc: probing current configuration\0A\00", [51 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.271 = internal global ptr @sio_via_probe._entry.269, section ".printk_index", align 4
@sio_via_probe._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.253, ptr @.str.3, i32 2479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017parport_pc: Current parallel port base: 0x%X\0A\00", [48 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.274 = internal global ptr @sio_via_probe._entry.272, section ".printk_index", align 4
@sio_via_probe._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.253, ptr @.str.3, i32 2483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017parport_pc: Parallel port base changed to 0x378\0A\00", [45 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.277 = internal global ptr @sio_via_probe._entry.275, section ".printk_index", align 4
@sio_via_probe._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.253, ptr @.str.3, i32 2495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016parport_pc: VIA parallel port disabled in BIOS\0A\00", [46 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.280 = internal global ptr @sio_via_probe._entry.278, section ".printk_index", align 4
@sio_via_probe._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.253, ptr @.str.3, i32 2529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016parport_pc: Weird VIA parport base 0x%X, ignoring\0A\00", [43 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.283 = internal global ptr @sio_via_probe._entry.281, section ".printk_index", align 4
@sio_via_probe._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.253, ptr @.str.3, i32 2548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016parport_pc: VIA parallel port: io=0x%X\00", [55 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.286 = internal global ptr @sio_via_probe._entry.284, section ".printk_index", align 4
@sio_via_probe._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.253, ptr @.str.3, i32 2550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c, irq=%d\00", [21 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.289 = internal global ptr @sio_via_probe._entry.287, section ".printk_index", align 4
@sio_via_probe._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.253, ptr @.str.3, i32 2552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c, dma=%d\00", [21 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.292 = internal global ptr @sio_via_probe._entry.290, section ".printk_index", align 4
@sio_via_probe._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.253, ptr @.str.3, i32 2553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.295 = internal global ptr @sio_via_probe._entry.293, section ".printk_index", align 4
@sio_via_probe._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.253, ptr @.str.3, i32 2558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014parport_pc: Strange, can't probe VIA parallel port: io=0x%X, irq=%d, dma=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@sio_via_probe._entry_ptr.298 = internal global ptr @sio_via_probe._entry.296, section ".printk_index", align 4
@__const.sio_ite_8872_probe.inta_addr = private unnamed_addr constant [6 x i16] [i16 672, i16 704, i16 544, i16 576, i16 480, i16 0], align 2
@sio_ite_8872_probe.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.299, ptr @.str.3, ptr @.str.300, i8 2, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.299 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sio_ite_8872_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sio_ite_8872_probe()\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"it887x\00", [25 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.299, ptr @.str.3, i32 2306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016parport_pc: cannot find ITE8872 INTA\0A\00", [56 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr = internal global ptr @sio_ite_8872_probe._entry, section ".printk_index", align 4
@sio_ite_8872_probe._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.299, ptr @.str.3, i32 2315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016parport_pc: ITE8871 found (1P)\0A\00", [62 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr.305 = internal global ptr @sio_ite_8872_probe._entry.303, section ".printk_index", align 4
@sio_ite_8872_probe._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.299, ptr @.str.3, i32 2319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016parport_pc: ITE8875 found (1P)\0A\00", [62 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr.308 = internal global ptr @sio_ite_8872_probe._entry.306, section ".printk_index", align 4
@sio_ite_8872_probe._entry.309 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.299, ptr @.str.3, i32 2323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016parport_pc: ITE8872 found (2S1P)\0A\00", [60 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr.311 = internal global ptr @sio_ite_8872_probe._entry.309, section ".printk_index", align 4
@sio_ite_8872_probe._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.299, ptr @.str.3, i32 2327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016parport_pc: ITE8873 found (1S)\0A\00", [62 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr.314 = internal global ptr @sio_ite_8872_probe._entry.312, section ".printk_index", align 4
@sio_ite_8872_probe._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.299, ptr @.str.3, i32 2331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016parport_pc: ITE8874 found (2S)\0A\00", [62 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr.317 = internal global ptr @sio_ite_8872_probe._entry.315, section ".printk_index", align 4
@sio_ite_8872_probe._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.299, ptr @.str.3, i32 2335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016parport_pc: unknown ITE887x\0A\00", [33 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr.320 = internal global ptr @sio_ite_8872_probe._entry.318, section ".printk_index", align 4
@sio_ite_8872_probe._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.299, ptr @.str.3, i32 2336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016parport_pc: please mail 'lspci -nvv' output to Rich.Liu@ite.com.tw\0A\00", [58 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr.323 = internal global ptr @sio_ite_8872_probe._entry.321, section ".printk_index", align 4
@sio_ite_8872_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.299, ptr @.str.3, ptr @.str.324, i8 2, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.324 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ITE887x: The IRQ is %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.299, ptr @.str.3, ptr @.str.325, i8 2, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.325 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ITE887x: The PARALLEL I/O port is 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.299, ptr @.str.3, ptr @.str.326, i8 2, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.326 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ITE887x: The PARALLEL I/O porthi is 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry.327 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.299, ptr @.str.3, i32 2370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016parport_pc: ITE 8872 parallel port: io=0x%X\00", [50 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr.329 = internal global ptr @sio_ite_8872_probe._entry.327, section ".printk_index", align 4
@sio_ite_8872_probe._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.299, ptr @.str.3, i32 2372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr.331 = internal global ptr @sio_ite_8872_probe._entry.330, section ".printk_index", align 4
@sio_ite_8872_probe._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.299, ptr @.str.3, i32 2373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sio_ite_8872_probe._entry_ptr.333 = internal global ptr @sio_ite_8872_probe._entry.332, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967293, i64 4294967294]
@__sancov_gen_cov_switch_values.334 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.335 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 48]
@__sancov_gen_cov_switch_values.336 = internal global [8 x i64] [i64 6, i64 16, i64 34565, i64 34578, i64 34581, i64 34582, i64 34584, i64 34598]
@__sancov_gen_cov_switch_values.337 = internal global [5 x i64] [i64 3, i64 32, i64 38769, i64 38771, i64 38772]
@__sancov_gen_cov_switch_values.338 = internal global [6 x i64] [i64 4, i64 32, i64 21008, i64 21104, i64 21232, i64 24592]
@__sancov_gen_cov_switch_values.339 = internal global [5 x i64] [i64 3, i64 32, i64 632, i64 888, i64 956]
@__sancov_gen_cov_switch_values.340 = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 3]
@__sancov_gen_cov_switch_values.341 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.342 = internal global [5 x i64] [i64 3, i64 32, i64 632, i64 888, i64 956]
@__sancov_gen_cov_switch_values.343 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 8, i64 13]
@__sancov_gen_cov_switch_values.344 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2022, i32 42 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2030, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant [15 x i8] c"parport_pc_ops\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 899, i32 40 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2089, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2091, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2102, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2126, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2129, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2135, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2145, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2146, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2147, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2148, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2149, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2150, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2156, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2158, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2173, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant [11 x i8] c"ports_lock\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [11 x i8] c"ports_list\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2000, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant [23 x i8] c"pci_registered_parport\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [22 x i8] c"parport_pc_pci_driver\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2865, i32 26 }
@___asan_gen_.478 = private unnamed_addr constant [27 x i8] c"parport_pc_platform_driver\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2980, i32 31 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 166, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant [30 x i8] c"../include/linux/parport_pc.h\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.506, i32 195, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 294, i32 5 }
@___asan_gen_.517 = private unnamed_addr constant [15 x i8] c"user_specified\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1431, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1450, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1452, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant [7 x i8] c"lookup\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1839, i32 19 }
@___asan_gen_.542 = private unnamed_addr constant [9 x i8] c"superios\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 95, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1590, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1604, i32 4 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1627, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1642, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1646, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1649, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1657, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1660, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1664, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1666, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1668, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1670, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1671, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1673, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1675, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 722, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 744, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 766, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 138, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 141, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 497, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 513, i32 5 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 805, i32 4 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 818, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 839, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 862, i32 4 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 872, i32 4 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 880, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 114, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2001, i32 8 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3208, i32 20 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3216, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3221, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3067, i32 23 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3069, i32 33 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3077, i32 4 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3099, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3102, i32 19 }
@___asan_gen_.773 = private unnamed_addr constant [18 x i8] c"parport_init_mode\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2382, i32 12 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3104, i32 19 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3106, i32 19 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3108, i32 19 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 3110, i32 19 }
@___asan_gen_.788 = private unnamed_addr constant [19 x i8] c"parport_pc_pci_tbl\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2681, i32 35 }
@___asan_gen_.791 = private unnamed_addr constant [6 x i8] c"cards\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2638, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2822, i32 4 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2826, i32 4 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1330, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1344, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1305, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1139, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1068, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1070, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1073, i32 4 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1075, i32 4 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1076, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1078, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1085, i32 4 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1318, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1171, i32 3 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 976, i32 3 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 982, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 987, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 990, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 1003, i32 4 }
@___asan_gen_.935 = private unnamed_addr constant [24 x i8] c"parport_pc_superio_info\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2575, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant [14 x i8] c"via_686a_data\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2385, i32 35 }
@___asan_gen_.941 = private unnamed_addr constant [14 x i8] c"via_8231_data\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2394, i32 35 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2413, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2417, i32 3 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2421, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2426, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2432, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2437, i32 3 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2443, i32 3 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2478, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2483, i32 3 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2495, i32 3 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2528, i32 3 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2548, i32 3 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2550, i32 4 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2552, i32 4 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2553, i32 3 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2557, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2289, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2293, i32 7 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2306, i32 3 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2315, i32 3 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2319, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2323, i32 3 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2327, i32 3 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2331, i32 3 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2335, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2336, i32 3 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2354, i32 2 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2355, i32 2 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2356, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2369, i32 3 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2372, i32 4 }
@___asan_gen_.1118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1119 = private constant [32 x i8] c"../drivers/parport/parport_pc.c\00", align 1
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1119, i32 2373, i32 3 }
@llvm.compiler.used = appending global [371 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_parport_pc_exit, ptr @__initcall__kmod_parport_pc__246_3318_parport_pc_init6, ptr @__ksymtab_parport_pc_probe_port, ptr @__ksymtab_parport_pc_unregister_port, ptr @__setup_parport_init_mode_setup, ptr @__setup_parport_setup, ptr @change_mode._entry, ptr @change_mode._entry_ptr, ptr @decode_smsc._entry, ptr @decode_smsc._entry_ptr, ptr @decode_winbond._entry, ptr @decode_winbond._entry_ptr, ptr @detect_and_report_it87._entry, ptr @detect_and_report_it87._entry.175, ptr @detect_and_report_it87._entry_ptr, ptr @detect_and_report_it87._entry_ptr.177, ptr @detect_and_report_smsc._entry, ptr @detect_and_report_smsc._entry_ptr, ptr @detect_and_report_winbond._entry, ptr @detect_and_report_winbond._entry_ptr, ptr @parport_ECP_supported._entry, ptr @parport_ECP_supported._entry.101, ptr @parport_ECP_supported._entry.104, ptr @parport_ECP_supported._entry.107, ptr @parport_ECP_supported._entry.110, ptr @parport_ECP_supported._entry.113, ptr @parport_ECP_supported._entry.73, ptr @parport_ECP_supported._entry.76, ptr @parport_ECP_supported._entry.79, ptr @parport_ECP_supported._entry.82, ptr @parport_ECP_supported._entry.84, ptr @parport_ECP_supported._entry.87, ptr @parport_ECP_supported._entry.90, ptr @parport_ECP_supported._entry.95, ptr @parport_ECP_supported._entry.98, ptr @parport_ECP_supported._entry_ptr, ptr @parport_ECP_supported._entry_ptr.100, ptr @parport_ECP_supported._entry_ptr.103, ptr @parport_ECP_supported._entry_ptr.106, ptr @parport_ECP_supported._entry_ptr.109, ptr @parport_ECP_supported._entry_ptr.112, ptr @parport_ECP_supported._entry_ptr.115, ptr @parport_ECP_supported._entry_ptr.75, ptr @parport_ECP_supported._entry_ptr.78, ptr @parport_ECP_supported._entry_ptr.81, ptr @parport_ECP_supported._entry_ptr.83, ptr @parport_ECP_supported._entry_ptr.86, ptr @parport_ECP_supported._entry_ptr.89, ptr @parport_ECP_supported._entry_ptr.92, ptr @parport_ECP_supported._entry_ptr.97, ptr @parport_SPP_supported._entry, ptr @parport_SPP_supported._entry.65, ptr @parport_SPP_supported._entry.68, ptr @parport_SPP_supported._entry_ptr, ptr @parport_SPP_supported._entry_ptr.67, ptr @parport_SPP_supported._entry_ptr.70, ptr @parport_init_mode_setup._entry, ptr @parport_init_mode_setup._entry_ptr, ptr @parport_parse_param._entry, ptr @parport_parse_param._entry_ptr, ptr @parport_pc_compat_write_block_pio._entry, ptr @parport_pc_compat_write_block_pio._entry.118, ptr @parport_pc_compat_write_block_pio._entry.121, ptr @parport_pc_compat_write_block_pio._entry_ptr, ptr @parport_pc_compat_write_block_pio._entry_ptr.120, ptr @parport_pc_compat_write_block_pio._entry_ptr.123, ptr @parport_pc_ecp_write_block_pio._entry, ptr @parport_pc_ecp_write_block_pio._entry.134, ptr @parport_pc_ecp_write_block_pio._entry.137, ptr @parport_pc_ecp_write_block_pio._entry.139, ptr @parport_pc_ecp_write_block_pio._entry.142, ptr @parport_pc_ecp_write_block_pio._entry.145, ptr @parport_pc_ecp_write_block_pio._entry_ptr, ptr @parport_pc_ecp_write_block_pio._entry_ptr.136, ptr @parport_pc_ecp_write_block_pio._entry_ptr.138, ptr @parport_pc_ecp_write_block_pio._entry_ptr.141, ptr @parport_pc_ecp_write_block_pio._entry_ptr.144, ptr @parport_pc_ecp_write_block_pio._entry_ptr.147, ptr @parport_pc_epp_read_data._entry, ptr @parport_pc_epp_read_data._entry_ptr, ptr @parport_pc_exit, ptr @parport_pc_fifo_write_block_pio._entry, ptr @parport_pc_fifo_write_block_pio._entry.129, ptr @parport_pc_fifo_write_block_pio._entry_ptr, ptr @parport_pc_fifo_write_block_pio._entry_ptr.131, ptr @parport_pc_frob_control._entry, ptr @parport_pc_frob_control._entry_ptr, ptr @parport_pc_pci_probe._entry, ptr @parport_pc_pci_probe._entry.170, ptr @parport_pc_pci_probe._entry_ptr, ptr @parport_pc_pci_probe._entry_ptr.172, ptr @parport_pc_probe_port._entry, ptr @parport_pc_probe_port._entry.12, ptr @parport_pc_probe_port._entry.15, ptr @parport_pc_probe_port._entry.18, ptr @parport_pc_probe_port._entry.21, ptr @parport_pc_probe_port._entry.24, ptr @parport_pc_probe_port._entry.30, ptr @parport_pc_probe_port._entry.33, ptr @parport_pc_probe_port._entry.36, ptr @parport_pc_probe_port._entry.39, ptr @parport_pc_probe_port._entry.42, ptr @parport_pc_probe_port._entry.45, ptr @parport_pc_probe_port._entry.48, ptr @parport_pc_probe_port._entry.51, ptr @parport_pc_probe_port._entry.6, ptr @parport_pc_probe_port._entry.9, ptr @parport_pc_probe_port._entry_ptr, ptr @parport_pc_probe_port._entry_ptr.11, ptr @parport_pc_probe_port._entry_ptr.14, ptr @parport_pc_probe_port._entry_ptr.17, ptr @parport_pc_probe_port._entry_ptr.20, ptr @parport_pc_probe_port._entry_ptr.23, ptr @parport_pc_probe_port._entry_ptr.26, ptr @parport_pc_probe_port._entry_ptr.31, ptr @parport_pc_probe_port._entry_ptr.34, ptr @parport_pc_probe_port._entry_ptr.37, ptr @parport_pc_probe_port._entry_ptr.40, ptr @parport_pc_probe_port._entry_ptr.43, ptr @parport_pc_probe_port._entry_ptr.47, ptr @parport_pc_probe_port._entry_ptr.50, ptr @parport_pc_probe_port._entry_ptr.53, ptr @parport_pc_probe_port._entry_ptr.8, ptr @parport_pc_write_control._entry, ptr @parport_pc_write_control._entry_ptr, ptr @parport_setup._entry, ptr @parport_setup._entry.154, ptr @parport_setup._entry_ptr, ptr @parport_setup._entry_ptr.156, ptr @show_parconfig_smsc37c669._entry, ptr @show_parconfig_smsc37c669._entry.238, ptr @show_parconfig_smsc37c669._entry.241, ptr @show_parconfig_smsc37c669._entry.244, ptr @show_parconfig_smsc37c669._entry.250, ptr @show_parconfig_smsc37c669._entry_ptr, ptr @show_parconfig_smsc37c669._entry_ptr.240, ptr @show_parconfig_smsc37c669._entry_ptr.243, ptr @show_parconfig_smsc37c669._entry_ptr.246, ptr @show_parconfig_smsc37c669._entry_ptr.251, ptr @show_parconfig_winbond._entry, ptr @show_parconfig_winbond._entry.205, ptr @show_parconfig_winbond._entry.210, ptr @show_parconfig_winbond._entry.213, ptr @show_parconfig_winbond._entry.216, ptr @show_parconfig_winbond._entry.219, ptr @show_parconfig_winbond._entry.222, ptr @show_parconfig_winbond._entry_ptr, ptr @show_parconfig_winbond._entry_ptr.207, ptr @show_parconfig_winbond._entry_ptr.212, ptr @show_parconfig_winbond._entry_ptr.215, ptr @show_parconfig_winbond._entry_ptr.218, ptr @show_parconfig_winbond._entry_ptr.221, ptr @show_parconfig_winbond._entry_ptr.224, ptr @sio_ite_8872_probe._entry, ptr @sio_ite_8872_probe._entry.303, ptr @sio_ite_8872_probe._entry.306, ptr @sio_ite_8872_probe._entry.309, ptr @sio_ite_8872_probe._entry.312, ptr @sio_ite_8872_probe._entry.315, ptr @sio_ite_8872_probe._entry.318, ptr @sio_ite_8872_probe._entry.321, ptr @sio_ite_8872_probe._entry.327, ptr @sio_ite_8872_probe._entry.330, ptr @sio_ite_8872_probe._entry.332, ptr @sio_ite_8872_probe._entry_ptr, ptr @sio_ite_8872_probe._entry_ptr.305, ptr @sio_ite_8872_probe._entry_ptr.308, ptr @sio_ite_8872_probe._entry_ptr.311, ptr @sio_ite_8872_probe._entry_ptr.314, ptr @sio_ite_8872_probe._entry_ptr.317, ptr @sio_ite_8872_probe._entry_ptr.320, ptr @sio_ite_8872_probe._entry_ptr.323, ptr @sio_ite_8872_probe._entry_ptr.329, ptr @sio_ite_8872_probe._entry_ptr.331, ptr @sio_ite_8872_probe._entry_ptr.333, ptr @sio_via_probe._entry, ptr @sio_via_probe._entry.254, ptr @sio_via_probe._entry.257, ptr @sio_via_probe._entry.260, ptr @sio_via_probe._entry.263, ptr @sio_via_probe._entry.266, ptr @sio_via_probe._entry.269, ptr @sio_via_probe._entry.272, ptr @sio_via_probe._entry.275, ptr @sio_via_probe._entry.278, ptr @sio_via_probe._entry.281, ptr @sio_via_probe._entry.284, ptr @sio_via_probe._entry.287, ptr @sio_via_probe._entry.290, ptr @sio_via_probe._entry.293, ptr @sio_via_probe._entry.296, ptr @sio_via_probe._entry_ptr, ptr @sio_via_probe._entry_ptr.256, ptr @sio_via_probe._entry_ptr.259, ptr @sio_via_probe._entry_ptr.262, ptr @sio_via_probe._entry_ptr.265, ptr @sio_via_probe._entry_ptr.268, ptr @sio_via_probe._entry_ptr.271, ptr @sio_via_probe._entry_ptr.274, ptr @sio_via_probe._entry_ptr.277, ptr @sio_via_probe._entry_ptr.280, ptr @sio_via_probe._entry_ptr.283, ptr @sio_via_probe._entry_ptr.286, ptr @sio_via_probe._entry_ptr.289, ptr @sio_via_probe._entry_ptr.292, ptr @sio_via_probe._entry_ptr.295, ptr @sio_via_probe._entry_ptr.298, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @parport_pc_ops, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @ports_lock, ptr @ports_list, ptr @pci_registered_parport, ptr @parport_pc_pci_driver, ptr @parport_pc_platform_driver, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @user_specified, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @programmable_irq_support.lookup, ptr @superios, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @parport_init_mode, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @parport_pc_pci_tbl, ptr @cards, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.192, ptr @.str.193, ptr @.str.203, ptr @.str.204, ptr @.str.206, ptr @.str.211, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.223, ptr @.str.225, ptr @.str.226, ptr @.str.231, ptr @.str.232, ptr @.str.236, ptr @.str.237, ptr @.str.239, ptr @.str.242, ptr @.str.245, ptr @parport_pc_superio_info, ptr @via_686a_data, ptr @via_8231_data, ptr @.str.252, ptr @.str.253, ptr @.str.255, ptr @.str.258, ptr @.str.261, ptr @.str.264, ptr @.str.267, ptr @.str.270, ptr @.str.273, ptr @.str.276, ptr @.str.279, ptr @.str.282, ptr @.str.285, ptr @.str.288, ptr @.str.291, ptr @.str.294, ptr @.str.297, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.304, ptr @.str.307, ptr @.str.310, ptr @.str.313, ptr @.str.316, ptr @.str.319, ptr @.str.322, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.328], section "llvm.metadata"
@0 = internal global [260 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_probe_port._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_registered_parport to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_write_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_frob_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_epp_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_specified to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_SPP_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_SPP_supported._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_SPP_supported._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @programmable_irq_support.lookup to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @superios to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_ECP_supported._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_compat_write_block_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_compat_write_block_pio._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_compat_write_block_pio._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @change_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_fifo_write_block_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_fifo_write_block_pio._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_ecp_write_block_pio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_ecp_write_block_pio._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_ecp_write_block_pio._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_ecp_write_block_pio._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_ecp_write_block_pio._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_ecp_write_block_pio._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_setup._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_parse_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_init_mode_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_init_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_pci_tbl to i32), i32 1472, i32 1824, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cards to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_pci_probe._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_and_report_it87._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_and_report_it87._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_and_report_winbond._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_winbond._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_winbond._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_winbond._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_winbond._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_winbond._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_winbond._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_winbond._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_winbond._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_and_report_smsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_smsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_smsc37c669._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_smsc37c669._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_smsc37c669._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_smsc37c669._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_parconfig_smsc37c669._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_pc_superio_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_686a_data to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_8231_data to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_via_probe._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry.327 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sio_ite_8872_probe._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @parport_pc_probe_port(i32 noundef %base, i32 noundef %base_hi, i32 noundef %irq, i32 noundef %dma, ptr noundef %dev, i32 noundef %irqflags) #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #13
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %base, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %properties.i.i, align 8
  %9 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #13
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 18
  %10 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i453 = call i32 @dma_set_mask(ptr noundef %dev3, i64 noundef 16777215) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i453)
  %cmp.i.i = icmp eq i32 %call.i.i453, 0
  br i1 %cmp.i.i, label %dma_coerce_mask_and_coherent.exit.thread, label %do.end

dma_coerce_mask_and_coherent.exit.thread:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev3, i64 noundef 16777215) #13
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.1) #16
  br label %if.end8

if.end8:                                          ; preds = %do.end, %dma_coerce_mask_and_coherent.exit.thread, %entry.if.end8_crit_edge
  %pdev.0 = phi ptr [ null, %entry.if.end8_crit_edge ], [ %call.i.i, %do.end ], [ %call.i.i, %dma_coerce_mask_and_coherent.exit.thread ]
  %dev.addr.0 = phi ptr [ %dev, %entry.if.end8_crit_edge ], [ %dev3, %do.end ], [ %dev3, %dma_coerce_mask_and_coherent.exit.thread ]
  %dma.addr.0 = phi i32 [ %dma, %entry.if.end8_crit_edge ], [ -1, %do.end ], [ %dma, %dma_coerce_mask_and_coherent.exit.thread ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 96) #17
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %if.end8.out1_crit_edge, label %if.end12

if.end8.out1_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out1

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i452 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 44) #17
  %tobool14.not = icmp eq ptr %call7.i452, null
  br i1 %tobool14.not, label %if.end12.out2_crit_edge, label %if.end16

if.end12.out2_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %out2

if.end16:                                         ; preds = %if.end12
  %call17 = call ptr @parport_register_port(i32 noundef %base, i32 noundef %irq, i32 noundef %dma.addr.0, ptr noundef nonnull %call7.i) #13
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.out3_crit_edge, label %if.end20

if.end16.out3_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out3

if.end20:                                         ; preds = %if.end16
  %name = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 3
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call21 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %base, i32 noundef 3, ptr noundef %14, i32 noundef 0) #13
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.out4_crit_edge, label %if.end24

if.end20.out4_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out4

if.end24:                                         ; preds = %if.end20
  %15 = call ptr @memcpy(ptr %call7.i, ptr @parport_pc_ops, i32 96)
  %16 = ptrtoint ptr %call7.i452 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 12, ptr %call7.i452, align 8
  %ctr_writable = getelementptr inbounds %struct.parport_pc_private, ptr %call7.i452, i32 0, i32 1
  %17 = ptrtoint ptr %ctr_writable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -17, ptr %ctr_writable, align 1
  %ecr = getelementptr inbounds %struct.parport_pc_private, ptr %call7.i452, i32 0, i32 2
  %18 = ptrtoint ptr %ecr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ecr, align 4
  %fifo_depth = getelementptr inbounds %struct.parport_pc_private, ptr %call7.i452, i32 0, i32 3
  %19 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %fifo_depth, align 8
  %dma_buf = getelementptr inbounds %struct.parport_pc_private, ptr %call7.i452, i32 0, i32 7
  %20 = ptrtoint ptr %dma_buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %dma_buf, align 8
  %dma_handle = getelementptr inbounds %struct.parport_pc_private, ptr %call7.i452, i32 0, i32 8
  %21 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %dma_handle, align 4
  %list = getelementptr inbounds %struct.parport_pc_private, ptr %call7.i452, i32 0, i32 9
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.parport_pc_private, ptr %call7.i452, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list, ptr %prev.i, align 4
  %port = getelementptr inbounds %struct.parport_pc_private, ptr %call7.i452, i32 0, i32 10
  %24 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call17, ptr %port, align 8
  %dev25 = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 9
  %25 = ptrtoint ptr %dev25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev.addr.0, ptr %dev25, align 4
  %base_hi26 = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 1
  %26 = ptrtoint ptr %base_hi26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %base_hi, ptr %base_hi26, align 4
  %modes = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 4
  %27 = ptrtoint ptr %modes to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 65, ptr %modes, align 8
  %private_data = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 25
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i452, ptr %private_data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %base_hi)
  %tobool27.not = icmp eq i32 %base_hi, 0
  br i1 %tobool27.not, label %if.end24.if.end35_crit_edge, label %if.then28

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then28:                                        ; preds = %if.end24
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  %call30 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %base_hi, i32 noundef 3, ptr noundef %30, i32 noundef 0) #13
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then28.if.end35_crit_edge, label %if.then32

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @parport_ECR_present(ptr noundef nonnull %call17)
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then28.if.end35_crit_edge, %if.end24.if.end35_crit_edge
  %ECR_res.0 = phi ptr [ %call30, %if.then32 ], [ null, %if.then28.if.end35_crit_edge ], [ null, %if.end24.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 956, i32 %base)
  %cmp.not = icmp eq i32 %base, 956
  br i1 %cmp.not, label %if.end35.if.end47_crit_edge, label %if.then36

if.end35.if.end47_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then36:                                        ; preds = %if.end35
  %add = add i32 %base, 3
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  %call38 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %add, i32 noundef 5, ptr noundef %32, i32 noundef 0) #13
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then36.if.end47_crit_edge, label %if.then40

if.then36.if.end47_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then40:                                        ; preds = %if.then36
  %call.i = call fastcc i32 @clear_epp_timeout(ptr noundef nonnull %call17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then43, label %parport_EPP_supported.exit

parport_EPP_supported.exit:                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %modes, align 8
  %or.i = or i32 %34, 4
  store i32 %or.i, ptr %modes, align 8
  %ops.i = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 24
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  %epp_read_data.i = getelementptr inbounds %struct.parport_operations, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %epp_read_data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @parport_pc_epp_read_data, ptr %epp_read_data.i, align 4
  %38 = load ptr, ptr %ops.i, align 4
  %epp_write_data.i = getelementptr inbounds %struct.parport_operations, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %epp_write_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @parport_pc_epp_write_data, ptr %epp_write_data.i, align 4
  %40 = load ptr, ptr %ops.i, align 4
  %epp_read_addr.i = getelementptr inbounds %struct.parport_operations, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %epp_read_addr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @parport_pc_epp_read_addr, ptr %epp_read_addr.i, align 4
  %42 = load ptr, ptr %ops.i, align 4
  %epp_write_addr.i = getelementptr inbounds %struct.parport_operations, ptr %42, i32 0, i32 15
  %43 = ptrtoint ptr %epp_write_addr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @parport_pc_epp_write_addr, ptr %epp_write_addr.i, align 4
  br label %if.end47

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @parport_ECPEPP_supported(ptr noundef nonnull %call17)
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %parport_EPP_supported.exit, %if.then36.if.end47_crit_edge, %if.end35.if.end47_crit_edge
  %EPP_res.0 = phi ptr [ %call38, %parport_EPP_supported.exit ], [ %call38, %if.then43 ], [ null, %if.then36.if.end47_crit_edge ], [ null, %if.end35.if.end47_crit_edge ]
  %call.i454 = call fastcc i32 @clear_epp_timeout(ptr noundef nonnull %call17) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !621
  call void @arm_heavy_mb() #13
  %44 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call17, align 8
  %add.i = add i32 %45, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %46 = inttoptr i32 %add1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 12) #13, !srcloc !622
  %47 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call17, align 8
  %add4.i = add i32 %48, 2
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %49 = inttoptr i32 %add6.i to ptr
  %50 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #13, !srcloc !623
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !624
  %51 = and i8 %50, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %51)
  %cmp.i455 = icmp eq i8 %51, 12
  br i1 %cmp.i455, label %if.then.i, label %if.end47.if.end42.i_crit_edge

if.end47.if.end42.i_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

if.then.i:                                        ; preds = %if.end47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !625
  call void @arm_heavy_mb() #13
  %52 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call17, align 8
  %add16.i = add i32 %53, 2
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %54 = inttoptr i32 %add18.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 14) #13, !srcloc !622
  %55 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call17, align 8
  %add22.i = add i32 %56, 2
  %and23.i = and i32 %add22.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %57 = inttoptr i32 %add24.i to ptr
  %58 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %57) #13, !srcloc !623
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !626
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !627
  call void @arm_heavy_mb() #13
  %59 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %call17, align 8
  %add32.i = add i32 %60, 2
  %and33.i = and i32 %add32.i, 1048575
  %add34.i = or i32 %and33.i, -18874368
  %61 = inttoptr i32 %add34.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 12) #13, !srcloc !622
  %62 = and i8 %58, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %62)
  %cmp39.i = icmp eq i8 %62, 14
  br i1 %cmp39.i, label %if.then.i.if.end51_crit_edge, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

if.then.i.if.end51_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end42.i:                                       ; preds = %if.then.i.if.end42.i_crit_edge, %if.end47.if.end42.i_crit_edge
  %w.0.i = phi i32 [ 14, %if.then.i.if.end42.i_crit_edge ], [ 12, %if.end47.if.end42.i_crit_edge ]
  %r.0.i = phi i8 [ %58, %if.then.i.if.end42.i_crit_edge ], [ %50, %if.end47.if.end42.i_crit_edge ]
  %.b115.i = load i1, ptr @user_specified, align 4
  br i1 %.b115.i, label %do.end46.i, label %if.end42.i.if.end52.i_crit_edge

if.end42.i.if.end52.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

do.end46.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call17, align 8
  %conv50.i = zext i8 %r.0.i to i32
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %64, i32 noundef %w.0.i, i32 noundef %conv50.i) #16
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end46.i, %if.end42.i.if.end52.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !628
  call void @arm_heavy_mb() #13
  %65 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call17, align 8
  %and.i.i = and i32 %66, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %67 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 -86) #13, !srcloc !622
  %68 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call17, align 8
  %and.i116.i = and i32 %69, 1048575
  %add1.i117.i = or i32 %and.i116.i, -18874368
  %70 = inttoptr i32 %add1.i117.i to ptr
  %71 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #13, !srcloc !623
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %71)
  %cmp56.i = icmp eq i8 %71, -86
  br i1 %cmp56.i, label %if.then58.i, label %if.end52.i.if.end66.i_crit_edge

if.end52.i.if.end66.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i

if.then58.i:                                      ; preds = %if.end52.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !628
  call void @arm_heavy_mb() #13
  %72 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call17, align 8
  %and.i118.i = and i32 %73, 1048575
  %add1.i119.i = or i32 %and.i118.i, -18874368
  %74 = inttoptr i32 %add1.i119.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 85) #13, !srcloc !622
  %75 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %call17, align 8
  %and.i120.i = and i32 %76, 1048575
  %add1.i121.i = or i32 %and.i120.i, -18874368
  %77 = inttoptr i32 %add1.i121.i to ptr
  %78 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %77) #13, !srcloc !623
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %78)
  %cmp62.i = icmp eq i8 %78, 85
  br i1 %cmp62.i, label %if.then58.i.if.end51_crit_edge, label %if.then58.i.if.end66.i_crit_edge

if.then58.i.if.end66.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i

if.then58.i.if.end51_crit_edge:                   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end66.i:                                       ; preds = %if.then58.i.if.end66.i_crit_edge, %if.end52.i.if.end66.i_crit_edge
  %w.1.i = phi i32 [ 85, %if.then58.i.if.end66.i_crit_edge ], [ 170, %if.end52.i.if.end66.i_crit_edge ]
  %r.1.i = phi i8 [ %78, %if.then58.i.if.end66.i_crit_edge ], [ %71, %if.end52.i.if.end66.i_crit_edge ]
  %.b114.i = load i1, ptr @user_specified, align 4
  br i1 %.b114.i, label %parport_SPP_supported.exit, label %if.end66.i.out5_crit_edge

if.end66.i.out5_crit_edge:                        ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out5

parport_SPP_supported.exit:                       ; preds = %if.end66.i
  %79 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call17, align 8
  %conv75.i = zext i8 %r.1.i to i32
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %80, i32 noundef %w.1.i, i32 noundef %conv75.i) #16
  %81 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call17, align 8
  %call82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %82) #16
  %.b.i.pr = load i1, ptr @user_specified, align 4
  br i1 %.b.i.pr, label %parport_SPP_supported.exit.if.end51_crit_edge, label %parport_SPP_supported.exit.out5_crit_edge

parport_SPP_supported.exit.out5_crit_edge:        ; preds = %parport_SPP_supported.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out5

parport_SPP_supported.exit.if.end51_crit_edge:    ; preds = %parport_SPP_supported.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.end51:                                         ; preds = %parport_SPP_supported.exit.if.end51_crit_edge, %if.then58.i.if.end51_crit_edge, %if.then.i.if.end51_crit_edge
  %83 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool53.not = icmp eq i32 %84, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @parport_ECPPS2_supported(ptr noundef nonnull %call17)
  br label %if.end57

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %call56 = call fastcc i32 @parport_PS2_supported(ptr noundef nonnull %call17)
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then54
  %85 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %modes, align 8
  %and = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool59.not, i32 3, i32 8
  %size = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 2
  %87 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond, ptr %size, align 8
  %88 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name, align 4
  %90 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %call17, align 8
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %89, i32 noundef %91) #16
  %92 = ptrtoint ptr %base_hi26 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %base_hi26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool67.not = icmp eq i32 %93, 0
  br i1 %tobool67.not, label %if.end57.if.end77_crit_edge, label %land.lhs.true

if.end57.if.end77_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

land.lhs.true:                                    ; preds = %if.end57
  %94 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool69.not = icmp eq i32 %95, 0
  br i1 %tobool69.not, label %land.lhs.true.if.end77_crit_edge, label %do.end73

land.lhs.true.if.end77_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

do.end73:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %93) #16
  br label %if.end77

if.end77:                                         ; preds = %do.end73, %land.lhs.true.if.end77_crit_edge, %if.end57.if.end77_crit_edge
  %irq78 = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 5
  %96 = ptrtoint ptr %irq78 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %irq78, align 4
  %98 = zext i32 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values)
  switch i32 %97, label %if.end77.if.end92_crit_edge [
    i32 -2, label %if.then80
    i32 -3, label %if.end92.thread
  ]

if.end77.if.end92_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %irq78 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %irq78, align 4
  call fastcc void @parport_irq_probe(ptr noundef nonnull %call17)
  %100 = ptrtoint ptr %irq78 to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pr = load i32, ptr %irq78, align 4
  br label %if.end92

if.end92.thread:                                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %irq78 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %irq78, align 4
  call fastcc void @parport_irq_probe(ptr noundef nonnull %call17)
  %102 = ptrtoint ptr %irq78 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq78, align 4
  store i32 -1, ptr %irq78, align 4
  br label %if.end111

if.end92:                                         ; preds = %if.then80, %if.end77.if.end92_crit_edge
  %104 = phi i32 [ %97, %if.end77.if.end92_crit_edge ], [ %.pr, %if.then80 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %cmp94.not = icmp eq i32 %104, -1
  br i1 %cmp94.not, label %if.end92.if.end111_crit_edge, label %do.end98

if.end92.if.end111_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

do.end98:                                         ; preds = %if.end92
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %104) #16
  %105 = ptrtoint ptr %ctr_writable to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ctr_writable, align 1
  %107 = or i8 %106, 16
  store i8 %107, ptr %ctr_writable, align 1
  %dma104 = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 6
  %108 = ptrtoint ptr %dma104 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dma104, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %109)
  %cmp105 = icmp eq i32 %109, -2
  br i1 %cmp105, label %if.then107, label %do.end98.if.end111_crit_edge

do.end98.if.end111_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

if.then107:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %dma104 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %dma104, align 8
  call fastcc void @parport_dma_probe(ptr noundef nonnull %call17)
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %do.end98.if.end111_crit_edge, %if.end92.if.end111_crit_edge, %if.end92.thread
  %probedirq.0467 = phi i32 [ %103, %if.end92.thread ], [ -1, %do.end98.if.end111_crit_edge ], [ -1, %if.then107 ], [ -1, %if.end92.if.end111_crit_edge ]
  %dma112 = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 6
  %111 = ptrtoint ptr %dma112 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma112, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %112)
  %cmp113 = icmp eq i32 %112, -2
  br i1 %cmp113, label %if.then115, label %if.end111.if.end117_crit_edge

if.end111.if.end117_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %dma112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %dma112, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end111.if.end117_crit_edge
  %call118 = call fastcc i32 @parport_ECP_supported(ptr noundef nonnull %call17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end117.if.else156_crit_edge, label %land.lhs.true120

if.end117.if.else156_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else156

land.lhs.true120:                                 ; preds = %if.end117
  %114 = ptrtoint ptr %dma112 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dma112, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %115)
  %cmp122.not = icmp eq i32 %115, -3
  br i1 %cmp122.not, label %land.lhs.true120.if.else156_crit_edge, label %land.lhs.true124

land.lhs.true120.if.else156_crit_edge:            ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else156

land.lhs.true124:                                 ; preds = %land.lhs.true120
  %116 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fifo_depth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp126 = icmp sgt i32 %117, 0
  br i1 %cmp126, label %land.lhs.true128, label %land.lhs.true124.if.else156_crit_edge

land.lhs.true124.if.else156_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else156

land.lhs.true128:                                 ; preds = %land.lhs.true124
  %118 = ptrtoint ptr %irq78 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %irq78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %119)
  %cmp130.not = icmp eq i32 %119, -1
  br i1 %cmp130.not, label %land.lhs.true128.if.else156_crit_edge, label %if.then132

land.lhs.true128.if.else156_crit_edge:            ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else156

if.then132:                                       ; preds = %land.lhs.true128
  %120 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %modes, align 8
  %or134 = or i32 %121, 24
  store i32 %or134, ptr %modes, align 8
  %ops135 = getelementptr inbounds %struct.parport, ptr %call17, i32 0, i32 24
  %122 = ptrtoint ptr %ops135 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops135, align 4
  %compat_write_data = getelementptr inbounds %struct.parport_operations, ptr %123, i32 0, i32 20
  %124 = ptrtoint ptr %compat_write_data to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @parport_pc_compat_write_block_pio, ptr %compat_write_data, align 4
  %125 = load ptr, ptr %ops135, align 4
  %ecp_write_data = getelementptr inbounds %struct.parport_operations, ptr %125, i32 0, i32 17
  %126 = ptrtoint ptr %ecp_write_data to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @parport_pc_ecp_write_block_pio, ptr %ecp_write_data, align 4
  %127 = ptrtoint ptr %dma112 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dma112, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %128)
  %cmp138.not = icmp eq i32 %128, -1
  br i1 %cmp138.not, label %do.end152, label %do.end143

do.end143:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %128) #16
  %129 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %modes, align 8
  %or148 = or i32 %130, 32
  store i32 %or148, ptr %modes, align 8
  br label %do.end161

do.end152:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  br label %do.end161

if.else156:                                       ; preds = %land.lhs.true128.if.else156_crit_edge, %land.lhs.true124.if.else156_crit_edge, %land.lhs.true120.if.else156_crit_edge, %if.end117.if.else156_crit_edge
  %131 = ptrtoint ptr %dma112 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %dma112, align 8
  br label %do.end161

do.end161:                                        ; preds = %if.else156, %do.end152, %do.end143
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  %132 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %modes, align 8
  %and166 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %do.end161.do.body179_crit_edge, label %do.end171

do.end161.do.body179_crit_edge:                   ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body179

do.end171:                                        ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #15
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #16
  br label %do.body179

do.body179:                                       ; preds = %do.end171, %do.end161.do.body179_crit_edge
  %f.0 = phi i32 [ 1, %do.end171 ], [ 0, %do.end161.do.body179_crit_edge ]
  %134 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %modes, align 8
  %and181 = and i32 %135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %do.body179.do.body195_crit_edge, label %do.end186

do.body179.do.body195_crit_edge:                  ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body195

do.end186:                                        ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #15
  %inc188 = add nuw nsw i32 %f.0, 1
  %cond190 = select i1 %tobool167.not, ptr @.str.28, ptr @.str.27
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %cond190, ptr noundef nonnull @.str.32) #16
  br label %do.body195

do.body195:                                       ; preds = %do.end186, %do.body179.do.body195_crit_edge
  %f.1 = phi i32 [ %inc188, %do.end186 ], [ %f.0, %do.body179.do.body195_crit_edge ]
  %136 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %modes, align 8
  %and197 = and i32 %137, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %do.body195.do.body211_crit_edge, label %do.end202

do.body195.do.body211_crit_edge:                  ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body211

do.end202:                                        ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #15
  %inc204 = add nuw nsw i32 %f.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.1)
  %tobool205.not = icmp eq i32 %f.1, 0
  %cond206 = select i1 %tobool205.not, ptr @.str.28, ptr @.str.27
  %call207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %cond206, ptr noundef nonnull @.str.35) #16
  br label %do.body211

do.body211:                                       ; preds = %do.end202, %do.body195.do.body211_crit_edge
  %f.2 = phi i32 [ %inc204, %do.end202 ], [ %f.1, %do.body195.do.body211_crit_edge ]
  %138 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %modes, align 8
  %and213 = and i32 %139, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %do.body211.do.body227_crit_edge, label %do.end218

do.body211.do.body227_crit_edge:                  ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body227

do.end218:                                        ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #15
  %inc220 = add nuw nsw i32 %f.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.2)
  %tobool221.not = icmp eq i32 %f.2, 0
  %cond222 = select i1 %tobool221.not, ptr @.str.28, ptr @.str.27
  %call223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %cond222, ptr noundef nonnull @.str.38) #16
  br label %do.body227

do.body227:                                       ; preds = %do.end218, %do.body211.do.body227_crit_edge
  %f.3 = phi i32 [ %inc220, %do.end218 ], [ %f.2, %do.body211.do.body227_crit_edge ]
  %140 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %modes, align 8
  %and229 = and i32 %141, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %do.body227.do.body243_crit_edge, label %do.end234

do.body227.do.body243_crit_edge:                  ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body243

do.end234:                                        ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #15
  %inc236 = add nuw nsw i32 %f.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.3)
  %tobool237.not = icmp eq i32 %f.3, 0
  %cond238 = select i1 %tobool237.not, ptr @.str.28, ptr @.str.27
  %call239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %cond238, ptr noundef nonnull @.str.41) #16
  br label %do.body243

do.body243:                                       ; preds = %do.end234, %do.body227.do.body243_crit_edge
  %f.4 = phi i32 [ %inc236, %do.end234 ], [ %f.3, %do.body227.do.body243_crit_edge ]
  %142 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %modes, align 8
  %and245 = and i32 %143, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %do.body243.do.end258_crit_edge, label %do.end250

do.body243.do.end258_crit_edge:                   ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end258

do.end250:                                        ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.4)
  %tobool253.not = icmp eq i32 %f.4, 0
  %cond254 = select i1 %tobool253.not, ptr @.str.28, ptr @.str.27
  %call255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %cond254, ptr noundef nonnull @.str.44) #16
  br label %do.end258

do.end258:                                        ; preds = %do.end250, %do.body243.do.end258_crit_edge
  %call263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %probedirq.0467)
  %cmp264.not = icmp eq i32 %probedirq.0467, -1
  br i1 %cmp264.not, label %do.end258.if.end273_crit_edge, label %do.end269

do.end258.if.end273_crit_edge:                    ; preds = %do.end258
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273

do.end269:                                        ; preds = %do.end258
  call void @__sanitizer_cov_trace_pc() #15
  %144 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name, align 4
  %call272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %145, i32 noundef %probedirq.0467) #16
  br label %if.end273

if.end273:                                        ; preds = %do.end269, %do.end258.if.end273_crit_edge
  %tobool274.not = icmp eq ptr %ECR_res.0, null
  br i1 %tobool274.not, label %if.end273.if.end281_crit_edge, label %land.lhs.true275

if.end273.if.end281_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end281

land.lhs.true275:                                 ; preds = %if.end273
  %146 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %modes, align 8
  %and277 = and i32 %147, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %cmp278 = icmp eq i32 %and277, 0
  br i1 %cmp278, label %if.then280, label %land.lhs.true275.if.end281_crit_edge

land.lhs.true275.if.end281_crit_edge:             ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end281

if.then280:                                       ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #15
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %base_hi, i32 noundef 3) #13
  br label %if.end281

if.end281:                                        ; preds = %if.then280, %land.lhs.true275.if.end281_crit_edge, %if.end273.if.end281_crit_edge
  %tobool282.not = icmp eq ptr %EPP_res.0, null
  br i1 %tobool282.not, label %if.end281.if.end290_crit_edge, label %land.lhs.true283

if.end281.if.end290_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end290

land.lhs.true283:                                 ; preds = %if.end281
  %148 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %modes, align 8
  %and285 = and i32 %149, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %cmp286 = icmp eq i32 %and285, 0
  br i1 %cmp286, label %if.then288, label %land.lhs.true283.if.end290_crit_edge

land.lhs.true283.if.end290_crit_edge:             ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end290

if.then288:                                       ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #15
  %add289 = add i32 %base, 3
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %add289, i32 noundef 5) #13
  br label %if.end290

if.end290:                                        ; preds = %if.then288, %land.lhs.true283.if.end290_crit_edge, %if.end281.if.end290_crit_edge
  %150 = ptrtoint ptr %irq78 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %irq78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %cmp292.not = icmp eq i32 %151, -1
  br i1 %cmp292.not, label %if.end290.if.end310_crit_edge, label %if.then294

if.end290.if.end310_crit_edge:                    ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end310

if.then294:                                       ; preds = %if.end290
  %152 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %name, align 4
  %call.i457 = call i32 @request_threaded_irq(i32 noundef %151, ptr noundef nonnull @parport_irq_handler, ptr noundef null, i32 noundef %irqflags, ptr noundef %153, ptr noundef nonnull %call17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i457)
  %tobool298.not = icmp eq i32 %call.i457, 0
  br i1 %tobool298.not, label %if.then294.if.end310_crit_edge, label %do.end302

if.then294.if.end310_crit_edge:                   ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end310

do.end302:                                        ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #15
  %154 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %name, align 4
  %156 = ptrtoint ptr %irq78 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %irq78, align 4
  %call306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %155, i32 noundef %157) #16
  %158 = ptrtoint ptr %irq78 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -1, ptr %irq78, align 4
  %159 = ptrtoint ptr %dma112 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1, ptr %dma112, align 8
  br label %if.end310

if.end310:                                        ; preds = %do.end302, %if.then294.if.end310_crit_edge, %if.end290.if.end310_crit_edge
  %160 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool312.not = icmp eq i32 %161, 0
  br i1 %tobool312.not, label %if.end310.if.end314_crit_edge, label %if.then313

if.end310.if.end314_crit_edge:                    ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end314

if.then313:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @frob_econtrol(ptr noundef nonnull %call17, i8 noundef zeroext -1, i8 noundef zeroext 52)
  br label %if.end314

if.end314:                                        ; preds = %if.then313, %if.end310.if.end314_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !628
  call void @arm_heavy_mb() #13
  %162 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %call17, align 8
  %and.i458 = and i32 %163, 1048575
  %add1.i459 = or i32 %and.i458, -18874368
  %164 = inttoptr i32 %add1.i459 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %164, i8 0) #13, !srcloc !622
  call void @parport_pc_data_forward(ptr noundef nonnull %call17)
  call void @_raw_spin_lock(ptr noundef nonnull @ports_lock) #13
  %165 = load ptr, ptr @ports_list, align 4
  %call.i.i460 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @ports_list, ptr noundef %165) #13
  br i1 %call.i.i460, label %if.end.i.i, label %if.end314.list_add.exit_crit_edge

if.end314.list_add.exit_crit_edge:                ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %list, ptr %prev1.i.i, align 4
  %167 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %165, ptr %list, align 8
  %168 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @ports_list, ptr %prev.i, align 4
  store volatile ptr %list, ptr @ports_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end314.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ports_lock) #13
  call void @parport_announce_port(ptr noundef nonnull %call17) #13
  br label %cleanup

out5:                                             ; preds = %parport_SPP_supported.exit.out5_crit_edge, %if.end66.i.out5_crit_edge
  %tobool316.not = icmp eq ptr %ECR_res.0, null
  br i1 %tobool316.not, label %out5.if.end318_crit_edge, label %if.then317

out5.if.end318_crit_edge:                         ; preds = %out5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end318

if.then317:                                       ; preds = %out5
  call void @__sanitizer_cov_trace_pc() #15
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %base_hi, i32 noundef 3) #13
  br label %if.end318

if.end318:                                        ; preds = %if.then317, %out5.if.end318_crit_edge
  %tobool319.not = icmp eq ptr %EPP_res.0, null
  br i1 %tobool319.not, label %if.end318.if.end322_crit_edge, label %if.then320

if.end318.if.end322_crit_edge:                    ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end322

if.then320:                                       ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #15
  %add321 = add i32 %base, 3
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %add321, i32 noundef 5) #13
  br label %if.end322

if.end322:                                        ; preds = %if.then320, %if.end318.if.end322_crit_edge
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %base, i32 noundef 3) #13
  br label %out4

out4:                                             ; preds = %if.end322, %if.end20.out4_crit_edge
  call void @parport_del_port(ptr noundef nonnull %call17) #13
  br label %out3

out3:                                             ; preds = %out4, %if.end16.out3_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i452) #13
  br label %out2

out2:                                             ; preds = %out3, %if.end12.out2_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %out1

out1:                                             ; preds = %out2, %if.end8.out1_crit_edge
  %tobool323.not = icmp eq ptr %pdev.0, null
  br i1 %tobool323.not, label %out1.cleanup_crit_edge, label %if.then324

out1.cleanup_crit_edge:                           ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then324:                                       ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #15
  call void @platform_device_unregister(ptr noundef nonnull %pdev.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then324, %out1.cleanup_crit_edge, %list_add.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call17, %list_add.exit ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.then324 ], [ null, %out1.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_port(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parport_ECR_present(ptr nocapture noundef readonly %pb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !630
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pb, align 8
  %add = add i32 %3, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 12) #13, !srcloc !622
  %base_hi = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 1
  %5 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_hi, align 4
  %add2 = add i32 %6, 2
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %7 = inttoptr i32 %add4 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !631
  %9 = and i8 %8, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %do.body11, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

do.body11:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !632
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pb, align 8
  %add17 = add i32 %11, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %12 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 14) #13, !srcloc !622
  %13 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pb, align 8
  %add23 = add i32 %14, 2
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %15 = inttoptr i32 %add25 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !633
  %17 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_hi, align 4
  %add31 = add i32 %18, 2
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %19 = inttoptr i32 %add33 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !634
  %21 = xor i8 %20, %16
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp41 = icmp eq i8 %22, 0
  br i1 %cmp41, label %do.body11.do.body80_crit_edge, label %do.body11.if.end44_crit_edge

do.body11.if.end44_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

do.body11.do.body80_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80

if.end44:                                         ; preds = %do.body11.if.end44_crit_edge, %entry.if.end44_crit_edge
  %23 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_hi, align 4
  %add47 = add i32 %24, 2
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %25 = inttoptr i32 %add49 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !635
  %27 = and i8 %26, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp55.not = icmp eq i8 %27, 1
  br i1 %cmp55.not, label %if.end58, label %if.end44.do.body80_crit_edge

if.end44.do.body80_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80

if.end58:                                         ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECR_present, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 52, i32 noundef 0, i32 noundef 52) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %if.end58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base_hi, align 4
  %add28.i = add i32 %29, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %30 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 52) #13, !srcloc !622
  %31 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_hi, align 4
  %add61 = add i32 %32, 2
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %33 = inttoptr i32 %add63 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !638
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %34)
  %cmp68.not = icmp eq i8 %34, 53
  br i1 %cmp68.not, label %if.end71, label %frob_econtrol.exit.do.body80_crit_edge

frob_econtrol.exit.do.body80_crit_edge:           ; preds = %frob_econtrol.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body80

if.end71:                                         ; preds = %frob_econtrol.exit
  %ecr = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %ecr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %ecr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !639
  tail call void @arm_heavy_mb() #13
  %36 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pb, align 8
  %add76 = add i32 %37, 2
  %and77 = and i32 %add76, 1048575
  %add78 = or i32 %and77, -18874368
  %38 = inttoptr i32 %add78 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 12) #13, !srcloc !622
  %39 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base_hi, align 4
  %add.i.i = add i32 %40, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %41 = inttoptr i32 %add2.i.i to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECR_present, %if.then8.i.i)) #13
          to label %frob_set_mode.exit [label %if.then8.i.i], !srcloc !636

if.then8.i.i:                                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i = zext i8 %42 to i32
  %and14.i.i = and i32 %phi.cast.i.i, 31
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 0, i32 noundef %phi.cast.i.i, i32 noundef %and14.i.i) #13
  br label %frob_set_mode.exit

frob_set_mode.exit:                               ; preds = %if.then8.i.i, %if.end71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i = and i8 %42, 31
  %43 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_hi, align 4
  %add28.i.i = add i32 %44, 2
  %and29.i.i = and i32 %add28.i.i, 1048575
  %add30.i.i = or i32 %and29.i.i, -18874368
  %45 = inttoptr i32 %add30.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %45, i8 %and23.i.i) #13, !srcloc !622
  br label %cleanup

do.body80:                                        ; preds = %frob_econtrol.exit.do.body80_crit_edge, %if.end44.do.body80_crit_edge, %do.body11.do.body80_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !641
  tail call void @arm_heavy_mb() #13
  %46 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pb, align 8
  %add84 = add i32 %47, 2
  %and85 = and i32 %add84, 1048575
  %add86 = or i32 %and85, -18874368
  %48 = inttoptr i32 %add86 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 12) #13, !srcloc !622
  br label %cleanup

cleanup:                                          ; preds = %do.body80, %frob_set_mode.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parport_ECPEPP_supported(ptr nocapture noundef %pb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %ecr = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_hi = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 1
  %4 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_hi, align 4
  %add = add i32 %5, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !642
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECPEPP_supported, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 128, i32 noundef 0, i32 noundef 128) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_hi, align 4
  %add28.i = add i32 %9, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %10 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 -128) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !643
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pb, align 8
  %add3 = add i32 %12, 2
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %13 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 4) #13, !srcloc !622
  %call.i = tail call fastcc i32 @clear_epp_timeout(ptr noundef %pb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %frob_econtrol.exit.parport_EPP_supported.exit_crit_edge, label %if.end.i

frob_econtrol.exit.parport_EPP_supported.exit_crit_edge: ; preds = %frob_econtrol.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %parport_EPP_supported.exit

if.end.i:                                         ; preds = %frob_econtrol.exit
  call void @__sanitizer_cov_trace_pc() #15
  %modes.i = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 4
  %14 = ptrtoint ptr %modes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %modes.i, align 8
  %or.i = or i32 %15, 4
  store i32 %or.i, ptr %modes.i, align 8
  %ops.i = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 24
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %epp_read_data.i = getelementptr inbounds %struct.parport_operations, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %epp_read_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @parport_pc_epp_read_data, ptr %epp_read_data.i, align 4
  %19 = load ptr, ptr %ops.i, align 4
  %epp_write_data.i = getelementptr inbounds %struct.parport_operations, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %epp_write_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @parport_pc_epp_write_data, ptr %epp_write_data.i, align 4
  %21 = load ptr, ptr %ops.i, align 4
  %epp_read_addr.i = getelementptr inbounds %struct.parport_operations, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %epp_read_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @parport_pc_epp_read_addr, ptr %epp_read_addr.i, align 4
  %23 = load ptr, ptr %ops.i, align 4
  %epp_write_addr.i = getelementptr inbounds %struct.parport_operations, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %epp_write_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @parport_pc_epp_write_addr, ptr %epp_write_addr.i, align 4
  br label %parport_EPP_supported.exit

parport_EPP_supported.exit:                       ; preds = %if.end.i, %frob_econtrol.exit.parport_EPP_supported.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECPEPP_supported, %if.then8.i1)) #13
          to label %frob_econtrol.exit6 [label %if.then8.i1], !srcloc !636

if.then8.i1:                                      ; preds = %parport_EPP_supported.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv10.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef %conv10.i, i32 noundef 0, i32 noundef %conv10.i) #13
  br label %frob_econtrol.exit6

frob_econtrol.exit6:                              ; preds = %if.then8.i1, %parport_EPP_supported.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_hi, align 4
  %add28.i3 = add i32 %26, 2
  %and29.i4 = and i32 %add28.i3, 1048575
  %add30.i5 = or i32 %and29.i4, -18874368
  %27 = inttoptr i32 %add30.i5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %7) #13, !srcloc !622
  br i1 %tobool.not.i, label %frob_econtrol.exit6.cleanup_crit_edge, label %if.then9

frob_econtrol.exit6.cleanup_crit_edge:            ; preds = %frob_econtrol.exit6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %frob_econtrol.exit6
  call void @__sanitizer_cov_trace_pc() #15
  %ops = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 24
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %epp_read_data = getelementptr inbounds %struct.parport_operations, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %epp_read_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @parport_pc_ecpepp_read_data, ptr %epp_read_data, align 4
  %31 = load ptr, ptr %ops, align 4
  %epp_write_data = getelementptr inbounds %struct.parport_operations, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %epp_write_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @parport_pc_ecpepp_write_data, ptr %epp_write_data, align 4
  %33 = load ptr, ptr %ops, align 4
  %epp_read_addr = getelementptr inbounds %struct.parport_operations, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %epp_read_addr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @parport_pc_ecpepp_read_addr, ptr %epp_read_addr, align 4
  %35 = load ptr, ptr %ops, align 4
  %epp_write_addr = getelementptr inbounds %struct.parport_operations, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %epp_write_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @parport_pc_ecpepp_write_addr, ptr %epp_write_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %frob_econtrol.exit6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parport_ECPPS2_supported(ptr nocapture noundef %pb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %ecr = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_hi = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 1
  %4 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_hi, align 4
  %add = add i32 %5, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !644
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECPPS2_supported, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 32, i32 noundef 0, i32 noundef 32) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_hi, align 4
  %add28.i = add i32 %9, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %10 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 32) #13, !srcloc !622
  %call3 = tail call fastcc i32 @parport_PS2_supported(ptr noundef %pb)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECPPS2_supported, %if.then8.i1)) #13
          to label %frob_econtrol.exit6 [label %if.then8.i1], !srcloc !636

if.then8.i1:                                      ; preds = %frob_econtrol.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv10.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef %conv10.i, i32 noundef 0, i32 noundef %conv10.i) #13
  br label %frob_econtrol.exit6

frob_econtrol.exit6:                              ; preds = %if.then8.i1, %frob_econtrol.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_hi, align 4
  %add28.i3 = add i32 %12, 2
  %and29.i4 = and i32 %add28.i3, 1048575
  %add30.i5 = or i32 %and29.i4, -18874368
  %13 = inttoptr i32 %add30.i5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %7) #13, !srcloc !622
  br label %cleanup

cleanup:                                          ; preds = %frob_econtrol.exit6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parport_PS2_supported(ptr nocapture noundef %pb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @clear_epp_timeout(ptr noundef %pb)
  %physport.i.i = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 11
  %0 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %xor.i1.i = or i8 %5, 32
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %xor.i1.i, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pb, align 8
  %add.i.i = add i32 %9, 2
  %and9.i.i = and i32 %add.i.i, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %10 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %and719.i.i) #13, !srcloc !622
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and719.i.i, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !628
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pb, align 8
  %and.i = and i32 %13, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 85) #13, !srcloc !622
  %15 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pb, align 8
  %and.i25 = and i32 %16, 1048575
  %add1.i26 = or i32 %and.i25, -18874368
  %17 = inttoptr i32 %add1.i26 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %18)
  %cmp.not = icmp ne i8 %18, 85
  %spec.select = zext i1 %cmp.not to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !628
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pb, align 8
  %and.i27 = and i32 %20, 1048575
  %add1.i28 = or i32 %and.i27, -18874368
  %21 = inttoptr i32 %add1.i28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 -86) #13, !srcloc !622
  %22 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pb, align 8
  %and.i29 = and i32 %23, 1048575
  %add1.i30 = or i32 %and.i29, -18874368
  %24 = inttoptr i32 %add1.i30 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !629
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %25)
  %cmp5.not = icmp eq i8 %25, -86
  %inc8 = select i1 %cmp.not, i32 2, i32 1
  %ok.1 = select i1 %cmp5.not, i32 %spec.select, i32 %inc8
  %26 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i32 = getelementptr inbounds %struct.parport, ptr %27, i32 0, i32 25
  %28 = ptrtoint ptr %private_data.i.i32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data.i.i32, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %and.i.i = and i8 %31, -33
  %ctr_writable.i.i33 = getelementptr inbounds %struct.parport_pc_private, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %ctr_writable.i.i33 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctr_writable.i.i33, align 1
  %and719.i.i34 = and i8 %and.i.i, %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pb, align 8
  %add.i.i35 = add i32 %35, 2
  %and9.i.i36 = and i32 %add.i.i35, 1048575
  %add10.i.i37 = or i32 %and9.i.i36, -18874368
  %36 = inttoptr i32 %add10.i.i37 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %and719.i.i34) #13, !srcloc !622
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %and719.i.i34, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ok.1)
  %tobool.not = icmp eq i32 %ok.1, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %modes = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 4
  %38 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %modes, align 8
  %or = or i32 %39, 2
  store i32 %or, ptr %modes, align 8
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %private_data = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 25
  %40 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private_data, align 8
  %ctr_writable = getelementptr inbounds %struct.parport_pc_private, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ctr_writable to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ctr_writable, align 1
  %44 = and i8 %43, -33
  store i8 %44, ptr %ctr_writable, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  ret i32 %ok.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parport_irq_probe(ptr nocapture noundef %pb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %ecr = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @programmable_irq_support(ptr noundef %pb)
  %irq = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then2, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call fastcc i32 @irq_probe_ECP(ptr noundef %pb)
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %irq, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %irq6 = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 5
  %6 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp7 = icmp eq i32 %7, -1
  br i1 %cmp7, label %land.lhs.true, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end5
  %8 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true10

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %modes = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 4
  %10 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %modes, align 8
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true10.if.end15_crit_edge, label %if.then12

land.lhs.true10.if.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %irq6, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true10.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %call16 = tail call fastcc i32 @clear_epp_timeout(ptr noundef %pb)
  %13 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp18 = icmp eq i32 %14, -1
  br i1 %cmp18, label %land.lhs.true19, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

land.lhs.true19:                                  ; preds = %if.end15
  %modes20 = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 4
  %15 = ptrtoint ptr %modes20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %modes20, align 8
  %and21 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true19.if.end26_crit_edge, label %if.then23

land.lhs.true19.if.end26_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %irq6, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true19.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %call27 = tail call fastcc i32 @clear_epp_timeout(ptr noundef %pb)
  %18 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp29 = icmp eq i32 %19, -1
  br i1 %cmp29, label %if.then36, label %if.end26.if.end39_crit_edge

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then36:                                        ; preds = %if.end26
  %20 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %irq6, align 4
  %21 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pb, align 8
  %23 = load i32, ptr @superios, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %22)
  %cmp1.i.i = icmp eq i32 %23, %22
  br i1 %cmp1.i.i, label %if.then36.if.then.i_crit_edge, label %for.cond.i.i

if.then36.if.then.i_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.cond.i.i:                                     ; preds = %if.then36
  %24 = load i32, ptr getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp1.1.i.i = icmp eq i32 %24, %22
  br i1 %cmp1.1.i.i, label %for.cond.i.i.if.then.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.then.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %25 = load i32, ptr getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %22)
  %cmp1.2.i.i = icmp eq i32 %25, %22
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.if.then.i_crit_edge, label %for.cond.1.i.i.get_superio_irq.exit_crit_edge

for.cond.1.i.i.get_superio_irq.exit_crit_edge:    ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_superio_irq.exit

for.cond.1.i.i.if.then.i_crit_edge:               ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.1.i.i.if.then.i_crit_edge, %for.cond.i.i.if.then.i_crit_edge, %if.then36.if.then.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 1), %for.cond.i.i.if.then.i_crit_edge ], [ @superios, %if.then36.if.then.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 2), %for.cond.1.i.i.if.then.i_crit_edge ]
  %irq.i = getelementptr inbounds %struct.superio_struct, ptr %retval.0.i.ph.i, i32 0, i32 1
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i, align 4
  br label %get_superio_irq.exit

get_superio_irq.exit:                             ; preds = %if.then.i, %for.cond.1.i.i.get_superio_irq.exit_crit_edge
  %retval.0.i = phi i32 [ %27, %if.then.i ], [ -1, %for.cond.1.i.i.get_superio_irq.exit_crit_edge ]
  %28 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i, ptr %irq6, align 4
  br label %if.end39

if.end39:                                         ; preds = %get_superio_irq.exit, %if.end26.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parport_dma_probe(ptr nocapture noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %ecr = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc i32 @programmable_dma_support(ptr noundef %p)
  %dma = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 6
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %dma, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma1 = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 6
  %5 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p, align 8
  %9 = load i32, ptr @superios, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp1.i.i = icmp eq i32 %9, %8
  br i1 %cmp1.i.i, label %if.then2.if.then.i_crit_edge, label %for.cond.i.i

if.then2.if.then.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.cond.i.i:                                     ; preds = %if.then2
  %10 = load i32, ptr getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp1.1.i.i = icmp eq i32 %10, %8
  br i1 %cmp1.1.i.i, label %for.cond.i.i.if.then.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.then.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %11 = load i32, ptr getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %8)
  %cmp1.2.i.i = icmp eq i32 %11, %8
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.if.then.i_crit_edge, label %for.cond.1.i.i.get_superio_dma.exit_crit_edge

for.cond.1.i.i.get_superio_dma.exit_crit_edge:    ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_superio_dma.exit

for.cond.1.i.i.if.then.i_crit_edge:               ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond.1.i.i.if.then.i_crit_edge, %for.cond.i.i.if.then.i_crit_edge, %if.then2.if.then.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 1), %for.cond.i.i.if.then.i_crit_edge ], [ @superios, %if.then2.if.then.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 2), %for.cond.1.i.i.if.then.i_crit_edge ]
  %dma.i = getelementptr inbounds %struct.superio_struct, ptr %retval.0.i.ph.i, i32 0, i32 2
  %12 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma.i, align 4
  br label %get_superio_dma.exit

get_superio_dma.exit:                             ; preds = %if.then.i, %for.cond.1.i.i.get_superio_dma.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.then.i ], [ -1, %for.cond.1.i.i.get_superio_dma.exit_crit_edge ]
  %14 = ptrtoint ptr %dma1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %dma1, align 8
  br label %if.end5

if.end5:                                          ; preds = %get_superio_dma.exit, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parport_ECP_supported(ptr noundef readonly %pb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %ecr = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %base_hi27.i = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 1
  %4 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_hi27.i, align 4
  %add28.i = add i32 %5, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %6 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #13, !srcloc !622
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i283)) #13
          to label %frob_econtrol.exit288 [label %if.then8.i283], !srcloc !636

if.then8.i283:                                    ; preds = %frob_econtrol.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 192, i32 noundef 0, i32 noundef 192) #13
  br label %frob_econtrol.exit288

frob_econtrol.exit288:                            ; preds = %if.then8.i283, %frob_econtrol.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_hi27.i, align 4
  %add28.i285 = add i32 %8, 2
  %and29.i286 = and i32 %add28.i285, 1048575
  %add30.i287 = or i32 %and29.i286, -18874368
  %9 = inttoptr i32 %add30.i287 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -64) #13, !srcloc !622
  br label %land.rhs

land.rhs:                                         ; preds = %do.body.land.rhs_crit_edge, %frob_econtrol.exit288
  %i.0395 = phi i32 [ 0, %frob_econtrol.exit288 ], [ %inc, %do.body.land.rhs_crit_edge ]
  %10 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_hi27.i, align 4
  %add = add i32 %11, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %12 = inttoptr i32 %add1 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !646
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %do.body, label %if.end13

do.body:                                          ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !647
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_hi27.i, align 4
  %and7 = and i32 %16, 1048575
  %add8 = or i32 %and7, -18874368
  %17 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 -86) #13, !srcloc !622
  %inc = add nuw nsw i32 %i.0395, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %if.then12, label %do.body.land.rhs_crit_edge

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.then12:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i289)) #13
          to label %frob_econtrol.exit294 [label %if.then8.i289], !srcloc !636

if.then8.i289:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %frob_econtrol.exit294

frob_econtrol.exit294:                            ; preds = %if.then8.i289, %if.then12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_hi27.i, align 4
  %add28.i291 = add i32 %19, 2
  %and29.i292 = and i32 %add28.i291, 1048575
  %add30.i293 = or i32 %and29.i292, -18874368
  %20 = inttoptr i32 %add30.i293 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #13, !srcloc !622
  br label %cleanup

if.end13:                                         ; preds = %land.rhs
  %fifo_depth = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.0395, ptr %fifo_depth, align 4
  %22 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_hi27.i, align 4
  %add.i = add i32 %23, 2
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %24 = inttoptr i32 %add2.i to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i295)) #13
          to label %frob_econtrol.exit300 [label %if.then8.i295], !srcloc !636

if.then8.i295:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i = zext i8 %25 to i32
  %xor.i389 = or i32 %phi.cast.i, 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 4, i32 noundef 4, i32 noundef %phi.cast.i, i32 noundef %xor.i389) #13
  br label %frob_econtrol.exit300

frob_econtrol.exit300:                            ; preds = %if.then8.i295, %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %conv26.i390 = or i8 %25, 4
  %26 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_hi27.i, align 4
  %add28.i297 = add i32 %27, 2
  %and29.i298 = and i32 %add28.i297, 1048575
  %add30.i299 = or i32 %and29.i298, -18874368
  %28 = inttoptr i32 %add30.i299 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv26.i390) #13, !srcloc !622
  %29 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base_hi27.i, align 4
  %add.i302 = add i32 %30, 2
  %and.i303 = and i32 %add.i302, 1048575
  %add2.i304 = or i32 %and.i303, -18874368
  %31 = inttoptr i32 %add2.i304 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i307)) #13
          to label %frob_econtrol.exit313 [label %if.then8.i307], !srcloc !636

if.then8.i307:                                    ; preds = %frob_econtrol.exit300
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i305 = zext i8 %32 to i32
  %and14.i306 = and i32 %phi.cast.i305, 251
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 4, i32 noundef 0, i32 noundef %phi.cast.i305, i32 noundef %and14.i306) #13
  br label %frob_econtrol.exit313

frob_econtrol.exit313:                            ; preds = %if.then8.i307, %frob_econtrol.exit300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i308 = and i8 %32, -5
  %33 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_hi27.i, align 4
  %add28.i310 = add i32 %34, 2
  %and29.i311 = and i32 %add28.i310, 1048575
  %add30.i312 = or i32 %and29.i311, -18874368
  %35 = inttoptr i32 %add30.i312 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %and23.i308) #13, !srcloc !622
  %36 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fifo_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp24.not396 = icmp slt i32 %37, 1
  br i1 %cmp24.not396, label %frob_econtrol.exit313.for.end50_crit_edge, label %frob_econtrol.exit313.for.body26_crit_edge

frob_econtrol.exit313.for.body26_crit_edge:       ; preds = %frob_econtrol.exit313
  br label %for.body26

frob_econtrol.exit313.for.end50_crit_edge:        ; preds = %frob_econtrol.exit313
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50

for.body26:                                       ; preds = %for.inc48.for.body26_crit_edge, %frob_econtrol.exit313.for.body26_crit_edge
  %i.1397 = phi i32 [ %inc49, %for.inc48.for.body26_crit_edge ], [ 1, %frob_econtrol.exit313.for.body26_crit_edge ]
  %38 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_hi27.i, align 4
  %and30 = and i32 %39, 1048575
  %add31 = or i32 %and30, -18874368
  %40 = inttoptr i32 %add31 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !648
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 10737400) #13
  %43 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base_hi27.i, align 4
  %add37 = add i32 %44, 2
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %45 = inttoptr i32 %add39 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !649
  %47 = and i8 %46, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool45.not = icmp eq i8 %47, 0
  br i1 %tobool45.not, label %for.inc48, label %for.body26.for.end50_crit_edge

for.body26.for.end50_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50

for.inc48:                                        ; preds = %for.body26
  %inc49 = add i32 %i.1397, 1
  %48 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fifo_depth, align 4
  %cmp24.not = icmp sgt i32 %inc49, %49
  br i1 %cmp24.not, label %for.inc48.for.end50_crit_edge, label %for.inc48.for.body26_crit_edge

for.inc48.for.body26_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body26

for.inc48.for.end50_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50

for.end50:                                        ; preds = %for.inc48.for.end50_crit_edge, %for.body26.for.end50_crit_edge, %frob_econtrol.exit313.for.end50_crit_edge
  %i.1.lcssa = phi i32 [ 1, %frob_econtrol.exit313.for.end50_crit_edge ], [ %i.1397, %for.body26.for.end50_crit_edge ], [ %inc49, %for.inc48.for.end50_crit_edge ]
  %50 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fifo_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %51)
  %cmp52.not = icmp sgt i32 %i.1.lcssa, %51
  %.i.1 = select i1 %cmp52.not, i32 0, i32 %i.1.lcssa
  %writeIntrThreshold = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %writeIntrThreshold to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.i.1, ptr %writeIntrThreshold, align 4
  %53 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_hi27.i, align 4
  %add.i.i = add i32 %54, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %55 = inttoptr i32 %add2.i.i to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i.i)) #13
          to label %frob_set_mode.exit [label %if.then8.i.i], !srcloc !636

if.then8.i.i:                                     ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i = zext i8 %56 to i32
  %and14.i.i = and i32 %phi.cast.i.i, 31
  %xor.i1.i = or i32 %and14.i.i, 32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 32, i32 noundef %phi.cast.i.i, i32 noundef %xor.i1.i) #13
  br label %frob_set_mode.exit

frob_set_mode.exit:                               ; preds = %if.then8.i.i, %for.end50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i = and i8 %56, 31
  %conv26.i2.i = or i8 %and23.i.i, 32
  %57 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %base_hi27.i, align 4
  %add28.i.i = add i32 %58, 2
  %and29.i.i = and i32 %add28.i.i, 1048575
  %add30.i.i = or i32 %and29.i.i, -18874368
  %59 = inttoptr i32 %add30.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %conv26.i2.i) #13, !srcloc !622
  %physport.i.i = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 11
  %60 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.parport, ptr %61, i32 0, i32 25
  %62 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %private_data.i.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 4
  %xor.i1.i314 = or i8 %65, 32
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %xor.i1.i314, %67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %68 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pb, align 8
  %add.i.i315 = add i32 %69, 2
  %and9.i.i = and i32 %add.i.i315, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %70 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %and719.i.i) #13, !srcloc !622
  %71 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %and719.i.i, ptr %63, align 4
  %72 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base_hi27.i, align 4
  %add.i.i317 = add i32 %73, 2
  %and.i.i318 = and i32 %add.i.i317, 1048575
  %add2.i.i319 = or i32 %and.i.i318, -18874368
  %74 = inttoptr i32 %add2.i.i319 to ptr
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %74) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i.i323)) #13
          to label %frob_set_mode.exit329 [label %if.then8.i.i323], !srcloc !636

if.then8.i.i323:                                  ; preds = %frob_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i320 = zext i8 %75 to i32
  %and14.i.i321 = and i32 %phi.cast.i.i320, 31
  %xor.i1.i322 = or i32 %and14.i.i321, 192
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 192, i32 noundef %phi.cast.i.i320, i32 noundef %xor.i1.i322) #13
  br label %frob_set_mode.exit329

frob_set_mode.exit329:                            ; preds = %if.then8.i.i323, %frob_set_mode.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i324 = and i8 %75, 31
  %conv26.i2.i325 = or i8 %and23.i.i324, -64
  %76 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %base_hi27.i, align 4
  %add28.i.i326 = add i32 %77, 2
  %and29.i.i327 = and i32 %add28.i.i326, 1048575
  %add30.i.i328 = or i32 %and29.i.i327, -18874368
  %78 = inttoptr i32 %add30.i.i328 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %conv26.i2.i325) #13, !srcloc !622
  %79 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %base_hi27.i, align 4
  %add.i331 = add i32 %80, 2
  %and.i332 = and i32 %add.i331, 1048575
  %add2.i333 = or i32 %and.i332, -18874368
  %81 = inttoptr i32 %add2.i333 to ptr
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %81) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i337)) #13
          to label %frob_econtrol.exit344 [label %if.then8.i337], !srcloc !636

if.then8.i337:                                    ; preds = %frob_set_mode.exit329
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i334 = zext i8 %82 to i32
  %xor.i336391 = or i32 %phi.cast.i334, 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 4, i32 noundef 4, i32 noundef %phi.cast.i334, i32 noundef %xor.i336391) #13
  br label %frob_econtrol.exit344

frob_econtrol.exit344:                            ; preds = %if.then8.i337, %frob_set_mode.exit329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %conv26.i339392 = or i8 %82, 4
  %83 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %base_hi27.i, align 4
  %add28.i341 = add i32 %84, 2
  %and29.i342 = and i32 %add28.i341, 1048575
  %add30.i343 = or i32 %and29.i342, -18874368
  %85 = inttoptr i32 %add30.i343 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 %conv26.i339392) #13, !srcloc !622
  %86 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %base_hi27.i, align 4
  %add.i346 = add i32 %87, 2
  %and.i347 = and i32 %add.i346, 1048575
  %add2.i348 = or i32 %and.i347, -18874368
  %88 = inttoptr i32 %add2.i348 to ptr
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %88) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i351)) #13
          to label %frob_econtrol.exit357 [label %if.then8.i351], !srcloc !636

if.then8.i351:                                    ; preds = %frob_econtrol.exit344
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i349 = zext i8 %89 to i32
  %and14.i350 = and i32 %phi.cast.i349, 251
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 4, i32 noundef 0, i32 noundef %phi.cast.i349, i32 noundef %and14.i350) #13
  br label %frob_econtrol.exit357

frob_econtrol.exit357:                            ; preds = %if.then8.i351, %frob_econtrol.exit344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i352 = and i8 %89, -5
  %90 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %base_hi27.i, align 4
  %add28.i354 = add i32 %91, 2
  %and29.i355 = and i32 %add28.i354, 1048575
  %add30.i356 = or i32 %and29.i355, -18874368
  %92 = inttoptr i32 %add30.i356 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 %and23.i352) #13, !srcloc !622
  %93 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fifo_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp67.not399 = icmp slt i32 %94, 1
  br i1 %cmp67.not399, label %frob_econtrol.exit357.for.end93_crit_edge, label %frob_econtrol.exit357.do.body70_crit_edge

frob_econtrol.exit357.do.body70_crit_edge:        ; preds = %frob_econtrol.exit357
  br label %do.body70

frob_econtrol.exit357.for.end93_crit_edge:        ; preds = %frob_econtrol.exit357
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end93

do.body70:                                        ; preds = %for.inc91.do.body70_crit_edge, %frob_econtrol.exit357.do.body70_crit_edge
  %i.3400 = phi i32 [ %inc92, %for.inc91.do.body70_crit_edge ], [ 1, %frob_econtrol.exit357.do.body70_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !650
  tail call void @arm_heavy_mb() #13
  %95 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %base_hi27.i, align 4
  %and75 = and i32 %96, 1048575
  %add76 = or i32 %and75, -18874368
  %97 = inttoptr i32 %add76 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 -86) #13, !srcloc !622
  %98 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %base_hi27.i, align 4
  %add80 = add i32 %99, 2
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %100 = inttoptr i32 %add82 to ptr
  %101 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %100) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !651
  %102 = and i8 %101, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool88.not = icmp eq i8 %102, 0
  br i1 %tobool88.not, label %for.inc91, label %do.body70.for.end93_crit_edge

do.body70.for.end93_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end93

for.inc91:                                        ; preds = %do.body70
  %inc92 = add i32 %i.3400, 1
  %103 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %fifo_depth, align 4
  %cmp67.not = icmp sgt i32 %inc92, %104
  br i1 %cmp67.not, label %for.inc91.for.end93_crit_edge, label %for.inc91.do.body70_crit_edge

for.inc91.do.body70_crit_edge:                    ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body70

for.inc91.for.end93_crit_edge:                    ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end93

for.end93:                                        ; preds = %for.inc91.for.end93_crit_edge, %do.body70.for.end93_crit_edge, %frob_econtrol.exit357.for.end93_crit_edge
  %i.3.lcssa = phi i32 [ 1, %frob_econtrol.exit357.for.end93_crit_edge ], [ %i.3400, %do.body70.for.end93_crit_edge ], [ %inc92, %for.inc91.for.end93_crit_edge ]
  %105 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fifo_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3.lcssa, i32 %106)
  %cmp95.not = icmp sgt i32 %i.3.lcssa, %106
  %.i.3 = select i1 %cmp95.not, i32 0, i32 %i.3.lcssa
  %readIntrThreshold = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 5
  %107 = ptrtoint ptr %readIntrThreshold to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %.i.3, ptr %readIntrThreshold, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i359)) #13
          to label %frob_econtrol.exit365 [label %if.then8.i359], !srcloc !636

if.then8.i359:                                    ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %frob_econtrol.exit365

frob_econtrol.exit365:                            ; preds = %if.then8.i359, %for.end93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %108 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %base_hi27.i, align 4
  %add28.i362 = add i32 %109, 2
  %and29.i363 = and i32 %add28.i362, 1048575
  %add30.i364 = or i32 %and29.i363, -18874368
  %110 = inttoptr i32 %add30.i364 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 0) #13, !srcloc !622
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i368)) #13
          to label %frob_econtrol.exit375 [label %if.then8.i368], !srcloc !636

if.then8.i368:                                    ; preds = %frob_econtrol.exit365
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 244, i32 noundef 0, i32 noundef 244) #13
  br label %frob_econtrol.exit375

frob_econtrol.exit375:                            ; preds = %if.then8.i368, %frob_econtrol.exit365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %111 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %base_hi27.i, align 4
  %add28.i372 = add i32 %112, 2
  %and29.i373 = and i32 %add28.i372, 1048575
  %add30.i374 = or i32 %and29.i373, -18874368
  %113 = inttoptr i32 %add30.i374 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 -12) #13, !srcloc !622
  %114 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %base_hi27.i, align 4
  %and112 = and i32 %115, 1048575
  %add113 = or i32 %and112, -18874368
  %116 = inttoptr i32 %add113 to ptr
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %116) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !652
  %118 = lshr i8 %117, 4
  %119 = and i8 %118, 7
  %and118 = zext i8 %119 to i32
  %120 = zext i32 %and118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.334)
  switch i32 %and118, label %do.end134 [
    i32 0, label %frob_econtrol.exit375.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb125
    i32 1, label %frob_econtrol.exit375.sw.epilog_crit_edge
  ]

frob_econtrol.exit375.sw.epilog_crit_edge:        ; preds = %frob_econtrol.exit375
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

frob_econtrol.exit375.sw.epilog.sink.split_crit_edge: ; preds = %frob_econtrol.exit375
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.bb125:                                         ; preds = %frob_econtrol.exit375
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

do.end134:                                        ; preds = %frob_econtrol.exit375
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end134, %sw.bb125, %frob_econtrol.exit375.sw.epilog.sink.split_crit_edge
  %.str.85.sink = phi ptr [ @.str.85, %do.end134 ], [ @.str.80, %sw.bb125 ], [ @.str.80, %frob_econtrol.exit375.sw.epilog.sink.split_crit_edge ]
  %pword.0.ph = phi i32 [ 1, %do.end134 ], [ 4, %sw.bb125 ], [ 2, %frob_econtrol.exit375.sw.epilog.sink.split_crit_edge ]
  %121 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pb, align 8
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.85.sink, i32 noundef %122) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %frob_econtrol.exit375.sw.epilog_crit_edge
  %pword.0 = phi i32 [ %and118, %frob_econtrol.exit375.sw.epilog_crit_edge ], [ %pword.0.ph, %sw.epilog.sink.split ]
  %pword139 = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 4
  %123 = ptrtoint ptr %pword139 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %pword.0, ptr %pword139, align 4
  %124 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %base_hi27.i, align 4
  %add.i.i377 = add i32 %125, 2
  %and.i.i378 = and i32 %add.i.i377, 1048575
  %add2.i.i379 = or i32 %and.i.i378, -18874368
  %126 = inttoptr i32 %add2.i.i379 to ptr
  %127 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %126) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_ECP_supported, %if.then8.i.i382)) #13
          to label %frob_set_mode.exit387 [label %if.then8.i.i382], !srcloc !636

if.then8.i.i382:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i380 = zext i8 %127 to i32
  %and14.i.i381 = and i32 %phi.cast.i.i380, 31
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 0, i32 noundef %phi.cast.i.i380, i32 noundef %and14.i.i381) #13
  br label %frob_set_mode.exit387

frob_set_mode.exit387:                            ; preds = %if.then8.i.i382, %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i383 = and i8 %127, 31
  %128 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %base_hi27.i, align 4
  %add28.i.i384 = add i32 %129, 2
  %and29.i.i385 = and i32 %add28.i.i384, 1048575
  %add30.i.i386 = or i32 %and29.i.i385, -18874368
  %130 = inttoptr i32 %add30.i.i386 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 %and23.i.i383) #13, !srcloc !622
  br label %cleanup

cleanup:                                          ; preds = %frob_set_mode.exit387, %frob_econtrol.exit294, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %frob_econtrol.exit294 ], [ 1, %frob_set_mode.exit387 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_compat_write_block_pio(ptr noundef %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %physport = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport, align 8
  %private_data = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cad = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cad, align 8
  %timeout = getelementptr inbounds %struct.pardevice, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp slt i32 %7, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @parport_ieee1284_write_compat(ptr noundef %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  %and.i.i = and i8 %9, -33
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %and.i.i, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 8
  %add.i.i = add i32 %13, 2
  %and9.i.i = and i32 %add.i.i, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %14 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %and719.i.i) #13, !srcloc !622
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and719.i.i, ptr %3, align 4
  %16 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %physport, align 8
  %private_data.i.i89 = getelementptr inbounds %struct.parport, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %private_data.i.i89 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data.i.i89, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4
  %and.i.i90 = and i8 %21, -2
  %ctr_writable.i.i91 = getelementptr inbounds %struct.parport_pc_private, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %ctr_writable.i.i91 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctr_writable.i.i91, align 1
  %and719.i.i92 = and i8 %and.i.i90, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 8
  %add.i.i93 = add i32 %25, 2
  %and9.i.i94 = and i32 %add.i.i93, 1048575
  %add10.i.i95 = or i32 %and9.i.i94, -18874368
  %26 = inttoptr i32 %add10.i.i95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %and719.i.i92) #13, !srcloc !622
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %and719.i.i92, ptr %19, align 4
  %call3 = tail call fastcc i32 @change_mode(ptr noundef %port, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %29) #16
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %30 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %physport, align 8
  %phase = getelementptr inbounds %struct.parport, ptr %31, i32 0, i32 23, i32 1
  %32 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %phase, align 4
  %call.i = tail call fastcc i32 @parport_pc_fifo_write_block_pio(ptr noundef %port, ptr noundef %buf, i32 noundef %length) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %fifo_depth = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 3
  %34 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fifo_depth, align 4
  %mul9.neg = mul i32 %35, -400
  %add.neg = sub i32 %mul9.neg, %33
  br label %do.body10

do.body10:                                        ; preds = %do.cond15.do.body10_crit_edge, %if.end6
  %call11 = tail call fastcc i32 @change_mode(ptr noundef %port, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call11)
  %cond = icmp eq i32 %call11, -16
  br i1 %cond, label %do.cond15, label %do.body10.if.end45_crit_edge

do.body10.if.end45_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

do.cond15:                                        ; preds = %do.body10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %36
  %cmp16 = icmp slt i32 %sub, 0
  br i1 %cmp16, label %do.cond15.do.body10_crit_edge, label %do.end22

do.cond15.do.body10_crit_edge:                    ; preds = %do.cond15
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body10

do.end22:                                         ; preds = %do.cond15
  %name24 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %37 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name24, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %38) #16
  tail call fastcc void @frob_set_mode(ptr noundef %port, i32 noundef 6)
  %39 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fifo_depth, align 4
  %sub27 = sub i32 %call.i, %40
  %base_hi = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 1
  %41 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_hi, align 4
  %add2896 = add i32 %42, 2
  %and97 = and i32 %add2896, 1048575
  %add2998 = or i32 %and97, -18874368
  %43 = inttoptr i32 %add2998 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !653
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool34.not99 = icmp eq i8 %45, 0
  br i1 %tobool34.not99, label %do.end22.do.body37_crit_edge, label %do.end22.for.end_crit_edge

do.end22.for.end_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end22.do.body37_crit_edge:                     ; preds = %do.end22
  br label %do.body37

do.body37:                                        ; preds = %do.body37.do.body37_crit_edge, %do.end22.do.body37_crit_edge
  %written.0100 = phi i32 [ %inc, %do.body37.do.body37_crit_edge ], [ %sub27, %do.end22.do.body37_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !654
  tail call void @arm_heavy_mb() #13
  %46 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_hi, align 4
  %and42 = and i32 %47, 1048575
  %add43 = or i32 %and42, -18874368
  %48 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 0) #13, !srcloc !622
  %inc = add i32 %written.0100, 1
  %49 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base_hi, align 4
  %add28 = add i32 %50, 2
  %and = and i32 %add28, 1048575
  %add29 = or i32 %and, -18874368
  %51 = inttoptr i32 %add29 to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !653
  %53 = and i8 %52, 2
  %tobool34.not = icmp eq i8 %53, 0
  br i1 %tobool34.not, label %do.body37.do.body37_crit_edge, label %do.body37.for.end_crit_edge

do.body37.for.end_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body37.do.body37_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body37

for.end:                                          ; preds = %do.body37.for.end_crit_edge, %do.end22.for.end_crit_edge
  %written.0.lcssa = phi i32 [ %sub27, %do.end22.for.end_crit_edge ], [ %inc, %do.body37.for.end_crit_edge ]
  tail call fastcc void @frob_set_mode(ptr noundef %port, i32 noundef 1)
  br label %if.end45

if.end45:                                         ; preds = %for.end, %do.body10.if.end45_crit_edge
  %written.1 = phi i32 [ %written.0.lcssa, %for.end ], [ %call.i, %do.body10.if.end45_crit_edge ]
  %call46 = tail call i32 @parport_wait_peripheral(ptr noundef %port, i8 noundef zeroext -128, i8 noundef zeroext -128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.if.end55_crit_edge, label %do.end51

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %name53 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %54 = ptrtoint ptr %name53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name53, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %55, i32 noundef %call46) #16
  br label %if.end55

if.end55:                                         ; preds = %do.end51, %if.end45.if.end55_crit_edge
  %56 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %physport, align 8
  %phase58 = getelementptr inbounds %struct.parport, ptr %57, i32 0, i32 23, i32 1
  %58 = ptrtoint ptr %phase58 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 1, ptr %phase58, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %written.1, %if.end55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_ecp_write_block_pio(ptr noundef %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %physport = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport, align 8
  %private_data = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cad = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cad, align 8
  %timeout = getelementptr inbounds %struct.pardevice, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp slt i32 %7, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @parport_ieee1284_ecp_write_data(ptr noundef %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %phase = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %phase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %phase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3.not = icmp eq i32 %9, 1
  br i1 %cmp3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %frob_control = getelementptr inbounds %struct.parport_operations, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %frob_control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %frob_control, align 4
  %call5 = tail call zeroext i8 %13(ptr noundef %port, i8 noundef zeroext 6, i8 noundef zeroext 6) #13
  %call6 = tail call i32 @parport_wait_peripheral(ptr noundef %port, i8 noundef zeroext 32, i8 noundef zeroext 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then4.if.end10_crit_edge, label %do.end

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %15, i32 noundef %call6) #16
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %16 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %physport, align 8
  %private_data.i.i = getelementptr inbounds %struct.parport, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data.i.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4
  %and.i.i = and i8 %21, -33
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %and.i.i, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 8
  %add.i.i = add i32 %25, 2
  %and9.i.i = and i32 %add.i.i, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %26 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %and719.i.i) #13, !srcloc !622
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %and719.i.i, ptr %19, align 4
  %28 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %physport, align 8
  %private_data.i.i151 = getelementptr inbounds %struct.parport, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %private_data.i.i151 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private_data.i.i151, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %and.i.i152 = and i8 %33, -4
  %ctr_writable.i.i153 = getelementptr inbounds %struct.parport_pc_private, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %ctr_writable.i.i153 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ctr_writable.i.i153, align 1
  %and719.i.i154 = and i8 %and.i.i152, %35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 8
  %add.i.i155 = add i32 %37, 2
  %and9.i.i156 = and i32 %add.i.i155, 1048575
  %add10.i.i157 = or i32 %and9.i.i156, -18874368
  %38 = inttoptr i32 %add10.i.i157 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %and719.i.i154) #13, !srcloc !622
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %and719.i.i154, ptr %31, align 4
  %call12 = tail call fastcc i32 @change_mode(ptr noundef %port, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.if.end21_crit_edge, label %do.end17

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %name19 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %40 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name19, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %41) #16
  br label %if.end21

if.end21:                                         ; preds = %do.end17, %if.end10.if.end21_crit_edge
  %42 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %physport, align 8
  %phase24 = getelementptr inbounds %struct.parport, ptr %43, i32 0, i32 23, i32 1
  %44 = ptrtoint ptr %phase24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %phase24, align 4
  %call.i = tail call fastcc i32 @parport_pc_fifo_write_block_pio(ptr noundef %port, ptr noundef %buf, i32 noundef %length) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %fifo_depth = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 3
  %46 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fifo_depth, align 4
  %mul.neg = mul i32 %47, -400
  %add.neg = sub i32 %mul.neg, %45
  br label %do.body26

do.body26:                                        ; preds = %do.cond31.do.body26_crit_edge, %if.end21
  %call27 = tail call fastcc i32 @change_mode(ptr noundef %port, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call27)
  %cond = icmp eq i32 %call27, -16
  br i1 %cond, label %do.cond31, label %do.body26.if.end87_crit_edge

do.body26.if.end87_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

do.cond31:                                        ; preds = %do.body26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %48
  %cmp32 = icmp slt i32 %sub, 0
  br i1 %cmp32, label %do.cond31.do.body26_crit_edge, label %do.end38

do.cond31.do.body26_crit_edge:                    ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26

do.end38:                                         ; preds = %do.cond31
  %name40 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %49 = ptrtoint ptr %name40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name40, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %50) #16
  tail call fastcc void @frob_set_mode(ptr noundef %port, i32 noundef 6)
  %51 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fifo_depth, align 4
  %sub43 = sub i32 %call.i, %52
  %base_hi = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 1
  %53 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base_hi, align 4
  %add44158 = add i32 %54, 2
  %and159 = and i32 %add44158, 1048575
  %add45160 = or i32 %and159, -18874368
  %55 = inttoptr i32 %add45160 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !655
  %57 = and i8 %56, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool50.not161 = icmp eq i8 %57, 0
  br i1 %tobool50.not161, label %do.end38.do.body53_crit_edge, label %do.end38.for.end_crit_edge

do.end38.for.end_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end38.do.body53_crit_edge:                     ; preds = %do.end38
  br label %do.body53

do.body53:                                        ; preds = %do.body53.do.body53_crit_edge, %do.end38.do.body53_crit_edge
  %written.0162 = phi i32 [ %inc, %do.body53.do.body53_crit_edge ], [ %sub43, %do.end38.do.body53_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !656
  tail call void @arm_heavy_mb() #13
  %58 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_hi, align 4
  %and58 = and i32 %59, 1048575
  %add59 = or i32 %and58, -18874368
  %60 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 0) #13, !srcloc !622
  %inc = add i32 %written.0162, 1
  %61 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %base_hi, align 4
  %add44 = add i32 %62, 2
  %and = and i32 %add44, 1048575
  %add45 = or i32 %and, -18874368
  %63 = inttoptr i32 %add45 to ptr
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !655
  %65 = and i8 %64, 2
  %tobool50.not = icmp eq i8 %65, 0
  br i1 %tobool50.not, label %do.body53.do.body53_crit_edge, label %do.body53.for.end_crit_edge

do.body53.for.end_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body53.do.body53_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body53

for.end:                                          ; preds = %do.body53.for.end_crit_edge, %do.end38.for.end_crit_edge
  %written.0.lcssa = phi i32 [ %sub43, %do.end38.for.end_crit_edge ], [ %inc, %do.body53.for.end_crit_edge ]
  tail call fastcc void @frob_set_mode(ptr noundef %port, i32 noundef 1)
  tail call void @parport_pc_data_reverse(ptr noundef %port)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 1073740) #13
  %ops61 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %67 = ptrtoint ptr %ops61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops61, align 4
  %frob_control62 = getelementptr inbounds %struct.parport_operations, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %frob_control62 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %frob_control62, align 4
  %call63 = tail call zeroext i8 %70(ptr noundef %port, i8 noundef zeroext 4, i8 noundef zeroext 0) #13
  %call64 = tail call i32 @parport_wait_peripheral(ptr noundef %port, i8 noundef zeroext 32, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %for.end.if.end73_crit_edge, label %do.end69

for.end.if.end73_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

do.end69:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %name40 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name40, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %72, i32 noundef %call64) #16
  br label %if.end73

if.end73:                                         ; preds = %do.end69, %for.end.if.end73_crit_edge
  %73 = ptrtoint ptr %ops61 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops61, align 4
  %frob_control75 = getelementptr inbounds %struct.parport_operations, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %frob_control75 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %frob_control75, align 4
  %call76 = tail call zeroext i8 %76(ptr noundef %port, i8 noundef zeroext 4, i8 noundef zeroext 4) #13
  %call77 = tail call i32 @parport_wait_peripheral(ptr noundef %port, i8 noundef zeroext 32, i8 noundef zeroext 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end73.if.end87_crit_edge, label %do.end82

if.end73.if.end87_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

do.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %name40 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name40, align 4
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %78, i32 noundef %call77) #16
  br label %if.end87

if.end87:                                         ; preds = %do.end82, %if.end73.if.end87_crit_edge, %do.body26.if.end87_crit_edge
  %written.1 = phi i32 [ %written.0.lcssa, %do.end82 ], [ %written.0.lcssa, %if.end73.if.end87_crit_edge ], [ %call.i, %do.body26.if.end87_crit_edge ]
  %call88 = tail call i32 @parport_wait_peripheral(ptr noundef %port, i8 noundef zeroext -128, i8 noundef zeroext -128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end87.if.end97_crit_edge, label %do.end93

if.end87.if.end97_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  %name95 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %79 = ptrtoint ptr %name95 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name95, align 4
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %80, i32 noundef %call88) #16
  br label %if.end97

if.end97:                                         ; preds = %do.end93, %if.end87.if.end97_crit_edge
  %81 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %physport, align 8
  %phase100 = getelementptr inbounds %struct.parport, ptr %82, i32 0, i32 23, i32 1
  %83 = ptrtoint ptr %phase100 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 1, ptr %phase100, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %written.1, %if.end97 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_irq_handler(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @frob_econtrol(ptr nocapture noundef readonly %pb, i8 noundef zeroext %m, i8 noundef zeroext %v) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %m to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %m)
  %cmp.not = icmp eq i8 %m, -1
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %base_hi = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 1
  %0 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_hi, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %2 = inttoptr i32 %add2 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  %phi.cast = zext i8 %3 to i32
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %ectr.0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frob_econtrol, %if.then8)) #13
          to label %do.body17 [label %if.then8], !srcloc !636

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %conv10 = zext i8 %v to i32
  %neg = xor i32 %conv, -1
  %and14 = and i32 %ectr.0, %neg
  %xor = xor i32 %and14, %conv10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef %conv, i32 noundef %conv10, i32 noundef %ectr.0, i32 noundef %xor) #13
  br label %do.body17

do.body17:                                        ; preds = %if.then8, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %neg22 = xor i32 %conv, -1
  %and23 = and i32 %ectr.0, %neg22
  %4 = trunc i32 %and23 to i8
  %conv26 = xor i8 %4, %v
  %base_hi27 = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 1
  %5 = ptrtoint ptr %base_hi27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_hi27, align 4
  %add28 = add i32 %6, 2
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %7 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv26) #13, !srcloc !622
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_pc_write_data(ptr nocapture noundef readonly %p, i8 noundef zeroext %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !628
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 8
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %d) #13, !srcloc !622
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_pc_data_forward(ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %physport.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %physport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport.i, align 8
  %private_data.i = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %and.i = and i8 %5, -33
  %ctr_writable.i = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ctr_writable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctr_writable.i, align 1
  %and719.i = and i8 %and.i, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p, align 8
  %add.i = add i32 %9, 2
  %and9.i = and i32 %add.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %10 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %and719.i) #13, !srcloc !622
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and719.i, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_announce_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_del_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_pc_unregister_port(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 25
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %ops1 = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 24
  %2 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops1, align 4
  tail call void @parport_remove_port(ptr noundef %p) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @ports_lock) #13
  %list = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.parport_pc_private, ptr %1, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ports_lock) #13
  %irq = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 5
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not = icmp eq i32 %13, -1
  br i1 %cmp.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr @free_irq(i32 noundef %13, ptr noundef %p) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del_init.exit.if.end_crit_edge
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %15, i32 noundef 3) #13
  %size = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 2
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp3 = icmp ugt i32 %17, 3
  br i1 %cmp3, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %p, align 8
  %add = add i32 %19, 3
  %sub = add i32 %17, -3
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %add, i32 noundef %sub) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %modes = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 4
  %20 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %modes, align 8
  %and = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.if.end9_crit_edge, label %if.then8

if.end7.if.end9_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %base_hi = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 1
  %22 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_hi, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %23, i32 noundef 3) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end7.if.end9_crit_edge
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %25) #13
  tail call void @parport_del_port(ptr noundef %p) #13
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_remove_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_setup(ptr noundef %str) #5 section ".init.text" align 64 {
entry:
  %endptr = alloca ptr, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %endptr) #13
  %0 = ptrtoint ptr %endptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %endptr, align 4, !annotation !657
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %str, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.335)
  switch i8 %2, label %lor.lhs.false.if.end_crit_edge [
    i8 0, label %lor.lhs.false.if.then_crit_edge
    i8 48, label %land.lhs.true
  ]

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %str, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  store i32 -2, ptr @io, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call = tail call i32 @strncmp(ptr noundef nonnull %str, ptr noundef nonnull dereferenceable(5) @.str.151, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store i32 -2, ptr @irqval, align 4
  store i32 -2, ptr @dmaval, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @simple_strtoul(ptr noundef nonnull %str, ptr noundef nonnull %endptr, i32 noundef 0) #13
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call8, ptr %val, align 4
  %7 = ptrtoint ptr %endptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %endptr, align 4
  %cmp9 = icmp eq ptr %8, %str
  br i1 %cmp9, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull %str) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %9 = load i32, ptr @parport_setup_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp14 = icmp eq i32 %9, 16
  br i1 %cmp14, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull %str) #16
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %arrayidx = getelementptr [17 x i32], ptr @io, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call8, ptr %arrayidx, align 4
  %arrayidx23 = getelementptr [16 x i32], ptr @irqval, i32 0, i32 %9
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr [16 x i32], ptr @dmaval, i32 0, i32 %9
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %arrayidx24, align 4
  %call25 = call ptr @strchr(ptr noundef nonnull %str, i32 noundef 44)
  %incdec.ptr = getelementptr i8, ptr %call25, i32 1
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end22.if.end43_crit_edge, label %if.then27

if.end22.if.end43_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then27:                                        ; preds = %if.end22
  %call.i = call fastcc i32 @parport_parse_param(ptr noundef %incdec.ptr, ptr noundef nonnull %val, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not = icmp eq i32 %call.i, 0
  br i1 %tobool29.not, label %if.end31, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.then27
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = load i32, ptr @parport_setup_ptr, align 4
  %arrayidx32 = getelementptr [16 x i32], ptr @irqval, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %arrayidx32, align 4
  %call33 = call ptr @strchr(ptr noundef %incdec.ptr, i32 noundef 44)
  %tobool35.not = icmp eq ptr %call33, null
  br i1 %tobool35.not, label %if.end31.if.end43_crit_edge, label %if.then36

if.end31.if.end43_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then36:                                        ; preds = %if.end31
  %incdec.ptr34 = getelementptr i8, ptr %call33, i32 1
  %call.i60 = call fastcc i32 @parport_parse_param(ptr noundef %incdec.ptr34, ptr noundef nonnull %val, i32 noundef -3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool38.not = icmp eq i32 %call.i60, 0
  br i1 %tobool38.not, label %if.end40, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %19 = load i32, ptr @parport_setup_ptr, align 4
  %arrayidx41 = getelementptr [16 x i32], ptr @dmaval, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %arrayidx41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end40, %if.end31.if.end43_crit_edge, %if.end22.if.end43_crit_edge
  %21 = load i32, ptr @parport_setup_ptr, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr @parport_setup_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then36.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %do.end19, %do.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %endptr) #13
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_init_mode_setup(ptr noundef %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %str) #16
  %call1 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.163) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  store i32 1, ptr @parport_init_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.164) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store i32 2, ptr @parport_init_mode, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.165) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  store i32 3, ptr @parport_init_mode, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %call10 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.166) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  store i32 4, ptr @parport_init_mode, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %call14 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(7) @.str.167) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  store i32 5, ptr @parport_init_mode, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @parport_pc_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %.b = load i1, ptr @pci_registered_parport, align 4
  br i1 %.b, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @parport_pc_pci_driver) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  tail call void @platform_driver_unregister(ptr noundef nonnull @parport_pc_platform_driver) #13
  %0 = load volatile ptr, ptr @ports_list, align 4
  %cmp.i.not16 = icmp eq ptr %0, @ports_list
  br i1 %cmp.i.not16, label %if.end3.while.end_crit_edge, label %if.end3.while.body_crit_edge

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  br label %while.body

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %if.end3.while.body_crit_edge
  %1 = phi ptr [ %8, %if.end12.while.body_crit_edge ], [ %0, %if.end3.while.body_crit_edge ]
  %port5 = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port5, align 4
  %dev6 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 4
  tail call void @parport_pc_unregister_port(ptr noundef %3)
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %while.body.if.end12_crit_edge, label %land.lhs.true

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true:                                    ; preds = %while.body
  %bus = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %7, @platform_bus_type
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr11 = getelementptr i8, ptr %5, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr11) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true.if.end12_crit_edge, %while.body.if.end12_crit_edge
  %8 = load volatile ptr, ptr @ports_list, align 4
  %cmp.i.not = icmp eq ptr %8, @ports_list
  br i1 %cmp.i.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %if.end3.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %cmp.i.not = icmp eq i32 %0, -2
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @parport_pc_platform_driver, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load i32, ptr @io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  store i1 true, ptr @user_specified, align 4
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %if.then6
  %i.032 = phi i32 [ 0, %if.then6 ], [ %inc, %if.end15.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x i32], ptr @io, i32 0, i32 %i.032
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %for.body.cleanup_crit_edge, label %if.end9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %arrayidx10 = getelementptr [17 x i32], ptr @io_hi, i32 0, i32 %i.032
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp11 = icmp eq i32 %5, -1
  br i1 %cmp11, label %if.then12, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %3, 1024
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %arrayidx10, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx10, align 4
  %arrayidx18 = getelementptr [16 x i32], ptr @irqval, i32 0, i32 %i.032
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr [16 x i32], ptr @dmaval, i32 0, i32 %i.032
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx19, align 4
  %call20 = tail call ptr @parport_pc_probe_port(i32 noundef %3, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef null, i32 noundef 0)
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %if.end15.cleanup_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %13 = load i32, ptr @irqval, align 4
  %14 = load i32, ptr @dmaval, align 4
  tail call fastcc void @parport_pc_find_ports(i32 noundef %13, i32 noundef %14) #19
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end15.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @parport_pc_read_data(ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 8
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !629
  ret i8 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_pc_write_control(ptr nocapture noundef readonly %p, i8 noundef zeroext %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = and i8 %d, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %cad = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 13
  %3 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cad, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %2, ptr noundef %6) #16
  %physport.i.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %7 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.parport, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %xor.i1.i = or i8 %12, 32
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %xor.i1.i, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p, align 8
  %add.i.i = add i32 %16, 2
  %and9.i.i = and i32 %add.i.i, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %17 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %and719.i.i) #13, !srcloc !622
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and719.i.i, ptr %10, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and3 = and i8 %d, 15
  %physport.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %19 = ptrtoint ptr %physport.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %physport.i, align 8
  %private_data.i = getelementptr inbounds %struct.parport, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %and.i = and i8 %24, -16
  %xor.i10 = or i8 %and.i, %and3
  %ctr_writable.i = getelementptr inbounds %struct.parport_pc_private, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %ctr_writable.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctr_writable.i, align 1
  %and719.i = and i8 %xor.i10, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p, align 8
  %add.i = add i32 %28, 2
  %and9.i = and i32 %add.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %29 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %and719.i) #13, !srcloc !622
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and719.i, ptr %22, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @parport_pc_read_control(ptr nocapture noundef readonly %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %physport = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport, align 8
  %private_data = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 15
  ret i8 %6
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @parport_pc_frob_control(ptr nocapture noundef readonly %p, i8 noundef zeroext %mask, i8 noundef zeroext %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = and i8 %mask, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %cad = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 13
  %3 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cad, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = and i8 %val, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool4.not, ptr @.str.60, ptr @.str.59
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %2, ptr noundef %6, ptr noundef nonnull %cond) #16
  %physport.i.i26 = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %8 = ptrtoint ptr %physport.i.i26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %physport.i.i26, align 8
  %private_data.i.i27 = getelementptr inbounds %struct.parport, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %private_data.i.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i.i27, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  br i1 %tobool4.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %xor.i1.i = or i8 %13, 32
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %xor.i1.i, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p, align 8
  %add.i.i = add i32 %17, 2
  %and9.i.i = and i32 %add.i.i, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %18 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %and719.i.i) #13, !srcloc !622
  br label %if.end9.sink.split

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %and.i.i = and i8 %13, -33
  %ctr_writable.i.i28 = getelementptr inbounds %struct.parport_pc_private, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %ctr_writable.i.i28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctr_writable.i.i28, align 1
  %and719.i.i29 = and i8 %and.i.i, %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %p, align 8
  %add.i.i30 = add i32 %22, 2
  %and9.i.i31 = and i32 %add.i.i30, 1048575
  %add10.i.i32 = or i32 %and9.i.i31, -18874368
  %23 = inttoptr i32 %add10.i.i32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %and719.i.i29) #13, !srcloc !622
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.else, %if.then8
  %and719.i.i.sink = phi i8 [ %and719.i.i, %if.then8 ], [ %and719.i.i29, %if.else ]
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %and719.i.i.sink, ptr %11, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %entry.if.end9_crit_edge
  %and11 = and i8 %mask, 15
  %25 = and i8 %val, 15
  %physport.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %26 = ptrtoint ptr %physport.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %physport.i, align 8
  %private_data.i = getelementptr inbounds %struct.parport, ptr %27, i32 0, i32 25
  %28 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %neg.i = xor i8 %and11, -1
  %and.i = and i8 %31, %neg.i
  %xor.i = xor i8 %and.i, %25
  %ctr_writable.i = getelementptr inbounds %struct.parport_pc_private, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %ctr_writable.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctr_writable.i, align 1
  %and719.i = and i8 %xor.i, %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p, align 8
  %add.i = add i32 %35, 2
  %and9.i = and i32 %add.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %36 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %and719.i) #13, !srcloc !622
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %and719.i, ptr %29, align 4
  ret i8 %and719.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @parport_pc_read_status(ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 8
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !658
  ret i8 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_pc_enable_irq(ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %physport.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %physport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport.i, align 8
  %private_data.i = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %xor.i1 = or i8 %5, 16
  %ctr_writable.i = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ctr_writable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctr_writable.i, align 1
  %and719.i = and i8 %xor.i1, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p, align 8
  %add.i = add i32 %9, 2
  %and9.i = and i32 %add.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %10 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %and719.i) #13, !srcloc !622
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and719.i, ptr %3, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_pc_disable_irq(ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %physport.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %physport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport.i, align 8
  %private_data.i = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %and.i = and i8 %5, -17
  %ctr_writable.i = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ctr_writable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctr_writable.i, align 1
  %and719.i = and i8 %and.i, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p, align 8
  %add.i = add i32 %9, 2
  %and9.i = and i32 %add.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %10 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %and719.i) #13, !srcloc !622
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and719.i, ptr %3, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_pc_data_reverse(ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %physport.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %physport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport.i, align 8
  %private_data.i = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %xor.i1 = or i8 %5, 32
  %ctr_writable.i = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ctr_writable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctr_writable.i, align 1
  %and719.i = and i8 %xor.i1, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p, align 8
  %add.i = add i32 %9, 2
  %and9.i = and i32 %add.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %10 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %and719.i) #13, !srcloc !622
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %and719.i, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @parport_pc_init_state(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %s) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 12, ptr %s, align 4
  %irq_func = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %irq_func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %irq_func, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %irq = getelementptr inbounds %struct.parport, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.not = icmp eq i32 %6, -1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 28, ptr %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ecr = getelementptr inbounds %struct.pc_parport_state, ptr %s, i32 0, i32 1
  %8 = ptrtoint ptr %ecr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 52, ptr %ecr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_pc_save_state(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %physport = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport, align 8
  %private_data = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %s, align 4
  %ecr = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %base_hi = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 1
  %9 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_hi, align 4
  %add = add i32 %10, 2
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %11 = inttoptr i32 %add2 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !659
  %conv4 = zext i8 %12 to i32
  %ecr6 = getelementptr inbounds %struct.pc_parport_state, ptr %s, i32 0, i32 1
  %13 = ptrtoint ptr %ecr6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv4, ptr %ecr6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_pc_restore_state(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %physport = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport, align 8
  %private_data = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s, align 4
  %ctr_writable = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ctr_writable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctr_writable, align 1
  %8 = trunc i32 %5 to i8
  %conv1 = and i8 %7, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p, align 8
  %add = add i32 %10, 2
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %11 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv1) #13, !srcloc !622
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv1, ptr %3, align 4
  %ecr = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %ecr6 = getelementptr inbounds %struct.pc_parport_state, ptr %s, i32 0, i32 1
  %15 = ptrtoint ptr %ecr6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ecr6, align 4
  %conv7 = trunc i32 %16 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_restore_state, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %conv10.i = and i32 %16, 255
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef %conv10.i, i32 noundef 0, i32 noundef %conv10.i) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %base_hi27.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 1
  %17 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base_hi27.i, align 4
  %add28.i = add i32 %18, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %19 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv7) #13, !srcloc !622
  br label %if.end

if.end:                                           ; preds = %frob_econtrol.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_epp_write_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_epp_read_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_epp_write_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_epp_read_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_ecp_write_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_ecp_read_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_ecp_write_addr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_write_compat(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_read_nibble(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_ieee1284_read_byte(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @frob_set_mode(ptr nocapture noundef readonly %p, i32 noundef %mode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %mode.tr = trunc i32 %mode to i8
  %conv = shl i8 %mode.tr, 5
  %base_hi.i = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_hi.i, align 4
  %add.i = add i32 %1, 2
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add2.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frob_set_mode, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i = zext i8 %3 to i32
  %conv10.i = zext i8 %conv to i32
  %and14.i = and i32 %phi.cast.i, 31
  %xor.i1 = or i32 %and14.i, %conv10.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef %conv10.i, i32 noundef %phi.cast.i, i32 noundef %xor.i1) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i = and i8 %3, 31
  %conv26.i2 = or i8 %and23.i, %conv
  %4 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_hi.i, align 4
  %add28.i = add i32 %5, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %6 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv26.i2) #13, !srcloc !622
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clear_epp_timeout(ptr nocapture noundef readonly %pb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pb, align 8
  %add.i = add i32 %1, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !658
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pb, align 8
  %add.i30 = add i32 %6, 1
  %and.i31 = and i32 %add.i30, 1048575
  %add1.i32 = or i32 %and.i31, -18874368
  %7 = inttoptr i32 %add1.i32 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !658
  %9 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pb, align 8
  %add.i33 = add i32 %10, 1
  %and.i34 = and i32 %add.i33, 1048575
  %add1.i35 = or i32 %and.i34, -18874368
  %11 = inttoptr i32 %add1.i35 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !658
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !661
  tail call void @arm_heavy_mb() #13
  %or = or i8 %12, 1
  %13 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pb, align 8
  %add = add i32 %14, 1
  %and5 = and i32 %add, 1048575
  %add6 = or i32 %and5, -18874368
  %15 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %or) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !662
  tail call void @arm_heavy_mb() #13
  %16 = and i8 %12, -2
  %17 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pb, align 8
  %add15 = add i32 %18, 1
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %19 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %16) #13, !srcloc !622
  %20 = ptrtoint ptr %pb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pb, align 8
  %add.i36 = add i32 %21, 1
  %and.i37 = and i32 %add.i36, 1048575
  %add1.i38 = or i32 %and.i37, -18874368
  %22 = inttoptr i32 %add1.i38 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !658
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = zext i8 %25 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_epp_read_data(ptr nocapture noundef readonly %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end57, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 8
  %add = add i32 %1, 1
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %2 = inttoptr i32 %add2 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !663
  %conv166 = zext i8 %3 to i32
  %and4167 = and i32 %conv166, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4167)
  %tobool5.not168 = icmp eq i32 %and4167, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp169 = icmp ne i32 %length, 0
  %or.cond170 = and i1 %tobool5.not168, %cmp169
  br i1 %or.cond170, label %while.body.lr.ph, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.then
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %while.body.lr.ph
  %conv175 = phi i32 [ %conv166, %while.body.lr.ph ], [ %conv, %if.end56.while.body_crit_edge ]
  %buf.addr.0173 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %if.end56.while.body_crit_edge ]
  %got.0172 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end56.while.body_crit_edge ]
  %left.0171 = phi i32 [ %length, %while.body.lr.ph ], [ %dec, %if.end56.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %left.0171)
  %cmp7 = icmp ult i32 %left.0171, 16
  %and10 = and i32 %conv175, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond162 = select i1 %cmp7, i1 true, i1 %tobool11.not
  br i1 %or.cond162, label %if.else31, label %if.then16

if.then16:                                        ; preds = %while.body
  %4 = ptrtoint ptr %buf.addr.0173 to i32
  %and17 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 8
  %add21 = add i32 %6, 4
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %7 = inttoptr i32 %add23 to ptr
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__raw_readsl(ptr noundef nonnull %7, ptr noundef %buf.addr.0173, i32 noundef 4) #13
  br label %if.end40

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__raw_readsb(ptr noundef nonnull %7, ptr noundef %buf.addr.0173, i32 noundef 16) #13
  br label %if.end40

if.else31:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 8
  %add34 = add i32 %9, 4
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %10 = inttoptr i32 %add36 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !664
  %12 = ptrtoint ptr %buf.addr.0173 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %buf.addr.0173, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.else31, %if.else, %if.then19
  %.sink185 = phi i32 [ 1, %if.else31 ], [ 16, %if.else ], [ 16, %if.then19 ]
  %.sink = phi i32 [ -1, %if.else31 ], [ -16, %if.else ], [ -16, %if.then19 ]
  %incdec.ptr = getelementptr i8, ptr %buf.addr.0173, i32 %.sink185
  %inc = add i32 %got.0172, %.sink185
  %dec = add i32 %left.0171, %.sink
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 8
  %add43 = add i32 %14, 1
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %15 = inttoptr i32 %add45 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !665
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool51.not = icmp eq i8 %17, 0
  br i1 %tobool51.not, label %if.end40.if.end56_crit_edge, label %do.end

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

do.end:                                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %19) #16
  %call55 = tail call fastcc i32 @clear_epp_timeout(ptr noundef %port)
  br label %if.end56

if.end56:                                         ; preds = %do.end, %if.end40.if.end56_crit_edge
  %conv = zext i8 %16 to i32
  %and4 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %length)
  %cmp = icmp ult i32 %inc, %length
  %or.cond = select i1 %tobool5.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end56.while.body_crit_edge, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end57:                                         ; preds = %entry
  %and58 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp ne i32 %and58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %length)
  %cmp61 = icmp ugt i32 %length, 1
  %or.cond163 = and i1 %cmp61, %tobool59.not
  br i1 %or.cond163, label %if.then63, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp94176.not = icmp eq i32 %length, 0
  br i1 %cmp94176.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then63:                                        ; preds = %if.end57
  %20 = ptrtoint ptr %buf to i32
  %or = or i32 %20, %length
  %and64 = and i32 %or, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 8
  %add68 = add i32 %22, 4
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %23 = inttoptr i32 %add70 to ptr
  br i1 %tobool65.not, label %if.then66, label %if.else72

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  %shr = lshr i32 %length, 2
  tail call void @__raw_readsl(ptr noundef nonnull %23, ptr noundef %buf, i32 noundef %shr) #13
  br label %if.end78

if.else72:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__raw_readsb(ptr noundef nonnull %23, ptr noundef %buf, i32 noundef %length) #13
  br label %if.end78

if.end78:                                         ; preds = %if.else72, %if.then66
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 8
  %add81 = add i32 %25, 1
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %26 = inttoptr i32 %add83 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !666
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool89.not = icmp eq i8 %28, 0
  br i1 %tobool89.not, label %if.end78.cleanup_crit_edge, label %if.end78.cleanup.sink.split_crit_edge

if.end78.cleanup.sink.split_crit_edge:            ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %buf.addr.2178 = phi ptr [ %incdec.ptr104, %for.inc.for.body_crit_edge ], [ %buf, %for.cond.preheader.for.body_crit_edge ]
  %got.2177 = phi i32 [ %inc119, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 8
  %add98 = add i32 %30, 4
  %and99 = and i32 %add98, 1048575
  %add100 = or i32 %and99, -18874368
  %31 = inttoptr i32 %add100 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !667
  %33 = ptrtoint ptr %buf.addr.2178 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %buf.addr.2178, align 1
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 8
  %add107 = add i32 %35, 1
  %and108 = and i32 %add107, 1048575
  %add109 = or i32 %and108, -18874368
  %36 = inttoptr i32 %add109 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !668
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool115.not = icmp eq i8 %38, 0
  br i1 %tobool115.not, label %for.inc, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %incdec.ptr104 = getelementptr i8, ptr %buf.addr.2178, i32 1
  %inc119 = add nuw i32 %got.2177, 1
  %exitcond.not = icmp eq i32 %inc119, %length
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.body.cleanup.sink.split_crit_edge, %if.end78.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -5, %if.end78.cleanup.sink.split_crit_edge ], [ %got.2177, %for.body.cleanup.sink.split_crit_edge ]
  %call117 = tail call fastcc i32 @clear_epp_timeout(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %length, %if.end78.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %length, %for.inc.cleanup_crit_edge ], [ %inc, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_epp_write_data(ptr nocapture noundef readonly %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %length)
  %cmp = icmp ugt i32 %length, 1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp2362.not = icmp eq i32 %length, 0
  br i1 %cmp2362.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  %or = or i32 %0, %length
  %and1 = and i32 %or, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 8
  %add = add i32 %2, 4
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %3 = inttoptr i32 %add5 to ptr
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %shr = lshr i32 %length, 2
  tail call void @__raw_writesl(ptr noundef nonnull %3, ptr noundef %buf, i32 noundef %shr) #13
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__raw_writesb(ptr noundef nonnull %3, ptr noundef %buf, i32 noundef %length) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 8
  %add12 = add i32 %5, 1
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %6 = inttoptr i32 %add14 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !669
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool18.not = icmp eq i8 %8, 0
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %buf.addr.064 = phi ptr [ %incdec.ptr, %for.inc.do.body_crit_edge ], [ %buf, %for.cond.preheader.do.body_crit_edge ]
  %written.063 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 0, %for.cond.preheader.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !670
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %buf.addr.064 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf.addr.064, align 1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 8
  %add26 = add i32 %12, 4
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %13 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #13, !srcloc !622
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 8
  %add32 = add i32 %15, 1
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %16 = inttoptr i32 %add34 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !671
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool40.not = icmp eq i8 %18, 0
  br i1 %tobool40.not, label %for.inc, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.inc:                                          ; preds = %do.body
  %incdec.ptr = getelementptr i8, ptr %buf.addr.064, i32 1
  %inc = add nuw i32 %written.063, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -5, %if.end.cleanup.sink.split_crit_edge ], [ %written.063, %do.body.cleanup.sink.split_crit_edge ]
  %call42 = tail call fastcc i32 @clear_epp_timeout(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %length, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %length, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_epp_read_addr(ptr nocapture noundef readonly %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %length)
  %cmp = icmp ugt i32 %length, 1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp1451.not = icmp eq i32 %length, 0
  br i1 %cmp1451.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 8
  %add = add i32 %1, 3
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %2 = inttoptr i32 %add2 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %2, ptr noundef %buf, i32 noundef %length) #13
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 8
  %add4 = add i32 %4, 1
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %5 = inttoptr i32 %add6 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !672
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %buf.addr.053 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %buf, %for.cond.preheader.for.body_crit_edge ]
  %got.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 8
  %add18 = add i32 %9, 3
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %10 = inttoptr i32 %add20 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !673
  %12 = ptrtoint ptr %buf.addr.053 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %buf.addr.053, align 1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 8
  %add26 = add i32 %14, 1
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %15 = inttoptr i32 %add28 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !674
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool34.not = icmp eq i8 %17, 0
  br i1 %tobool34.not, label %for.inc, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, ptr %buf.addr.053, i32 1
  %inc = add nuw i32 %got.052, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.body.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -5, %if.then.cleanup.sink.split_crit_edge ], [ %got.052, %for.body.cleanup.sink.split_crit_edge ]
  %call36 = tail call fastcc i32 @clear_epp_timeout(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %length, %if.then.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %length, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_epp_write_addr(ptr nocapture noundef readonly %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %length)
  %cmp = icmp ugt i32 %length, 1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp1448.not = icmp eq i32 %length, 0
  br i1 %cmp1448.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 8
  %add = add i32 %1, 3
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %2 = inttoptr i32 %add2 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %2, ptr noundef %buf, i32 noundef %length) #13
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 8
  %add4 = add i32 %4, 1
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %5 = inttoptr i32 %add6 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !675
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %buf.addr.050 = phi ptr [ %incdec.ptr, %for.inc.do.body_crit_edge ], [ %buf, %for.cond.preheader.do.body_crit_edge ]
  %written.049 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 0, %for.cond.preheader.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !676
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %buf.addr.050 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf.addr.050, align 1
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 8
  %add17 = add i32 %11, 3
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %12 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %9) #13, !srcloc !622
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 8
  %add23 = add i32 %14, 1
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %15 = inttoptr i32 %add25 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !677
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool31.not = icmp eq i8 %17, 0
  br i1 %tobool31.not, label %for.inc, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

for.inc:                                          ; preds = %do.body
  %incdec.ptr = getelementptr i8, ptr %buf.addr.050, i32 1
  %inc = add nuw i32 %written.049, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -5, %if.then.cleanup.sink.split_crit_edge ], [ %written.049, %do.body.cleanup.sink.split_crit_edge ]
  %call33 = tail call fastcc i32 @clear_epp_timeout(ptr noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %length, %if.then.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %length, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_ecpepp_read_data(ptr nocapture noundef readonly %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_hi.i.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_hi.i.i, align 4
  %add.i.i = add i32 %1, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add2.i.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_ecpepp_read_data, %if.then8.i.i)) #13
          to label %frob_set_mode.exit [label %if.then8.i.i], !srcloc !636

if.then8.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i = zext i8 %3 to i32
  %and14.i.i = and i32 %phi.cast.i.i, 31
  %xor.i1.i = or i32 %and14.i.i, 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 128, i32 noundef %phi.cast.i.i, i32 noundef %xor.i1.i) #13
  br label %frob_set_mode.exit

frob_set_mode.exit:                               ; preds = %if.then8.i.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i = and i8 %3, 31
  %conv26.i2.i = or i8 %and23.i.i, -128
  %4 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_hi.i.i, align 4
  %add28.i.i = add i32 %5, 2
  %and29.i.i = and i32 %add28.i.i, 1048575
  %add30.i.i = or i32 %and29.i.i, -18874368
  %6 = inttoptr i32 %add30.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv26.i2.i) #13, !srcloc !622
  %physport.i.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 11
  %7 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.parport, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %xor.i1.i5 = or i8 %12, 32
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %xor.i1.i5, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 8
  %add.i.i6 = add i32 %16, 2
  %and9.i.i = and i32 %add.i.i6, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %17 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %and719.i.i) #13, !srcloc !622
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and719.i.i, ptr %10, align 4
  %19 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i8 = getelementptr inbounds %struct.parport, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %private_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i.i8, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %and.i.i9 = and i8 %24, -16
  %xor.i10.i = or i8 %and.i.i9, 4
  %ctr_writable.i.i10 = getelementptr inbounds %struct.parport_pc_private, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %ctr_writable.i.i10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctr_writable.i.i10, align 1
  %and719.i.i11 = and i8 %xor.i10.i, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 8
  %add.i.i12 = add i32 %28, 2
  %and9.i.i13 = and i32 %add.i.i12, 1048575
  %add10.i.i14 = or i32 %and9.i.i13, -18874368
  %29 = inttoptr i32 %add10.i.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %and719.i.i11) #13, !srcloc !622
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and719.i.i11, ptr %22, align 4
  %call = tail call i32 @parport_pc_epp_read_data(ptr noundef %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags)
  %31 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_hi.i.i, align 4
  %add.i.i16 = add i32 %32, 2
  %and.i.i17 = and i32 %add.i.i16, 1048575
  %add2.i.i18 = or i32 %and.i.i17, -18874368
  %33 = inttoptr i32 %add2.i.i18 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_ecpepp_read_data, %if.then8.i.i22)) #13
          to label %frob_set_mode.exit28 [label %if.then8.i.i22], !srcloc !636

if.then8.i.i22:                                   ; preds = %frob_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i19 = zext i8 %34 to i32
  %and14.i.i20 = and i32 %phi.cast.i.i19, 31
  %xor.i1.i21 = or i32 %and14.i.i20, 32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 32, i32 noundef %phi.cast.i.i19, i32 noundef %xor.i1.i21) #13
  br label %frob_set_mode.exit28

frob_set_mode.exit28:                             ; preds = %if.then8.i.i22, %frob_set_mode.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i23 = and i8 %34, 31
  %conv26.i2.i24 = or i8 %and23.i.i23, 32
  %35 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_hi.i.i, align 4
  %add28.i.i25 = add i32 %36, 2
  %and29.i.i26 = and i32 %add28.i.i25, 1048575
  %add30.i.i27 = or i32 %and29.i.i26, -18874368
  %37 = inttoptr i32 %add30.i.i27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv26.i2.i24) #13, !srcloc !622
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_ecpepp_write_data(ptr nocapture noundef readonly %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_hi.i.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_hi.i.i, align 4
  %add.i.i = add i32 %1, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add2.i.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_ecpepp_write_data, %if.then8.i.i)) #13
          to label %frob_set_mode.exit [label %if.then8.i.i], !srcloc !636

if.then8.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i = zext i8 %3 to i32
  %and14.i.i = and i32 %phi.cast.i.i, 31
  %xor.i1.i = or i32 %and14.i.i, 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 128, i32 noundef %phi.cast.i.i, i32 noundef %xor.i1.i) #13
  br label %frob_set_mode.exit

frob_set_mode.exit:                               ; preds = %if.then8.i.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i = and i8 %3, 31
  %conv26.i2.i = or i8 %and23.i.i, -128
  %4 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_hi.i.i, align 4
  %add28.i.i = add i32 %5, 2
  %and29.i.i = and i32 %add28.i.i, 1048575
  %add30.i.i = or i32 %and29.i.i, -18874368
  %6 = inttoptr i32 %add30.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv26.i2.i) #13, !srcloc !622
  %physport.i.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 11
  %7 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.parport, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %and.i.i5 = and i8 %12, -16
  %xor.i10.i = or i8 %and.i.i5, 4
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %xor.i10.i, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 8
  %add.i.i6 = add i32 %16, 2
  %and9.i.i = and i32 %add.i.i6, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %17 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %and719.i.i) #13, !srcloc !622
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and719.i.i, ptr %10, align 4
  %19 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i8 = getelementptr inbounds %struct.parport, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %private_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i.i8, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %and.i.i9 = and i8 %24, -33
  %ctr_writable.i.i10 = getelementptr inbounds %struct.parport_pc_private, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %ctr_writable.i.i10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctr_writable.i.i10, align 1
  %and719.i.i11 = and i8 %and.i.i9, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 8
  %add.i.i12 = add i32 %28, 2
  %and9.i.i13 = and i32 %add.i.i12, 1048575
  %add10.i.i14 = or i32 %and9.i.i13, -18874368
  %29 = inttoptr i32 %add10.i.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %and719.i.i11) #13, !srcloc !622
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and719.i.i11, ptr %22, align 4
  %call = tail call i32 @parport_pc_epp_write_data(ptr noundef %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags)
  %31 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_hi.i.i, align 4
  %add.i.i16 = add i32 %32, 2
  %and.i.i17 = and i32 %add.i.i16, 1048575
  %add2.i.i18 = or i32 %and.i.i17, -18874368
  %33 = inttoptr i32 %add2.i.i18 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_ecpepp_write_data, %if.then8.i.i22)) #13
          to label %frob_set_mode.exit28 [label %if.then8.i.i22], !srcloc !636

if.then8.i.i22:                                   ; preds = %frob_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i19 = zext i8 %34 to i32
  %and14.i.i20 = and i32 %phi.cast.i.i19, 31
  %xor.i1.i21 = or i32 %and14.i.i20, 32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 32, i32 noundef %phi.cast.i.i19, i32 noundef %xor.i1.i21) #13
  br label %frob_set_mode.exit28

frob_set_mode.exit28:                             ; preds = %if.then8.i.i22, %frob_set_mode.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i23 = and i8 %34, 31
  %conv26.i2.i24 = or i8 %and23.i.i23, 32
  %35 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_hi.i.i, align 4
  %add28.i.i25 = add i32 %36, 2
  %and29.i.i26 = and i32 %add28.i.i25, 1048575
  %add30.i.i27 = or i32 %and29.i.i26, -18874368
  %37 = inttoptr i32 %add30.i.i27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv26.i2.i24) #13, !srcloc !622
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_ecpepp_read_addr(ptr nocapture noundef readonly %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_hi.i.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_hi.i.i, align 4
  %add.i.i = add i32 %1, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add2.i.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_ecpepp_read_addr, %if.then8.i.i)) #13
          to label %frob_set_mode.exit [label %if.then8.i.i], !srcloc !636

if.then8.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i = zext i8 %3 to i32
  %and14.i.i = and i32 %phi.cast.i.i, 31
  %xor.i1.i = or i32 %and14.i.i, 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 128, i32 noundef %phi.cast.i.i, i32 noundef %xor.i1.i) #13
  br label %frob_set_mode.exit

frob_set_mode.exit:                               ; preds = %if.then8.i.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i = and i8 %3, 31
  %conv26.i2.i = or i8 %and23.i.i, -128
  %4 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_hi.i.i, align 4
  %add28.i.i = add i32 %5, 2
  %and29.i.i = and i32 %add28.i.i, 1048575
  %add30.i.i = or i32 %and29.i.i, -18874368
  %6 = inttoptr i32 %add30.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv26.i2.i) #13, !srcloc !622
  %physport.i.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 11
  %7 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.parport, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %xor.i1.i5 = or i8 %12, 32
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %xor.i1.i5, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 8
  %add.i.i6 = add i32 %16, 2
  %and9.i.i = and i32 %add.i.i6, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %17 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %and719.i.i) #13, !srcloc !622
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and719.i.i, ptr %10, align 4
  %19 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i8 = getelementptr inbounds %struct.parport, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %private_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i.i8, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %and.i.i9 = and i8 %24, -16
  %xor.i10.i = or i8 %and.i.i9, 4
  %ctr_writable.i.i10 = getelementptr inbounds %struct.parport_pc_private, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %ctr_writable.i.i10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctr_writable.i.i10, align 1
  %and719.i.i11 = and i8 %xor.i10.i, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 8
  %add.i.i12 = add i32 %28, 2
  %and9.i.i13 = and i32 %add.i.i12, 1048575
  %add10.i.i14 = or i32 %and9.i.i13, -18874368
  %29 = inttoptr i32 %add10.i.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %and719.i.i11) #13, !srcloc !622
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and719.i.i11, ptr %22, align 4
  %call = tail call i32 @parport_pc_epp_read_addr(ptr noundef %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags)
  %31 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_hi.i.i, align 4
  %add.i.i16 = add i32 %32, 2
  %and.i.i17 = and i32 %add.i.i16, 1048575
  %add2.i.i18 = or i32 %and.i.i17, -18874368
  %33 = inttoptr i32 %add2.i.i18 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_ecpepp_read_addr, %if.then8.i.i22)) #13
          to label %frob_set_mode.exit28 [label %if.then8.i.i22], !srcloc !636

if.then8.i.i22:                                   ; preds = %frob_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i19 = zext i8 %34 to i32
  %and14.i.i20 = and i32 %phi.cast.i.i19, 31
  %xor.i1.i21 = or i32 %and14.i.i20, 32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 32, i32 noundef %phi.cast.i.i19, i32 noundef %xor.i1.i21) #13
  br label %frob_set_mode.exit28

frob_set_mode.exit28:                             ; preds = %if.then8.i.i22, %frob_set_mode.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i23 = and i8 %34, 31
  %conv26.i2.i24 = or i8 %and23.i.i23, 32
  %35 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_hi.i.i, align 4
  %add28.i.i25 = add i32 %36, 2
  %and29.i.i26 = and i32 %add28.i.i25, 1048575
  %add30.i.i27 = or i32 %and29.i.i26, -18874368
  %37 = inttoptr i32 %add30.i.i27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv26.i2.i24) #13, !srcloc !622
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_ecpepp_write_addr(ptr nocapture noundef readonly %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_hi.i.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_hi.i.i, align 4
  %add.i.i = add i32 %1, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add2.i.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_ecpepp_write_addr, %if.then8.i.i)) #13
          to label %frob_set_mode.exit [label %if.then8.i.i], !srcloc !636

if.then8.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i = zext i8 %3 to i32
  %and14.i.i = and i32 %phi.cast.i.i, 31
  %xor.i1.i = or i32 %and14.i.i, 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 128, i32 noundef %phi.cast.i.i, i32 noundef %xor.i1.i) #13
  br label %frob_set_mode.exit

frob_set_mode.exit:                               ; preds = %if.then8.i.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i = and i8 %3, 31
  %conv26.i2.i = or i8 %and23.i.i, -128
  %4 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_hi.i.i, align 4
  %add28.i.i = add i32 %5, 2
  %and29.i.i = and i32 %add28.i.i, 1048575
  %add30.i.i = or i32 %and29.i.i, -18874368
  %6 = inttoptr i32 %add30.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv26.i2.i) #13, !srcloc !622
  %physport.i.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 11
  %7 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.parport, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %and.i.i5 = and i8 %12, -16
  %xor.i10.i = or i8 %and.i.i5, 4
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %xor.i10.i, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 8
  %add.i.i6 = add i32 %16, 2
  %and9.i.i = and i32 %add.i.i6, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %17 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %and719.i.i) #13, !srcloc !622
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %and719.i.i, ptr %10, align 4
  %19 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i8 = getelementptr inbounds %struct.parport, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %private_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i.i8, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %and.i.i9 = and i8 %24, -33
  %ctr_writable.i.i10 = getelementptr inbounds %struct.parport_pc_private, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %ctr_writable.i.i10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctr_writable.i.i10, align 1
  %and719.i.i11 = and i8 %and.i.i9, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 8
  %add.i.i12 = add i32 %28, 2
  %and9.i.i13 = and i32 %add.i.i12, 1048575
  %add10.i.i14 = or i32 %and9.i.i13, -18874368
  %29 = inttoptr i32 %add10.i.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %and719.i.i11) #13, !srcloc !622
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and719.i.i11, ptr %22, align 4
  %call = tail call i32 @parport_pc_epp_write_addr(ptr noundef %port, ptr noundef %buf, i32 noundef %length, i32 noundef %flags)
  %31 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base_hi.i.i, align 4
  %add.i.i16 = add i32 %32, 2
  %and.i.i17 = and i32 %add.i.i16, 1048575
  %add2.i.i18 = or i32 %and.i.i17, -18874368
  %33 = inttoptr i32 %add2.i.i18 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_ecpepp_write_addr, %if.then8.i.i22)) #13
          to label %frob_set_mode.exit28 [label %if.then8.i.i22], !srcloc !636

if.then8.i.i22:                                   ; preds = %frob_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i19 = zext i8 %34 to i32
  %and14.i.i20 = and i32 %phi.cast.i.i19, 31
  %xor.i1.i21 = or i32 %and14.i.i20, 32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 32, i32 noundef %phi.cast.i.i19, i32 noundef %xor.i1.i21) #13
  br label %frob_set_mode.exit28

frob_set_mode.exit28:                             ; preds = %if.then8.i.i22, %frob_set_mode.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %and23.i.i23 = and i8 %34, 31
  %conv26.i2.i24 = or i8 %and23.i.i23, 32
  %35 = ptrtoint ptr %base_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base_hi.i.i, align 4
  %add28.i.i25 = add i32 %36, 2
  %and29.i.i26 = and i32 %add28.i.i25, 1048575
  %add30.i.i27 = or i32 %and29.i.i26, -18874368
  %37 = inttoptr i32 %add30.i.i27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv26.i2.i24) #13, !srcloc !622
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @programmable_irq_support(ptr nocapture noundef readonly %pb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_hi = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 1
  %0 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_hi, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !678
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@programmable_irq_support, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 224, i32 noundef 0, i32 noundef 224) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_hi, align 4
  %add28.i = add i32 %5, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %6 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -32) #13, !srcloc !622
  %7 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_hi, align 4
  %add5 = add i32 %8, 1
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !679
  %11 = lshr i8 %10, 3
  %12 = and i8 %11, 7
  %and11 = zext i8 %12 to i32
  %arrayidx = getelementptr [8 x i32], ptr @programmable_irq_support.lookup, i32 0, i32 %and11
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@programmable_irq_support, %if.then8.i15)) #13
          to label %frob_econtrol.exit20 [label %if.then8.i15], !srcloc !636

if.then8.i15:                                     ; preds = %frob_econtrol.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv10.i = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef %conv10.i, i32 noundef 0, i32 noundef %conv10.i) #13
  br label %frob_econtrol.exit20

frob_econtrol.exit20:                             ; preds = %if.then8.i15, %frob_econtrol.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_hi, align 4
  %add28.i17 = add i32 %16, 2
  %and29.i18 = and i32 %add28.i17, 1048575
  %add30.i19 = or i32 %and29.i18, -18874368
  %17 = inttoptr i32 %add30.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %3) #13, !srcloc !622
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irq_probe_ECP(ptr nocapture noundef %pb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @probe_irq_on() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq_probe_ECP, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %base_hi27.i = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 1
  %0 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_hi27.i, align 4
  %add28.i = add i32 %1, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %2 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #13, !srcloc !622
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq_probe_ECP, %if.then8.i26)) #13
          to label %frob_econtrol.exit31 [label %if.then8.i26], !srcloc !636

if.then8.i26:                                     ; preds = %frob_econtrol.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 196, i32 noundef 0, i32 noundef 196) #13
  br label %frob_econtrol.exit31

frob_econtrol.exit31:                             ; preds = %if.then8.i26, %frob_econtrol.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %3 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base_hi27.i, align 4
  %add28.i28 = add i32 %4, 2
  %and29.i29 = and i32 %add28.i28, 1048575
  %add30.i30 = or i32 %and29.i29, -18874368
  %5 = inttoptr i32 %add30.i30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -60) #13, !srcloc !622
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq_probe_ECP, %if.then8.i32)) #13
          to label %frob_econtrol.exit37 [label %if.then8.i32], !srcloc !636

if.then8.i32:                                     ; preds = %frob_econtrol.exit31
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 192, i32 noundef 0, i32 noundef 192) #13
  br label %frob_econtrol.exit37

frob_econtrol.exit37:                             ; preds = %if.then8.i32, %frob_econtrol.exit31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_hi27.i, align 4
  %add28.i34 = add i32 %7, 2
  %and29.i35 = and i32 %add28.i34, 1048575
  %add30.i36 = or i32 %and29.i35, -18874368
  %8 = inttoptr i32 %add30.i36 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -64) #13, !srcloc !622
  br label %land.rhs

land.rhs:                                         ; preds = %do.body.land.rhs_crit_edge, %frob_econtrol.exit37
  %i.044 = phi i32 [ 0, %frob_econtrol.exit37 ], [ %inc, %do.body.land.rhs_crit_edge ]
  %9 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_hi27.i, align 4
  %add = add i32 %10, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %11 = inttoptr i32 %add1 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !680
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %do.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body:                                          ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !681
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_hi27.i, align 4
  %and7 = and i32 %15, 1048575
  %add8 = or i32 %and7, -18874368
  %16 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 -86) #13, !srcloc !622
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %do.body.for.end_crit_edge, label %do.body.land.rhs_crit_edge

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %call10 = tail call i32 @probe_irq_off(i32 noundef %call) #13
  %irq = getelementptr inbounds %struct.parport, ptr %pb, i32 0, i32 5
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call10, ptr %irq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irq_probe_ECP, %if.then8.i38)) #13
          to label %frob_econtrol.exit43 [label %if.then8.i38], !srcloc !636

if.then8.i38:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %frob_econtrol.exit43

frob_econtrol.exit43:                             ; preds = %if.then8.i38, %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %base_hi27.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base_hi27.i, align 4
  %add28.i40 = add i32 %19, 2
  %and29.i41 = and i32 %add28.i40, 1048575
  %add30.i42 = or i32 %and29.i41, -18874368
  %20 = inttoptr i32 %add30.i42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 0) #13, !srcloc !622
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp12 = icmp slt i32 %22, 1
  br i1 %cmp12, label %if.then, label %frob_econtrol.exit43.if.end_crit_edge

frob_econtrol.exit43.if.end_crit_edge:            ; preds = %frob_econtrol.exit43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %frob_econtrol.exit43
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %frob_econtrol.exit43.if.end_crit_edge
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_off(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @programmable_dma_support(ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base_hi = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_hi, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !682
  %4 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_hi, align 4
  %add.i.i = add i32 %5, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add2.i.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@programmable_dma_support, %if.then8.i.i)) #13
          to label %frob_set_mode.exit [label %if.then8.i.i], !srcloc !636

if.then8.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i.i = zext i8 %7 to i32
  %xor.i1.i = or i32 %phi.cast.i.i, 224
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 224, i32 noundef 224, i32 noundef %phi.cast.i.i, i32 noundef %xor.i1.i) #13
  br label %frob_set_mode.exit

frob_set_mode.exit:                               ; preds = %if.then8.i.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %conv26.i2.i = or i8 %7, -32
  %8 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_hi, align 4
  %add28.i.i = add i32 %9, 2
  %and29.i.i = and i32 %add28.i.i, 1048575
  %add30.i.i = or i32 %and29.i.i, -18874368
  %10 = inttoptr i32 %add30.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv26.i2.i) #13, !srcloc !622
  %11 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base_hi, align 4
  %add5 = add i32 %12, 1
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %13 = inttoptr i32 %add7 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !683
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@programmable_dma_support, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %frob_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv10.i = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef %conv10.i, i32 noundef 0, i32 noundef %conv10.i) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %frob_set_mode.exit
  %15 = and i8 %14, 7
  %and11 = zext i8 %15 to i32
  %and12 = and i32 %and11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp = icmp eq i32 %and12, 0
  %spec.store.select = select i1 %cmp, i32 -1, i32 %and11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_hi, align 4
  %add28.i = add i32 %17, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %18 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %3) #13, !srcloc !622
  ret i32 %spec.store.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @change_mode(ptr nocapture noundef readonly %p, i32 noundef %m) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %physport = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport, align 8
  %private_data = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @change_mode.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_mode, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !636

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @change_mode.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.125, i32 noundef %m) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ecr = getelementptr inbounds %struct.parport_pc_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ecr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #16
  br label %cleanup92

if.end10:                                         ; preds = %do.end
  %base_hi = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_hi, align 4
  %add = add i32 %7, 2
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %8 = inttoptr i32 %add11 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !684
  %10 = lshr i8 %9, 5
  %11 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %m)
  %cmp = icmp eq i32 %11, %m
  br i1 %cmp, label %if.end10.cleanup92_crit_edge, label %if.end18

if.end10.cleanup92_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup92

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %9)
  %cmp19 = icmp ugt i8 %9, 63
  br i1 %cmp19, label %land.lhs.true, label %if.end18.if.end85_crit_edge

if.end18.if.end85_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end18
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %3, align 4
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.land.lhs.true76_crit_edge

land.lhs.true.land.lhs.true76_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true76

if.then24:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %physport, align 8
  %cad = getelementptr inbounds %struct.parport, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cad, align 8
  %timeout = getelementptr inbounds %struct.pardevice, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %timeout, align 4
  %22 = and i32 %11, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %switch = icmp eq i32 %22, 2
  br i1 %switch, label %if.then24.for.body_crit_edge, label %if.then24.land.lhs.true76_crit_edge

if.then24.land.lhs.true76_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true76

if.then24.for.body_crit_edge:                     ; preds = %if.then24
  br label %for.body

for.body:                                         ; preds = %if.end46.for.body_crit_edge, %if.then24.for.body_crit_edge
  %counter.0137 = phi i32 [ %inc, %if.end46.for.body_crit_edge ], [ 0, %if.then24.for.body_crit_edge ]
  %23 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_hi, align 4
  %add31 = add i32 %24, 2
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %25 = inttoptr i32 %add33 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !685
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool39.not = icmp eq i8 %27, 0
  br i1 %tobool39.not, label %if.end41, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end41:                                         ; preds = %for.body
  %28 = tail call i32 @llvm.read_register.i32(metadata !611) #13
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stack.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end41.for.end_crit_edge, !prof !686

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

signal_pending.exit:                              ; preds = %if.end41
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %and1.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool44.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool44.not, label %if.end46, label %signal_pending.exit.for.end_crit_edge

signal_pending.exit.for.end_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end46:                                         ; preds = %signal_pending.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 1073740) #13
  %inc = add nuw nsw i32 %counter.0137, 1
  %exitcond.not = icmp eq i32 %inc, 40
  br i1 %exitcond.not, label %if.end46.for.end_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end46.for.end_crit_edge, %signal_pending.exit.for.end_crit_edge, %if.end41.for.end_crit_edge, %for.body.for.end_crit_edge
  %40 = add i32 %21, %15
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit123.while.cond_crit_edge, %for.end
  %41 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_hi, align 4
  %add49 = add i32 %42, 2
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %43 = inttoptr i32 %add51 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !687
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool57.not = icmp eq i8 %45, 0
  br i1 %tobool57.not, label %while.body, label %while.cond.if.end73_crit_edge

while.cond.if.end73_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %46, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp60 = icmp sgt i32 %sub, -1
  br i1 %cmp60, label %while.body.cleanup92_crit_edge, label %if.end63

while.body.cleanup92_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup92

if.end63:                                         ; preds = %while.body
  %call65 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #13
  %47 = tail call i32 @llvm.read_register.i32(metadata !611) #13
  %and.i117 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i117 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task67, align 8
  %stack.i.i118 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %stack.i.i118 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stack.i.i118, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %55 = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i119 = icmp eq i32 %55, 0
  br i1 %tobool.not.i119, label %signal_pending.exit123, label %if.end63.if.end73_crit_edge, !prof !686

if.end63.if.end73_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

signal_pending.exit123:                           ; preds = %if.end63
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %52, align 4
  %and1.i.i.i.i.i120 = and i32 %57, 1
  %tobool69.not = icmp eq i32 %and1.i.i.i.i.i120, 0
  br i1 %tobool69.not, label %signal_pending.exit123.while.cond_crit_edge, label %signal_pending.exit123.if.end73_crit_edge

signal_pending.exit123.if.end73_crit_edge:        ; preds = %signal_pending.exit123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

signal_pending.exit123.while.cond_crit_edge:      ; preds = %signal_pending.exit123
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.end73:                                         ; preds = %signal_pending.exit123.if.end73_crit_edge, %if.end63.if.end73_crit_edge, %while.cond.if.end73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %m)
  %cmp77 = icmp sgt i32 %m, 1
  br i1 %cmp77, label %if.end73.if.then79_crit_edge, label %if.end73.if.end85_crit_edge

if.end73.if.end85_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.end73.if.then79_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then79

land.lhs.true76:                                  ; preds = %if.then24.land.lhs.true76_crit_edge, %land.lhs.true.land.lhs.true76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %m)
  %cmp77.old = icmp sgt i32 %m, 1
  br i1 %cmp77.old, label %land.lhs.true76.if.then79_crit_edge, label %land.lhs.true76.if.end85_crit_edge

land.lhs.true76.if.end85_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

land.lhs.true76.if.then79_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then79

if.then79:                                        ; preds = %land.lhs.true76.if.then79_crit_edge, %if.end73.if.then79_crit_edge
  %and81 = and i8 %9, 31
  %58 = or i8 %and81, 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_mode, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  %conv10.i = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef %conv10.i, i32 noundef 0, i32 noundef %conv10.i) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %if.then79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %59 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base_hi, align 4
  %add28.i = add i32 %60, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %61 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %58) #13, !srcloc !622
  br label %if.end85

if.end85:                                         ; preds = %frob_econtrol.exit, %land.lhs.true76.if.end85_crit_edge, %if.end73.if.end85_crit_edge, %if.end18.if.end85_crit_edge
  %oecr.0 = phi i8 [ %58, %frob_econtrol.exit ], [ %9, %land.lhs.true76.if.end85_crit_edge ], [ %9, %if.end73.if.end85_crit_edge ], [ %9, %if.end18.if.end85_crit_edge ]
  %62 = and i8 %oecr.0, 31
  %m.tr = trunc i32 %m to i8
  %63 = shl i8 %m.tr, 5
  %conv91 = or i8 %62, %63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@change_mode, %if.then8.i125)) #13
          to label %frob_econtrol.exit130 [label %if.then8.i125], !srcloc !636

if.then8.i125:                                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %conv10.i124 = zext i8 %conv91 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef %conv10.i124, i32 noundef 0, i32 noundef %conv10.i124) #13
  br label %frob_econtrol.exit130

frob_econtrol.exit130:                            ; preds = %if.then8.i125, %if.end85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %64 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base_hi, align 4
  %add28.i127 = add i32 %65, 2
  %and29.i128 = and i32 %add28.i127, 1048575
  %add30.i129 = or i32 %and29.i128, -18874368
  %66 = inttoptr i32 %add30.i129 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %conv91) #13, !srcloc !622
  br label %cleanup92

cleanup92:                                        ; preds = %frob_econtrol.exit130, %while.body.cleanup92_crit_edge, %if.end10.cleanup92_crit_edge, %do.end7
  %retval.1 = phi i32 [ 0, %frob_econtrol.exit130 ], [ 0, %do.end7 ], [ 0, %if.end10.cleanup92_crit_edge ], [ -16, %while.body.cleanup92_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_wait_peripheral(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parport_pc_fifo_write_block_pio(ptr nocapture noundef readonly %port, ptr noundef %buf, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %physport = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 11
  %1 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %physport, align 8
  %cad = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cad, align 8
  %timeout = getelementptr inbounds %struct.pardevice, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %timeout, align 4
  %add = add i32 %6, %0
  %base_hi = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 1
  %7 = ptrtoint ptr %base_hi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base_hi, align 4
  %private_data = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 25
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 8
  %fifo_depth3 = getelementptr inbounds %struct.parport_pc_private, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %fifo_depth3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fifo_depth3, align 4
  %physport.i.i = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 11
  %13 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i = getelementptr inbounds %struct.parport, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data.i.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %and.i.i147 = and i8 %18, -17
  %ctr_writable.i.i = getelementptr inbounds %struct.parport_pc_private, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %ctr_writable.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctr_writable.i.i, align 1
  %and719.i.i = and i8 %and.i.i147, %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %2, align 8
  %add.i.i = add i32 %22, 2
  %and9.i.i = and i32 %add.i.i, 1048575
  %add10.i.i = or i32 %and9.i.i, -18874368
  %23 = inttoptr i32 %add10.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %and719.i.i) #13, !srcloc !622
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %and719.i.i, ptr %16, align 4
  %base_hi.i = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 1
  %25 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base_hi.i, align 4
  %add.i = add i32 %26, 2
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %27 = inttoptr i32 %add2.i to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_fifo_write_block_pio, %if.then8.i)) #13
          to label %frob_econtrol.exit [label %if.then8.i], !srcloc !636

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast.i = zext i8 %28 to i32
  %xor.i176 = or i32 %phi.cast.i, 20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 20, i32 noundef 20, i32 noundef %phi.cast.i, i32 noundef %xor.i176) #13
  br label %frob_econtrol.exit

frob_econtrol.exit:                               ; preds = %if.then8.i, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %conv26.i177 = or i8 %28, 20
  %29 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base_hi.i, align 4
  %add28.i = add i32 %30, 2
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %31 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv26.i177) #13, !srcloc !622
  %32 = ptrtoint ptr %physport.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %physport.i.i, align 8
  %private_data.i.i149 = getelementptr inbounds %struct.parport, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %private_data.i.i149 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private_data.i.i149, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4
  %and.i.i150 = and i8 %37, -33
  %ctr_writable.i.i151 = getelementptr inbounds %struct.parport_pc_private, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %ctr_writable.i.i151 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ctr_writable.i.i151, align 1
  %and719.i.i152 = and i8 %and.i.i150, %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  tail call void @arm_heavy_mb() #13
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %2, align 8
  %add.i.i153 = add i32 %41, 2
  %and9.i.i154 = and i32 %add.i.i153, 1048575
  %add10.i.i155 = or i32 %and9.i.i154, -18874368
  %42 = inttoptr i32 %add10.i.i155 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %and719.i.i152) #13, !srcloc !622
  %43 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %and719.i.i152, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not199 = icmp eq i32 %length, 0
  br i1 %tobool.not199, label %frob_econtrol.exit.while.end_crit_edge, label %while.body.lr.ph

frob_econtrol.exit.while.end_crit_edge:           ; preds = %frob_econtrol.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %frob_econtrol.exit
  %waithead = getelementptr inbounds %struct.parport, ptr %2, i32 0, i32 16
  %and72 = and i32 %8, 1048575
  %add73 = or i32 %and72, -18874368
  %44 = inttoptr i32 %add73 to ptr
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %bufp.0203 = phi ptr [ %buf, %while.body.lr.ph ], [ %bufp.1, %cleanup.while.body_crit_edge ]
  %left.0202 = phi i32 [ %length, %while.body.lr.ph ], [ %left.1, %cleanup.while.body_crit_edge ]
  %expire.0201 = phi i32 [ %add, %while.body.lr.ph ], [ %expire.1, %cleanup.while.body_crit_edge ]
  %poll_for.0200 = phi i32 [ 8, %while.body.lr.ph ], [ %poll_for.2, %cleanup.while.body_crit_edge ]
  %45 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base_hi.i, align 4
  %add6 = add i32 %46, 2
  %and = and i32 %add6, 1048575
  %add7 = or i32 %and, -18874368
  %47 = inttoptr i32 %add7 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !688
  %49 = tail call i32 @llvm.read_register.i32(metadata !611) #13
  %and.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 16384
  %53 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not = icmp eq i32 %53, 0
  br i1 %tobool.i.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %54, %expire.0201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @schedule() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %55 = ptrtoint ptr %waithead to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %waithead, align 4
  %tobool10.not = icmp eq ptr %56, null
  br i1 %tobool10.not, label %if.end14, label %if.end.while.end.sink.split_crit_edge

if.end.while.end.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

if.end14:                                         ; preds = %if.end
  %57 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool16.not = icmp eq i8 %57, 0
  br i1 %tobool16.not, label %if.end57, label %if.then17

if.then17:                                        ; preds = %if.end14
  %and19 = and i8 %48, -5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frob_econtrol.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_pc_fifo_write_block_pio, %if.then8.i158)) #13
          to label %frob_econtrol.exit165 [label %if.then8.i158], !srcloc !636

if.then8.i158:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %conv10.i = zext i8 %and19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frob_econtrol.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.149, i32 noundef 255, i32 noundef %conv10.i, i32 noundef 0, i32 noundef %conv10.i) #13
  br label %frob_econtrol.exit165

frob_econtrol.exit165:                            ; preds = %if.then8.i158, %if.then17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  tail call void @arm_heavy_mb() #13
  %58 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_hi.i, align 4
  %add28.i162 = add i32 %59, 2
  %and29.i163 = and i32 %add28.i162, 1048575
  %add30.i164 = or i32 %and29.i163, -18874368
  %60 = inttoptr i32 %add30.i164 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %and19) #13, !srcloc !622
  %call21187 = tail call i32 @parport_wait_event(ptr noundef %2, i32 noundef 100) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21187)
  %cmp22188 = icmp slt i32 %call21187, 0
  br i1 %cmp22188, label %frob_econtrol.exit165.while.end_crit_edge, label %frob_econtrol.exit165.if.end25_crit_edge

frob_econtrol.exit165.if.end25_crit_edge:         ; preds = %frob_econtrol.exit165
  br label %if.end25

frob_econtrol.exit165.while.end_crit_edge:        ; preds = %frob_econtrol.exit165
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end25:                                         ; preds = %if.end55.if.end25_crit_edge, %frob_econtrol.exit165.if.end25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub26 = sub i32 %61, %expire.0201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26)
  %cmp27 = icmp slt i32 %sub26, 0
  br i1 %cmp27, label %if.end35, label %if.end25.while.end.sink.split_crit_edge

if.end25.while.end.sink.split_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.sink.split

if.end35:                                         ; preds = %if.end25
  %62 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base_hi.i, align 4
  %add38 = add i32 %63, 2
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %64 = inttoptr i32 %add40 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !689
  %66 = and i8 %65, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool46.not = icmp eq i8 %66, 0
  br i1 %tobool46.not, label %if.then47, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then47:                                        ; preds = %if.end35
  %67 = tail call i32 @llvm.read_register.i32(metadata !611) #13
  %and.i.i145 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i145 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 16384
  %71 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i146.not = icmp eq i32 %71, 0
  br i1 %tobool.i146.not, label %if.then47.if.end55_crit_edge, label %land.lhs.true50

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

land.lhs.true50:                                  ; preds = %if.then47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %sub51 = sub i32 %72, %expire.0201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub51)
  %cmp52 = icmp slt i32 %sub51, 0
  br i1 %cmp52, label %if.then54, label %land.lhs.true50.if.end55_crit_edge

land.lhs.true50.if.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then54:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @schedule() #13
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %land.lhs.true50.if.end55_crit_edge, %if.then47.if.end55_crit_edge
  %call21 = tail call i32 @parport_wait_event(ptr noundef %2, i32 noundef 100) #13
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end55.while.end_crit_edge, label %if.end55.if.end25_crit_edge

if.end55.if.end25_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end57:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %74 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cad, align 8
  %timeout59 = getelementptr inbounds %struct.pardevice, ptr %75, i32 0, i32 16
  %76 = ptrtoint ptr %timeout59 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %timeout59, align 4
  %add60 = add i32 %77, %73
  %78 = tail call i32 @llvm.read_register.i32(metadata !611) #13
  %and.i166190 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i166190 to ptr
  %task191 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task191 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task191, align 8
  %stack.i.i192 = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %stack.i.i192 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %stack.i.i192, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %83, align 4
  %86 = and i32 %85, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i193 = icmp eq i32 %86, 0
  br i1 %tobool.not.i193, label %signal_pending.exit.preheader, label %if.end57.while.end_crit_edge, !prof !686

if.end57.while.end_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

signal_pending.exit.preheader:                    ; preds = %if.end57
  %smax = call i32 @llvm.smax.i32(i32 %poll_for.0200, i32 0)
  br label %signal_pending.exit

signal_pending.exit:                              ; preds = %if.then83.signal_pending.exit_crit_edge, %signal_pending.exit.preheader
  %87 = phi ptr [ %102, %if.then83.signal_pending.exit_crit_edge ], [ %83, %signal_pending.exit.preheader ]
  %i.0195 = phi i32 [ %inc, %if.then83.signal_pending.exit_crit_edge ], [ 0, %signal_pending.exit.preheader ]
  %ecrval.0194 = phi i8 [ %96, %if.then83.signal_pending.exit_crit_edge ], [ %48, %signal_pending.exit.preheader ]
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  %and1.i.i.i.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool63.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool63.not, label %if.end65, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end65:                                         ; preds = %signal_pending.exit
  %90 = and i8 %ecrval.0194, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool68.not = icmp eq i8 %90, 0
  br i1 %tobool68.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %91 = tail call i32 @llvm.umin.i32(i32 %left.0202, i32 %12)
  tail call void @__raw_writesb(ptr noundef nonnull %44, ptr noundef %bufp.0203, i32 noundef %91) #13
  %add.ptr = getelementptr i8, ptr %bufp.0203, i32 %91
  %sub75 = sub i32 %left.0202, %91
  %sub76 = add i32 %poll_for.0200, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0195, i32 %sub76)
  %cmp77 = icmp slt i32 %i.0195, %sub76
  %dec = sext i1 %cmp77 to i32
  %poll_for.1 = add i32 %poll_for.0200, %dec
  br label %cleanup

if.else:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0195, i32 %smax)
  %exitcond.not = icmp eq i32 %i.0195, %smax
  br i1 %exitcond.not, label %if.end93, label %if.then83

if.then83:                                        ; preds = %if.else
  %inc = add nuw i32 %i.0195, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 2147480) #13
  %93 = ptrtoint ptr %base_hi.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %base_hi.i, align 4
  %add86 = add i32 %94, 2
  %and87 = and i32 %add86, 1048575
  %add88 = or i32 %and87, -18874368
  %95 = inttoptr i32 %add88 to ptr
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %95) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !690
  %97 = tail call i32 @llvm.read_register.i32(metadata !611) #13
  %and.i166 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i166 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %stack.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %102, align 4
  %105 = and i32 %104, 256
  %tobool.not.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i, label %if.then83.signal_pending.exit_crit_edge, label %if.then83.while.end_crit_edge, !prof !686

if.then83.while.end_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then83.signal_pending.exit_crit_edge:          ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #15
  br label %signal_pending.exit

if.end93:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr = getelementptr i8, ptr %bufp.0203, i32 1
  %106 = ptrtoint ptr %bufp.0203 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bufp.0203, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !691
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %107) #13, !srcloc !622
  %dec100 = add i32 %left.0202, -1
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then69, %if.end35.cleanup_crit_edge
  %poll_for.2 = phi i32 [ %poll_for.1, %if.then69 ], [ %poll_for.0200, %if.end93 ], [ %poll_for.0200, %if.end35.cleanup_crit_edge ]
  %expire.1 = phi i32 [ %add60, %if.then69 ], [ %add60, %if.end93 ], [ %expire.0201, %if.end35.cleanup_crit_edge ]
  %left.1 = phi i32 [ %sub75, %if.then69 ], [ %dec100, %if.end93 ], [ %left.0202, %if.end35.cleanup_crit_edge ]
  %bufp.1 = phi ptr [ %add.ptr, %if.then69 ], [ %incdec.ptr, %if.end93 ], [ %bufp.0203, %if.end35.cleanup_crit_edge ]
  %tobool.not = icmp eq i32 %left.1, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end.sink.split:                             ; preds = %if.end25.while.end.sink.split_crit_edge, %if.end.while.end.sink.split_crit_edge
  %.str.130.sink = phi ptr [ @.str.130, %if.end25.while.end.sink.split_crit_edge ], [ @.str.127, %if.end.while.end.sink.split_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.130.sink) #16
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %cleanup.while.end_crit_edge, %if.then83.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %if.end57.while.end_crit_edge, %if.end55.while.end_crit_edge, %frob_econtrol.exit165.while.end_crit_edge, %frob_econtrol.exit.while.end_crit_edge
  %left.0186 = phi i32 [ 0, %frob_econtrol.exit.while.end_crit_edge ], [ %left.0202, %while.end.sink.split ], [ %left.0202, %if.then83.while.end_crit_edge ], [ %left.0202, %signal_pending.exit.while.end_crit_edge ], [ %left.0202, %if.end55.while.end_crit_edge ], [ %left.0202, %if.end57.while.end_crit_edge ], [ %left.0202, %frob_econtrol.exit165.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  %sub103 = sub i32 %length, %left.0186
  ret i32 %sub103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_wait_event(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parport_parse_param(ptr noundef %s, ptr nocapture noundef writeonly %val, i32 noundef %nofifo) unnamed_addr #5 section ".init.text" align 64 {
entry:
  %ep = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @strncmp(ptr noundef nonnull %s, ptr noundef nonnull dereferenceable(5) @.str.151, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -2, ptr %val, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @strncmp(ptr noundef nonnull %s, ptr noundef nonnull dereferenceable(5) @.str.157, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nofifo)
  %tobool7.not = icmp eq i32 %nofifo, 0
  br i1 %tobool7.not, label %if.else6.if.else11_crit_edge, label %land.lhs.true

if.else6.if.else11_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else11

land.lhs.true:                                    ; preds = %if.else6
  %call8 = tail call i32 @strncmp(ptr noundef nonnull %s, ptr noundef nonnull dereferenceable(7) @.str.158, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.else11_crit_edge

land.lhs.true.if.else11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else11

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %nofifo, ptr %val, align 4
  br label %return

if.else11:                                        ; preds = %land.lhs.true.if.else11_crit_edge, %if.else6.if.else11_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ep) #13
  %3 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %ep, align 4, !annotation !657
  %call12 = call i32 @simple_strtoul(ptr noundef nonnull %s, ptr noundef nonnull %ep, i32 noundef 0) #13
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %cmp.not = icmp eq ptr %5, %s
  br i1 %cmp.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call12, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #13
  br label %return

cleanup:                                          ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull %s) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ep) #13
  br label %return

return:                                           ; preds = %cleanup, %cleanup.thread, %if.then10, %if.then5, %if.then2, %entry.return_crit_edge
  %retval.1 = phi i32 [ -1, %cleanup ], [ 0, %entry.return_crit_edge ], [ 0, %cleanup.thread ], [ 0, %if.then5 ], [ 0, %if.then10 ], [ 0, %if.then2 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_pc_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %1, -3
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 12) #17
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %arrayidx = getelementptr [34 x %struct.parport_pc_pci], ptr @cards, i32 0, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp15121 = icmp sgt i32 %4, 0
  br i1 %cmp15121, label %for.body.lr.ph, label %for.end.thread

for.end.thread:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i, align 8
  br label %if.end66

for.body.lr.ph:                                   ; preds = %if.end6
  %irq35 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %device45 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %if.end47.for.body_crit_edge, %for.body.lr.ph
  %count.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select120, %if.end47.for.body_crit_edge ]
  %n.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc56, %if.end47.for.body_crit_edge ]
  %arrayidx17 = getelementptr [34 x %struct.parport_pc_pci], ptr @cards, i32 0, i32 %sub, i32 1, i32 %n.0122
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx17, align 4
  %hi22 = getelementptr [34 x %struct.parport_pc_pci], ptr @cards, i32 0, i32 %sub, i32 1, i32 %n.0122, i32 1
  %8 = ptrtoint ptr %hi22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hi22, align 4
  %arrayidx23 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %7
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %12 = icmp ult i32 %9, 7
  br i1 %12, label %if.then27, label %if.else

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx29 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 %9
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx29, align 8
  br label %if.end34

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %cmp31 = icmp sgt i32 %9, 6
  %add = select i1 %cmp31, i32 %9, i32 0
  %spec.select = add i32 %add, %11
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27
  %io_lo.0 = phi i32 [ %11, %if.then27 ], [ %spec.select, %if.else ]
  %io_hi.0 = phi i32 [ %14, %if.then27 ], [ 0, %if.else ]
  %15 = ptrtoint ptr %irq35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp36 = icmp eq i32 %16, 0
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %19 = ptrtoint ptr %device45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %device45, align 4
  br i1 %cmp36, label %do.end, label %do.end42

do.end:                                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, i32 noundef %18, i32 noundef %20, i32 noundef %io_lo.0, i32 noundef %io_hi.0) #16
  br label %if.end47

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %18, i32 noundef %20, i32 noundef %io_lo.0, i32 noundef %io_hi.0, i32 noundef %16) #16
  br label %if.end47

if.end47:                                         ; preds = %do.end42, %do.end
  %irq.0 = phi i32 [ -1, %do.end ], [ %16, %do.end42 ]
  %call49 = tail call ptr @parport_pc_probe_port(i32 noundef %io_lo.0, i32 noundef %io_hi.0, i32 noundef %irq.0, i32 noundef -1, ptr noundef %dev48, i32 noundef 128)
  %arrayidx50 = getelementptr %struct.pci_parport_data, ptr %call7.i, i32 0, i32 1, i32 %count.0123
  %21 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call49, ptr %arrayidx50, align 4
  %tobool53.not = icmp ne ptr %call49, null
  %inc = zext i1 %tobool53.not to i32
  %spec.select120 = add i32 %count.0123, %inc
  %inc56 = add nuw nsw i32 %n.0122, 1
  %exitcond.not = icmp eq i32 %inc56, %4
  br i1 %exitcond.not, label %for.end, label %if.end47.for.body_crit_edge

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end47
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select120, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select120)
  %tobool64.not = icmp eq i32 %spec.select120, 0
  br i1 %tobool64.not, label %for.end.if.end66_crit_edge, label %if.then65

for.end.if.end66_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then65:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i, ptr %driver_data.i.i, align 4
  br label %cleanup

if.end66:                                         ; preds = %for.end.if.end66_crit_edge, %for.end.thread
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then65, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then65 ], [ -19, %if.end66 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_pc_pci_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %i.06 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.06)
  %cmp7 = icmp sgt i32 %i.06, -1
  br i1 %cmp7, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.08 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.06, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pci_parport_data, ptr %1, i32 0, i32 1, i32 %i.08
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @parport_pc_unregister_port(ptr noundef %5)
  %i.0 = add nsw i32 %i.08, -1
  %cmp = icmp sgt i32 %i.08, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @parport_pc_platform_probe(ptr nocapture noundef readnone %pdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @parport_pc_find_ports(i32 noundef %autoirq, i32 noundef %autodma) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 46, i32 noundef 2, ptr noundef nonnull @.str.174, i32 noundef 4194304) #13
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %entry.detect_and_report_it87.exit_crit_edge, label %if.end4.i

entry.detect_and_report_it87.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %detect_and_report_it87.exit

if.end4.i:                                        ; preds = %entry
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !692
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !693
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 -121) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !694
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 1) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !695
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 85) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !696
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 85) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !697
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 32) #13, !srcloc !622
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !698
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !699
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 33) #13, !srcloc !622
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !700
  %conv41.i = zext i8 %2 to i32
  %or.i = or i32 %shl.i, %conv41.i
  %trunc.i = trunc i32 %or.i to i16
  %3 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.336)
  switch i16 %trunc.i, label %do.body107.i [
    i16 -30958, label %if.end4.i.do.end68.i_crit_edge
    i16 -30971, label %if.end4.i.do.end68.i_crit_edge14
    i16 -30955, label %if.end4.i.do.end68.i_crit_edge15
    i16 -30954, label %if.end4.i.do.end68.i_crit_edge16
    i16 -30952, label %if.end4.i.do.end68.i_crit_edge17
    i16 -30938, label %if.end4.i.do.end68.i_crit_edge18
  ]

if.end4.i.do.end68.i_crit_edge18:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68.i

if.end4.i.do.end68.i_crit_edge17:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68.i

if.end4.i.do.end68.i_crit_edge16:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68.i

if.end4.i.do.end68.i_crit_edge15:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68.i

if.end4.i.do.end68.i_crit_edge14:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68.i

if.end4.i.do.end68.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end68.i

do.end68.i:                                       ; preds = %if.end4.i.do.end68.i_crit_edge, %if.end4.i.do.end68.i_crit_edge14, %if.end4.i.do.end68.i_crit_edge15, %if.end4.i.do.end68.i_crit_edge16, %if.end4.i.do.end68.i_crit_edge17, %if.end4.i.do.end68.i_crit_edge18
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, i32 noundef %or.i) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !701
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 7) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !702
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr), i8 3) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !703
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 -16) #13, !srcloc !622
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !705
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 -16) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !706
  tail call void @arm_heavy_mb() #13
  %5 = or i8 %4, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr), i8 %5) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !707
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 2) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !708
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874321 to ptr), i8 2) #13, !srcloc !622
  br label %if.end111.i

do.body107.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !709
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874322 to ptr), i8 %0) #13, !srcloc !622
  br label %if.end111.i

if.end111.i:                                      ; preds = %do.body107.i, %do.end68.i
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 46, i32 noundef 2) #13
  br label %detect_and_report_it87.exit

detect_and_report_it87.exit:                      ; preds = %if.end111.i, %entry.detect_and_report_it87.exit_crit_edge
  tail call fastcc void @winbond_check(i32 noundef 1008, i32 noundef 135) #13
  tail call fastcc void @winbond_check(i32 noundef 880, i32 noundef 135) #13
  tail call fastcc void @winbond_check(i32 noundef 46, i32 noundef 135) #13
  tail call fastcc void @winbond_check(i32 noundef 78, i32 noundef 135) #13
  tail call fastcc void @winbond_check(i32 noundef 1008, i32 noundef 134) #13
  tail call fastcc void @winbond_check2(i32 noundef 136) #13
  tail call fastcc void @winbond_check2(i32 noundef 137) #13
  tail call fastcc void @smsc_check(i32 noundef 1008, i32 noundef 85) #13
  tail call fastcc void @smsc_check(i32 noundef 880, i32 noundef 85) #13
  tail call fastcc void @smsc_check(i32 noundef 1008, i32 noundef 68) #13
  tail call fastcc void @smsc_check(i32 noundef 880, i32 noundef 68) #13
  %call = tail call fastcc i32 @parport_pc_init_superio(i32 noundef %autoirq, i32 noundef %autodma) #19
  %call6 = tail call i32 @__pci_register_driver(ptr noundef nonnull @parport_pc_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %detect_and_report_it87.exit.if.end9_crit_edge

detect_and_report_it87.exit.if.end9_crit_edge:    ; preds = %detect_and_report_it87.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %detect_and_report_it87.exit
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @pci_registered_parport, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %detect_and_report_it87.exit.if.end9_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parport_pc_init_superio(i32 noundef %autoirq, i32 noundef %autodma) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call1722 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #13
  %cmp.not1823 = icmp eq ptr %call1722, null
  br i1 %cmp.not1823, label %entry.while.end_crit_edge, label %entry.while.body.lr.ph_crit_edge

entry.while.body.lr.ph_crit_edge:                 ; preds = %entry
  br label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end.while.body.lr.ph_crit_edge, %entry.while.body.lr.ph_crit_edge
  %call1725 = phi ptr [ %call17, %if.end.while.body.lr.ph_crit_edge ], [ %call1722, %entry.while.body.lr.ph_crit_edge ]
  %ret.0.ph24 = phi i32 [ %spec.select, %if.end.while.body.lr.ph_crit_edge ], [ 0, %entry.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then.while.body_crit_edge, %while.body.lr.ph
  %call19 = phi ptr [ %call1725, %while.body.lr.ph ], [ %call, %if.then.while.body_crit_edge ]
  %call1 = tail call ptr @pci_match_id(ptr noundef nonnull @parport_pc_pci_tbl, ptr noundef nonnull %call19) #13
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %while.body.if.then_crit_edge, label %lor.lhs.false

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %call1, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp3 = icmp ugt i32 %1, 2
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %while.body.if.then_crit_edge
  %call = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call19) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr [3 x %struct.parport_pc_superio], ptr @parport_pc_superio_info, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %via = getelementptr [3 x %struct.parport_pc_superio], ptr @parport_pc_superio_info, i32 0, i32 %1, i32 1
  %4 = ptrtoint ptr %via to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %via, align 4
  %call7 = tail call i32 %3(ptr noundef nonnull %call19, i32 noundef %autoirq, i32 noundef %autodma, ptr noundef %5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp ne i32 %call7, 0
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %ret.0.ph24, %inc
  %call17 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %call19) #13
  %cmp.not18 = icmp eq ptr %call17, null
  br i1 %cmp.not18, label %if.end.while.end_crit_edge, label %if.end.while.body.lr.ph_crit_edge

if.end.while.body.lr.ph_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.0.ph.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %ret.0.ph24, %if.then.while.end_crit_edge ], [ %spec.select, %if.end.while.end_crit_edge ]
  ret i32 %ret.0.ph.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @winbond_check(i32 noundef %io, i32 noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %io, i32 noundef 3, ptr noundef nonnull @__func__.winbond_check, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %io, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !710
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !711
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 32) #13, !srcloc !622
  %add7 = add i32 %io, 1
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %2 = inttoptr i32 %add9 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !713
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 33) #13, !srcloc !622
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !714
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !715
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 9) #13, !srcloc !622
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !716
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !717
  tail call void @arm_heavy_mb() #13
  %conv45 = trunc i32 %key to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv45) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !718
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv45) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !719
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 32) #13, !srcloc !622
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !720
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !721
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 33) #13, !srcloc !622
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !722
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !723
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 9) #13, !srcloc !622
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !724
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !725
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !726
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %1) #13, !srcloc !622
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %6)
  %cmp = icmp eq i8 %3, %6
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %7)
  %cmp112 = icmp eq i8 %4, %7
  %or.cond = select i1 %cmp, i1 %cmp112, i1 false
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %8)
  %cmp115 = icmp eq i8 %5, %8
  %or.cond149 = select i1 %or.cond, i1 %cmp115, i1 false
  br i1 %or.cond149, label %if.end.out_crit_edge, label %if.end118

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end118:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv97 = zext i8 %8 to i32
  %conv83 = zext i8 %7 to i32
  %conv69 = zext i8 %6 to i32
  tail call fastcc void @decode_winbond(i32 noundef %io, i32 noundef %key, i32 noundef %conv69, i32 noundef %conv83, i32 noundef %conv97)
  br label %out

out:                                              ; preds = %if.end118, %if.end.out_crit_edge
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %io, i32 noundef 3) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @winbond_check2(i32 noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 592, i32 noundef 3, ptr noundef nonnull @__func__.winbond_check2, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873776 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !727
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873775 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !728
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873774 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !730
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873774 to ptr), i8 32) #13, !srcloc !622
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873774 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !731
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !732
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873775 to ptr), i8 33) #13, !srcloc !622
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873774 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !733
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !734
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873775 to ptr), i8 9) #13, !srcloc !622
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873774 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !735
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !736
  tail call void @arm_heavy_mb() #13
  %conv66 = trunc i32 %key to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873776 to ptr), i8 %conv66) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !737
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873774 to ptr), i8 32) #13, !srcloc !622
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873774 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !738
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !739
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873775 to ptr), i8 33) #13, !srcloc !622
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873774 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !740
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !741
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873775 to ptr), i8 9) #13, !srcloc !622
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873774 to ptr)) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !742
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !743
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873776 to ptr), i8 -86) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !744
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873776 to ptr), i8 %0) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !745
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873775 to ptr), i8 %1) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !746
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873774 to ptr), i8 %2) #13, !srcloc !622
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %6)
  %cmp = icmp eq i8 %3, %6
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %7)
  %cmp148 = icmp eq i8 %4, %7
  %or.cond = select i1 %cmp, i1 %cmp148, i1 false
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %8)
  %cmp151 = icmp eq i8 %5, %8
  %or.cond1 = select i1 %or.cond, i1 %cmp151, i1 false
  br i1 %or.cond1, label %if.end.out_crit_edge, label %if.end154

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end154:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv114 = zext i8 %8 to i32
  %conv99 = zext i8 %7 to i32
  %conv84 = zext i8 %6 to i32
  tail call fastcc void @decode_winbond(i32 noundef 592, i32 noundef %key, i32 noundef %conv84, i32 noundef %conv99, i32 noundef %conv114)
  br label %out

out:                                              ; preds = %if.end154, %if.end.out_crit_edge
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 592, i32 noundef 3) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @decode_winbond(i32 noundef %efer, i32 noundef %key, i32 noundef %devid, i32 noundef %devrev, i32 noundef %oldid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %devid, i32 %devrev)
  %cmp = icmp eq i32 %devid, %devrev
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %devid, 8
  %or = or i32 %shl, %devrev
  %0 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.337)
  switch i32 %or, label %if.else8 [
    i32 38769, label %if.end.if.then54_crit_edge
    i32 38771, label %if.end.if.then54_crit_edge75
    i32 38772, label %if.end.if.then54_crit_edge76
  ]

if.end.if.then54_crit_edge76:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then54

if.end.if.then54_crit_edge75:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then54

if.end.if.then54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then54

if.else8:                                         ; preds = %if.end
  %and = and i32 %or, -16
  %1 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.338)
  switch i32 %and, label %if.else8.cleanup_crit_edge [
    i32 21104, label %if.else8.if.then54_crit_edge
    i32 21232, label %if.else8.if.then54_crit_edge77
    i32 21008, label %if.else8.if.then54_crit_edge78
    i32 24592, label %if.else8.if.then54_crit_edge79
  ]

if.else8.if.then54_crit_edge79:                   ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then54

if.else8.if.then54_crit_edge78:                   ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then54

if.else8.if.then54_crit_edge77:                   ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then54

if.else8.if.then54_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then54

if.else8.cleanup_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then54:                                        ; preds = %if.else8.if.then54_crit_edge, %if.else8.if.then54_crit_edge77, %if.else8.if.then54_crit_edge78, %if.else8.if.then54_crit_edge79, %if.end.if.then54_crit_edge, %if.end.if.then54_crit_edge75, %if.end.if.then54_crit_edge76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !747
  tail call void @arm_heavy_mb() #13
  %conv.i = trunc i32 %key to i8
  %and.i = and i32 %efer, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv.i) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !748
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv.i) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !749
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 7) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !750
  tail call void @arm_heavy_mb() #13
  %add17.i = add i32 %efer, 1
  %and18.i = and i32 %add17.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %3 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 1) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !751
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 48) #13, !srcloc !622
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !753
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 96) #13, !srcloc !622
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !754
  %conv46.i = zext i8 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !755
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 97) #13, !srcloc !622
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !756
  %conv60.i = zext i8 %6 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !757
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 112) #13, !srcloc !622
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !758
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !759
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 116) #13, !srcloc !622
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !761
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -16) #13, !srcloc !622
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !762
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !763
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -86) #13, !srcloc !622
  %10 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool152.not.i = icmp eq i8 %10, 0
  br i1 %tobool152.not.i, label %if.then54.cleanup_crit_edge, label %if.then153.i

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then153.i:                                     ; preds = %if.then54
  %11 = load i32, ptr @superios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i.i = icmp eq i32 %11, 0
  br i1 %cmp1.i.i, label %if.then153.i.if.else163.i_crit_edge, label %for.cond.i.i

if.then153.i.if.else163.i_crit_edge:              ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else163.i

for.cond.i.i:                                     ; preds = %if.then153.i
  %12 = load i32, ptr getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.1.i.i = icmp eq i32 %12, 0
  br i1 %cmp1.1.i.i, label %for.cond.i.i.if.else163.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.else163.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else163.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %13 = load i32, ptr getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.2.i.i = icmp eq i32 %13, 0
  br i1 %cmp1.2.i.i, label %for.cond.1.i.i.if.else163.i_crit_edge, label %do.end160.i

for.cond.1.i.i.if.else163.i_crit_edge:            ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else163.i

do.end160.i:                                      ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call162.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223) #16
  br label %cleanup

if.else163.i:                                     ; preds = %for.cond.1.i.i.if.else163.i_crit_edge, %for.cond.i.i.if.else163.i_crit_edge, %if.then153.i.if.else163.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 1), %for.cond.i.i.if.else163.i_crit_edge ], [ @superios, %if.then153.i.if.else163.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 2), %for.cond.1.i.i.if.else163.i_crit_edge ]
  %shl.i = shl nuw nsw i32 %conv46.i, 8
  %or.i = or i32 %shl.i, %conv60.i
  %14 = ptrtoint ptr %retval.0.i.ph.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i, ptr %retval.0.i.ph.i, align 4
  %15 = and i8 %7, 15
  %and165.i = zext i8 %15 to i32
  %irq.i = getelementptr inbounds %struct.superio_struct, ptr %retval.0.i.ph.i, i32 0, i32 1
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and165.i, ptr %irq.i, align 4
  %17 = and i8 %8, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp167.i = icmp ugt i8 %17, 3
  %and166.i = zext i8 %17 to i32
  %spec.select.i = select i1 %cmp167.i, i32 -1, i32 %and166.i
  %dma.i = getelementptr inbounds %struct.superio_struct, ptr %retval.0.i.ph.i, i32 0, i32 2
  %18 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select.i, ptr %dma.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else163.i, %do.end160.i, %if.then54.cleanup_crit_edge, %if.else8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc_check(i32 noundef %io, i32 noundef %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %io, i32 noundef 3, ptr noundef nonnull @__func__.smsc_check, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %io, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !764
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !765
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 13) #13, !srcloc !622
  %add7 = add i32 %io, 1
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %2 = inttoptr i32 %add9 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !766
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !767
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 14) #13, !srcloc !622
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !769
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 32) #13, !srcloc !622
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !770
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !771
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 33) #13, !srcloc !622
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !773
  tail call void @arm_heavy_mb() #13
  %conv59 = trunc i32 %key to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv59) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !774
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv59) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !775
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 13) #13, !srcloc !622
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !777
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 14) #13, !srcloc !622
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !778
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !779
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 32) #13, !srcloc !622
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !780
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !781
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 33) #13, !srcloc !622
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !782
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !783
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !784
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %1) #13, !srcloc !622
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %9)
  %cmp = icmp eq i8 %5, %9
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %8)
  %cmp140 = icmp eq i8 %4, %8
  %or.cond = select i1 %cmp, i1 %cmp140, i1 false
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %7)
  %cmp143 = icmp eq i8 %3, %7
  %or.cond185 = select i1 %or.cond, i1 %cmp143, i1 false
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %10)
  %cmp146 = icmp eq i8 %6, %10
  %or.cond186 = select i1 %or.cond185, i1 %cmp146, i1 false
  br i1 %or.cond186, label %if.end.out_crit_edge, label %if.end149

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end149:                                        ; preds = %if.end
  %conv97 = zext i8 %8 to i32
  %conv83 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %8)
  %cmp.i = icmp ne i8 %7, %8
  %shl.i = shl nuw nsw i32 %conv83, 8
  %or.i = or i32 %shl.i, %conv97
  call void @__sanitizer_cov_trace_const_cmp4(i32 770, i32 %or.i)
  %cmp1.i = icmp eq i32 %or.i, 770
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.then18.i, label %if.end149.out_crit_edge

if.end149.out_crit_edge:                          ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then18.i:                                      ; preds = %if.end149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !785
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv59) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !786
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv59) #13, !srcloc !622
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !787
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 1) #13, !srcloc !622
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !788
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !789
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 4) #13, !srcloc !622
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !790
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !791
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 10) #13, !srcloc !622
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !793
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 35) #13, !srcloc !622
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !794
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !795
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 38) #13, !srcloc !622
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !796
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !797
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 39) #13, !srcloc !622
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !798
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !799
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #13, !srcloc !622
  %conv61.i.i = zext i8 %14 to i32
  %mul145.i.i = shl nuw nsw i32 %conv61.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %14)
  %cmp146.i.i = icmp ugt i8 %14, 63
  br i1 %cmp146.i.i, label %if.then148.i.i, label %if.then18.i.out_crit_edge

if.then18.i.out_crit_edge:                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then148.i.i:                                   ; preds = %if.then18.i
  %17 = load i32, ptr @superios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp1.i.i.i, label %if.then148.i.i.if.else.i.i_crit_edge, label %for.cond.i.i.i

if.then148.i.i.if.else.i.i_crit_edge:             ; preds = %if.then148.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

for.cond.i.i.i:                                   ; preds = %if.then148.i.i
  %18 = load i32, ptr getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.1.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp1.1.i.i.i, label %for.cond.i.i.i.if.else.i.i_crit_edge, label %for.cond.1.i.i.i

for.cond.i.i.i.if.else.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %19 = load i32, ptr getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.2.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp1.2.i.i.i, label %for.cond.1.i.i.i.if.else.i.i_crit_edge, label %do.end155.i.i

for.cond.1.i.i.i.if.else.i.i_crit_edge:           ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

do.end155.i.i:                                    ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call157.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223) #16
  br label %out

if.else.i.i:                                      ; preds = %for.cond.1.i.i.i.if.else.i.i_crit_edge, %for.cond.i.i.i.if.else.i.i_crit_edge, %if.then148.i.i.if.else.i.i_crit_edge
  %retval.0.i.ph.i.i = phi ptr [ getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 1), %for.cond.i.i.i.if.else.i.i_crit_edge ], [ @superios, %if.then148.i.i.if.else.i.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.superio_struct], ptr @superios, i32 0, i32 2), %for.cond.1.i.i.i.if.else.i.i_crit_edge ]
  %20 = zext i32 %mul145.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.339)
  switch i32 %mul145.i.i, label %if.else.i.i.sw.epilog.i.i_crit_edge [
    i32 956, label %if.else.i.i.sw.epilog.sink.split.i.i_crit_edge
    i32 888, label %if.else.i.i.sw.epilog.sink.split.i.i_crit_edge187
    i32 632, label %sw.bb163.i.i
  ]

if.else.i.i.sw.epilog.sink.split.i.i_crit_edge187: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i.i

if.else.i.i.sw.epilog.sink.split.i.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i.i

if.else.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i.i

sw.bb163.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb163.i.i, %if.else.i.i.sw.epilog.sink.split.i.i_crit_edge, %if.else.i.i.sw.epilog.sink.split.i.i_crit_edge187
  %.sink.i.i = phi i32 [ 5, %sw.bb163.i.i ], [ 7, %if.else.i.i.sw.epilog.sink.split.i.i_crit_edge ], [ 7, %if.else.i.i.sw.epilog.sink.split.i.i_crit_edge187 ]
  %21 = ptrtoint ptr %retval.0.i.ph.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul145.i.i, ptr %retval.0.i.ph.i.i, align 4
  %irq165.i.i = getelementptr inbounds %struct.superio_struct, ptr %retval.0.i.ph.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %irq165.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i.i, ptr %irq165.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %if.else.i.i.sw.epilog.i.i_crit_edge
  %trunc.i.i = trunc i8 %15 to i4
  %23 = zext i4 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.340)
  switch i4 %trunc.i.i, label %if.else172.i.i [
    i4 1, label %sw.epilog.i.i.if.then171.i.i_crit_edge
    i4 3, label %sw.epilog.i.i.if.then171.i.i_crit_edge188
  ]

sw.epilog.i.i.if.then171.i.i_crit_edge188:        ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then171.i.i

sw.epilog.i.i.if.then171.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then171.i.i

if.then171.i.i:                                   ; preds = %sw.epilog.i.i.if.then171.i.i_crit_edge, %sw.epilog.i.i.if.then171.i.i_crit_edge188
  %24 = and i8 %15, 15
  %and166.i.i = zext i8 %24 to i32
  %dma.i.i = getelementptr inbounds %struct.superio_struct, ptr %retval.0.i.ph.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and166.i.i, ptr %dma.i.i, align 4
  br label %out

if.else172.i.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %dma173.i.i = getelementptr inbounds %struct.superio_struct, ptr %retval.0.i.ph.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %dma173.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %dma173.i.i, align 4
  br label %out

out:                                              ; preds = %if.else172.i.i, %if.then171.i.i, %do.end155.i.i, %if.then18.i.out_crit_edge, %if.end149.out_crit_edge, %if.end.out_crit_edge
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %io, i32 noundef 3) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sio_via_probe(ptr noundef %pdev, i32 noundef %autoirq, i32 noundef %autodma, ptr nocapture noundef readonly %via) #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #13
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !657
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252) #16
  %1 = load i32, ptr @parport_init_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.341)
  switch i32 %1, label %do.end33 [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %do.end10
    i32 3, label %do.end16
    i32 4, label %do.end22
    i32 5, label %do.end28
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end33:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end33, %do.end28, %do.end22, %do.end16, %do.end10, %entry.sw.epilog_crit_edge
  %.str.270.sink = phi ptr [ @.str.270, %do.end33 ], [ @.str.267, %do.end28 ], [ @.str.264, %do.end22 ], [ @.str.261, %do.end16 ], [ @.str.258, %do.end10 ], [ @.str.255, %entry.sw.epilog_crit_edge ]
  %tobool.not = phi i1 [ true, %do.end33 ], [ false, %do.end28 ], [ true, %do.end22 ], [ false, %do.end16 ], [ true, %do.end10 ], [ true, %entry.sw.epilog_crit_edge ]
  %ppcontrol.0 = phi i8 [ 0, %do.end33 ], [ -96, %do.end28 ], [ -128, %do.end22 ], [ -128, %do.end16 ], [ -128, %do.end10 ], [ 0, %entry.sw.epilog_crit_edge ]
  %cmp = phi i1 [ true, %do.end33 ], [ false, %do.end28 ], [ false, %do.end22 ], [ false, %do.end16 ], [ false, %do.end10 ], [ false, %entry.sw.epilog_crit_edge ]
  %siofunc.0 = phi i8 [ -1, %do.end33 ], [ 1, %do.end28 ], [ 1, %do.end22 ], [ 2, %do.end16 ], [ 0, %do.end10 ], [ 0, %entry.sw.epilog_crit_edge ]
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.270.sink) #16
  %via_pci_superio_config_reg = getelementptr inbounds %struct.parport_pc_via_data, ptr %via, i32 0, i32 2
  %3 = ptrtoint ptr %via_pci_superio_config_reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %via_pci_superio_config_reg, align 1
  %conv = zext i8 %4 to i32
  %call36 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef %conv, ptr noundef nonnull %tmp) #13
  %via_pci_superio_config_data = getelementptr inbounds %struct.parport_pc_via_data, ptr %via, i32 0, i32 3
  %5 = ptrtoint ptr %via_pci_superio_config_data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %via_pci_superio_config_data, align 1
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tmp, align 1
  %or266 = or i8 %8, %6
  store i8 %or266, ptr %tmp, align 1
  %9 = ptrtoint ptr %via_pci_superio_config_reg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %via_pci_superio_config_reg, align 1
  %conv41 = zext i8 %10 to i32
  %call42 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef %conv41, i8 noundef zeroext %or266) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !800
  call void @arm_heavy_mb() #13
  %viacfg_function = getelementptr inbounds %struct.parport_pc_via_data, ptr %via, i32 0, i32 4
  %11 = ptrtoint ptr %viacfg_function to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %viacfg_function, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873360 to ptr), i8 %12) #13, !srcloc !622
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873359 to ptr)) #13, !srcloc !623
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !801
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !802
  call void @arm_heavy_mb() #13
  %viacfg_parport_control = getelementptr inbounds %struct.parport_pc_via_data, ptr %via, i32 0, i32 5
  %15 = ptrtoint ptr %viacfg_parport_control to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %viacfg_parport_control, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873360 to ptr), i8 %16) #13, !srcloc !622
  %17 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873359 to ptr)) #13, !srcloc !623
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !803
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tmp, align 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %20 = and i8 %19, 3
  br label %do.body94

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %21 = and i8 %19, -4
  %or67267 = or i8 %21, %siofunc.0
  %22 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or67267, ptr %tmp, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !804
  call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %viacfg_function to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %viacfg_function, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873360 to ptr), i8 %24) #13, !srcloc !622
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !805
  call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tmp, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873359 to ptr), i8 %26) #13, !srcloc !622
  %27 = and i8 %17, 95
  %or83 = or i8 %27, %ppcontrol.0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !806
  call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %viacfg_parport_control to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %viacfg_parport_control, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873360 to ptr), i8 %29) #13, !srcloc !622
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !807
  call void @arm_heavy_mb() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873359 to ptr), i8 %or83) #13, !srcloc !622
  br label %do.body94

do.body94:                                        ; preds = %if.else, %if.then
  %siofunc.1 = phi i8 [ %20, %if.then ], [ %siofunc.0, %if.else ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !808
  call void @arm_heavy_mb() #13
  %viacfg_parport_base = getelementptr inbounds %struct.parport_pc_via_data, ptr %via, i32 0, i32 6
  %30 = ptrtoint ptr %viacfg_parport_base to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %viacfg_parport_base, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873360 to ptr), i8 %31) #13, !srcloc !622
  %32 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873359 to ptr)) #13, !srcloc !623
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !809
  %conv102 = zext i8 %32 to i32
  %shl = shl nuw nsw i32 %conv102, 2
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, i32 noundef %shl) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %32)
  %cmp108 = icmp ne i8 %32, -17
  %brmerge = or i1 %tobool.not, %cmp108
  %shl.mux = select i1 %cmp108, i32 %shl, i32 956
  br i1 %brmerge, label %do.body94.if.end125_crit_edge, label %do.body111

do.body94.if.end125_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

do.body111:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !810
  call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %viacfg_parport_base to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %viacfg_parport_base, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873360 to ptr), i8 %34) #13, !srcloc !622
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !811
  call void @arm_heavy_mb() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873359 to ptr), i8 -34) #13, !srcloc !622
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276) #16
  br label %if.end125

if.end125:                                        ; preds = %do.body111, %do.body94.if.end125_crit_edge
  %port1.0 = phi i32 [ 888, %do.body111 ], [ %shl.mux, %do.body94.if.end125_crit_edge ]
  %35 = ptrtoint ptr %via_pci_superio_config_reg to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %via_pci_superio_config_reg, align 1
  %conv127 = zext i8 %36 to i32
  %call128 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef %conv127, ptr noundef nonnull %tmp) #13
  %37 = ptrtoint ptr %via_pci_superio_config_data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %via_pci_superio_config_data, align 1
  %neg = xor i8 %38, -1
  %39 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tmp, align 1
  %and132 = and i8 %40, %neg
  store i8 %and132, ptr %tmp, align 1
  %41 = ptrtoint ptr %via_pci_superio_config_reg to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %via_pci_superio_config_reg, align 1
  %conv135 = zext i8 %42 to i32
  %call136 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef %conv135, i8 noundef zeroext %and132) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %siofunc.1)
  %cmp138 = icmp eq i8 %siofunc.1, 3
  br i1 %cmp138, label %do.end143, label %if.end146

do.end143:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279) #16
  br label %cleanup

if.end146:                                        ; preds = %if.end125
  %43 = ptrtoint ptr %via to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %via, align 1
  %conv147 = zext i8 %44 to i32
  %call148 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef %conv147, ptr noundef nonnull %tmp) #13
  %45 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tmp, align 1
  %47 = lshr i8 %46, 4
  %48 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %siofunc.1)
  %cmp152 = icmp eq i8 %siofunc.1, 1
  br i1 %cmp152, label %if.then154, label %if.end146.if.end161_crit_edge

if.end146.if.end161_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end161

if.then154:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  %via_pci_parport_dma_reg = getelementptr inbounds %struct.parport_pc_via_data, ptr %via, i32 0, i32 1
  %49 = ptrtoint ptr %via_pci_parport_dma_reg to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %via_pci_parport_dma_reg, align 1
  %conv155 = zext i8 %50 to i32
  %call156 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef %conv155, ptr noundef nonnull %tmp) #13
  %51 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tmp, align 1
  %53 = lshr i8 %52, 2
  %54 = and i8 %53, 3
  %55 = zext i8 %54 to i32
  br label %if.end161

if.end161:                                        ; preds = %if.then154, %if.end146.if.end161_crit_edge
  %dma.0 = phi i32 [ %55, %if.then154 ], [ -1, %if.end146.if.end161_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %autoirq)
  %cmp162 = icmp eq i32 %autoirq, -1
  %spec.select = select i1 %cmp162, i32 -1, i32 %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %autodma)
  %cmp166 = icmp eq i32 %autodma, -1
  %56 = or i1 %cmp162, %cmp166
  %dma.2 = select i1 %56, i32 -1, i32 %dma.0
  %57 = zext i32 %port1.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.342)
  switch i32 %port1.0, label %do.end176 [
    i32 956, label %if.end161.sw.epilog179_crit_edge
    i32 888, label %sw.bb171
    i32 632, label %sw.bb172
  ]

if.end161.sw.epilog179_crit_edge:                 ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog179

sw.bb171:                                         ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog179

sw.bb172:                                         ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog179

do.end176:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, i32 noundef %port1.0) #16
  br label %cleanup

sw.epilog179:                                     ; preds = %sw.bb172, %sw.bb171, %if.end161.sw.epilog179_crit_edge
  %port2.0 = phi i32 [ 1656, %sw.bb172 ], [ 1912, %sw.bb171 ], [ 1980, %if.end161.sw.epilog179_crit_edge ]
  %58 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.343)
  switch i32 %spec.select, label %sw.epilog179.sw.epilog182_crit_edge [
    i32 0, label %sw.epilog179.sw.bb180_crit_edge
    i32 2, label %sw.epilog179.sw.bb180_crit_edge269
    i32 8, label %sw.epilog179.sw.bb180_crit_edge270
    i32 13, label %sw.epilog179.sw.bb180_crit_edge271
  ]

sw.epilog179.sw.bb180_crit_edge271:               ; preds = %sw.epilog179
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb180

sw.epilog179.sw.bb180_crit_edge270:               ; preds = %sw.epilog179
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb180

sw.epilog179.sw.bb180_crit_edge269:               ; preds = %sw.epilog179
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb180

sw.epilog179.sw.bb180_crit_edge:                  ; preds = %sw.epilog179
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb180

sw.epilog179.sw.epilog182_crit_edge:              ; preds = %sw.epilog179
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog182

sw.bb180:                                         ; preds = %sw.epilog179.sw.bb180_crit_edge, %sw.epilog179.sw.bb180_crit_edge269, %sw.epilog179.sw.bb180_crit_edge270, %sw.epilog179.sw.bb180_crit_edge271
  br label %sw.epilog182

sw.epilog182:                                     ; preds = %sw.bb180, %sw.epilog179.sw.epilog182_crit_edge
  %irq.1 = phi i32 [ %spec.select, %sw.epilog179.sw.epilog182_crit_edge ], [ -1, %sw.bb180 ]
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call183 = call ptr @parport_pc_probe_port(i32 noundef %port1.0, i32 noundef %port2.0, i32 noundef %irq.1, i32 noundef %dma.2, ptr noundef %dev, i32 noundef 0)
  %tobool184.not = icmp eq ptr %call183, null
  br i1 %tobool184.not, label %do.end217, label %do.end188

do.end188:                                        ; preds = %sw.epilog182
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, i32 noundef %port1.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq.1)
  %cmp191.not = icmp eq i32 %irq.1, -1
  br i1 %cmp191.not, label %do.end188.if.end199_crit_edge, label %do.end196

do.end188.if.end199_crit_edge:                    ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end199

do.end196:                                        ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #15
  %call198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, i32 noundef %irq.1) #16
  br label %if.end199

if.end199:                                        ; preds = %do.end196, %do.end188.if.end199_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dma.2)
  %cmp200.not = icmp eq i32 %dma.2, -1
  br i1 %cmp200.not, label %if.end199.do.end211_crit_edge, label %do.end205

if.end199.do.end211_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end211

do.end205:                                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #15
  %call207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, i32 noundef %dma.2) #16
  br label %do.end211

do.end211:                                        ; preds = %do.end205, %if.end199.do.end211_crit_edge
  %call213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294) #16
  br label %cleanup

do.end217:                                        ; preds = %sw.epilog182
  call void @__sanitizer_cov_trace_pc() #15
  %call219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, i32 noundef %port1.0, i32 noundef %irq.1, i32 noundef %dma.2) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end217, %do.end211, %do.end176, %do.end143
  %retval.0 = phi i32 [ 0, %do.end143 ], [ 0, %do.end176 ], [ 1, %do.end211 ], [ 0, %do.end217 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sio_ite_8872_probe(ptr noundef %pdev, i32 noundef %autoirq, i32 noundef %autodma, ptr nocapture noundef readnone %via) #0 align 64 {
entry:
  %ite8872_lpt = alloca i32, align 4
  %ite8872_lpthi = alloca i32, align 4
  %ite8872_irq = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ite8872_lpt) #13
  %0 = ptrtoint ptr %ite8872_lpt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ite8872_lpt, align 4, !annotation !657
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ite8872_lpthi) #13
  %1 = ptrtoint ptr %ite8872_lpthi to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ite8872_lpthi, align 4, !annotation !657
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ite8872_irq) #13
  %2 = ptrtoint ptr %ite8872_irq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ite8872_irq, align 1, !annotation !657
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sio_ite_8872_probe.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sio_ite_8872_probe, %if.then)) #13
          to label %for.body [label %if.then], !srcloc !636

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sio_ite_8872_probe.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.300) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then, %entry
  %i.0235 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %arrayidx = getelementptr [6 x i16], ptr @__const.sio_ite_8872_probe.inta_addr, i32 0, i32 %i.0235
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %call3 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv, i32 noundef 32, ptr noundef nonnull @.str.301, i32 noundef 0) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %or = or i32 %conv, -452984832
  %call8 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 96, i32 noundef %or) #13
  %call12 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 120, i32 noundef %conv) #13
  %and = and i32 %conv, 1048575
  %add = or i32 %and, -18874368
  %5 = inttoptr i32 %add to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !812
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp19.not = icmp eq i8 %6, -1
  br i1 %cmp19.not, label %cleanup.thread, label %if.end34

cleanup.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv, i32 noundef 32) #13
  br label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0235, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %do.end31, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end31:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302) #16
  br label %cleanup186

if.end34:                                         ; preds = %if.then5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %conv37 = sext i16 %8 to i32
  %add38 = add nsw i32 %conv37, 24
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %9 = inttoptr i32 %add40 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #13, !srcloc !623
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !813
  %11 = and i8 %10, 15
  %conv47 = zext i8 %11 to i32
  %12 = add nsw i32 %conv47, -2
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 31)
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.344)
  switch i32 %13, label %do.end83 [
    i32 0, label %if.end34.sw.epilog_crit_edge
    i32 4, label %do.end56
    i32 6, label %do.end62
    i32 2, label %do.end68
    i32 3, label %do.end76
  ]

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end56:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end62:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end68:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.313) #16
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv37, i32 noundef 32) #13
  br label %cleanup186

do.end76:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.316) #16
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv37, i32 noundef 32) #13
  br label %cleanup186

do.end83:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.319) #16
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.322) #16
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv37, i32 noundef 32) #13
  br label %cleanup186

sw.epilog:                                        ; preds = %do.end62, %do.end56, %if.end34.sw.epilog_crit_edge
  %.str.310.sink = phi ptr [ @.str.310, %do.end62 ], [ @.str.307, %do.end56 ], [ @.str.304, %if.end34.sw.epilog_crit_edge ]
  %ite8872set.0 = phi i32 [ 1692401664, %do.end62 ], [ 1679818752, %do.end56 ], [ 1679818752, %if.end34.sw.epilog_crit_edge ]
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.310.sink) #16
  %call93 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 60, ptr noundef nonnull %ite8872_irq) #13
  %call94 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 28, ptr noundef nonnull %ite8872_lpt) #13
  %15 = ptrtoint ptr %ite8872_lpt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ite8872_lpt, align 4
  %and95 = and i32 %16, 65280
  store i32 %and95, ptr %ite8872_lpt, align 4
  %call96 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 32, ptr noundef nonnull %ite8872_lpthi) #13
  %17 = ptrtoint ptr %ite8872_lpthi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ite8872_lpthi, align 4
  %and97 = and i32 %18, 65280
  store i32 %and97, ptr %ite8872_lpthi, align 4
  %19 = ptrtoint ptr %ite8872_lpt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ite8872_lpt, align 4
  %or98 = or i32 %20, -486539264
  %call99 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 108, i32 noundef %or98) #13
  %21 = ptrtoint ptr %ite8872_lpthi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ite8872_lpthi, align 4
  %or100 = or i32 %22, -486539264
  %call101 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 112, i32 noundef %or100) #13
  %23 = ptrtoint ptr %ite8872_lpthi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ite8872_lpthi, align 4
  %shl = shl i32 %24, 16
  %25 = ptrtoint ptr %ite8872_lpt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ite8872_lpt, align 4
  %or102 = or i32 %shl, %26
  %call103 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 128, i32 noundef %or102) #13
  %27 = ptrtoint ptr %ite8872_irq to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ite8872_irq, align 1
  %conv104 = zext i8 %28 to i32
  %mul = mul nuw nsw i32 %conv104, 69905
  %or105 = or i32 %mul, %ite8872set.0
  %call106 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 156, i32 noundef %or105) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sio_ite_8872_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sio_ite_8872_probe, %if.then119)) #13
          to label %do.body124 [label %if.then119], !srcloc !636

if.then119:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %ite8872_irq to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ite8872_irq, align 1
  %conv120 = zext i8 %30 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sio_ite_8872_probe.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.324, i32 noundef %conv120) #13
  br label %do.body124

do.body124:                                       ; preds = %if.then119, %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sio_ite_8872_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sio_ite_8872_probe, %if.then136)) #13
          to label %do.body140 [label %if.then136], !srcloc !636

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %ite8872_lpt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ite8872_lpt, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sio_ite_8872_probe.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.325, i32 noundef %32) #13
  br label %do.body140

do.body140:                                       ; preds = %if.then136, %do.body124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sio_ite_8872_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sio_ite_8872_probe, %if.then152)) #13
          to label %do.end155 [label %if.then152], !srcloc !636

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %ite8872_lpthi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ite8872_lpthi, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sio_ite_8872_probe.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.326, i32 noundef %34) #13
  br label %do.end155

do.end155:                                        ; preds = %if.then152, %do.body140
  %35 = ptrtoint ptr %ite8872_irq to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ite8872_irq, align 1
  %conv156 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %autoirq)
  %cmp157.not = icmp eq i32 %autoirq, -2
  %spec.store.select = select i1 %cmp157.not, i32 %conv156, i32 -1
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv37, i32 noundef 32) #13
  %37 = ptrtoint ptr %ite8872_lpt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ite8872_lpt, align 4
  %39 = ptrtoint ptr %ite8872_lpthi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ite8872_lpthi, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call163 = call ptr @parport_pc_probe_port(i32 noundef %38, i32 noundef %40, i32 noundef %spec.store.select, i32 noundef -1, ptr noundef %dev, i32 noundef 0)
  %tobool164.not = icmp eq ptr %call163, null
  br i1 %tobool164.not, label %do.end155.cleanup186_crit_edge, label %do.end168

do.end155.cleanup186_crit_edge:                   ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup186

do.end168:                                        ; preds = %do.end155
  %41 = ptrtoint ptr %ite8872_lpt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ite8872_lpt, align 4
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, i32 noundef %42) #16
  br i1 %cmp157.not, label %do.end176, label %do.end168.do.end182_crit_edge

do.end168.do.end182_crit_edge:                    ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end182

do.end176:                                        ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #15
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, i32 noundef %spec.store.select) #16
  br label %do.end182

do.end182:                                        ; preds = %do.end176, %do.end168.do.end182_crit_edge
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294) #16
  br label %cleanup186

cleanup186:                                       ; preds = %do.end182, %do.end155.cleanup186_crit_edge, %do.end83, %do.end76, %do.end68, %do.end31
  %retval.0 = phi i32 [ 0, %do.end31 ], [ 0, %do.end83 ], [ 0, %do.end76 ], [ 0, %do.end68 ], [ 1, %do.end182 ], [ 0, %do.end155.cleanup186_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ite8872_irq) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ite8872_lpthi) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ite8872_lpt) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 260)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 260)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }
attributes #19 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !106, !108, !109, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !266, !267, !269, !271, !272, !273, !274, !276, !277, !278, !280, !282, !284, !286, !288, !290, !292, !293, !294, !295, !296, !298, !299, !300, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !320, !321, !322, !324, !325, !326, !328, !330, !332, !334, !335, !336, !337, !339, !340, !341, !343, !344, !345, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !375, !376, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !402, !403, !404, !406, !407, !408, !409, !410, !412, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !434, !435, !436, !437, !439, !441, !443, !445, !447, !449, !450, !451, !452, !454, !456, !458, !460, !462, !463, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !477, !478, !479, !480, !482, !483, !485, !487, !488, !489, !490, !492, !493, !494, !496, !497, !498, !500, !501, !502, !504, !505, !506, !508, !509, !510, !512, !513, !514, !516, !517, !518, !520, !521, !522, !524, !525, !526, !528, !529, !530, !532, !533, !534, !536, !537, !538, !540, !541, !542, !544, !545, !546, !548, !549, !550, !552, !554, !556, !557, !558, !560, !562, !563, !564, !566, !567, !568, !570, !571, !572, !574, !575, !576, !578, !579, !580, !582, !583, !584, !586, !587, !588, !590, !591, !592, !594, !595, !597, !598, !600, !601, !603, !604, !605, !607, !608, !610}
!llvm.named.register.sp = !{!611}
!llvm.module.flags = !{!612, !613, !614, !615, !616, !617, !618, !619}
!llvm.ident = !{!620}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/parport/parport_pc.c", i32 2022, i32 42}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/parport/parport_pc.c", i32 2030, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @parport_pc_probe_port._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @parport_pc_probe_port._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/parport/parport_pc.c", i32 2089, i32 2}
!12 = !{ptr @parport_pc_probe_port._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @parport_pc_probe_port._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/parport/parport_pc.c", i32 2091, i32 3}
!16 = !{ptr @parport_pc_probe_port._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @parport_pc_probe_port._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/parport/parport_pc.c", i32 2102, i32 3}
!20 = !{ptr @parport_pc_probe_port._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @parport_pc_probe_port._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/parport/parport_pc.c", i32 2126, i32 4}
!24 = !{ptr @parport_pc_probe_port._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @parport_pc_probe_port._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/parport/parport_pc.c", i32 2129, i32 4}
!28 = !{ptr @parport_pc_probe_port._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @parport_pc_probe_port._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/parport/parport_pc.c", i32 2135, i32 2}
!32 = !{ptr @parport_pc_probe_port._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @parport_pc_probe_port._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/parport/parport_pc.c", i32 2145, i32 3}
!36 = !{ptr @parport_pc_probe_port._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @parport_pc_probe_port._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.28, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.29, !35, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @parport_pc_probe_port._entry.30, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/parport/parport_pc.c", i32 2146, i32 3}
!43 = !{ptr @parport_pc_probe_port._entry_ptr.31, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.32, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @parport_pc_probe_port._entry.33, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/parport/parport_pc.c", i32 2147, i32 3}
!47 = !{ptr @parport_pc_probe_port._entry_ptr.34, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.35, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @parport_pc_probe_port._entry.36, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/parport/parport_pc.c", i32 2148, i32 3}
!51 = !{ptr @parport_pc_probe_port._entry_ptr.37, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.38, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @parport_pc_probe_port._entry.39, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/parport/parport_pc.c", i32 2149, i32 3}
!55 = !{ptr @parport_pc_probe_port._entry_ptr.40, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.41, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @parport_pc_probe_port._entry.42, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/parport/parport_pc.c", i32 2150, i32 3}
!59 = !{ptr @parport_pc_probe_port._entry_ptr.43, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.44, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.46, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/parport/parport_pc.c", i32 2156, i32 2}
!63 = !{ptr @parport_pc_probe_port._entry.45, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @parport_pc_probe_port._entry_ptr.47, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.49, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/parport/parport_pc.c", i32 2158, i32 3}
!67 = !{ptr @parport_pc_probe_port._entry.48, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @parport_pc_probe_port._entry_ptr.50, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.52, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/parport/parport_pc.c", i32 2173, i32 4}
!71 = !{ptr @parport_pc_probe_port._entry.51, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @parport_pc_probe_port._entry_ptr.53, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @__ksymtab_parport_pc_probe_port, !74, !"__ksymtab_parport_pc_probe_port", i1 false, i1 false}
!74 = !{!"../drivers/parport/parport_pc.c", i32 2242, i32 1}
!75 = !{ptr @__ksymtab_parport_pc_unregister_port, !76, !"__ksymtab_parport_pc_unregister_port", i1 false, i1 false}
!76 = !{!"../drivers/parport/parport_pc.c", i32 2274, i32 1}
!77 = !{ptr @__setup_parport_setup, !78, !"__setup_parport_setup", i1 false, i1 false}
!78 = !{!"../drivers/parport/parport_pc.c", i32 3250, i32 1}
!79 = !{ptr @__setup_parport_init_mode_setup, !80, !"__setup_parport_init_mode_setup", i1 false, i1 false}
!80 = !{!"../drivers/parport/parport_pc.c", i32 3258, i32 1}
!81 = !{ptr @__UNIQUE_ID_author242, !82, !"__UNIQUE_ID_author242", i1 false, i1 false}
!82 = !{!"../drivers/parport/parport_pc.c", i32 3315, i32 1}
!83 = !{ptr @__UNIQUE_ID_description243, !84, !"__UNIQUE_ID_description243", i1 false, i1 false}
!84 = !{!"../drivers/parport/parport_pc.c", i32 3316, i32 1}
!85 = !{ptr @__UNIQUE_ID_file244, !86, !"__UNIQUE_ID_file244", i1 false, i1 false}
!86 = !{!"../drivers/parport/parport_pc.c", i32 3317, i32 1}
!87 = !{ptr @__UNIQUE_ID_license245, !86, !"__UNIQUE_ID_license245", i1 false, i1 false}
!88 = !{ptr @__initcall__kmod_parport_pc__246_3318_parport_pc_init6, !89, !"__initcall__kmod_parport_pc__246_3318_parport_pc_init6", i1 false, i1 false}
!89 = !{!"../drivers/parport/parport_pc.c", i32 3318, i32 1}
!90 = !{ptr @__exitcall_parport_pc_exit, !91, !"__exitcall_parport_pc_exit", i1 false, i1 false}
!91 = !{!"../drivers/parport/parport_pc.c", i32 3319, i32 1}
!92 = distinct !{null, !93, !"pci_registered_parport", i1 false, i1 false}
!93 = !{!"../drivers/parport/parport_pc.c", i32 102, i32 12}
!94 = distinct !{null, !95, !"pnp_registered_parport", i1 false, i1 false}
!95 = !{!"../drivers/parport/parport_pc.c", i32 103, i32 12}
!96 = distinct !{null, !97, !"parport_pc_pnp_driver", i1 false, i1 false}
!97 = !{!"../drivers/parport/parport_pc.c", i32 2970, i32 26}
!98 = !{ptr @parport_pc_ops, !99, !"parport_pc_ops", i1 false, i1 false}
!99 = !{!"../drivers/parport/parport_pc.c", i32 899, i32 40}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/parport_pc.h", i32 166, i32 3}
!102 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @parport_pc_write_control._entry, !101, !"_entry", i1 false, i1 false}
!105 = !{ptr @parport_pc_write_control._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/parport_pc.h", i32 195, i32 3}
!108 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @parport_pc_frob_control._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @parport_pc_frob_control._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/parport/parport_pc.c", i32 294, i32 5}
!115 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @parport_pc_epp_read_data._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @parport_pc_epp_read_data._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/parport/parport_pc.c", i32 1431, i32 3}
!120 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @parport_SPP_supported._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @parport_SPP_supported._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/parport/parport_pc.c", i32 1450, i32 3}
!125 = !{ptr @parport_SPP_supported._entry.65, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @parport_SPP_supported._entry_ptr.67, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/parport/parport_pc.c", i32 1452, i32 3}
!129 = !{ptr @parport_SPP_supported._entry.68, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @parport_SPP_supported._entry_ptr.70, !128, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"user_specified", i1 false, i1 false}
!132 = !{!"../drivers/parport/parport_pc.c", i32 97, i32 12}
!133 = !{ptr @programmable_irq_support.lookup, !134, !"lookup", i1 false, i1 false}
!134 = !{!"../drivers/parport/parport_pc.c", i32 1839, i32 19}
!135 = !{ptr @superios, !136, !"superios", i1 false, i1 false}
!136 = !{!"../drivers/parport/parport_pc.c", i32 95, i32 3}
!137 = distinct !{null, !138, !"intrline", i1 false, i1 false}
!138 = !{!"../drivers/parport/parport_pc.c", i32 1567, i32 19}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/parport/parport_pc.c", i32 1590, i32 3}
!141 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @parport_ECP_supported._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @parport_ECP_supported._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/parport/parport_pc.c", i32 1604, i32 4}
!146 = !{ptr @parport_ECP_supported._entry.73, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @parport_ECP_supported._entry_ptr.75, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/parport/parport_pc.c", i32 1627, i32 4}
!150 = !{ptr @parport_ECP_supported._entry.76, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @parport_ECP_supported._entry_ptr.78, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/parport/parport_pc.c", i32 1642, i32 3}
!154 = !{ptr @parport_ECP_supported._entry.79, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @parport_ECP_supported._entry_ptr.81, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @parport_ECP_supported._entry.82, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/parport/parport_pc.c", i32 1646, i32 3}
!158 = !{ptr @parport_ECP_supported._entry_ptr.83, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/parport/parport_pc.c", i32 1649, i32 3}
!161 = !{ptr @parport_ECP_supported._entry.84, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @parport_ECP_supported._entry_ptr.86, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.88, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/parport/parport_pc.c", i32 1657, i32 3}
!165 = !{ptr @parport_ECP_supported._entry.87, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @parport_ECP_supported._entry_ptr.89, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/parport/parport_pc.c", i32 1660, i32 3}
!169 = !{ptr @parport_ECP_supported._entry.90, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @parport_ECP_supported._entry_ptr.92, !168, !"_entry_ptr", i1 false, i1 false}
!171 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!172 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/parport/parport_pc.c", i32 1664, i32 3}
!175 = !{ptr @parport_ECP_supported._entry.95, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @parport_ECP_supported._entry_ptr.97, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.99, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/parport/parport_pc.c", i32 1666, i32 3}
!179 = !{ptr @parport_ECP_supported._entry.98, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @parport_ECP_supported._entry_ptr.100, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.102, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/parport/parport_pc.c", i32 1668, i32 4}
!183 = !{ptr @parport_ECP_supported._entry.101, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @parport_ECP_supported._entry_ptr.103, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.105, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/parport/parport_pc.c", i32 1670, i32 4}
!187 = !{ptr @parport_ECP_supported._entry.104, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @parport_ECP_supported._entry_ptr.106, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.108, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/parport/parport_pc.c", i32 1671, i32 3}
!191 = !{ptr @parport_ECP_supported._entry.107, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @parport_ECP_supported._entry_ptr.109, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.111, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/parport/parport_pc.c", i32 1673, i32 4}
!195 = !{ptr @parport_ECP_supported._entry.110, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @parport_ECP_supported._entry_ptr.112, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.114, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/parport/parport_pc.c", i32 1675, i32 4}
!199 = !{ptr @parport_ECP_supported._entry.113, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @parport_ECP_supported._entry_ptr.115, !198, !"_entry_ptr", i1 false, i1 false}
!201 = distinct !{null, !202, !"verbose_probing", i1 false, i1 false}
!202 = !{!"../drivers/parport/parport_pc.c", i32 100, i32 12}
!203 = !{ptr @.str.116, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/parport/parport_pc.c", i32 722, i32 3}
!205 = !{ptr @.str.117, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @parport_pc_compat_write_block_pio._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @parport_pc_compat_write_block_pio._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.119, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/parport/parport_pc.c", i32 744, i32 3}
!210 = !{ptr @parport_pc_compat_write_block_pio._entry.118, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @parport_pc_compat_write_block_pio._entry_ptr.120, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.122, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/parport/parport_pc.c", i32 766, i32 3}
!214 = !{ptr @parport_pc_compat_write_block_pio._entry.121, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @parport_pc_compat_write_block_pio._entry_ptr.123, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.124, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/parport/parport_pc.c", i32 138, i32 2}
!218 = !{ptr @.str.125, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @change_mode.__UNIQUE_ID_ddebug237, !217, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!220 = !{ptr @.str.126, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/parport/parport_pc.c", i32 141, i32 3}
!222 = !{ptr @change_mode._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @change_mode._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.127, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/parport/parport_pc.c", i32 497, i32 4}
!226 = !{ptr @.str.128, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @parport_pc_fifo_write_block_pio._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @parport_pc_fifo_write_block_pio._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.130, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/parport/parport_pc.c", i32 513, i32 5}
!231 = !{ptr @parport_pc_fifo_write_block_pio._entry.129, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @parport_pc_fifo_write_block_pio._entry_ptr.131, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.132, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/parport/parport_pc.c", i32 805, i32 4}
!235 = !{ptr @.str.133, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @parport_pc_ecp_write_block_pio._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @parport_pc_ecp_write_block_pio._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.135, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/parport/parport_pc.c", i32 818, i32 3}
!240 = !{ptr @parport_pc_ecp_write_block_pio._entry.134, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @parport_pc_ecp_write_block_pio._entry_ptr.136, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @parport_pc_ecp_write_block_pio._entry.137, !243, !"_entry", i1 false, i1 false}
!243 = !{!"../drivers/parport/parport_pc.c", i32 839, i32 3}
!244 = !{ptr @parport_pc_ecp_write_block_pio._entry_ptr.138, !243, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.140, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/parport/parport_pc.c", i32 862, i32 4}
!247 = !{ptr @parport_pc_ecp_write_block_pio._entry.139, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @parport_pc_ecp_write_block_pio._entry_ptr.141, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.143, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/parport/parport_pc.c", i32 872, i32 4}
!251 = !{ptr @parport_pc_ecp_write_block_pio._entry.142, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @parport_pc_ecp_write_block_pio._entry_ptr.144, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.146, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/parport/parport_pc.c", i32 880, i32 3}
!255 = !{ptr @parport_pc_ecp_write_block_pio._entry.145, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @parport_pc_ecp_write_block_pio._entry_ptr.147, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.148, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/parport/parport_pc.c", i32 114, i32 2}
!259 = !{ptr @.str.149, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @frob_econtrol.__UNIQUE_ID_ddebug236, !258, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!261 = !{ptr @.str.150, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/parport/parport_pc.c", i32 2001, i32 8}
!263 = !{ptr @ports_lock, !262, !"ports_lock", i1 false, i1 false}
!264 = !{ptr @ports_list, !265, !"ports_list", i1 false, i1 false}
!265 = !{!"../drivers/parport/parport_pc.c", i32 2000, i32 8}
!266 = !{ptr @__setup_str_parport_setup, !78, !"__setup_str_parport_setup", i1 false, i1 false}
!267 = !{ptr @.str.151, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/parport/parport_pc.c", i32 3208, i32 20}
!269 = !{ptr @.str.152, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/parport/parport_pc.c", i32 3216, i32 3}
!271 = !{ptr @.str.153, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @parport_setup._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @parport_setup._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.155, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/parport/parport_pc.c", i32 3221, i32 3}
!276 = !{ptr @parport_setup._entry.154, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @parport_setup._entry_ptr.156, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @io, !279, !"io", i1 false, i1 false}
!279 = !{!"../drivers/parport/parport_pc.c", i32 3047, i32 23}
!280 = !{ptr @irqval, !281, !"irqval", i1 false, i1 false}
!281 = !{!"../drivers/parport/parport_pc.c", i32 3056, i32 23}
!282 = !{ptr @dmaval, !283, !"dmaval", i1 false, i1 false}
!283 = !{!"../drivers/parport/parport_pc.c", i32 3053, i32 23}
!284 = !{ptr @parport_setup_ptr, !285, !"parport_setup_ptr", i1 false, i1 false}
!285 = !{!"../drivers/parport/parport_pc.c", i32 3185, i32 12}
!286 = !{ptr @.str.157, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/parport/parport_pc.c", i32 3067, i32 23}
!288 = !{ptr @.str.158, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/parport/parport_pc.c", i32 3069, i32 33}
!290 = !{ptr @.str.159, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/parport/parport_pc.c", i32 3077, i32 4}
!292 = !{ptr @.str.160, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @parport_parse_param._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @parport_parse_param._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @__setup_str_parport_init_mode_setup, !80, !"__setup_str_parport_init_mode_setup", i1 false, i1 false}
!296 = !{ptr @.str.161, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/parport/parport_pc.c", i32 3099, i32 2}
!298 = !{ptr @.str.162, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @parport_init_mode_setup._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @parport_init_mode_setup._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.163, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/parport/parport_pc.c", i32 3102, i32 19}
!303 = !{ptr @.str.164, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/parport/parport_pc.c", i32 3104, i32 19}
!305 = !{ptr @.str.165, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/parport/parport_pc.c", i32 3106, i32 19}
!307 = !{ptr @.str.166, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/parport/parport_pc.c", i32 3108, i32 19}
!309 = !{ptr @.str.167, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/parport/parport_pc.c", i32 3110, i32 19}
!311 = !{ptr @parport_init_mode, !312, !"parport_init_mode", i1 false, i1 false}
!312 = !{!"../drivers/parport/parport_pc.c", i32 2382, i32 12}
!313 = !{ptr @parport_pc_pci_driver, !314, !"parport_pc_pci_driver", i1 false, i1 false}
!314 = !{!"../drivers/parport/parport_pc.c", i32 2865, i32 26}
!315 = !{ptr @parport_pc_pci_tbl, !316, !"parport_pc_pci_tbl", i1 false, i1 false}
!316 = !{!"../drivers/parport/parport_pc.c", i32 2681, i32 35}
!317 = !{ptr @.str.168, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/parport/parport_pc.c", i32 2822, i32 4}
!319 = !{ptr @.str.169, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @parport_pc_pci_probe._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @parport_pc_pci_probe._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.171, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/parport/parport_pc.c", i32 2826, i32 4}
!324 = !{ptr @parport_pc_pci_probe._entry.170, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @parport_pc_pci_probe._entry_ptr.172, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @cards, !327, !"cards", i1 false, i1 false}
!327 = !{!"../drivers/parport/parport_pc.c", i32 2638, i32 3}
!328 = !{ptr @parport_pc_platform_driver, !329, !"parport_pc_platform_driver", i1 false, i1 false}
!329 = !{!"../drivers/parport/parport_pc.c", i32 2980, i32 31}
!330 = !{ptr @io_hi, !331, !"io_hi", i1 false, i1 false}
!331 = !{!"../drivers/parport/parport_pc.c", i32 3050, i32 23}
!332 = !{ptr @.str.173, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/parport/parport_pc.c", i32 1330, i32 3}
!334 = !{ptr @.str.174, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @detect_and_report_it87._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @detect_and_report_it87._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.176, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/parport/parport_pc.c", i32 1344, i32 3}
!339 = !{ptr @detect_and_report_it87._entry.175, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @detect_and_report_it87._entry_ptr.177, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.178, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/parport/parport_pc.c", i32 1305, i32 3}
!343 = !{ptr @.str.179, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @detect_and_report_winbond._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @detect_and_report_winbond._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @__func__.winbond_check, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/parport/parport_pc.c", i32 1183, i32 7}
!348 = distinct !{null, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/parport/parport_pc.c", i32 1097, i32 21}
!350 = distinct !{null, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/parport/parport_pc.c", i32 1110, i32 10}
!352 = distinct !{null, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/parport/parport_pc.c", i32 1112, i32 10}
!354 = distinct !{null, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/parport/parport_pc.c", i32 1114, i32 10}
!356 = distinct !{null, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/parport/parport_pc.c", i32 1116, i32 10}
!358 = distinct !{null, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/parport/parport_pc.c", i32 1118, i32 10}
!360 = distinct !{null, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/parport/parport_pc.c", i32 1120, i32 10}
!362 = distinct !{null, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/parport/parport_pc.c", i32 1122, i32 10}
!364 = distinct !{null, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/parport/parport_pc.c", i32 1124, i32 10}
!366 = distinct !{null, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/parport/parport_pc.c", i32 1127, i32 10}
!368 = distinct !{null, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/parport/parport_pc.c", i32 1130, i32 10}
!370 = distinct !{null, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/parport/parport_pc.c", i32 1133, i32 10}
!372 = !{ptr @.str.192, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/parport/parport_pc.c", i32 1139, i32 3}
!374 = !{ptr @.str.193, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @decode_winbond._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @decode_winbond._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = distinct !{null, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/parport/parport_pc.c", i32 1034, i32 3}
!379 = distinct !{null, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/parport/parport_pc.c", i32 1035, i32 3}
!381 = distinct !{null, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/parport/parport_pc.c", i32 1037, i32 3}
!383 = distinct !{null, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/parport/parport_pc.c", i32 1038, i32 3}
!385 = distinct !{null, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/parport/parport_pc.c", i32 1039, i32 3}
!387 = distinct !{null, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/parport/parport_pc.c", i32 1040, i32 3}
!389 = distinct !{null, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/parport/parport_pc.c", i32 1041, i32 3}
!391 = distinct !{null, !392, !"modes", i1 false, i1 false}
!392 = !{!"../drivers/parport/parport_pc.c", i32 1033, i32 27}
!393 = distinct !{null, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/parport/parport_pc.c", i32 1043, i32 3}
!395 = distinct !{null, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/parport/parport_pc.c", i32 1044, i32 3}
!397 = distinct !{null, !398, !"irqtypes", i1 false, i1 false}
!398 = !{!"../drivers/parport/parport_pc.c", i32 1042, i32 21}
!399 = !{ptr @.str.203, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/parport/parport_pc.c", i32 1068, i32 3}
!401 = !{ptr @.str.204, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @show_parconfig_winbond._entry, !400, !"_entry", i1 false, i1 false}
!403 = !{ptr @show_parconfig_winbond._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.206, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/parport/parport_pc.c", i32 1070, i32 3}
!406 = !{ptr @show_parconfig_winbond._entry.205, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @show_parconfig_winbond._entry_ptr.207, !405, !"_entry_ptr", i1 false, i1 false}
!408 = distinct !{null, !405, !"<string literal>", i1 false, i1 false}
!409 = distinct !{null, !405, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.211, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/parport/parport_pc.c", i32 1073, i32 4}
!412 = !{ptr @show_parconfig_winbond._entry.210, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @show_parconfig_winbond._entry_ptr.212, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.214, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/parport/parport_pc.c", i32 1075, i32 4}
!416 = !{ptr @show_parconfig_winbond._entry.213, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @show_parconfig_winbond._entry_ptr.215, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.217, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/parport/parport_pc.c", i32 1076, i32 3}
!420 = !{ptr @show_parconfig_winbond._entry.216, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @show_parconfig_winbond._entry_ptr.218, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.220, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/parport/parport_pc.c", i32 1078, i32 3}
!424 = !{ptr @show_parconfig_winbond._entry.219, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @show_parconfig_winbond._entry_ptr.221, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.223, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/parport/parport_pc.c", i32 1085, i32 4}
!428 = !{ptr @show_parconfig_winbond._entry.222, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @show_parconfig_winbond._entry_ptr.224, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @__func__.winbond_check2, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/parport/parport_pc.c", i32 1221, i32 7}
!432 = !{ptr @.str.225, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/parport/parport_pc.c", i32 1318, i32 3}
!434 = !{ptr @.str.226, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @detect_and_report_smsc._entry, !433, !"_entry", i1 false, i1 false}
!436 = !{ptr @detect_and_report_smsc._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @__func__.smsc_check, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/parport/parport_pc.c", i32 1262, i32 7}
!439 = distinct !{null, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/parport/parport_pc.c", i32 1161, i32 10}
!441 = distinct !{null, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/parport/parport_pc.c", i32 1164, i32 10}
!443 = distinct !{null, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/parport/parport_pc.c", i32 1166, i32 10}
!445 = distinct !{null, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/parport/parport_pc.c", i32 1168, i32 10}
!447 = !{ptr @.str.231, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/parport/parport_pc.c", i32 1171, i32 3}
!449 = !{ptr @.str.232, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @decode_smsc._entry, !448, !"_entry", i1 false, i1 false}
!451 = !{ptr @decode_smsc._entry_ptr, !448, !"_entry_ptr", i1 false, i1 false}
!452 = distinct !{null, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/parport/parport_pc.c", i32 954, i32 3}
!454 = distinct !{null, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/parport/parport_pc.c", i32 955, i32 3}
!456 = distinct !{null, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/parport/parport_pc.c", i32 957, i32 3}
!458 = distinct !{null, !459, !"modes", i1 false, i1 false}
!459 = !{!"../drivers/parport/parport_pc.c", i32 953, i32 27}
!460 = !{ptr @.str.236, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/parport/parport_pc.c", i32 976, i32 3}
!462 = !{ptr @.str.237, !461, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @show_parconfig_smsc37c669._entry, !461, !"_entry", i1 false, i1 false}
!464 = !{ptr @show_parconfig_smsc37c669._entry_ptr, !461, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.239, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/parport/parport_pc.c", i32 982, i32 3}
!467 = !{ptr @show_parconfig_smsc37c669._entry.238, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @show_parconfig_smsc37c669._entry_ptr.240, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.242, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/parport/parport_pc.c", i32 987, i32 3}
!471 = !{ptr @show_parconfig_smsc37c669._entry.241, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @show_parconfig_smsc37c669._entry_ptr.243, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.245, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/parport/parport_pc.c", i32 990, i32 3}
!475 = !{ptr @show_parconfig_smsc37c669._entry.244, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @show_parconfig_smsc37c669._entry_ptr.246, !474, !"_entry_ptr", i1 false, i1 false}
!477 = distinct !{null, !474, !"<string literal>", i1 false, i1 false}
!478 = distinct !{null, !474, !"<string literal>", i1 false, i1 false}
!479 = distinct !{null, !474, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @show_parconfig_smsc37c669._entry.250, !481, !"_entry", i1 false, i1 false}
!481 = !{!"../drivers/parport/parport_pc.c", i32 1003, i32 4}
!482 = !{ptr @show_parconfig_smsc37c669._entry_ptr.251, !481, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @parport_pc_superio_info, !484, !"parport_pc_superio_info", i1 false, i1 false}
!484 = !{!"../drivers/parport/parport_pc.c", i32 2575, i32 3}
!485 = !{ptr @.str.252, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/parport/parport_pc.c", i32 2413, i32 2}
!487 = !{ptr @.str.253, !486, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @sio_via_probe._entry, !486, !"_entry", i1 false, i1 false}
!489 = !{ptr @sio_via_probe._entry_ptr, !486, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.255, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/parport/parport_pc.c", i32 2417, i32 3}
!492 = !{ptr @sio_via_probe._entry.254, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @sio_via_probe._entry_ptr.256, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.258, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/parport/parport_pc.c", i32 2421, i32 3}
!496 = !{ptr @sio_via_probe._entry.257, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @sio_via_probe._entry_ptr.259, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.261, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/parport/parport_pc.c", i32 2426, i32 3}
!500 = !{ptr @sio_via_probe._entry.260, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @sio_via_probe._entry_ptr.262, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.264, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/parport/parport_pc.c", i32 2432, i32 3}
!504 = !{ptr @sio_via_probe._entry.263, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @sio_via_probe._entry_ptr.265, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.267, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/parport/parport_pc.c", i32 2437, i32 3}
!508 = !{ptr @sio_via_probe._entry.266, !507, !"_entry", i1 false, i1 false}
!509 = !{ptr @sio_via_probe._entry_ptr.268, !507, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.270, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/parport/parport_pc.c", i32 2443, i32 3}
!512 = !{ptr @sio_via_probe._entry.269, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @sio_via_probe._entry_ptr.271, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.273, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/parport/parport_pc.c", i32 2478, i32 2}
!516 = !{ptr @sio_via_probe._entry.272, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @sio_via_probe._entry_ptr.274, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.276, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/parport/parport_pc.c", i32 2483, i32 3}
!520 = !{ptr @sio_via_probe._entry.275, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @sio_via_probe._entry_ptr.277, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.279, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/parport/parport_pc.c", i32 2495, i32 3}
!524 = !{ptr @sio_via_probe._entry.278, !523, !"_entry", i1 false, i1 false}
!525 = !{ptr @sio_via_probe._entry_ptr.280, !523, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.282, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/parport/parport_pc.c", i32 2528, i32 3}
!528 = !{ptr @sio_via_probe._entry.281, !527, !"_entry", i1 false, i1 false}
!529 = !{ptr @sio_via_probe._entry_ptr.283, !527, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @.str.285, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/parport/parport_pc.c", i32 2548, i32 3}
!532 = !{ptr @sio_via_probe._entry.284, !531, !"_entry", i1 false, i1 false}
!533 = !{ptr @sio_via_probe._entry_ptr.286, !531, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @.str.288, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/parport/parport_pc.c", i32 2550, i32 4}
!536 = !{ptr @sio_via_probe._entry.287, !535, !"_entry", i1 false, i1 false}
!537 = !{ptr @sio_via_probe._entry_ptr.289, !535, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @.str.291, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/parport/parport_pc.c", i32 2552, i32 4}
!540 = !{ptr @sio_via_probe._entry.290, !539, !"_entry", i1 false, i1 false}
!541 = !{ptr @sio_via_probe._entry_ptr.292, !539, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.294, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/parport/parport_pc.c", i32 2553, i32 3}
!544 = !{ptr @sio_via_probe._entry.293, !543, !"_entry", i1 false, i1 false}
!545 = !{ptr @sio_via_probe._entry_ptr.295, !543, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @.str.297, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/parport/parport_pc.c", i32 2557, i32 2}
!548 = !{ptr @sio_via_probe._entry.296, !547, !"_entry", i1 false, i1 false}
!549 = !{ptr @sio_via_probe._entry_ptr.298, !547, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @via_686a_data, !551, !"via_686a_data", i1 false, i1 false}
!551 = !{!"../drivers/parport/parport_pc.c", i32 2385, i32 35}
!552 = !{ptr @via_8231_data, !553, !"via_8231_data", i1 false, i1 false}
!553 = !{!"../drivers/parport/parport_pc.c", i32 2394, i32 35}
!554 = !{ptr @.str.299, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/parport/parport_pc.c", i32 2289, i32 2}
!556 = !{ptr @.str.300, !555, !"<string literal>", i1 false, i1 false}
!557 = !{ptr @sio_ite_8872_probe.__UNIQUE_ID_ddebug238, !555, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!558 = !{ptr @.str.301, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/parport/parport_pc.c", i32 2293, i32 7}
!560 = !{ptr @.str.302, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/parport/parport_pc.c", i32 2306, i32 3}
!562 = !{ptr @sio_ite_8872_probe._entry, !561, !"_entry", i1 false, i1 false}
!563 = !{ptr @sio_ite_8872_probe._entry_ptr, !561, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @.str.304, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/parport/parport_pc.c", i32 2315, i32 3}
!566 = !{ptr @sio_ite_8872_probe._entry.303, !565, !"_entry", i1 false, i1 false}
!567 = !{ptr @sio_ite_8872_probe._entry_ptr.305, !565, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @.str.307, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/parport/parport_pc.c", i32 2319, i32 3}
!570 = !{ptr @sio_ite_8872_probe._entry.306, !569, !"_entry", i1 false, i1 false}
!571 = !{ptr @sio_ite_8872_probe._entry_ptr.308, !569, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @.str.310, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/parport/parport_pc.c", i32 2323, i32 3}
!574 = !{ptr @sio_ite_8872_probe._entry.309, !573, !"_entry", i1 false, i1 false}
!575 = !{ptr @sio_ite_8872_probe._entry_ptr.311, !573, !"_entry_ptr", i1 false, i1 false}
!576 = !{ptr @.str.313, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/parport/parport_pc.c", i32 2327, i32 3}
!578 = !{ptr @sio_ite_8872_probe._entry.312, !577, !"_entry", i1 false, i1 false}
!579 = !{ptr @sio_ite_8872_probe._entry_ptr.314, !577, !"_entry_ptr", i1 false, i1 false}
!580 = !{ptr @.str.316, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/parport/parport_pc.c", i32 2331, i32 3}
!582 = !{ptr @sio_ite_8872_probe._entry.315, !581, !"_entry", i1 false, i1 false}
!583 = !{ptr @sio_ite_8872_probe._entry_ptr.317, !581, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @.str.319, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/parport/parport_pc.c", i32 2335, i32 3}
!586 = !{ptr @sio_ite_8872_probe._entry.318, !585, !"_entry", i1 false, i1 false}
!587 = !{ptr @sio_ite_8872_probe._entry_ptr.320, !585, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @.str.322, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/parport/parport_pc.c", i32 2336, i32 3}
!590 = !{ptr @sio_ite_8872_probe._entry.321, !589, !"_entry", i1 false, i1 false}
!591 = !{ptr @sio_ite_8872_probe._entry_ptr.323, !589, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.324, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/parport/parport_pc.c", i32 2354, i32 2}
!594 = !{ptr @sio_ite_8872_probe.__UNIQUE_ID_ddebug239, !593, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!595 = !{ptr @.str.325, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/parport/parport_pc.c", i32 2355, i32 2}
!597 = !{ptr @sio_ite_8872_probe.__UNIQUE_ID_ddebug240, !596, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!598 = !{ptr @.str.326, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/parport/parport_pc.c", i32 2356, i32 2}
!600 = !{ptr @sio_ite_8872_probe.__UNIQUE_ID_ddebug241, !599, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!601 = !{ptr @.str.328, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/parport/parport_pc.c", i32 2369, i32 3}
!603 = !{ptr @sio_ite_8872_probe._entry.327, !602, !"_entry", i1 false, i1 false}
!604 = !{ptr @sio_ite_8872_probe._entry_ptr.329, !602, !"_entry_ptr", i1 false, i1 false}
!605 = !{ptr @sio_ite_8872_probe._entry.330, !606, !"_entry", i1 false, i1 false}
!606 = !{!"../drivers/parport/parport_pc.c", i32 2372, i32 4}
!607 = !{ptr @sio_ite_8872_probe._entry_ptr.331, !606, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @sio_ite_8872_probe._entry.332, !609, !"_entry", i1 false, i1 false}
!609 = !{!"../drivers/parport/parport_pc.c", i32 2373, i32 3}
!610 = !{ptr @sio_ite_8872_probe._entry_ptr.333, !609, !"_entry_ptr", i1 false, i1 false}
!611 = !{!"sp"}
!612 = !{i32 1, !"wchar_size", i32 2}
!613 = !{i32 1, !"min_enum_size", i32 4}
!614 = !{i32 8, !"branch-target-enforcement", i32 0}
!615 = !{i32 8, !"sign-return-address", i32 0}
!616 = !{i32 8, !"sign-return-address-all", i32 0}
!617 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!618 = !{i32 7, !"uwtable", i32 1}
!619 = !{i32 7, !"frame-pointer", i32 2}
!620 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!621 = !{i64 2154711271}
!622 = !{i64 4952225}
!623 = !{i64 4952620}
!624 = !{i64 2154711734}
!625 = !{i64 2154711980}
!626 = !{i64 2154712443}
!627 = !{i64 2154712691}
!628 = !{i64 2154595852}
!629 = !{i64 2154596487}
!630 = !{i64 2154718782}
!631 = !{i64 2154719245}
!632 = !{i64 2154719497}
!633 = !{i64 2154719960}
!634 = !{i64 2154720291}
!635 = !{i64 2154720622}
!636 = !{i64 2149038456, i64 2149038461, i64 2149038474, i64 2149038518, i64 2149038552, i64 2149038573}
!637 = !{i64 2154606588}
!638 = !{i64 2154720991}
!639 = !{i64 2154721239}
!640 = !{i64 2154603847}
!641 = !{i64 2154721622}
!642 = !{i64 2154748634}
!643 = !{i64 2154748921}
!644 = !{i64 2154748214}
!645 = !{i64 2154596909}
!646 = !{i64 2154722180}
!647 = !{i64 2154722429}
!648 = !{i64 2154724380}
!649 = !{i64 2154725253}
!650 = !{i64 2154727000}
!651 = !{i64 2154727463}
!652 = !{i64 2154729493}
!653 = !{i64 2154632955}
!654 = !{i64 2154633205}
!655 = !{i64 2154640300}
!656 = !{i64 2154640550}
!657 = !{!"auto-init"}
!658 = !{i64 2154601590}
!659 = !{i64 2154613919}
!660 = !{i64 2154614163}
!661 = !{i64 2154613071}
!662 = !{i64 2154613456}
!663 = !{i64 2154614682}
!664 = !{i64 2154615430}
!665 = !{i64 2154615767}
!666 = !{i64 2154618285}
!667 = !{i64 2154618624}
!668 = !{i64 2154618961}
!669 = !{i64 2154619734}
!670 = !{i64 2154619999}
!671 = !{i64 2154620470}
!672 = !{i64 2154621024}
!673 = !{i64 2154621363}
!674 = !{i64 2154621700}
!675 = !{i64 2154622255}
!676 = !{i64 2154622520}
!677 = !{i64 2154622991}
!678 = !{i64 2154749422}
!679 = !{i64 2154749800}
!680 = !{i64 2154750311}
!681 = !{i64 2154750560}
!682 = !{i64 2154751102}
!683 = !{i64 2154751433}
!684 = !{i64 2154611108}
!685 = !{i64 2154611442}
!686 = !{!"branch_weights", i32 2000, i32 1}
!687 = !{i64 2154612350}
!688 = !{i64 2154623378}
!689 = !{i64 2154627349}
!690 = !{i64 2154628785}
!691 = !{i64 2154628991}
!692 = !{i64 2154704135}
!693 = !{i64 2154704341}
!694 = !{i64 2154704660}
!695 = !{i64 2154704979}
!696 = !{i64 2154705298}
!697 = !{i64 2154705617}
!698 = !{i64 2154705999}
!699 = !{i64 2154706205}
!700 = !{i64 2154706587}
!701 = !{i64 2154708330}
!702 = !{i64 2154708649}
!703 = !{i64 2154708968}
!704 = !{i64 2154709350}
!705 = !{i64 2154709556}
!706 = !{i64 2154709876}
!707 = !{i64 2154710195}
!708 = !{i64 2154710514}
!709 = !{i64 2154710836}
!710 = !{i64 2154681562}
!711 = !{i64 2154681766}
!712 = !{i64 2154682150}
!713 = !{i64 2154682354}
!714 = !{i64 2154682738}
!715 = !{i64 2154682942}
!716 = !{i64 2154683326}
!717 = !{i64 2154683529}
!718 = !{i64 2154683843}
!719 = !{i64 2154684158}
!720 = !{i64 2154684542}
!721 = !{i64 2154684746}
!722 = !{i64 2154685130}
!723 = !{i64 2154685334}
!724 = !{i64 2154685718}
!725 = !{i64 2154685922}
!726 = !{i64 2154686240}
!727 = !{i64 2154686744}
!728 = !{i64 2154687017}
!729 = !{i64 2154687290}
!730 = !{i64 2154687498}
!731 = !{i64 2154687886}
!732 = !{i64 2154688094}
!733 = !{i64 2154688482}
!734 = !{i64 2154688690}
!735 = !{i64 2154689078}
!736 = !{i64 2154689281}
!737 = !{i64 2154689600}
!738 = !{i64 2154689988}
!739 = !{i64 2154690196}
!740 = !{i64 2154690584}
!741 = !{i64 2154690792}
!742 = !{i64 2154691180}
!743 = !{i64 2154691384}
!744 = !{i64 2154691705}
!745 = !{i64 2154692030}
!746 = !{i64 2154692359}
!747 = !{i64 2154660486}
!748 = !{i64 2154660800}
!749 = !{i64 2154661115}
!750 = !{i64 2154661434}
!751 = !{i64 2154661753}
!752 = !{i64 2154662137}
!753 = !{i64 2154662341}
!754 = !{i64 2154662725}
!755 = !{i64 2154662929}
!756 = !{i64 2154663313}
!757 = !{i64 2154663517}
!758 = !{i64 2154663901}
!759 = !{i64 2154664105}
!760 = !{i64 2154664489}
!761 = !{i64 2154664693}
!762 = !{i64 2154665077}
!763 = !{i64 2154665281}
!764 = !{i64 2154692867}
!765 = !{i64 2154693071}
!766 = !{i64 2154693455}
!767 = !{i64 2154693659}
!768 = !{i64 2154694043}
!769 = !{i64 2154694247}
!770 = !{i64 2154694631}
!771 = !{i64 2154694835}
!772 = !{i64 2154695219}
!773 = !{i64 2154695422}
!774 = !{i64 2154695736}
!775 = !{i64 2154696051}
!776 = !{i64 2154696435}
!777 = !{i64 2154696639}
!778 = !{i64 2154697023}
!779 = !{i64 2154697227}
!780 = !{i64 2154697611}
!781 = !{i64 2154697815}
!782 = !{i64 2154698199}
!783 = !{i64 2154698403}
!784 = !{i64 2154698721}
!785 = !{i64 2154646311}
!786 = !{i64 2154646625}
!787 = !{i64 2154646937}
!788 = !{i64 2154647321}
!789 = !{i64 2154647522}
!790 = !{i64 2154647906}
!791 = !{i64 2154648110}
!792 = !{i64 2154648494}
!793 = !{i64 2154648698}
!794 = !{i64 2154649082}
!795 = !{i64 2154649286}
!796 = !{i64 2154649670}
!797 = !{i64 2154649874}
!798 = !{i64 2154650258}
!799 = !{i64 2154650462}
!800 = !{i64 2154823387}
!801 = !{i64 2154823778}
!802 = !{i64 2154824014}
!803 = !{i64 2154824405}
!804 = !{i64 2154824649}
!805 = !{i64 2154824975}
!806 = !{i64 2154825335}
!807 = !{i64 2154825662}
!808 = !{i64 2154826009}
!809 = !{i64 2154826400}
!810 = !{i64 2154828191}
!811 = !{i64 2154828526}
!812 = !{i64 2154787654}
!813 = !{i64 2154789647}
