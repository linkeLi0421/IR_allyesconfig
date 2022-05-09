; ModuleID = '/llk/IR_all_yes/drivers/scsi/aacraid/commsup.c_pt.bc'
source_filename = "../drivers/scsi/aacraid/commsup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aac_common = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.aac_dev = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.adapter_ops, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [32 x i32], [32 x %struct.atomic_t], i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.spinlock, %union.anon.81, ptr, ptr, ptr, i32, i32, %struct.aac_adapter_info, %struct.aac_supplement_adapter_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, i32, i32, i32, i32, %struct.atomic_t, i32, [32 x %struct.msix_entry], [32 x %struct.aac_msix_ctx], [5 x [256 x %struct.aac_hba_map_info]], ptr, i8, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.adapter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { ptr, ptr }
%struct.aac_adapter_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { [18 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], [12 x i8], i32, %struct.anon.86, i32, i32, i32, i32, i32, [12 x i8], [8 x i8], i32, i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i64, i32, [12 x i8], i16, i16, i32, i16, i16, i16, i16, [68 x i32] }
%struct.anon.86 = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.msix_entry = type { i32, i16 }
%struct.aac_msix_ctx = type { i32, ptr }
%struct.aac_hba_map_info = type { i32, i8, i8, i16, i32, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.80, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.80 = type { ptr }
%struct.fib = type { ptr, i16, i16, ptr, %struct.completion, %struct.spinlock, i32, ptr, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, i32, i32, i32 }
%struct._r7 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_fibhdr = type { i32, i16, i8, i8, i16, i16, i32, %union.anon, i32, i32, i32 }
%union.anon = type { i32 }
%struct.aac_entry = type { i32, i32 }
%struct.aac_queue = type { i64, ptr, %struct.aac_qhdr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.list_head, %struct.atomic_t, ptr }
%struct.aac_qhdr = type { i64, ptr, ptr }
%struct.aac_hba_cmd_req = type { i8, i8, i8, i8, i32, i32, i32, [16 x i8], [8 x i8], i32, i8, i8, i16, i32, i32, i32, i32, [92 x %struct.aac_hba_sgl] }
%struct.aac_hba_sgl = type { i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.57 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.aac_driver_ident = type { ptr, ptr, ptr, ptr, i16, i32 }
%struct.hw_fib = type { %struct.aac_fibhdr, [480 x i8] }
%struct.fsa_dev_info = type { i64, i64, i32, i32, i32, i16, i8, i8, i8, i8, i8, [8 x i8], %struct.sense_data, i32, [16 x i8] }
%struct.sense_data = type { i8, i8, i8, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, [2 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.src_mu_registers = type { [6 x i32], [2 x i32], i32, i32, [3 x i32], i32, [25 x i32], i32, i32, [3 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.aac_aifcmd = type { i32, i32, [1 x i8] }

@aac_fib_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fibptr->event_lock\00", [44 x i8] zeroinitializer }, align 32
@aac_config = external dso_local local_unnamed_addr global %struct.aac_common, align 4
@aac_fib_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014aac_fib_free, XferState != 0, fibptr = 0x%p, XferState = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aac_fib_free\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/aacraid/commsup.c\00", [33 x i8] zeroinitializer }, align 32
@aac_fib_free._entry_ptr = internal global ptr @aac_fib_free._entry, section ".printk_index", align 4
@aac_queue_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013GetEntries failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aac_queue_get\00", [18 x i8] zeroinitializer }, align 32
@aac_queue_get._entry_ptr = internal global ptr @aac_queue_get._entry, section ".printk_index", align 4
@aac_fib_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016No management Fibs Available:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aac_fib_send\00", [19 x i8] zeroinitializer }, align 32
@aac_fib_send._entry_ptr = internal global ptr @aac_fib_send._entry, section ".printk_index", align 4
@aac_fib_send._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013aac_fib_send: returned -EBUSY\0A\00", [63 x i8] zeroinitializer }, align 32
@aac_fib_send._entry_ptr.10 = internal global ptr @aac_fib_send._entry.8, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@aac_fib_send._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [217 x i8], [39 x i8] } { [217 x i8] c"\013aacraid: aac_fib_send: first asynchronous command timed out.\0AUsually a result of a PCI interrupt routing problem;\0Aupdate mother board BIOS or consider utilizing one of\0Athe SAFE mode kernel options (acpi, apic etc)\0A\00", [39 x i8] zeroinitializer }, align 32
@aac_fib_send._entry_ptr.13 = internal global ptr @aac_fib_send._entry.11, section ".printk_index", align 4
@aac_fib_send._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\013aacraid: aac_fib_send: adapter blinkLED 0x%x.\0AUsually a result of a serious unrecoverable hardware problem\0A\00", [50 x i8] zeroinitializer }, align 32
@aac_fib_send._entry_ptr.16 = internal global ptr @aac_fib_send._entry.14, section ".printk_index", align 4
@aac_fib_adapter_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014aac_fib_adapter_complete: Unknown xferstate detected.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aac_fib_adapter_complete\00", [39 x i8] zeroinitializer }, align 32
@aac_fib_adapter_complete._entry_ptr = internal global ptr @aac_fib_adapter_complete._entry, section ".printk_index", align 4
@aac_printf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\014%s:%s\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aac_printf\00", [21 x i8] zeroinitializer }, align 32
@aac_printf._entry_ptr = internal global ptr @aac_printf._entry, section ".printk_index", align 4
@aac_printf._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016%s:%s\00", [24 x i8] zeroinitializer }, align 32
@aac_printf._entry_ptr.23 = internal global ptr @aac_printf._entry.21, section ".printk_index", align 4
@aac_check_reset = external dso_local local_unnamed_addr global i32, align 4
@aif_timeout = external dso_local local_unnamed_addr global i32, align 4
@aac_check_health._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014aifd: didn't allocate NewFib.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aac_check_health\00", [47 x i8] zeroinitializer }, align 32
@aac_check_health._entry_ptr = internal global ptr @aac_check_health._entry, section ".printk_index", align 4
@aac_check_health._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 1811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: Host adapter is dead (or got a PCI error) %d\0A\00", [44 x i8] zeroinitializer }, align 32
@aac_check_health._entry_ptr.28 = internal global ptr @aac_check_health._entry.26, section ".printk_index", align 4
@aac_check_health._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.3, i32 1815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Host adapter BLINK LED 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@aac_check_health._entry_ptr.31 = internal global ptr @aac_check_health._entry.29, section ".printk_index", align 4
@check_interval = external dso_local local_unnamed_addr global i32, align 4
@update_interval = external dso_local local_unnamed_addr global i32, align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aacraid\00", [24 x i8] zeroinitializer }, align 32
@aac_acquire_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 2538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s%d: Failed to register IRQ for vector %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aac_acquire_irq\00", [16 x i8] zeroinitializer }, align 32
@aac_acquire_irq._entry_ptr = internal global ptr @aac_acquire_irq._entry, section ".printk_index", align 4
@aac_acquire_irq._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 2556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s%d: Interrupt unavailable.\0A\00", [32 x i8] zeroinitializer }, align 32
@aac_acquire_irq._entry_ptr.38 = internal global ptr @aac_acquire_irq._entry.36, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@aac_get_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014Queue %d full, %u outstanding.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aac_get_entry\00", [18 x i8] zeroinitializer }, align 32
@aac_get_entry._entry_ptr = internal global ptr @aac_get_entry._entry, section ".printk_index", align 4
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@_aac_reset_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1618, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Scheduling bus rescan\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_aac_reset_adapter\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_aac_reset_adapter._entry_ptr = internal global ptr @_aac_reset_adapter._entry, section ".printk_index", align 4
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aac_handle_sa_aif._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014 AIF not cleared by firmware - %d/%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aac_handle_sa_aif\00", [46 x i8] zeroinitializer }, align 32
@aac_handle_sa_aif._entry_ptr = internal global ptr @aac_handle_sa_aif._entry, section ".printk_index", align 4
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Device online - %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"array created\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enclosure services event\00", [39 x i8] zeroinitializer }, align 32
@aac_handle_aif_bu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 1039, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Backup unit had cache data loss - [%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aac_handle_aif_bu\00", [46 x i8] zeroinitializer }, align 32
@aac_handle_aif_bu._entry_ptr = internal global ptr @aac_handle_aif_bu._entry, section ".printk_index", align 4
@aac_handle_aif_bu._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 1041, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Backup Unit had cache data loss\0A\00", [63 x i8] zeroinitializer }, align 32
@aac_handle_aif_bu._entry_ptr.56 = internal global ptr @aac_handle_aif_bu._entry.54, section ".printk_index", align 4
@aac_handle_aif_bu._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.3, i32 1046, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DDR cache data recovered successfully - [%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@aac_handle_aif_bu._entry_ptr.59 = internal global ptr @aac_handle_aif_bu._entry.57, section ".printk_index", align 4
@aac_handle_aif_bu._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.3, i32 1048, ptr @.str.45, ptr @.str.46 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DDR cache data recovered successfully\0A\00", [57 x i8] zeroinitializer }, align 32
@aac_handle_aif_bu._entry_ptr.62 = internal global ptr @aac_handle_aif_bu._entry.60, section ".printk_index", align 4
@wakeup_fibctx_threads._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 2120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014aifd: didn't allocate NewFib\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wakeup_fibctx_threads\00", [42 x i8] zeroinitializer }, align 32
@wakeup_fibctx_threads._entry_ptr = internal global ptr @wakeup_fibctx_threads._entry, section ".printk_index", align 4
@__const.aac_send_safw_hostttime.wellness_str = private unnamed_addr constant [23 x i8] c"<HW>TD\08\00\00\00\00\00\00\00\00\00DW\00\00ZZ\00", align 1
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 16777216, i64 33554432, i64 67108864]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 200, i64 201, i64 203]
@__sancov_gen_cov_switch_values.74 = internal global [10 x i64] [i64 8, i64 32, i64 4, i64 13, i64 14, i64 15, i64 16, i64 30, i64 31, i64 42]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 26, i64 31, i64 32, i64 33]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 178, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 297, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 429, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 587, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 623, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 655, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 668, i32 14 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 929, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1020, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1022, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1800, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1810, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1815, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2536, i32 9 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2537, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2555, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 87, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 396, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1584, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1618, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1997, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1427, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1038, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1041, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1045, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1048, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private constant [34 x i8] c"../drivers/scsi/aacraid/commsup.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 2120, i32 4 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @_aac_reset_adapter._entry, ptr @_aac_reset_adapter._entry_ptr, ptr @aac_acquire_irq._entry, ptr @aac_acquire_irq._entry.36, ptr @aac_acquire_irq._entry_ptr, ptr @aac_acquire_irq._entry_ptr.38, ptr @aac_check_health._entry, ptr @aac_check_health._entry.26, ptr @aac_check_health._entry.29, ptr @aac_check_health._entry_ptr, ptr @aac_check_health._entry_ptr.28, ptr @aac_check_health._entry_ptr.31, ptr @aac_fib_adapter_complete._entry, ptr @aac_fib_adapter_complete._entry_ptr, ptr @aac_fib_free._entry, ptr @aac_fib_free._entry_ptr, ptr @aac_fib_send._entry, ptr @aac_fib_send._entry.11, ptr @aac_fib_send._entry.14, ptr @aac_fib_send._entry.8, ptr @aac_fib_send._entry_ptr, ptr @aac_fib_send._entry_ptr.10, ptr @aac_fib_send._entry_ptr.13, ptr @aac_fib_send._entry_ptr.16, ptr @aac_get_entry._entry, ptr @aac_get_entry._entry_ptr, ptr @aac_handle_aif_bu._entry, ptr @aac_handle_aif_bu._entry.54, ptr @aac_handle_aif_bu._entry.57, ptr @aac_handle_aif_bu._entry.60, ptr @aac_handle_aif_bu._entry_ptr, ptr @aac_handle_aif_bu._entry_ptr.56, ptr @aac_handle_aif_bu._entry_ptr.59, ptr @aac_handle_aif_bu._entry_ptr.62, ptr @aac_handle_sa_aif._entry, ptr @aac_handle_sa_aif._entry_ptr, ptr @aac_printf._entry, ptr @aac_printf._entry.21, ptr @aac_printf._entry_ptr, ptr @aac_printf._entry_ptr.23, ptr @aac_queue_get._entry, ptr @aac_queue_get._entry_ptr, ptr @wakeup_fibctx_threads._entry, ptr @wakeup_fibctx_threads._entry_ptr, ptr @aac_fib_setup.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @init_completion.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_fib_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_fib_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_queue_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_fib_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_fib_send._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_fib_send._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 217, i32 256, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_fib_send._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_fib_adapter_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_printf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_printf._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_check_health._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_check_health._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_check_health._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_acquire_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_acquire_irq._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_get_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_aac_reset_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_handle_sa_aif._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_handle_aif_bu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_handle_aif_bu._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_handle_aif_bu._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_handle_aif_bu._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_fibctx_threads._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_fib_map_free(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_fib_va = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_cmd_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %max_cmd_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_cmd_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %4 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scsi_host_ptr, align 8
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %can_queue, align 4
  %add = add i32 %7, 8
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_fib_size, align 8
  %add2 = add i32 %9, 32
  %mul = mul i32 %add2, %add
  %sub = add i32 %mul, 31
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %hw_fib_pa = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 7
  %12 = ptrtoint ptr %hw_fib_pa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_fib_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %dev4, i32 noundef %sub, ptr noundef nonnull %1, i32 noundef %13, i32 noundef 0) #13
  %14 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %hw_fib_va, align 4
  %15 = ptrtoint ptr %hw_fib_pa to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %hw_fib_pa, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_fib_vector_assign(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_host_ptr, align 8
  %can_queue25 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %can_queue25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %can_queue25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %3)
  %cmp27.not = icmp eq i32 %3, -8
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fibs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fibs, align 4
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 74
  %vector_cap = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 75
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %3, %for.body.lr.ph ], [ %18, %for.inc.for.body_crit_edge ]
  %fibptr.031 = phi ptr [ %5, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %vector.029 = phi i32 [ 1, %for.body.lr.ph ], [ %vector.1, %for.inc.for.body_crit_edge ]
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1 = icmp eq i32 %8, 1
  br i1 %cmp1, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %sub = add i32 %6, 7
  %9 = ptrtoint ptr %vector_cap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vector_cap, align 4
  %sub5 = sub i32 %sub, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %i.028, i32 %sub5)
  %cmp6 = icmp ugt i32 %i.028, %sub5
  br i1 %cmp6, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %vector_no = getelementptr inbounds %struct.fib, ptr %fibptr.031, i32 0, i32 12
  %11 = ptrtoint ptr %vector_no to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %vector_no, align 4
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %vector_no7 = getelementptr inbounds %struct.fib, ptr %fibptr.031, i32 0, i32 12
  %12 = ptrtoint ptr %vector_no7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %vector.029, ptr %vector_no7, align 4
  %inc = add i32 %vector.029, 1
  %13 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %14)
  %cmp9 = icmp eq i32 %inc, %14
  %spec.store.select = select i1 %cmp9, i32 1, i32 %inc
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %vector.1 = phi i32 [ %vector.029, %if.then ], [ %spec.store.select, %if.else ]
  %inc12 = add nuw i32 %i.028, 1
  %incdec.ptr = getelementptr %struct.fib, ptr %fibptr.031, i32 1
  %15 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scsi_host_ptr, align 8
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %can_queue, align 4
  %add = add i32 %18, 8
  %cmp = icmp ult i32 %inc12, %add
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_fib_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %max_fib_size.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 3
  %pdev.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %max_cmd_size12.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 6
  %scsi_host_ptr.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %hw_fib_pa.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 7
  %hw_fib_va.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 8
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 59
  %init = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = ptrtoint ptr %max_fib_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_fib_size.i, align 8
  %2 = call i32 @llvm.umax.i32(i32 %1, i32 2048)
  %3 = ptrtoint ptr %max_cmd_size12.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %max_cmd_size12.i, align 4
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %add.i = add i32 %2, 32
  %6 = ptrtoint ptr %scsi_host_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scsi_host_ptr.i, align 8
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %can_queue.i, align 4
  %add13.i = add i32 %9, 8
  %mul.i = mul i32 %add13.i, %add.i
  %add14.i = add i32 %mul.i, 31
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev11.i, i32 noundef %add14.i, ptr noundef %hw_fib_pa.i, i32 noundef 3264, i32 noundef 0) #13
  %10 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %hw_fib_va.i, align 4
  %cmp16.i = icmp eq ptr %call.i.i, null
  br i1 %cmp16.i, label %land.rhs, label %if.end11

land.rhs:                                         ; preds = %while.cond
  %11 = ptrtoint ptr %scsi_host_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scsi_host_ptr.i, align 8
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %can_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %14)
  %cmp1 = icmp sgt i32 %14, 56
  br i1 %cmp1, label %while.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %add = add nuw i32 %14, 8
  %shr = ashr i32 %add, 1
  %sub = add nsw i32 %shr, -8
  %15 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %can_queue, align 4
  %16 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %comm_interface, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %17)
  %cmp6.not = icmp eq i8 %17, 5
  br i1 %cmp6.not, label %while.body.while.cond.backedge_crit_edge, label %if.then

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %18 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %19 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init, align 8
  %max_io_commands = getelementptr inbounds %struct._r7, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %max_io_commands to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %max_io_commands, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

if.end11:                                         ; preds = %while.cond
  %22 = ptrtoint ptr %max_cmd_size12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_cmd_size12.i, align 4
  %add12 = add i32 %23, 32
  %24 = ptrtoint ptr %scsi_host_ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scsi_host_ptr.i, align 8
  %can_queue14 = getelementptr inbounds %struct.Scsi_Host, ptr %25, i32 0, i32 26
  %26 = ptrtoint ptr %can_queue14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %can_queue14, align 4
  %add15 = add i32 %27, 8
  %mul = mul i32 %add15, %add12
  %28 = call ptr @memset(ptr %call.i.i, i32 0, i32 %mul)
  %fibs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 10
  %29 = load ptr, ptr %scsi_host_ptr.i, align 8
  %can_queue24120 = getelementptr inbounds %struct.Scsi_Host, ptr %29, i32 0, i32 26
  %30 = ptrtoint ptr %can_queue24120 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %can_queue24120, align 4
  %add25121 = add i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add25121)
  %cmp26122 = icmp sgt i32 %add25121, 0
  br i1 %cmp26122, label %for.body.preheader, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %if.end11
  %32 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fibs, align 4
  %34 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_fib_va.i, align 4
  %36 = ptrtoint ptr %hw_fib_pa.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hw_fib_pa.i, align 8
  %add17 = add i32 %37, 31
  %and = and i32 %add17, -32
  %sub20 = sub i32 %and, %37
  %add.ptr = getelementptr i8, ptr %35, i32 %sub20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0126 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %hw_fib_pa.0.in125 = phi i32 [ %add43, %for.body.for.body_crit_edge ], [ %and, %for.body.preheader ]
  %add.ptr.pn124 = phi ptr [ %add.ptr40, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %fibptr.0123 = phi ptr [ %add.ptr32, %for.body.for.body_crit_edge ], [ %33, %for.body.preheader ]
  %hw_fib_pa.0 = add i32 %hw_fib_pa.0.in125, 32
  %hw_fib.0 = getelementptr i8, ptr %add.ptr.pn124, i32 32
  %flags = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 9
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %flags, align 4
  %size = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 2
  %39 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 164, ptr %size, align 2
  %dev28 = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 3
  %40 = ptrtoint ptr %dev28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev, ptr %dev28, align 4
  %hw_fib_va29 = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 13
  %41 = ptrtoint ptr %hw_fib_va29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %hw_fib.0, ptr %hw_fib_va29, align 4
  %data = getelementptr i8, ptr %add.ptr.pn124, i32 64
  %data31 = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 11
  %42 = ptrtoint ptr %data31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %data, ptr %data31, align 4
  %add.ptr32 = getelementptr %struct.fib, ptr %fibptr.0123, i32 1
  %43 = ptrtoint ptr %fibptr.0123 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr32, ptr %fibptr.0123, align 4
  %event_wait = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 4
  %44 = ptrtoint ptr %event_wait to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %event_wait, align 4
  %wait.i = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_completion.__key) #13
  %event_lock = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %event_lock, ptr noundef nonnull @.str, ptr noundef nonnull @aac_fib_setup.__key, i16 noundef signext 3) #13
  %45 = ptrtoint ptr %hw_fib.0 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %hw_fib.0, align 4
  %46 = ptrtoint ptr %max_fib_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_fib_size.i, align 8
  %conv34 = trunc i32 %47 to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv34)
  %SenderSize = getelementptr i8, ptr %add.ptr.pn124, i32 42
  %49 = ptrtoint ptr %SenderSize to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %SenderSize, align 2
  %hw_fib_pa36 = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 14
  %50 = ptrtoint ptr %hw_fib_pa36 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %hw_fib_pa.0, ptr %hw_fib_pa36, align 4
  %add37 = add i32 %hw_fib_pa.0.in125, 128
  %hw_sgl_pa = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 15
  %51 = ptrtoint ptr %hw_sgl_pa to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add37, ptr %hw_sgl_pa, align 4
  %add38 = add i32 %hw_fib_pa.0.in125, 1568
  %hw_error_pa = getelementptr inbounds %struct.fib, ptr %fibptr.0123, i32 0, i32 16
  %52 = ptrtoint ptr %hw_error_pa to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add38, ptr %hw_error_pa, align 4
  %53 = ptrtoint ptr %max_cmd_size12.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_cmd_size12.i, align 4
  %add.ptr40 = getelementptr i8, ptr %hw_fib.0, i32 %54
  %add43 = add i32 %54, %hw_fib_pa.0
  %inc = add nuw nsw i32 %i.0126, 1
  %55 = ptrtoint ptr %scsi_host_ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %scsi_host_ptr.i, align 8
  %can_queue24 = getelementptr inbounds %struct.Scsi_Host, ptr %56, i32 0, i32 26
  %57 = ptrtoint ptr %can_queue24 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %can_queue24, align 4
  %add25 = add i32 %58, 8
  %cmp26 = icmp slt i32 %inc, %add25
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  %.lcssa = phi i32 [ %31, %if.end11.for.end_crit_edge ], [ %58, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %.lcssa)
  %cmp27.not.i = icmp eq i32 %.lcssa, -8
  br i1 %cmp27.not.i, label %for.end.aac_fib_vector_assign.exit_crit_edge, label %for.body.lr.ph.i

for.end.aac_fib_vector_assign.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %aac_fib_vector_assign.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %59 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fibs, align 4
  %max_msix.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 74
  %vector_cap.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 75
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %61 = phi i32 [ %.lcssa, %for.body.lr.ph.i ], [ %73, %for.inc.i.for.body.i_crit_edge ]
  %fibptr.031.i = phi ptr [ %60, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %vector.029.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %vector.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc12.i, %for.inc.i.for.body.i_crit_edge ]
  %62 = ptrtoint ptr %max_msix.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_msix.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp1.i = icmp eq i32 %63, 1
  br i1 %cmp1.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %sub.i = add i32 %61, 7
  %64 = ptrtoint ptr %vector_cap.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vector_cap.i, align 4
  %sub5.i = sub i32 %sub.i, %65
  call void @__sanitizer_cov_trace_cmp4(i32 %i.028.i, i32 %sub5.i)
  %cmp6.i = icmp ugt i32 %i.028.i, %sub5.i
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %vector_no.i = getelementptr inbounds %struct.fib, ptr %fibptr.031.i, i32 0, i32 12
  %66 = ptrtoint ptr %vector_no.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %vector_no.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  %vector_no7.i = getelementptr inbounds %struct.fib, ptr %fibptr.031.i, i32 0, i32 12
  %67 = ptrtoint ptr %vector_no7.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %vector.029.i, ptr %vector_no7.i, align 4
  %inc.i = add i32 %vector.029.i, 1
  %68 = ptrtoint ptr %max_msix.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_msix.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %69)
  %cmp9.i = icmp eq i32 %inc.i, %69
  %spec.store.select.i = select i1 %cmp9.i, i32 1, i32 %inc.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %vector.1.i = phi i32 [ %vector.029.i, %if.then.i ], [ %spec.store.select.i, %if.else.i ]
  %inc12.i = add nuw i32 %i.028.i, 1
  %incdec.ptr.i = getelementptr %struct.fib, ptr %fibptr.031.i, i32 1
  %70 = ptrtoint ptr %scsi_host_ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %scsi_host_ptr.i, align 8
  %can_queue.i110 = getelementptr inbounds %struct.Scsi_Host, ptr %71, i32 0, i32 26
  %72 = ptrtoint ptr %can_queue.i110 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %can_queue.i110, align 4
  %add.i111 = add i32 %73, 8
  %cmp.i112 = icmp ult i32 %inc12.i, %add.i111
  br i1 %cmp.i112, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.aac_fib_vector_assign.exit_crit_edge

for.inc.i.aac_fib_vector_assign.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aac_fib_vector_assign.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

aac_fib_vector_assign.exit:                       ; preds = %for.inc.i.aac_fib_vector_assign.exit_crit_edge, %for.end.aac_fib_vector_assign.exit_crit_edge
  %74 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fibs, align 4
  %76 = ptrtoint ptr %scsi_host_ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %scsi_host_ptr.i, align 8
  %can_queue47 = getelementptr inbounds %struct.Scsi_Host, ptr %77, i32 0, i32 26
  %78 = ptrtoint ptr %can_queue47 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %can_queue47, align 4
  %sub49 = add i32 %79, 7
  %arrayidx50 = getelementptr %struct.fib, ptr %75, i32 %sub49
  %80 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx50, align 4
  %81 = load ptr, ptr %fibs, align 4
  %82 = load ptr, ptr %scsi_host_ptr.i, align 8
  %can_queue54 = getelementptr inbounds %struct.Scsi_Host, ptr %82, i32 0, i32 26
  %83 = ptrtoint ptr %can_queue54 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %can_queue54, align 4
  %arrayidx55 = getelementptr %struct.fib, ptr %81, i32 %84
  %free_fib = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 11
  %85 = ptrtoint ptr %free_fib to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %arrayidx55, ptr %free_fib, align 8
  br label %cleanup

cleanup:                                          ; preds = %aac_fib_vector_assign.exit, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %aac_fib_vector_assign.exit ], [ -12, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @aac_fib_alloc_tag(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %scmd) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fibs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fibs, align 4
  %tag = getelementptr i8, ptr %scmd, i32 -172
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tag, align 4
  %arrayidx = getelementptr %struct.fib, ptr %1, i32 %3
  %hw_fib_va = getelementptr %struct.fib, ptr %1, i32 %3, i32 13
  %4 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_fib_va, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 4
  %type = getelementptr %struct.fib, ptr %1, i32 %3, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 780, ptr %type, align 4
  %callback_data = getelementptr %struct.fib, ptr %1, i32 %3, i32 8
  %8 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %callback_data, align 4
  %callback = getelementptr %struct.fib, ptr %1, i32 %3, i32 7
  %9 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %callback, align 4
  %flags = getelementptr %struct.fib, ptr %1, i32 %3, i32 9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flags, align 4
  ret ptr %arrayidx
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aac_fib_alloc(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fib_lock = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock) #13
  %free_fib = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %free_fib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_fib, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock, i32 noundef %call2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %free_fib to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %free_fib, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock, i32 noundef %call2) #13
  %type = getelementptr inbounds %struct.fib, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 780, ptr %type, align 4
  %size = getelementptr inbounds %struct.fib, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 164, ptr %size, align 2
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_fib_va, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 4
  %flags8 = getelementptr inbounds %struct.fib, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flags8, align 4
  %callback = getelementptr inbounds %struct.fib, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %callback, align 4
  %callback_data = getelementptr inbounds %struct.fib, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %callback_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_fib_free(ptr noundef %fibptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %done = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 6
  %0 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  %dev = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %fib_lock = getelementptr inbounds %struct.aac_dev, ptr %3, i32 0, i32 12
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock) #13
  %flags6 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 9
  %4 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags6, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body1.if.end10_crit_edge, label %if.then9, !prof !133

do.body1.if.end10_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then9:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3), align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3), align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.body1.if.end10_crit_edge
  %and12 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end10.if.end25_crit_edge

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end10
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %7 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw_fib_va, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14.not = icmp eq i32 %10, 0
  br i1 %cmp14.not, label %land.lhs.true.if.end25_crit_edge, label %do.end19

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

do.end19:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %fibptr, i32 noundef %11) #16
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %land.lhs.true.if.end25_crit_edge, %if.end10.if.end25_crit_edge
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %free_fib = getelementptr inbounds %struct.aac_dev, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %free_fib to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_fib, align 8
  %16 = ptrtoint ptr %fibptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %fibptr, align 4
  store ptr %fibptr, ptr %free_fib, align 8
  %17 = load ptr, ptr %dev, align 4
  %fib_lock30 = getelementptr inbounds %struct.aac_dev, ptr %17, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock30, i32 noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @aac_fib_init(ptr nocapture noundef readonly %fibptr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 32)
  %StructType = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %StructType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %StructType, align 2
  %dev = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %max_fib_size = getelementptr inbounds %struct.aac_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %max_fib_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_fib_size, align 8
  %conv = trunc i32 %7 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %Size = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %Size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %Size, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 218105856, ptr %1, align 4
  %hw_fib_pa = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 14
  %11 = ptrtoint ptr %hw_fib_pa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_fib_pa, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %u = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %u, align 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %max_fib_size6 = getelementptr inbounds %struct.aac_dev, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %max_fib_size6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_fib_size6, align 8
  %conv7 = trunc i32 %18 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %SenderSize = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %SenderSize to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %SenderSize, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_queue_get(ptr nocapture noundef readonly %dev, ptr nocapture noundef %index, i32 noundef %qid, ptr nocapture noundef %hw_fib, i32 %wait, ptr nocapture noundef readonly %fibptr, ptr nocapture noundef writeonly %nonotify) local_unnamed_addr #0 align 64 {
entry:
  %entry1 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #13
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %entry1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %qid)
  %cmp = icmp eq i32 %qid, 2
  br i1 %cmp, label %while.cond.preheader, label %entry.while.cond3_crit_edge

entry.while.cond3_crit_edge:                      ; preds = %entry
  br label %while.cond3

while.cond.preheader:                             ; preds = %entry
  %call30 = call fastcc i32 @aac_get_entry(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %entry1, ptr noundef %index, ptr noundef %nonotify)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not31 = icmp eq i32 %call30, 0
  br i1 %tobool.not31, label %while.cond.preheader.do.end_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #16
  %call = call fastcc i32 @aac_get_entry(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %entry1, ptr noundef %index, ptr noundef %nonotify)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end.do.end_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %Size = getelementptr inbounds %struct.aac_fibhdr, ptr %hw_fib, i32 0, i32 4
  %1 = ptrtoint ptr %Size to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %Size, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %5 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %6, align 4
  br label %if.end

while.cond3:                                      ; preds = %while.cond3.while.cond3_crit_edge, %entry.while.cond3_crit_edge
  %call4 = call fastcc i32 @aac_get_entry(ptr noundef %dev, i32 noundef %qid, ptr noundef nonnull %entry1, ptr noundef %index, ptr noundef %nonotify)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.cond3.while.cond3_crit_edge, label %while.end8

while.cond3.while.cond3_crit_edge:                ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond3

while.end8:                                       ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #15
  %Size10 = getelementptr inbounds %struct.aac_fibhdr, ptr %hw_fib, i32 0, i32 4
  %8 = ptrtoint ptr %Size10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %Size10, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv11 = zext i16 %10 to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv11)
  %12 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entry1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %13, align 4
  %SenderFibAddress = getelementptr inbounds %struct.aac_fibhdr, ptr %hw_fib, i32 0, i32 6
  %15 = ptrtoint ptr %SenderFibAddress to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %SenderFibAddress, align 4
  %addr = getelementptr inbounds %struct.aac_entry, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %addr, align 4
  %18 = load i32, ptr %SenderFibAddress, align 4
  %u = getelementptr inbounds %struct.aac_fibhdr, ptr %hw_fib, i32 0, i32 7
  %19 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %u, align 4
  br label %if.end

if.end:                                           ; preds = %while.end8, %while.end
  br i1 %cmp, label %if.then18, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %hw_fib_pa = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 14
  %20 = ptrtoint ptr %hw_fib_pa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_fib_pa, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry1, align 4
  %addr19 = getelementptr inbounds %struct.aac_entry, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %addr19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %addr19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_get_entry(ptr nocapture noundef readonly %dev, i32 noundef %qid, ptr nocapture noundef writeonly %entry1, ptr nocapture noundef %index, ptr nocapture noundef writeonly %nonotify) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queues = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queues, align 8
  %producer = getelementptr [8 x %struct.aac_queue], ptr %1, i32 0, i32 %qid, i32 2, i32 1
  %2 = ptrtoint ptr %producer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %producer, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %index, align 4
  %consumer = getelementptr [8 x %struct.aac_queue], ptr %1, i32 0, i32 %qid, i32 2, i32 2
  %8 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumer, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp.not = icmp eq i32 %5, %11
  br i1 %cmp.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then:                                          ; preds = %entry
  %dec = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp3 = icmp eq i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %qid)
  %cmp5 = icmp eq i32 %qid, 2
  %. = select i1 %cmp5, i32 512, i32 8
  %idx.0 = select i1 %cmp3, i32 %., i32 %dec
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0, i32 %12)
  %cmp10.not = icmp eq i32 %idx.0, %12
  br i1 %cmp10.not, label %if.then.if.end13_crit_edge, label %if.then11

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %nonotify to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %nonotify, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %qid)
  %cmp14 = icmp eq i32 %qid, 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  br i1 %cmp14, label %if.then15, label %if.else19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %15)
  %cmp16 = icmp ugt i32 %15, 511
  br i1 %cmp16, label %if.then15.if.end23.sink.split_crit_edge, label %if.then15.if.end23_crit_edge

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then15.if.end23.sink.split_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.sink.split

if.else19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp20 = icmp ugt i32 %15, 7
  br i1 %cmp20, label %if.else19.if.end23.sink.split_crit_edge, label %if.else19.if.end23_crit_edge

if.else19.if.end23_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.else19.if.end23.sink.split_crit_edge:          ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.else19.if.end23.sink.split_crit_edge, %if.then15.if.end23.sink.split_crit_edge
  %16 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %index, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.else19.if.end23_crit_edge, %if.then15.if.end23_crit_edge
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %add = add i32 %18, 1
  %19 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %consumer, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp26 = icmp eq i32 %add, %23
  br i1 %cmp26, label %do.end, label %if.else29

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %numpending = getelementptr [8 x %struct.aac_queue], ptr %1, i32 0, i32 %qid, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %numpending, i32 noundef 4) #13
  %24 = ptrtoint ptr %numpending to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %numpending, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %qid, i32 noundef %25) #16
  br label %cleanup

if.else29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %base = getelementptr [8 x %struct.aac_queue], ptr %1, i32 0, i32 %qid, i32 1
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr %struct.aac_entry, ptr %27, i32 %18
  %28 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %entry1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.else29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_fib_send(i16 noundef zeroext %command, ptr noundef %fibptr, i32 noundef %size, i32 %priority, i32 noundef %wait, i32 noundef %reply, ptr noundef %callback, ptr noundef %callback_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %2 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_fib_va, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup289_crit_edge, label %if.end

entry.cleanup289_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

if.end:                                           ; preds = %entry
  %and4 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup289_crit_edge

if.end.cleanup289_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

if.end7:                                          ; preds = %if.end
  %flags8 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 9
  %6 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool9.not = icmp eq i32 %wait, 0
  %tobool9.not.not = xor i1 %tobool9.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reply)
  %tobool10.not = icmp eq i32 %reply, 0
  %or.cond = and i1 %tobool10.not, %tobool9.not.not
  br i1 %or.cond, label %if.end7.cleanup289_crit_edge, label %if.else

if.end7.cleanup289_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

if.else:                                          ; preds = %if.end7
  %or.cond384 = or i1 %tobool10.not, %tobool9.not.not
  br i1 %or.cond384, label %if.else18, label %if.else.if.end37.sink.split_crit_edge

if.else.if.end37.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.sink.split

if.else18:                                        ; preds = %if.else
  %7 = or i32 %reply, %wait
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.else18.if.end37.sink.split_crit_edge, label %if.else26

if.else18.if.end37.sink.split_crit_edge:          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.sink.split

if.else26:                                        ; preds = %if.else18
  %or.cond386 = or i1 %tobool9.not, %tobool10.not
  br i1 %or.cond386, label %if.else26.if.end37_crit_edge, label %if.else26.if.end37.sink.split_crit_edge

if.else26.if.end37.sink.split_crit_edge:          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.sink.split

if.else26.if.end37_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end37.sink.split:                              ; preds = %if.else26.if.end37.sink.split_crit_edge, %if.else18.if.end37.sink.split_crit_edge, %if.else.if.end37.sink.split_crit_edge
  %.sink418 = phi i32 [ -2145386496, %if.else.if.end37.sink.split_crit_edge ], [ 65536, %if.else18.if.end37.sink.split_crit_edge ], [ -2147483648, %if.else26.if.end37.sink.split_crit_edge ]
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %or = or i32 %10, %.sink418
  store i32 %or, ptr %3, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else26.if.end37_crit_edge
  %fibs = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fibs, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %fibptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 164
  %shl = shl nsw i32 %sub.ptr.div, 2
  %13 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %SenderFibAddress = getelementptr inbounds %struct.aac_fibhdr, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %SenderFibAddress to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %SenderFibAddress, align 4
  %15 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fibs, align 4
  %sub.ptr.rhs.cast41 = ptrtoint ptr %16 to i32
  %sub.ptr.sub42 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast41
  %sub.ptr.div43 = sdiv exact i32 %sub.ptr.sub42, 164
  %shl44 = shl nsw i32 %sub.ptr.div43, 2
  %add = or i32 %shl44, 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %add)
  %Handle = getelementptr inbounds %struct.aac_fibhdr, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %Handle to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %Handle, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %command)
  %Command = getelementptr inbounds %struct.aac_fibhdr, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %Command to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %Command, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  %or49 = or i32 %22, 536870912
  store i32 %or49, ptr %3, align 4
  %23 = trunc i32 %size to i16
  %conv = add i16 %23, 32
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %Size = getelementptr inbounds %struct.aac_fibhdr, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %Size to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %Size, align 4
  %SenderSize = getelementptr inbounds %struct.aac_fibhdr, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %SenderSize to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %SenderSize, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  call void @__sanitizer_cov_trace_cmp2(i16 %conv, i16 %28)
  %cmp = icmp ugt i16 %conv, %28
  br i1 %cmp, label %if.end37.cleanup289_crit_edge, label %if.end59

if.end37.cleanup289_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

if.end59:                                         ; preds = %if.end37
  %or62 = or i32 %22, 537919488
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or62, ptr %3, align 4
  br i1 %tobool9.not, label %if.end68, label %if.end68.thread

if.end68:                                         ; preds = %if.end59
  %callback65 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 7
  %30 = ptrtoint ptr %callback65 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %callback, ptr %callback65, align 4
  %callback_data66 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 8
  %31 = ptrtoint ptr %callback_data66 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %callback_data, ptr %callback_data66, align 4
  %32 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %flags8, align 4
  %done = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 6
  %33 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %done, align 4
  %queues = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 15
  %34 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %queues, align 8
  %tobool69.not = icmp eq ptr %35, null
  br i1 %tobool69.not, label %if.end68.cleanup289_crit_edge, label %if.end106

if.end68.cleanup289_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

if.end68.thread:                                  ; preds = %if.end59
  %done389 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 6
  %36 = ptrtoint ptr %done389 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %done389, align 4
  %queues390 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 15
  %37 = ptrtoint ptr %queues390 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %queues390, align 8
  %tobool69.not391 = icmp eq ptr %38, null
  br i1 %tobool69.not391, label %if.end68.thread.cleanup289_crit_edge, label %do.body74

if.end68.thread.cleanup289_crit_edge:             ; preds = %if.end68.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

do.body74:                                        ; preds = %if.end68.thread
  %manage_lock = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 68
  %call77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %manage_lock) #13
  %management_fib_count = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 67
  %39 = ptrtoint ptr %management_fib_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %management_fib_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %40)
  %cmp80 = icmp sgt i32 %40, 7
  br i1 %cmp80, label %do.end85, label %if.end106.thread

do.end85:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #15
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %40) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock, i32 noundef %call77) #13
  br label %cleanup289

if.end106:                                        ; preds = %if.end68
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 70
  %41 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool107.not = icmp eq i32 %42, 0
  br i1 %tobool107.not, label %if.end106.if.end145_crit_edge, label %if.end106.do.body114_crit_edge

if.end106.do.body114_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body114

if.end106.if.end145_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145

if.end106.thread:                                 ; preds = %do.body74
  %inc = add nsw i32 %40, 1
  %43 = ptrtoint ptr %management_fib_count to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc, ptr %management_fib_count, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock, i32 noundef %call77) #13
  %event_lock = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 5
  %call101 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #13
  %sync_mode403 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 70
  %44 = ptrtoint ptr %sync_mode403 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sync_mode403, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool107.not404 = icmp eq i32 %45, 0
  br i1 %tobool107.not404, label %if.end106.thread.if.end145_crit_edge, label %if.then110

if.end106.thread.if.end145_crit_edge:             ; preds = %if.end106.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145

if.then110:                                       ; preds = %if.end106.thread
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call101) #13
  br label %do.body114

do.body114:                                       ; preds = %if.then110, %if.end106.do.body114_crit_edge
  %sync_lock = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 69
  %call121 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sync_lock) #13
  %sync_fib = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 71
  %46 = ptrtoint ptr %sync_fib to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sync_fib, align 8
  %tobool126.not = icmp eq ptr %47, null
  br i1 %tobool126.not, label %if.else129, label %if.then127

if.then127:                                       ; preds = %do.body114
  %fiblink = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 10
  %sync_fib_list = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 72
  %prev.i = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 72, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i, align 4
  %call.i.i388 = tail call zeroext i1 @__list_add_valid(ptr noundef %fiblink, ptr noundef %49, ptr noundef %sync_fib_list) #13
  br i1 %call.i.i388, label %if.end.i.i, label %if.then127.list_add_tail.exit_crit_edge

if.then127.list_add_tail.exit_crit_edge:          ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %fiblink, ptr %prev.i, align 4
  %51 = ptrtoint ptr %fiblink to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %sync_fib_list, ptr %fiblink, align 4
  %prev3.i.i = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %fiblink, ptr %49, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then127.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sync_lock, i32 noundef %call121) #13
  br label %if.end133

if.else129:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %sync_fib to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %fibptr, ptr %sync_fib, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sync_lock, i32 noundef %call121) #13
  %adapter_sync_cmd = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 17, i32 4
  %55 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter_sync_cmd, align 4
  %hw_fib_pa = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 14
  %57 = ptrtoint ptr %hw_fib_pa to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hw_fib_pa, align 4
  %call132 = tail call i32 %56(ptr noundef %1, i32 noundef 12, i32 noundef %58, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #13
  br label %if.end133

if.end133:                                        ; preds = %if.else129, %list_add_tail.exit
  br i1 %tobool9.not, label %if.end133.cleanup289_crit_edge, label %if.then135

if.end133.cleanup289_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

if.then135:                                       ; preds = %if.end133
  %59 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags8, align 4
  %or137 = or i32 %60, 4
  store i32 %or137, ptr %flags8, align 4
  %event_wait = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 4
  %call138 = tail call i32 @wait_for_completion_interruptible(ptr noundef %event_wait) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then135.cleanup289_crit_edge, label %if.then140

if.then135.cleanup289_crit_edge:                  ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

if.then140:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags8, align 4
  %and142 = and i32 %62, -5
  store i32 %and142, ptr %flags8, align 4
  br label %cleanup289

if.end145:                                        ; preds = %if.end106.thread.if.end145_crit_edge, %if.end106.if.end145_crit_edge
  %flags.0408 = phi i32 [ %call101, %if.end106.thread.if.end145_crit_edge ], [ 0, %if.end106.if.end145_crit_edge ]
  %queues393397406 = phi ptr [ %queues390, %if.end106.thread.if.end145_crit_edge ], [ %queues, %if.end106.if.end145_crit_edge ]
  %done392399405 = phi ptr [ %done389, %if.end106.thread.if.end145_crit_edge ], [ %done, %if.end106.if.end145_crit_edge ]
  %63 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev1, align 4
  %adapter_deliver = getelementptr inbounds %struct.aac_dev, ptr %64, i32 0, i32 17, i32 10
  %65 = ptrtoint ptr %adapter_deliver to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter_deliver, align 4
  %call148 = tail call i32 %66(ptr noundef %fibptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149.not = icmp eq i32 %call148, 0
  br i1 %cmp149.not, label %if.end177, label %do.end154

do.end154:                                        ; preds = %if.end145
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #16
  br i1 %tobool9.not, label %do.end154.cleanup289_crit_edge, label %if.then158

do.end154.cleanup289_crit_edge:                   ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

if.then158:                                       ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #15
  %event_lock159 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock159, i32 noundef %flags.0408) #13
  %manage_lock167 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 68
  %call169 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %manage_lock167) #13
  %management_fib_count174 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 67
  %67 = ptrtoint ptr %management_fib_count174 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %management_fib_count174, align 8
  %dec = add i32 %68, -1
  store i32 %dec, ptr %management_fib_count174, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock167, i32 noundef %call169) #13
  br label %cleanup289

if.end177:                                        ; preds = %if.end145
  br i1 %tobool9.not, label %if.end285, label %if.then179

if.then179:                                       ; preds = %if.end177
  %event_lock180 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock180, i32 noundef %flags.0408) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %cmp181 = icmp slt i32 %wait, 0
  br i1 %cmp181, label %if.then183, label %if.else225

if.then183:                                       ; preds = %if.then179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %event_wait185 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 4
  %call186417 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %event_wait185) #13
  br i1 %call186417, label %if.then183.do.body233_crit_edge, label %while.body.lr.ph

if.then183.do.body233_crit_edge:                  ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body233

while.body.lr.ph:                                 ; preds = %if.then183
  %add184.neg = sub i32 -18000, %69
  %pdev.i = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 30
  %handle_pci_error.i = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 84
  %adapter_check_health.i = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 17, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add184.neg, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp187 = icmp sgt i32 %sub, -1
  br i1 %cmp187, label %if.then189, label %if.end200

if.then189:                                       ; preds = %while.body
  %71 = ptrtoint ptr %queues393397406 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queues393397406, align 8
  %numpending = getelementptr [8 x %struct.aac_queue], ptr %72, i32 0, i32 2, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %numpending, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %numpending, i32 1, i32 3, i32 1) #13
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %numpending, ptr %numpending, i32 1, ptr elementtype(i32) %numpending) #13, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %wait)
  %cmp191 = icmp eq i32 %wait, -1
  br i1 %cmp191, label %do.end196, label %if.then189.cleanup289_crit_edge

if.then189.cleanup289_crit_edge:                  ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

do.end196:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #15
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  br label %cleanup289

if.end200:                                        ; preds = %while.body
  %74 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev.i, align 4
  %error_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 43
  %76 = ptrtoint ptr %error_state.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %error_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp.i.not.i = icmp eq i32 %77, 1
  br i1 %cmp.i.not.i, label %aac_pci_offline.exit, label %if.end200.cleanup289_crit_edge

if.end200.cleanup289_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

aac_pci_offline.exit:                             ; preds = %if.end200
  %78 = ptrtoint ptr %handle_pci_error.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %handle_pci_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool1.i.not = icmp eq i32 %79, 0
  br i1 %tobool1.i.not, label %aac_pci_offline.exit.i, label %aac_pci_offline.exit.cleanup289_crit_edge, !prof !133

aac_pci_offline.exit.cleanup289_crit_edge:        ; preds = %aac_pci_offline.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

aac_pci_offline.exit.i:                           ; preds = %aac_pci_offline.exit
  %80 = ptrtoint ptr %handle_pci_error.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %handle_pci_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool1.i.not.i = icmp eq i32 %81, 0
  br i1 %tobool1.i.not.i, label %aac_adapter_check_health.exit, label %aac_pci_offline.exit.i.cleanup_crit_edge, !prof !133

aac_pci_offline.exit.i.cleanup_crit_edge:         ; preds = %aac_pci_offline.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

aac_adapter_check_health.exit:                    ; preds = %aac_pci_offline.exit.i
  %82 = ptrtoint ptr %adapter_check_health.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adapter_check_health.i, align 4
  %call3.i = tail call i32 %83(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp209 = icmp sgt i32 %call3.i, 0
  br i1 %cmp209, label %if.then211, label %aac_adapter_check_health.exit.cleanup_crit_edge

aac_adapter_check_health.exit.cleanup_crit_edge:  ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then211:                                       ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %wait)
  %cmp212 = icmp eq i32 %wait, -1
  br i1 %cmp212, label %do.end217, label %if.then211.cleanup289_crit_edge

if.then211.cleanup289_crit_edge:                  ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup289

do.end217:                                        ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #15
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call3.i) #16
  br label %cleanup289

cleanup:                                          ; preds = %aac_adapter_check_health.exit.cleanup_crit_edge, %aac_pci_offline.exit.i.cleanup_crit_edge
  tail call void @schedule() #13
  %call186 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %event_wait185) #13
  br i1 %call186, label %cleanup.do.body233_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.do.body233_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body233

if.else225:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #15
  %event_wait226 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 4
  %call227 = tail call i32 @wait_for_completion_interruptible(ptr noundef %event_wait226) #13
  br label %do.body233

do.body233:                                       ; preds = %if.else225, %cleanup.do.body233_crit_edge, %if.then183.do.body233_crit_edge
  %call241 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock180) #13
  %84 = ptrtoint ptr %done392399405 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %done392399405, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp247 = icmp eq i32 %85, 0
  br i1 %cmp247, label %if.then249, label %if.end252

if.then249:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %done392399405 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %done392399405, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock180, i32 noundef %call241) #13
  br label %cleanup289

if.end252:                                        ; preds = %do.body233
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock180, i32 noundef %call241) #13
  %87 = ptrtoint ptr %done392399405 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %done392399405, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp256 = icmp eq i32 %88, 0
  br i1 %cmp256, label %do.body265, label %do.end273, !prof !135

do.body265:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/commsup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 691, 0\0A.popsection", ""() #13, !srcloc !136
  unreachable

do.end273:                                        ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #15
  %89 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags8, align 4
  %and275 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %tobool276.not = icmp eq i32 %and275, 0
  %. = select i1 %tobool276.not, i32 0, i32 -110, !prof !133
  br label %cleanup289

if.end285:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  %.387 = select i1 %tobool10.not, i32 0, i32 -115
  br label %cleanup289

cleanup289:                                       ; preds = %if.end285, %do.end273, %if.then249, %do.end217, %if.then211.cleanup289_crit_edge, %aac_pci_offline.exit.cleanup289_crit_edge, %if.end200.cleanup289_crit_edge, %do.end196, %if.then189.cleanup289_crit_edge, %if.then158, %do.end154.cleanup289_crit_edge, %if.then140, %if.then135.cleanup289_crit_edge, %if.end133.cleanup289_crit_edge, %do.end85, %if.end68.thread.cleanup289_crit_edge, %if.end68.cleanup289_crit_edge, %if.end37.cleanup289_crit_edge, %if.end7.cleanup289_crit_edge, %if.end.cleanup289_crit_edge, %entry.cleanup289_crit_edge
  %retval.3 = phi i32 [ -16, %do.end85 ], [ -14, %if.then140 ], [ -512, %if.then249 ], [ -16, %entry.cleanup289_crit_edge ], [ -22, %if.end.cleanup289_crit_edge ], [ -22, %if.end7.cleanup289_crit_edge ], [ -90, %if.end37.cleanup289_crit_edge ], [ -16, %if.end68.cleanup289_crit_edge ], [ 0, %if.then135.cleanup289_crit_edge ], [ -115, %if.end133.cleanup289_crit_edge ], [ -16, %if.then158 ], [ -16, %do.end154.cleanup289_crit_edge ], [ %., %do.end273 ], [ %.387, %if.end285 ], [ -16, %if.end68.thread.cleanup289_crit_edge ], [ -14, %if.then211.cleanup289_crit_edge ], [ -14, %do.end217 ], [ -110, %if.then189.cleanup289_crit_edge ], [ -110, %do.end196 ], [ -14, %aac_pci_offline.exit.cleanup289_crit_edge ], [ -14, %if.end200.cleanup289_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_hba_send(i8 noundef zeroext %command, ptr noundef %fibptr, ptr noundef %callback, ptr noundef %callback_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %2 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_fib_va, align 4
  %flags2 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 9
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 18, ptr %flags2, align 4
  %tobool.not = icmp eq ptr %callback, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %callback3 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 7
  %5 = ptrtoint ptr %callback3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %callback, ptr %callback3, align 4
  %callback_data4 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 8
  %6 = ptrtoint ptr %callback_data4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %callback_data, ptr %callback_data4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %command, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %command)
  %cmp = icmp eq i8 %command, 64
  br i1 %cmp, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %fibs = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %fibs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fibs, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %fibptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 164
  %shl = shl nsw i32 %sub.ptr.div, 2
  %add = or i32 %shl, 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %add)
  %request_id = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %request_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %request_id, align 4
  %12 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags2, align 4
  %or = or i32 %13, 64
  store i32 %or, ptr %flags2, align 4
  br i1 %tobool.not, label %do.body12, label %if.then6.if.end38_crit_edge

if.then6.if.end38_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

do.body12:                                        ; preds = %if.then6
  %manage_lock = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 68
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %manage_lock) #13
  %management_fib_count = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 67
  %14 = ptrtoint ptr %management_fib_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %management_fib_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp18 = icmp sgt i32 %15, 7
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock, i32 noundef %call15) #13
  br label %cleanup

if.end22:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  %inc = add nsw i32 %15, 1
  %16 = ptrtoint ptr %management_fib_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc, ptr %management_fib_count, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock, i32 noundef %call15) #13
  %event_lock = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 5
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #13
  br label %if.end38

if.end38:                                         ; preds = %if.end22, %if.then6.if.end38_crit_edge
  %flags.0 = phi i32 [ %call33, %if.end22 ], [ 0, %if.then6.if.end38_crit_edge ]
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  %adapter_deliver = getelementptr inbounds %struct.aac_dev, ptr %18, i32 0, i32 17, i32 10
  %19 = ptrtoint ptr %adapter_deliver to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter_deliver, align 4
  %call40 = tail call i32 %20(ptr noundef %fibptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41.not = icmp eq i32 %call40, 0
  br i1 %cmp41.not, label %if.end64, label %if.then43

if.then43:                                        ; preds = %if.end38
  br i1 %tobool.not, label %if.then45, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then45:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  %event_lock46 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock46, i32 noundef %flags.0) #13
  %manage_lock54 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 68
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %manage_lock54) #13
  %management_fib_count61 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 67
  %21 = ptrtoint ptr %management_fib_count61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %management_fib_count61, align 8
  %dec = add i32 %22, -1
  store i32 %dec, ptr %management_fib_count61, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %manage_lock54, i32 noundef %call56) #13
  br label %cleanup

if.end64:                                         ; preds = %if.end38
  br i1 %tobool.not, label %if.then66, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then66:                                        ; preds = %if.end64
  %event_lock67 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock67, i32 noundef %flags.0) #13
  %pdev.i = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 30
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 4
  %error_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 43
  %25 = ptrtoint ptr %error_state.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i.not.i = icmp eq i32 %26, 1
  br i1 %cmp.i.not.i, label %aac_pci_offline.exit, label %if.then66.cleanup_crit_edge

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

aac_pci_offline.exit:                             ; preds = %if.then66
  %handle_pci_error.i = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 84
  %27 = ptrtoint ptr %handle_pci_error.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %handle_pci_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.i.not = icmp eq i32 %28, 0
  br i1 %tobool1.i.not, label %if.end73, label %aac_pci_offline.exit.cleanup_crit_edge, !prof !133

aac_pci_offline.exit.cleanup_crit_edge:           ; preds = %aac_pci_offline.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end73:                                         ; preds = %aac_pci_offline.exit
  %29 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags2, align 4
  %or75 = or i32 %30, 4
  store i32 %or75, ptr %flags2, align 4
  %event_wait = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 4
  %call76 = tail call i32 @wait_for_completion_interruptible(ptr noundef %event_wait) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end73.if.end79_crit_edge, label %if.then78

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %done = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 6
  %31 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %done, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end73.if.end79_crit_edge
  %32 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags2, align 4
  %and = and i32 %33, -5
  store i32 %and, ptr %flags2, align 4
  %call90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock67) #13
  %done95 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 6
  %34 = ptrtoint ptr %done95 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %done95, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %if.end104 [
    i32 0, label %if.end79.if.then101_crit_edge
    i32 2, label %if.end79.if.then101_crit_edge199
  ]

if.end79.if.then101_crit_edge199:                 ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then101

if.end79.if.then101_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then101

if.then101:                                       ; preds = %if.end79.if.then101_crit_edge, %if.end79.if.then101_crit_edge199
  %37 = ptrtoint ptr %done95 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %done95, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock67, i32 noundef %call90) #13
  br label %cleanup

if.end104:                                        ; preds = %if.end79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock67, i32 noundef %call90) #13
  %38 = ptrtoint ptr %done95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %done95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp107 = icmp eq i32 %39, 0
  br i1 %cmp107, label %do.end124, label %if.end104.if.end130_crit_edge, !prof !135

if.end104.if.end130_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

do.end124:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 778, i32 noundef 9, ptr noundef null) #13
  br label %if.end130

if.end130:                                        ; preds = %do.end124, %if.end104.if.end130_crit_edge
  %40 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags2, align 4
  %and139 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  %. = select i1 %tobool140.not, i32 0, i32 -110, !prof !133
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.then101, %aac_pci_offline.exit.cleanup_crit_edge, %if.then66.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.then45, %if.then43.cleanup_crit_edge, %if.then20, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then20 ], [ -512, %if.then101 ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.then45 ], [ -16, %if.then43.cleanup_crit_edge ], [ -14, %aac_pci_offline.exit.cleanup_crit_edge ], [ %., %if.end130 ], [ -115, %if.end64.cleanup_crit_edge ], [ -14, %if.then66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @aac_consumer_get(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %entry1) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %producer = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %producer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %producer, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %consumer = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %consumer, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp = icmp eq i32 %3, %7
  br i1 %cmp, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %entries = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 3
  %9 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp5.not = icmp ult i32 %8, %10
  %. = select i1 %cmp5.not, i32 %8, i32 0
  %base = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 1
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr %struct.aac_entry, ptr %12, i32 %.
  %13 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %entry1, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %entry.if.end10_crit_edge
  %status.0 = phi i32 [ 1, %if.else ], [ 0, %entry.if.end10_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_consumer_free(ptr noundef %dev, ptr nocapture noundef readonly %q, i32 noundef %qid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %producer = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %producer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %producer, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add = add i32 %4, 1
  %consumer = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %consumer, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp = icmp eq i32 %add, %9
  %entries = getelementptr inbounds %struct.aac_queue, ptr %q, i32 0, i32 3
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4.not = icmp ult i32 %9, %11
  %add.i = add i32 %9, 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %add.i) #13
  %storemerge = select i1 %cmp4.not, i32 %12, i32 16777216
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %6, align 4
  br i1 %cmp, label %if.then11, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then11:                                        ; preds = %entry
  %14 = zext i32 %qid to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %qid, label %do.body [
    i32 0, label %if.then11.sw.epilog_crit_edge
    i32 4, label %sw.bb12
  ]

if.then11.sw.epilog_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/commsup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 855, 0\0A.popsection", ""() #13, !srcloc !137
  unreachable

sw.epilog:                                        ; preds = %sw.bb12, %if.then11.sw.epilog_crit_edge
  %notify.0 = phi i32 [ 11, %sw.bb12 ], [ 13, %if.then11.sw.epilog_crit_edge ]
  %adapter_notify = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 1
  %15 = ptrtoint ptr %adapter_notify to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter_notify, align 4
  tail call void %16(ptr noundef %dev, i32 noundef %notify.0) #13
  br label %if.end16

if.end16:                                         ; preds = %sw.epilog, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_fib_adapter_complete(ptr nocapture noundef readonly %fibptr, i16 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %dev1 = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %3, i32 0, i32 59
  %4 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %comm_interface, align 2
  %.off = add i8 %5, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %1) #13
  br label %cleanup95

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12 = icmp eq i32 %7, 0
  br i1 %cmp12, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp17 = icmp eq i8 %5, 1
  br i1 %cmp17, label %if.then19, label %if.then14.cleanup95_crit_edge

if.then14.cleanup95_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup95

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %1) #13
  br label %cleanup95

if.end21:                                         ; preds = %if.end
  %StructType = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %StructType to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %StructType, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %9, label %if.then37 [
    i8 1, label %if.end21.if.end44_crit_edge
    i8 4, label %if.end21.if.end44_crit_edge134
    i8 5, label %if.end21.if.end44_crit_edge135
  ]

if.end21.if.end44_crit_edge135:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.end21.if.end44_crit_edge134:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.end21.if.end44_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then37:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp40 = icmp eq i8 %5, 1
  br i1 %cmp40, label %if.then42, label %if.then37.cleanup95_crit_edge

if.then37.cleanup95_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup95

if.then42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %1) #13
  br label %cleanup95

if.end44:                                         ; preds = %if.end21.if.end44_crit_edge, %if.end21.if.end44_crit_edge134, %if.end21.if.end44_crit_edge135
  %and = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end85, label %if.then47

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp50 = icmp eq i8 %5, 1
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %1) #13
  br label %cleanup95

if.else:                                          ; preds = %if.then47
  %or = or i32 %7, 262144
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %tobool55.not = icmp eq i16 %size, 0
  br i1 %tobool55.not, label %if.else.if.end67_crit_edge, label %if.then56

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67

if.then56:                                        ; preds = %if.else
  %add = add i16 %size, 32
  %SenderSize = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %SenderSize to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %SenderSize, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  call void @__sanitizer_cov_trace_cmp2(i16 %add, i16 %14)
  %cmp62 = icmp ugt i16 %add, %14
  br i1 %cmp62, label %if.then56.cleanup95_crit_edge, label %if.end65

if.then56.cleanup95_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup95

if.end65:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %15 = tail call i16 @llvm.bswap.i16(i16 %add)
  %Size = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %Size to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %Size, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end65, %if.else.if.end67_crit_edge
  %queues = getelementptr inbounds %struct.aac_dev, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queues, align 8
  %lock = getelementptr [8 x %struct.aac_queue], ptr %18, i32 0, i32 6, i32 6
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  %call71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #13
  br label %while.cond3.i

while.cond3.i:                                    ; preds = %aac_get_entry.exit, %if.end67
  %nointr.0 = phi i32 [ 0, %if.end67 ], [ %nointr.1, %aac_get_entry.exit ]
  %21 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queues, align 8
  %producer.i = getelementptr [8 x %struct.aac_queue], ptr %22, i32 0, i32 6, i32 2, i32 1
  %23 = ptrtoint ptr %producer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %producer.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #13
  %consumer.i = getelementptr [8 x %struct.aac_queue], ptr %22, i32 0, i32 6, i32 2, i32 2
  %28 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %consumer.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %31)
  %cmp.not.i = icmp eq i32 %26, %31
  br i1 %cmp.not.i, label %while.cond3.i.if.end13.i_crit_edge, label %if.then.i

while.cond3.i.if.end13.i_crit_edge:               ; preds = %while.cond3.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = tail call i32 @llvm.bswap.i32(i32 %31) #13
  br label %if.end13.i

if.then.i:                                        ; preds = %while.cond3.i
  call void @__sanitizer_cov_trace_pc() #15
  %dec.i = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.i = icmp eq i32 %dec.i, 0
  %idx.0.i = select i1 %cmp3.i, i32 8, i32 %dec.i
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.i, i32 %32)
  %cmp10.not.i = icmp eq i32 %idx.0.i, %32
  %spec.select = select i1 %cmp10.not.i, i32 %nointr.0, i32 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i, %while.cond3.i.if.end13.i_crit_edge
  %.pre-phi = phi i32 [ %.pre, %while.cond3.i.if.end13.i_crit_edge ], [ %32, %if.then.i ]
  %nointr.1 = phi i32 [ %nointr.0, %while.cond3.i.if.end13.i_crit_edge ], [ %spec.select, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp20.i = icmp ugt i32 %27, 7
  %spec.select133 = select i1 %cmp20.i, i32 0, i32 %27
  %add.i = add nuw nsw i32 %spec.select133, 1
  %cmp26.i = icmp eq i32 %add.i, %.pre-phi
  br i1 %cmp26.i, label %aac_get_entry.exit, label %aac_queue_get.exit

aac_get_entry.exit:                               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %numpending.i = getelementptr [8 x %struct.aac_queue], ptr %22, i32 0, i32 6, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %numpending.i, i32 noundef 4) #13
  %33 = ptrtoint ptr %numpending.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %numpending.i, align 4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef 6, i32 noundef %34) #16
  br label %while.cond3.i

aac_queue_get.exit:                               ; preds = %if.end13.i
  %base.i = getelementptr [8 x %struct.aac_queue], ptr %22, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr %struct.aac_entry, ptr %36, i32 %spec.select133
  %Size10.i = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %Size10.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %Size10.i, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #13
  %conv11.i = zext i16 %39 to i32
  %40 = tail call i32 @llvm.bswap.i32(i32 %conv11.i) #13
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %add.ptr.i, align 4
  %SenderFibAddress.i = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %SenderFibAddress.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %SenderFibAddress.i, align 4
  %addr.i = getelementptr %struct.aac_entry, ptr %36, i32 %spec.select133, i32 1
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %addr.i, align 4
  %45 = load i32, ptr %SenderFibAddress.i, align 4
  %u.i = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %u.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %add.i)
  %producer = getelementptr [8 x %struct.aac_queue], ptr %18, i32 0, i32 6, i32 2, i32 1
  %48 = ptrtoint ptr %producer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %producer, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %49, align 4
  %51 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %call71) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_config to i32))
  %53 = load i32, ptr @aac_config, align 4
  %and77 = and i32 %53, %nointr.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.then79, label %aac_queue_get.exit.cleanup95_crit_edge

aac_queue_get.exit.cleanup95_crit_edge:           ; preds = %aac_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup95

if.then79:                                        ; preds = %aac_queue_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  %adapter_notify = getelementptr inbounds %struct.aac_dev, ptr %3, i32 0, i32 17, i32 1
  %54 = ptrtoint ptr %adapter_notify to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter_notify, align 4
  tail call void %55(ptr noundef %3, i32 noundef 6) #13
  br label %cleanup95

do.end85:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/commsup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 931, 0\0A.popsection", ""() #13, !srcloc !138
  unreachable

cleanup95:                                        ; preds = %if.then79, %aac_queue_get.exit.cleanup95_crit_edge, %if.then56.cleanup95_crit_edge, %if.then52, %if.then42, %if.then37.cleanup95_crit_edge, %if.then19, %if.then14.cleanup95_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then19 ], [ 0, %if.then14.cleanup95_crit_edge ], [ -22, %if.then42 ], [ -22, %if.then37.cleanup95_crit_edge ], [ 0, %if.then52 ], [ 0, %aac_queue_get.exit.cleanup95_crit_edge ], [ 0, %if.then79 ], [ -90, %if.then56.cleanup95_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_fib_complete(ptr nocapture noundef readonly %fibptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %flags = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %done = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 6
  %6 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1 = icmp eq i32 %7, 2
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %StructType = getelementptr inbounds %struct.aac_fibhdr, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %StructType to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %StructType, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %9, label %if.end3.cleanup_crit_edge [
    i8 1, label %if.end3.if.end19_crit_edge
    i8 4, label %if.end3.if.end19_crit_edge65
    i8 5, label %if.end3.if.end19_crit_edge66
  ]

if.end3.if.end19_crit_edge66:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end3.if.end19_crit_edge65:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end3.if.end19_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end3.if.end19_crit_edge, %if.end3.if.end19_crit_edge65, %if.end3.if.end19_crit_edge66
  %11 = and i32 %5, 553648128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %do.body, label %if.end19.cleanup.sink.split_crit_edge

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/commsup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 989, 0\0A.popsection", ""() #13, !srcloc !139
  unreachable

cleanup.sink.split:                               ; preds = %if.end19.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_printf(ptr nocapture noundef readonly %dev, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %printfbuf = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 31
  %0 = ptrtoint ptr %printfbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %printfbuf, align 8
  %printf_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 62
  %2 = ptrtoint ptr %printf_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %printf_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then:                                          ; preds = %entry
  %and = and i32 %val, 65535
  %4 = tail call i32 @llvm.umin.i32(i32 %and, i32 255)
  %arrayidx = getelementptr i8, ptr %1, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3.not = icmp eq i8 %6, 0
  br i1 %cmp3.not, label %if.then.if.end7_crit_edge, label %if.then5

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge
  %shr.mask = and i32 %val, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 3932160, i32 %shr.mask)
  %cmp8 = icmp eq i32 %shr.mask, 3932160
  %name = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  %.str.19..str.22 = select i1 %cmp8, ptr @.str.19, ptr @.str.22
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19..str.22, ptr noundef %9, ptr noundef %1) #16
  br label %if.end18

if.end18:                                         ; preds = %if.end7, %entry.if.end18_crit_edge
  %10 = call ptr @memset(ptr %1, i32 0, i32 256)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_reset_adapter(ptr noundef %aac, i32 noundef %forced, i8 noundef zeroext %reset_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 35
  %0 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_host_ptr, align 8
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !140
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end12, label %do.end12.thread

do.end12:                                         ; preds = %entry
  tail call void @trace_hardirqs_off() #13
  %fib_lock = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 12
  %call15 = tail call i32 @_raw_spin_trylock(ptr noundef %fib_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then26, label %do.end12.if.end52_crit_edge

do.end12.if.end52_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

do.end12.thread:                                  ; preds = %entry
  %fib_lock173 = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 12
  %call15174 = tail call i32 @_raw_spin_trylock(ptr noundef %fib_lock173) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15174)
  %tobool16.not175 = icmp eq i32 %call15174, 0
  br i1 %tobool16.not175, label %do.end12.thread.do.body28_crit_edge, label %do.end12.thread.if.end52_crit_edge

do.end12.thread.if.end52_crit_edge:               ; preds = %do.end12.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

do.end12.thread.do.body28_crit_edge:              ; preds = %do.end12.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body28

if.then26:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %do.end12.thread.do.body28_crit_edge
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !141
  %and.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !135

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #13, !srcloc !142
  br label %cleanup

if.end52:                                         ; preds = %do.end12.thread.if.end52_crit_edge, %do.end12.if.end52_crit_edge
  %fib_lock176 = phi ptr [ %fib_lock173, %do.end12.thread.if.end52_crit_edge ], [ %fib_lock, %do.end12.if.end52_crit_edge ]
  %in_reset = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 63
  %4 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool53.not = icmp eq i8 %5, 0
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock176, i32 noundef %2) #13
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %6 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %in_reset, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock176, i32 noundef %2) #13
  %call59 = tail call i32 @scsi_host_block(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %forced)
  %cmp60 = icmp slt i32 %forced, 2
  br i1 %cmp60, label %do.body66, label %do.body66.thread

do.body66.thread:                                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %host_lock177 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %host_lock177 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_lock177, align 4
  %call73178 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #13
  br label %cond.end85

do.body66:                                        ; preds = %if.end56
  %call63 = tail call i32 @aac_send_shutdown(ptr noundef %aac) #13
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_lock, align 4
  %call73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forced)
  %tobool78.not = icmp eq i32 %forced, 0
  br i1 %tobool78.not, label %cond.false80, label %do.body66.cond.end85_crit_edge

do.body66.cond.end85_crit_edge:                   ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end85

cond.false80:                                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_check_reset to i32))
  %11 = load i32, ptr @aac_check_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %12 = icmp ugt i32 %11, 1
  %13 = zext i1 %12 to i32
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false80, %do.body66.cond.end85_crit_edge, %do.body66.thread
  %call73181 = phi i32 [ %call73, %cond.false80 ], [ %call73, %do.body66.cond.end85_crit_edge ], [ %call73178, %do.body66.thread ]
  %host_lock180 = phi ptr [ %host_lock, %cond.false80 ], [ %host_lock, %do.body66.cond.end85_crit_edge ], [ %host_lock177, %do.body66.thread ]
  %cond86 = phi i32 [ %13, %cond.false80 ], [ %forced, %do.body66.cond.end85_crit_edge ], [ 1, %do.body66.thread ]
  %14 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scsi_host_ptr, align 8
  %adapter_disable_int.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 17, i32 2
  %16 = ptrtoint ptr %adapter_disable_int.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter_disable_int.i, align 4
  tail call void %17(ptr noundef %aac) #13
  %thread.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 40
  %18 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %thread.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %cond.end85.if.end.i_crit_edge, label %land.lhs.true.i

cond.end85.if.end.i_crit_edge:                    ; preds = %cond.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %cond.end85
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !123) #13
  %and.i.i150 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i150 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %pid3.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %27)
  %cmp.not.i = icmp eq i32 %21, %27
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 4
  %28 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host_lock.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %29) #13
  %30 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %thread.i, align 4
  %call5.i = tail call i32 @kthread_stop(ptr noundef %31) #13
  %32 = ptrtoint ptr %thread.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %thread.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %cond.end85.if.end.i_crit_edge
  %tobool82.not.i = phi i1 [ false, %if.then.i ], [ true, %land.lhs.true.i.if.end.i_crit_edge ], [ true, %cond.end85.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond86)
  %tobool7.not.i = icmp eq i32 %cond86, 0
  br i1 %tobool7.not.i, label %cond.false.i, label %if.end.i.cond.end.i_crit_edge

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  %pdev.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 30
  %33 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev.i.i.i, align 4
  %error_state.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 43
  %35 = ptrtoint ptr %error_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %error_state.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i.not.i.i.i = icmp eq i32 %36, 1
  br i1 %cmp.i.not.i.i.i, label %aac_pci_offline.exit.i.i, label %cond.false.i.cond.end.i_crit_edge

cond.false.i.cond.end.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

aac_pci_offline.exit.i.i:                         ; preds = %cond.false.i
  %handle_pci_error.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 84
  %37 = ptrtoint ptr %handle_pci_error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %handle_pci_error.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool1.i.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool1.i.not.i.i, label %if.end.i.i, label %aac_pci_offline.exit.i.i.cond.end.i_crit_edge, !prof !133

aac_pci_offline.exit.i.i.cond.end.i_crit_edge:    ; preds = %aac_pci_offline.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

if.end.i.i:                                       ; preds = %aac_pci_offline.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %adapter_check_health.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 17, i32 5
  %39 = ptrtoint ptr %adapter_check_health.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter_check_health.i.i, align 4
  %call3.i.i = tail call i32 %40(ptr noundef %aac) #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i.i, %aac_pci_offline.exit.i.i.cond.end.i_crit_edge, %cond.false.i.cond.end.i_crit_edge, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ 0, %if.end.i.cond.end.i_crit_edge ], [ %call3.i.i, %if.end.i.i ], [ -1, %aac_pci_offline.exit.i.i.cond.end.i_crit_edge ], [ -1, %cond.false.i.cond.end.i_crit_edge ]
  %adapter_restart.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 17, i32 6
  %41 = ptrtoint ptr %adapter_restart.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter_restart.i, align 4
  %call10.i = tail call i32 %42(ptr noundef %aac, i32 noundef %cond.i, i8 noundef zeroext %reset_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %cond.end.i.out.thread.i_crit_edge

cond.end.i.out.thread.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread.i

if.end13.i:                                       ; preds = %cond.end.i
  %43 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %scsi_host_ptr, align 8
  %can_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 26
  %45 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %can_queue.i, align 4
  %add.i = add i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp15241.i = icmp sgt i32 %add.i, 0
  br i1 %cmp15241.i, label %for.body.lr.ph.i, label %if.end13.i.if.end38.i_crit_edge

if.end13.i.if.end38.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

for.body.lr.ph.i:                                 ; preds = %if.end13.i
  %fibs.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 10
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %if.end34.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %index.0243.i.ph = phi i32 [ %inc.i183, %if.end34.i.thread.for.body.i.outer_crit_edge ], [ 0, %for.body.lr.ph.i ]
  %cmp35.i = phi i1 [ true, %if.end34.i.thread.for.body.i.outer_crit_edge ], [ false, %for.body.lr.ph.i ]
  %47 = ptrtoint ptr %fibs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fibs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end34.i.for.body.i_crit_edge, %for.body.i.outer
  %index.0243.i = phi i32 [ %inc.i, %if.end34.i.for.body.i_crit_edge ], [ %index.0243.i.ph, %for.body.i.outer ]
  %hw_fib_va.i = getelementptr %struct.fib, ptr %48, i32 %index.0243.i, i32 13
  %49 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_fib_va.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %53 = and i32 %52, -2145320960
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %53)
  %.not.i = icmp eq i32 %53, -2147483648
  br i1 %.not.i, label %for.body.i.if.end34.i.thread_crit_edge, label %lor.lhs.false.critedge.i

for.body.i.if.end34.i.thread_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.thread

lor.lhs.false.critedge.i:                         ; preds = %for.body.i
  %flags.i = getelementptr %struct.fib, ptr %48, i32 %index.0243.i, i32 9
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i, align 4
  %and24.i = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end34.i, label %lor.lhs.false.critedge.i.if.end34.i.thread_crit_edge

lor.lhs.false.critedge.i.if.end34.i.thread_crit_edge: ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i.thread

if.end34.i:                                       ; preds = %lor.lhs.false.critedge.i
  %inc.i = add nuw nsw i32 %index.0243.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.end.i, label %if.end34.i.for.body.i_crit_edge

if.end34.i.for.body.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end34.i.thread:                                ; preds = %lor.lhs.false.critedge.i.if.end34.i.thread_crit_edge, %for.body.i.if.end34.i.thread_crit_edge
  %event_lock.i = getelementptr %struct.fib, ptr %48, i32 %index.0243.i, i32 5
  %call30.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #13
  %event_wait.i = getelementptr %struct.fib, ptr %48, i32 %index.0243.i, i32 4
  tail call void @complete(ptr noundef %event_wait.i) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call30.i) #13
  tail call void @schedule() #13
  %inc.i183 = add nuw nsw i32 %index.0243.i, 1
  %exitcond.not.i184 = icmp eq i32 %inc.i183, %add.i
  br i1 %exitcond.not.i184, label %if.end34.i.thread.if.then37.i_crit_edge, label %if.end34.i.thread.for.body.i.outer_crit_edge

if.end34.i.thread.for.body.i.outer_crit_edge:     ; preds = %if.end34.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.outer

if.end34.i.thread.if.then37.i_crit_edge:          ; preds = %if.end34.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37.i

for.end.i:                                        ; preds = %if.end34.i
  br i1 %cmp35.i, label %for.end.i.if.then37.i_crit_edge, label %for.end.i.if.end38.i_crit_edge

for.end.i.if.end38.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38.i

for.end.i.if.then37.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37.i

if.then37.i:                                      ; preds = %for.end.i.if.then37.i_crit_edge, %if.end34.i.thread.if.then37.i_crit_edge
  tail call void @msleep(i32 noundef 2000) #13
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %for.end.i.if.end38.i_crit_edge, %if.end13.i.if.end38.i_crit_edge
  %cardtype.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 43
  %56 = ptrtoint ptr %cardtype.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cardtype.i, align 8
  tail call void @aac_free_irq(ptr noundef %aac) #13
  %hw_fib_va.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 8
  %58 = ptrtoint ptr %hw_fib_va.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_fib_va.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i, label %if.end38.i.aac_fib_map_free.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end38.i.aac_fib_map_free.exit.i_crit_edge:     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aac_fib_map_free.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end38.i
  %max_cmd_size.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 6
  %60 = ptrtoint ptr %max_cmd_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_cmd_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool1.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.aac_fib_map_free.exit.i_crit_edge, label %if.end.i221.i

lor.lhs.false.i.i.aac_fib_map_free.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aac_fib_map_free.exit.i

if.end.i221.i:                                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %scsi_host_ptr, align 8
  %can_queue.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %63, i32 0, i32 26
  %64 = ptrtoint ptr %can_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %can_queue.i.i, align 4
  %add.i.i = add i32 %65, 8
  %max_fib_size.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 3
  %66 = ptrtoint ptr %max_fib_size.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_fib_size.i.i, align 8
  %add2.i.i = add i32 %67, 32
  %mul.i.i = mul i32 %add2.i.i, %add.i.i
  %sub.i.i = add i32 %mul.i.i, 31
  %pdev.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 30
  %68 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i.i, align 4
  %dev4.i.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %hw_fib_pa.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 7
  %70 = ptrtoint ptr %hw_fib_pa.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hw_fib_pa.i.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev4.i.i, i32 noundef %sub.i.i, ptr noundef nonnull %59, i32 noundef %71, i32 noundef 0) #13
  %72 = ptrtoint ptr %hw_fib_va.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %hw_fib_va.i.i, align 4
  %73 = ptrtoint ptr %hw_fib_pa.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %hw_fib_pa.i.i, align 8
  br label %aac_fib_map_free.exit.i

aac_fib_map_free.exit.i:                          ; preds = %if.end.i221.i, %lor.lhs.false.i.i.aac_fib_map_free.exit.i_crit_edge, %if.end38.i.aac_fib_map_free.exit.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 30
  %74 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %comm_size.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 34
  %76 = ptrtoint ptr %comm_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %comm_size.i, align 4
  %comm_addr.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 32
  %78 = ptrtoint ptr %comm_addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %comm_addr.i, align 4
  %comm_phys.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 33
  %80 = ptrtoint ptr %comm_phys.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %comm_phys.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %77, ptr noundef %79, i32 noundef %81, i32 noundef 0) #13
  %adapter_ioremap.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 17, i32 8
  %82 = ptrtoint ptr %adapter_ioremap.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adapter_ioremap.i, align 4
  %call40.i = tail call i32 %83(ptr noundef %aac, i32 noundef 0) #13
  %84 = ptrtoint ptr %comm_addr.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %comm_addr.i, align 4
  %85 = ptrtoint ptr %comm_phys.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %comm_phys.i, align 8
  %queues.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 15
  %86 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %queues.i, align 8
  tail call void @kfree(ptr noundef %87) #13
  %88 = ptrtoint ptr %queues.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %queues.i, align 8
  %fsa_dev.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 39
  %89 = ptrtoint ptr %fsa_dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fsa_dev.i, align 8
  tail call void @kfree(ptr noundef %90) #13
  %91 = ptrtoint ptr %fsa_dev.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %fsa_dev.i, align 8
  %call45.i = tail call ptr @aac_get_driver_ident(i32 noundef %57) #13
  %quirks46.i = getelementptr inbounds %struct.aac_driver_ident, ptr %call45.i, i32 0, i32 5
  %92 = ptrtoint ptr %quirks46.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %quirks46.i, align 4
  %and47.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.else.i, label %if.end64.i

if.else.i:                                        ; preds = %aac_fib_map_free.exit.i
  %and53.i = and i32 %93, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  %94 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdev.i, align 4
  %dev57.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  br i1 %tobool54.not.i, label %if.then55.i, label %if.else59.i

if.then55.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call58.i = tail call i32 @dma_set_mask(ptr noundef %dev57.i, i64 noundef 4294967295) #13
  br label %if.end73.i

if.else59.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call62.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev57.i, i64 noundef 4294967295) #13
  br label %if.end73.i

if.end64.i:                                       ; preds = %aac_fib_map_free.exit.i
  %96 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdev.i, align 4
  %dev51.i = getelementptr inbounds %struct.pci_dev, ptr %97, i32 0, i32 44
  %call52.i = tail call i32 @dma_set_mask(ptr noundef %dev51.i, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool68.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool68.not.i, label %if.then69.i, label %if.end64.i.out.thread.i_crit_edge

if.end64.i.out.thread.i_crit_edge:                ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread.i

if.then69.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev.i, align 4
  %dev71.i = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %call72.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev71.i, i64 noundef 2147483647) #13
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then69.i, %if.else59.i, %if.then55.i
  %retval1.3.i = phi i32 [ %call72.i, %if.then69.i ], [ %call58.i, %if.then55.i ], [ %call62.i, %if.else59.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.3.i)
  %tobool74.not.i = icmp eq i32 %retval1.3.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.end73.i.out.thread.i_crit_edge

if.end73.i.out.thread.i_crit_edge:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread.i

if.end76.i:                                       ; preds = %if.end73.i
  %call77.i = tail call ptr @aac_get_driver_ident(i32 noundef %57) #13
  %100 = ptrtoint ptr %call77.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call77.i, align 4
  %call78.i = tail call i32 %101(ptr noundef %aac) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end81.i, label %if.end76.i.out.thread.i_crit_edge

if.end76.i.out.thread.i_crit_edge:                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread.i

if.end81.i:                                       ; preds = %if.end76.i
  br i1 %tobool82.not.i, label %if.end81.i.if.end98.i_crit_edge, label %if.then83.i

if.end81.i.if.end98.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end98.i

if.then83.i:                                      ; preds = %if.end81.i
  %name.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 1
  %102 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name.i, align 8
  %call84.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @aac_command_thread, ptr noundef %aac, i32 noundef -1, ptr noundef nonnull @.str.42, ptr noundef %103) #13
  %cmp.i.i = icmp ugt ptr %call84.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %out.i, label %if.end88.i

if.end88.i:                                       ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #15
  %call87.i = tail call i32 @wake_up_process(ptr noundef %call84.i) #13
  %104 = ptrtoint ptr %thread.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call84.i, ptr %thread.i, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.end88.i, %if.end81.i.if.end98.i_crit_edge
  %call99.i = tail call i32 @aac_get_adapter_info(ptr noundef %aac) #13
  %and100.i = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %if.end98.i.if.end111.i_crit_edge, label %land.lhs.true102.i

if.end98.i.if.end111.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111.i

land.lhs.true102.i:                               ; preds = %if.end98.i
  %sg_tablesize.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 28
  %105 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %sg_tablesize.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %106)
  %cmp104.i = icmp ugt i16 %106, 34
  br i1 %cmp104.i, label %if.then106.i, label %land.lhs.true102.i.if.end111.i_crit_edge

land.lhs.true102.i.if.end111.i_crit_edge:         ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111.i

if.then106.i:                                     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 34, ptr %sg_tablesize.i, align 2
  %max_sectors.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 30
  %108 = ptrtoint ptr %max_sectors.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 384, ptr %max_sectors.i, align 8
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then106.i, %land.lhs.true102.i.if.end111.i_crit_edge, %if.end98.i.if.end111.i_crit_edge
  %and112.i = and i32 %93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.not.i = icmp eq i32 %and112.i, 0
  br i1 %tobool113.not.i, label %if.end111.i.out.thread233.i_crit_edge, label %land.lhs.true114.i

if.end111.i.out.thread233.i_crit_edge:            ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread233.i

land.lhs.true114.i:                               ; preds = %if.end111.i
  %sg_tablesize115.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 28
  %109 = ptrtoint ptr %sg_tablesize115.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %sg_tablesize115.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %110)
  %cmp117.i = icmp ugt i16 %110, 17
  br i1 %cmp117.i, label %if.then119.i, label %land.lhs.true114.i.out.thread233.i_crit_edge

land.lhs.true114.i.out.thread233.i_crit_edge:     ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread233.i

if.then119.i:                                     ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %sg_tablesize115.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 17, ptr %sg_tablesize115.i, align 2
  %max_sectors125.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 30
  %112 = ptrtoint ptr %max_sectors125.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 248, ptr %max_sectors125.i, align 8
  br label %out.thread233.i

out.thread233.i:                                  ; preds = %if.then119.i, %land.lhs.true114.i.out.thread233.i_crit_edge, %if.end111.i.out.thread233.i_crit_edge
  %call127.i = tail call i32 @aac_get_config_status(ptr noundef %aac, i32 noundef 1) #13
  %call128.i = tail call i32 @aac_get_containers(ptr noundef %aac) #13
  tail call void @scsi_host_complete_all_commands(ptr noundef %15, i32 noundef 8) #13
  %113 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %in_reset, align 2
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %114 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %114)
  %cmp.i223.not.i = icmp eq i64 %114, -1
  br i1 %cmp.i223.not.i, label %do.end135.i, label %out.thread233.i.if.end138.i_crit_edge

out.thread233.i.if.end138.i_crit_edge:            ; preds = %out.thread233.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end138.i

out.thread.i:                                     ; preds = %if.end76.i.out.thread.i_crit_edge, %if.end73.i.out.thread.i_crit_edge, %if.end64.i.out.thread.i_crit_edge, %cond.end.i.out.thread.i_crit_edge
  %retval1.4.ph.i = phi i32 [ %call78.i, %if.end76.i.out.thread.i_crit_edge ], [ %retval1.3.i, %if.end73.i.out.thread.i_crit_edge ], [ %call10.i, %cond.end.i.out.thread.i_crit_edge ], [ %call52.i, %if.end64.i.out.thread.i_crit_edge ]
  %115 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %in_reset, align 2
  br label %if.end138.i

out.i:                                            ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #15
  %116 = ptrtoint ptr %call84.i to i32
  %117 = ptrtoint ptr %thread.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %thread.i, align 4
  %118 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %in_reset, align 2
  br label %if.then140.i

do.end135.i:                                      ; preds = %out.thread233.i
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev.i, align 4
  %dev137.i = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev137.i, ptr noundef nonnull @.str.43) #16
  %sa_firmware.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 66
  %121 = ptrtoint ptr %sa_firmware.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %sa_firmware.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i224.i = icmp eq i8 %122, 0
  %src_reinit_aif_worker.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 42
  %safw_rescan_work.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 41
  %src_reinit_aif_worker.i.sink.i.i = select i1 %tobool.not.i224.i, ptr %src_reinit_aif_worker.i.i.i, ptr %safw_rescan_work.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %123 = load ptr, ptr @system_wq, align 4
  %call.i.i.i3.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %123, ptr noundef %src_reinit_aif_worker.i.sink.i.i, i32 noundef 1000) #13
  br label %if.end138.i

if.end138.i:                                      ; preds = %do.end135.i, %out.thread.i, %out.thread233.i.if.end138.i_crit_edge
  %retval1.4232.i = phi i32 [ %retval1.4.ph.i, %out.thread.i ], [ 0, %do.end135.i ], [ 0, %out.thread233.i.if.end138.i_crit_edge ]
  br i1 %tobool82.not.i, label %if.end138.i._aac_reset_adapter.exit_crit_edge, label %if.end138.i.if.then140.i_crit_edge

if.end138.i.if.then140.i_crit_edge:               ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then140.i

if.end138.i._aac_reset_adapter.exit_crit_edge:    ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_aac_reset_adapter.exit

if.then140.i:                                     ; preds = %if.end138.i.if.then140.i_crit_edge, %out.i
  %retval1.4232239.i = phi i32 [ %retval1.4232.i, %if.end138.i.if.then140.i_crit_edge ], [ %116, %out.i ]
  %host_lock141.i = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 4
  %124 = ptrtoint ptr %host_lock141.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %host_lock141.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %125) #13
  br label %_aac_reset_adapter.exit

_aac_reset_adapter.exit:                          ; preds = %if.then140.i, %if.end138.i._aac_reset_adapter.exit_crit_edge
  %retval1.4232240.i = phi i32 [ %retval1.4232239.i, %if.then140.i ], [ %retval1.4232.i, %if.end138.i._aac_reset_adapter.exit_crit_edge ]
  %126 = ptrtoint ptr %host_lock180 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %host_lock180, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %127, i32 noundef %call73181) #13
  %call89 = tail call i32 @scsi_host_unblock(ptr noundef %1, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.4232240.i)
  %tobool90.not = icmp eq i32 %retval1.4232240.i, 0
  %spec.select = select i1 %tobool90.not, i32 %call89, i32 %retval1.4232240.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %spec.select)
  %cmp95 = icmp eq i32 %spec.select, -19
  %or.cond = select i1 %cmp60, i1 %cmp95, i1 false
  br i1 %or.cond, label %if.then97, label %_aac_reset_adapter.exit.cleanup_crit_edge

_aac_reset_adapter.exit.cleanup_crit_edge:        ; preds = %_aac_reset_adapter.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then97:                                        ; preds = %_aac_reset_adapter.exit
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock176) #13
  %free_fib.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 11
  %128 = ptrtoint ptr %free_fib.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %free_fib.i, align 8
  %tobool.not.i151 = icmp eq ptr %129, null
  br i1 %tobool.not.i151, label %aac_fib_alloc.exit.thread, label %if.then100

aac_fib_alloc.exit.thread:                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock176, i32 noundef %call2.i) #13
  br label %cleanup

if.then100:                                       ; preds = %if.then97
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %132 = ptrtoint ptr %free_fib.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %free_fib.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock176, i32 noundef %call2.i) #13
  %type.i = getelementptr inbounds %struct.fib, ptr %129, i32 0, i32 1
  %133 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 780, ptr %type.i, align 4
  %size.i = getelementptr inbounds %struct.fib, ptr %129, i32 0, i32 2
  %134 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 164, ptr %size.i, align 2
  %hw_fib_va.i153 = getelementptr inbounds %struct.fib, ptr %129, i32 0, i32 13
  %135 = ptrtoint ptr %hw_fib_va.i153 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw_fib_va.i153, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %136, align 4
  %flags8.i = getelementptr inbounds %struct.fib, ptr %129, i32 0, i32 9
  %138 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %flags8.i, align 4
  %callback.i = getelementptr inbounds %struct.fib, ptr %129, i32 0, i32 7
  %139 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %callback.i, align 4
  %callback_data.i = getelementptr inbounds %struct.fib, ptr %129, i32 0, i32 8
  %140 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %callback_data.i, align 4
  %141 = load ptr, ptr %hw_fib_va.i153, align 4
  %142 = call ptr @memset(ptr %141, i32 0, i32 32)
  %StructType.i = getelementptr inbounds %struct.aac_fibhdr, ptr %141, i32 0, i32 2
  %143 = ptrtoint ptr %StructType.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %StructType.i, align 2
  %dev.i156 = getelementptr inbounds %struct.fib, ptr %129, i32 0, i32 3
  %144 = ptrtoint ptr %dev.i156 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev.i156, align 4
  %max_fib_size.i = getelementptr inbounds %struct.aac_dev, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %max_fib_size.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %max_fib_size.i, align 8
  %conv.i = trunc i32 %147 to i16
  %148 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #13
  %Size.i = getelementptr inbounds %struct.aac_fibhdr, ptr %141, i32 0, i32 4
  %149 = ptrtoint ptr %Size.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %Size.i, align 4
  %150 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 218105856, ptr %141, align 4
  %hw_fib_pa.i = getelementptr inbounds %struct.fib, ptr %129, i32 0, i32 14
  %151 = ptrtoint ptr %hw_fib_pa.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %hw_fib_pa.i, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #13
  %u.i = getelementptr inbounds %struct.aac_fibhdr, ptr %141, i32 0, i32 7
  %154 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %u.i, align 4
  %155 = ptrtoint ptr %dev.i156 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i156, align 4
  %max_fib_size6.i = getelementptr inbounds %struct.aac_dev, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %max_fib_size6.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %max_fib_size6.i, align 8
  %conv7.i = trunc i32 %158 to i16
  %159 = tail call i16 @llvm.bswap.i16(i16 %conv7.i) #13
  %SenderSize.i = getelementptr inbounds %struct.aac_fibhdr, ptr %141, i32 0, i32 5
  %160 = ptrtoint ptr %SenderSize.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %159, ptr %SenderSize.i, align 2
  %161 = ptrtoint ptr %hw_fib_va.i153 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw_fib_va.i153, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 33554432, ptr %data, align 4
  %type = getelementptr inbounds %struct.hw_fib, ptr %162, i32 0, i32 1, i32 4
  %164 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1090519040, ptr %type, align 4
  %timeout = getelementptr inbounds %struct.hw_fib, ptr %162, i32 0, i32 1, i32 8
  %165 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 16777216, ptr %timeout, align 4
  %min = getelementptr inbounds %struct.hw_fib, ptr %162, i32 0, i32 1, i32 12
  %166 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 16777216, ptr %min, align 4
  %noRescan = getelementptr inbounds %struct.hw_fib, ptr %162, i32 0, i32 1, i32 16
  %167 = ptrtoint ptr %noRescan to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 16777216, ptr %noRescan, align 4
  %count = getelementptr inbounds %struct.hw_fib, ptr %162, i32 0, i32 1, i32 28
  %168 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %count, align 4
  %call101 = tail call i32 @aac_fib_send(i16 noundef zeroext 500, ptr noundef nonnull %129, i32 noundef 32, i32 undef, i32 noundef -2, i32 noundef 1, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call101)
  %cmp102 = icmp sgt i32 %call101, -1
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.then100
  %169 = ptrtoint ptr %hw_fib_va.i153 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hw_fib_va.i153, align 4
  %171 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %flags8.i, align 4
  %and.i159 = and i32 %172, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool.not.i160, label %if.end.i161, label %if.then104.cleanup.sink.split.i_crit_edge

if.then104.cleanup.sink.split.i_crit_edge:        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end.i161:                                      ; preds = %if.then104
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %170, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp.i = icmp eq i32 %174, 0
  br i1 %cmp.i, label %if.end.i161.if.then109_crit_edge, label %lor.lhs.false.i

if.end.i161.if.then109_crit_edge:                 ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then109

lor.lhs.false.i:                                  ; preds = %if.end.i161
  %done.i = getelementptr inbounds %struct.fib, ptr %129, i32 0, i32 6
  %175 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %176)
  %cmp1.i = icmp eq i32 %176, 2
  br i1 %cmp1.i, label %lor.lhs.false.i.if.then109_crit_edge, label %if.end3.i

lor.lhs.false.i.if.then109_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then109

if.end3.i:                                        ; preds = %lor.lhs.false.i
  %StructType.i162 = getelementptr inbounds %struct.aac_fibhdr, ptr %170, i32 0, i32 2
  %177 = ptrtoint ptr %StructType.i162 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %StructType.i162, align 2
  %179 = zext i8 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %178, label %if.end3.i.if.then109_crit_edge [
    i8 1, label %if.end3.i.if.end19.i_crit_edge
    i8 4, label %if.end3.i.if.end19.i_crit_edge202
    i8 5, label %if.end3.i.if.end19.i_crit_edge203
  ]

if.end3.i.if.end19.i_crit_edge203:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.end3.i.if.end19.i_crit_edge202:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.end3.i.if.end19.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.end3.i.if.then109_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then109

if.end19.i:                                       ; preds = %if.end3.i.if.end19.i_crit_edge, %if.end3.i.if.end19.i_crit_edge202, %if.end3.i.if.end19.i_crit_edge203
  %180 = and i32 %174, 553648128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %do.body.i, label %if.end19.i.cleanup.sink.split.i_crit_edge

if.end19.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

do.body.i:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/commsup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 989, 0\0A.popsection", ""() #13, !srcloc !139
  unreachable

cleanup.sink.split.i:                             ; preds = %if.end19.i.cleanup.sink.split.i_crit_edge, %if.then104.cleanup.sink.split.i_crit_edge
  %182 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %170, align 4
  br label %if.then109

if.end106:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call101)
  %cmp107.not = icmp eq i32 %call101, -512
  br i1 %cmp107.not, label %if.end106.cleanup_crit_edge, label %if.end106.if.then109_crit_edge

if.end106.if.then109_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then109

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then109:                                       ; preds = %if.end106.if.then109_crit_edge, %cleanup.sink.split.i, %if.end3.i.if.then109_crit_edge, %lor.lhs.false.i.if.then109_crit_edge, %if.end.i161.if.then109_crit_edge
  %done.i163 = getelementptr inbounds %struct.fib, ptr %129, i32 0, i32 6
  %183 = ptrtoint ptr %done.i163 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %done.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp.i164 = icmp eq i32 %184, 2
  br i1 %cmp.i164, label %if.then109.cleanup_crit_edge, label %do.body1.i

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1.i:                                       ; preds = %if.then109
  %185 = ptrtoint ptr %dev.i156 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i156, align 4
  %fib_lock.i166 = getelementptr inbounds %struct.aac_dev, ptr %186, i32 0, i32 12
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock.i166) #13
  %187 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %flags8.i, align 4
  %and.i167 = and i32 %188, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not.i168 = icmp eq i32 %and.i167, 0
  br i1 %tobool.not.i168, label %do.body1.i.if.end10.i_crit_edge, label %if.then9.i, !prof !133

do.body1.i.if.end10.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then9.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3) to i32))
  %189 = load i32, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3), align 4
  %inc.i169 = add i32 %189, 1
  store i32 %inc.i169, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3), align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %do.body1.i.if.end10.i_crit_edge
  %and12.i = and i32 %188, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i171, label %if.end10.i.if.end25.i_crit_edge

if.end10.i.if.end25.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

land.lhs.true.i171:                               ; preds = %if.end10.i
  %190 = ptrtoint ptr %hw_fib_va.i153 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw_fib_va.i153, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp14.not.i = icmp eq i32 %193, 0
  br i1 %cmp14.not.i, label %land.lhs.true.i171.if.end25.i_crit_edge, label %do.end19.i

land.lhs.true.i171.if.end25.i_crit_edge:          ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

do.end19.i:                                       ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #15
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #13
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %129, i32 noundef %194) #16
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end19.i, %land.lhs.true.i171.if.end25.i_crit_edge, %if.end10.i.if.end25.i_crit_edge
  %195 = ptrtoint ptr %dev.i156 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev.i156, align 4
  %free_fib.i172 = getelementptr inbounds %struct.aac_dev, ptr %196, i32 0, i32 11
  %197 = ptrtoint ptr %free_fib.i172 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %free_fib.i172, align 8
  %199 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %198, ptr %129, align 4
  store ptr %129, ptr %free_fib.i172, align 8
  %200 = load ptr, ptr %dev.i156, align 4
  %fib_lock30.i = getelementptr inbounds %struct.aac_dev, ptr %200, i32 0, i32 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock30.i, i32 noundef %call3.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end25.i, %if.then109.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %aac_fib_alloc.exit.thread, %_aac_reset_adapter.exit.cleanup_crit_edge, %if.then54, %do.end43
  %retval.0 = phi i32 [ -16, %do.end43 ], [ -16, %if.then54 ], [ -19, %if.end106.cleanup_crit_edge ], [ %spec.select, %_aac_reset_adapter.exit.cleanup_crit_edge ], [ -19, %aac_fib_alloc.exit.thread ], [ -19, %if.then109.cleanup_crit_edge ], [ -19, %if.end25.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_send_shutdown(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_host_unblock(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_check_health(ptr noundef %aac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !140
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end12, label %do.end12.thread

do.end12:                                         ; preds = %entry
  tail call void @trace_hardirqs_off() #13
  %fib_lock = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 12
  %call15 = tail call i32 @_raw_spin_trylock(ptr noundef %fib_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then26, label %do.end12.if.end52_crit_edge

do.end12.if.end52_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

do.end12.thread:                                  ; preds = %entry
  %fib_lock177 = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 12
  %call15178 = tail call i32 @_raw_spin_trylock(ptr noundef %fib_lock177) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15178)
  %tobool16.not179 = icmp eq i32 %call15178, 0
  br i1 %tobool16.not179, label %do.end12.thread.do.body28_crit_edge, label %do.end12.thread.if.end52_crit_edge

do.end12.thread.if.end52_crit_edge:               ; preds = %do.end12.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

do.end12.thread.do.body28_crit_edge:              ; preds = %do.end12.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body28

if.then26:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body28

do.body28:                                        ; preds = %if.then26, %do.end12.thread.do.body28_crit_edge
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !141
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not, label %if.then40, label %do.body28.do.end43_crit_edge, !prof !135

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28.do.end43_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !142
  br label %cleanup125

if.end52:                                         ; preds = %do.end12.thread.if.end52_crit_edge, %do.end12.if.end52_crit_edge
  %fib_lock180 = phi ptr [ %fib_lock177, %do.end12.thread.if.end52_crit_edge ], [ %fib_lock, %do.end12.if.end52_crit_edge ]
  %in_reset = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 63
  %2 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_reset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool54.not = icmp eq i8 %3, 0
  br i1 %tobool54.not, label %lor.lhs.false, label %if.end52.if.then57_crit_edge

if.end52.if.then57_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then57

lor.lhs.false:                                    ; preds = %if.end52
  %pdev.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 30
  %4 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i.i, align 4
  %error_state.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %error_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.not.i.i = icmp eq i32 %7, 1
  br i1 %cmp.i.not.i.i, label %aac_pci_offline.exit.i, label %lor.lhs.false.if.end59_crit_edge

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

aac_pci_offline.exit.i:                           ; preds = %lor.lhs.false
  %handle_pci_error.i.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 84
  %8 = ptrtoint ptr %handle_pci_error.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle_pci_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.i.not.i, label %aac_adapter_check_health.exit, label %aac_pci_offline.exit.i.if.end59_crit_edge, !prof !133

aac_pci_offline.exit.i.if.end59_crit_edge:        ; preds = %aac_pci_offline.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

aac_adapter_check_health.exit:                    ; preds = %aac_pci_offline.exit.i
  %adapter_check_health.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 17, i32 5
  %10 = ptrtoint ptr %adapter_check_health.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter_check_health.i, align 4
  %call3.i = tail call i32 %11(ptr noundef %aac) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool56.not = icmp eq i32 %call3.i, 0
  br i1 %tobool56.not, label %aac_adapter_check_health.exit.if.then57_crit_edge, label %aac_adapter_check_health.exit.if.end59_crit_edge

aac_adapter_check_health.exit.if.end59_crit_edge: ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

aac_adapter_check_health.exit.if.then57_crit_edge: ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then57

if.then57:                                        ; preds = %aac_adapter_check_health.exit.if.then57_crit_edge, %if.end52.if.then57_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock180, i32 noundef %0) #13
  br label %cleanup125

if.end59:                                         ; preds = %aac_adapter_check_health.exit.if.end59_crit_edge, %aac_pci_offline.exit.i.if.end59_crit_edge, %lor.lhs.false.if.end59_crit_edge
  %retval.0.i183 = phi i32 [ %call3.i, %aac_adapter_check_health.exit.if.end59_crit_edge ], [ -1, %aac_pci_offline.exit.i.if.end59_crit_edge ], [ -1, %lor.lhs.false.if.end59_crit_edge ]
  %12 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %in_reset, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %div = udiv i32 %13, 100
  %fib_list = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 16
  %14 = ptrtoint ptr %fib_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fib_list, align 4
  %cmp62.not186 = icmp eq ptr %15, %fib_list
  br i1 %cmp62.not186, label %if.end59.while.end_crit_edge, label %while.body.lr.ph

if.end59.while.end_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end59
  %max_fib_size.i = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 3
  %16 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i183)
  br label %while.body

while.body:                                       ; preds = %cleanup103.while.body_crit_edge, %while.body.lr.ph
  %entry1.0187 = phi ptr [ %15, %while.body.lr.ph ], [ %entry1.3, %cleanup103.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %entry1.0187, i32 -12
  %count = getelementptr i8, ptr %entry1.0187, i32 68
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %18)
  %cmp65 = icmp ugt i32 %18, 20
  br i1 %cmp65, label %if.then67, label %while.body.if.end74_crit_edge

while.body.if.end74_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then67:                                        ; preds = %while.body
  %jiffies = getelementptr i8, ptr %entry1.0187, i32 -4
  %19 = ptrtoint ptr %jiffies to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %jiffies, align 4
  %sub = sub i32 %div, %20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aif_timeout to i32))
  %21 = load i32, ptr @aif_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %21)
  %cmp68 = icmp ugt i32 %sub, %21
  br i1 %cmp68, label %cleanup.thread, label %if.then67.if.end74_crit_edge

if.then67.if.end74_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

cleanup.thread:                                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %entry1.0187 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %entry1.0187, align 4
  %call72 = tail call i32 @aac_close_fib_context(ptr noundef %aac, ptr noundef %add.ptr) #13
  br label %cleanup103

if.end74:                                         ; preds = %if.then67.if.end74_crit_edge, %while.body.if.end74_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 2848, i32 noundef 512) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i176 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 2848, i32 noundef 164) #17
  %tobool77.not = icmp eq ptr %call7.i.i176, null
  %tobool78.not = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %tobool77.not, i1 true, i1 %tobool78.not
  br i1 %or.cond, label %do.end98, label %if.then79

if.then79:                                        ; preds = %if.end74
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %call7.i.i176, i32 0, i32 13
  %26 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %hw_fib_va, align 8
  %dev = getelementptr inbounds %struct.fib, ptr %call7.i.i176, i32 0, i32 3
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %aac, ptr %dev, align 8
  %28 = call ptr @memset(ptr %call7.i.i, i32 0, i32 32)
  %StructType.i = getelementptr inbounds %struct.aac_fibhdr, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %StructType.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %StructType.i, align 2
  %30 = ptrtoint ptr %max_fib_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_fib_size.i, align 8
  %conv.i = trunc i32 %31 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #13
  %Size.i = getelementptr inbounds %struct.aac_fibhdr, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %Size.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %Size.i, align 8
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 218105856, ptr %call7.i.i, align 8
  %hw_fib_pa.i = getelementptr inbounds %struct.fib, ptr %call7.i.i176, i32 0, i32 14
  %35 = ptrtoint ptr %hw_fib_pa.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_fib_pa.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #13
  %u.i = getelementptr inbounds %struct.aac_fibhdr, ptr %call7.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %u.i, align 8
  %SenderSize.i = getelementptr inbounds %struct.aac_fibhdr, ptr %call7.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %SenderSize.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %32, ptr %SenderSize.i, align 2
  %type = getelementptr inbounds %struct.fib, ptr %call7.i.i176, i32 0, i32 1
  %40 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 780, ptr %type, align 4
  %size = getelementptr inbounds %struct.fib, ptr %call7.i.i176, i32 0, i32 2
  %41 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 164, ptr %size, align 2
  %data = getelementptr inbounds %struct.hw_fib, ptr %call7.i.i, i32 0, i32 1
  %data80 = getelementptr inbounds %struct.fib, ptr %call7.i.i176, i32 0, i32 11
  %42 = ptrtoint ptr %data80 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %data, ptr %data80, align 8
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 16777216, ptr %data, align 8
  %seqnum = getelementptr inbounds %struct.hw_fib, ptr %call7.i.i, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %seqnum to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %seqnum, align 4
  %data83 = getelementptr inbounds %struct.hw_fib, ptr %call7.i.i, i32 0, i32 1, i32 8
  %45 = ptrtoint ptr %data83 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 385875968, ptr %data83, align 8
  %arrayidx87 = getelementptr %struct.hw_fib, ptr %call7.i.i, i32 0, i32 1, i32 12
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 50331648, ptr %arrayidx87, align 4
  %arrayidx90 = getelementptr %struct.hw_fib, ptr %call7.i.i, i32 0, i32 1, i32 16
  %47 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 50331648, ptr %arrayidx90, align 8
  %arrayidx93 = getelementptr %struct.hw_fib, ptr %call7.i.i, i32 0, i32 1, i32 20
  %48 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %16, ptr %arrayidx93, align 4
  %fiblink = getelementptr inbounds %struct.fib, ptr %call7.i.i176, i32 0, i32 10
  %fib_list94 = getelementptr i8, ptr %entry1.0187, i32 72
  %prev.i = getelementptr i8, ptr %entry1.0187, i32 76
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %fiblink, ptr noundef %50, ptr noundef %fib_list94) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then79.list_add_tail.exit_crit_edge

if.then79.list_add_tail.exit_crit_edge:           ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %fiblink, ptr %prev.i, align 4
  %52 = ptrtoint ptr %fiblink to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %fib_list94, ptr %fiblink, align 8
  %prev3.i.i = getelementptr inbounds %struct.fib, ptr %call7.i.i176, i32 0, i32 10, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %fiblink, ptr %50, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then79.list_add_tail.exit_crit_edge
  %55 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %count, align 4
  %completion = getelementptr i8, ptr %entry1.0187, i32 8
  tail call void @complete(ptr noundef %completion) #13
  br label %if.end101

do.end98:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  tail call void @kfree(ptr noundef %call7.i.i176) #13
  tail call void @kfree(ptr noundef %call7.i.i) #13
  br label %if.end101

if.end101:                                        ; preds = %do.end98, %list_add_tail.exit
  %57 = ptrtoint ptr %entry1.0187 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %entry1.0187, align 4
  br label %cleanup103

cleanup103:                                       ; preds = %if.end101, %cleanup.thread
  %entry1.3 = phi ptr [ %58, %if.end101 ], [ %23, %cleanup.thread ]
  %cmp62.not = icmp eq ptr %entry1.3, %fib_list
  br i1 %cmp62.not, label %cleanup103.while.end_crit_edge, label %cleanup103.while.body_crit_edge

cleanup103.while.body_crit_edge:                  ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup103.while.end_crit_edge:                   ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup103.while.end_crit_edge, %if.end59.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock180, i32 noundef %0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i183)
  %cmp109 = icmp slt i32 %retval.0.i183, 0
  %name = getelementptr inbounds %struct.aac_dev, ptr %aac, i32 0, i32 1
  %59 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name, align 8
  %.str.27..str.30 = select i1 %cmp109, ptr @.str.27, ptr @.str.30
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.27..str.30, ptr noundef %60, i32 noundef %retval.0.i183) #16
  %61 = ptrtoint ptr %in_reset to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %in_reset, align 2
  br label %cleanup125

cleanup125:                                       ; preds = %while.end, %if.then57, %do.end43
  %retval.0 = phi i32 [ 0, %do.end43 ], [ 0, %if.then57 ], [ %retval.0.i183, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_close_fib_context(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_scan_host(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_mutex = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %scan_mutex, i32 noundef 0) #13
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %0 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @aac_setup_safw_adapter(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.if.then.i_crit_edge, label %for.cond.preheader.i.i, !prof !135

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.cond.preheader.i.i:                           ; preds = %if.then
  %scsi_host_ptr.i.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %scan_counter2.i.i62.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 78
  %maximum_num_containers.i.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %fsa_dev.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 39
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.068.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %div67.i.i = lshr i32 %i.068.i.i, 8
  %rem.i.i = and i32 %i.068.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.068.i.i)
  %cmp.not.i.i.i.i = icmp ult i32 %i.068.i.i, 256
  %add.i.i.i.i = add nuw nsw i32 %div67.i.i, 1
  %spec.select.i.i.i.i = select i1 %cmp.not.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %2 = ptrtoint ptr %scsi_host_ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scsi_host_ptr.i.i.i.i, align 8
  %call.i.i.i.i = tail call ptr @scsi_device_lookup(ptr noundef %3, i32 noundef %spec.select.i.i.i.i, i32 noundef %rem.i.i, i64 noundef 0) #13
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.aac_is_safw_device_exposed.exit.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.aac_is_safw_device_exposed.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aac_is_safw_device_exposed.exit.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_device_put(ptr noundef nonnull %call.i.i.i.i) #13
  br label %aac_is_safw_device_exposed.exit.i.i

aac_is_safw_device_exposed.exit.i.i:              ; preds = %if.then.i.i.i.i, %for.body.i.i.aac_is_safw_device_exposed.exit.i.i_crit_edge
  br i1 %cmp.not.i.i.i.i, label %is_safw_raid_volume.exit.i.i.i, label %aac_is_safw_target_valid.exit.thread60.i.i

is_safw_raid_volume.exit.i.i.i:                   ; preds = %aac_is_safw_device_exposed.exit.i.i
  %4 = ptrtoint ptr %maximum_num_containers.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maximum_num_containers.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rem.i.i)
  %cmp1.i.not.i.i.i = icmp sgt i32 %5, %rem.i.i
  br i1 %cmp1.i.not.i.i.i, label %aac_is_safw_target_valid.exit.thread.i.i, label %aac_is_safw_target_valid.exit.i.i

aac_is_safw_target_valid.exit.i.i:                ; preds = %is_safw_raid_volume.exit.i.i.i
  %scan_counter.i.i.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %div67.i.i, i32 %rem.i.i, i32 4
  %6 = ptrtoint ptr %scan_counter.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_counter.i.i.i.i, align 4
  %8 = ptrtoint ptr %scan_counter2.i.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_counter2.i.i62.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i7.i.i.i = icmp eq i32 %7, %9
  %or.cond.i.i = select i1 %cmp.i7.i.i.i, i1 %tobool.not.i.i.i, i1 false
  br i1 %or.cond.i.i, label %aac_is_safw_target_valid.exit.i.i.if.then7.i.i_crit_edge, label %aac_is_safw_target_valid.exit.i.i.if.else.i48.i.i_crit_edge

aac_is_safw_target_valid.exit.i.i.if.else.i48.i.i_crit_edge: ; preds = %aac_is_safw_target_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i48.i.i

aac_is_safw_target_valid.exit.i.i.if.then7.i.i_crit_edge: ; preds = %aac_is_safw_target_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i

aac_is_safw_target_valid.exit.thread60.i.i:       ; preds = %aac_is_safw_device_exposed.exit.i.i
  %scan_counter.i.i61.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %div67.i.i, i32 %rem.i.i, i32 4
  %10 = ptrtoint ptr %scan_counter.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_counter.i.i61.i.i, align 4
  %12 = ptrtoint ptr %scan_counter2.i.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_counter2.i.i62.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i7.i63.i.i = icmp eq i32 %11, %13
  %or.cond65.i.i = select i1 %cmp.i7.i63.i.i, i1 %tobool.not.i.i.i, i1 false
  br i1 %or.cond65.i.i, label %aac_is_safw_target_valid.exit.thread60.i.i.if.then7.i.i_crit_edge, label %aac_is_safw_target_valid.exit.thread60.i.i.if.else.i48.i.i_crit_edge

aac_is_safw_target_valid.exit.thread60.i.i.if.else.i48.i.i_crit_edge: ; preds = %aac_is_safw_target_valid.exit.thread60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i48.i.i

aac_is_safw_target_valid.exit.thread60.i.i.if.then7.i.i_crit_edge: ; preds = %aac_is_safw_target_valid.exit.thread60.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i

aac_is_safw_target_valid.exit.thread.i.i:         ; preds = %is_safw_raid_volume.exit.i.i.i
  %14 = ptrtoint ptr %fsa_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fsa_dev.i.i.i, align 8
  %valid.i.i.i = getelementptr %struct.fsa_dev_info, ptr %15, i32 %rem.i.i, i32 7
  %16 = ptrtoint ptr %valid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %valid.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not58.i.i = icmp ne i8 %17, 0
  %or.cond59.i.i = select i1 %tobool5.not58.i.i, i1 %tobool.not.i.i.i, i1 false
  br i1 %or.cond59.i.i, label %aac_is_safw_target_valid.exit.thread.i.i.if.then7.i.i_crit_edge, label %if.then.i43.i.i

aac_is_safw_target_valid.exit.thread.i.i.if.then7.i.i_crit_edge: ; preds = %aac_is_safw_target_valid.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %aac_is_safw_target_valid.exit.thread.i.i.if.then7.i.i_crit_edge, %aac_is_safw_target_valid.exit.thread60.i.i.if.then7.i.i_crit_edge, %aac_is_safw_target_valid.exit.i.i.if.then7.i.i_crit_edge
  %18 = ptrtoint ptr %scsi_host_ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scsi_host_ptr.i.i.i.i, align 8
  %call.i.i.i = tail call i32 @scsi_add_device(ptr noundef %19, i32 noundef %spec.select.i.i.i.i, i32 noundef %rem.i.i, i64 noundef 0) #13
  br label %for.inc.i.i

if.then.i43.i.i:                                  ; preds = %aac_is_safw_target_valid.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i42.i.i = zext i8 %17 to i32
  br label %aac_is_safw_target_valid.exit50.i.i

if.else.i48.i.i:                                  ; preds = %aac_is_safw_target_valid.exit.thread60.i.i.if.else.i48.i.i_crit_edge, %aac_is_safw_target_valid.exit.i.i.if.else.i48.i.i_crit_edge
  %scan_counter.i.i44.i.i = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 81, i32 %div67.i.i, i32 %rem.i.i, i32 4
  %20 = ptrtoint ptr %scan_counter.i.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_counter.i.i44.i.i, align 4
  %22 = ptrtoint ptr %scan_counter2.i.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_counter2.i.i62.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i7.i46.i.i = icmp eq i32 %21, %23
  %conv.i.i47.i.i = zext i1 %cmp.i7.i46.i.i to i32
  br label %aac_is_safw_target_valid.exit50.i.i

aac_is_safw_target_valid.exit50.i.i:              ; preds = %if.else.i48.i.i, %if.then.i43.i.i
  %retval.0.i49.i.i = phi i32 [ %conv.i42.i.i, %if.then.i43.i.i ], [ %conv.i.i47.i.i, %if.else.i48.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i49.i.i)
  %tobool10.not.i.i = icmp ne i32 %retval.0.i49.i.i, 0
  %or.cond34.i.i = select i1 %tobool10.not.i.i, i1 true, i1 %tobool.not.i.i.i
  br i1 %or.cond34.i.i, label %aac_is_safw_target_valid.exit50.i.i.for.inc.i.i_crit_edge, label %if.then13.i.i

aac_is_safw_target_valid.exit50.i.i.for.inc.i.i_crit_edge: ; preds = %aac_is_safw_target_valid.exit50.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then13.i.i:                                    ; preds = %aac_is_safw_target_valid.exit50.i.i
  %24 = ptrtoint ptr %scsi_host_ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scsi_host_ptr.i.i.i.i, align 8
  %call.i.i55.i.i = tail call ptr @scsi_device_lookup(ptr noundef %25, i32 noundef %spec.select.i.i.i.i, i32 noundef %rem.i.i, i64 noundef 0) #13
  tail call void @scsi_remove_device(ptr noundef %call.i.i55.i.i) #13
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i55.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then13.i.i.for.inc.i.i_crit_edge, label %if.then.i.i56.i.i

if.then13.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i56.i.i:                                ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_device_put(ptr noundef nonnull %call.i.i55.i.i) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i56.i.i, %if.then13.i.i.for.inc.i.i_crit_edge, %aac_is_safw_target_valid.exit50.i.i.for.inc.i.i_crit_edge, %if.then7.i.i
  %inc.i.i = add nuw nsw i32 %i.068.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1280
  br i1 %exitcond.not.i.i, label %aac_update_safw_host_devices.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

aac_update_safw_host_devices.exit.i:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %aac_update_safw_host_devices.exit.i.if.end_crit_edge, label %aac_update_safw_host_devices.exit.i.if.then.i_crit_edge

aac_update_safw_host_devices.exit.i.if.then.i_crit_edge: ; preds = %aac_update_safw_host_devices.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

aac_update_safw_host_devices.exit.i.if.end_crit_edge: ; preds = %aac_update_safw_host_devices.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %aac_update_safw_host_devices.exit.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %safw_rescan_work.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i.i3.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %safw_rescan_work.i.i, i32 noundef 1000) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %27 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scsi_host_ptr, align 8
  tail call void @scsi_scan_host(ptr noundef %28) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %aac_update_safw_host_devices.exit.i.if.end_crit_edge
  %rcode.0 = phi i32 [ 0, %if.else ], [ 0, %aac_update_safw_host_devices.exit.i.if.end_crit_edge ], [ %call.i.i, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %scan_mutex) #13
  ret i32 %rcode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_src_reinit_aif_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1948) #13
  %scsi_host_ptr = getelementptr i8, ptr %work, i32 -124
  %0 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsi_host_ptr, align 8
  %shost_state.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %shost_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shost_state.i, align 4
  %.off.i = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %entry.if.end_crit_edge, label %scsi_host_in_recovery.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

scsi_host_in_recovery.exit:                       ; preds = %entry
  %tmf_in_progress.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %tmf_in_progress.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %tmf_in_progress.i, align 8
  %5 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %scsi_host_in_recovery.exit.do.end17_crit_edge, label %scsi_host_in_recovery.exit.if.end_crit_edge

scsi_host_in_recovery.exit.if.end_crit_edge:      ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

scsi_host_in_recovery.exit.do.end17_crit_edge:    ; preds = %scsi_host_in_recovery.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

if.end:                                           ; preds = %scsi_host_in_recovery.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %7 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scsi_host_ptr, align 8
  %host_wait = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 10
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %host_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %9 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scsi_host_ptr, align 8
  %shost_state.i23 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 48
  %11 = ptrtoint ptr %shost_state.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shost_state.i23, align 4
  %.off.i24 = add i32 %12, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i24)
  %switch.i25 = icmp ult i32 %.off.i24, 3
  br i1 %switch.i25, label %for.cond.cleanup_crit_edge, label %scsi_host_in_recovery.exit30

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

scsi_host_in_recovery.exit30:                     ; preds = %for.cond
  %tmf_in_progress.i26 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 36
  %13 = ptrtoint ptr %tmf_in_progress.i26 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i27 = load i16, ptr %tmf_in_progress.i26, align 8
  %14 = and i16 %bf.load.i27, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool10.not = icmp eq i16 %14, 0
  br i1 %tobool10.not, label %for.end, label %scsi_host_in_recovery.exit30.cleanup_crit_edge

scsi_host_in_recovery.exit30.cleanup_crit_edge:   ; preds = %scsi_host_in_recovery.exit30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %scsi_host_in_recovery.exit30.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  call void @schedule() #13
  br label %for.cond

for.end:                                          ; preds = %scsi_host_in_recovery.exit30
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scsi_host_ptr, align 8
  %host_wait14 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 10
  call void @finish_wait(ptr noundef %host_wait14, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end17

do.end17:                                         ; preds = %for.end, %scsi_host_in_recovery.exit.do.end17_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -796
  %cardtype = getelementptr i8, ptr %work, i32 100
  %17 = ptrtoint ptr %cardtype to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cardtype, align 8
  call void @aac_reinit_aif(ptr noundef %add.ptr, i32 noundef %18) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_reinit_aif(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_command_thread(ptr noundef %data) #0 align 64 {
entry:
  %addr.i.i = alloca i32, align 4
  %cur_tm.i = alloca %struct.tm, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  %now = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !123) #13
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 100
  %aif_thread = getelementptr inbounds %struct.aac_dev, ptr %data, i32 0, i32 50
  %14 = ptrtoint ptr %aif_thread to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %aif_thread, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup221_crit_edge

entry.cleanup221_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup221

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %aif_thread to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %aif_thread, align 8
  %queues = getelementptr inbounds %struct.aac_dev, ptr %data, i32 0, i32 15
  %17 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queues, align 8
  %cmdready = getelementptr inbounds %struct.aac_queue, ptr %18, i32 0, i32 5
  call void @add_wait_queue(ptr noundef %cmdready, ptr noundef nonnull %wait) #13
  br label %__here

__here:                                           ; preds = %if.end
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 212
  %21 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 ptrtoint (ptr blockaddress(@aac_command_thread, %__here) to i32), ptr %task_state_change, align 4
  %22 = load ptr, ptr %task, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %22, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !143
  %pdev.i.i = getelementptr inbounds %struct.aac_dev, ptr %data, i32 0, i32 30
  %handle_pci_error.i.i = getelementptr inbounds %struct.aac_dev, ptr %data, i32 0, i32 84
  %adapter_check_health.i = getelementptr inbounds %struct.aac_dev, ptr %data, i32 0, i32 17, i32 5
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %data, i32 0, i32 66
  %24 = getelementptr inbounds %struct.tm, ptr %cur_tm.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.tm, ptr %cur_tm.i, i32 0, i32 3
  %26 = getelementptr inbounds %struct.tm, ptr %cur_tm.i, i32 0, i32 5
  %27 = getelementptr inbounds %struct.tm, ptr %cur_tm.i, i32 0, i32 4
  %28 = getelementptr inbounds %struct.tm, ptr %cur_tm.i, i32 0, i32 2
  %fib_lock.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %data, i32 0, i32 12
  %free_fib.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %data, i32 0, i32 11
  %virt_device_bus.i.i = getelementptr inbounds %struct.aac_dev, ptr %data, i32 0, i32 52, i32 36
  %virt_device_target.i.i = getelementptr inbounds %struct.aac_dev, ptr %data, i32 0, i32 52, i32 37
  br label %while.cond

while.cond:                                       ; preds = %if.end207.while.cond_crit_edge, %__here
  %difference.0 = phi i32 [ 100, %__here ], [ %267, %if.end207.while.cond_crit_edge ]
  %next_check_jiffies.0 = phi i32 [ %add, %__here ], [ %next_check_jiffies.3, %if.end207.while.cond_crit_edge ]
  %next_jiffies.0 = phi i32 [ %add, %__here ], [ %next_jiffies.2, %if.end207.while.cond_crit_edge ]
  call fastcc void @aac_process_events(ptr noundef %data)
  %sub = sub i32 %next_check_jiffies.0, %next_jiffies.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %while.cond.if.end79_crit_edge

while.cond.if.end79_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

land.lhs.true:                                    ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub67 = sub i32 %next_check_jiffies.0, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub67)
  %cmp68 = icmp slt i32 %sub67, 1
  br i1 %cmp68, label %if.then69, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then69:                                        ; preds = %land.lhs.true
  %30 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i.i, align 4
  %error_state.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 43
  %32 = ptrtoint ptr %error_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i.not.i.i = icmp eq i32 %33, 1
  br i1 %cmp.i.not.i.i, label %aac_pci_offline.exit.i, label %if.then69.if.else_crit_edge

if.then69.if.else_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

aac_pci_offline.exit.i:                           ; preds = %if.then69
  %34 = ptrtoint ptr %handle_pci_error.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %handle_pci_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool1.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool1.i.not.i, label %aac_adapter_check_health.exit, label %aac_pci_offline.exit.i.if.else_crit_edge, !prof !133

aac_pci_offline.exit.i.if.else_crit_edge:         ; preds = %aac_pci_offline.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

aac_adapter_check_health.exit:                    ; preds = %aac_pci_offline.exit.i
  %36 = ptrtoint ptr %adapter_check_health.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter_check_health.i, align 4
  %call3.i = call i32 %37(ptr noundef %data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp71 = icmp eq i32 %call3.i, 0
  br i1 %cmp71, label %if.then72, label %aac_adapter_check_health.exit.if.else_crit_edge

aac_adapter_check_health.exit.if.else_crit_edge:  ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then72:                                        ; preds = %aac_adapter_check_health.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @check_interval to i32))
  %38 = load i32, ptr @check_interval, align 4
  %mul = mul i32 %38, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add73 = add i32 %39, %mul
  br label %if.end79

if.else:                                          ; preds = %aac_adapter_check_health.exit.if.else_crit_edge, %aac_pci_offline.exit.i.if.else_crit_edge, %if.then69.if.else_crit_edge
  %40 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %queues, align 8
  %tobool75.not = icmp eq ptr %41, null
  br i1 %tobool75.not, label %if.else.if.end219_crit_edge, label %if.else.if.end79_crit_edge

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.else.if.end219_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end219

if.end79:                                         ; preds = %if.else.if.end79_crit_edge, %if.then72, %land.lhs.true.if.end79_crit_edge, %while.cond.if.end79_crit_edge
  %difference.1 = phi i32 [ %mul, %if.then72 ], [ %sub67, %if.else.if.end79_crit_edge ], [ %sub67, %land.lhs.true.if.end79_crit_edge ], [ %difference.0, %while.cond.if.end79_crit_edge ]
  %next_check_jiffies.1 = phi i32 [ %add73, %if.then72 ], [ %next_jiffies.0, %if.else.if.end79_crit_edge ], [ %next_check_jiffies.0, %land.lhs.true.if.end79_crit_edge ], [ %next_check_jiffies.0, %while.cond.if.end79_crit_edge ]
  %sub80 = sub i32 %next_check_jiffies.1, %next_jiffies.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub80)
  %cmp81 = icmp slt i32 %sub80, 0
  br i1 %cmp81, label %if.end79.if.end121_crit_edge, label %land.lhs.true82

if.end79.if.end121_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

land.lhs.true82:                                  ; preds = %if.end79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub83 = sub i32 %next_jiffies.0, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub83)
  %cmp84 = icmp slt i32 %sub83, 1
  br i1 %cmp84, label %if.then85, label %land.lhs.true82.if.end121_crit_edge

land.lhs.true82.if.end121_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then85:                                        ; preds = %land.lhs.true82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #13
  %43 = call ptr @memset(ptr %now, i32 255, i32 16)
  %44 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i.i, align 4
  %error_state.i.i.i257 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 43
  %46 = ptrtoint ptr %error_state.i.i.i257 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %error_state.i.i.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i.not.i.i258 = icmp eq i32 %47, 1
  br i1 %cmp.i.not.i.i258, label %aac_pci_offline.exit.i261, label %if.then85.cleanup.thread_crit_edge

if.then85.cleanup.thread_crit_edge:               ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

aac_pci_offline.exit.i261:                        ; preds = %if.then85
  %48 = ptrtoint ptr %handle_pci_error.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %handle_pci_error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool1.i.not.i260 = icmp eq i32 %49, 0
  br i1 %tobool1.i.not.i260, label %aac_adapter_check_health.exit266, label %aac_pci_offline.exit.i261.cleanup.thread_crit_edge, !prof !133

aac_pci_offline.exit.i261.cleanup.thread_crit_edge: ; preds = %aac_pci_offline.exit.i261
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

aac_adapter_check_health.exit266:                 ; preds = %aac_pci_offline.exit.i261
  %50 = ptrtoint ptr %adapter_check_health.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter_check_health.i, align 4
  %call3.i263 = call i32 %51(ptr noundef %data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i263)
  %tobool87.not = icmp eq i32 %call3.i263, 0
  br i1 %tobool87.not, label %lor.lhs.false, label %aac_adapter_check_health.exit266.cleanup.thread_crit_edge

aac_adapter_check_health.exit266.cleanup.thread_crit_edge: ; preds = %aac_adapter_check_health.exit266
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %aac_adapter_check_health.exit266
  %52 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %queues, align 8
  %tobool89.not = icmp eq ptr %53, null
  br i1 %tobool89.not, label %lor.lhs.false.cleanup.thread_crit_edge, label %if.end91

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end91:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @check_interval to i32))
  %55 = load i32, ptr @check_interval, align 4
  %mul92 = mul i32 %55, 100
  %add93 = add i32 %mul92, %54
  call void @ktime_get_real_ts64(ptr noundef nonnull %now) #13
  %56 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tv_nsec, align 8
  %58 = add i32 %57, -10000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 979999999, i32 %58)
  %59 = icmp ult i32 %58, 979999999
  br i1 %59, label %if.then98, label %if.else101

if.then98:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %div.neg284 = udiv i32 %57, 10000000
  %sub100 = sub nuw nsw i32 150, %div.neg284
  br label %if.end113

if.else101:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000000, i32 %57)
  %cmp103 = icmp sgt i32 %57, 500000000
  br i1 %cmp103, label %if.then104, label %if.else101.if.end105_crit_edge

if.else101.if.end105_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

if.then104:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %now, align 8
  %inc = add i64 %61, 1
  store i64 %inc, ptr %now, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.else101.if.end105_crit_edge
  %62 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool106.not = icmp eq i8 %63, 0
  br i1 %tobool106.not, label %if.else109, label %if.end.i267

if.end.i267:                                      ; preds = %if.end105
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cur_tm.i) #13
  %64 = call ptr @memset(ptr %cur_tm.i, i32 255, i32 32)
  %65 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %now, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %67 = load i32, ptr @sys_tz, align 4
  %mul.i = mul i32 %67, 60
  %conv.i = sext i32 %mul.i to i64
  %sub.i = sub i64 %66, %conv.i
  call void @time64_to_tm(i64 noundef %sub.i, i32 noundef 0, ptr noundef nonnull %cur_tm.i) #13
  %68 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %27, align 4
  %add.i = add i32 %69, 1
  store i32 %add.i, ptr %27, align 4
  %70 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %26, align 4
  %add1.i = add i32 %71, 1900
  store i32 %add1.i, ptr %26, align 4
  %72 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %28, align 4
  %call.i = call zeroext i8 @_bin2bcd(i32 noundef %73) #18
  %74 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %24, align 4
  %call19.i = call zeroext i8 @_bin2bcd(i32 noundef %75) #18
  %76 = ptrtoint ptr %cur_tm.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cur_tm.i, align 4
  %call35.i = call zeroext i8 @_bin2bcd(i32 noundef %77) #18
  %call52.i = call zeroext i8 @_bin2bcd(i32 noundef %add.i) #18
  %78 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %25, align 4
  %call68.i = call zeroext i8 @_bin2bcd(i32 noundef %79) #18
  %add1.i.frozen = freeze i32 %add1.i
  %div75.i = sdiv i32 %add1.i.frozen, 100
  %call89.i = call zeroext i8 @_bin2bcd(i32 noundef %div75.i) #18
  %80 = mul i32 %div75.i, 100
  %rem96.i.decomposed = sub i32 %add1.i.frozen, %80
  %call110.i = call zeroext i8 @_bin2bcd(i32 noundef %rem96.i.decomposed) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #13
  %81 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %addr.i.i, align 4, !annotation !144
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock.i.i.i) #13
  %82 = ptrtoint ptr %free_fib.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %free_fib.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i.i, label %aac_fib_alloc.exit.thread.i.i, label %if.end.i.i

aac_fib_alloc.exit.thread.i.i:                    ; preds = %if.end.i267
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock.i.i.i, i32 noundef %call2.i.i.i) #13
  br label %aac_send_safw_hostttime.exit

if.end.i.i:                                       ; preds = %if.end.i267
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %86 = ptrtoint ptr %free_fib.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %free_fib.i.i.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock.i.i.i, i32 noundef %call2.i.i.i) #13
  %type.i.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 1
  %87 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 780, ptr %type.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 2
  %88 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 164, ptr %size.i.i.i, align 2
  %hw_fib_va.i.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 13
  %89 = ptrtoint ptr %hw_fib_va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw_fib_va.i.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %90, align 4
  %flags8.i.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 9
  %92 = ptrtoint ptr %flags8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %flags8.i.i.i, align 4
  %callback.i.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 7
  %93 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %callback.i.i.i, align 4
  %callback_data.i.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 8
  %94 = ptrtoint ptr %callback_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %callback_data.i.i.i, align 4
  %95 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdev.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 23, ptr noundef nonnull %addr.i.i, i32 noundef 3264, i32 noundef 0) #13
  %tobool3.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.fib_free_out.i.i_crit_edge, label %if.end5.i.i

if.end.i.i.fib_free_out.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib_free_out.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %97 = ptrtoint ptr %hw_fib_va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw_fib_va.i.i.i, align 4
  %99 = call ptr @memset(ptr %98, i32 0, i32 32)
  %StructType.i.i.i = getelementptr inbounds %struct.aac_fibhdr, ptr %98, i32 0, i32 2
  %100 = ptrtoint ptr %StructType.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %StructType.i.i.i, align 2
  %dev.i.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 3
  %101 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i.i.i, align 4
  %max_fib_size.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %max_fib_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %max_fib_size.i.i.i, align 8
  %conv.i.i.i = trunc i32 %104 to i16
  %105 = call i16 @llvm.bswap.i16(i16 %conv.i.i.i) #13
  %Size.i.i.i = getelementptr inbounds %struct.aac_fibhdr, ptr %98, i32 0, i32 4
  %106 = ptrtoint ptr %Size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %Size.i.i.i, align 4
  %107 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 218105856, ptr %98, align 4
  %hw_fib_pa.i.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 14
  %108 = ptrtoint ptr %hw_fib_pa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %hw_fib_pa.i.i.i, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109) #13
  %u.i.i.i = getelementptr inbounds %struct.aac_fibhdr, ptr %98, i32 0, i32 7
  %111 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %u.i.i.i, align 4
  %112 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i.i.i, align 4
  %max_fib_size6.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %max_fib_size6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %max_fib_size6.i.i.i, align 8
  %conv7.i.i.i = trunc i32 %115 to i16
  %116 = call i16 @llvm.bswap.i16(i16 %conv7.i.i.i) #13
  %SenderSize.i.i.i = getelementptr inbounds %struct.aac_fibhdr, ptr %98, i32 0, i32 5
  %117 = ptrtoint ptr %SenderSize.i.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %SenderSize.i.i.i, align 2
  %118 = ptrtoint ptr %virt_device_bus.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %virt_device_bus.i.i, align 8
  %120 = call i16 @llvm.bswap.i16(i16 %119) #13
  %conv.i.i = zext i16 %120 to i32
  %121 = ptrtoint ptr %virt_device_target.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %virt_device_target.i.i, align 2
  %123 = call i16 @llvm.bswap.i16(i16 %122) #13
  %conv7.i.i = zext i16 %123 to i32
  %124 = ptrtoint ptr %hw_fib_va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw_fib_va.i.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %data.i.i, align 4
  %127 = call i32 @llvm.bswap.i32(i32 %conv.i.i) #13
  %channel.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 4
  %128 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %channel.i.i, align 4
  %129 = call i32 @llvm.bswap.i32(i32 %conv7.i.i) #13
  %id.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 8
  %130 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %id.i.i, align 4
  %lun.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 12
  %131 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %lun.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 20
  %132 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -2147483648, ptr %flags.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 16
  %133 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 167772160, ptr %timeout.i.i, align 4
  %retry_limit.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 28
  %134 = ptrtoint ptr %retry_limit.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %retry_limit.i.i, align 4
  %cdb_size.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 32
  %135 = ptrtoint ptr %cdb_size.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 201326592, ptr %cdb_size.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 24
  %136 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 385875968, ptr %count.i.i, align 4
  %cdb.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 36
  %137 = call ptr @memset(ptr %cdb.i.i, i32 0, i32 16)
  %138 = ptrtoint ptr %cdb.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 39, ptr %cdb.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.hw_fib, ptr %125, i32 0, i32 1, i32 42
  %139 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -91, ptr %arrayidx11.i.i, align 2
  %140 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %140, i32 8)
  store i64 4343817765812176896, ptr %call.i.i.i, align 1
  %wellness_str.sroa.4.0.call.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 8
  %141 = ptrtoint ptr %wellness_str.sroa.4.0.call.i.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %call.i, ptr %wellness_str.sroa.4.0.call.i.i.sroa_idx.i, align 1
  %wellness_str.sroa.5.0.call.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 9
  %142 = ptrtoint ptr %wellness_str.sroa.5.0.call.i.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %call19.i, ptr %wellness_str.sroa.5.0.call.i.i.sroa_idx.i, align 1
  %wellness_str.sroa.6.0.call.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 10
  %143 = ptrtoint ptr %wellness_str.sroa.6.0.call.i.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %call35.i, ptr %wellness_str.sroa.6.0.call.i.i.sroa_idx.i, align 1
  %wellness_str.sroa.7.0.call.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 11
  %144 = ptrtoint ptr %wellness_str.sroa.7.0.call.i.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %wellness_str.sroa.7.0.call.i.i.sroa_idx.i, align 1
  %wellness_str.sroa.75.0.call.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 12
  %145 = ptrtoint ptr %wellness_str.sroa.75.0.call.i.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %call52.i, ptr %wellness_str.sroa.75.0.call.i.i.sroa_idx.i, align 1
  %wellness_str.sroa.8.0.call.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 13
  %146 = ptrtoint ptr %wellness_str.sroa.8.0.call.i.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %call68.i, ptr %wellness_str.sroa.8.0.call.i.i.sroa_idx.i, align 1
  %wellness_str.sroa.9.0.call.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 14
  %147 = ptrtoint ptr %wellness_str.sroa.9.0.call.i.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %call89.i, ptr %wellness_str.sroa.9.0.call.i.i.sroa_idx.i, align 1
  %wellness_str.sroa.10.0.call.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 15
  %148 = ptrtoint ptr %wellness_str.sroa.10.0.call.i.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %call110.i, ptr %wellness_str.sroa.10.0.call.i.i.sroa_idx.i, align 1
  %wellness_str.sroa.11.0.call.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i.i, i32 16
  %149 = call ptr @memcpy(ptr %wellness_str.sroa.11.0.call.i.i.sroa_idx.i, ptr getelementptr inbounds ([23 x i8], ptr @__const.aac_send_safw_hostttime.wellness_str, i32 0, i32 16), i32 7)
  %sg.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 52
  %150 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 16777216, ptr %sg.i.i, align 4
  %sg14.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 56
  %arrayidx17.i.i = getelementptr %struct.hw_fib, ptr %125, i32 0, i32 1, i32 60
  %151 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %arrayidx17.i.i, align 4
  %152 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %addr.i.i, align 4
  %154 = call i32 @llvm.bswap.i32(i32 %153) #13
  %155 = ptrtoint ptr %sg14.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %sg14.i.i, align 4
  %count24.i.i = getelementptr inbounds %struct.hw_fib, ptr %125, i32 0, i32 1, i32 64
  %156 = ptrtoint ptr %count24.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 385875968, ptr %count24.i.i, align 4
  %call25.i.i = call i32 @aac_fib_send(i16 noundef zeroext 601, ptr noundef nonnull %83, i32 noundef 64, i32 undef, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #13
  %157 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pdev.i.i, align 4
  %dev27.i.i = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 44
  %159 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %addr.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev27.i.i, i32 noundef 23, ptr noundef nonnull %call.i.i.i, i32 noundef %160, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25.i.i)
  %cmp.i.i = icmp sgt i32 %call25.i.i, -1
  br i1 %cmp.i.i, label %if.then29.i.i, label %if.end31.i.i

if.then29.i.i:                                    ; preds = %if.end5.i.i
  %161 = ptrtoint ptr %hw_fib_va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw_fib_va.i.i.i, align 4
  %163 = ptrtoint ptr %flags8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %flags8.i.i.i, align 4
  %and.i.i.i = and i32 %164, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i4.i.i, label %if.then29.i.i.cleanup.sink.split.i.i.i_crit_edge

if.then29.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i.i.i

if.end.i4.i.i:                                    ; preds = %if.then29.i.i
  %165 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp.i.i.i = icmp eq i32 %166, 0
  br i1 %cmp.i.i.i, label %if.end.i4.i.i.fib_free_out.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i4.i.i.fib_free_out.i.i_crit_edge:         ; preds = %if.end.i4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib_free_out.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i4.i.i
  %done.i.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 6
  %167 = ptrtoint ptr %done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %done.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %168)
  %cmp1.i.i.i = icmp eq i32 %168, 2
  br i1 %cmp1.i.i.i, label %lor.lhs.false.i.i.i.fib_free_out.i.i_crit_edge, label %if.end3.i.i.i

lor.lhs.false.i.i.i.fib_free_out.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib_free_out.i.i

if.end3.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  %StructType.i5.i.i = getelementptr inbounds %struct.aac_fibhdr, ptr %162, i32 0, i32 2
  %169 = ptrtoint ptr %StructType.i5.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %StructType.i5.i.i, align 2
  %171 = zext i8 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %170, label %if.end3.i.i.i.fib_free_out.i.i_crit_edge [
    i8 1, label %if.end3.i.i.i.if.end19.i.i.i_crit_edge
    i8 4, label %if.end3.i.i.i.if.end19.i.i.i_crit_edge285
    i8 5, label %if.end3.i.i.i.if.end19.i.i.i_crit_edge286
  ]

if.end3.i.i.i.if.end19.i.i.i_crit_edge286:        ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i.i.i

if.end3.i.i.i.if.end19.i.i.i_crit_edge285:        ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i.i.i

if.end3.i.i.i.if.end19.i.i.i_crit_edge:           ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i.i.i

if.end3.i.i.i.fib_free_out.i.i_crit_edge:         ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib_free_out.i.i

if.end19.i.i.i:                                   ; preds = %if.end3.i.i.i.if.end19.i.i.i_crit_edge, %if.end3.i.i.i.if.end19.i.i.i_crit_edge285, %if.end3.i.i.i.if.end19.i.i.i_crit_edge286
  %172 = and i32 %166, 553648128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %do.body.i.i.i, label %if.end19.i.i.i.cleanup.sink.split.i.i.i_crit_edge

if.end19.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i.i.i

do.body.i.i.i:                                    ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/commsup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 989, 0\0A.popsection", ""() #13, !srcloc !139
  unreachable

cleanup.sink.split.i.i.i:                         ; preds = %if.end19.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %if.then29.i.i.cleanup.sink.split.i.i.i_crit_edge
  %174 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %162, align 4
  br label %fib_free_out.i.i

if.end31.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call25.i.i)
  %cmp32.not.i.i = icmp eq i32 %call25.i.i, -512
  br i1 %cmp32.not.i.i, label %if.end31.i.i.aac_send_safw_hostttime.exit_crit_edge, label %if.end31.i.i.fib_free_out.i.i_crit_edge

if.end31.i.i.fib_free_out.i.i_crit_edge:          ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fib_free_out.i.i

if.end31.i.i.aac_send_safw_hostttime.exit_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aac_send_safw_hostttime.exit

fib_free_out.i.i:                                 ; preds = %if.end31.i.i.fib_free_out.i.i_crit_edge, %cleanup.sink.split.i.i.i, %if.end3.i.i.i.fib_free_out.i.i_crit_edge, %lor.lhs.false.i.i.i.fib_free_out.i.i_crit_edge, %if.end.i4.i.i.fib_free_out.i.i_crit_edge, %if.end.i.i.fib_free_out.i.i_crit_edge
  %done.i6.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 6
  %175 = ptrtoint ptr %done.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %done.i6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %176)
  %cmp.i7.i.i = icmp eq i32 %176, 2
  br i1 %cmp.i7.i.i, label %fib_free_out.i.i.aac_send_safw_hostttime.exit_crit_edge, label %do.body1.i.i.i

fib_free_out.i.i.aac_send_safw_hostttime.exit_crit_edge: ; preds = %fib_free_out.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aac_send_safw_hostttime.exit

do.body1.i.i.i:                                   ; preds = %fib_free_out.i.i
  %dev.i8.i.i = getelementptr inbounds %struct.fib, ptr %83, i32 0, i32 3
  %177 = ptrtoint ptr %dev.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i8.i.i, align 4
  %fib_lock.i9.i.i = getelementptr inbounds %struct.aac_dev, ptr %178, i32 0, i32 12
  %call3.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock.i9.i.i) #13
  %179 = ptrtoint ptr %flags8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %flags8.i.i.i, align 4
  %and.i10.i.i = and i32 %180, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i.i)
  %tobool.not.i11.i.i = icmp eq i32 %and.i10.i.i, 0
  br i1 %tobool.not.i11.i.i, label %do.body1.i.i.i.if.end10.i.i.i_crit_edge, label %if.then9.i.i.i, !prof !133

do.body1.i.i.i.if.end10.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i.i.i

if.then9.i.i.i:                                   ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3) to i32))
  %181 = load i32, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3), align 4
  %inc.i.i.i = add i32 %181, 1
  store i32 %inc.i.i.i, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3), align 4
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then9.i.i.i, %do.body1.i.i.i.if.end10.i.i.i_crit_edge
  %and12.i.i.i = and i32 %180, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %and12.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end10.i.i.i.if.end25.i.i.i_crit_edge

if.end10.i.i.i.if.end25.i.i.i_crit_edge:          ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end10.i.i.i
  %182 = ptrtoint ptr %hw_fib_va.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hw_fib_va.i.i.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp14.not.i.i.i = icmp eq i32 %185, 0
  br i1 %cmp14.not.i.i.i, label %land.lhs.true.i.i.i.if.end25.i.i.i_crit_edge, label %do.end19.i.i.i

land.lhs.true.i.i.i.if.end25.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i.i.i

do.end19.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %186 = call i32 @llvm.bswap.i32(i32 %185) #13
  %call24.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %83, i32 noundef %186) #16
  br label %if.end25.i.i.i

if.end25.i.i.i:                                   ; preds = %do.end19.i.i.i, %land.lhs.true.i.i.i.if.end25.i.i.i_crit_edge, %if.end10.i.i.i.if.end25.i.i.i_crit_edge
  %187 = ptrtoint ptr %dev.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dev.i8.i.i, align 4
  %free_fib.i13.i.i = getelementptr inbounds %struct.aac_dev, ptr %188, i32 0, i32 11
  %189 = ptrtoint ptr %free_fib.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %free_fib.i13.i.i, align 8
  %191 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %190, ptr %83, align 4
  store ptr %83, ptr %free_fib.i13.i.i, align 8
  %192 = load ptr, ptr %dev.i8.i.i, align 4
  %fib_lock30.i.i.i = getelementptr inbounds %struct.aac_dev, ptr %192, i32 0, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock30.i.i.i, i32 noundef %call3.i.i.i) #13
  br label %aac_send_safw_hostttime.exit

aac_send_safw_hostttime.exit:                     ; preds = %if.end25.i.i.i, %fib_free_out.i.i.aac_send_safw_hostttime.exit_crit_edge, %if.end31.i.i.aac_send_safw_hostttime.exit_crit_edge, %aac_fib_alloc.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cur_tm.i) #13
  br label %if.end111

if.else109:                                       ; preds = %if.end105
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock.i.i.i) #13
  %193 = ptrtoint ptr %free_fib.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %free_fib.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %194, null
  br i1 %tobool.not.i.i, label %aac_fib_alloc.exit.thread.i, label %if.end.i272

aac_fib_alloc.exit.thread.i:                      ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock.i.i.i, i32 noundef %call2.i.i) #13
  br label %if.end111

if.end.i272:                                      ; preds = %if.else109
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 4
  %197 = ptrtoint ptr %free_fib.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %196, ptr %free_fib.i.i.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock.i.i.i, i32 noundef %call2.i.i) #13
  %type.i.i = getelementptr inbounds %struct.fib, ptr %194, i32 0, i32 1
  %198 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 780, ptr %type.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.fib, ptr %194, i32 0, i32 2
  %199 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 164, ptr %size.i.i, align 2
  %hw_fib_va.i.i = getelementptr inbounds %struct.fib, ptr %194, i32 0, i32 13
  %200 = ptrtoint ptr %hw_fib_va.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hw_fib_va.i.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %201, align 4
  %flags8.i.i = getelementptr inbounds %struct.fib, ptr %194, i32 0, i32 9
  %203 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %flags8.i.i, align 4
  %callback.i.i = getelementptr inbounds %struct.fib, ptr %194, i32 0, i32 7
  %204 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %callback.i.i, align 4
  %callback_data.i.i = getelementptr inbounds %struct.fib, ptr %194, i32 0, i32 8
  %205 = ptrtoint ptr %callback_data.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %callback_data.i.i, align 4
  %206 = load ptr, ptr %hw_fib_va.i.i, align 4
  %207 = call ptr @memset(ptr %206, i32 0, i32 32)
  %StructType.i.i = getelementptr inbounds %struct.aac_fibhdr, ptr %206, i32 0, i32 2
  %208 = ptrtoint ptr %StructType.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 1, ptr %StructType.i.i, align 2
  %dev.i.i = getelementptr inbounds %struct.fib, ptr %194, i32 0, i32 3
  %209 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev.i.i, align 4
  %max_fib_size.i.i = getelementptr inbounds %struct.aac_dev, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %max_fib_size.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %max_fib_size.i.i, align 8
  %conv.i.i269 = trunc i32 %212 to i16
  %213 = call i16 @llvm.bswap.i16(i16 %conv.i.i269) #13
  %Size.i.i = getelementptr inbounds %struct.aac_fibhdr, ptr %206, i32 0, i32 4
  %214 = ptrtoint ptr %Size.i.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %213, ptr %Size.i.i, align 4
  %215 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 218105856, ptr %206, align 4
  %hw_fib_pa.i.i = getelementptr inbounds %struct.fib, ptr %194, i32 0, i32 14
  %216 = ptrtoint ptr %hw_fib_pa.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %hw_fib_pa.i.i, align 4
  %218 = call i32 @llvm.bswap.i32(i32 %217) #13
  %u.i.i = getelementptr inbounds %struct.aac_fibhdr, ptr %206, i32 0, i32 7
  %219 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %u.i.i, align 4
  %220 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev.i.i, align 4
  %max_fib_size6.i.i = getelementptr inbounds %struct.aac_dev, ptr %221, i32 0, i32 3
  %222 = ptrtoint ptr %max_fib_size6.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %max_fib_size6.i.i, align 8
  %conv7.i.i270 = trunc i32 %223 to i16
  %224 = call i16 @llvm.bswap.i16(i16 %conv7.i.i270) #13
  %SenderSize.i.i = getelementptr inbounds %struct.aac_fibhdr, ptr %206, i32 0, i32 5
  %225 = ptrtoint ptr %SenderSize.i.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %224, ptr %SenderSize.i.i, align 2
  %226 = ptrtoint ptr %hw_fib_va.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %hw_fib_va.i.i, align 4
  %data.i = getelementptr inbounds %struct.hw_fib, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %now, align 8
  %conv.i271 = trunc i64 %229 to i32
  %230 = call i32 @llvm.bswap.i32(i32 %conv.i271) #13
  %231 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %data.i, align 4
  %call1.i = call i32 @aac_fib_send(i16 noundef zeroext 705, ptr noundef nonnull %194, i32 noundef 4, i32 undef, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i272
  %232 = ptrtoint ptr %hw_fib_va.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hw_fib_va.i.i, align 4
  %234 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %flags8.i.i, align 4
  %and.i.i = and i32 %235, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i3.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i3.i, label %if.end.i4.i, label %if.then3.i.cleanup.sink.split.i.i_crit_edge

if.then3.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i.i

if.end.i4.i:                                      ; preds = %if.then3.i
  %236 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp.i.i273 = icmp eq i32 %237, 0
  br i1 %cmp.i.i273, label %if.end.i4.i.if.then8.i_crit_edge, label %lor.lhs.false.i.i

if.end.i4.i.if.then8.i_crit_edge:                 ; preds = %if.end.i4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

lor.lhs.false.i.i:                                ; preds = %if.end.i4.i
  %done.i.i = getelementptr inbounds %struct.fib, ptr %194, i32 0, i32 6
  %238 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %done.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %239)
  %cmp1.i.i = icmp eq i32 %239, 2
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.if.then8.i_crit_edge, label %if.end3.i.i

lor.lhs.false.i.i.if.then8.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

if.end3.i.i:                                      ; preds = %lor.lhs.false.i.i
  %StructType.i5.i = getelementptr inbounds %struct.aac_fibhdr, ptr %233, i32 0, i32 2
  %240 = ptrtoint ptr %StructType.i5.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %StructType.i5.i, align 2
  %242 = zext i8 %241 to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %241, label %if.end3.i.i.if.then8.i_crit_edge [
    i8 1, label %if.end3.i.i.if.end19.i.i_crit_edge
    i8 4, label %if.end3.i.i.if.end19.i.i_crit_edge287
    i8 5, label %if.end3.i.i.if.end19.i.i_crit_edge288
  ]

if.end3.i.i.if.end19.i.i_crit_edge288:            ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i.i

if.end3.i.i.if.end19.i.i_crit_edge287:            ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i.i

if.end3.i.i.if.end19.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i.i

if.end3.i.i.if.then8.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

if.end19.i.i:                                     ; preds = %if.end3.i.i.if.end19.i.i_crit_edge, %if.end3.i.i.if.end19.i.i_crit_edge287, %if.end3.i.i.if.end19.i.i_crit_edge288
  %243 = and i32 %237, 553648128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %do.body.i.i, label %if.end19.i.i.cleanup.sink.split.i.i_crit_edge

if.end19.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i.i

do.body.i.i:                                      ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/commsup.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 989, 0\0A.popsection", ""() #13, !srcloc !139
  unreachable

cleanup.sink.split.i.i:                           ; preds = %if.end19.i.i.cleanup.sink.split.i.i_crit_edge, %if.then3.i.cleanup.sink.split.i.i_crit_edge
  %245 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %233, align 4
  br label %if.then8.i

if.end5.i:                                        ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call1.i)
  %cmp6.not.i = icmp eq i32 %call1.i, -512
  br i1 %cmp6.not.i, label %if.end5.i.if.end111_crit_edge, label %if.end5.i.if.then8.i_crit_edge

if.end5.i.if.then8.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

if.end5.i.if.end111_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

if.then8.i:                                       ; preds = %if.end5.i.if.then8.i_crit_edge, %cleanup.sink.split.i.i, %if.end3.i.i.if.then8.i_crit_edge, %lor.lhs.false.i.i.if.then8.i_crit_edge, %if.end.i4.i.if.then8.i_crit_edge
  %done.i6.i = getelementptr inbounds %struct.fib, ptr %194, i32 0, i32 6
  %246 = ptrtoint ptr %done.i6.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %done.i6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %247)
  %cmp.i7.i = icmp eq i32 %247, 2
  br i1 %cmp.i7.i, label %if.then8.i.if.end111_crit_edge, label %do.body1.i.i

if.then8.i.if.end111_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

do.body1.i.i:                                     ; preds = %if.then8.i
  %248 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev.i.i, align 4
  %fib_lock.i9.i = getelementptr inbounds %struct.aac_dev, ptr %249, i32 0, i32 12
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock.i9.i) #13
  %250 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %flags8.i.i, align 4
  %and.i10.i = and i32 %251, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10.i)
  %tobool.not.i11.i = icmp eq i32 %and.i10.i, 0
  br i1 %tobool.not.i11.i, label %do.body1.i.i.if.end10.i.i_crit_edge, label %if.then9.i.i, !prof !133

do.body1.i.i.if.end10.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i.i

if.then9.i.i:                                     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3) to i32))
  %252 = load i32, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3), align 4
  %inc.i.i = add i32 %252, 1
  store i32 %inc.i.i, ptr getelementptr inbounds (%struct.aac_common, ptr @aac_config, i32 0, i32 3), align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %do.body1.i.i.if.end10.i.i_crit_edge
  %and12.i.i = and i32 %251, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %land.lhs.true.i.i, label %if.end10.i.i.if.end25.i.i_crit_edge

if.end10.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i.i

land.lhs.true.i.i:                                ; preds = %if.end10.i.i
  %253 = ptrtoint ptr %hw_fib_va.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %hw_fib_va.i.i, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %254, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %cmp14.not.i.i = icmp eq i32 %256, 0
  br i1 %cmp14.not.i.i, label %land.lhs.true.i.i.if.end25.i.i_crit_edge, label %do.end19.i.i

land.lhs.true.i.i.if.end25.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i.i

do.end19.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %257 = call i32 @llvm.bswap.i32(i32 %256) #13
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %194, i32 noundef %257) #16
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %do.end19.i.i, %land.lhs.true.i.i.if.end25.i.i_crit_edge, %if.end10.i.i.if.end25.i.i_crit_edge
  %258 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev.i.i, align 4
  %free_fib.i13.i = getelementptr inbounds %struct.aac_dev, ptr %259, i32 0, i32 11
  %260 = ptrtoint ptr %free_fib.i13.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %free_fib.i13.i, align 8
  %262 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %261, ptr %194, align 4
  store ptr %194, ptr %free_fib.i13.i, align 8
  %263 = load ptr, ptr %dev.i.i, align 4
  %fib_lock30.i.i = getelementptr inbounds %struct.aac_dev, ptr %263, i32 0, i32 12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock30.i.i, i32 noundef %call3.i.i) #13
  br label %if.end111

if.end111:                                        ; preds = %if.end25.i.i, %if.then8.i.if.end111_crit_edge, %if.end5.i.if.end111_crit_edge, %aac_fib_alloc.exit.thread.i, %aac_send_safw_hostttime.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @update_interval to i32))
  %264 = load i32, ptr @update_interval, align 4
  %mul112 = mul i32 %264, 100
  br label %if.end113

if.end113:                                        ; preds = %if.end111, %if.then98
  %difference.2 = phi i32 [ %sub100, %if.then98 ], [ %mul112, %if.end111 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %265 = load volatile i32, ptr @jiffies, align 128
  %add114 = add i32 %265, %difference.2
  %sub115 = sub i32 %add93, %add114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub115)
  %cmp116 = icmp slt i32 %sub115, 0
  br i1 %cmp116, label %if.then117, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %266 = load volatile i32, ptr @jiffies, align 128
  %sub118 = sub i32 %add93, %266
  br label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %aac_adapter_check_health.exit266.cleanup.thread_crit_edge, %aac_pci_offline.exit.i261.cleanup.thread_crit_edge, %if.then85.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #13
  br label %while.end

cleanup:                                          ; preds = %if.then117, %if.end113.cleanup_crit_edge
  %difference.4 = phi i32 [ %sub118, %if.then117 ], [ %difference.2, %if.end113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #13
  br label %if.end121

if.end121:                                        ; preds = %cleanup, %land.lhs.true82.if.end121_crit_edge, %if.end79.if.end121_crit_edge
  %difference.5 = phi i32 [ %difference.1, %if.end79.if.end121_crit_edge ], [ %difference.4, %cleanup ], [ %sub83, %land.lhs.true82.if.end121_crit_edge ]
  %next_check_jiffies.3 = phi i32 [ %next_check_jiffies.1, %if.end79.if.end121_crit_edge ], [ %add93, %cleanup ], [ %next_check_jiffies.1, %land.lhs.true82.if.end121_crit_edge ]
  %next_jiffies.2 = phi i32 [ %next_jiffies.0, %if.end79.if.end121_crit_edge ], [ %add114, %cleanup ], [ %next_jiffies.0, %land.lhs.true82.if.end121_crit_edge ]
  %267 = call i32 @llvm.smax.i32(i32 %difference.5, i32 1)
  br label %__here175

__here175:                                        ; preds = %if.end121
  %268 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %task, align 8
  %task_state_change179 = getelementptr inbounds %struct.task_struct, ptr %269, i32 0, i32 212
  %270 = ptrtoint ptr %task_state_change179 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 ptrtoint (ptr blockaddress(@aac_command_thread, %__here175) to i32), ptr %task_state_change179, align 4
  %271 = load ptr, ptr %task, align 8
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %272)
  store volatile i32 1, ptr %271, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !145
  %call205 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call205, label %__here175.while.end_crit_edge, label %if.end207

__here175.while.end_crit_edge:                    ; preds = %__here175
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end207:                                        ; preds = %__here175
  %call208 = call i32 @schedule_timeout(i32 noundef %267) #13
  %call209 = call zeroext i1 @kthread_should_stop() #13
  br i1 %call209, label %if.end207.while.end_crit_edge, label %if.end207.while.cond_crit_edge

if.end207.while.cond_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.end207.while.end_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end207.while.end_crit_edge, %__here175.while.end_crit_edge, %cleanup.thread
  %273 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %273)
  %.pr = load ptr, ptr %queues, align 8
  %tobool213.not = icmp eq ptr %.pr, null
  br i1 %tobool213.not, label %while.end.if.end219_crit_edge, label %if.then214

while.end.if.end219_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end219

if.then214:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %cmdready218 = getelementptr inbounds %struct.aac_queue, ptr %.pr, i32 0, i32 5
  call void @remove_wait_queue(ptr noundef %cmdready218, ptr noundef nonnull %wait) #13
  br label %if.end219

if.end219:                                        ; preds = %if.then214, %while.end.if.end219_crit_edge, %if.else.if.end219_crit_edge
  %274 = ptrtoint ptr %aif_thread to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %aif_thread, align 8
  br label %cleanup221

cleanup221:                                       ; preds = %if.end219, %entry.cleanup221_crit_edge
  %retval.0 = phi i32 [ 0, %if.end219 ], [ -22, %entry.cleanup221_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aac_process_events(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queues = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queues, align 8
  %lock = getelementptr inbounds %struct.aac_queue, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %4 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queues, align 8
  %cmdq278 = getelementptr inbounds %struct.aac_queue, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %cmdq278 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %cmdq278, align 4
  %cmp.i.not279 = icmp eq ptr %7, %cmdq278
  br i1 %cmp.i.not279, label %entry.while.end149_crit_edge, label %__here.lr.ph

entry.while.end149_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end149

__here.lr.ph:                                     ; preds = %entry
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %regs.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %init.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 23
  %fib_lock.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 12
  %fib_list.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 16
  br label %__here

__here:                                           ; preds = %free_fib.__here_crit_edge, %__here.lr.ph
  %flags.0280 = phi i32 [ %call2, %__here.lr.ph ], [ %call144, %free_fib.__here_crit_edge ]
  %8 = tail call i32 @llvm.read_register.i32(metadata !123) #13
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@aac_process_events, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !146
  %15 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queues, align 8
  %cmdq80 = getelementptr inbounds %struct.aac_queue, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %cmdq80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmdq80, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #13
  br i1 %call.i.i, label %if.end.i.i, label %__here.list_del.exit_crit_edge

__here.list_del.exit_crit_edge:                   ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %__here.list_del.exit_crit_edge
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %27 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queues, align 8
  %lock84 = getelementptr inbounds %struct.aac_queue, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %lock84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lock84, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %flags.0280) #13
  %add.ptr = getelementptr i8, ptr %18, i32 -128
  %hw_fib_va = getelementptr i8, ptr %18, i32 16
  %31 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_fib_va, align 4
  %33 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool86.not = icmp eq i8 %34, 0
  br i1 %tobool86.not, label %if.end89, label %if.then87

if.then87:                                        ; preds = %list_del.exit
  %hbacmd_size.i = getelementptr i8, ptr %18, i32 32
  %35 = ptrtoint ptr %hbacmd_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hbacmd_size.i, align 4
  %37 = and i32 %36, 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %39)
  %.not.i = icmp eq i32 %39, -2147483648
  %or.cond.i = or i1 %38, %.not.i
  br i1 %or.cond.i, label %sw.bb.i, label %if.then87.sw.epilog.i_crit_edge

if.then87.sw.epilog.i_crit_edge:                  ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @aac_scan_host(ptr noundef %dev) #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.then87.sw.epilog.i_crit_edge
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 8
  %IDR.i = getelementptr inbounds %struct.src_mu_registers, ptr %41, i32 0, i32 2
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.i) #13, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %43 = and i32 %42, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool33.not.i = icmp eq i32 %43, 0
  br i1 %tobool33.not.i, label %sw.epilog.i.for.inc.i_crit_edge, label %do.end.i

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 10) #16
  tail call void @msleep(i32 noundef 1000) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %sw.epilog.i.for.inc.i_crit_edge
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 8
  %IDR.1.i = getelementptr inbounds %struct.src_mu_registers, ptr %45, i32 0, i32 2
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.1.i) #13, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %47 = and i32 %46, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool33.not.1.i = icmp eq i32 %47, 0
  br i1 %tobool33.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %do.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 2, i32 noundef 10) #16
  tail call void @msleep(i32 noundef 1000) #13
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 8
  %IDR.2.i = getelementptr inbounds %struct.src_mu_registers, ptr %49, i32 0, i32 2
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.2.i) #13, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %51 = and i32 %50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool33.not.2.i = icmp eq i32 %51, 0
  br i1 %tobool33.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %do.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

do.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 3, i32 noundef 10) #16
  tail call void @msleep(i32 noundef 1000) #13
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 8
  %IDR.3.i = getelementptr inbounds %struct.src_mu_registers, ptr %53, i32 0, i32 2
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.3.i) #13, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %55 = and i32 %54, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool33.not.3.i = icmp eq i32 %55, 0
  br i1 %tobool33.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %do.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

do.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 4, i32 noundef 10) #16
  tail call void @msleep(i32 noundef 1000) #13
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 8
  %IDR.4.i = getelementptr inbounds %struct.src_mu_registers, ptr %57, i32 0, i32 2
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.4.i) #13, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %59 = and i32 %58, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool33.not.4.i = icmp eq i32 %59, 0
  br i1 %tobool33.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %do.end.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4.i

do.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 5, i32 noundef 10) #16
  tail call void @msleep(i32 noundef 1000) #13
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %do.end.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 8
  %IDR.5.i = getelementptr inbounds %struct.src_mu_registers, ptr %61, i32 0, i32 2
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.5.i) #13, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %63 = and i32 %62, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool33.not.5.i = icmp eq i32 %63, 0
  br i1 %tobool33.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %do.end.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5.i

do.end.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 6, i32 noundef 10) #16
  tail call void @msleep(i32 noundef 1000) #13
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %do.end.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 8
  %IDR.6.i = getelementptr inbounds %struct.src_mu_registers, ptr %65, i32 0, i32 2
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.6.i) #13, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %67 = and i32 %66, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool33.not.6.i = icmp eq i32 %67, 0
  br i1 %tobool33.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %do.end.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6.i

do.end.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 7, i32 noundef 10) #16
  tail call void @msleep(i32 noundef 1000) #13
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %do.end.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 8
  %IDR.7.i = getelementptr inbounds %struct.src_mu_registers, ptr %69, i32 0, i32 2
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.7.i) #13, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %71 = and i32 %70, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool33.not.7.i = icmp eq i32 %71, 0
  br i1 %tobool33.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %do.end.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7.i

do.end.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 8, i32 noundef 10) #16
  tail call void @msleep(i32 noundef 1000) #13
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %do.end.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 8
  %IDR.8.i = getelementptr inbounds %struct.src_mu_registers, ptr %73, i32 0, i32 2
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.8.i) #13, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %75 = and i32 %74, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool33.not.8.i = icmp eq i32 %75, 0
  br i1 %tobool33.not.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge, label %do.end.8.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.8.i

do.end.8.i:                                       ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 9, i32 noundef 10) #16
  tail call void @msleep(i32 noundef 1000) #13
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %do.end.8.i, %for.inc.7.i.for.inc.8.i_crit_edge
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 8
  %IDR.9.i = getelementptr inbounds %struct.src_mu_registers, ptr %77, i32 0, i32 2
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.9.i) #13, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  %79 = and i32 %78, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool33.not.9.i = icmp eq i32 %79, 0
  br i1 %tobool33.not.9.i, label %for.inc.8.i.aac_handle_sa_aif.exit_crit_edge, label %do.end.9.i

for.inc.8.i.aac_handle_sa_aif.exit_crit_edge:     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %aac_handle_sa_aif.exit

do.end.9.i:                                       ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call36.9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef 10, i32 noundef 10) #16
  tail call void @msleep(i32 noundef 1000) #13
  br label %aac_handle_sa_aif.exit

aac_handle_sa_aif.exit:                           ; preds = %do.end.9.i, %for.inc.8.i.aac_handle_sa_aif.exit_crit_edge
  %call88 = tail call i32 @aac_fib_adapter_complete(ptr noundef %add.ptr, i16 noundef zeroext 4)
  br label %free_fib

if.end89:                                         ; preds = %list_del.exit
  %80 = call ptr @memset(ptr %add.ptr, i32 0, i32 164)
  %type = getelementptr i8, ptr %18, i32 -124
  %81 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 780, ptr %type, align 4
  %size = getelementptr i8, ptr %18, i32 -122
  %82 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 164, ptr %size, align 2
  %83 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %32, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %32, i32 0, i32 1
  %data91 = getelementptr i8, ptr %18, i32 8
  %84 = ptrtoint ptr %data91 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %data, ptr %data91, align 4
  %dev92 = getelementptr i8, ptr %18, i32 -120
  %85 = ptrtoint ptr %dev92 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %dev, ptr %dev92, align 4
  %86 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %87, label %if.end89.if.end109_crit_edge [
    i32 67108864, label %if.then97
    i32 16777216, label %if.end89.if.then108_crit_edge
    i32 33554432, label %if.end89.if.then108_crit_edge318
  ]

if.end89.if.then108_crit_edge318:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then108

if.end89.if.then108_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then108

if.end89.if.end109_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then97:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @aac_handle_aif(ptr noundef %dev, ptr noundef %add.ptr)
  %89 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %data, align 4
  %call100 = tail call i32 @aac_fib_adapter_complete(ptr noundef %add.ptr, i16 noundef zeroext 4)
  br label %free_fib

if.then108:                                       ; preds = %if.end89.if.then108_crit_edge, %if.end89.if.then108_crit_edge318
  tail call fastcc void @aac_handle_aif(ptr noundef %dev, ptr noundef %add.ptr)
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end89.if.end109_crit_edge
  %90 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %init.i, align 8
  %adapter_fibs_size.i = getelementptr inbounds %struct._r7, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %adapter_fibs_size.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %adapter_fibs_size.i, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #13
  %div17.i = lshr i32 %94, 9
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock.i) #13
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end109
  %entry1.0.in.i = phi ptr [ %fib_list.i, %if.end109 ], [ %entry1.0.i, %while.cond.i.while.cond.i_crit_edge ]
  %num.0.i = phi i32 [ %div17.i, %if.end109 ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %95 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp7.not.i = icmp eq ptr %entry1.0.i, %fib_list.i
  %inc.i = add i32 %num.0.i, 1
  br i1 %cmp7.not.i, label %get_fib_count.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

get_fib_count.exit:                               ; preds = %while.cond.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock.i, i32 noundef %call3.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.i)
  %tobool111.not = icmp eq i32 %num.0.i, 0
  br i1 %tobool111.not, label %get_fib_count.exit.free_fib_crit_edge, label %if.end113

get_fib_count.exit.free_fib_crit_edge:            ; preds = %get_fib_count.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fib

if.end113:                                        ; preds = %get_fib_count.exit
  %96 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.i, i32 4) #13
  %97 = extractvalue { i32, i1 } %96, 1
  %98 = extractvalue { i32, i1 } %96, 0
  br i1 %97, label %if.end113.free_fib_crit_edge, label %kmalloc_array.exit.thread, !prof !135

if.end113.free_fib_crit_edge:                     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fib

kmalloc_array.exit.thread:                        ; preds = %if.end113
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %98, i32 noundef 3264) #19
  %tobool115.not293 = icmp eq ptr %call8.i, null
  br i1 %tobool115.not293, label %kmalloc_array.exit.thread.free_fib_crit_edge, label %if.end7.i242

kmalloc_array.exit.thread.free_fib_crit_edge:     ; preds = %kmalloc_array.exit.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_fib

if.end7.i242:                                     ; preds = %kmalloc_array.exit.thread
  %call8.i241 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %98, i32 noundef 3264) #19
  %tobool119.not = icmp eq ptr %call8.i241, null
  br i1 %tobool119.not, label %if.end7.i242.free_hw_fib_pool_crit_edge, label %if.end121

if.end7.i242.free_hw_fib_pool_crit_edge:          ; preds = %if.end7.i242
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_hw_fib_pool

if.end121:                                        ; preds = %if.end7.i242
  %arrayidx.i = getelementptr ptr, ptr %call8.i, i32 %num.0.i
  br label %while.cond.i246

while.cond.i246:                                  ; preds = %if.end.i248.while.cond.i246_crit_edge, %if.end121
  %hw_fib_p.0.i = phi ptr [ %call8.i, %if.end121 ], [ %incdec.ptr.i, %if.end.i248.while.cond.i246_crit_edge ]
  %fib_p.0.i = phi ptr [ %call8.i241, %if.end121 ], [ %incdec.ptr3.i, %if.end.i248.while.cond.i246_crit_edge ]
  %cmp.i245 = icmp ult ptr %hw_fib_p.0.i, %arrayidx.i
  br i1 %cmp.i245, label %while.body.i, label %while.cond.i246.fillup_pools.exit_crit_edge

while.cond.i246.fillup_pools.exit_crit_edge:      ; preds = %while.cond.i246
  call void @__sanitizer_cov_trace_pc() #15
  br label %fillup_pools.exit

while.body.i:                                     ; preds = %while.cond.i246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %99 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i247 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %99, i32 noundef 3264, i32 noundef 512) #17
  %100 = ptrtoint ptr %hw_fib_p.0.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i247, ptr %hw_fib_p.0.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i247, null
  br i1 %tobool.not.i, label %while.body.i.fillup_pools.exit_crit_edge, label %if.end.i248

while.body.i.fillup_pools.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fillup_pools.exit

if.end.i248:                                      ; preds = %while.body.i
  %incdec.ptr.i = getelementptr ptr, ptr %hw_fib_p.0.i, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %101 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3264, i32 noundef 164) #17
  %102 = ptrtoint ptr %fib_p.0.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call7.i1.i, ptr %fib_p.0.i, align 4
  %incdec.ptr3.i = getelementptr ptr, ptr %fib_p.0.i, i32 1
  %tobool4.not.i = icmp eq ptr %call7.i1.i, null
  br i1 %tobool4.not.i, label %if.then5.i249, label %if.end.i248.while.cond.i246_crit_edge

if.end.i248.while.cond.i246_crit_edge:            ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i246

if.then5.i249:                                    ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %hw_fib_p.0.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw_fib_p.0.i, align 4
  tail call void @kfree(ptr noundef %104) #13
  br label %fillup_pools.exit

fillup_pools.exit:                                ; preds = %if.then5.i249, %while.body.i.fillup_pools.exit_crit_edge, %while.cond.i246.fillup_pools.exit_crit_edge
  %sub.ptr.lhs.cast.i = ptrtoint ptr %hw_fib_p.0.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call8.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 2
  %tobool123.not = icmp eq ptr %hw_fib_p.0.i, %call8.i
  br i1 %tobool123.not, label %fillup_pools.exit.free_mem_crit_edge, label %if.end125

fillup_pools.exit.free_mem_crit_edge:             ; preds = %fillup_pools.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_mem

if.end125:                                        ; preds = %fillup_pools.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %105 = load volatile i32, ptr @jiffies, align 128
  %div.i = udiv i32 %105, 100
  %call3.i251 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fib_lock.i) #13
  %106 = ptrtoint ptr %fib_list.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fib_list.i, align 4
  %cmp7.not5759.i = icmp eq ptr %107, %fib_list.i
  br i1 %cmp7.not5759.i, label %if.end125.wakeup_fibctx_threads.exit_crit_edge, label %while.body.lr.ph.lr.ph.i

if.end125.wakeup_fibctx_threads.exit_crit_edge:   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %wakeup_fibctx_threads.exit

while.body.lr.ph.lr.ph.i:                         ; preds = %if.end125
  %arrayidx.i253 = getelementptr ptr, ptr %call8.i, i32 %sub.ptr.div.i
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %list_add_tail.exit.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %entry1.0.ph62.i = phi ptr [ %107, %while.body.lr.ph.lr.ph.i ], [ %133, %list_add_tail.exit.i.while.body.lr.ph.i_crit_edge ]
  %hw_fib_p.0.ph61.i = phi ptr [ %call8.i, %while.body.lr.ph.lr.ph.i ], [ %incdec.ptr.i256, %list_add_tail.exit.i.while.body.lr.ph.i_crit_edge ]
  %fib_p.0.ph60.i = phi ptr [ %call8.i241, %while.body.lr.ph.lr.ph.i ], [ %incdec.ptr28.i, %list_add_tail.exit.i.while.body.lr.ph.i_crit_edge ]
  %cmp18.not.i = icmp ult ptr %hw_fib_p.0.ph61.i, %arrayidx.i253
  br label %while.body.i254

while.body.i254:                                  ; preds = %while.cond.backedge.i.while.body.i254_crit_edge, %while.body.lr.ph.i
  %entry1.058.i = phi ptr [ %entry1.0.ph62.i, %while.body.lr.ph.i ], [ %entry1.0.be.i, %while.cond.backedge.i.while.body.i254_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %entry1.058.i, i32 -12
  %count.i = getelementptr i8, ptr %entry1.058.i, i32 68
  %108 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %109)
  %cmp10.i = icmp ugt i32 %109, 20
  br i1 %cmp10.i, label %if.then.i, label %while.body.i254.if.end17.i_crit_edge

while.body.i254.if.end17.i_crit_edge:             ; preds = %while.body.i254
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then.i:                                        ; preds = %while.body.i254
  %jiffies.i = getelementptr i8, ptr %entry1.058.i, i32 -4
  %110 = ptrtoint ptr %jiffies.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %jiffies.i, align 4
  %sub.i = sub i32 %div.i, %111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aif_timeout to i32))
  %112 = load i32, ptr @aif_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %112)
  %cmp12.i = icmp ugt i32 %sub.i, %112
  br i1 %cmp12.i, label %if.then14.i, label %if.then.i.if.end17.i_crit_edge

if.then.i.if.end17.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %entry1.058.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %entry1.058.i, align 4
  %call16.i = tail call i32 @aac_close_fib_context(ptr noundef %dev, ptr noundef %add.ptr.i) #13
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %do.end23.i, %if.then14.i
  %entry1.0.be.i = phi ptr [ %114, %if.then14.i ], [ %116, %do.end23.i ]
  %cmp7.not.i255 = icmp eq ptr %entry1.0.be.i, %fib_list.i
  br i1 %cmp7.not.i255, label %while.cond.backedge.i.wakeup_fibctx_threads.exit_crit_edge, label %while.cond.backedge.i.while.body.i254_crit_edge

while.cond.backedge.i.while.body.i254_crit_edge:  ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i254

while.cond.backedge.i.wakeup_fibctx_threads.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wakeup_fibctx_threads.exit

if.end17.i:                                       ; preds = %if.then.i.if.end17.i_crit_edge, %while.body.i254.if.end17.i_crit_edge
  br i1 %cmp18.not.i, label %if.end27.i, label %do.end23.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #16
  %115 = ptrtoint ptr %entry1.058.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %entry1.058.i, align 4
  br label %while.cond.backedge.i

if.end27.i:                                       ; preds = %if.end17.i
  %count.i.le = getelementptr i8, ptr %entry1.058.i, i32 68
  %117 = ptrtoint ptr %hw_fib_p.0.ph61.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw_fib_p.0.ph61.i, align 4
  %incdec.ptr.i256 = getelementptr ptr, ptr %hw_fib_p.0.ph61.i, i32 1
  store ptr null, ptr %hw_fib_p.0.ph61.i, align 4
  %119 = ptrtoint ptr %fib_p.0.ph60.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fib_p.0.ph60.i, align 4
  %incdec.ptr28.i = getelementptr ptr, ptr %fib_p.0.ph60.i, i32 1
  store ptr null, ptr %fib_p.0.ph60.i, align 4
  %121 = call ptr @memcpy(ptr %118, ptr %32, i32 512)
  %122 = call ptr @memcpy(ptr %120, ptr %add.ptr, i32 164)
  %hw_fib_va.i = getelementptr inbounds %struct.fib, ptr %120, i32 0, i32 13
  %123 = ptrtoint ptr %hw_fib_va.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %118, ptr %hw_fib_va.i, align 4
  %fiblink.i = getelementptr inbounds %struct.fib, ptr %120, i32 0, i32 10
  %fib_list29.i = getelementptr i8, ptr %entry1.058.i, i32 72
  %prev.i.i257 = getelementptr i8, ptr %entry1.058.i, i32 76
  %124 = ptrtoint ptr %prev.i.i257 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i257, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %fiblink.i, ptr noundef %125, ptr noundef %fib_list29.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i258, label %if.end27.i.list_add_tail.exit.i_crit_edge

if.end27.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i.i258:                                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %prev.i.i257 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %fiblink.i, ptr %prev.i.i257, align 4
  %127 = ptrtoint ptr %fiblink.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %fib_list29.i, ptr %fiblink.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fib, ptr %120, i32 0, i32 10, i32 1
  %128 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev3.i.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %fiblink.i, ptr %125, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i258, %if.end27.i.list_add_tail.exit.i_crit_edge
  %130 = ptrtoint ptr %count.i.le to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %count.i.le, align 4
  %inc.i259 = add i32 %131, 1
  store i32 %inc.i259, ptr %count.i.le, align 4
  %completion.i = getelementptr i8, ptr %entry1.058.i, i32 8
  tail call void @complete(ptr noundef %completion.i) #13
  %132 = ptrtoint ptr %entry1.058.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %entry1.058.i, align 4
  %cmp7.not57.i = icmp eq ptr %133, %fib_list.i
  br i1 %cmp7.not57.i, label %list_add_tail.exit.i.wakeup_fibctx_threads.exit_crit_edge, label %list_add_tail.exit.i.while.body.lr.ph.i_crit_edge

list_add_tail.exit.i.while.body.lr.ph.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph.i

list_add_tail.exit.i.wakeup_fibctx_threads.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wakeup_fibctx_threads.exit

wakeup_fibctx_threads.exit:                       ; preds = %list_add_tail.exit.i.wakeup_fibctx_threads.exit_crit_edge, %while.cond.backedge.i.wakeup_fibctx_threads.exit_crit_edge, %if.end125.wakeup_fibctx_threads.exit_crit_edge
  %134 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %data, align 4
  %call32.i = tail call i32 @aac_fib_adapter_complete(ptr noundef %add.ptr, i16 noundef zeroext 4) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fib_lock.i, i32 noundef %call3.i251) #13
  br label %free_mem

free_mem:                                         ; preds = %wakeup_fibctx_threads.exit, %fillup_pools.exit.free_mem_crit_edge
  %arrayidx127 = getelementptr ptr, ptr %call8.i, i32 %sub.ptr.div.i
  %cmp128275 = icmp ult ptr %call8.i, %arrayidx127
  br i1 %cmp128275, label %free_mem.while.body130_crit_edge, label %free_mem.while.end_crit_edge

free_mem.while.end_crit_edge:                     ; preds = %free_mem
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

free_mem.while.body130_crit_edge:                 ; preds = %free_mem
  br label %while.body130

while.body130:                                    ; preds = %while.body130.while.body130_crit_edge, %free_mem.while.body130_crit_edge
  %fib_p.0277 = phi ptr [ %incdec.ptr, %while.body130.while.body130_crit_edge ], [ %call8.i241, %free_mem.while.body130_crit_edge ]
  %hw_fib_p.0276 = phi ptr [ %incdec.ptr131, %while.body130.while.body130_crit_edge ], [ %call8.i, %free_mem.while.body130_crit_edge ]
  %135 = ptrtoint ptr %hw_fib_p.0276 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw_fib_p.0276, align 4
  tail call void @kfree(ptr noundef %136) #13
  %137 = ptrtoint ptr %fib_p.0277 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fib_p.0277, align 4
  tail call void @kfree(ptr noundef %138) #13
  %incdec.ptr = getelementptr ptr, ptr %fib_p.0277, i32 1
  %incdec.ptr131 = getelementptr ptr, ptr %hw_fib_p.0276, i32 1
  %cmp128 = icmp ult ptr %incdec.ptr131, %arrayidx127
  br i1 %cmp128, label %while.body130.while.body130_crit_edge, label %while.body130.while.end_crit_edge

while.body130.while.end_crit_edge:                ; preds = %while.body130
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body130.while.body130_crit_edge:            ; preds = %while.body130
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body130

while.end:                                        ; preds = %while.body130.while.end_crit_edge, %free_mem.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i241) #13
  br label %free_hw_fib_pool

free_hw_fib_pool:                                 ; preds = %while.end, %if.end7.i242.free_hw_fib_pool_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i) #13
  br label %free_fib

free_fib:                                         ; preds = %free_hw_fib_pool, %kmalloc_array.exit.thread.free_fib_crit_edge, %if.end113.free_fib_crit_edge, %get_fib_count.exit.free_fib_crit_edge, %if.then97, %aac_handle_sa_aif.exit
  tail call void @kfree(ptr noundef %add.ptr) #13
  %139 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %queues, align 8
  %lock135 = getelementptr inbounds %struct.aac_queue, ptr %140, i32 0, i32 6
  %141 = ptrtoint ptr %lock135 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %lock135, align 4
  %call144 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %142) #13
  %143 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %queues, align 8
  %cmdq = getelementptr inbounds %struct.aac_queue, ptr %144, i32 0, i32 8
  %145 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %cmdq, align 4
  %cmp.i.not = icmp eq ptr %146, %cmdq
  br i1 %cmp.i.not, label %free_fib.while.end149_crit_edge, label %free_fib.__here_crit_edge

free_fib.__here_crit_edge:                        ; preds = %free_fib
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

free_fib.while.end149_crit_edge:                  ; preds = %free_fib
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end149

while.end149:                                     ; preds = %free_fib.while.end149_crit_edge, %entry.while.end149_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.while.end149_crit_edge ], [ %call144, %free_fib.while.end149_crit_edge ]
  %.lcssa = phi ptr [ %5, %entry.while.end149_crit_edge ], [ %144, %free_fib.while.end149_crit_edge ]
  %lock153 = getelementptr inbounds %struct.aac_queue, ptr %.lcssa, i32 0, i32 6
  %147 = ptrtoint ptr %lock153 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %lock153, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %148, i32 noundef %flags.0.lcssa) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_acquire_irq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 70
  %0 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %2 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true2

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 74
  %4 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %for.cond.preheader, label %land.lhs.true2.if.else_crit_edge

land.lhs.true2.if.else_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

for.cond.preheader:                               ; preds = %land.lhs.true2
  %6 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp491.not = icmp eq i32 %7, 0
  br i1 %cmp491.not, label %for.cond.preheader.if.end52_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end52_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %adapter_intr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 9
  %name = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %id = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %for.inc23.for.body_crit_edge ]
  %ret.092 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc23.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 80, i32 %i.093
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.093, ptr %arrayidx, align 4
  %dev7 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 80, i32 %i.093, i32 1
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev7, align 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %call = tail call i32 @pci_irq_vector(ptr noundef %11, i32 noundef %i.093) #13
  %12 = ptrtoint ptr %adapter_intr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter_intr, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef %13, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef %arrayidx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %for.body.for.inc23_crit_edge, label %do.end

for.body.for.inc23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc23

do.end:                                           ; preds = %for.body
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %15, i32 noundef %17, i32 noundef %i.093) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.093)
  %cmp1589 = icmp sgt i32 %i.093, 0
  br i1 %cmp1589, label %do.end.for.body16_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end.for.body16_crit_edge:                      ; preds = %do.end
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %do.end.for.body16_crit_edge
  %j.090 = phi i32 [ %inc, %for.body16.for.body16_crit_edge ], [ 0, %do.end.for.body16_crit_edge ]
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %call18 = tail call i32 @pci_irq_vector(ptr noundef %19, i32 noundef %j.090) #13
  %arrayidx20 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 80, i32 %j.090
  %call21 = tail call ptr @free_irq(i32 noundef %call18, ptr noundef %arrayidx20) #13
  %inc = add nuw nsw i32 %j.090, 1
  %exitcond.not = icmp eq i32 %inc, %i.093
  br i1 %exitcond.not, label %for.body16.for.end_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body16

for.body16.for.end_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body16.for.end_crit_edge, %do.end.for.end_crit_edge
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  tail call void @pci_disable_msix(ptr noundef %21) #13
  br label %for.inc23

for.inc23:                                        ; preds = %for.end, %for.body.for.inc23_crit_edge
  %ret.1 = phi i32 [ -1, %for.end ], [ %ret.092, %for.body.for.inc23_crit_edge ]
  %inc24 = add nuw i32 %i.093, 1
  %22 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_msix, align 8
  %cmp4 = icmp ult i32 %inc24, %23
  br i1 %cmp4, label %for.inc23.for.body_crit_edge, label %for.inc23.if.end52_crit_edge

for.inc23.if.end52_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else:                                          ; preds = %land.lhs.true2.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %aac_msix26 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 80
  %24 = ptrtoint ptr %aac_msix26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %aac_msix26, align 4
  %dev31 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 80, i32 0, i32 1
  %25 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev31, align 4
  %pdev32 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %26 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev32, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %adapter_intr34 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 9
  %30 = ptrtoint ptr %adapter_intr34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter_intr34, align 4
  %call.i88 = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef %31, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.33, ptr noundef %aac_msix26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp38 = icmp slt i32 %call.i88, 0
  br i1 %cmp38, label %if.then39, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then39:                                        ; preds = %if.else
  %msi = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 65
  %32 = ptrtoint ptr %msi to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool40.not = icmp eq i8 %33, 0
  br i1 %tobool40.not, label %if.then39.do.end46_crit_edge, label %if.then41

if.then39.do.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev32, align 4
  tail call void @pci_disable_msi(ptr noundef %35) #13
  br label %do.end46

do.end46:                                         ; preds = %if.then41, %if.then39.do.end46_crit_edge
  %name48 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %36 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name48, align 8
  %id49 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 2
  %38 = ptrtoint ptr %id49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id49, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %37, i32 noundef %39) #16
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %if.else.if.end52_crit_edge, %for.inc23.if.end52_crit_edge, %for.cond.preheader.if.end52_crit_edge
  %ret.2 = phi i32 [ -1, %do.end46 ], [ 0, %if.else.if.end52_crit_edge ], [ 0, %for.cond.preheader.if.end52_crit_edge ], [ %ret.1, %for.inc23.if.end52_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_free_irq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  %4 = add i16 %3, -654
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %4)
  %switch.i = icmp ult i16 %4, -3
  br i1 %switch.i, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 74
  %5 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then
  %7 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp340.not = icmp eq i32 %8, 0
  br i1 %cmp340.not, label %for.cond.preheader.if.end14_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end14_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 4
  %call4 = tail call i32 @pci_irq_vector(ptr noundef %10, i32 noundef %i.041) #13
  %arrayidx = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 80, i32 %i.041
  %call5 = tail call ptr @free_irq(i32 noundef %call4, ptr noundef %arrayidx) #13
  %inc = add nuw i32 %i.041, 1
  %11 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_msix, align 8
  %cmp3 = icmp ult i32 %inc, %12
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.if.end14_crit_edge

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %aac_msix7 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 80
  %call9 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %aac_msix7) #13
  br label %if.end14

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %irq12 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %15 = ptrtoint ptr %irq12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq12, align 4
  %call13 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %dev) #13
  br label %if.end14

if.end14:                                         ; preds = %if.else10, %if.else, %for.body.if.end14_crit_edge, %for.cond.preheader.if.end14_crit_edge
  %msi = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 65
  %17 = ptrtoint ptr %msi to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msi(ptr noundef %20) #13
  br label %if.end24

if.else18:                                        ; preds = %if.end14
  %max_msix19 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 74
  %21 = ptrtoint ptr %max_msix19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_msix19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp20 = icmp ugt i32 %22, 1
  br i1 %cmp20, label %if.then21, label %if.else18.if.end24_crit_edge

if.else18.if.end24_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msix(ptr noundef %24) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.else18.if.end24_crit_edge, %if.then16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_get_driver_ident(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_get_adapter_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_get_config_status(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_get_containers(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_complete_all_commands(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_setup_safw_adapter(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_device(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aac_handle_aif(ptr noundef %dev, ptr nocapture noundef readonly %fibptr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fibptr, i32 0, i32 13
  %0 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_fib_va, align 4
  %data = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 39
  %2 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsa_dev, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %6, label %if.end.sw.epilog398_crit_edge [
    i32 4, label %sw.bb
    i32 1, label %sw.bb85
    i32 2, label %sw.bb322
  ]

if.end.sw.epilog398_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

sw.bb:                                            ; preds = %if.end
  %data2 = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data2, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %10, label %sw.bb.for.cond.preheader_crit_edge [
    i32 203, label %sw.bb4
    i32 200, label %sw.bb.sw.bb20_crit_edge
    i32 201, label %sw.bb.sw.bb20_crit_edge880
  ]

sw.bb.sw.bb20_crit_edge880:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb20

sw.bb.sw.bb20_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb20

sw.bb.for.cond.preheader_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

sw.bb4:                                           ; preds = %sw.bb
  %arrayidx7 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 12
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %14)
  %tobool8.not = icmp ult i32 %14, 268435456
  br i1 %tobool8.not, label %if.end10, label %sw.bb4.for.cond.preheader_crit_edge

sw.bb4.for.cond.preheader_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end10:                                         ; preds = %sw.bb4
  %shr11 = lshr i32 %14, 24
  %maximum_num_channels = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 38
  %15 = ptrtoint ptr %maximum_num_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maximum_num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr11, i32 %16)
  %cmp.not = icmp ult i32 %shr11, %16
  br i1 %cmp.not, label %if.end13, label %if.end10.for.cond.preheader_crit_edge

if.end10.for.cond.preheader_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end13:                                         ; preds = %if.end10
  %and14 = and i32 %14, 65535
  %maximum_num_physicals = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 37
  %17 = ptrtoint ptr %maximum_num_physicals to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maximum_num_physicals, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %18)
  %cmp15.not = icmp ult i32 %and14, %18
  br i1 %cmp15.not, label %if.end17, label %if.end13.for.cond.preheader_crit_edge

if.end13.for.cond.preheader_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %shr18 = lshr i32 %14, 16
  %and19 = and i32 %shr18, 255
  %add = add nuw nsw i32 %shr11, 1
  br label %for.cond.preheader

sw.bb20:                                          ; preds = %sw.bb.sw.bb20_crit_edge, %sw.bb.sw.bb20_crit_edge880
  %arrayidx23 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 12
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx23, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %maximum_num_containers = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %22 = ptrtoint ptr %maximum_num_containers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maximum_num_containers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp24.not = icmp ult i32 %21, %23
  br i1 %cmp24.not, label %land.lhs.true, label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb20
  %scsi_host_ptr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %24 = ptrtoint ptr %scsi_host_ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scsi_host_ptr, align 8
  %cmp28.not = icmp eq ptr %25, null
  br i1 %cmp28.not, label %land.lhs.true.if.then42_crit_edge, label %if.then29

land.lhs.true.if.then42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

if.then29:                                        ; preds = %land.lhs.true
  %call = tail call ptr @scsi_device_lookup(ptr noundef nonnull %25, i32 noundef 0, i32 noundef %21, i64 noundef 0) #13
  %tobool31.not = icmp eq ptr %call, null
  br i1 %tobool31.not, label %if.then29.if.then42_crit_edge, label %if.then32

if.then29.if.then42_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fsa_dev, align 8
  %config_needed = getelementptr %struct.fsa_dev_info, ptr %27, i32 %21, i32 6
  %28 = ptrtoint ptr %config_needed to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %config_needed, align 2
  %29 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_on = getelementptr %struct.fsa_dev_info, ptr %29, i32 %21, i32 3
  %30 = ptrtoint ptr %config_waiting_on to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %config_waiting_on, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_stamp = getelementptr %struct.fsa_dev_info, ptr %32, i32 %21, i32 4
  %33 = ptrtoint ptr %config_waiting_stamp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %config_waiting_stamp, align 8
  tail call void @scsi_device_put(ptr noundef nonnull %call) #13
  br label %if.then42

sw.epilog:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp41.not = icmp eq i32 %20, -1
  br i1 %cmp41.not, label %sw.epilog.for.cond.preheader_crit_edge, label %sw.epilog.if.then42_crit_edge

sw.epilog.if.then42_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

sw.epilog.for.cond.preheader_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.epilog.for.cond.preheader_crit_edge, %if.end17, %if.end13.for.cond.preheader_crit_edge, %if.end10.for.cond.preheader_crit_edge, %sw.bb4.for.cond.preheader_crit_edge, %sw.bb.for.cond.preheader_crit_edge
  %device_config_needed.0850 = phi i32 [ 0, %sw.epilog.for.cond.preheader_crit_edge ], [ 0, %if.end13.for.cond.preheader_crit_edge ], [ 0, %if.end10.for.cond.preheader_crit_edge ], [ 0, %sw.bb4.for.cond.preheader_crit_edge ], [ 1, %if.end17 ], [ 0, %sw.bb.for.cond.preheader_crit_edge ]
  %lun.0849 = phi i32 [ -1, %sw.epilog.for.cond.preheader_crit_edge ], [ -1, %if.end13.for.cond.preheader_crit_edge ], [ -1, %if.end10.for.cond.preheader_crit_edge ], [ -1, %sw.bb4.for.cond.preheader_crit_edge ], [ %and19, %if.end17 ], [ -1, %sw.bb.for.cond.preheader_crit_edge ]
  %id.0848 = phi i32 [ -1, %sw.epilog.for.cond.preheader_crit_edge ], [ %and14, %if.end13.for.cond.preheader_crit_edge ], [ -1, %if.end10.for.cond.preheader_crit_edge ], [ -1, %sw.bb4.for.cond.preheader_crit_edge ], [ %and14, %if.end17 ], [ -1, %sw.bb.for.cond.preheader_crit_edge ]
  %channel.0847 = phi i32 [ -1, %sw.epilog.for.cond.preheader_crit_edge ], [ %shr11, %if.end13.for.cond.preheader_crit_edge ], [ %shr11, %if.end10.for.cond.preheader_crit_edge ], [ -1, %sw.bb4.for.cond.preheader_crit_edge ], [ %add, %if.end17 ], [ -1, %sw.bb.for.cond.preheader_crit_edge ]
  %maximum_num_containers64 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %34 = ptrtoint ptr %maximum_num_containers64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %maximum_num_containers64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp65831.not = icmp eq i32 %35, 0
  br i1 %cmp65831.not, label %for.cond.preheader.sw.epilog398_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilog398_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

if.then42:                                        ; preds = %sw.epilog.if.then42_crit_edge, %if.then32, %if.then29.if.then42_crit_edge, %land.lhs.true.if.then42_crit_edge
  %maximum_num_containers43 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %36 = ptrtoint ptr %maximum_num_containers43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %maximum_num_containers43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %37)
  %cmp44.not = icmp ult i32 %21, %37
  br i1 %cmp44.not, label %if.end46, label %if.then42.sw.epilog398_crit_edge

if.then42.sw.epilog398_crit_edge:                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

if.end46:                                         ; preds = %if.then42
  %38 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_on49 = getelementptr %struct.fsa_dev_info, ptr %39, i32 %21, i32 3
  %40 = ptrtoint ptr %config_waiting_on49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %config_waiting_on49, align 4
  %42 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data2, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %44)
  %cmp52 = icmp eq i32 %41, %44
  br i1 %cmp52, label %land.lhs.true53, label %if.end46.sw.epilog398_crit_edge

if.end46.sw.epilog398_crit_edge:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

land.lhs.true53:                                  ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %config_waiting_stamp56 = getelementptr %struct.fsa_dev_info, ptr %39, i32 %21, i32 4
  %46 = ptrtoint ptr %config_waiting_stamp56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %config_waiting_stamp56, align 8
  %add57.neg = add i32 %45, -50000
  %sub = sub i32 %add57.neg, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp58 = icmp slt i32 %sub, 0
  br i1 %cmp58, label %land.lhs.true53.sw.epilog398.sink.split_crit_edge, label %land.lhs.true53.sw.epilog398_crit_edge

land.lhs.true53.sw.epilog398_crit_edge:           ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

land.lhs.true53.sw.epilog398.sink.split_crit_edge: ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %container.1832 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %48 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_on68 = getelementptr %struct.fsa_dev_info, ptr %49, i32 %container.1832, i32 3
  %50 = ptrtoint ptr %config_waiting_on68 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %config_waiting_on68, align 4
  %52 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data2, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %54)
  %cmp71 = icmp eq i32 %51, %54
  br i1 %cmp71, label %land.lhs.true72, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true72:                                  ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %config_waiting_stamp75 = getelementptr %struct.fsa_dev_info, ptr %49, i32 %container.1832, i32 4
  %56 = ptrtoint ptr %config_waiting_stamp75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %config_waiting_stamp75, align 8
  %add76.neg = add i32 %55, -50000
  %sub77 = sub i32 %add76.neg, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub77)
  %cmp78 = icmp slt i32 %sub77, 0
  br i1 %cmp78, label %if.then79, label %land.lhs.true72.for.inc_crit_edge

land.lhs.true72.for.inc_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then79:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %config_waiting_on68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %config_waiting_on68, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then79, %land.lhs.true72.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %container.1832, 1
  %59 = ptrtoint ptr %maximum_num_containers64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %maximum_num_containers64, align 4
  %cmp65 = icmp ult i32 %inc, %60
  br i1 %cmp65, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog398_crit_edge

for.inc.sw.epilog398_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

sw.bb85:                                          ; preds = %if.end
  %data86 = getelementptr inbounds %struct.hw_fib, ptr %1, i32 0, i32 1, i32 8
  %61 = ptrtoint ptr %data86 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data86, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %63, label %sw.bb85.for.cond293.preheader_crit_edge [
    i32 14, label %sw.bb89
    i32 15, label %sw.bb95
    i32 16, label %sw.bb113
    i32 4, label %sw.bb131
    i32 42, label %sw.bb262
    i32 30, label %sw.bb85.sw.bb163_crit_edge
    i32 31, label %sw.bb85.sw.bb163_crit_edge881
    i32 13, label %sw.bb202
  ]

sw.bb85.sw.bb163_crit_edge881:                    ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb163

sw.bb85.sw.bb163_crit_edge:                       ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb163

sw.bb85.for.cond293.preheader_crit_edge:          ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

sw.bb89:                                          ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx92 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 12
  %65 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %66)
  %cmp93 = icmp eq i32 %66, 50331648
  %conv94 = zext i1 %cmp93 to i8
  %cache_protected = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 55
  %67 = ptrtoint ptr %cache_protected to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv94, ptr %cache_protected, align 2
  br label %for.cond293.preheader

sw.bb95:                                          ; preds = %sw.bb85
  %arrayidx98 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 12
  %68 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx98, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %maximum_num_containers99 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %71 = ptrtoint ptr %maximum_num_containers99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %maximum_num_containers99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp100.not = icmp ult i32 %70, %72
  br i1 %cmp100.not, label %sw.bb95.if.then266.sink.split_crit_edge, label %sw.bb95.sw.epilog263_crit_edge

sw.bb95.sw.epilog263_crit_edge:                   ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog263

sw.bb95.if.then266.sink.split_crit_edge:          ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then266.sink.split

sw.bb113:                                         ; preds = %sw.bb85
  %arrayidx116 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 12
  %73 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx116, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %maximum_num_containers117 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %76 = ptrtoint ptr %maximum_num_containers117 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %maximum_num_containers117, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp118.not = icmp ult i32 %75, %77
  br i1 %cmp118.not, label %sw.bb113.if.then266.sink.split_crit_edge, label %sw.bb113.sw.epilog263_crit_edge

sw.bb113.sw.epilog263_crit_edge:                  ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog263

sw.bb113.if.then266.sink.split_crit_edge:         ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then266.sink.split

sw.bb131:                                         ; preds = %sw.bb85
  %arrayidx134 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 12
  %78 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx134, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %maximum_num_containers135 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %81 = ptrtoint ptr %maximum_num_containers135 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %maximum_num_containers135, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp136.not = icmp ult i32 %80, %82
  br i1 %cmp136.not, label %if.end139, label %sw.bb131.sw.epilog263_crit_edge

sw.bb131.sw.epilog263_crit_edge:                  ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog263

if.end139:                                        ; preds = %sw.bb131
  %config_waiting_on142 = getelementptr %struct.fsa_dev_info, ptr %3, i32 %80, i32 3
  %83 = ptrtoint ptr %config_waiting_on142 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %config_waiting_on142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool143.not = icmp eq i32 %84, 0
  br i1 %tobool143.not, label %if.end139.if.then266.sink.split_crit_edge, label %land.lhs.true144

if.end139.if.then266.sink.split_crit_edge:        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then266.sink.split

land.lhs.true144:                                 ; preds = %if.end139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %config_waiting_stamp147 = getelementptr %struct.fsa_dev_info, ptr %3, i32 %80, i32 4
  %86 = ptrtoint ptr %config_waiting_stamp147 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %config_waiting_stamp147, align 8
  %add148.neg = add i32 %85, -50000
  %sub149 = sub i32 %add148.neg, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub149)
  %cmp150 = icmp slt i32 %sub149, 0
  br i1 %cmp150, label %land.lhs.true144.if.then266_crit_edge, label %land.lhs.true144.if.then266.sink.split_crit_edge

land.lhs.true144.if.then266.sink.split_crit_edge: ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then266.sink.split

land.lhs.true144.if.then266_crit_edge:            ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then266

sw.bb163:                                         ; preds = %sw.bb85.sw.bb163_crit_edge, %sw.bb85.sw.bb163_crit_edge881
  %arrayidx166 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 12
  %88 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx166, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %90)
  %tobool168.not = icmp ult i32 %90, 268435456
  br i1 %tobool168.not, label %if.end170, label %sw.bb163.for.cond293.preheader_crit_edge

sw.bb163.for.cond293.preheader_crit_edge:         ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

if.end170:                                        ; preds = %sw.bb163
  %shr171 = lshr i32 %90, 24
  %maximum_num_channels173 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 38
  %91 = ptrtoint ptr %maximum_num_channels173 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %maximum_num_channels173, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr171, i32 %92)
  %cmp174.not = icmp ult i32 %shr171, %92
  br i1 %cmp174.not, label %if.end177, label %if.end170.for.cond293.preheader_crit_edge

if.end170.for.cond293.preheader_crit_edge:        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

if.end177:                                        ; preds = %if.end170
  %and178 = and i32 %90, 65535
  %maximum_num_physicals179 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 37
  %93 = ptrtoint ptr %maximum_num_physicals179 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %maximum_num_physicals179, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and178, i32 %94)
  %cmp180.not = icmp ult i32 %and178, %94
  br i1 %cmp180.not, label %if.end183, label %if.end177.for.cond293.preheader_crit_edge

if.end177.for.cond293.preheader_crit_edge:        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

if.end183:                                        ; preds = %if.end177
  %shr184 = lshr i32 %90, 16
  %and185 = and i32 %shr184, 255
  %add186 = add nuw nsw i32 %shr171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 503316480, i32 %62)
  %cmp190 = icmp eq i32 %62, 503316480
  br i1 %cmp190, label %if.then194, label %if.end183.for.cond293.preheader_crit_edge

if.end183.for.cond293.preheader_crit_edge:        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

if.then194:                                       ; preds = %if.end183
  %scsi_host_ptr195 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  %95 = ptrtoint ptr %scsi_host_ptr195 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %scsi_host_ptr195, align 8
  %conv196 = zext i32 %and185 to i64
  %call197 = tail call ptr @scsi_device_lookup(ptr noundef %96, i32 noundef %add186, i32 noundef %and178, i64 noundef %conv196) #13
  %tobool198.not = icmp eq ptr %call197, null
  br i1 %tobool198.not, label %if.then194.for.cond293.preheader_crit_edge, label %if.then199

if.then194.for.cond293.preheader_crit_edge:       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

if.then199:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_remove_device(ptr noundef nonnull %call197) #13
  tail call void @scsi_device_put(ptr noundef nonnull %call197) #13
  br label %for.cond293.preheader

sw.bb202:                                         ; preds = %sw.bb85
  %jbod = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 54
  %97 = ptrtoint ptr %jbod to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %jbod, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool203.not = icmp eq i8 %98, 0
  br i1 %tobool203.not, label %if.end205, label %sw.bb202.for.cond293.preheader_crit_edge

sw.bb202.for.cond293.preheader_crit_edge:         ; preds = %sw.bb202
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

if.end205:                                        ; preds = %sw.bb202
  %arrayidx208 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 20
  %99 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx208, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %101, label %if.end205.for.cond293.preheader_crit_edge [
    i32 31, label %if.end205.sw.bb209_crit_edge
    i32 32, label %if.end205.sw.bb209_crit_edge882
    i32 33, label %if.end205.sw.bb209_crit_edge883
    i32 26, label %if.end205.sw.bb209_crit_edge884
  ]

if.end205.sw.bb209_crit_edge884:                  ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb209

if.end205.sw.bb209_crit_edge883:                  ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb209

if.end205.sw.bb209_crit_edge882:                  ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb209

if.end205.sw.bb209_crit_edge:                     ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb209

if.end205.for.cond293.preheader_crit_edge:        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

sw.bb209:                                         ; preds = %if.end205.sw.bb209_crit_edge, %if.end205.sw.bb209_crit_edge882, %if.end205.sw.bb209_crit_edge883, %if.end205.sw.bb209_crit_edge884
  %arrayidx212 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 16
  %103 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx212, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %105)
  %tobool214.not = icmp ult i32 %105, 268435456
  br i1 %tobool214.not, label %if.end216, label %sw.bb209.for.cond293.preheader_crit_edge

sw.bb209.for.cond293.preheader_crit_edge:         ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

if.end216:                                        ; preds = %sw.bb209
  %shr217 = lshr i32 %105, 24
  %maximum_num_channels219 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 38
  %106 = ptrtoint ptr %maximum_num_channels219 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %maximum_num_channels219, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr217, i32 %107)
  %cmp220.not = icmp ult i32 %shr217, %107
  br i1 %cmp220.not, label %if.end223, label %if.end216.for.cond293.preheader_crit_edge

if.end216.for.cond293.preheader_crit_edge:        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

if.end223:                                        ; preds = %if.end216
  %and224 = and i32 %105, 65535
  %shr225 = lshr i32 %105, 16
  %and226 = and i32 %shr225, 255
  %maximum_num_physicals227 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 37
  %108 = ptrtoint ptr %maximum_num_physicals227 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %maximum_num_physicals227, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and224, i32 %109)
  %cmp228.not = icmp ult i32 %and224, %109
  br i1 %cmp228.not, label %if.end223.if.end248_crit_edge, label %if.then230

if.end223.if.end248_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end248

if.then230:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and224)
  %cmp231 = icmp ult i32 %and224, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool234.not = icmp eq i32 %and226, 0
  %or.cond = select i1 %cmp231, i1 %tobool234.not, i1 false
  br i1 %or.cond, label %lor.lhs.false235, label %if.then230.for.cond293.preheader_crit_edge

if.then230.for.cond293.preheader_crit_edge:       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

lor.lhs.false235:                                 ; preds = %if.then230
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %105)
  %tobool236.not = icmp ult i32 %105, 16777216
  br i1 %tobool236.not, label %lor.lhs.false237, label %lor.lhs.false235.for.cond293.preheader_crit_edge

lor.lhs.false235.for.cond293.preheader_crit_edge: ; preds = %lor.lhs.false235
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

lor.lhs.false237:                                 ; preds = %lor.lhs.false235
  %shr238 = lshr i32 %105, 7
  %and239 = and i32 %shr238, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and239, i32 %107)
  %cmp241.not = icmp ult i32 %and239, %107
  br i1 %cmp241.not, label %if.end244, label %lor.lhs.false237.for.cond293.preheader_crit_edge

lor.lhs.false237.for.cond293.preheader_crit_edge: ; preds = %lor.lhs.false237
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

if.end244:                                        ; preds = %lor.lhs.false237
  call void @__sanitizer_cov_trace_pc() #15
  %shr245 = lshr i32 %105, 4
  %and246 = and i32 %shr245, 7
  %and247 = and i32 %105, 15
  br label %if.end248

if.end248:                                        ; preds = %if.end244, %if.end223.if.end248_crit_edge
  %channel.1 = phi i32 [ %and239, %if.end244 ], [ %shr217, %if.end223.if.end248_crit_edge ]
  %id.1 = phi i32 [ %and247, %if.end244 ], [ %and224, %if.end223.if.end248_crit_edge ]
  %lun.1 = phi i32 [ %and246, %if.end244 ], [ %and226, %if.end223.if.end248_crit_edge ]
  %add249 = add nuw nsw i32 %channel.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 520093696, i32 %100)
  %cmp253 = icmp eq i32 %100, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 553648128, i32 %100)
  %cmp258 = icmp eq i32 %100, 553648128
  %spec.select = or i1 %cmp253, %cmp258
  %cond260 = select i1 %spec.select, i32 2, i32 1
  br label %for.cond293.preheader

sw.bb262:                                         ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @aac_handle_aif_bu(ptr noundef nonnull %dev, ptr noundef %data)
  br label %for.cond293.preheader

sw.epilog263:                                     ; preds = %sw.bb131.sw.epilog263_crit_edge, %sw.bb113.sw.epilog263_crit_edge, %sw.bb95.sw.epilog263_crit_edge
  %container.2 = phi i32 [ %80, %sw.bb131.sw.epilog263_crit_edge ], [ %75, %sw.bb113.sw.epilog263_crit_edge ], [ %70, %sw.bb95.sw.epilog263_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %container.2)
  %cmp264.not = icmp eq i32 %container.2, -1
  br i1 %cmp264.not, label %sw.epilog263.for.cond293.preheader_crit_edge, label %sw.epilog263.if.then266_crit_edge

sw.epilog263.if.then266_crit_edge:                ; preds = %sw.epilog263
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then266

sw.epilog263.for.cond293.preheader_crit_edge:     ; preds = %sw.epilog263
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond293.preheader

for.cond293.preheader:                            ; preds = %sw.epilog263.for.cond293.preheader_crit_edge, %sw.bb262, %if.end248, %lor.lhs.false237.for.cond293.preheader_crit_edge, %lor.lhs.false235.for.cond293.preheader_crit_edge, %if.then230.for.cond293.preheader_crit_edge, %if.end216.for.cond293.preheader_crit_edge, %sw.bb209.for.cond293.preheader_crit_edge, %if.end205.for.cond293.preheader_crit_edge, %sw.bb202.for.cond293.preheader_crit_edge, %if.then199, %if.then194.for.cond293.preheader_crit_edge, %if.end183.for.cond293.preheader_crit_edge, %if.end177.for.cond293.preheader_crit_edge, %if.end170.for.cond293.preheader_crit_edge, %sw.bb163.for.cond293.preheader_crit_edge, %sw.bb89, %sw.bb85.for.cond293.preheader_crit_edge
  %device_config_needed.1860 = phi i32 [ 0, %sw.epilog263.for.cond293.preheader_crit_edge ], [ 0, %if.end216.for.cond293.preheader_crit_edge ], [ 0, %sw.bb209.for.cond293.preheader_crit_edge ], [ 0, %if.end177.for.cond293.preheader_crit_edge ], [ 0, %if.end170.for.cond293.preheader_crit_edge ], [ 0, %sw.bb163.for.cond293.preheader_crit_edge ], [ 0, %sw.bb89 ], [ 0, %sw.bb262 ], [ 1, %if.end183.for.cond293.preheader_crit_edge ], [ 2, %if.then194.for.cond293.preheader_crit_edge ], [ 2, %if.then199 ], [ %cond260, %if.end248 ], [ 0, %lor.lhs.false237.for.cond293.preheader_crit_edge ], [ 0, %lor.lhs.false235.for.cond293.preheader_crit_edge ], [ 0, %if.then230.for.cond293.preheader_crit_edge ], [ 0, %if.end205.for.cond293.preheader_crit_edge ], [ 0, %sw.bb202.for.cond293.preheader_crit_edge ], [ 0, %sw.bb85.for.cond293.preheader_crit_edge ]
  %lun.2859 = phi i32 [ -1, %sw.epilog263.for.cond293.preheader_crit_edge ], [ -1, %if.end216.for.cond293.preheader_crit_edge ], [ -1, %sw.bb209.for.cond293.preheader_crit_edge ], [ -1, %if.end177.for.cond293.preheader_crit_edge ], [ -1, %if.end170.for.cond293.preheader_crit_edge ], [ -1, %sw.bb163.for.cond293.preheader_crit_edge ], [ -1, %sw.bb89 ], [ -1, %sw.bb262 ], [ %and185, %if.end183.for.cond293.preheader_crit_edge ], [ %and185, %if.then194.for.cond293.preheader_crit_edge ], [ %and185, %if.then199 ], [ %lun.1, %if.end248 ], [ 0, %lor.lhs.false237.for.cond293.preheader_crit_edge ], [ 0, %lor.lhs.false235.for.cond293.preheader_crit_edge ], [ %and226, %if.then230.for.cond293.preheader_crit_edge ], [ -1, %if.end205.for.cond293.preheader_crit_edge ], [ -1, %sw.bb202.for.cond293.preheader_crit_edge ], [ -1, %sw.bb85.for.cond293.preheader_crit_edge ]
  %id.2858 = phi i32 [ -1, %sw.epilog263.for.cond293.preheader_crit_edge ], [ -1, %if.end216.for.cond293.preheader_crit_edge ], [ -1, %sw.bb209.for.cond293.preheader_crit_edge ], [ %and178, %if.end177.for.cond293.preheader_crit_edge ], [ -1, %if.end170.for.cond293.preheader_crit_edge ], [ -1, %sw.bb163.for.cond293.preheader_crit_edge ], [ -1, %sw.bb89 ], [ -1, %sw.bb262 ], [ %and178, %if.end183.for.cond293.preheader_crit_edge ], [ %and178, %if.then194.for.cond293.preheader_crit_edge ], [ %and178, %if.then199 ], [ %id.1, %if.end248 ], [ %and224, %lor.lhs.false237.for.cond293.preheader_crit_edge ], [ %and224, %lor.lhs.false235.for.cond293.preheader_crit_edge ], [ %and224, %if.then230.for.cond293.preheader_crit_edge ], [ -1, %if.end205.for.cond293.preheader_crit_edge ], [ -1, %sw.bb202.for.cond293.preheader_crit_edge ], [ -1, %sw.bb85.for.cond293.preheader_crit_edge ]
  %channel.2857 = phi i32 [ -1, %sw.epilog263.for.cond293.preheader_crit_edge ], [ %shr217, %if.end216.for.cond293.preheader_crit_edge ], [ -1, %sw.bb209.for.cond293.preheader_crit_edge ], [ %shr171, %if.end177.for.cond293.preheader_crit_edge ], [ %shr171, %if.end170.for.cond293.preheader_crit_edge ], [ -1, %sw.bb163.for.cond293.preheader_crit_edge ], [ -1, %sw.bb89 ], [ -1, %sw.bb262 ], [ %add186, %if.end183.for.cond293.preheader_crit_edge ], [ %add186, %if.then194.for.cond293.preheader_crit_edge ], [ %add186, %if.then199 ], [ %add249, %if.end248 ], [ %and239, %lor.lhs.false237.for.cond293.preheader_crit_edge ], [ %shr217, %lor.lhs.false235.for.cond293.preheader_crit_edge ], [ %shr217, %if.then230.for.cond293.preheader_crit_edge ], [ -1, %if.end205.for.cond293.preheader_crit_edge ], [ -1, %sw.bb202.for.cond293.preheader_crit_edge ], [ -1, %sw.bb85.for.cond293.preheader_crit_edge ]
  %maximum_num_containers294 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %110 = ptrtoint ptr %maximum_num_containers294 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %maximum_num_containers294, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp295828.not = icmp eq i32 %111, 0
  br i1 %cmp295828.not, label %for.cond293.preheader.sw.epilog398_crit_edge, label %for.cond293.preheader.for.body297_crit_edge

for.cond293.preheader.for.body297_crit_edge:      ; preds = %for.cond293.preheader
  br label %for.body297

for.cond293.preheader.sw.epilog398_crit_edge:     ; preds = %for.cond293.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

if.then266.sink.split:                            ; preds = %land.lhs.true144.if.then266.sink.split_crit_edge, %if.end139.if.then266.sink.split_crit_edge, %sw.bb113.if.then266.sink.split_crit_edge, %sw.bb95.if.then266.sink.split_crit_edge
  %.sink869 = phi i32 [ %70, %sw.bb95.if.then266.sink.split_crit_edge ], [ %75, %sw.bb113.if.then266.sink.split_crit_edge ], [ %80, %land.lhs.true144.if.then266.sink.split_crit_edge ], [ %80, %if.end139.if.then266.sink.split_crit_edge ]
  %.sink = phi i8 [ 2, %sw.bb95.if.then266.sink.split_crit_edge ], [ 1, %sw.bb113.if.then266.sink.split_crit_edge ], [ 3, %land.lhs.true144.if.then266.sink.split_crit_edge ], [ 3, %if.end139.if.then266.sink.split_crit_edge ]
  %config_needed106 = getelementptr %struct.fsa_dev_info, ptr %3, i32 %.sink869, i32 6
  %112 = ptrtoint ptr %config_needed106 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %.sink, ptr %config_needed106, align 2
  %113 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_on109 = getelementptr %struct.fsa_dev_info, ptr %114, i32 %.sink869, i32 3
  %115 = ptrtoint ptr %config_waiting_on109 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 3, ptr %config_waiting_on109, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %116 = load volatile i32, ptr @jiffies, align 128
  %117 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_stamp112 = getelementptr %struct.fsa_dev_info, ptr %117, i32 %.sink869, i32 4
  %118 = ptrtoint ptr %config_waiting_stamp112 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %116, ptr %config_waiting_stamp112, align 8
  br label %if.then266

if.then266:                                       ; preds = %if.then266.sink.split, %sw.epilog263.if.then266_crit_edge, %land.lhs.true144.if.then266_crit_edge
  %container.2756 = phi i32 [ %container.2, %sw.epilog263.if.then266_crit_edge ], [ %80, %land.lhs.true144.if.then266_crit_edge ], [ %.sink869, %if.then266.sink.split ]
  %maximum_num_containers267 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %119 = ptrtoint ptr %maximum_num_containers267 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %maximum_num_containers267, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %container.2756, i32 %120)
  %cmp268.not = icmp ult i32 %container.2756, %120
  br i1 %cmp268.not, label %if.end271, label %if.then266.sw.epilog398_crit_edge

if.then266.sw.epilog398_crit_edge:                ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

if.end271:                                        ; preds = %if.then266
  %121 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_on274 = getelementptr %struct.fsa_dev_info, ptr %122, i32 %container.2756, i32 3
  %123 = ptrtoint ptr %config_waiting_on274 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %config_waiting_on274, align 4
  %125 = ptrtoint ptr %data86 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %data86, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %127)
  %cmp277 = icmp eq i32 %124, %127
  br i1 %cmp277, label %land.lhs.true279, label %if.end271.sw.epilog398_crit_edge

if.end271.sw.epilog398_crit_edge:                 ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

land.lhs.true279:                                 ; preds = %if.end271
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %128 = load volatile i32, ptr @jiffies, align 128
  %config_waiting_stamp282 = getelementptr %struct.fsa_dev_info, ptr %122, i32 %container.2756, i32 4
  %129 = ptrtoint ptr %config_waiting_stamp282 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %config_waiting_stamp282, align 8
  %add283.neg = add i32 %128, -50000
  %sub284 = sub i32 %add283.neg, %130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub284)
  %cmp285 = icmp slt i32 %sub284, 0
  br i1 %cmp285, label %land.lhs.true279.sw.epilog398.sink.split_crit_edge, label %land.lhs.true279.sw.epilog398_crit_edge

land.lhs.true279.sw.epilog398_crit_edge:          ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

land.lhs.true279.sw.epilog398.sink.split_crit_edge: ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398.sink.split

for.body297:                                      ; preds = %for.inc318.for.body297_crit_edge, %for.cond293.preheader.for.body297_crit_edge
  %container.3829 = phi i32 [ %inc319, %for.inc318.for.body297_crit_edge ], [ 0, %for.cond293.preheader.for.body297_crit_edge ]
  %131 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_on300 = getelementptr %struct.fsa_dev_info, ptr %132, i32 %container.3829, i32 3
  %133 = ptrtoint ptr %config_waiting_on300 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %config_waiting_on300, align 4
  %135 = ptrtoint ptr %data86 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data86, align 4
  %137 = tail call i32 @llvm.bswap.i32(i32 %136)
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %137)
  %cmp303 = icmp eq i32 %134, %137
  br i1 %cmp303, label %land.lhs.true305, label %for.body297.for.inc318_crit_edge

for.body297.for.inc318_crit_edge:                 ; preds = %for.body297
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc318

land.lhs.true305:                                 ; preds = %for.body297
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %138 = load volatile i32, ptr @jiffies, align 128
  %config_waiting_stamp308 = getelementptr %struct.fsa_dev_info, ptr %132, i32 %container.3829, i32 4
  %139 = ptrtoint ptr %config_waiting_stamp308 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %config_waiting_stamp308, align 8
  %add309.neg = add i32 %138, -50000
  %sub310 = sub i32 %add309.neg, %140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub310)
  %cmp311 = icmp slt i32 %sub310, 0
  br i1 %cmp311, label %if.then313, label %land.lhs.true305.for.inc318_crit_edge

land.lhs.true305.for.inc318_crit_edge:            ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc318

if.then313:                                       ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #15
  %141 = ptrtoint ptr %config_waiting_on300 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %config_waiting_on300, align 4
  br label %for.inc318

for.inc318:                                       ; preds = %if.then313, %land.lhs.true305.for.inc318_crit_edge, %for.body297.for.inc318_crit_edge
  %inc319 = add nuw i32 %container.3829, 1
  %142 = ptrtoint ptr %maximum_num_containers294 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %maximum_num_containers294, align 4
  %cmp295 = icmp ult i32 %inc319, %143
  br i1 %cmp295, label %for.inc318.for.body297_crit_edge, label %for.inc318.sw.epilog398_crit_edge

for.inc318.sw.epilog398_crit_edge:                ; preds = %for.inc318
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

for.inc318.for.body297_crit_edge:                 ; preds = %for.inc318
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body297

sw.bb322:                                         ; preds = %if.end
  %arrayidx325 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 12
  %144 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx325, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1694498816, i32 %145)
  %cmp326 = icmp eq i32 %145, 1694498816
  br i1 %cmp326, label %land.lhs.true328, label %sw.bb322.sw.epilog398_crit_edge

sw.bb322.sw.epilog398_crit_edge:                  ; preds = %sw.bb322
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

land.lhs.true328:                                 ; preds = %sw.bb322
  %arrayidx331 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 32
  %146 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx331, align 4
  %arrayidx334 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 28
  %148 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx334, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %149)
  %cmp335 = icmp eq i32 %147, %149
  br i1 %cmp335, label %land.lhs.true328.if.then343_crit_edge, label %lor.lhs.false337

land.lhs.true328.if.then343_crit_edge:            ; preds = %land.lhs.true328
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then343

lor.lhs.false337:                                 ; preds = %land.lhs.true328
  %arrayidx340 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 24
  %150 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %151)
  %cmp341 = icmp eq i32 %151, 16777216
  br i1 %cmp341, label %lor.lhs.false337.if.then343_crit_edge, label %lor.lhs.false337.if.end361_crit_edge

lor.lhs.false337.if.end361_crit_edge:             ; preds = %lor.lhs.false337
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end361

lor.lhs.false337.if.then343_crit_edge:            ; preds = %lor.lhs.false337
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then343

if.then343:                                       ; preds = %lor.lhs.false337.if.then343_crit_edge, %land.lhs.true328.if.then343_crit_edge
  %maximum_num_containers345 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %152 = ptrtoint ptr %maximum_num_containers345 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %maximum_num_containers345, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp346824.not = icmp eq i32 %153, 0
  br i1 %cmp346824.not, label %if.then343.if.end361_crit_edge, label %if.then343.for.body348_crit_edge

if.then343.for.body348_crit_edge:                 ; preds = %if.then343
  br label %for.body348

if.then343.if.end361_crit_edge:                   ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end361

for.body348:                                      ; preds = %for.body348.for.body348_crit_edge, %if.then343.for.body348_crit_edge
  %container.4825 = phi i32 [ %inc359, %for.body348.for.body348_crit_edge ], [ 0, %if.then343.for.body348_crit_edge ]
  %154 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_on351 = getelementptr %struct.fsa_dev_info, ptr %155, i32 %container.4825, i32 3
  %156 = ptrtoint ptr %config_waiting_on351 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 4, ptr %config_waiting_on351, align 4
  %157 = load ptr, ptr %fsa_dev, align 8
  %config_needed354 = getelementptr %struct.fsa_dev_info, ptr %157, i32 %container.4825, i32 6
  %158 = ptrtoint ptr %config_needed354 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 2, ptr %config_needed354, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %159 = load volatile i32, ptr @jiffies, align 128
  %160 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_stamp357 = getelementptr %struct.fsa_dev_info, ptr %160, i32 %container.4825, i32 4
  %161 = ptrtoint ptr %config_waiting_stamp357 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %159, ptr %config_waiting_stamp357, align 8
  %inc359 = add nuw i32 %container.4825, 1
  %162 = ptrtoint ptr %maximum_num_containers345 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %maximum_num_containers345, align 4
  %cmp346 = icmp ult i32 %inc359, %163
  br i1 %cmp346, label %for.body348.for.body348_crit_edge, label %for.body348.if.end361_crit_edge

for.body348.if.end361_crit_edge:                  ; preds = %for.body348
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end361

for.body348.for.body348_crit_edge:                ; preds = %for.body348
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body348

if.end361:                                        ; preds = %for.body348.if.end361_crit_edge, %if.then343.if.end361_crit_edge, %lor.lhs.false337.if.end361_crit_edge
  %164 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load4_noabort(i32 %164)
  %.pr = load i32, ptr %arrayidx325, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1694498816, i32 %.pr)
  %cmp365 = icmp eq i32 %.pr, 1694498816
  br i1 %cmp365, label %land.lhs.true367, label %if.end361.sw.epilog398_crit_edge

if.end361.sw.epilog398_crit_edge:                 ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

land.lhs.true367:                                 ; preds = %if.end361
  %165 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx331, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp371 = icmp eq i32 %166, 0
  br i1 %cmp371, label %land.lhs.true373, label %land.lhs.true367.sw.epilog398_crit_edge

land.lhs.true367.sw.epilog398_crit_edge:          ; preds = %land.lhs.true367
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

land.lhs.true373:                                 ; preds = %land.lhs.true367
  %arrayidx376 = getelementptr %struct.hw_fib, ptr %1, i32 0, i32 1, i32 24
  %167 = ptrtoint ptr %arrayidx376 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx376, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1711276032, i32 %168)
  %cmp377 = icmp eq i32 %168, 1711276032
  br i1 %cmp377, label %for.cond380.preheader, label %land.lhs.true373.sw.epilog398_crit_edge

land.lhs.true373.sw.epilog398_crit_edge:          ; preds = %land.lhs.true373
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

for.cond380.preheader:                            ; preds = %land.lhs.true373
  %maximum_num_containers381 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %169 = ptrtoint ptr %maximum_num_containers381 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %maximum_num_containers381, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp382826.not = icmp eq i32 %170, 0
  br i1 %cmp382826.not, label %for.cond380.preheader.sw.epilog398_crit_edge, label %for.cond380.preheader.for.body384_crit_edge

for.cond380.preheader.for.body384_crit_edge:      ; preds = %for.cond380.preheader
  br label %for.body384

for.cond380.preheader.sw.epilog398_crit_edge:     ; preds = %for.cond380.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

for.body384:                                      ; preds = %for.body384.for.body384_crit_edge, %for.cond380.preheader.for.body384_crit_edge
  %container.5827 = phi i32 [ %inc395, %for.body384.for.body384_crit_edge ], [ 0, %for.cond380.preheader.for.body384_crit_edge ]
  %171 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_on387 = getelementptr %struct.fsa_dev_info, ptr %172, i32 %container.5827, i32 3
  %173 = ptrtoint ptr %config_waiting_on387 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 4, ptr %config_waiting_on387, align 4
  %174 = load ptr, ptr %fsa_dev, align 8
  %config_needed390 = getelementptr %struct.fsa_dev_info, ptr %174, i32 %container.5827, i32 6
  %175 = ptrtoint ptr %config_needed390 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 1, ptr %config_needed390, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %176 = load volatile i32, ptr @jiffies, align 128
  %177 = load ptr, ptr %fsa_dev, align 8
  %config_waiting_stamp393 = getelementptr %struct.fsa_dev_info, ptr %177, i32 %container.5827, i32 4
  %178 = ptrtoint ptr %config_waiting_stamp393 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %176, ptr %config_waiting_stamp393, align 8
  %inc395 = add nuw i32 %container.5827, 1
  %179 = ptrtoint ptr %maximum_num_containers381 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %maximum_num_containers381, align 4
  %cmp382 = icmp ult i32 %inc395, %180
  br i1 %cmp382, label %for.body384.for.body384_crit_edge, label %for.body384.sw.epilog398_crit_edge

for.body384.sw.epilog398_crit_edge:               ; preds = %for.body384
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog398

for.body384.for.body384_crit_edge:                ; preds = %for.body384
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body384

sw.epilog398.sink.split:                          ; preds = %land.lhs.true279.sw.epilog398.sink.split_crit_edge, %land.lhs.true53.sw.epilog398.sink.split_crit_edge
  %config_waiting_on274.sink = phi ptr [ %config_waiting_on49, %land.lhs.true53.sw.epilog398.sink.split_crit_edge ], [ %config_waiting_on274, %land.lhs.true279.sw.epilog398.sink.split_crit_edge ]
  %181 = ptrtoint ptr %config_waiting_on274.sink to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %config_waiting_on274.sink, align 4
  br label %sw.epilog398

sw.epilog398:                                     ; preds = %sw.epilog398.sink.split, %for.body384.sw.epilog398_crit_edge, %for.cond380.preheader.sw.epilog398_crit_edge, %land.lhs.true373.sw.epilog398_crit_edge, %land.lhs.true367.sw.epilog398_crit_edge, %if.end361.sw.epilog398_crit_edge, %sw.bb322.sw.epilog398_crit_edge, %for.inc318.sw.epilog398_crit_edge, %land.lhs.true279.sw.epilog398_crit_edge, %if.end271.sw.epilog398_crit_edge, %if.then266.sw.epilog398_crit_edge, %for.cond293.preheader.sw.epilog398_crit_edge, %for.inc.sw.epilog398_crit_edge, %land.lhs.true53.sw.epilog398_crit_edge, %if.end46.sw.epilog398_crit_edge, %if.then42.sw.epilog398_crit_edge, %for.cond.preheader.sw.epilog398_crit_edge, %if.end.sw.epilog398_crit_edge
  %channel.3 = phi i32 [ -1, %if.end.sw.epilog398_crit_edge ], [ -1, %land.lhs.true373.sw.epilog398_crit_edge ], [ -1, %land.lhs.true367.sw.epilog398_crit_edge ], [ -1, %if.end361.sw.epilog398_crit_edge ], [ -1, %if.then266.sw.epilog398_crit_edge ], [ -1, %land.lhs.true279.sw.epilog398_crit_edge ], [ -1, %if.end271.sw.epilog398_crit_edge ], [ -1, %if.then42.sw.epilog398_crit_edge ], [ -1, %land.lhs.true53.sw.epilog398_crit_edge ], [ -1, %if.end46.sw.epilog398_crit_edge ], [ -1, %sw.bb322.sw.epilog398_crit_edge ], [ %channel.0847, %for.cond.preheader.sw.epilog398_crit_edge ], [ %channel.2857, %for.cond293.preheader.sw.epilog398_crit_edge ], [ -1, %for.cond380.preheader.sw.epilog398_crit_edge ], [ -1, %sw.epilog398.sink.split ], [ %channel.0847, %for.inc.sw.epilog398_crit_edge ], [ %channel.2857, %for.inc318.sw.epilog398_crit_edge ], [ -1, %for.body384.sw.epilog398_crit_edge ]
  %id.3 = phi i32 [ -1, %if.end.sw.epilog398_crit_edge ], [ -1, %land.lhs.true373.sw.epilog398_crit_edge ], [ -1, %land.lhs.true367.sw.epilog398_crit_edge ], [ -1, %if.end361.sw.epilog398_crit_edge ], [ -1, %if.then266.sw.epilog398_crit_edge ], [ -1, %land.lhs.true279.sw.epilog398_crit_edge ], [ -1, %if.end271.sw.epilog398_crit_edge ], [ -1, %if.then42.sw.epilog398_crit_edge ], [ -1, %land.lhs.true53.sw.epilog398_crit_edge ], [ -1, %if.end46.sw.epilog398_crit_edge ], [ -1, %sw.bb322.sw.epilog398_crit_edge ], [ %id.0848, %for.cond.preheader.sw.epilog398_crit_edge ], [ %id.2858, %for.cond293.preheader.sw.epilog398_crit_edge ], [ -1, %for.cond380.preheader.sw.epilog398_crit_edge ], [ -1, %sw.epilog398.sink.split ], [ %id.0848, %for.inc.sw.epilog398_crit_edge ], [ %id.2858, %for.inc318.sw.epilog398_crit_edge ], [ -1, %for.body384.sw.epilog398_crit_edge ]
  %lun.3 = phi i32 [ -1, %if.end.sw.epilog398_crit_edge ], [ -1, %land.lhs.true373.sw.epilog398_crit_edge ], [ -1, %land.lhs.true367.sw.epilog398_crit_edge ], [ -1, %if.end361.sw.epilog398_crit_edge ], [ -1, %if.then266.sw.epilog398_crit_edge ], [ -1, %land.lhs.true279.sw.epilog398_crit_edge ], [ -1, %if.end271.sw.epilog398_crit_edge ], [ -1, %if.then42.sw.epilog398_crit_edge ], [ -1, %land.lhs.true53.sw.epilog398_crit_edge ], [ -1, %if.end46.sw.epilog398_crit_edge ], [ -1, %sw.bb322.sw.epilog398_crit_edge ], [ %lun.0849, %for.cond.preheader.sw.epilog398_crit_edge ], [ %lun.2859, %for.cond293.preheader.sw.epilog398_crit_edge ], [ -1, %for.cond380.preheader.sw.epilog398_crit_edge ], [ -1, %sw.epilog398.sink.split ], [ %lun.0849, %for.inc.sw.epilog398_crit_edge ], [ %lun.2859, %for.inc318.sw.epilog398_crit_edge ], [ -1, %for.body384.sw.epilog398_crit_edge ]
  %device_config_needed.2 = phi i32 [ 0, %if.end.sw.epilog398_crit_edge ], [ 0, %land.lhs.true373.sw.epilog398_crit_edge ], [ 0, %land.lhs.true367.sw.epilog398_crit_edge ], [ 0, %if.end361.sw.epilog398_crit_edge ], [ 0, %if.then266.sw.epilog398_crit_edge ], [ 0, %land.lhs.true279.sw.epilog398_crit_edge ], [ 0, %if.end271.sw.epilog398_crit_edge ], [ 0, %if.then42.sw.epilog398_crit_edge ], [ 0, %land.lhs.true53.sw.epilog398_crit_edge ], [ 0, %if.end46.sw.epilog398_crit_edge ], [ 0, %sw.bb322.sw.epilog398_crit_edge ], [ %device_config_needed.0850, %for.cond.preheader.sw.epilog398_crit_edge ], [ %device_config_needed.1860, %for.cond293.preheader.sw.epilog398_crit_edge ], [ 0, %for.cond380.preheader.sw.epilog398_crit_edge ], [ 0, %sw.epilog398.sink.split ], [ %device_config_needed.0850, %for.inc.sw.epilog398_crit_edge ], [ %device_config_needed.1860, %for.inc318.sw.epilog398_crit_edge ], [ 0, %for.body384.sw.epilog398_crit_edge ]
  %maximum_num_containers403 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 36
  %scsi_host_ptr446779 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 35
  br label %retry_next

retry_next:                                       ; preds = %if.then504, %sw.epilog398
  %channel.4 = phi i32 [ %channel.3, %sw.epilog398 ], [ 0, %if.then504 ]
  %id.4 = phi i32 [ %id.3, %sw.epilog398 ], [ %id.5766784798, %if.then504 ]
  %lun.4 = phi i32 [ %lun.3, %sw.epilog398 ], [ %lun.5768783800, %if.then504 ]
  %container.6 = phi i32 [ 0, %sw.epilog398 ], [ %inc505, %if.then504 ]
  %device_config_needed.3 = phi i32 [ %device_config_needed.2, %sw.epilog398 ], [ 0, %if.then504 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %device_config_needed.3)
  %cmp399 = icmp eq i32 %device_config_needed.3, 0
  br i1 %cmp399, label %for.cond402.preheader, label %lor.lhs.false445

for.cond402.preheader:                            ; preds = %retry_next
  %182 = ptrtoint ptr %maximum_num_containers403 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %maximum_num_containers403, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %container.6, i32 %183)
  %cmp404834 = icmp ult i32 %container.6, %183
  br i1 %cmp404834, label %for.body406.lr.ph, label %for.cond402.preheader.cleanup_crit_edge

for.cond402.preheader.cleanup_crit_edge:          ; preds = %for.cond402.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body406.lr.ph:                                ; preds = %for.cond402.preheader
  %184 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %fsa_dev, align 8
  br label %for.body406

for.body406:                                      ; preds = %for.inc436.for.body406_crit_edge, %for.body406.lr.ph
  %container.7835 = phi i32 [ %container.6, %for.body406.lr.ph ], [ %inc437, %for.inc436.for.body406_crit_edge ]
  %config_waiting_on409 = getelementptr %struct.fsa_dev_info, ptr %185, i32 %container.7835, i32 3
  %186 = ptrtoint ptr %config_waiting_on409 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %config_waiting_on409, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp410 = icmp eq i32 %187, 0
  br i1 %cmp410, label %land.lhs.true412, label %for.body406.for.inc436_crit_edge

for.body406.for.inc436_crit_edge:                 ; preds = %for.body406
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc436

land.lhs.true412:                                 ; preds = %for.body406
  %config_needed415 = getelementptr %struct.fsa_dev_info, ptr %185, i32 %container.7835, i32 6
  %188 = ptrtoint ptr %config_needed415 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %config_needed415, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %cmp417.not = icmp eq i8 %189, 0
  br i1 %cmp417.not, label %land.lhs.true412.for.inc436_crit_edge, label %land.lhs.true419

land.lhs.true412.for.inc436_crit_edge:            ; preds = %land.lhs.true412
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc436

land.lhs.true419:                                 ; preds = %land.lhs.true412
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %190 = load volatile i32, ptr @jiffies, align 128
  %config_waiting_stamp422 = getelementptr %struct.fsa_dev_info, ptr %185, i32 %container.7835, i32 4
  %191 = ptrtoint ptr %config_waiting_stamp422 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %config_waiting_stamp422, align 8
  %add423.neg = add i32 %190, -50000
  %sub424 = sub i32 %add423.neg, %192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub424)
  %cmp425 = icmp slt i32 %sub424, 0
  br i1 %cmp425, label %lor.lhs.false445.thread, label %land.lhs.true419.for.inc436_crit_edge

land.lhs.true419.for.inc436_crit_edge:            ; preds = %land.lhs.true419
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc436

for.inc436:                                       ; preds = %land.lhs.true419.for.inc436_crit_edge, %land.lhs.true412.for.inc436_crit_edge, %for.body406.for.inc436_crit_edge
  %inc437 = add i32 %container.7835, 1
  %exitcond.not = icmp eq i32 %inc437, %183
  br i1 %exitcond.not, label %for.inc436.cleanup_crit_edge, label %for.inc436.for.body406_crit_edge

for.inc436.for.body406_crit_edge:                 ; preds = %for.inc436
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body406

for.inc436.cleanup_crit_edge:                     ; preds = %for.inc436
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false445:                                 ; preds = %retry_next
  %193 = ptrtoint ptr %scsi_host_ptr446779 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %scsi_host_ptr446779, align 8
  %tobool447.not = icmp eq ptr %194, null
  br i1 %tobool447.not, label %lor.lhs.false445.cleanup_crit_edge, label %if.end449

lor.lhs.false445.cleanup_crit_edge:               ; preds = %lor.lhs.false445
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false445.thread:                          ; preds = %land.lhs.true419
  %conv431 = zext i8 %189 to i32
  %195 = ptrtoint ptr %config_needed415 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %config_needed415, align 2
  %196 = ptrtoint ptr %scsi_host_ptr446779 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %scsi_host_ptr446779, align 8
  %tobool447.not780 = icmp eq ptr %197, null
  br i1 %tobool447.not780, label %lor.lhs.false445.thread.cleanup_crit_edge, label %lor.lhs.false445.thread.if.then455_crit_edge

lor.lhs.false445.thread.if.then455_crit_edge:     ; preds = %lor.lhs.false445.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then455

lor.lhs.false445.thread.cleanup_crit_edge:        ; preds = %lor.lhs.false445.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end449:                                        ; preds = %lor.lhs.false445
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel.4)
  %cmp450 = icmp eq i32 %channel.4, 0
  br i1 %cmp450, label %if.end449.if.then455_crit_edge, label %if.end449.if.end467_crit_edge

if.end449.if.end467_crit_edge:                    ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end467

if.end449.if.then455_crit_edge:                   ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then455

if.then455:                                       ; preds = %if.end449.if.then455_crit_edge, %lor.lhs.false445.thread.if.then455_crit_edge
  %device_config_needed.4771781804 = phi i32 [ %device_config_needed.3, %if.end449.if.then455_crit_edge ], [ %conv431, %lor.lhs.false445.thread.if.then455_crit_edge ]
  %container.8769782802 = phi i32 [ %container.6, %if.end449.if.then455_crit_edge ], [ %container.7835, %lor.lhs.false445.thread.if.then455_crit_edge ]
  %lun.5768783801 = phi i32 [ %lun.4, %if.end449.if.then455_crit_edge ], [ 0, %lor.lhs.false445.thread.if.then455_crit_edge ]
  %id.5766784799 = phi i32 [ %id.4, %if.end449.if.then455_crit_edge ], [ %container.7835, %lor.lhs.false445.thread.if.then455_crit_edge ]
  %198 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %fsa_dev, align 8
  %valid = getelementptr %struct.fsa_dev_info, ptr %199, i32 %container.8769782802, i32 7
  %200 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %201)
  %cmp459 = icmp eq i8 %201, 1
  br i1 %cmp459, label %if.then461, label %if.then455.if.end465_crit_edge

if.then455.if.end465_crit_edge:                   ; preds = %if.then455
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end465

if.then461:                                       ; preds = %if.then455
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 2, ptr %valid, align 1
  br label %if.end465

if.end465:                                        ; preds = %if.then461, %if.then455.if.end465_crit_edge
  %call466 = tail call i32 @aac_probe_container(ptr noundef %dev, i32 noundef %container.8769782802) #13
  br label %if.end467

if.end467:                                        ; preds = %if.end465, %if.end449.if.end467_crit_edge
  %cmp450805 = phi i1 [ true, %if.end465 ], [ false, %if.end449.if.end467_crit_edge ]
  %device_config_needed.4771781803 = phi i32 [ %device_config_needed.4771781804, %if.end465 ], [ %device_config_needed.3, %if.end449.if.end467_crit_edge ]
  %lun.5768783800 = phi i32 [ %lun.5768783801, %if.end465 ], [ %lun.4, %if.end449.if.end467_crit_edge ]
  %id.5766784798 = phi i32 [ %id.5766784799, %if.end465 ], [ %id.4, %if.end449.if.end467_crit_edge ]
  %channel.5765785796 = phi i32 [ 0, %if.end465 ], [ %channel.4, %if.end449.if.end467_crit_edge ]
  %container.8770 = phi i32 [ %container.8769782802, %if.end465 ], [ %container.6, %if.end449.if.end467_crit_edge ]
  %203 = ptrtoint ptr %scsi_host_ptr446779 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %scsi_host_ptr446779, align 8
  %conv469 = zext i32 %lun.5768783800 to i64
  %call470 = tail call ptr @scsi_device_lookup(ptr noundef %204, i32 noundef %channel.5765785796, i32 noundef %id.5766784798, i64 noundef %conv469) #13
  %tobool471.not = icmp eq ptr %call470, null
  br i1 %tobool471.not, label %if.end494, label %if.then472

if.then472:                                       ; preds = %if.end467
  %205 = zext i32 %device_config_needed.4771781803 to i64
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %device_config_needed.4771781803, label %if.end494.thread [
    i32 1, label %sw.bb473
    i32 2, label %sw.bb474
    i32 3, label %if.then472.sw.bb483_crit_edge
  ]

if.then472.sw.bb483_crit_edge:                    ; preds = %if.then472
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb483

sw.bb473:                                         ; preds = %if.then472
  tail call void @scsi_remove_device(ptr noundef nonnull %call470) #13
  tail call void @scsi_device_put(ptr noundef nonnull %call470) #13
  br i1 %cmp450805, label %sw.bb473.if.then504_crit_edge, label %sw.bb473.cleanup_crit_edge

sw.bb473.cleanup_crit_edge:                       ; preds = %sw.bb473
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb473.if.then504_crit_edge:                    ; preds = %sw.bb473
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then504

sw.bb474:                                         ; preds = %if.then472
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %call470, i32 0, i32 69
  %206 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %sdev_state.i, align 4
  %208 = zext i32 %207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %208, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %207, label %sw.bb474.sw.bb483_crit_edge [
    i32 7, label %sw.bb474.if.then477_crit_edge
    i32 6, label %sw.bb474.if.then477_crit_edge885
    i32 4, label %sw.bb474.if.then477_crit_edge886
  ]

sw.bb474.if.then477_crit_edge886:                 ; preds = %sw.bb474
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then477

sw.bb474.if.then477_crit_edge885:                 ; preds = %sw.bb474
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then477

sw.bb474.if.then477_crit_edge:                    ; preds = %sw.bb474
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then477

sw.bb474.sw.bb483_crit_edge:                      ; preds = %sw.bb474
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb483

if.then477:                                       ; preds = %sw.bb474.if.then477_crit_edge, %sw.bb474.if.then477_crit_edge885, %sw.bb474.if.then477_crit_edge886
  %cond480 = select i1 %cmp450805, ptr @.str.50, ptr @.str.51
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull %call470, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond480) #13
  %call481 = tail call i32 @scsi_device_set_state(ptr noundef nonnull %call470, i32 noundef 2) #13
  br i1 %cmp450805, label %if.then477.land.lhs.true486_crit_edge, label %if.then477.cleanup.sink.split_crit_edge

if.then477.cleanup.sink.split_crit_edge:          ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then477.land.lhs.true486_crit_edge:            ; preds = %if.then477
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true486

sw.bb483:                                         ; preds = %sw.bb474.sw.bb483_crit_edge, %if.then472.sw.bb483_crit_edge
  br i1 %cmp450805, label %sw.bb483.land.lhs.true486_crit_edge, label %sw.bb483.cleanup.sink.split_crit_edge

sw.bb483.cleanup.sink.split_crit_edge:            ; preds = %sw.bb483
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

sw.bb483.land.lhs.true486_crit_edge:              ; preds = %sw.bb483
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true486

land.lhs.true486:                                 ; preds = %sw.bb483.land.lhs.true486_crit_edge, %if.then477.land.lhs.true486_crit_edge
  %209 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %fsa_dev, align 8
  %valid489 = getelementptr %struct.fsa_dev_info, ptr %210, i32 %container.8770, i32 7
  %211 = ptrtoint ptr %valid489 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %valid489, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool490.not = icmp eq i8 %212, 0
  br i1 %tobool490.not, label %if.end494.thread.thread, label %if.then504.critedge

if.end494.thread.thread:                          ; preds = %land.lhs.true486
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @scsi_remove_device(ptr noundef nonnull %call470) #13
  br label %if.then504.sink.split

if.end494.thread:                                 ; preds = %if.then472
  tail call void @scsi_device_put(ptr noundef nonnull %call470) #13
  br i1 %cmp450805, label %if.end494.thread.if.then504_crit_edge, label %if.end494.thread.cleanup_crit_edge

if.end494.thread.cleanup_crit_edge:               ; preds = %if.end494.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end494.thread.if.then504_crit_edge:            ; preds = %if.end494.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then504

if.end494:                                        ; preds = %if.end467
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %device_config_needed.4771781803)
  %cmp495 = icmp eq i32 %device_config_needed.4771781803, 2
  br i1 %cmp495, label %if.then497, label %if.end501

if.then497:                                       ; preds = %if.end494
  %213 = ptrtoint ptr %scsi_host_ptr446779 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %scsi_host_ptr446779, align 8
  %call500 = tail call i32 @scsi_add_device(ptr noundef %214, i32 noundef %channel.5765785796, i32 noundef %id.5766784798, i64 noundef %conv469) #13
  br i1 %cmp450805, label %if.then497.if.then504_crit_edge, label %if.then497.cleanup_crit_edge

if.then497.cleanup_crit_edge:                     ; preds = %if.then497
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then497.if.then504_crit_edge:                  ; preds = %if.then497
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then504

if.end501:                                        ; preds = %if.end494
  br i1 %cmp450805, label %if.end501.if.then504_crit_edge, label %if.end501.cleanup_crit_edge

if.end501.cleanup_crit_edge:                      ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end501.if.then504_crit_edge:                   ; preds = %if.end501
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then504

if.then504.critedge:                              ; preds = %land.lhs.true486
  call void @__sanitizer_cov_trace_pc() #15
  %sdev_gendev.c814 = getelementptr inbounds %struct.scsi_device, ptr %call470, i32 0, i32 55
  tail call void @scsi_rescan_device(ptr noundef %sdev_gendev.c814) #13
  br label %if.then504.sink.split

if.then504.sink.split:                            ; preds = %if.then504.critedge, %if.end494.thread.thread
  tail call void @scsi_device_put(ptr noundef nonnull %call470) #13
  br label %if.then504

if.then504:                                       ; preds = %if.then504.sink.split, %if.end501.if.then504_crit_edge, %if.then497.if.then504_crit_edge, %if.end494.thread.if.then504_crit_edge, %sw.bb473.if.then504_crit_edge
  %inc505 = add i32 %container.8770, 1
  br label %retry_next

cleanup.sink.split:                               ; preds = %sw.bb483.cleanup.sink.split_crit_edge, %if.then477.cleanup.sink.split_crit_edge
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %call470, i32 0, i32 55
  tail call void @scsi_rescan_device(ptr noundef %sdev_gendev) #13
  tail call void @scsi_device_put(ptr noundef nonnull %call470) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end501.cleanup_crit_edge, %if.then497.cleanup_crit_edge, %if.end494.thread.cleanup_crit_edge, %sw.bb473.cleanup_crit_edge, %lor.lhs.false445.thread.cleanup_crit_edge, %lor.lhs.false445.cleanup_crit_edge, %for.inc436.cleanup_crit_edge, %for.cond402.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aac_handle_aif_bu(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %aifcmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.aac_aifcmd, ptr %aifcmd, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #13
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %2, label %entry.sw.epilog_crit_edge [
    i32 10, label %sw.bb
    i32 11, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %arrayidx.i31 = getelementptr %struct.aac_aifcmd, ptr %aifcmd, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end5, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.52, i32 noundef %6) #16
  br label %sw.epilog

do.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %pdev6 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %9 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev6, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.55) #16
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %arrayidx.i35 = getelementptr %struct.aac_aifcmd, ptr %aifcmd, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %do.end19, label %do.end13

do.end13:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  %pdev14 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %14 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev14, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.58, i32 noundef %13) #16
  br label %sw.epilog

do.end19:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  %pdev20 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %16 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev20, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21, ptr noundef nonnull @.str.61) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end19, %do.end13, %do.end5, %do.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_probe_container(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_rescan_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone willreturn }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !81, !83, !85, !86, !87, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @aac_fib_setup.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aacraid/commsup.c", i32 178, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/scsi/aacraid/commsup.c", i32 297, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @aac_fib_free._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @aac_fib_free._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/aacraid/commsup.c", i32 429, i32 4}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @aac_queue_get._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @aac_queue_get._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/aacraid/commsup.c", i32 587, i32 4}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @aac_fib_send._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @aac_fib_send._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/aacraid/commsup.c", i32 623, i32 3}
!21 = !{ptr @aac_fib_send._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @aac_fib_send._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/aacraid/commsup.c", i32 655, i32 14}
!25 = !{ptr @aac_fib_send._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @aac_fib_send._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/aacraid/commsup.c", i32 668, i32 14}
!29 = !{ptr @aac_fib_send._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @aac_fib_send._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/aacraid/commsup.c", i32 929, i32 3}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @aac_fib_adapter_complete._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @aac_fib_adapter_complete._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1020, i32 4}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @aac_printf._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @aac_printf._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1022, i32 4}
!43 = !{ptr @aac_printf._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @aac_printf._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1800, i32 4}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @aac_check_health._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @aac_check_health._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1810, i32 3}
!52 = !{ptr @aac_check_health._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @aac_check_health._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1815, i32 2}
!56 = !{ptr @aac_check_health._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @aac_check_health._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../drivers/scsi/aacraid/commsup.c", i32 2448, i32 2}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/scsi/aacraid/commsup.c", i32 2504, i32 3}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/aacraid/commsup.c", i32 2536, i32 9}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/aacraid/commsup.c", i32 2537, i32 5}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @aac_acquire_irq._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @aac_acquire_irq._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/aacraid/commsup.c", i32 2555, i32 4}
!71 = !{ptr @aac_acquire_irq._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @aac_acquire_irq._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @init_completion.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/completion.h", i32 87, i32 2}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/aacraid/commsup.c", i32 396, i32 3}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @aac_get_entry._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @aac_get_entry._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1584, i32 17}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1618, i32 3}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @_aac_reset_adapter._entry, !84, !"_entry", i1 false, i1 false}
!89 = !{ptr @_aac_reset_adapter._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../drivers/scsi/aacraid/commsup.c", i32 2175, i32 3}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1997, i32 4}
!94 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @aac_handle_sa_aif._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @aac_handle_sa_aif._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1427, i32 5}
!99 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1038, i32 4}
!103 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @aac_handle_aif_bu._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @aac_handle_aif_bu._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1041, i32 4}
!108 = !{ptr @aac_handle_aif_bu._entry.54, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @aac_handle_aif_bu._entry_ptr.56, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1045, i32 4}
!112 = !{ptr @aac_handle_aif_bu._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @aac_handle_aif_bu._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/aacraid/commsup.c", i32 1048, i32 4}
!116 = !{ptr @aac_handle_aif_bu._entry.60, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @aac_handle_aif_bu._entry_ptr.62, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/aacraid/commsup.c", i32 2120, i32 4}
!120 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @wakeup_fibctx_threads._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @wakeup_fibctx_threads._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2148279424, i64 2148279450, i64 2148279479, i64 2148279513, i64 2148279544, i64 2148279567}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 2155368077, i64 2155368572, i64 2155368114, i64 2155368170, i64 2155368204, i64 2155368228, i64 2155368269, i64 2155368290, i64 2155368318, i64 2155368352}
!137 = !{i64 2155373280, i64 2155373775, i64 2155373317, i64 2155373373, i64 2155373407, i64 2155373431, i64 2155373472, i64 2155373493, i64 2155373521, i64 2155373555}
!138 = !{i64 2155377555, i64 2155378050, i64 2155377592, i64 2155377648, i64 2155377682, i64 2155377706, i64 2155377747, i64 2155377768, i64 2155377796, i64 2155377830}
!139 = !{i64 2155379557, i64 2155380052, i64 2155379594, i64 2155379650, i64 2155379684, i64 2155379708, i64 2155379749, i64 2155379770, i64 2155379798, i64 2155379832}
!140 = !{i64 669440, i64 669501}
!141 = !{i64 672172}
!142 = !{i64 672457}
!143 = !{i64 2155438657}
!144 = !{!"auto-init"}
!145 = !{i64 2155444891}
!146 = !{i64 2155427941}
!147 = !{i64 5982238}
!148 = !{i64 2155416960}
